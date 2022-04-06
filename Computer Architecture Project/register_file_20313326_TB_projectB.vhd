
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY register_file_tb IS
END register_file_tb;

ARCHITECTURE behavior OF register_file_tb IS

COMPONENT register_file

  Port(
       A_in : in std_logic_vector(4 downto 0);
	   B_in : in std_logic_vector(4 downto 0);

	   in_A0 : in std_logic;
	   in_A1 : in std_logic;
	   in_A2 : in std_logic;
	   in_A3 : in std_logic;
	   in_A4 : in std_logic;
	   
	   CLK : in std_logic;
	   load_enable : in std_logic;
	   data : in std_logic_vector(31 downto 0);
	   
	   reg0 : out std_logic_vector(31 downto 0);
	   reg1 : out std_logic_vector(31 downto 0);
	   reg2 : out std_logic_vector(31 downto 0);
	   reg3 : out std_logic_vector(31 downto 0);
	   reg4 : out std_logic_vector(31 downto 0);
	   reg5 : out std_logic_vector(31 downto 0);
	   reg6 : out std_logic_vector(31 downto 0);
	   reg7 : out std_logic_vector(31 downto 0);
	   reg8 : out std_logic_vector(31 downto 0);
	   reg9 : out std_logic_vector(31 downto 0);
	   reg10 : out std_logic_vector(31 downto 0);
	   reg11 : out std_logic_vector(31 downto 0);
	   reg12 : out std_logic_vector(31 downto 0);
	   reg13 : out std_logic_vector(31 downto 0);
	   reg14 : out std_logic_vector(31 downto 0);
	   reg15 : out std_logic_vector(31 downto 0);
	   reg16 : out std_logic_vector(31 downto 0);
	   reg17 : out std_logic_vector(31 downto 0);
	   reg18 : out std_logic_vector(31 downto 0);
	   reg19 : out std_logic_vector(31 downto 0);
	   reg20 : out std_logic_vector(31 downto 0);
	   reg21 : out std_logic_vector(31 downto 0);
	   reg22 : out std_logic_vector(31 downto 0);
	   reg23 : out std_logic_vector(31 downto 0);
	   reg24 : out std_logic_vector(31 downto 0);
	   reg25 : out std_logic_vector(31 downto 0);
	   reg26 : out std_logic_vector(31 downto 0);
	   reg27 : out std_logic_vector(31 downto 0);
	   reg28 : out std_logic_vector(31 downto 0);
	   reg29 : out std_logic_vector(31 downto 0);
	   reg30 : out std_logic_vector(31 downto 0);
	   reg31 : out std_logic_vector(31 downto 0);
	   
	   output1 : out std_logic_vector(31 downto 0);
	   output2 : out std_logic_vector(31 downto 0)
	   );
	   
    END COMPONENT;
	


--Inputs
	   signal A_in : STD_LOGIC_VECTOR (4 downto 0):= (others => '0');
	   signal B_in : STD_LOGIC_VECTOR (4 downto 0):= (others => '0');
	   
	   signal in_A0 : std_logic := '0';
	   signal in_A1 : std_logic := '0';
	   signal in_A2 : std_logic := '0';
	   signal in_A3 : std_logic := '0';
	   signal in_A4 : std_logic := '0';
	   
	   signal CLK : std_logic := '0';
	   signal load_enable : std_logic := '0';
	   signal data : std_logic_vector(31 downto 0):= (others => '0');
	   
	   
	   
--Outputs
       signal output1 : std_logic_vector(31 downto 0):= (others => '0');
	   signal output2 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg0 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg1 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg2 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg3 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg4 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg5 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg6 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg7 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg8 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg9 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg10 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg11 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg12 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg13 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg14 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg15 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg16 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg17 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg18 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg19 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg20 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg21 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg22 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg23 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg24 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg25 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg26 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg27 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg28 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg29 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg30 : std_logic_vector(31 downto 0):= (others => '0');
	   signal reg31 : std_logic_vector(31 downto 0):= (others => '0');
	   
	   
	   constant Clk_period : time := 10 ns;

