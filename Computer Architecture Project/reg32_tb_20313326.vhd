library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY reg32_tb IS
END reg32_tb;

ARCHITECTURE behavior OF reg32_tb IS 

    COMPONENT register32
    PORT(
         load : IN  std_logic;
         Clk : IN  std_logic;
         D : IN  std_logic_vector(31 downto 0);
         Q : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal load : std_logic:='0';
   signal Clk : std_logic:='0';
   signal D : std_logic_vector(31 downto 0) := (others => '0');

   --Outputs
   signal Q : std_logic_vector(31 downto 0) := (others => '0');
   
   constant PERIOD : time := 10ns;

BEGIN
 
   -- Instantiate the Unit Under Test (UUT)
   uut: register32 PORT MAP (
          D => D,
          Clk => Clk,
          load => load,
          Q => Q
        );
        
   Clk <= not Clk after PERIOD/2;

   stim_proc: process
   begin		
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000000001";

      wait until Clk'event and Clk='1';
      load <= '1';

      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000000010";
      
      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000000011";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000000100";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000000101";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000000110";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000000111";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000001000";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000001001";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000001010";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000001011";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000001100";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000001101";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000001110";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000001111";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000010000";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000010001";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000010010";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000010011";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000010100";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000010101";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000010110";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000010111";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000011000";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000011001";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000011010";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000011011";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000011100";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000011101";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000011110";

      wait until Clk'event and Clk='1';
      load <= '1';
      
      wait until Clk'event and Clk='1';
      load <= '0';
      D <= "00000000000000000000000000011111";

      wait until Clk'event and Clk='1';
      load <= '1';
     
 --     wait;
   end process;

END;
