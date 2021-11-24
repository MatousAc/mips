library IEEE;
use IEEE.Std_logic_1164.all;

entity control is
	port(
		opcode					: in 	std_logic_vector( 5 downto 0);
		funct						: in 	std_logic_vector( 5 downto 0);
		RegDst, ALUsrc			: out	std_logic;
		Jump, Jal, Jr			: out	std_logic;
		Beq, Bne					: out	std_logic;
		MemRead, MemWrite		: out	std_logic;
		RegWrite, MemtoReg	: out	std_logic;
		ALUControl				: out std_logic_vector( 3 downto 0));
end control;

ARCHITECTURE arch of control IS

BEGIN
	PROCESS(opcode, funct)
	BEGIN
		
	-- ##########################################################
	-- All R-Type instructions
		
		IF(opcode = "000000") THEN 
			RegDst	<= '1';
			ALUsrc	<= '0';
			Jump		<= '0';
			Jal		<= '0';
			Beq		<= '0';
			Bne		<= '0';
			MemRead	<= '0';
			MemWrite	<= '0';
			MemtoReg	<= '0';
			IF(funct = "001000") THEN -- If function is jr then change Jr and RegWrite
				Jr		<= '1';
				RegWrite <= '0';
			ELSE
				Jr		<= '0';
				RegWrite <= '1';
			END IF;
		
	-- #############################################################
	-- Both J-Type
	
		ELSIF(opcode = "000010") THEN -- j
			Jump		<= '1';
			Jal		<= '0';
			Jr			<= '0';
			Beq		<= '0';
			Bne		<= '0';
			MemRead	<= '0';
			MemWrite	<= '0';
			RegWrite	<= '0';
		
		ELSIF(opcode = "000011") THEN -- jal
			Jump		<= '0';
			Jal		<= '1';
			Jr			<= '0';
			Beq		<= '0';
			Bne		<= '0';
			MemRead	<= '0';
			MemWrite	<= '0';
			RegWrite	<= '1';
			MemtoReg	<= '0';
			
	
		
	-- #############################################################
	-- All I-Type
		
		ELSE
			RegDst	<= '0';
			Jump		<= '0';
			Jal		<= '0';
			Jr			<= '0';			
			IF(opcode = "001000") THEN -- addi
					ALUsrc	<= '1';
					Beq		<= '0';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '1';
					MemtoReg	<= '0';
			ELSIF(opcode = "001001") THEN -- addiu
					ALUsrc	<= '1';
					Beq		<= '0';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '1';
					MemtoReg	<= '0';
			ELSIF(opcode = "001001") THEN -- andi
					ALUsrc	<= '1';
					Beq		<= '0';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '1';
					MemtoReg	<= '0';
			ELSIF(opcode = "001001") THEN -- beq
					ALUsrc	<= '0';
					Beq		<= '1';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '0';
					MemtoReg	<= '0';
			ELSIF(opcode = "001001") THEN -- bne
					ALUsrc	<= '0';
					Beq		<= '0';
					Bne		<= '1';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '0';
					MemtoReg	<= '0';
			ELSIF(opcode = "001111") THEN -- lui
					ALUsrc	<= '1';
					Beq		<= '0';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '1';
					MemtoReg	<= '0';
			ELSIF(opcode = "100011") THEN -- lw
					ALUsrc	<= '1';
					Beq		<= '0';
					Bne		<= '0';
					MemRead	<= '1';
					MemWrite	<= '0';
					RegWrite	<= '1';
					MemtoReg	<= '1';
			ELSIF(opcode = "001101") THEN -- ori
					ALUsrc	<= '1';
					Beq		<= '0';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '1';
					MemtoReg	<= '0';
			ELSIF(opcode = "001010") THEN -- slti
					ALUsrc	<= '1';
					Beq		<= '0';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '1';
					MemtoReg	<= '0';
			ELSIF(opcode = "101011") THEN -- sw
					ALUsrc	<= '1';
					Beq		<= '0';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '1';
					RegWrite	<= '0';
					MemtoReg	<= '0';
			ELSE
				RegDst <= '0';
			END IF;
		END IF;
		
	-- ##########################################################
	-- ALUControl
	
		IF(opcode = "000000") THEN	-- R-Types
			WITH funct SELECT ALUControl	<=	
				"0000"	WHEN	"100000",	-- add
				"0001"	WHEN	"100001",	-- addu
				"0010"	WHEN	"100100",	-- and
				"0100"	WHEN	"001000",	-- jr
				"0111"	WHEN	"100111",	-- nor
				"1000"	WHEN	"100101",	-- or
				"1001"	WHEN	"101010",	-- slt
				"1010"	WHEN	"000000",	-- sll
				"1011"	WHEN	"000010",	-- srl
				"1100"	WHEN	"000100",	-- sllv
				"1101"	WHEN	"000110",	-- srlv
				"1101"	WHEN	"100010",	-- sub
				"1101"	WHEN	"100011",	-- subu
				"0000"	WHEN	others;
		ELSE	-- I and J-Types
			WITH opcode SELECT ALUControl	<=
				"0010"	WHEN	"001000",	-- addi
				"0010"	WHEN	"001001",	-- addiu
				"0000"	WHEN	"001100",	-- andi
				"0110"	WHEN	"000100",	-- beq
				"0110"	WHEN	"000101",	-- bne
				"1101"	WHEN	"001111",	-- lui
				"0010"	WHEN	"100011",	-- lw
				"0001"	WHEN	"001101",	-- ori
				"0111"	WHEN	"001010",	-- slti
				"0010"	WHEN	"101011",	-- sw
				"0000"	WHEN	"000010";	-- j
				"0010"	WHEN	"000011",	-- jal
				"0000"	WHEN	others;
		END IF;

	END PROCESS;
END arch;