--Part 2 problem a)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity ALUproblem2 is
port(Clk	:	in std_logic;
		A,B : in unsigned(7 downto 0);
		student_id	:	in unsigned(3 downto 0);
		OP	:	in unsigned(15 downto 0);
		Neg	:	out std_logic;
		R1	:	out unsigned (3 downto 0);
		R2	:	out unsigned (3 downto 0));
end ALUproblem2;
architecture calculation of ALUproblem2 is
signal Reg1, Reg2, Reg3, Result: unsigned(7 downto 0):=(others=>'0');
signal Reg4 : unsigned (0 to 7);


begin
Reg1 <= A;
Reg2 <= B;
process(Clk, OP)
begin
	if(rising_edge(Clk))THEN
		case OP is
			WHEN "0000000000000001" => --1 
				Result <= Reg1 + 2;
				Neg <= '0';
			WHEN "0000000000000010" => --2
				Result <= shift_right((Reg2),2);
				Neg <= '0';
			WHEN "0000000000000100" => --3
				Result <= shift_right((Reg1),4);
				Neg <= '0';
			WHEN "0000000000001000" => --4
				if(Reg1<Reg2)THEN
				Result<= Reg1;
				else
				Result<= Reg2;
				end if;
				Neg <= '0';
			WHEN "0000000000010000" => --5
				Result <= rotate_right((Reg1),2);
				Neg <= '0';
			WHEN "0000000000100000" => --6
				Result <= Reg2 xor "11111111";
				Neg <= '0';
			WHEN "0000000001000000" => --7
				Result <= Reg1 xor Reg2;
				Neg <= '0';
			WHEN "0000000010000000" => --8
				Result <= (Reg1 + Reg2) - 4;
				Neg <= '0';
			WHEN "0000000100000000" => --9
				Result <= "11111111";
				Neg <= '0';
			WHEN OTHERS =>
		end case;
	end if;
end process;
R1 <= Result(3 downto 0);
R2 <= Result (7 downto 4);
end calculation;
