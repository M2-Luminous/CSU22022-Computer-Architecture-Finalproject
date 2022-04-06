library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VCNZ is
  Port ( Vin : in std_logic;
         Cin : in std_logic;
         Nin : in std_logic;
         Zin : in std_logic;
         clock : in std_logic;
         Reset : in std_logic_vector(3 downto 0); --reset = RV + RC + RN + RZ
         FL : in std_logic;
         Vout : out std_logic;
         Cout : out std_logic;
         Nout : out std_logic;
         Zout : out std_logic); 
end VCNZ;

architecture Behavioral of VCNZ is
signal RV : std_logic;
signal RC : std_logic;
signal RN : std_logic;
signal RZ : std_logic;


constant delay: Time := 5 ns;
begin
process(clock, Reset)
  begin
   RV <= Reset(3);
   RC <= Reset(2);
   RN <= Reset(1);
   RZ <= Reset(0);
   if(rising_edge(clock)) then 
   if FL='1' then
      if RV='1' then
      Vout <= '0' after delay;
      elsif RV='0' then 
      Vout <= Vin after delay;
      end if;
      
      if RC='1' then
      Cout <= '0' after delay;
      elsif RC='0' then 
      Cout <= Cin after delay;
      end if;
      
      if RN='1' then
      Nout <= '0' after delay;
      elsif RN='0' then 
      NOut <= Nin after delay;
      end if;
      
      if RZ='1' then
      Zout <= '0' after delay;
      elsif RZ='0' then 
      Zout <= Zin after delay;
      end if;
      
    elsif FL='0' then
    --do nothing, flag load=0 means nothing should go into the flags.
   end if;  
  end if;
end process;


end Behavioral;