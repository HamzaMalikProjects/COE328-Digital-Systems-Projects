LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity sev_seg_mod IS 
PORT (bcd: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	leds: OUT  STD_LOGIC_VECTOR(0 TO 6));
END sev_seg_mod;

ARCHITECTURE Behaviour OF sev_seg_mod IS
BEGIN
	PROCESS(bcd)
	BEGIN
		CASE bcd IS -- abcdefg
			WHEN "0000" => leds <= "1110110";
			WHEN "0001" => leds <= "0110011";
			WHEN OTHERS => leds <= "-------";
		END CASE;
	END PROCESS;
END Behaviour;