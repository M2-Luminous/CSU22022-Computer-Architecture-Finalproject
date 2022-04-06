library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity twotooneMUX is
  port(
      s:in std_logic;
      In0:in std_logic_vector(31 downto 0);
      In1:in std_logic_vector(31 downto 0);
      Z:out std_logic_vector(31 downto 0));
end twotooneMUX;

architecture Behavioral of twotooneMUX is

begin

Z <= In0 after 2 ns when s = '0' else 
     In1 after 2 ns when s = '1' else 
     "00000000000000000000000000000000" after 5 ns;
end Behavioral;
