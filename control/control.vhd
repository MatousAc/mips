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
		ALUControl				: out std_logic_vector( 3 downto 0);
	);
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
			IF(funct = "001000") THEN
				Jr		<= '1';
				RegWrite <= '0';
			ELSE
				Jr		<= '0';
				RegWrite <= '1';
			END IF;
									
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
			END IF;
		END IF;
		
	-- ##########################################################
	-- ALUControl
		
		WITH funct SELECT
				ALUControl	<=	"0000"	WHEN "100100";	-- AND
									"0001"	WHEN "100101";	-- OR
									"0010"	WHEN "100000";	-- Add
									"0100"	WHEN "100010";	-- Subtract
									"0111"	WHEN "101010";	-- Set on less than
									"1000"	WHEN "000000";	-- Shift left logical
									"1001"	WHEN "000010";	-- Shift right logical
									"1010"	WHEN "000100";	-- Shift left logical vector
									"1011"	WHEN "000110";	-- Shift right logical vector
									"1100"	WHEN "100111";	-- NOR
									--"1101"	WHEN "000000";	-- LUI
		
	END PROCESS;
END arch;