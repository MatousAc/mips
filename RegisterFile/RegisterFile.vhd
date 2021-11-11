library ieee;
use ieee.std_logic_1164.all;

entity RegisterFile is
	port(
		clk, reset, RegWrite 	: in	std_logic;
		read_reg1, read_reg2		: in 	std_logic_vector( 4 downto 0 );
		write_reg					: in 	std_logic_vector( 4 downto 0 );
		write_data					: in 	std_logic_vector( 31 downto 0 );
		read_data1, read_data2	: in 	std_logic_vector( 31 downto 0 );
	);
end RegisterFile;

architecture arch of RegisterFile is
	type REG_TYPE is array (0 to 31) of std_logic_vector (31 downto 0);
	signal registers : REG_TYPE;
	
begin
	read_data1 <= registers(CONV_INTEGER(read_reg1));
	read_data2 <= ?
	
	process(reset, clk)
	begin
		if(reset = '0') then
		
		elsif(rising_edge(clk)) then
		
		end if;
	end process;
end arch;