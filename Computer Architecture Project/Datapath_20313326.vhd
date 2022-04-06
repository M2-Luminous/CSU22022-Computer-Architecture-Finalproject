
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath is

   port( 
         A_address : in std_logic_vector(4 downto 0);
		 B_address : in std_logic_vector(4 downto 0);
		 D_address : in std_logic_vector(4 downto 0);
		 FS : in std_logic_vector(4 downto 0);
		 Constant_in : in std_logic_vector(31 downto 0);
		 Data_in : in std_logic_vector(31 downto 0);
		 
		 load : in std_logic;
		 MB_select : in std_logic;
		 MD_select : in std_logic;
		 CLK : in std_logic;
		 
		 Address_out : out std_logic_vector(31 downto 0);
		 Data_out : out std_logic_vector(31 downto 0);
		 C : out std_logic;
		 V : out std_logic;
		 N : out std_logic;
		 Z : out std_logic
		);
		 
end entity;



architecture Behavioral of Datapath is


component register_file
Port(
       A_in : in std_logic_vector(4 downto 0);
	   B_in : in std_logic_vector(4 downto 0);

	   in_A0 : in std_logic;
	   in_A1 : in std_logic;
	   in_A2 : in std_logic;
	   in_A3 : in std_logic;
	   in_A4 : in std_logic;
	   
	   CLK : in std_logic;
	   load_enable : in std_logic;
	   data : in std_logic_vector(31 downto 0);
	   
	   reg0 : out std_logic_vector(31 downto 0);
	   reg1 : out std_logic_vector(31 downto 0);
	   reg2 : out std_logic_vector(31 downto 0);
	   reg3 : out std_logic_vector(31 downto 0);
	   reg4 : out std_logic_vector(31 downto 0);
	   reg5 : out std_logic_vector(31 downto 0);
	   reg6 : out std_logic_vector(31 downto 0);
	   reg7 : out std_logic_vector(31 downto 0);
	   reg8 : out std_logic_vector(31 downto 0);
	   reg9 : out std_logic_vector(31 downto 0);
	   reg10 : out std_logic_vector(31 downto 0);
	   reg11 : out std_logic_vector(31 downto 0);
	   reg12 : out std_logic_vector(31 downto 0);
	   reg13 : out std_logic_vector(31 downto 0);
	   reg14 : out std_logic_vector(31 downto 0);
	   reg15 : out std_logic_vector(31 downto 0);
	   reg16 : out std_logic_vector(31 downto 0);
	   reg17 : out std_logic_vector(31 downto 0);
	   reg18 : out std_logic_vector(31 downto 0);
	   reg19 : out std_logic_vector(31 downto 0);
	   reg20 : out std_logic_vector(31 downto 0);
	   reg21 : out std_logic_vector(31 downto 0);
	   reg22 : out std_logic_vector(31 downto 0);
	   reg23 : out std_logic_vector(31 downto 0);
	   reg24 : out std_logic_vector(31 downto 0);
	   reg25 : out std_logic_vector(31 downto 0);
	   reg26 : out std_logic_vector(31 downto 0);
	   reg27 : out std_logic_vector(31 downto 0);
	   reg28 : out std_logic_vector(31 downto 0);
	   reg29 : out std_logic_vector(31 downto 0);
	   reg30 : out std_logic_vector(31 downto 0);
	   reg31 : out std_logic_vector(31 downto 0);
	   
	   output1 : out std_logic_vector(31 downto 0);
	   output2 : out std_logic_vector(31 downto 0)
	   );	   
end component;


component functional_unit
port( 
      A : in std_logic_vector(31 downto 0);
	  B : in std_logic_vector(31 downto 0);
	  S : in std_logic_vector(4 downto 0);
		 
	  N : out std_logic;
      Z : out std_logic;
	  C : out std_logic;
      V : out std_logic;
	  F : out std_logic_vector(31 downto 0)
	);
end component;


component twotooneMUX
port( 
      in0 : in std_logic_vector(31 downto 0);
      in1 : in std_logic_vector(31 downto 0);
	  s : in std_logic;
	  z : out std_logic_vector(31 downto 0)
    );
end component;


signal B_data : std_logic_vector(31 downto 0) := (others => '0');
signal MuxB_out : std_logic_vector(31 downto 0) := (others => '0');
signal A_data : std_logic_vector(31 downto 0) := (others => '0');
signal F_out : std_logic_vector(31 downto 0) := (others => '0');
signal MuxD_out : std_logic_vector(31 downto 0) := (others => '0');

signal reg0_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg1_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg2_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg3_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg4_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg5_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg6_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg7_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg8_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg9_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg10_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg11_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg12_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg13_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg14_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg15_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg16_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg17_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg18_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg19_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg20_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg21_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg22_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg23_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg24_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg25_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg26_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg27_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg28_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg29_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg30_q : std_logic_vector(31 downto 0) := (others => '0');
signal reg31_q : std_logic_vector(31 downto 0) := (others => '0');


begin

Register_file0 : register_file port map(
                A_in => A_address,
				B_in => B_address,
				in_A0 => D_address(0),
				in_A1 => D_address(1),
				in_A2 => D_address(2),
				in_A3 => D_address(3),
				in_A4 => D_address(4),
				CLK => CLK,
				load_enable => load,
				data => MuxD_out,
				output1 => A_data,
				output2 => B_data,
				
				reg0 => reg0_q,
				reg1 => reg1_q,
				reg2 => reg2_q,
				reg3 => reg3_q,
				reg4 => reg4_q,
				reg5 => reg5_q,
				reg6 => reg6_q,
				reg7 => reg7_q,
				reg8 => reg8_q,
				reg9 => reg9_q,
				reg10 => reg10_q,
				reg11 => reg11_q,
				reg12 => reg12_q,
				reg13 => reg13_q,
				reg14 => reg14_q,
				reg15 => reg15_q,
				reg16 => reg16_q,
				reg17 => reg17_q,
				reg18 => reg18_q,
				reg19 => reg19_q,
				reg20 => reg20_q,
				reg21 => reg21_q,
				reg22 => reg22_q,
				reg23 => reg23_q,
				reg24 => reg24_q,
				reg25 => reg25_q,
				reg26 => reg26_q,
				reg27 => reg27_q,
				reg28 => reg28_q,
				reg29 => reg29_q,
				reg30 => reg30_q,
				reg31 => reg31_q
				);
				

Function_unit0 : functional_unit port map(
                 A => A_data,
				 B => MuxB_out,
				 S => FS,
				 N => N,
				 Z => Z,
				 C => C,
				 V => V,
				 F => F_out
				 );
				 

MuxB : twotooneMUX port map(
       in0 => B_data,
	   in1 => Constant_in,
	   s => MB_select,
	   z => MuxB_out
	   );


MuxD : twotooneMUX port map(
       in0 => F_out,
	   in1 => Data_in,
	   s => MD_select,
	   z => MuxD_out
	   );
	   
	   
Address_out <= A_data;
Data_out <= MuxB_out;

end Behavioral;