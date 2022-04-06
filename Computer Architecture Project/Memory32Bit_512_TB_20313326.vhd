library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory_tb is
end memory_tb;

architecture Behavioral of memory_tb is

component memory 
Port ( address : in std_logic_vector(31 downto 0);
       write_data : in std_logic_vector(31 downto 0);
       clock : in std_logic;
       MemWrite : in std_logic;
       MemRead : in std_logic;
       read_data : out std_logic_vector(31 downto 0));
end component;

  signal address: std_logic_vector(31 downto 0);
  signal write_data: std_logic_vector(31 downto 0);
  signal MemWrite: std_logic;
  signal MemRead : std_logic;
  signal clock: std_logic;
  signal read_data: std_logic_vector(31 downto 0);

  constant clock_period: time := 10 ns;
  signal clock_finish: boolean;
  
begin
 uut: memory port map (address => address,
                       write_data => write_data,
                       MemWrite => MemWrite,
                       MemRead => MemRead,
                       clock => clock,
                       read_data => read_data );

  stimulus: process
  begin
    -- initialisation code
    address <= x"00000000";
    MemRead <= '1';
    write_data <= x"00000000";
    MemWrite <= '0';

    -- test - read memory (MemRead = 1, MemWrite = 0)
    address <= x"00000000";
    wait for clock_period;
    address <= x"00000001";
    wait for clock_period;
    address <= x"00000002";
    wait for clock_period;
    address <= x"00000003";
    wait for clock_period;
    
    -- test - write memory (MemWrite = 1, MemRead = 0, )
    MemWrite <= '1';
    MemRead <= '0';
    address <= x"00000000";
    write_data <= x"00000000";
    wait for clock_period;
    address <= x"00000001";
    write_data <= x"00000001";
    wait for clock_period;
    address <= x"00000002";
    write_data <= x"00000002";
    wait for clock_period;
    address <= x"00000003";
    write_data <= x"00000003";
    wait for clock_period;
    address <= x"00000005";
    write_data <= x"00000005";
    wait for clock_period;

    
    --test - see if the memory has actually been written by reading it.
    MemWrite <= '0';
    MemRead <= '1';
    address <= x"00000000"; 
    wait for clock_period;
    address <= x"00000001"; 
    wait for clock_period;
    address <= x"00000002"; 
    wait for clock_period;
    address <= x"00000003"; 
    wait for clock_period;
    address <= x"00000005"; 
    wait for clock_period;
    
    clock_finish <= true;

    wait;
  end process;

  clocking: process
  begin
    while not clock_finish loop
      clock <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end Behavioral;