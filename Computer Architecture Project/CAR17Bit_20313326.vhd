library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CAR is
 Port ( clock : in std_logic;
        load : in std_logic;
        reset : in std_logic;
        input : in std_logic_vector (16 downto 0);
        addr_out : out std_logic_vector (16 downto 0));
end CAR;

architecture Behavioral of CAR is
component  Arithmetic_Logic_Unit is 
Port ( C_in : in std_logic;
        A : in std_logic_vector(31 downto 0); 
        B : in std_logic_vector(31 downto 0); 
        S0 : in std_logic;
        S1 : in std_logic;
        S2 : in std_logic;
        G : out std_logic_vector(31 downto 0); 
        C_out : out std_logic;
        V_out : out std_logic);
end component;

	signal alu_out : std_logic_vector (31 downto 0);
	signal alu_in : std_logic_vector (31 downto 0);
	signal curr_address : std_logic_vector (16 downto 0);
	signal sel: std_logic_vector (3 downto 0);
	signal C_Out: std_logic;
	signal V_Out: std_logic;
	
	constant delay: Time := 485 ns;

	begin
		ALU: Arithmetic_Logic_Unit port map (
		A => alu_in,
		B => "00000000000000000000000000000000",
		C_in => sel(0),
		S0 => sel(1),
		S1 => sel(2),
		S2 => sel(3),
		G => alu_out,
		C_out => C_out,
		V_Out => V_Out
);

	sel <= x"1"; -- this is so sel(0) is always 1, hence we always increment.
	addr_out <= curr_address;
	alu_in <= "000000000000000" & curr_address;


process(clock, reset)
  begin
   if(rising_edge(clock)) then
      if reset='1' then  --when resetting, the output should be all zeroes.
        curr_address <= "00000000000000000" after delay;
      else
        if load = '1' then
          curr_address <= input after delay; --when load = 1, output the input.
        else
          --Decided to not simply use the '+' operator, but rather use the ALU to increment.
          curr_address <= alu_out(16 downto 0) after delay; 
        end if;
      end if;
    end if;
end process;
end Behavioral;