
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity register_file is
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
	   
end register_file;


architecture Behavioral of register_file is


      -- 32 bit Register for register file
      COMPONENT reg32
      PORT(
           D : in std_logic_vector(31 downto 0);
           load : in std_logic;
           CLK : in std_logic; 
           Q : out std_logic_vector(31 downto 0)
           );
      END COMPONENT;
	  
	  
	  -- 2 to 4 Decoder
      COMPONENT decoder_5to32
      PORT(
           A : in std_logic_vector(4 downto 0);
		   Q0 : out std_logic;
		   Q1 : out std_logic;
		   Q2 : out std_logic;
		   Q3 : out std_logic;
		   Q4 : out std_logic;
		   Q5 : out std_logic;
		   Q6 : out std_logic;
		   Q7 : out std_logic;
		   Q8 : out std_logic;
		   Q9 : out std_logic;
		   Q10 : out std_logic;
		   Q11 : out std_logic;
		   Q12 : out std_logic;
		   Q13 : out std_logic;
		   Q14 : out std_logic;
		   Q15 : out std_logic;
		   Q16 : out std_logic;
		   Q17 : out std_logic;
		   Q18 : out std_logic;
		   Q19 : out std_logic;
		   Q20 : out std_logic;
		   Q21 : out std_logic;
		   Q22 : out std_logic;
		   Q23 : out std_logic;
		   Q24 : out std_logic;
		   Q25 : out std_logic;
		   Q26 : out std_logic;
		   Q27 : out std_logic;
		   Q28 : out std_logic;
	  	   Q29 : out std_logic;
		   Q30 : out std_logic;
		   Q31 : out std_logic
           );
      END COMPONENT;
	  
	 
	  
	  -- 32 to 1 line multiplexer
    COMPONENT thirtytwotooneMUX
    PORT(
            In0 : in std_logic_vector(31 downto 0);
            In1 : in std_logic_vector(31 downto 0);
            In2 : in std_logic_vector(31 downto 0);
            In3 : in std_logic_vector(31 downto 0);
            In4 : in std_logic_vector(31 downto 0);
            In5 : in std_logic_vector(31 downto 0);
            In6 : in std_logic_vector(31 downto 0);
            In7 : in std_logic_vector(31 downto 0);
            In8 : in std_logic_vector(31 downto 0);
            In9 : in std_logic_vector(31 downto 0);
            In10 : in std_logic_vector(31 downto 0);
            In11 : in std_logic_vector(31 downto 0);
            In12 : in std_logic_vector(31 downto 0);
            In13 : in std_logic_vector(31 downto 0);
            In14 : in std_logic_vector(31 downto 0);
            In15 : in std_logic_vector(31 downto 0);
            In16 : in std_logic_vector(31 downto 0);
            In17 : in std_logic_vector(31 downto 0);
            In18 : in std_logic_vector(31 downto 0);
            In19 : in std_logic_vector(31 downto 0);
            In20 : in std_logic_vector(31 downto 0);
            In21 : in std_logic_vector(31 downto 0);
            In22 : in std_logic_vector(31 downto 0);
            In23 : in std_logic_vector(31 downto 0);
            In24 : in std_logic_vector(31 downto 0);
            In25 : in std_logic_vector(31 downto 0);
            In26 : in std_logic_vector(31 downto 0);
            In27 : in std_logic_vector(31 downto 0);
            In28 : in std_logic_vector(31 downto 0);
            In29 : in std_logic_vector(31 downto 0);
            In30 : in std_logic_vector(31 downto 0);
            In31 : in std_logic_vector(31 downto 0);
            S : in std_logic_vector(4 downto 0);
            Z : out std_logic_vector(31 downto 0)
            );
    END COMPONENT;
	  
	  signal reg0_q : std_logic_vector(31 downto 0);
	  signal reg1_q : std_logic_vector(31 downto 0);
	  signal reg2_q : std_logic_vector(31 downto 0);
	  signal reg3_q : std_logic_vector(31 downto 0);
	  signal reg4_q : std_logic_vector(31 downto 0);
	  signal reg5_q : std_logic_vector(31 downto 0);
	  signal reg6_q : std_logic_vector(31 downto 0);
	  signal reg7_q : std_logic_vector(31 downto 0);
	  signal reg8_q : std_logic_vector(31 downto 0);
	  signal reg9_q : std_logic_vector(31 downto 0);
	  signal reg10_q : std_logic_vector(31 downto 0);
	  signal reg11_q : std_logic_vector(31 downto 0);
	  signal reg12_q : std_logic_vector(31 downto 0);
	  signal reg13_q : std_logic_vector(31 downto 0);
	  signal reg14_q : std_logic_vector(31 downto 0);
	  signal reg15_q : std_logic_vector(31 downto 0);
	  signal reg16_q : std_logic_vector(31 downto 0);
	  signal reg17_q : std_logic_vector(31 downto 0);
	  signal reg18_q : std_logic_vector(31 downto 0);
	  signal reg19_q : std_logic_vector(31 downto 0);
	  signal reg20_q : std_logic_vector(31 downto 0);
	  signal reg21_q : std_logic_vector(31 downto 0);
	  signal reg22_q : std_logic_vector(31 downto 0);
	  signal reg23_q : std_logic_vector(31 downto 0);
	  signal reg24_q : std_logic_vector(31 downto 0);
	  signal reg25_q : std_logic_vector(31 downto 0);
	  signal reg26_q : std_logic_vector(31 downto 0);
	  signal reg27_q : std_logic_vector(31 downto 0);
	  signal reg28_q : std_logic_vector(31 downto 0);
	  signal reg29_q : std_logic_vector(31 downto 0);
	  signal reg30_q : std_logic_vector(31 downto 0);
	  signal reg31_q : std_logic_vector(31 downto 0);
	  
	   
	  
      signal load0 : std_logic;
	  signal load1 : std_logic;
	  signal load2 : std_logic;
	  signal load3 : std_logic;
	  signal load4 : std_logic;
	  signal load5 : std_logic;
	  signal load6 : std_logic;
	  signal load7 : std_logic;
	  signal load8 : std_logic;
	  signal load9 : std_logic;
	  signal load10 : std_logic;
	  signal load11 : std_logic;
	  signal load12 : std_logic;
	  signal load13 : std_logic;
	  signal load14 : std_logic;
	  signal load15 : std_logic;
	  signal load16 : std_logic;
	  signal load17 : std_logic;
	  signal load18 : std_logic;
	  signal load19 : std_logic;
	  signal load20 : std_logic;
	  signal load21 : std_logic;
	  signal load22 : std_logic;
	  signal load23 : std_logic;
	  signal load24 : std_logic;
	  signal load25 : std_logic;
	  signal load26 : std_logic;
	  signal load27 : std_logic;
	  signal load28 : std_logic;
	  signal load29 : std_logic;
	  signal load30 : std_logic;
	  signal load31 : std_logic;
	  
	  signal theLoad0 : std_logic;
	  signal theLoad1 : std_logic;
	  signal theLoad2 : std_logic;
	  signal theLoad3 : std_logic;
	  signal theLoad4 : std_logic;
	  signal theLoad5 : std_logic;
	  signal theLoad6 : std_logic;
	  signal theLoad7 : std_logic;
	  signal theLoad8 : std_logic;
	  signal theLoad9 : std_logic;
	  signal theLoad10 : std_logic;
	  signal theLoad11 : std_logic;
	  signal theLoad12 : std_logic;
	  signal theLoad13 : std_logic;
	  signal theLoad14 : std_logic;
	  signal theLoad15 : std_logic;
	  signal theLoad16 : std_logic;
	  signal theLoad17 : std_logic;
	  signal theLoad18 : std_logic;
	  signal theLoad19 : std_logic;
	  signal theLoad20 : std_logic;
	  signal theLoad21 : std_logic;
	  signal theLoad22 : std_logic;
	  signal theLoad23 : std_logic;
	  signal theLoad24 : std_logic;
	  signal theLoad25 : std_logic;
	  signal theLoad26 : std_logic;
	  signal theLoad27 : std_logic;
	  signal theLoad28 : std_logic;
	  signal theLoad29 : std_logic;
	  signal theLoad30 : std_logic;
	  signal theLoad31 : std_logic;
	  
	  
      begin
      -- port maps ;-)
	  -- register 0
	  reg00 : reg32 PORT MAP(
	          D => data,
			  load => theLoad0,
			  CLK => CLK,
			  Q => reg0_q
			  );
			  
	  -- register 1
	  reg01 : reg32 PORT MAP(
	          D => data,
			  load => theLoad1,
			  CLK => CLK,
			  Q => reg1_q
			  );
			  
	  -- register 2
	  reg02 : reg32 PORT MAP(
	          D => data,
			  load => theLoad2,
			  CLK => CLK,
			  Q => reg2_q
			  );
			  
	  -- register 3
	  reg03 : reg32 PORT MAP(
	          D => data,
			  load => theLoad3,
			  CLK => CLK,
			  Q => reg3_q
			  );
			  
	  -- register 4
	  reg04 : reg32 PORT MAP(
	          D => data,
			  load => theLoad4,
			  CLK => CLK,
			  Q => reg4_q
			  );
			  
	  -- register 5
	  reg05 : reg32 PORT MAP(
	          D => data,
			  load => theLoad5,
			  CLK => CLK,
			  Q => reg5_q
			  );
			  
	  -- register 6
	  reg06 : reg32 PORT MAP(
	          D => data,
			  load => theLoad6,
			  CLK => CLK,
			  Q => reg6_q
			  );
			  
	  -- register 7
	  reg07 : reg32 PORT MAP(
	          D => data,
			  load => theLoad7,
			  CLK => CLK,
			  Q => reg7_q
			  );
			  
	  -- register 8
	  reg08 : reg32 PORT MAP(
	          D => data,
			  load => theLoad8,
			  CLK => CLK,
			  Q => reg8_q
			  );
			  
	  -- register 9
	  reg09 : reg32 PORT MAP(
	          D => data,
			  load => theLoad9,
			  CLK => CLK,
			  Q => reg9_q
			  );
			  
	  -- register 10
	  reg010 : reg32 PORT MAP(
	          D => data,
			  load => theLoad10,
			  CLK => CLK,
			  Q => reg10_q
			  );
			  
	  -- register 11
	  reg011 : reg32 PORT MAP(
	          D => data,
			  load => theLoad11,
			  CLK => CLK,
			  Q => reg11_q
			  );
			  
	  -- register 12
	  reg012 : reg32 PORT MAP(
	          D => data,
			  load => theLoad12,
			  CLK => CLK,
			  Q => reg12_q
			  );
			  
	  -- register 13		  
	  reg013 : reg32 PORT MAP(
	          D => data,
			  load => theLoad13,
			  CLK => CLK,
			  Q => reg13_q
			  );
			  
      -- register 14
	  reg014 : reg32 PORT MAP(
	          D => data,
			  load => theLoad14,
			  CLK => CLK,
			  Q => reg14_q
			  );
			  
      -- register 15
	  reg015 : reg32 PORT MAP(
	          D => data,
			  load => theLoad15,
			  CLK => CLK,
			  Q => reg15_q
			  );
			  
      -- register 16
	  reg016 : reg32 PORT MAP(
	          D => data,
			  load => theLoad16,
			  CLK => CLK,
			  Q => reg16_q
			  );
			  
      -- register 17
	  reg017 : reg32 PORT MAP(
	          D => data,
			  load => theLoad17,
			  CLK => CLK,
			  Q => reg17_q
			  );
			  
      -- register 18
	  reg018 : reg32 PORT MAP(
	          D => data,
			  load => theLoad18,
			  CLK => CLK,
			  Q => reg18_q
			  );
			  
      -- register 19
	  reg019 : reg32 PORT MAP(
	          D => data,
			  load => theLoad19,
			  CLK => CLK,
			  Q => reg19_q
			  );
			  
      -- register 20
	  reg020 : reg32 PORT MAP(
	          D => data,
			  load => theLoad20,
			  CLK => CLK,
			  Q => reg20_q
			  );
			  
      -- register 21
	  reg021 : reg32 PORT MAP(
	          D => data,
			  load => theLoad21,
			  CLK => CLK,
			  Q => reg21_q
			  );
			  
      -- register 22
	  reg022 : reg32 PORT MAP(
	          D => data,
			  load => theLoad22,
			  CLK => CLK,
			  Q => reg22_q
			  );
			  
      -- register 23
	  reg023 : reg32 PORT MAP(
	          D => data,
			  load => theLoad23,
			  CLK => CLK,
			  Q => reg23_q
			  );
			  
      -- register 24
	  reg024 : reg32 PORT MAP(
	          D => data,
			  load => theLoad24,
			  CLK => CLK,
			  Q => reg24_q
			  );
			  
      -- register 25
	  reg025 : reg32 PORT MAP(
	          D => data,
			  load => theLoad25,
			  CLK => CLK,
			  Q => reg25_q
			  );
			  
      -- register 26
	  reg026 : reg32 PORT MAP(
	          D => data,
			  load => theLoad26,
			  CLK => CLK,
			  Q => reg26_q
			  );
			  
      -- register 27
	  reg027 : reg32 PORT MAP(
	          D => data,
			  load => theLoad27,
			  CLK => CLK,
			  Q => reg27_q
			  );
			  
      -- register 28
	  reg028 : reg32 PORT MAP(
	          D => data,
			  load => theLoad28,
			  CLK => CLK,
			  Q => reg28_q
			  );
			  
      -- register 29
	  reg029 : reg32 PORT MAP(
	          D => data,
			  load => theLoad29,
			  CLK => CLK,
			  Q => reg29_q
			  );
			  
      -- register 30
	  reg030 : reg32 PORT MAP(
	          D => data,
			  load => theLoad30,
			  CLK => CLK,
			  Q => reg30_q
			  );
			  
      -- register 31
	  reg031 : reg32 PORT MAP(
	          D => data,
			  load => theLoad31,
			  CLK => CLK,
			  Q => reg31_q
			  );
 

			  
      --Destination register decoder
      des_decoder_5to32 : decoder_5to32 PORT MAP(
              A(0) => in_A0,
              A(1) => in_A1,
              A(2) => in_A2,
              A(3) => in_A3,
              A(4) => in_A4,
			  
              Q0 => load0,
              Q1 => load1,
			  Q2 => load2,
			  Q3 => load3,
			  Q4 => load4,
			  Q5 => load5,
			  Q6 => load6,
			  Q7 => load7,
			  Q8 => load8,
			  Q9 => load9,
			  Q10 => load10,
			  Q11 => load11,
			  Q12 => load12,
			  Q13 => load13,
			  Q14 => load14,
			  Q15 => load15,
			  Q16 => load16,
			  Q17 => load17,
			  Q18 => load18,
			  Q19 => load19,
			  Q20 => load20,
			  Q21 => load21,
			  Q22 => load22,
			  Q23 => load23,
			  Q24 => load24,
			  Q25 => load25,
			  Q26 => load26,
			  Q27 => load27,
			  Q28 => load28,
			  Q29 => load29,
			  Q30 => load30,
			  Q31 => load31
			  );
	  
	  
	 
     -- 32 to 1 source register multiplexer
        mux32to1: thirtytwotooneMUX PORT MAP(
            IN0 => reg31_q,
            IN1 => reg0_q,
            IN2 => reg1_q,
            IN3 => reg2_q,
            IN4 => reg3_q,
            IN5 => reg4_q,
            IN6 => reg5_q,
            IN7 => reg6_q,
            IN8 => reg7_q,
            IN9 => reg8_q,
            IN10 => reg9_q,
            IN11 => reg10_q,
            IN12 => reg11_q,
            IN13 => reg12_q,
            IN14 => reg13_q,
            IN15 => reg14_q,
            IN16 => reg15_q,
            IN17 => reg16_q,
            IN18 => reg17_q,
            IN19 => reg18_q,
            IN20 => reg19_q,
            IN21 => reg20_q,
            IN22 => reg21_q,
            IN23 => reg22_q,
            IN24 => reg23_q,
            IN25 => reg24_q,
            IN26 => reg25_q,
            IN27 => reg26_q,
            IN28 => reg27_q,
            IN29 => reg28_q,
            IN30 => reg29_q,
            IN31 => reg30_q,
            S => A_in,
            Z => output1 
        );
				  
				  
	       -- 32 to 1 source register multiplexer
        mux32to_1: thirtytwotooneMUX PORT MAP(
            IN0 => reg31_q,
            IN1 => reg0_q,
            IN2 => reg1_q,
            IN3 => reg2_q,
            IN4 => reg3_q,
            IN5 => reg4_q,
            IN6 => reg5_q,
            IN7 => reg6_q,
            IN8 => reg7_q,
            IN9 => reg8_q,
            IN10 => reg9_q,
            IN11 => reg10_q,
            IN12 => reg11_q,
            IN13 => reg12_q,
            IN14 => reg13_q,
            IN15 => reg14_q,
            IN16 => reg15_q,
            IN17 => reg16_q,
            IN18 => reg17_q,
            IN19 => reg18_q,
            IN20 => reg19_q,
            IN21 => reg20_q,
            IN22 => reg21_q,
            IN23 => reg22_q,
            IN24 => reg23_q,
            IN25 => reg24_q,
            IN26 => reg25_q,
            IN27 => reg26_q,
            IN28 => reg27_q,
            IN29 => reg28_q,
            IN30 => reg29_q,
            IN31 => reg30_q,
            S => B_in,
            Z => output2 
        );
      
	  
	  theLoad0 <= load0 and load_enable;
	  theLoad1 <= load1 and load_enable;
	  theLoad2 <= load2 and load_enable;
	  theLoad3 <= load3 and load_enable;
	  theLoad4 <= load4 and load_enable;
	  theLoad5 <= load5 and load_enable;
	  theLoad6 <= load6 and load_enable;
	  theLoad7 <= load7 and load_enable;
	  theLoad8 <= load8 and load_enable;
	  theLoad9 <= load9 and load_enable;
	  theLoad10 <= load10 and load_enable;
	  theLoad11 <= load11 and load_enable;
	  theLoad12 <= load12 and load_enable;
	  theLoad13 <= load13 and load_enable;
	  theLoad14 <= load14 and load_enable;
	  theLoad15 <= load15 and load_enable;
	  theLoad16 <= load16 and load_enable;
	  theLoad17 <= load17 and load_enable;
	  theLoad18 <= load18 and load_enable;
	  theLoad19 <= load19 and load_enable;
	  theLoad20 <= load20 and load_enable;
	  theLoad21 <= load21 and load_enable;
	  theLoad22 <= load22 and load_enable;
	  theLoad23 <= load23 and load_enable;
	  theLoad24 <= load24 and load_enable;
	  theLoad25 <= load25 and load_enable;
	  theLoad26 <= load26 and load_enable;
	  theLoad27 <= load27 and load_enable;
	  theLoad28 <= load28 and load_enable;
	  theLoad29 <= load29 and load_enable;
	  theLoad30 <= load30 and load_enable;
	  theLoad31 <= load31 and load_enable;
	  
	  
	  reg0 <= reg0_q;
      reg1 <= reg1_q;
      reg2 <= reg2_q;
      reg3 <= reg3_q;
	  reg4 <= reg4_q;
      reg5 <= reg5_q;
      reg6 <= reg6_q;
      reg7 <= reg7_q;
	  reg8 <= reg8_q;
      reg9 <= reg9_q;
      reg10 <= reg10_q;
      reg11 <= reg11_q;
	  reg12 <= reg12_q;
      reg13 <= reg13_q;
      reg14 <= reg14_q;
      reg15 <= reg15_q;
	  reg16 <= reg16_q;
      reg17 <= reg17_q;
      reg18 <= reg18_q;
      reg19 <= reg19_q;
	  reg20 <= reg20_q;
      reg21 <= reg21_q;
      reg22 <= reg22_q;
      reg23 <= reg23_q;
	  reg24 <= reg24_q;
      reg25 <= reg25_q;
      reg26 <= reg26_q;
      reg27 <= reg27_q;
	  reg28 <= reg28_q;
      reg29 <= reg29_q;
      reg30 <= reg30_q;
      reg31 <= reg31_q;
	  
end Behavioral;