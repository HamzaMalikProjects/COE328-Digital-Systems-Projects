LIBRARY ieee;
USE ieee.std_logic_1164.all;


Entity	modded_sseg IS 
PORT(
	bcd: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	Cout: IN  STD_LOGIC;
	leds: OUT  STD_LOGIC_VECTOR(0 TO 6);
	negleds: OUT STD_LOGIC_VECTOR(0 TO 6));
END modded_sseg;

ARCHITECTURE Behaviour OF modded_sseg IS
BEGIN
	PROCESS(bcd)
	BEGIN
		CASE bcd IS -- abcdefg
			WHEN "0000" => leds <= "1110110";
			WHEN "0001" => leds <= "0110011";
			WHEN OTHERS => leds <= "-------";
		END CASE;
	END PROCESS;
	PROCESS(Cout)
	BEGIN 
		CASE Cout IS
			WHEN	'0' => negleds <= "0000000";
			WHEN  '1' => negleds <= "0000001";
		END CASE;
	END PROCESS;
END Behaviour;