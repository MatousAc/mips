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
		ALUControl				: in std_logic_vector( 3 downto 0);
	);
end control;