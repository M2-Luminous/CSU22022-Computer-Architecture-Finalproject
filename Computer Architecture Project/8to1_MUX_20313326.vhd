library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_8to1 is
  port(s : in std_logic_vector(2 downto 0);
       in1 : in std_logic;
       in2 : in std_logic;
       in3 : in std_logic;
       in4 : in std_logic;
       in5 : in std_logic;
       in6 : in std_logic;
       in7 : in std_logic;
       in8 : in std_logic;
       z : out std_logic);
end Multiplexer_8to1;

architecture Behavioral of Multiplexer_8to1 is
begin
process (s, in1, in2, in3, in4, in5, in6, in7, in8)
  begin
    case s is
      when "000" => z <= in1 after 5 ns;
      when "001" => z <= in2 after 5 ns;
      when "010" => z <= in3 after 5 ns;
      when "011" => z <= in4 after 5 ns;
      when "100" => z <= in5 after 5 ns;
      when "101" => z <= in6 after 5 ns;
      when "110" => z <= in7 after 5 ns;
      when "111" => z <= in8 after 5 ns;
      when others => z <= in1 after 5 ns;
    end case;
  end process;
end Behavioral;