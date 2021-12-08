library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity processor is
port(
	resetn					: in	std_logic;
	slow_clk, fast_clk: in 	std_logic;
	pc_out, inst_out	: out	std_logic_vector(31 downto 0);
	read_reg1_out		: out std_logic_vector(4 downto 0);
	read_reg2_out		: out std_logic_vector(4 downto 0);
	write_reg_out		: out std_logic_vector(4 downto 0);
	read_data1_out		: out std_logic_vector(31 downto 0);
	read_data2_out		: out std_logic_vector(31 downto 0);
	write_data_out		: out std_logic_vector(31 downto 0)
);
end processor;

architecture arch of processor is
	-- declare internal signals needed to connect submodules
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
	signal jumpAddr	: std_logic_vector(31 downto 0);
	
	-- control bits
	signal regDest, jump, memToReg, 
		memWrite, ALUsrc, regWrite, jal, jr,
		beq, bne, memRead : std_logic;	-- all 1 bit
	signal ALUControl	: std_logic_vector(3 downto 0);
	
	-- other things that travel on the wires between components
	signal ALUResult, readData1, readData2, extendedImmediate, 
		signExtendedImmediate, zeroExtendedImmediate,
		ALUbaseInput, dataFromMemory, writeData,
		instAddr: std_logic_vector(31 downto 0);
	signal writeReg : std_logic_vector(4 downto 0);
	signal memoryAddr : std_logic_vector(5 downto 0);
	signal zero : std_logic;
	
	-- PC
	component pc -- i took the below directly from the pc.vhd file
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
		q 				=> instAddr
	);
	instructions: InstructionMemory port map(
		address 		=> instAddr(5 downto 0),
		clock 		=> fast_clk,
		q 				=> instruction
	);
	memory: RAM port map(
		address 		=> memoryAddr, -- for lw & sw
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
		aluResult	=> ALUResult
	);
	
	
	controller: control port map(
		opcode 		=> opcode,
		funct 		=> funct,
		RegDst 		=> regDest,
		ALUsrc 		=> ALUsrc,
		Jump 			=> jump,
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
	memoryAddr <= ALUResult(5 downto 0);
	
	rs <= instruction(25 downto 21);
	rt <= instruction(20 downto 16);
	rd <= instruction(15 downto 11);
	shamt <= instruction(10 downto 6);
	funct <= instruction(5 downto 0);
	opcode <= instruction(31 downto 26);
	immediate <= instruction(15 downto 0);
	-- good example of concatenation to piece together anothe signal:
	jumpAddr <= pcAddr(31 downto 28) & instruction(25 downto 0) & "00";
	zeroExtendedImmediate <= x"0000" & immediate;
	-- memory is small, so only last 6 bits of ALUResult are used to address 64 things
	memoryAddr <= ALUResult(5 downto 0);
	
	
	-- below should be our process that does all the extra logic
	-- (muxes [when-else], and, jump, branch, pc+4, etc . . .)
	pcAddr <= instAddr + 4;
	
	-- sign extending vs. zero extending -- ASK DR HALL ABOUT THIS
	with opcode select extendedImmediate <=
		zeroExtendedImmediate when "001100", -- andi
		zeroExtendedImmediate when "001101", -- ori
		signExtendedImmediate when others;
	
	--###################################################--
	--####### Here is how to do a muxes (I think) #######--
	--###################################################--
	with regDest select writeReg <=
		rt when '0',
		rd when '1';
	-- yep, that's all i think there is to it
	with ALUsrc select ALUbaseInput <=
		readData2 when '0',
		extendedImmediate when '1';
	with memToReg select writeData <=
		ALUResult when '0',
		dataFromMemory when '1';
	
	
	
	-- outputs assigned below
	-- here we basically make our final outputs equal to their values
	-- on the wires in the processor. the values on the wires are the
	-- "signals" we defined above
	pc_out 			<= pcAddr;
	inst_out 		<= instruction;
	read_reg1_out	<= rs;
	read_reg2_out	<= rt;
	write_reg_out	<= writeReg;
	read_data1_out	<= readData1;
	read_data2_out	<= readData2;
	write_data_out	<= writeData;
	
end arch;