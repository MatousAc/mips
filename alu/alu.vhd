library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;
USE ieee.std_logic_signed.all;

entity alu is 
port(
	aluControl		: in	std_logic_vector(3 downto 0);
	inputA, inputB	: in	std_logic_vector(31 downto 0);
	shamt				: in 	std_logic_vector(3 downto 0);
	zero				: out	std_logic;
	aluResult		: out std_logic_vector(31 downto 0)
);
end alu;

architecture arch of alu is
begin

	process(aluControl, inputA, inputB, shamt)
	begin
		-- first check for every instruction type
		case aluControl is
			when "0000" =>	-- and
				aluResult <= inputA and inputB;
			when "0001" => -- or
				aluResult <= inputA or inputB;
			when "0010" => -- add
				aluResult <= inputA + inputB;
			when "0110" => -- sub
				aluResult <= inputA - inputB;
			when "0111" => -- slt
				if(inputA < inputB) then
					aluResult <= x"00000001";
				else
					aluResult <= x"00000000";
				end if;
			when "1000" => -- sll
				aluResult <= shift_left(inputB, shamt);
			when "1001" => -- srl
				aluResult <= shift_right(inputB, shamt);
			when "1010" => -- sllv
				aluResult <= shift_left(inputB, inputA);
			when "1011" => -- srlv
				aluResult <= shift_right(inputB, inputA);
			when "1100" => -- nor
				aluResult <= inputA nor inputB;
			when "1101" => -- lui
				aluResult <= shift_left(inputB, 16);
			when others => -- do nothing
				aluResult <= aluResult;
			end case;
	end process;
	
	with aluResult select
	zero <= 	'1' when x"00000000",
				'1' when others;

end arch;