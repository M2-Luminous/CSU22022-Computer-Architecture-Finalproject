library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity processor is
Port(
	 Clk : in STD_LOGIC;
	 reset : in STD_LOGIC
);
end processor;

architecture Behavioral of processor is

component Microprogrammed_control
Port ( instruction_in : in  STD_LOGIC_VECTOR (31 downto 0);
		   reset : in STD_LOGIC;
           V : in  STD_LOGIC;
           C : in  STD_LOGIC;
           N : in  STD_LOGIC;
           Z : in  STD_LOGIC;
		   Clk : in STD_LOGIC;
           pc_out : out  STD_LOGIC_VECTOR (31 downto 0);
           DR : out  STD_LOGIC_VECTOR (4 downto 0);
           SA : out  STD_LOGIC_VECTOR (4 downto 0);
           SB : out  STD_LOGIC_VECTOR (4 downto 0);
           TD : out  STD_LOGIC;
           TA : out  STD_LOGIC;
           TB : out  STD_LOGIC;
           MB : out  STD_LOGIC;
           FS : out  STD_LOGIC_VECTOR (4 downto 0);
           MD : out  STD_LOGIC;
           RW : out  STD_LOGIC;
           MM : out  STD_LOGIC;
           MW : out  STD_LOGIC;
           RV : out  STD_LOGIC;
           RC : out  STD_LOGIC;
           RN : out  STD_LOGIC;
           RZ : out  STD_LOGIC;
           FL : out  STD_LOGIC);
end component;

component DataPath 
port(  Enable: in std_logic;
       A_Select : in std_logic_vector (4 downto 0); --select for mux A
       B_Select: in std_logic_vector (4 downto 0); --select for mux B 
       D_Address: in std_logic_vector (4 downto 0); --select for the 5 to 32 decoder
       Constant_in: in std_logic_vector (31 downto 0); --this goes in the mux which takes in B data
       MB_select: in std_logic; --this is the select for the mux which takes in B data
       MD_select: in std_logic;  --the select for the mux which takes in F from the functional unit.
       FS: in std_logic_vector (4 downto 0); --the select for the functional unit.
       Data_in: in std_logic_vector (31 downto 0); -- goes into the mux which takes in F from the functional unit. 
       Clk: in std_logic; --the clock signal for the register file.
       
       reset: in std_logic;
        --TD, TA, TB (each 1 bit).
       TD : in STD_LOGIC;
       TA : in STD_LOGIC;
       TB : in STD_LOGIC;
		   
        --Now, the flags from the functional unit.
       V: out std_logic;
       C: out std_logic;
       N: out std_logic;
       Z: out std_logic;
       Address_out: out std_logic_vector (31 downto 0);
       Data_out: out std_logic_vector (31 downto 0); --data out from Bus B.);
           
           --things that are not essential but added so we can see how the datapath works under the hood.
       reg0:  out std_logic_vector(31 downto 0);
       reg1:  out std_logic_vector(31 downto 0);
       reg2:  out std_logic_vector(31 downto 0);
       reg3:  out std_logic_vector(31 downto 0);
       reg4:  out std_logic_vector(31 downto 0);
       reg5:  out std_logic_vector(31 downto 0);
       reg6:  out std_logic_vector(31 downto 0);
       reg7:  out std_logic_vector(31 downto 0);
       reg8:  out std_logic_vector(31 downto 0);
       reg9:  out std_logic_vector(31 downto 0);
       reg10:  out std_logic_vector(31 downto 0);
       reg11:  out std_logic_vector(31 downto 0);
       reg12:  out std_logic_vector(31 downto 0);
       reg13:  out std_logic_vector(31 downto 0);
       reg14:  out std_logic_vector(31 downto 0);
       reg15:  out std_logic_vector(31 downto 0);
       reg16:  out std_logic_vector(31 downto 0);
       reg17:  out std_logic_vector(31 downto 0);
       reg18:  out std_logic_vector(31 downto 0);
       reg19:  out std_logic_vector(31 downto 0);
       reg20:  out std_logic_vector(31 downto 0);
       reg21:  out std_logic_vector(31 downto 0);
       reg22:  out std_logic_vector(31 downto 0);
       reg23:  out std_logic_vector(31 downto 0);
       reg24:  out std_logic_vector(31 downto 0);
       reg25:  out std_logic_vector(31 downto 0);
       reg26:  out std_logic_vector(31 downto 0);
       reg27:  out std_logic_vector(31 downto 0);
       reg28:  out std_logic_vector(31 downto 0);
       reg29:  out std_logic_vector(31 downto 0);
       reg30:  out std_logic_vector(31 downto 0);
       reg31:  out std_logic_vector(31 downto 0);
       reg32: out std_logic_vector(31 downto 0);
       OutputA : out std_logic_vector(31 downto 0);
       OutputB : out std_logic_vector(31 downto 0);
       F_Out : out std_logic_vector(31 downto 0));
