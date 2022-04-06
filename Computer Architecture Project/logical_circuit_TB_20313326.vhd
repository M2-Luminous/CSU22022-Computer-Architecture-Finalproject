LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY logical_circuit_TB IS
	-- empty
END logical_circuit_TB;

ARCHITECTURE TB OF logical_circuit_TB IS

	-- DUT component
	COMPONENT logical_circuit IS
		PORT 
		(
			A, B      : IN std_logic;
			operation : IN std_logic_vector(0 TO 1);
			S         : OUT std_logic
		);
	END COMPONENT;

	SIGNAL op_in             : std_logic_vector(0 TO 1);
	SIGNAL a_in, b_in, s_out : std_logic;

BEGIN
	-- Connect DUT
	DUT : logical_circuit PORT MAP(a_in, b_in, op_in, s_out);

	PROCESS
	BEGIN
		-- and
		a_in  <= '1';
		b_in  <= '1';
		op_in <= "00";
		WAIT FOR 75 ns;
 
		ASSERT(s_out = '1') REPORT "Fail" SEVERITY failure;
		a_in  <= '0';
		b_in  <= '1';
		op_in <= "00";
		WAIT FOR 75 ns;
		ASSERT(s_out = '0') REPORT "Fail" SEVERITY failure;
 
		a_in  <= '0';
		b_in  <= '0';
		op_in <= "00";
		WAIT FOR 75 ns;
		ASSERT(s_out = '0') REPORT "Fail" SEVERITY failure;
 
		-- or
		a_in  <= '1';
		b_in  <= '0';
		op_in <= "01";
		WAIT FOR 75 ns;
		ASSERT(s_out = '1') REPORT "Fail" SEVERITY failure;
 
		a_in  <= '1';
		b_in  <= '1';
		op_in <= "01";
		WAIT FOR 75 ns;
		ASSERT(s_out = '1') REPORT "Fail" SEVERITY failure;
 
		a_in  <= '0';
		b_in  <= '0';
		op_in <= "01";
		WAIT FOR 75 ns;
		ASSERT(s_out = '0') REPORT "Fail" SEVERITY failure;
		
		-- xor
		a_in  <= '1';
		b_in  <= '1';
		op_in <= "10";
		WAIT FOR 75 ns;
		ASSERT(s_out = '0') REPORT "Fail" SEVERITY failure;
 
		a_in  <= '1';
		b_in  <= '0';
		op_in <= "10";
		WAIT FOR 75 ns;
		ASSERT(s_out = '1') REPORT "Fail" SEVERITY failure;
 
		a_in  <= '0';
		b_in  <= '0';
		op_in <= "10";
		WAIT FOR 75 ns;
		ASSERT(s_out = '0') REPORT "Fail" SEVERITY failure;
		
		-- not 
		a_in  <= '1';
		b_in  <= '0';
		op_in <= "11";
		WAIT FOR 75 ns;
		ASSERT(s_out = '0') REPORT "Fail" SEVERITY failure;
 
		a_in  <= '0';
		b_in  <= '0';
		op_in <= "11";
		WAIT FOR 75 ns;
		ASSERT(s_out = '1') REPORT "Fail" SEVERITY failure;
 
		WAIT;
	END PROCESS;
END TB;