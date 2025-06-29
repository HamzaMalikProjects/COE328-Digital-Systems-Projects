LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY modifedsseg IS
	PORT( bcd	: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			leds 	: OUT STD_LOGIC_VECTOR(0 TO 6));
END modifedsseg;
			
ARCHITECTURE Behavior OF modifedsseg IS
BEGIN
	PROCESS(bcd)
	BEGIN	
		CASE bcd IS					-- abcdefg
			WHEN "0000" => leds <= "1111110";
			WHEN "0001" => leds <= "0110000";
			WHEN OTHERS => leds <= "-------";
		END CASE;
	END PROCESS;
END Behavior;
