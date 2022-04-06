LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY logical_circuit IS
	PORT 
	(
		A, B      : IN std_logic;
		operation : IN std_logic_vector(1 DOWNTO 0);
		S         : OUT std_logic
	);
END ENTITY;

ARCHITECTURE behavioral OF logical_circuit IS
BEGIN
	PROCESS (A, B, operation)
	BEGIN
		IF operation = "00" THEN
			S <= A and B;
		ELSIF operation = "01" THEN
			S <= A or B;
		ELSIF operation = "10" THEN
			S <= A xor B;
		ELSIF operation = "11" THEN
			S <= not A;
		END IF;
	END PROCESS;

END behavioral;