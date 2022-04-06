library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC_tb is
end PC_tb;

architecture Behavioral of PC_tb is
component PC
    port (displacement : in std_logic_vector (31 downto 0);
          pc_load : in std_logic;
          pc_increment : in std_logic;
          clock : in std_logic;
          reset : in std_logic;
          addr_out : out std_logic_vector (31 downto 0));
  end component;
 
	signal displacement: std_logic_vector (31 downto 0);
	signal pc_load: std_logic;
	signal pc_increment: std_logic;
	signal clock: std_logic;
	signal reset: std_logic;
	signal addr_out: std_logic_vector (31 downto 0);
	constant delay: time := 485 ns;
	signal stop_the_clock: boolean;
begin
 uut: PC port map ( displacement => displacement,
                    pc_load  => pc_load,
                    pc_increment => pc_increment,
                    clock => clock,
                    reset => reset,
                    addr_out => addr_out);

  stimulus: process
  begin

  clock <= '0';
  wait for delay;
  
  --initialize inputs
  displacement <= "00000000000000000000000000000000";
  pc_load <= '0';
  pc_increment <= '0';
  reset <= '1';

  clock <= '1';
  wait for delay; 
  
  reset <= '0'; 
  
  clock <= '0';
  wait for delay;
   
  pc_load <= '0';
  pc_increment <= '1';
   
  clock <= '1';
  wait for delay;  
  
  clock <= '0';
  wait for delay;
  
  displacement <= x"000000ff";
  pc_load <= '1';
  pc_increment <= '0';
  
  clock <= '1';
  wait for delay;

  clock <= '0';
  wait for delay;
   
  pc_load <= '0';
  pc_increment <= '1'; 
   
  clock <= '1';
  wait for delay;

  clock <= '0';
  wait for delay;
   
  displacement <= x"0000ffff";
  pc_load <= '1';
  pc_increment <= '0';
  
  clock <= '1';
  wait for delay; 

  clock <= '0';
  wait for delay;
   
  pc_load <= '0';
  pc_increment <= '0';
  
  clock <= '1';
  wait for delay; 

  clock <= '0';
  wait for delay;
   
  reset <= '1';
  
  clock <= '1';
  wait for delay; 
  wait;
  end process;
end Behavioral;