end component;

component memory  
Port ( address : in std_logic_vector(31 downto 0);
       write_data : in std_logic_vector(31 downto 0);
       clock : in std_logic;
       MemWrite : in std_logic;
       MemRead : in std_logic;
       read_data : out std_logic_vector(31 downto 0));
end component;


component VCNZ
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
end component;


component twotooneMUX 
    Port ( In0 : in std_logic_vector(31 downto 0);
            In1 : in std_logic_vector(31 downto 0);
            s : in std_logic; 
            Z : out std_logic_vector(31 downto 0));
end component;

component zero_fill
  Port (SB : in  STD_LOGIC_VECTOR (4 downto 0);
	    constant_out : out STD_LOGIC_VECTOR (31 downto 0));

end component;

    --signals
	signal V_signal : std_logic; --signals into 8 to 1 mux
	signal C_signal : std_logic;
	signal N_signal : std_logic;
	signal Z_signal : std_logic; 
	
	signal V_signal_datapath : std_logic;
	signal C_signal_datapath : std_logic;
	signal N_signal_datapath : std_logic;
	signal Z_signal_datapath : std_logic;
	
		
	signal TD_signal : std_logic;
	signal TA_signal : std_logic;
	signal TB_signal : std_logic;
	signal MB_signal : std_logic;
	signal MD_signal : std_logic;
	signal RW_signal : std_logic;
	signal MM_signal : std_logic;
	signal MW_signal : std_logic;
    signal RV_signal : std_logic;
	signal RC_signal : std_logic;
	signal RN_signal : std_logic;
	signal RZ_signal : std_logic;
	signal FL_signal : std_logic;
	signal DR_signal : std_logic_vector(4 downto 0);
	signal SA_signal : std_logic_vector(4 downto 0);
	signal SB_signal : std_logic_vector(4 downto 0);
	signal FS_signal : std_logic_vector(4 downto 0);
	signal outputFromZeroFill : std_logic_vector(31 downto 0);
	signal datapath_address_out : std_logic_vector(31 downto 0);
	signal datapath_data_out : std_logic_vector(31 downto 0);
	signal memory_data_out : std_logic_vector(31 downto 0);
	signal micro_pc_out : std_logic_vector(31 downto 0);
	
	signal memoryM_output: std_logic_vector(31 downto 0);
	signal Mux_M_in0 : std_logic_vector(31 downto 0);
	signal data_into_memoryM : std_logic_vector(31 downto 0);
    signal address_for_memoryM : std_logic_vector(31 downto 0);
	
	
      signal reg0 : std_logic_vector(31 downto 0);
      signal reg1 : std_logic_vector(31 downto 0);
      signal reg2 : std_logic_vector(31 downto 0);
      signal reg3 : std_logic_vector(31 downto 0);
      signal reg4 : std_logic_vector(31 downto 0);
      signal reg5 : std_logic_vector(31 downto 0);
      signal reg6 : std_logic_vector(31 downto 0);
      signal reg7 : std_logic_vector(31 downto 0);
      signal reg8 : std_logic_vector(31 downto 0);
      signal reg9 : std_logic_vector(31 downto 0);
      signal reg10 : std_logic_vector(31 downto 0);
      signal reg11 : std_logic_vector(31 downto 0);
      signal reg12 : std_logic_vector(31 downto 0);
      signal reg13 : std_logic_vector(31 downto 0);
      signal reg14 : std_logic_vector(31 downto 0);
      signal reg15 : std_logic_vector(31 downto 0);
      signal reg16 : std_logic_vector(31 downto 0);
      signal reg17 : std_logic_vector(31 downto 0);
      signal reg18 : std_logic_vector(31 downto 0);
      signal reg19 : std_logic_vector(31 downto 0);
      signal reg20 : std_logic_vector(31 downto 0);
      signal reg21 : std_logic_vector(31 downto 0);
      signal reg22 : std_logic_vector(31 downto 0);
      signal reg23 : std_logic_vector(31 downto 0);
      signal reg24 : std_logic_vector(31 downto 0);
      signal reg25 : std_logic_vector(31 downto 0);
      signal reg26 : std_logic_vector(31 downto 0);
      signal reg27 : std_logic_vector(31 downto 0);
      signal reg28 : std_logic_vector(31 downto 0);
      signal reg29 : std_logic_vector(31 downto 0);
      signal reg30 : std_logic_vector(31 downto 0);
      signal reg31 : std_logic_vector(31 downto 0);
      signal reg32 : std_logic_vector(31 downto 0);
      signal OutputA : std_logic_vector(31 downto 0);
      signal OutputB : std_logic_vector(31 downto 0);
      signal F_out : std_logic_vector(31 downto 0);
