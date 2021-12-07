library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity processor is
port(
	reset					: in	std_logic;
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
	-- i think this is stuff like "mem_read" or "inst[31-26]
	-- instruction stuff
	signal pcAddr 	: std_logic_vector(31 downto 0);	-- 32 bit address
	signal instruction: std_logic_vector(31 downto 0);	-- 32 bit instruction
	signal funct		: std_logic_vector(5 downto 0);	-- 6 	bit funtion code
	signal optcode		: std_logic_vector(5 downto 0);	-- 6 	bit optcode
	signal immediate	: std_logic_vector(15 downto 0);	-- 16 bit immediate field
	signal rd			: std_logic_vector(4 downto 0);	-- 5 	bit rd
	signal rt			: std_logic_vector(4 downto 0);	-- 5 	bit rt
	signal rs			: std_logic_vector(4 downto 0);	-- 5	bit rs
	signal shamt		: std_logic_vector(4 downto 0);	-- 5	bit shamt
	
	-- control bits #### ADD YOUR PART HERE, Jonathan ###
	signal regDest, jump, branch, memToReg, 
		memWrite, ALUsrc, regWrite, jal, jr,
		beq, bne, memRead 	: std_logic;	-- all 1 bit
	signal ALUop		: std_logic_vector(3 downto 0);
	
	
	
	
	-- other things that travel on the wires between components
	signal ALUResult, readData1, readData2, extendedImmediate,
		dataFromMemory,writeData, jumpAddr	: std_logic_vector(31 downto 0);
	signal writeReg : std_logic_vector(4 downto 0);
	signal memoryAddr, instAddr : std_logic_vector(5 downto 0);
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
	
	
	begin
	 -- mapping ports to signals and inputs/outputs
	program_counter: pc port map(
		d 				=> pcAddr,
		clk 			=> slow_clk,
		resetn		=> reset,
		q 				=> pcAddr
	);
	instructions: InstructionMemory port map(
		address 		=> instAddr,
		clock 		=> fast_clk,
		q 				=> instruction -- here we use a signal
	);
	memory: RAM port map(
		address 		=> memoryAddr, -- for lw
		clock			=> fast_clk,
		data			=> readData2, -- for sw
		wren			=> memWrite,
		q				=> dataFromMemory
	);
	sign_extender: sei port map(
		sixteen 		=> immediate,
		thirtytwo	=> extendedImmediate
	);
	mainALU: alu port map(
		aluControl 	=> ALUop,
		inputA		=> readData1,
		inputB		=> readData2,
		shamt			=> shamt, -- i think this name duplication is okay,
		aluResult	=> ALUResult -- but it's easy to change if Quartus complains
	);
	
	
	-- setting up basic signals
	instAddr <= pcAddr(5 downto 0);
	memoryAddr <= ALUResult(5 downto 0);
	rs <= instruction(25 downto 21);
	-- #### split up the instruction into all the other wires that 
	-- directly depend on it as shown with the rs field above
	
	
	-- below should be our process that does all the extra logic
	-- (muxes [if-else], and, jump, branch, pc+4, etc . . .)
	process(reset, slow_clk)
	begin
		-- A Ton of Logic (actually, it may not be THAT much)
	end process;
	
	
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