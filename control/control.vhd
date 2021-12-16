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
			RegWrite <= '1';
			IF(funct = "001000") THEN -- If function is jr then change Jr and RegWrite
				Jr		<= '1';
			ELSE
				Jr		<= '0';
			END IF;
		
	-- #############################################################
	-- Both J-Type Instructions
	
		ELSIF(opcode = "000010") THEN -- j
			RegDst	<= '0';
			ALUsrc	<= '0';
			Jump		<= '1';
			Jal		<= '0';
			Jr			<= '0';
			Beq		<= '0';
			Bne		<= '0';
			MemRead	<= '0';
			MemWrite	<= '0';
			RegWrite	<= '0';
			MemtoReg	<= '0';
		
		ELSIF(opcode = "000011") THEN -- jal
			RegDst	<= '0';
			ALUsrc	<= '0';
			Jump		<= '1';
			Jal		<= '1';
			Jr			<= '0';
			Beq		<= '0';
			Bne		<= '0';
			MemRead	<= '0';
			MemWrite	<= '0';
			RegWrite	<= '1';
			MemtoReg	<= '0';
			
	
		
	-- #############################################################
	-- All I-Type Instructions
		
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
			ELSIF(opcode = "001100") THEN -- andi
					ALUsrc	<= '1';
					Beq		<= '0';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '1';
					MemtoReg	<= '0';
			ELSIF(opcode = "000100") THEN -- beq
					ALUsrc	<= '0';
					Beq		<= '1';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '0';
					MemtoReg	<= '0';
			ELSIF(opcode = "000101") THEN -- bne
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
			ELSE -- Base case shouldn't happen 
					ALUsrc	<= '0';
					Beq		<= '0';
					Bne		<= '0';
					MemRead	<= '0';
					MemWrite	<= '0';
					RegWrite	<= '0';
					MemtoReg	<= '0';
			END IF;
		END IF;
		
	-- ##########################################################
	-- ALUControl
	
		IF(opcode = "000000") THEN	-- R-Types
			case funct is
				when "100000" => aluControl <= "0010"		;	-- add
				when "100001" => aluControl <= "0010"		;	-- addu
				when "100100" => aluControl <= "0000"		;	-- and
				when "001000" => aluControl <= "0010"		;	-- jr (d)
				when "100111" => aluControl <= "1100"		;	-- nor
				when "100101" => aluControl <= "0001"		;	-- or
				when "101010" => aluControl <= "0111"		;	-- slt
				when "000000" => aluControl <= "1000"		;	-- sll
				when "000010" => aluControl <= "1001"		;	-- srl
				when "000100" => aluControl <= "1010"		;	-- sllv
				when "000110" => aluControl <= "1011"		;	-- srlv
				when "100010" => aluControl <= "0110"		;	-- sub
				when "100011" => aluControl <= "0110"		;	-- subu
				when 	others  => aluControl <= "0000"		;	-- ###Error case###
			end case;
		ELSE	-- I and J-Types
			case opcode is
				when "001000" => aluControl <= "0010"		;	-- addi
				when "001001" => aluControl <= "0010"		;	-- addiu
				when "001100" => aluControl <= "0000"		;	-- andi
				when "000100" => aluControl <= "0110"		;	-- beq
				when "000101" => aluControl <= "0110"		;	-- bne
				when "001111" => aluControl <= "1101"		;	-- lui
				when "100011" => aluControl <= "0010"		;	-- lw
				when "001101" => aluControl <= "0001"		;	-- ori
				when "001010" => aluControl <= "0111"		;	-- slti
				when "101011" => aluControl <= "0010"		;	-- sw
				when "000010" => aluControl <= "0010"		;	-- j (d)
				when "000011" => aluControl <= "0010"		;	-- jal
				when 	others  => aluControl <= "0000"		;	-- ###Error case###
			end case;
		END IF;
		
	END PROCESS;
END arch;