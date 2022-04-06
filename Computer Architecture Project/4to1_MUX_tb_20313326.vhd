library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
ENTITY mux4to1_tb IS
END mux4to1_tb;
 
ARCHITECTURE behavior OF mux4to1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4to1
    PORT(
         in0 : IN  std_logic;
         in1 : IN  std_logic;
		 in2 : IN  std_logic;
         in3 : IN  std_logic;
         s : IN  std_logic_vector(1 downto 0);
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
    signal in0 : std_logic;
    signal in1 : std_logic;
	signal in2 : std_logic;
    signal in3 : std_logic;
    signal s : std_logic_vector(1 downto 0):= (others => '0');

  --Outputs
    signal z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 5 ns;
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
   uut: mux4to1 PORT MAP (
          in0 => in0,
          in1 => in1,
		  in2 => in2,
          in3 => in3,
          s => s,
          z => z
        );
		
     in0 <= '1';
     in1 <= '0';
	 in2 <= '1';
     in3 <= '0'; 	 
        


   stim_proc: process
   begin 
   
      wait for 5 ns; 
      s <= "00";

      wait for 5 ns; 
      s <= "01";
	  
	  wait for 5 ns; 
      s <= "10";

      wait for 5 ns; 
      s <= "11";
  
    wait;
    end process;

end behavior;