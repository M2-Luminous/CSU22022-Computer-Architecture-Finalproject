

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register_file_tb is
end register_file_tb;

architecture Behavioral of register_file_tb is
    COMPONENT register_file
    PORT(
        src_s : in std_logic_vector(4 downto 0);
        des_A : in std_logic_vector(4 downto 0);
        Clk : in std_logic;
        data_src : in std_logic;
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
        reg31 : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk, data_src : std_logic := '0';
   signal src_s, des_A : std_logic_vector(4 downto 0):= (others => '0');
   signal data : std_logic_vector(31 downto 0):= (others => '0');
    
   --Outputs
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
       uut: register_file PORT MAP (
            src_s => src_s,
            des_A => des_A,
            Clk => Clk,
            data_src => data_src,
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
            reg31 => reg31
            );
            
       Clk <= not Clk after Clk_period/2;
       
       stim_proc: process
       begin
       
          --load student ID into registers
          data_src <= '0';
          
          wait until Clk'event and Clk = '1';	
            des_A <= "00001";
            data <= "00100000001100010011001100100100";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00010";
            data <= "00100000001100010011001100100011";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00011";
            data <= "00100000001100010011001100100010";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00100";
            data <= "00100000001100010011001100100001";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00101";
            data <= "00100000001100010011001100100000";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00110";
            data <= "00100000001100010011001100011111";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "00111";
            data <= "00100000001100010011001100011110";
            
          wait until Clk'event and Clk = '1';
            des_A <= "01000";
            data <= "00100000001100010011001100011101";
    
          wait until Clk'event and Clk = '1';	
            des_A <= "01001";
            data <= "00100000001100010011001100011100";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01010";
            data <= "10011010111111001110111011111011";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01011";
            data <= "00100000001100010011001100111010";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01100";
            data <= "00100000001100010011001100111001";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01101";
            data <= "00100000001100010011001100111000";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01110";
            data <= "00100000001100010011001100110111";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "01111";
            data <= "00100000001100010011001100110110";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10000";
            data <= "00100000001100010011001100110101";
    
          wait until Clk'event and Clk = '1';	
            des_A <= "10001";
            data <= "00100000001100010011001100110100";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10010";
            data <= "00100000001100010011001100110011";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10011";
            data <= "00100000001100010011001100110010";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10100";
            data <= "00100000001100010011001100110001";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10101";
            data <= "00100000001100010011001100110000";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10110";
            data <= "00100000001100010011001100101111";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "10111";
            data <= "00100000001100010011001100101110";
            
          wait until Clk'event and Clk = '1';
            des_A <= "11000";
            data <= "00100000001100010011001100101101";
    
          wait until Clk'event and Clk = '1';	
            des_A <= "11001";
            data <= "00100000001100010011001100101100";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11010";
            data <= "00100000001100010011001100101011";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11011";
            data <= "00100000001100010011001100101010";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11100";
            data <= "00100000001100010011001100101001";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11101";
            data <= "00100000001100010011001100101000";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11110";
            data <= "00100000001100010011001100100111";
            
          wait until Clk'event and Clk = '1';	
            des_A <= "11111";
            data <= "00100000001100010011001100100110";
            
          --Transfer the contents from register to register
          data_src <= '1';
            
          wait until Clk'event and Clk = '1';
            src_s <= "00001";
            des_A <= "00000";
            
          wait until Clk'event and Clk = '1';
            src_s <= "00010";
            des_A <= "00001";
            
          wait until Clk'event and Clk = '1';
            src_s <= "00011";
            des_A <= "00010";
            
          wait until Clk'event and Clk = '1';
            src_s <= "00100";
            des_A <= "00011";
            
          wait until Clk'event and Clk = '1';
            src_s <= "00101";
            des_A <= "00100";
            
          wait until Clk'event and Clk = '1';
            src_s <= "00110";
            des_A <= "00101";
            
          wait until Clk'event and Clk = '1';
            src_s <= "00111";
            des_A <= "00110";
            
          wait until Clk'event and Clk = '1';
            src_s <= "01000";
            des_A <= "00111";
            
          wait until Clk'event and Clk = '1';
            src_s <= "01001";
            des_A <= "01000";
            
          wait until Clk'event and Clk = '1';
            src_s <= "01010";
            des_A <= "01001";
            
          wait;
       end process;

end Behavioral;
