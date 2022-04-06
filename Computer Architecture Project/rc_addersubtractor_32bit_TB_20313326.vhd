
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY the_Rca_sub_32Bits_tb IS

END the_Rca_sub_32Bits_tb;


ARCHITECTURE behavior OF the_Rca_sub_32Bits_tb IS

COMPONENT the_Rca_sub_32Bits

   port(
		 X,Y  : in  std_logic_vector(31 downto 0);		 
	     result  : out std_logic_vector(31 downto 0);
		 operation : in std_logic_vector(4 downto 0);
	     Cout : out std_logic;
		 Vout : out std_logic
		);

END COMPONENT;


signal X : std_logic_vector(31 downto 0);
signal Y : std_logic_vector(31 downto 0);
signal result : std_logic_vector(31 downto 0);
signal operation : std_logic_vector(4 downto 0);
signal Cout : std_logic;
signal Vout : std_logic;



begin
 
 -- Instantiate the Unit Under Test (UUT)
 
        uut: the_Rca_sub_32Bits PORT MAP 
		(
		  X => X,
		  Y => Y,
		  operation => operation,
		  Cout => Cout,
		  Vout => Vout,
		  result => result
		);
		
		
 stim_proc: process
		
    begin
	
	X <= "00000000000000000000000000000000";
	Y <= "00100000001100010011001100100110";
	

	operation <= "00000";
	
    wait for 10 ns; 
	operation <= "00001";
	  
	wait for 10 ns; 
	operation <= "00010";

    wait for 10 ns; 
	operation <= "00011";

  
    wait for 10 ns; 
	operation <= "00100";

	
	wait for 10 ns; 
	operation <= "00101";

	
	wait for 10 ns; 
	operation <= "00110";

	
	wait for 10 ns; 
	operation <= "00111";
	
	wait;

	
    end process;

end behavior;
       