library ieee;
use ieee.std_logic_1164.all;
entity fsmm is
	port(	clk				: in std_logic;
			data_in			: in std_logic;
			reset				: in std_logic;
			student_id		: out std_logic_vector(3 downto 0);
			current_state 	: out std_logic_vector(3 downto 0));
end fsmm;
architecture fsm of fsmm is
-- build an enumerated type with 9 states for the state machine 
--(9 states for parsing 9 digits of student id) 
type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
-- register to hold the current state
signal yfsm : state_type;
begin
	process (clk, reset)
	begin
		IF	reset = '1' THEN
			yfsm <= s0;--FSM CASE #4
		elsif (clk'EVENT AND CLK = '1') THEN
			CASE yfsm IS
			when s0=>
				IF (data_in = '0') then
					yfsm <= s0;
				ELSE 
					yfsm <= s1;
				END IF;
			when s1=>
				IF (data_in = '0') THEN
					yfsm <= s1;
				ELSE 
					yfsm <= s3;
				END IF;
			when s3=>
				IF (data_in ='0') THEN
					yfsm <= s3;
				ELSE 
					yfsm <= s8;
				END IF;
			when s8=>
				IF (data_in = '0') THEN
					yfsm <= s8;
				ELSE
					yfsm <= s6;
				END IF;
			when s6=>
				IF (data_in = '0') THEN
					yfsm <= s6;
				ELSE 
					yfsm <= s5;
				END IF;
			when s5=>
				IF (data_in ='0') THEN
					yfsm <= s5;
				ELSE 
					yfsm <= s7;
				END IF;
			when s7=>
				IF (data_in ='0') THEN
					yfsm <= s7;
				ELSE 
					yfsm <= s2;
				END IF;
			when s2=>
				IF (data_in ='0') THEN
					yfsm <= s2;
				ELSE 
					yfsm <= s4;
			   END IF;
			when s4=>
				IF (data_in ='0') THEN
					yfsm <= s4;
				ELSE 
					yfsm <= s0;
				END IF;
			END CASE;
		END IF;
	END process;
	-- implement the moore or mealy logic here
	process (yfsm, data_in) -- data_in if reqd only
	begin 
		case yfsm is
			when s0=>
				student_id <= "0101"; --5
			when s1=>
				student_id <= "0000";--0
			when s2=>
				student_id <= "0001";--1
			when s3=>
				student_id <= "0001";--1
			when s4=>
				student_id <= "0000";--0
			when s5=>
				student_id <= "1001";--9
			when s6=>
				student_id <= "0010";--2
			when s7=>
				student_id <= "1000";--8
			when s8=>
				student_id <= "0110";--6
		END CASE; 
	END process;	
	END fsm;