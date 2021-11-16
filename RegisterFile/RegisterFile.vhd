library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity RegisterFile is
	port(
		clk, resetn, RegWrite 	: in	std_logic;
		read_reg1, read_reg2		: in 	std_logic_vector( 4 downto 0 );
		write_reg					: in 	std_logic_vector( 4 downto 0 );
		write_data					: in 	std_logic_vector( 31 downto 0 );
		read_data1, read_data2	: out std_logic_vector( 31 downto 0 )
	);
end RegisterFile;

architecture arch of RegisterFile is
	type REG_TYPE is array (0 to 31) of std_logic_vector (31 downto 0);
	signal registers : REG_TYPE;

begin
	read_data1 <= registers(CONV_INTEGER(read_reg1));
	read_data2 <= registers(CONV_INTEGER(read_reg2));
	
	process(resetn, clk)
	begin
		if(resetn = '0') then
			for i in 0 to 31 loop
				registers(i) <= x"00000000";
			end loop;
		elsif(rising_edge(clk)) then
			if(RegWrite = '1') then
				registers(CONV_INTEGER(write_reg)) <= write_data;
			end if;
		end if;
	end process;
end arch;	