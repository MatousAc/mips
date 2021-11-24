library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;
USE ieee.std_logic_signed.all;

entity alu is 
port(
	aluControl		: in	std_logic_vector(3 downto 0);
	inputA, inputB	: in	std_logic_vector(31 downto 0);
	shamt				: in 	std_logic_vector(4 downto 0);
	zero				: out	std_logic;
	aluResult		: out std_logic_vector(31 downto 0)
);
end alu;

architecture arch of alu is
	signal res : std_logic_vector(31 downto 0);
	signal shamti : integer;
begin
	shamti <= conv_integer(shamt);

	process(aluControl, inputA, inputB, shamt)
	begin
		-- first check for every instruction type
		case aluControl is
			when "0000" =>	-- and
				res <= inputA and inputB;
			when "0001" => -- or
				res <= inputA or inputB;
			when "0010" => -- add
				res <= inputA + inputB;
			when "0110" => -- sub
				res <= inputA - inputB;
			when "0111" => -- slt
				if(inputA < inputB) then
					res <= x"00000001";
				else
					res <= x"00000000";
				end if;
			when "1000" => -- sll
				  --for i in 0 to conv_integer(shamt) loop
					-- res <= inputB(inputB'left-1 downto 0) & '0';
				  --end loop;
				  res <= inputB(31-shamti downto 0) & x"00000000";
			when "1001" => -- srl
				  for i in 0 to conv_integer(shamt) loop
					 res <= '0' & inputB(31 downto 1);
				  end loop;			
			when "1010" => -- sllv
				  for i in 0 to conv_integer(inputA) loop
					 res <= inputB(inputB'left-1 downto 0) & '0';
				  end loop;			
			when "1011" => -- srlv
				  for i in 0 to conv_integer(inputA) loop
					 res <= '0' & inputB(31 downto 1);
				  end loop;			
			when "1100" => -- nor
				res <= inputA nor inputB;
			when "1101" => -- lui
				res <= inputB & x"0000";
			when others => -- do nothing
			end case;
	end process;
	
	with res select
	zero <= 	'1' when x"00000000",
				'1' when others;
	
	aluResult <= res;
end arch;