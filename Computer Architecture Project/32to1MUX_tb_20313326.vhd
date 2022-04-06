library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY thirtytwotooneMUX_tb IS
END thirtytwotooneMUX_tb;
 
ARCHITECTURE behavior OF thirtytwotooneMUX_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT thirtytwotooneMUX
    PORT(
         in0 : IN  std_logic_vector(31 downto 0);
         in1 : IN  std_logic_vector(31 downto 0);
		 in2 : IN  std_logic_vector(31 downto 0);
		 in3 : IN  std_logic_vector(31 downto 0);
		 in4 : IN  std_logic_vector(31 downto 0);
         in5 : IN  std_logic_vector(31 downto 0);
		 in6 : IN  std_logic_vector(31 downto 0);
		 in7 : IN  std_logic_vector(31 downto 0);
         in8 : IN  std_logic_vector(31 downto 0);
         in9 : IN  std_logic_vector(31 downto 0);
		 in10 : IN  std_logic_vector(31 downto 0);
		 in11 : IN  std_logic_vector(31 downto 0);
		 in12 : IN  std_logic_vector(31 downto 0);
         in13 : IN  std_logic_vector(31 downto 0);
		 in14 : IN  std_logic_vector(31 downto 0);
		 in15 : IN  std_logic_vector(31 downto 0);
         in16 : IN  std_logic_vector(31 downto 0);
         in17 : IN  std_logic_vector(31 downto 0);
		 in18 : IN  std_logic_vector(31 downto 0);
		 in19 : IN  std_logic_vector(31 downto 0);
		 in20 : IN  std_logic_vector(31 downto 0);
         in21 : IN  std_logic_vector(31 downto 0);
		 in22 : IN  std_logic_vector(31 downto 0);
		 in23 : IN  std_logic_vector(31 downto 0);
         in24 : IN  std_logic_vector(31 downto 0);
         in25 : IN  std_logic_vector(31 downto 0);
		 in26 : IN  std_logic_vector(31 downto 0);
		 in27 : IN  std_logic_vector(31 downto 0);
		 in28 : IN  std_logic_vector(31 downto 0);
         in29 : IN  std_logic_vector(31 downto 0);
		 in30 : IN  std_logic_vector(31 downto 0);
		 in31 : IN  std_logic_vector(31 downto 0);		 
		 S : IN  std_logic_vector(31 downto 0);

         Z : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
    signal in0 : std_logic_vector(31 downto 0) := (others => '0');
    signal in1 : std_logic_vector(31 downto 0) := (others => '0');
	signal in2 : std_logic_vector(31 downto 0) := (others => '0');
	signal in3 : std_logic_vector(31 downto 0) := (others => '0');
    signal in4 : std_logic_vector(31 downto 0) := (others => '0');
    signal in5 : std_logic_vector(31 downto 0) := (others => '0');
	signal in6 : std_logic_vector(31 downto 0) := (others => '0');
	signal in7 : std_logic_vector(31 downto 0) := (others => '0');
	signal in8 : std_logic_vector(31 downto 0) := (others => '0');
    signal in9 : std_logic_vector(31 downto 0) := (others => '0');
	signal in10 : std_logic_vector(31 downto 0) := (others => '0');
	signal in11 : std_logic_vector(31 downto 0) := (others => '0');
    signal in12 : std_logic_vector(31 downto 0) := (others => '0');
    signal in13 : std_logic_vector(31 downto 0) := (others => '0');
	signal in14 : std_logic_vector(31 downto 0) := (others => '0');
	signal in15 : std_logic_vector(31 downto 0) := (others => '0');
	signal in16 : std_logic_vector(31 downto 0) := (others => '0');
    signal in17 : std_logic_vector(31 downto 0) := (others => '0');
	signal in18 : std_logic_vector(31 downto 0) := (others => '0');
	signal in19 : std_logic_vector(31 downto 0) := (others => '0');
    signal in20 : std_logic_vector(31 downto 0) := (others => '0');
    signal in21 : std_logic_vector(31 downto 0) := (others => '0');
	signal in22 : std_logic_vector(31 downto 0) := (others => '0');
	signal in23 : std_logic_vector(31 downto 0) := (others => '0');
	signal in24 : std_logic_vector(31 downto 0) := (others => '0');
    signal in25 : std_logic_vector(31 downto 0) := (others => '0');
	signal in26 : std_logic_vector(31 downto 0) := (others => '0');
	signal in27 : std_logic_vector(31 downto 0) := (others => '0');
    signal in28 : std_logic_vector(31 downto 0) := (others => '0');
    signal in29 : std_logic_vector(31 downto 0) := (others => '0');
	signal in30 : std_logic_vector(31 downto 0) := (others => '0');
	signal in31 : std_logic_vector(31 downto 0) := (others => '0');
	signal S : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
    signal Z : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: thirtytwotooneMUX PORT MAP (
          in0 => in0,
          in1 => in1,
		  in2 => in2,
		  in3 => in3,
          in4 => in4,
          in5 => in5,
		  in6 => in6,
		  in7 => in7,
		  in8 => in8,
          in9 => in9,
		  in10 => in10,
		  in11 => in11,
          in12 => in12,
          in13 => in13,
		  in14 => in14,
		  in15 => in15,
		  in16 => in16,
          in17 => in17,
		  in18 => in18,
		  in19 => in19,
          in20 => in20,
          in21 => in21,
		  in22 => in22,
		  in23 => in23,
		  in24 => in24,
          in25 => in25,
		  in26 => in26,
		  in27 => in27,
          in28 => in28,
          in29 => in29,
		  in30 => in30,
		  in31 => in31,
          S => S,
          Z => Z
        );

   stim_proc: process
   begin		
        in0 <= "11111111111111110000000000000000";
		in1 <= "01111111111111111000000000000000";
		in2 <= "00111111111111111100000000000000";
		in3 <= "00011111111111111110000000000000";
		in4 <= "00001111111111111111000000000000";
		in5 <= "00000111111111111111100000000000";
		in6 <= "00000011111111111111110000000000";
		in7 <= "00000001111111111111111000000000";
		in8 <= "00000000111111111111111100000000";
		in9 <= "00000000011111111111111110000000";
		in10 <= "00000000001111111111111111000000";
		in11 <= "00000000000111111111111111100000";
		in12 <= "00000000000011111111111111110000";
		in13 <= "00000000000001111111111111111000";
		in14 <= "00000000000000111111111111111100";
		in15 <= "00000000000000011111111111111110";
		in16 <= "00000000000000001111111111111111";
		in17 <= "10111111111111111000000000000000";
		in18 <= "10011111111111111100000000000000";
		in19 <= "10001111111111111110000000000000";
		in20 <= "10000111111111111111000000000000";
		in21 <= "10000011111111111111100000000000";
		in22 <= "10000001111111111111110000000000";
		in23 <= "10000000111111111111111000000000";
		in24 <= "10000000011111111111111100000000";
		in25 <= "10000000001111111111111110000000";
		in26 <= "10000000000111111111111111000000";
		in27 <= "10000000000011111111111111100000";
		in28 <= "10000000000001111111111111110000";
		in29 <= "10000000000000111111111111111000";
		in30 <= "10000000000000011111111111111100";
		in31 <= "10000000000000001111111111111110";		
      S <= "00000";
      
      wait for 10 ns;
      S <= "00001";
      
      wait for 10 ns;
      S <= "00010";
      
      wait for 10 ns;
      S <= "00011";
      
      wait for 10 ns;
      S <= "00100";
      
      wait for 10 ns;
      S <= "00101";
      
      wait for 10 ns;
      S <= "00110";
      
      wait for 10 ns;
      S <= "00111";
      
      wait for 10 ns;
      S <= "01000";
      
      wait for 10 ns;
      S <= "01001";
      
      wait for 10 ns;
      S <= "01010";
      
      wait for 10 ns;
      S <= "01011";
      
      wait for 10 ns;
      S <= "01100";
      
      wait for 10 ns;
      S <= "01101";
      
      wait for 10 ns;
      S <= "01110";
      
      wait for 10 ns;
      S <= "01111";
      
      wait for 10 ns;
      S <= "10000";
      
      wait for 10 ns;
      S <= "10001";
      
      wait for 10 ns;
      S <= "10010";
      
      wait for 10 ns;
      S <= "10011";
      
      wait for 10 ns;
      S <= "10100";
      
      wait for 10 ns;
      S <= "10101";
      
      wait for 10 ns;
      S <= "10110";
      
      wait for 10 ns;
      S <= "10111";
      
      wait for 10 ns;
      S <= "11000";
      
      wait for 10 ns;
      S <= "11001";
      
      wait for 10 ns;
      S <= "11010";
      
      wait for 10 ns;
      S <= "11011";
      
      wait for 10 ns;
      S <= "11100";
      
      wait for 10 ns;
      S <= "11101";
      
      wait for 10 ns;
      S <= "11110";
      
      wait for 10 ns;
      S <= "11111";
     
 --     wait;
   end process;

END;
