library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity modpt3ALU is
port(Clk:in std_logic;
		A,B : in unsigned(7 downto 0);
		student_id : in unsigned(3 downto 0);
		OP : in unsigned(15 downto 0);
		R1: out unsigned(3 downto 0));

end modpt3ALU;
architecture calculation of modpt3ALU is
signal Reg1,Result : unsigned(7 downto 0) :=(others=> '0');
begin	
Reg1 <= A;
process(Clk,OP)
	begin	
	if(rising_edge(Clk)) THEN 
		case OP is
		   
			WHEN "0000000000000001" => 
					
					if ( Reg1 > Student_id) then
						Result <= "00000001"; -- Y
					else 
						Result <= "00000000"; -- N
					end if;


			WHEN "0000000000000010" => 
					if ( Reg1 > Student_id) then
						Result <= "00000001"; -- Y
					else 
						Result <= "00000000"; -- N
					end if;
					

			WHEN "0000000000000100" => 
					if ( Reg1 > Student_id) then
						Result <= "00000001"; -- Y
					else 
						Result <= "00000000"; -- N					
					end if;
			WHEN "0000000000001000" => 
					if ( Reg1 > Student_id) then
						Result <= "00000001"; -- Y
					else 
						Result <= "00000000"; -- N					
					end if;
			WHEN "0000000000010000" => 
					if ( Reg1 > Student_id) then
						Result <= "00000001"; -- Y
					else 
						Result <= "00000000"; -- N							
					end if;
			WHEN "0000000000100000" => 
					if ( Reg1 > Student_id) then
						Result <= "00000001"; -- Y
					else 
						Result <= "00000000" ;-- N					
					end if;
			WHEN "0000000001000000" => 
					if ( Reg1 > Student_id) then
						Result <= "00000001"; -- Y
					else 
						Result <= "00000000"; -- N
					end if;	
			WHEN "0000000010000000" => 
			
					if ( Reg1 > Student_id) then
						Result <= "00000001"; -- Y
					else 
						Result <= "00000000" ;-- N
					end if;	
						
			WHEN "0000000100000000" => 
					
					if ( Reg1 > Student_id) then
						Result <= "00000001"; -- Y
					else 
						Result <= "00000000"; -- N
					end if;
			WHEN OTHERS => 
								Result<= "--------";
			
			
			end case;
		end if;
	end process;
	
R1 <= Result(3 downto 0);
end calculation;