
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY Datapath_tb IS
END Datapath_tb;


ARCHITECTURE behavior OF Datapath_tb IS 

    COMPONENT Datapath
	
    port( 
         A_address : in std_logic_vector(4 downto 0);
		 B_address : in std_logic_vector(4 downto 0);
		 D_address : in std_logic_vector(4 downto 0);
		 FS : in std_logic_vector(4 downto 0);
		 Constant_in : in std_logic_vector(31 downto 0);
		 Data_in : in std_logic_vector(31 downto 0);
		 
		 load : in std_logic;
		 MB_select : in std_logic;
		 MD_select : in std_logic;
		 CLK : in std_logic;
		 
		 Address_out : out std_logic_vector(31 downto 0);
		 Data_out : out std_logic_vector(31 downto 0);
		 C : out std_logic;
		 V : out std_logic;
		 N : out std_logic;
		 Z : out std_logic
		);
		
    END COMPONENT;
	
	
	signal A_address : std_logic_vector(4 downto 0) := (others => '0');
	signal B_address : std_logic_vector(4 downto 0) := (others => '0');
	signal D_address : std_logic_vector(4 downto 0) := (others => '0');
	signal FS : std_logic_vector(4 downto 0) := (others => '0');
	signal Constant_in : std_logic_vector(31 downto 0) := (others => '0');
	signal Data_in : std_logic_vector(31 downto 0) := (others => '0');
	signal load : std_logic;
	signal MB_select : std_logic;
	signal MD_select : std_logic;
	signal CLK : std_logic;
	
	signal Address_out : std_logic_vector(31 downto 0) := (others => '0');
	signal Data_out : std_logic_vector(31 downto 0) := (others => '0');
	signal C : std_logic;
	signal V : std_logic;
	signal N : std_logic;
	signal Z : std_logic;
	
	
	constant Clk_period : time := 10 ns;
	
	
	BEGIN
	
    uut: Datapath PORT MAP (
          A_address => A_address,
          B_address => B_address,
          D_address => D_address,
          FS => FS,
          Constant_in => Constant_in,
          Data_in => Data_in,
          load => load,
          MB_select => MB_select,
		  MD_select => MD_select,
		  CLK => CLK,
		  Address_out => Address_out,
		  Data_out => Data_out,
		  C => C,
		  V => V,
		  N => N,
		  Z => Z
          ); 
		  
	

	
	
	stim_proc: process
   
    begin		
		
		load <= '1';
		MD_select <= '1';
		MB_select <= '0';
		Constant_in <= "00100000001100010011001100100110";
		
		D_address <= "00000";
		Data_in <= "00100000001100010011001100100110";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "00001";
		Data_in <= "00100000001100010011001100100101";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "00010";
		Data_in <= "00100000001100010011001100100100";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "00011";
		Data_in <= "00100000001100010011001100100011";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "00100";
		Data_in <= "00100000001100010011001100100010";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "00101";
		Data_in <= "00100000001100010011001100100001";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "00110";
		Data_in <= "00100000001100010011001100100000";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "00111";
		Data_in <= "00100000001100010011001100011111";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "01000";
		Data_in <= "00100000001100010011001100011110";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "01001";
		Data_in <= "00100000001100010011001100011101";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "01010";
		Data_in <= "00100000001100010011001100011100";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "01011";
		Data_in <= "00100000001100010011001100011011";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "01100";
		Data_in <= "00100000001100010011001100011010";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "01101";
		Data_in <= "00100000001100010011001100011001";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "01110";
		Data_in <= "00100000001100010011001100011000";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "01111";
		Data_in <= "00100000001100010011001100010111";
	
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "10000";
		Data_in <= "00100000001100010011001100010110";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "10001";
		Data_in <= "00100000001100010011001100010101";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "10010";
		Data_in <= "00100000001100010011001100010100";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "10011";
		Data_in <= "00100000001100010011001100010011";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "10100";
		Data_in <= "00100000001100010011001100010010";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "10101";
		Data_in <= "00100000001100010011001100010001";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "10110";
		Data_in <= "00100000001100010011001100010000";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "10111";
		Data_in <= "00100000001100010011001100001111";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "11000";
		Data_in <= "00100000001100010011001100001110";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "11001";
		Data_in <= "00100000001100010011001100001101";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "11010";
		Data_in <= "00100000001100010011001100001100";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "11011";
		Data_in <= "00100000001100010011001100001011";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "11100";
		Data_in <= "00100000001100010011001100001010";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "11101";
		Data_in <= "00100000001100010011001100001001";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "11110";
		Data_in <= "00100000001100010011001100001000";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		D_address <= "11111";
		Data_in <= "00100000001100010011001100000111";
		
		wait for 5 ns;
		CLK <= '1';
		A_address <= "01001";
		B_address <= "10011";
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
        FS <= "00101";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "01110";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "00100";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "00111";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "00011";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "10100";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "00010";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "11000";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "00000";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "10000";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "00001";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "01100";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "01010";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "00110";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		MD_select <= '0';
		D_address <= "00100";
		FS <= "01000";
		
		wait for 5 ns;
		CLK <= '1';
		MB_select <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		FS <= "00101";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		FS <= "00100";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		FS <= "00011";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		FS <= "10100";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		FS <= "00010";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		FS <= "11000";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		FS <= "10000";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		FS <= "01100";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		FS <= "01010";
		
		wait for 5 ns;
		CLK <= '1';
		
		wait for 5 ns;
		CLK <= '0';
		FS <= "01000";
		
		wait for 5 ns;
		CLK <= '1';
		

   end process;

END;
	