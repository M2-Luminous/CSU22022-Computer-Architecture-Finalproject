library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_circuit32 is
port (
       x, y : in std_logic_vector(31 downto 0);
       S : in std_logic_vector(1 downto 0);
       A : out std_logic_vector(31 downto 0));
end logic_circuit32;

architecture Behavioral of logic_circuit32 is
COMPONENT logical_circuit
port(
      A : in std_logic;
	  B : in std_logic;
	  operation : in std_logic_vector(1 downto 0);
	  S : out std_logic);
end COMPONENT;

begin
       circuit0: logical_circuit PORT MAP(
            A => x(0),
            B => y(0),
            operation => S,
            S => A(0));
            
       circuit1: logical_circuit PORT MAP(
            A => x(1),
            B => y(1),
            operation => S,
            S => A(1));
            
       circuit2: logical_circuit PORT MAP(
            A => x(2),
            B => y(2),
            operation => S,
            S => A(2));
            
       circuit3: logical_circuit PORT MAP(
            A => x(3),
            B => y(3),
            operation => S,
            S => A(3));
            
       circuit4: logical_circuit PORT MAP(
            A => x(4),
            B => y(4),
            operation => S,
            S => A(4));
            
       circuit5: logical_circuit PORT MAP(
            A => x(5),
            B => y(5),
            operation => S,
            S => A(5));
            
       circuit6: logical_circuit PORT MAP(
            A => x(6),
            B => y(6),
            operation => S,
            S => A(6));
            
       circuit7: logical_circuit PORT MAP(
            A => x(7),
            B => y(7),
            operation => S,
            S => A(7));
            
       circuit8: logical_circuit PORT MAP(
            A => x(8),
            B => y(8),
            operation => S,
            S => A(8));
            
       circuit9: logical_circuit PORT MAP(
            A => x(9),
            B => y(9),
            operation => S,
            S => A(9));

       circuit10: logical_circuit PORT MAP(
            A => x(10),
            B => y(10),
            operation => S,
            S => A(10));
            
       circuit11: logical_circuit PORT MAP(
            A => x(11),
            B => y(11),
            operation => S,
            S => A(11));
            
       circuit12: logical_circuit PORT MAP(
            A => x(12),
            B => y(12),
            operation => S,
            S => A(12));
            
       circuit13: logical_circuit PORT MAP(
            A => x(13),
            B => y(13),
            operation => S,
            S => A(13));
            
       circuit14: logical_circuit PORT MAP(
            A => x(14),
            B => y(14),
            operation => S,
            S => A(14));
            
       circuit15: logical_circuit PORT MAP(
            A => x(15),
            B => y(15),
            operation => S,
            S => A(15));
            
       circuit16: logical_circuit PORT MAP(
            A => x(16),
            B => y(16),
            operation => S,
            S => A(16));
            
       circuit17: logical_circuit PORT MAP(
            A => x(17),
            B => y(17),
            operation => S,
            S => A(17));
            
       circuit18: logical_circuit PORT MAP(
            A => x(18),
            B => y(18),
            operation => S,
            S => A(18));
            
       circuit19: logical_circuit PORT MAP(
            A => x(19),
            B => y(19),
            operation => S,
            S => A(19));
            
       circuit20: logical_circuit PORT MAP(
            A => x(20),
            B => y(20),
            operation => S,
            S => A(20));
            
       circuit21: logical_circuit PORT MAP(
            A => x(21),
            B => y(21),
            operation => S,
            S => A(21));
            
       circuit22: logical_circuit PORT MAP(
            A => x(22),
            B => y(22),
            operation => S,
            S => A(22));
            
       circuit23: logical_circuit PORT MAP(
            A => x(23),
            B => y(23),
            operation => S,
            S => A(23));
            
       circuit24: logical_circuit PORT MAP(
            A => x(24),
            B => y(24),
            operation => S,
            S => A(24));
            
       circuit25: logical_circuit PORT MAP(
            A => x(25),
            B => y(25),
            operation => S,
            S => A(25));
            
       circuit26: logical_circuit PORT MAP(
            A => x(26),
            B => y(26),
            operation => S,
            S => A(26));
            
       circuit27: logical_circuit PORT MAP(
            A => x(27),
            B => y(27),
            operation => S,
            S => A(27));
            
       circuit28: logical_circuit PORT MAP(
            A => x(28),
            B => y(28),
            operation => S,
            S => A(28));
            
       circuit29: logical_circuit PORT MAP(
            A => x(29),
            B => y(29),
            operation => S,
            S => A(29));
           
       circuit30: logical_circuit PORT MAP(
            A => x(30),
            B => y(30),
            operation => S,
            S => A(30));
            
       circuit31: logical_circuit PORT MAP(
            A => x(31),
            B => y(31),
            operation => S,
            S => A(31));
            
end Behavioral;
