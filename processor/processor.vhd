library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity processor is
port(
	resetn				: in	std_logic;
	slow_clk, fast_clk: in 	std_logic;
	pc_out, inst_out	: out	std_logic_vector(31 downto 0);
	read_reg1_out		: out std_logic_vector(4 downto 0);
	read_reg2_out		: out std_logic_vector(4 downto 0);
	write_reg_out		: out std_logic_vector(4 downto 0);
	read_data1_out		: out std_logic_vector(31 downto 0);
	read_data2_out		: out std_logic_vector(31 downto 0);
	write_data_out		: out std_logic_vector(31 downto 0);
	branch_out, jump_out, bneo, beqo	: out std_logic
);
end processor;

architecture arch of processor is
	-- instruction stuff
	signal pcAddr 		: std_logic_vector(31 downto 0);	-- 32 bit address
	signal instruction: std_logic_vector(31 downto 0);	-- 32 bit instruction
	signal funct		: std_logic_vector(5 downto 0);	-- 6 	bit funtion code
	signal opcode		: std_logic_vector(5 downto 0);	-- 6 	bit optcode
	signal immediate	: std_logic_vector(15 downto 0);	-- 16 bit immediate field
	signal rd			: std_logic_vector(4 downto 0);	-- 5 	bit rd
	signal rt			: std_logic_vector(4 downto 0);	-- 5 	bit rt
	signal rs			: std_logic_vector(4 downto 0);	-- 5	bit rs
	signal shamt		: std_logic_vector(4 downto 0);	-- 5	bit shamt

	
	-- control bits
	signal regDest, memToReg, memWrite, 
		ALUsrc, regWrite, jump, jal, jr,
		beq, bne, memRead : std_logic;	-- all 1 bit
	signal ALUControl	: std_logic_vector(3 downto 0);
	
	-- other things that travel on the wires between components
	signal ALUResult, ALUbaseInput, -- all 32 bit 
		readData1, readData2, 
		extendedImmediate, 
		signExtendedImmediate, zeroExtendedImmediate,
		dataFromMemory, writeData, writeDataBeforeJr,
		currAddr, pcp4, 
		pcPostBranch, branchAddr, branchShift,
		jumpAddrRegular, jrAddr, pcPostJump: std_logic_vector(31 downto 0);
	signal writeRegBeforeJr, writeReg : std_logic_vector(4 downto 0);
	signal memoryAddr : std_logic_vector(31 downto 0);
	signal zero, branch, isJump : std_logic; -- for branching & jumping
	
	-- PC
	component pc
	port(
		d      :  in    std_logic_vector( 31 downto 0 );
      clk    :  in    std_logic;
      resetn :  in    std_logic;
      q      :  out   std_logic_vector( 31 downto 0 )
	);
	end component;
	-- Instruction Memory
	component InstructionMemory
	port(
		address	: in 	std_logic_vector (5 DOWNTO 0);
		clock		: in 	std_logic := '1';
		q			: out std_logic_vector (31 DOWNTO 0)
	);
	end component;
	-- Memory
	component RAM
	port(
		address	: in 	std_logic_vector (5 DOWNTO 0);
		clock		: in 	std_logic  := '1';
		data		: in 	std_logic_vector (31 DOWNTO 0);
		wren		: in 	std_logic ; -- i think this stands for write enable
		q			: out std_logic_vector (31 DOWNTO 0)
	);
	end component;
	-- SEI
	component sei
	port(
		sixteen	: in	std_logic_vector(15 downto 0);
		thirtytwo: out	std_logic_vector(31 downto 0)
	);
	end component;
	-- ALU
	component alu
	port(
		aluControl		: in	std_logic_vector(3 downto 0);
		inputA, inputB	: in	std_logic_vector(31 downto 0);
		shamt				: in 	std_logic_vector(4 downto 0);
		zero				: out	std_logic;
		aluResult		: out std_logic_vector(31 downto 0)
	);
	end component;
	-- control
	component control
	port(
		opcode					: in 	std_logic_vector( 5 downto 0);
		funct						: in 	std_logic_vector( 5 downto 0);
		RegDst, ALUsrc			: out	std_logic;
		Jump, Jal, Jr			: out	std_logic;
		Beq, Bne					: out	std_logic;
		MemRead, MemWrite		: out	std_logic;
		RegWrite, MemtoReg	: out	std_logic;
		ALUControl				: out std_logic_vector( 3 downto 0));
	end component;
	-- registers
	component RegisterFile
	port(
		clk, resetn, RegWrite 	: in	std_logic;
		read_reg1, read_reg2		: in 	std_logic_vector( 4 downto 0 );
		write_reg					: in 	std_logic_vector( 4 downto 0 );
		write_data					: in 	std_logic_vector( 31 downto 0 );
		read_data1, read_data2	: out std_logic_vector( 31 downto 0 )
	);
	end component;
	
	begin
	-- mapping ports to signals and inputs/outputs
	program_counter: pc port map(
		d 				=> pcAddr,
		clk 			=> slow_clk,
		resetn		=> resetn,
		q 				=> currAddr
	);
	instructions: InstructionMemory port map(
		address 		=> currAddr(7 downto 2),
		clock 		=> fast_clk,
		q 				=> instruction
	);
	memory: RAM port map(
		address 		=> memoryAddr(7 downto 2), -- for lw & sw
		clock			=> fast_clk,
		data			=> readData2, -- for sw
		wren			=> memWrite, -- for lw
		q				=> dataFromMemory
	);
	sign_extender: sei port map(
		sixteen 		=> immediate,
		thirtytwo	=> signExtendedImmediate
	);
	mainALU: alu port map(
		aluControl 	=> ALUControl,
		inputA		=> readData1,
		inputB		=> ALUbaseInput,
		shamt			=> shamt,
		zero			=> zero,
		aluResult	=> ALUResult
	);
	
	
	controller: control port map(
		opcode 		=> opcode,
		funct 		=> funct,
		RegDst 		=> regDest,
		ALUsrc 		=> ALUsrc,
		Jump 			=> jump,
		Jal			=> jal,
		Jr				=> Jr,
		Beq 			=> beq,
		Bne 			=> bne,
		MemRead 		=> memRead,
		MemWrite 	=> memWrite,
		RegWrite 	=> regWrite,
		MemtoReg 	=> memToReg,
		ALUControl	=> ALUControl
	);
	registers: RegisterFile port map(
		clk			=> slow_clk,
		resetn		=> resetn,
		RegWrite		=> regWrite,
		read_reg1	=> rs,
		read_reg2	=> rt,
		write_reg	=> writeReg,
		write_data	=> writeData,
		read_data1	=> readData1,
		read_data2	=> readData2
	);
	
	-- setting up basic signals
	rs <= instruction(25 downto 21);
	rt <= instruction(20 downto 16);
	rd <= instruction(15 downto 11);
	shamt <= instruction(10 downto 6);
	funct <= instruction(5 downto 0);
	opcode <= instruction(31 downto 26);
	immediate <= instruction(15 downto 0);
	-- concatenated signals
	jumpAddrRegular <= pcp4(31 downto 28) & instruction(25 downto 0) & "00";
	jrAddr <= readData1;
	isJump <= jump or jal or jr;
	branch <= (bne and not zero) or (beq and zero);
	branchShift <= extendedImmediate(29 downto 0) & "00";
	branchAddr <= branchShift + pcp4;
	zeroExtendedImmediate <= x"0000" & immediate;
	-- memory is small, so only last 6 bits of ALUResult are used to address 64 things
	memoryAddr <= ALUResult;
	
	
	--#####################################################--
	--####### Logic, Muxes, Branching, Jumping, etc #######--
	--#####################################################--
	-- sign extending vs. zero extending --
	with opcode select extendedImmediate <=
		zeroExtendedImmediate when "001100", -- andi
		zeroExtendedImmediate when "001101", -- ori
		signExtendedImmediate when others;
	-- muxes
	with regDest select writeRegBeforeJr <=
		rt when '0',
		rd when '1';
	with ALUsrc select ALUbaseInput <=
		readData2 when '0',
		extendedImmediate when '1';
	with memToReg select writeDataBeforeJr <=
		ALUResult when '0',
		dataFromMemory when '1';
	
	--#### branch and jump logic ####--
	pcp4 <= currAddr + 4;
	with branch select pcPostBranch <=
		pcp4 when '0',
		branchAddr when '1';
	
	with isJump select pcPostJump <=
		pcPostBranch when '0',
		jumpAddrRegular when '1';

	with jr select pcAddr <=
		pcPostJump when '0',
		jrAddr when '1';
	
	-- jal
	with jal select writeReg <=
		writeRegBeforeJr when '0',
		"11111" when '1';

	with jal select writeData <=
		writeDataBeforeJr when '0',
		pcp4 when '1';
	
	-- outputs
	pc_out 			<= currAddr;
	inst_out 		<= instruction;
	read_reg1_out	<= rs;
	read_reg2_out	<= rt;
	write_reg_out	<= writeReg;
	read_data1_out	<= readData1;
	read_data2_out	<= readData2;
	write_data_out	<= writeData;
	branch_out <= branch;
	jump_out <= isJump;
	bneo <= bne;
	beqo <= beq;
end arch;