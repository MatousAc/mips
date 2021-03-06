library ieee;
use ieee.std_logic_1164.all;

entity sei is
port(
	sixteen	: in	std_logic_vector(15 downto 0);
	thirtytwo: out	std_logic_vector(31 downto 0)
);
end sei;

architecture arch of sei is
begin

	process(sixteen)
	begin
		if(sixteen(15) = '0') then
			thirtytwo <= x"0000" & sixteen;
		else
			thirtytwo <= x"ffff" & sixteen;
		end if;
	end process;
end arch;