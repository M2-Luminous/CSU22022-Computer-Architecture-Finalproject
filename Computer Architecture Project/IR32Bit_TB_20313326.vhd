library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IR_tb is
end IR_tb;

architecture Behavioral of IR_tb is
-- Component Declaration for the Unit Under Test (UUT)
 
 component IR 
  PORT(data_in : in  STD_LOGIC_VECTOR (31 downto 0);
       IL : in  STD_LOGIC;
	   Clk : in STD_LOGIC;
       Opcode : out  STD_LOGIC_VECTOR (16 downto 0);
       DR : out  STD_LOGIC_VECTOR (4 downto 0);
       SA : out  STD_LOGIC_VECTOR (4 downto 0);
       SB : out  STD_LOGIC_VECTOR (4 downto 0)
      );
 end component;
 
   --Inputs
   signal data_in : std_logic_vector(31 downto 0) := (others => '0');
   signal IL : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Opcode : std_logic_vector(16 downto 0);
   signal DR : std_logic_vector(4 downto 0);
   signal SA : std_logic_vector(4 downto 0);
   signal SB : std_logic_vector(4 downto 0);
	
   -- Clock period definitions
   constant Clk_period : time := 10 ns;
   
   
begin
   uut: IR PORT MAP (
          data_in => data_in,
          IL => IL,
			 Clk => Clk,
          Opcode => Opcode,
          DR => DR,
          SA => SA,
          SB => SB
        );
        
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
   
   -- Stimulus process
   stim_proc0: process
   begin
   --load in test data
   data_in <= "10101010101010101000001111100000";
   IL <= '1'; 
   
   wait for Clk_period*2;
   
    --load in test data
   data_in <= "00000000000000000111110000011111";
   IL <= '1'; 
   
   wait for Clk_period*2;
   
   --load in test data
   data_in <= "11111001100110011000101010101011";
   
   IL <= '0'; 
   
   wait for Clk_period*2;
   wait;
   end process;
  
  
end Behavioral;