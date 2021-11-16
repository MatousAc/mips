library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;

entity alu is 
port(
	ALUControl		: in	std_logic_vector(3 downto 0);
	inputA, inputB	: in	std_logic_vector(31 downto 0);
	shamt				: in 	std_logic_vector(3 downto 0);
	Zero				: out	std_logic;
	ALU_Result		: out std_logic_vector(31 downto 0)
);
end alu;

architecture arch of alu is
begin
	

end arch;