begin

micro_control : Microprogrammed_control PORT MAP (
          instruction_in => memory_data_out,
          reset => reset,
          V => V_signal,
          C => C_signal,
          N => N_signal,
          Z => Z_signal,
          Clk => Clk,
          pc_out => micro_pc_out,
          DR => DR_signal,
          SA => SA_signal,
          SB => SB_signal,
          TD => TD_signal,
          TA => TA_signal,
          TB => TB_signal,
          MB => MB_signal,
          FS => FS_signal,
          MD => MD_signal,
          RW => RW_signal,
          MM => MM_signal,
          MW => MW_signal,
          RV => RV_signal,
          RC => RC_signal,
          RN => RN_signal,
          RZ => RZ_signal,
          FL => FL_signal
        );

data_path : DataPath PORT MAP (
       Enable => RW_signal,
       A_Select => SA_signal,
       B_Select => SB_signal,
       D_Address => DR_signal,
       Constant_in => outputFromZeroFill,
       MB_select => MB_signal,
       MD_select => MD_Signal,
       FS => FS_signal,
       Data_in => memoryM_output,
       Clk => Clk,
       
       reset => reset,
       TD => TD_signal,
       TA => TA_signal,
       TB => TB_signal,
		   
        --Now, the flags from the functional unit.
       V => V_signal_datapath,
       C => C_signal_datapath,
       N => N_signal_datapath,
       Z => Z_signal_datapath,
       Address_out => Mux_M_in0,
       Data_out => data_into_memoryM,
           
 --these registers are not real outputs, they are only added so the datapath and register file testbenches were more understandable
  --hence i just set them to null.
       reg0 => reg0,
       reg1 => reg1,
       reg2 => reg2,
       reg3 => reg3,
       reg4 => reg4,
       reg5 => reg5,
       reg6 => reg6,
       reg7 => reg7,
       reg8 => reg8,
       reg9 => reg9,
       reg10 => reg10,
       reg11 => reg11,
       reg12 => reg12,
       reg13 => reg13,
       reg14 => reg14,
       reg15 => reg15,
       reg16 => reg16,
       reg17 => reg17,
       reg18 => reg18,
       reg19 => reg19,
       reg20 => reg20,
       reg21 => reg21,
       reg22 => reg22,
       reg23 => reg23,
       reg24 => reg24,
       reg25 => reg25,
       reg26 => reg26,
       reg27 => reg27,
       reg28 => reg28,
       reg29 => reg29,
       reg30 => reg30,
       reg31 => reg31,
       reg32 => reg32,
       OutputA  => OutputA,
       OutputB => OutputB,
       F_Out => F_Out);


V_C_N_Z: VCNZ PORT MAP (
         Vin => V_signal_datapath,
         Cin => C_signal_datapath,
         Nin => N_signal_datapath,
         Zin => Z_signal_datapath,
         clock => Clk,
         Reset(3) => RV_signal,
         Reset(2) => RC_signal,
         Reset(1) => RN_signal,
         Reset(0) => RZ_signal,
         FL => FL_signal,
         Vout => V_signal,
         Cout => C_signal,
         Nout => N_signal,
         Zout => Z_signal);

zerofill: zero_fill PORT MAP (
   SB => SB_signal,
   constant_out => outputFromZeroFill);

muxM: twotooneMUX PORT MAP (
        In0 => Mux_M_in0,
        In1 => micro_pc_out,
        s => MM_signal, 
        Z => address_for_memoryM);


memoryM: memory PORT MAP (
       address => address_for_memoryM,
       write_data => data_into_memoryM,
       clock => Clk,
       MemWrite => MW_signal,
       MemRead => '1', --there is no MR signal on the assignment spec, so I put reading memory as a default.
       read_data => memoryM_output);

end Behavioral;