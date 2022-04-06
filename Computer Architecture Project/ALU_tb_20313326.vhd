LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ALU_32bit_tb IS
END ALU_32bit_tb;
 
ARCHITECTURE behavior OF ALU_32bit_tb IS 
 
 
    COMPONENT ALU_32bit
    Port ( 
      X0: in std_logic_vector(31 downto 0);
      X1: in std_logic_vector(31 downto 0);
      op : in std_logic_vector(4 downto 0);
      F: out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
   signal X0 : std_logic_vector(31 downto 0) := (others => '0');
   signal X1 : std_logic_vector(31 downto 0) := (others => '0');
   signal op : std_logic_vector(4 downto 0) := (others => '0');

   signal F : std_logic_vector(31 downto 0);
 
BEGIN
 
   uut: ALU_32bit PORT MAP (
          X0 => X0,
          X1 => X1,
          op => op,
          F => F
        );

   stim_proc: process
   begin		
        X0 <= "00000000000000000000000000000000";
		X1 <= "00100000001100110011001100010110";
		
		wait for 10 ns;
		op <= "00000";
		
		wait for 10 ns;
		op <= "00001";
		
		wait for 10 ns;
		op <= "00010";
		
		wait for 10 ns;
		op <= "00011";
		
		wait for 10 ns;
		op <= "00100";
		
		wait for 10 ns;
		op <= "00101";
		
		wait for 10 ns;
		op <= "00110";
		
		wait for 10 ns;
		op <= "00111";
		
		wait for 10 ns;
		op <= "01000";
		
		wait for 10 ns;
		op <= "01010";
		
		wait for 10 ns;
		op <= "01100";
		
		wait for 10 ns;
		op <= "01110";
	
      wait;
   end process;

END;