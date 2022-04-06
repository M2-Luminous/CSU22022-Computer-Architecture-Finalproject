library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decoder_5to32 is
  Port(A : in std_logic_vector (4 downto 0);
      Q0:out std_logic;
      Q1:out std_logic;
      Q2:out std_logic;
      Q3:out std_logic;
      Q4:out std_logic;
      Q5:out std_logic;
      Q6:out std_logic;
      Q7:out std_logic;
      Q8:out std_logic;
      Q9:out std_logic;
      Q10:out std_logic;
      Q11:out std_logic;
      Q12:out std_logic;
      Q13:out std_logic;
      Q14:out std_logic;
      Q15:out std_logic;
      Q16:out std_logic;
      Q17:out std_logic;
      Q18:out std_logic;
      Q19:out std_logic;
      Q20:out std_logic;
      Q21:out std_logic;
      Q22:out std_logic;
      Q23:out std_logic;
      Q24:out std_logic;
      Q25:out std_logic;
      Q26:out std_logic;
      Q27:out std_logic;
      Q28:out std_logic;
      Q29:out std_logic;
      Q30:out std_logic;
      Q31:out std_logic);
end decoder_5to32;

architecture Behavioral of decoder_5to32 is

begin
Q0<=((not A(0)) and (not A(1)) and (not A(2)) and (not A(3)) and (not A(4)))after 5 ns;
Q1<=(A(0) and (not A(1)) and (not A(2)) and (not A(3)) and (not A(4)))after 5 ns;
Q2<=((not A(0)) and A(1) and (not A(2)) and (not A(3)) and (not A(4)))after 5 ns;
Q3<=(A(0) and A(1) and (not A(2)) and (not A(3)) and (not A(4)))after 5 ns;
Q4<=((not A(0)) and (not A(1)) and A(2) and (not A(3)) and (not A(4)))after 5 ns;
Q5<=(A(0) and (not A(1)) and A(2) and (not A(3)) and (not A(4)))after 5 ns;
Q6<=((not A(0)) and A(1) and A(2) and (not A(3)) and (not A(4)))after 5 ns;
Q7<=(A(0) and A(1) and A(2) and (not A(3)) and (not A(4)))after 5 ns;
Q8<=((not A(0)) and (not A(1)) and (not A(2)) and A(3) and (not A(4)))after 5 ns;
Q9<=(A(0) and (not A(1)) and (not A(2)) and A(3) and (not A(4)))after 5 ns;
Q10<=((not A(0)) and A(1) and (not A(2)) and A(3) and (not A(4)))after 5 ns;
Q11<=(A(0) and A(1) and (not A(2)) and A(3) and (not A(4)))after 5 ns;
Q12<=((not A(0)) and (not A(1)) and A(2) and A(3) and (not A(4)))after 5 ns;
Q13<=(A(0) and (not A(1)) and A(2) and A(3) and (not A(4)))after 5 ns;
Q14<=((not A(0)) and A(1) and A(2) and A(3) and (not A(4)))after 5 ns;
Q15<=(A(0) and A(1) and A(2) and A(3) and (not A(4)))after 5 ns;
Q16<=((not A(0)) and (not A(1)) and (not A(2)) and (not A(3)) and A(4))after 5 ns;
Q17<=(A(0) and (not A(1)) and (not A(2)) and (not A(3)) and A(4))after 5 ns;
Q18<=((not A(0)) and A(1) and (not A(2)) and (not A(3)) and A(4))after 5 ns;
Q19<=(A(0) and A(1) and (not A(2)) and (not A(3)) and A(4))after 5 ns;
Q20<=((not A(0)) and (not A(1)) and A(2) and (not A(3)) and A(4))after 5 ns;
Q21<=(A(0) and (not A(1)) and A(2) and (not A(3)) and A(4))after 5 ns;
Q22<=((not A(0)) and A(1) and A(2) and (not A(3)) and A(4))after 5 ns;
Q23<=(A(0) and A(1) and A(2) and (not A(3)) and A(4))after 5 ns;
Q24<=((not A(0)) and (not A(1)) and (not A(2)) and A(3) and A(4))after 5 ns;
Q25<=(A(0) and (not A(1)) and (not A(2)) and A(3) and A(4))after 5 ns;
Q26<=((not A(0)) and A(1) and (not A(2)) and A(3) and A(4))after 5 ns;
Q27<=(A(0) and A(1) and (not A(2)) and A(3) and A(4))after 5 ns;
Q28<=((not A(0)) and (not A(1)) and A(2) and A(3) and A(4))after 5 ns;
Q29<=(A(0) and (not A(1)) and A(2) and A(3) and A(4))after 5 ns;
Q30<=((not A(0)) and A(1) and A(2) and A(3) and A(4))after 5 ns;
Q31<=(A(0) and A(1) and A(2) and A(3) and A(4))after 5 ns;

end Behavioral;