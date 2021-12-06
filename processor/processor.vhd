library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity processor is
port(
	reset					: in	std_logic;
	slow_clk, fast_clk: in 	std_logic;
	PC_out, inst_out	: out	std_logic_vector(31 downto 0);
	read_reg1_out		: out std_logic_vector(4 downto 0);
	read_reg2_out		: out std_logic_vector(4 downto 0);
	write_reg_out		: out std_logic_vector(4 downto 0);
	read_data1_out		: out std_logic_vector(31 downto 0);
	read_data2_out		: out std_logic_vector(31 downto 0);
	write_data_out		: out std_logic_vector(31 downto 0);
);
end processor;

architecture arch of processor is
	-- declare internal signals needed to connect submodules
	