begin
 
 -- Instantiate the Unit Under Test (UUT)
 
        uut: register_file PORT MAP (
		  A_in => A_in,
		  B_in => B_in,
		  in_A0 => in_A0,
		  in_A1 => in_A1,
		  in_A2 => in_A2,
		  in_A3 => in_A3,
		  in_A4 => in_A4,
		  
		  CLK => CLK,
		  load_enable => load_enable,
		  data => data,
		  
		  reg0 => reg0,
		  reg1 => reg1,
		  reg2 => reg2,
		  reg3 => reg3,
		  reg4 => reg4,
		  reg5 => reg5,
		  reg6 => reg6,
		  reg7 => reg7,
		  reg8 => reg8,
		  reg9 => reg9,
		  reg10 => reg10,
		  reg11 => reg11,
		  reg12 => reg12,
		  reg13 => reg13,
		  reg14 => reg14,
		  reg15 => reg15,
		  reg16 => reg16,
		  reg17 => reg17,
		  reg18 => reg18,
		  reg19 => reg19,
		  reg20 => reg20,
		  reg21 => reg21,
		  reg22 => reg22,
		  reg23 => reg23,
		  reg24 => reg24,
		  reg25 => reg25,
		  reg26 => reg26,
		  reg27 => reg27,
		  reg28 => reg28,
		  reg29 => reg29,
		  reg30 => reg30,
		  reg31 => reg31,
		  
		  output1 => output1,
		  output2 => output2
        );
		
		CLK <= not CLK after Clk_period/2;
		
        stim_proc: process
		
        begin
        --load student ID into registers
          load_enable <= '1';
          
          wait until CLK'event and CLK = '1';	
		    A_in <= "00000";
			B_in <= "00000";
		  
			in_A0 <= '0';
			in_A1 <= '0';
			in_A2 <= '0';
			in_A3 <= '0';
			in_A4 <= '0';
            data <= "00100000001100010011001100100110";
    
            
          wait until CLK'event and CLK = '1';	
		    A_in <= "00001";
			B_in <= "00001";
			
			in_A0 <= '0';
			in_A1 <= '0';
			in_A2 <= '0';
			in_A3 <= '0';
			in_A4 <= '1';
            data <= "00100000001100010011001100100101";
            
          wait until CLK'event and CLK = '1';
            A_in <= "00010";
			B_in <= "00010";
			
			in_A0 <= '0';
			in_A1 <= '0';
			in_A2 <= '0';
			in_A3 <= '1';
			in_A4 <= '0';
            data <= "00100000001100010011001100100100";
            
          wait until CLK'event and CLK = '1';
            A_in <= "00011";
			B_in <= "00011";
			
			in_A0 <= '0';
			in_A1 <= '0';
			in_A2 <= '0';
			in_A3 <= '1';
			in_A4 <= '1';
            data <= "00100000001100010011001100100011";
            
          wait until CLK'event and CLK = '1';
            A_in <= "00100";
			B_in <= "00100";
			
			in_A0 <= '0';
			in_A1 <= '0';
			in_A2 <= '1';
			in_A3 <= '0';
			in_A4 <= '0';
            data <= "00100000001100010011001100100010";
            
          wait until CLK'event and CLK = '1';
            A_in <= "00101";
			B_in <= "00101";
			
			in_A0 <= '0';
			in_A1 <= '0';
			in_A2 <= '1';
			in_A3 <= '0';
			in_A4 <= '1';
            data <= "00100000001100010011001100100001";
            
          wait until CLK'event and CLK = '1';
            A_in <= "00110";
			B_in <= "00110";
			
			in_A0 <= '0';
			in_A1 <= '0';
			in_A2 <= '1';
			in_A3 <= '1';
			in_A4 <= '0';
            data <= "00100000001100010011001100100000";
            
          wait until CLK'event and CLK = '1';
            A_in <= "00111";
			B_in <= "00111";
			
			in_A0 <= '0';
			in_A1 <= '0';
			in_A2 <= '1';
			in_A3 <= '1';
			in_A4 <= '1';
            data <= "00100000001100010011001100011111";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "01000";
			B_in <= "01000";
			
			in_A0 <= '0';
			in_A1 <= '1';
			in_A2 <= '0';
			in_A3 <= '0';
			in_A4 <= '0';
            data <= "00100000001100010011001100011110";
    
          wait until CLK'event and CLK = '1';
		    A_in <= "01001";
			B_in <= "01001";
			
			in_A0 <= '0';
			in_A1 <= '1';
			in_A2 <= '0';
			in_A3 <= '0';
			in_A4 <= '1';
            data <= "00100000001100010011001100011101";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "01010";
			B_in <= "01010";
			
			in_A0 <= '0';
			in_A1 <= '1';
			in_A2 <= '0';
			in_A3 <= '1';
			in_A4 <= '0';
            data <= "00100000001100010011001100011100";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "01011";
			B_in <= "01011";
			
			in_A0 <= '0';
			in_A1 <= '1';
			in_A2 <= '0';
			in_A3 <= '1';
			in_A4 <= '1';
            data <= "00100000001100010011001100011011";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "01100";
			B_in <= "01100";
			
			in_A0 <= '0';
			in_A1 <= '1';
			in_A2 <= '1';
			in_A3 <= '0';
			in_A4 <= '0';
            data <= "00100000001100010011001100011010";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "01101";
			B_in <= "01101";
			
			in_A0 <= '0';
			in_A1 <= '1';
			in_A2 <= '1';
			in_A3 <= '0';
			in_A4 <= '1';
            data <= "00100000001100010011001100011001";
            
          wait until CLK'event and CLK = '1';
		  	A_in <= "01110";
			B_in <= "01110";
			
			in_A0 <= '0';
			in_A1 <= '1';
			in_A2 <= '1';
			in_A3 <= '1';
			in_A4 <= '0';
            data <= "00100000001100010011001100011000";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "01111";
			B_in <= "01111";
			
			in_A0 <= '0';
			in_A1 <= '1';
			in_A2 <= '1';
			in_A3 <= '1';
			in_A4 <= '1';
            data <= "00100000001100010011001100010111";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "10000";
			B_in <= "10000";
			
			in_A0 <= '1';
			in_A1 <= '0';
			in_A2 <= '0';
			in_A3 <= '0';
			in_A4 <= '0';
            data <= "00100000001100010011001100010110";
    
          wait until CLK'event and CLK = '1';
		    A_in <= "10001";
			B_in <= "10001";
			
			in_A0 <= '1';
			in_A1 <= '0';
			in_A2 <= '0';
			in_A3 <= '0';
			in_A4 <= '1';
            data <= "00100000001100010011001100010101";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "10010";
			B_in <= "10010";
			
			in_A0 <= '1';
			in_A1 <= '0';
			in_A2 <= '0';
			in_A3 <= '1';
			in_A4 <= '0';
            data <= "00100000001100010011001100010100";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "10011";
			B_in <= "10011";
			
			in_A0 <= '1';
			in_A1 <= '0';
			in_A2 <= '0';
			in_A3 <= '1';
			in_A4 <= '1';
            data <= "00100000001100010011001100010011";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "10100";
			B_in <= "10100";
			
			in_A0 <= '1';
			in_A1 <= '0';
			in_A2 <= '1';
			in_A3 <= '0';
			in_A4 <= '0';
            data <= "00100000001100010011001100010010";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "10101";
			B_in <= "10101";
			
			in_A0 <= '1';
			in_A1 <= '0';
			in_A2 <= '1';
			in_A3 <= '0';
			in_A4 <= '1';
            data <= "00100000001100010011001100010001";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "10110";
			B_in <= "10110";
			
			in_A0 <= '1';
			in_A1 <= '0';
			in_A2 <= '1';
			in_A3 <= '1';
			in_A4 <= '0';
            data <= "00100000001100010011001100010000";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "10111";
			B_in <= "10111";
			
			in_A0 <= '1';
			in_A1 <= '0';
			in_A2 <= '1';
			in_A3 <= '1';
			in_A4 <= '1';
            data <= "00100000001100010011001100001111";
            
          wait until CLK'event and CLK = '1';
		  	A_in <= "11000";
			B_in <= "11000";
			
			in_A0 <= '1';
			in_A1 <= '1';
			in_A2 <= '0';
			in_A3 <= '0';
			in_A4 <= '0';
            data <= "00100000001100010011001100001110";
    
          wait until CLK'event and CLK = '1';
		    A_in <= "11001";
			B_in <= "11001";
			
			in_A0 <= '1';
			in_A1 <= '1';
			in_A2 <= '0';
			in_A3 <= '0';
			in_A4 <= '1';
            data <= "00100000001100010011001100001101";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "11010";
			B_in <= "11010";
			
			in_A0 <= '1';
			in_A1 <= '1';
			in_A2 <= '0';
			in_A3 <= '1';
			in_A4 <= '0';
            data <= "00100000001100010011001100001100";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "11011";
			B_in <= "11011";
			
			in_A0 <= '1';
			in_A1 <= '1';
			in_A2 <= '0';
			in_A3 <= '1';
			in_A4 <= '1';
            data <= "00100000001100010011001100001011";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "11100";
			B_in <= "11100";
			
			in_A0 <= '1';
			in_A1 <= '1';
			in_A2 <= '1';
			in_A3 <= '0';
			in_A4 <= '0';
            data <= "00100000001100010011001100001010";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "11101";
			B_in <= "11101";
			
			in_A0 <= '1';
			in_A1 <= '1';
			in_A2 <= '1';
			in_A3 <= '0';
			in_A4 <= '1';
            data <= "00100000001100010011001100001001";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "11110";
			B_in <= "11110";
			
			in_A0 <= '1';
			in_A1 <= '1';
			in_A2 <= '1';
			in_A3 <= '1';
			in_A4 <= '0';
            data <= "00100000001100010011001100001000";
            
          wait until CLK'event and CLK = '1';
		    A_in <= "11111";
			B_in <= "11111";
			
			in_A0 <= '1';
			in_A1 <= '1';
			in_A2 <= '1';
			in_A3 <= '1';
			in_A4 <= '1';
            data <= "00100000001100010011001100000111";

			wait;
       end process;
   
end behavior;
		
		
		
		
		
		
		
		
		