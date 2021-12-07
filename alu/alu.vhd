library ieee;
use ieee.std_logic_1164.all;
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
begin
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
				  case conv_integer(shamt) is
						when 1 => res <= inputB(30 downto 0) & "0";
						when 2 => res <= inputB(29 downto 0) & "00";
						when 3 => res <= inputB(28 downto 0) & "000";
						when 4 => res <= inputB(27 downto 0) & "0000";
						when 5 => res <= inputB(26 downto 0) & "00000";
						when 6 => res <= inputB(25 downto 0) & "000000";
						when 7 => res <= inputB(24 downto 0) & "0000000";
						when 8 => res <= inputB(23 downto 0) & "00000000";
						when 9 => res <= inputB(22 downto 0) & "000000000";
						when 10 => res <= inputB(21 downto 0)& "0000000000";
						when 11 => res <= inputB(20 downto 0)& "00000000000";
						when 12 => res <= inputB(19 downto 0)& "000000000000";
						when 13 => res <= inputB(18 downto 0)& "0000000000000";
						when 14 => res <= inputB(17 downto 0)& "00000000000000";
						when 15 => res <= inputB(16 downto 0)& "000000000000000";
						when 16 => res <= inputB(15 downto 0)& "0000000000000000";
						when 17 => res <= inputB(14 downto 0)& "00000000000000000";
						when 18 => res <= inputB(13 downto 0)& "000000000000000000";
						when 19 => res <= inputB(12 downto 0)& "0000000000000000000";
						when 20 => res <= inputB(11 downto 0)& "00000000000000000000";
						when 21 => res <= inputB(10 downto 0)& "000000000000000000000";
						when 22 => res <= inputB(9 downto 0) & "0000000000000000000000";
						when 23 => res <= inputB(8 downto 0) & "00000000000000000000000";
						when 24 => res <= inputB(7 downto 0) & "000000000000000000000000";
						when 25 => res <= inputB(6 downto 0) & "0000000000000000000000000";
						when 26 => res <= inputB(5 downto 0) & "00000000000000000000000000";
						when 27 => res <= inputB(4 downto 0) & "000000000000000000000000000";
						when 28 => res <= inputB(3 downto 0) & "0000000000000000000000000000";
						when 29 => res <= inputB(2 downto 0) & "00000000000000000000000000000";
						when 30 => res <= inputB(1 downto 0) & "000000000000000000000000000000";
						when 31 => res <= inputB(0 downto 0) & "0000000000000000000000000000000";
						when others => res <= inputB;
					end case;
			when "1001" => -- srl
				case conv_integer(shamt) is
					when 1 => res <= "0" & inputB(31 downto 1);
					when 2 => res <= "00" & inputB(31 downto 2);
					when 3 => res <= "000" & inputB(31 downto 3);
					when 4 => res <= "0000" & inputB(31 downto 4);
					when 5 => res <= "00000" & inputB(31 downto 5);
					when 6 => res <= "000000" & inputB(31 downto 6);
					when 7 => res <= "0000000" & inputB(31 downto 7);
					when 8 => res <= "00000000" & inputB(31 downto 8);
					when 9 => res <= "000000000" & inputB(31 downto 9);
					when 10 => res <= "0000000000" & inputB(31 downto 10);
					when 11 => res <= "00000000000" & inputB(31 downto 11);
					when 12 => res <= "000000000000" & inputB(31 downto 12);
					when 13 => res <= "0000000000000" & inputB(31 downto 13);
					when 14 => res <= "00000000000000" & inputB(31 downto 14);
					when 15 => res <= "000000000000000" & inputB(31 downto 15);
					when 16 => res <= "0000000000000000" & inputB(31 downto 16);
					when 17 => res <= "00000000000000000" & inputB(31 downto 17);
					when 18 => res <= "000000000000000000" & inputB(31 downto 18);
					when 19 => res <= "0000000000000000000" & inputB(31 downto 19);
					when 20 => res <= "00000000000000000000" & inputB(31 downto 20);
					when 21 => res <= "000000000000000000000" & inputB(31 downto 21);
					when 22 => res <= "0000000000000000000000" & inputB(31 downto 22);
					when 23 => res <= "00000000000000000000000" & inputB(31 downto 23);
					when 24 => res <= "000000000000000000000000" & inputB(31 downto 24);
					when 25 => res <= "0000000000000000000000000" & inputB(31 downto 25);
					when 26 => res <= "00000000000000000000000000" & inputB(31 downto 26);
					when 27 => res <= "000000000000000000000000000" & inputB(31 downto 27);
					when 28 => res <= "0000000000000000000000000000" & inputB(31 downto 28);
					when 29 => res <= "00000000000000000000000000000" & inputB(31 downto 29);
					when 30 => res <= "000000000000000000000000000000" & inputB(31 downto 30);
					when 31 => res <= "0000000000000000000000000000000" & inputB(31 downto 31);
					when others => res <= inputB;
				end case;
			when "1010" => -- sllv
				case conv_integer(inputA(4 downto 0)) is
					when 1 => res <= inputB(30 downto 0) & "0";
					when 2 => res <= inputB(29 downto 0) & "00";
					when 3 => res <= inputB(28 downto 0) & "000";
					when 4 => res <= inputB(27 downto 0) & "0000";
					when 5 => res <= inputB(26 downto 0) & "00000";
					when 6 => res <= inputB(25 downto 0) & "000000";
					when 7 => res <= inputB(24 downto 0) & "0000000";
					when 8 => res <= inputB(23 downto 0) & "00000000";
					when 9 => res <= inputB(22 downto 0) & "000000000";
					when 10 => res <= inputB(21 downto 0)& "0000000000";
					when 11 => res <= inputB(20 downto 0)& "00000000000";
					when 12 => res <= inputB(19 downto 0)& "000000000000";
					when 13 => res <= inputB(18 downto 0)& "0000000000000";
					when 14 => res <= inputB(17 downto 0)& "00000000000000";
					when 15 => res <= inputB(16 downto 0)& "000000000000000";
					when 16 => res <= inputB(15 downto 0)& "0000000000000000";
					when 17 => res <= inputB(14 downto 0)& "00000000000000000";
					when 18 => res <= inputB(13 downto 0)& "000000000000000000";
					when 19 => res <= inputB(12 downto 0)& "0000000000000000000";
					when 20 => res <= inputB(11 downto 0)& "00000000000000000000";
					when 21 => res <= inputB(10 downto 0)& "000000000000000000000";
					when 22 => res <= inputB(9 downto 0) & "0000000000000000000000";
					when 23 => res <= inputB(8 downto 0) & "00000000000000000000000";
					when 24 => res <= inputB(7 downto 0) & "000000000000000000000000";
					when 25 => res <= inputB(6 downto 0) & "0000000000000000000000000";
					when 26 => res <= inputB(5 downto 0) & "00000000000000000000000000";
					when 27 => res <= inputB(4 downto 0) & "000000000000000000000000000";
					when 28 => res <= inputB(3 downto 0) & "0000000000000000000000000000";
					when 29 => res <= inputB(2 downto 0) & "00000000000000000000000000000";
					when 30 => res <= inputB(1 downto 0) & "000000000000000000000000000000";
					when 31 => res <= inputB(0 downto 0) & "0000000000000000000000000000000";
					when others => res <= inputB;
				end case;
			when "1011" => -- srlv
				case conv_integer(inputA(4 downto 0)) is
					when 1 => res <= "0" & inputB(31 downto 1);
					when 2 => res <= "00" & inputB(31 downto 2);
					when 3 => res <= "000" & inputB(31 downto 3);
					when 4 => res <= "0000" & inputB(31 downto 4);
					when 5 => res <= "00000" & inputB(31 downto 5);
					when 6 => res <= "000000" & inputB(31 downto 6);
					when 7 => res <= "0000000" & inputB(31 downto 7);
					when 8 => res <= "00000000" & inputB(31 downto 8);
					when 9 => res <= "000000000" & inputB(31 downto 9);
					when 10 => res <= "0000000000" & inputB(31 downto 10);
					when 11 => res <= "00000000000" & inputB(31 downto 11);
					when 12 => res <= "000000000000" & inputB(31 downto 12);
					when 13 => res <= "0000000000000" & inputB(31 downto 13);
					when 14 => res <= "00000000000000" & inputB(31 downto 14);
					when 15 => res <= "000000000000000" & inputB(31 downto 15);
					when 16 => res <= "0000000000000000" & inputB(31 downto 16);
					when 17 => res <= "00000000000000000" & inputB(31 downto 17);
					when 18 => res <= "000000000000000000" & inputB(31 downto 18);
					when 19 => res <= "0000000000000000000" & inputB(31 downto 19);
					when 20 => res <= "00000000000000000000" & inputB(31 downto 20);
					when 21 => res <= "000000000000000000000" & inputB(31 downto 21);
					when 22 => res <= "0000000000000000000000" & inputB(31 downto 22);
					when 23 => res <= "00000000000000000000000" & inputB(31 downto 23);
					when 24 => res <= "000000000000000000000000" & inputB(31 downto 24);
					when 25 => res <= "0000000000000000000000000" & inputB(31 downto 25);
					when 26 => res <= "00000000000000000000000000" & inputB(31 downto 26);
					when 27 => res <= "000000000000000000000000000" & inputB(31 downto 27);
					when 28 => res <= "0000000000000000000000000000" & inputB(31 downto 28);
					when 29 => res <= "00000000000000000000000000000" & inputB(31 downto 29);
					when 30 => res <= "000000000000000000000000000000" & inputB(31 downto 30);
					when 31 => res <= "0000000000000000000000000000000" & inputB(31 downto 31);
					when others => res <= inputB;
				end case;			
			when "1100" => -- nor
				res <= inputA nor inputB;
			when "1101" => -- lui
				res <= inputB(15 downto 0) & x"0000";
			when others => -- do nothing
			end case;
	end process;
	
	with res select
	zero <= 	'1' when x"00000000",
				'0' when others;
	
	aluResult <= res;
end arch;