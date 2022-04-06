library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_memory_tb is
end control_memory_tb;

architecture Behavioral of control_memory_tb is

component control_memory
Port (FL : out std_logic; -- 0
    RZ : out std_logic; -- 1
    RN : out std_logic; -- 2
    RC : out std_logic; -- 3
    RV : out std_logic; -- 4
    MW : out std_logic; -- 5
    MM : out std_logic; -- 6
    RW : out std_logic; -- 7
    MD : out std_logic; -- 8
    FS : out std_logic_vector(4 downto 0); -- 9 to 13
    MB : out std_logic; -- 14
    TB : out std_logic; -- 15
    TA : out std_logic; -- 16
    TD : out std_logic; -- 17
    PL : out std_logic; -- 18
    PI : out std_logic; -- 19
    IL : out std_logic; -- 20
    MC : out std_logic; -- 21
    MS : out std_logic_vector(2 downto 0); -- 22 to 24
    NA : out std_logic_vector(16 downto 0); -- 25 to 41
    IN_CAR : in std_logic_vector(16 downto 0));
end component;

  signal FL: std_logic;
  signal RZ: std_logic;
  signal RN: std_logic;
  signal RC: std_logic;
  signal RV: std_logic;
  signal MW: std_logic;
  signal MM: std_logic;
  signal RW: std_logic;
  signal MD: std_logic;
  signal FS: std_logic_vector(4 downto 0);
  signal MB: std_logic;
  signal TB: std_logic;
  signal TA: std_logic;
  signal TD: std_logic;
  signal PL: std_logic;
  signal PI: std_logic;
  signal IL: std_logic;
  signal MC: std_logic;
  signal MS: std_logic_vector(2 downto 0);
  signal NA: std_logic_vector(16 downto 0);
  signal IN_CAR: std_logic_vector(16 downto 0);

 constant wait_delay: time := 10 ns;
begin
uut: control_memory port map (
    FL => FL,
    RZ => RZ,
    RN => RN,
    RC => RC,
    RV => RV, 
    MW => MW,
    MM => MM,
    RW => RW,
    MD => MD,
    FS => FS,
    MB => MB,
    TB => TB,
    TA => TA,
    TD => TD,
    PL => PL,
    PI => PI,
    IL => IL,
    MC => MC,
    MS => MS,
    NA => NA,
    IN_CAR => IN_CAR );

stimulus: process
  begin
   -- initialisation code
    IN_CAR <= "00000000000000000";

    -- test bench stimulus code
    IN_CAR <= "00000000000000000";
    wait for wait_delay;
    IN_CAR <= "00000000000000001";
    wait for wait_delay;
    IN_CAR <= "00000000000000010";
    wait for wait_delay;
    IN_CAR <= "00000000000000011";
    wait for wait_delay;
    IN_CAR <= "00000000000000100";
    wait for wait_delay;
    IN_CAR <= "00000000000000101";
    wait for wait_delay;
    IN_CAR <= "00000000000000110";
    wait for wait_delay;
    IN_CAR <= "00000000000000111";
    wait for wait_delay;
    IN_CAR <= "00000000000001000";
    wait for wait_delay;
    IN_CAR <= "00000000000001001";
    wait for wait_delay;
    IN_CAR <= "00000000011000000";
    wait for wait_delay;
    IN_CAR <= "00000000011000001";
    wait for wait_delay;

    wait;
  end process;
end Behavioral;