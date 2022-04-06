library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
port (displacement : in std_logic_vector (31 downto 0);
        pc_load : in std_logic;
        pc_increment : in std_logic;
        clock : in std_logic;
        reset : in std_logic;
        addr_out : out std_logic_vector (31 downto 0));
end PC;

architecture Behavioral of PC is
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

	signal curr_address: std_logic_vector(31 downto 0);
	signal alu_out: std_logic_vector(31 downto 0);
	signal sel: std_logic_vector(3 downto 0);
	signal C_out: std_logic;
	signal V_out: std_logic;
	constant output_delay: time := 485 ns;
	constant gate_delay: time := 1ns;
	
	
begin
	ALU : Arithmetic_Logic_Unit port map (  
	A => curr_address,
	B => displacement,
	C_in => sel(0),
	S0 => sel(1),
	S1 => sel(2),
	S2 => sel(3),
	G => alu_out,
	C_out => C_out,
	V_out => V_out);

addr_out <= curr_address;

process(clock, reset)
  begin
	if pc_load='1' and pc_increment='0' then
		sel <= x"2" after gate_delay; 
    elsif pc_load='0' and pc_increment='1' then
		sel <= x"1" after gate_delay; 
    elsif pc_load='0' and pc_increment='0' then
		sel <= x"0" after gate_delay; 
    end if;
    if(rising_edge(clock)) then
		if reset='1' then
			curr_address <= "00000000000000000000000000000000" after output_delay;
			sel <= x"0" after output_delay; 
		else
        curr_address <= alu_out after output_delay;
		end if;
    end if;
end process;
end Behavioral;