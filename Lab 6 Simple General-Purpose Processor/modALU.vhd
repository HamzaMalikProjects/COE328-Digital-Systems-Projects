library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity moddedALU is
port(Clk:in std_logic;
A,B : in unsigned(7 downto 0);
OP : in unsigned(15 downto 0);
Neg : out std_logic;
R1: out unsigned(3 downto 0);
R2: out unsigned(3 downto 0));
end moddedALU;
architecture calculation of moddedALU is
signal Reg1,Reg2,Result : unsigned(7 downto 0) :=(others=> '0');
signal Reg4 : unsigned(0 to 7);
begin	
Reg1 <= A;
Reg2 <= B;
process(Clk,OP)
	begin	
	if(rising_edge(Clk)) THEN 
		case OP is
		   
			WHEN "0000000000000001" =>
					Result(0)<= Reg1(7);
					Result(1)<= Reg1(6);
					Result(2)<= Reg1(5);
					Result(3)<= Reg1(4);
					Result(4)<= Reg1(3);
					Result(5)<= Reg1(2);
					Result(6)<= Reg1(1);
					Result(7)<= Reg1(0);
					Neg<='0';
			
			
			WHEN "0000000000000010" =>
			
					Result<= Reg1 sll 3;

			WHEN "0000000000000100" => 
					Result(7)<= Not Reg2(7);
					Result(6)<= Not Reg2(6);
					Result(5)<= Not Reg2(5);
					Result(4)<= Not Reg2(4);
					Result(3)<=  Reg2(3);
					Result(2)<=  Reg2(2);
					Result(1)<=  Reg2(1);
					Result(0)<=  Reg2(0);

			
			WHEN "0000000000001000" => 	
					if(Reg1<=Reg2) then
						Result<= Reg1;
					else
						Result<=Reg2;
					end iF;
			
			WHEN "0000000000010000" => Result <= (Reg1 + Reg2)+ 4;
								
			WHEN "0000000000100000" => Result<= Reg1 + "00000011";

			WHEN "0000000001000000" => 
			
				  Result(0) <= Reg2(0);
				  Result(2) <= Reg2(2);
				  Result(4) <= Reg2(4);
				  Result(6) <= Reg2(6);

					
			WHEN "0000000010000000" =>  Result <= (Reg1 xnor Reg2);

			WHEN "0000000100000000" =>  Result<= Reg1 ror 3;
	
			WHEN OTHERS => 
								Result<= "--------";
			
			
			end case;
		end if;
	end process;
	
R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;