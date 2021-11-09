LIBRARY IEEE;
USE IEEE.Std_logic_1164.all;

entity pc is 
  port(  d      :  in    std_logic_vector( 31 downto 0 );
      clk    :  in    std_logic;  
      resetn  :  in    std_logic;  
      q      :  out   std_logic_vector( 31 downto 0 ));
end pc;

architecture arch of pc is

begin
  process(resetn, clk)
  begin
    if(resetn = '0') then
      q <= X"00400000";
    elsif(RISING_EDGE(clk)) then
      q <= d;
    end if;
  end process;
end arch;