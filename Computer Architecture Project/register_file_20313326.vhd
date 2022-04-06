library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity register_file is
Port ( 
        src_s : in std_logic_vector(4 downto 0);
        des_A : in std_logic_vector(4 downto 0);
        Clk : in std_logic;
        data_src : in std_logic;
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
        reg31 : out std_logic_vector(31 downto 0)
        );
end register_file;

architecture Behavioral of register_file is
    -- components
    -- 32 bit Register for register file
    COMPONENT reg32
    PORT(
            D : in std_logic_vector(31 downto 0);
            load : in std_logic;
            Clk : in std_logic; 
            Q : out std_logic_vector(31 downto 0)
            );
    END COMPONENT;
    
    -- 5 to 32 Decoder
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
    
    -- 2 to 1 line multiplexer
    COMPONENT twotooneMUX
    PORT(
            In0 : in std_logic_vector(31 downto 0);
            In1 : in std_logic_vector(31 downto 0);
            s : in std_logic; 
            Z : out std_logic_vector(31 downto 0)
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
    
    -- signals
    signal load_reg0 : std_logic; 
	signal load_reg1 : std_logic; 
	signal load_reg2 : std_logic; 
	signal load_reg3 : std_logic; 
	signal load_reg4 : std_logic; 
	signal load_reg5 : std_logic; 
	signal load_reg6 : std_logic; 
	signal load_reg7 : std_logic;
	signal load_reg8 : std_logic; 
	signal load_reg9 : std_logic; 
	signal load_reg10 : std_logic; 
	signal load_reg11 : std_logic; 
	signal load_reg12 : std_logic; 
	signal load_reg13 : std_logic; 
	signal load_reg14 : std_logic; 
	signal load_reg15 : std_logic; 
	signal load_reg16 : std_logic; 
	signal load_reg17 : std_logic; 
	signal load_reg18 : std_logic; 
	signal load_reg19 : std_logic; 
	signal load_reg20 : std_logic; 
	signal load_reg21 : std_logic; 
	signal load_reg22 : std_logic; 
	signal load_reg23 : std_logic; 
	signal load_reg24 : std_logic; 
	signal load_reg25 : std_logic; 
	signal load_reg26 : std_logic;
	signal load_reg27 : std_logic; 
	signal load_reg28 : std_logic; 
	signal load_reg29 : std_logic; 
	signal load_reg30 : std_logic; 
	signal load_reg31 : std_logic;
    signal reg0_q: std_logic_vector(31 downto 0); 
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
	signal data_src_mux_out : std_logic_vector(31 downto 0); 
	signal src_reg : std_logic_vector(31 downto 0);
    
    begin
        -- port maps ;-)
        -- Destination register decoder
        des_decoder_5to32: decoder_5to32 PORT MAP(
            A => des_A,
            Q0 => load_reg0,
            Q1 => load_reg1,
            Q2 => load_reg2,
            Q3 => load_reg3,
            Q4 => load_reg4,
            Q5 => load_reg5,
            Q6 => load_reg6,
            Q7 => load_reg7,
            Q8 => load_reg8,
            Q9 => load_reg9,
            Q10 => load_reg10,
            Q11 => load_reg11,
            Q12 => load_reg12,
            Q13 => load_reg13,
            Q14 => load_reg14,
            Q15 => load_reg15,
            Q16 => load_reg16,
            Q17 => load_reg17,
            Q18 => load_reg18,
            Q19 => load_reg19,
            Q20 => load_reg20,
            Q21 => load_reg21,
            Q22 => load_reg22,
            Q23 => load_reg23,
            Q24 => load_reg24,
            Q25 => load_reg25,
            Q26 => load_reg26,
            Q27 => load_reg27,
            Q28 => load_reg28,
            Q29 => load_reg29,
            Q30 => load_reg30,
            Q31 => load_reg31
        );
        
        -- register 0
        reg000: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg0,
            Clk => Clk,
            Q => reg0_q 
        );
        -- register 1
        reg001: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg1,
            Clk => Clk,
            Q => reg1_q 
        );
        -- register 2
        reg002: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg2,
            Clk => Clk,
            Q => reg2_q 
        );
        -- register 3
        reg003: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg3,
            Clk => Clk,
            Q => reg3_q 
        );
        -- register 4
        reg004: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg4,
            Clk => Clk,
            Q => reg4_q 
        );
        -- register 5
        reg005: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg5,
            Clk => Clk,
            Q => reg5_q 
        );
        -- register 6
        reg006: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg6,
            Clk => Clk,
            Q => reg6_q 
        );
        -- register 7
        reg007: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg7,
            Clk => Clk,
            Q => reg7_q 
        );
        -- register 8
        reg008: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg8,
            Clk => Clk,
            Q => reg8_q 
        );
        -- register 9
        reg009: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg9,
            Clk => Clk,
            Q => reg9_q 
        );
        -- register 10
        reg010: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg10,
            Clk => Clk,
            Q => reg10_q 
        );
        -- register 11
        reg011: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg11,
            Clk => Clk,
            Q => reg11_q 
        );
        -- register 12
        reg012: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg12,
            Clk => Clk,
            Q => reg12_q 
        );
        -- register 13
        reg013: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg13,
            Clk => Clk,
            Q => reg13_q 
        );
        -- register 14
        reg014: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg14,
            Clk => Clk,
            Q => reg14_q 
        );
        -- register 15
        reg015: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg15,
            Clk => Clk,
            Q => reg15_q 
        );
        -- register 16
        reg016: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg16,
            Clk => Clk,
            Q => reg16_q 
        );
        -- register 17
        reg017: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg17,
            Clk => Clk,
            Q => reg17_q 
        );
        -- register 18
        reg018: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg18,
            Clk => Clk,
            Q => reg18_q 
        );
        -- register 19
        reg019: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg19,
            Clk => Clk,
            Q => reg19_q 
        );
        -- register 20
        reg020: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg20,
            Clk => Clk,
            Q => reg20_q 
        );
        -- register 21
        reg021: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg21,
            Clk => Clk,
            Q => reg21_q 
        );
        -- register 22
        reg022: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg22,
            Clk => Clk,
            Q => reg22_q 
        );
        -- register 23
        reg023: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg23,
            Clk => Clk,
            Q => reg23_q 
        );
        -- register 24
        reg024: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg24,
            Clk => Clk,
            Q => reg24_q 
        );
        -- register 25
        reg025: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg25,
            Clk => Clk,
            Q => reg25_q 
        );
        -- register 26
        reg026: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg26,
            Clk => Clk,
            Q => reg26_q 
        );
        -- register 27
        reg027: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg27,
            Clk => Clk,
            Q => reg27_q 
        );
        -- register 28
        reg028: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg28,
            Clk => Clk,
            Q => reg28_q 
        );
        -- register 29
        reg029: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg29,
            Clk => Clk,
            Q => reg29_q 
        );
        -- register 30
        reg030: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg30,
            Clk => Clk,
            Q => reg30_q 
        );
        -- register 31
        reg031: reg32 PORT MAP(
            D => data_src_mux_out,
            load => load_reg31,
            Clk => Clk,
            Q => reg31_q 
        );
        
        -- 2 to 1 Data source multiplexer 
        data_src_mux2_32bit: twotooneMUX PORT MAP(
            In0 => data,
            In1 => src_reg,
            s => data_src,
            Z => data_src_mux_out
        );
        
        -- 32 to 1 source register multiplexer
        Inst_mux32_32bit: thirtytwotooneMUX PORT MAP(
            In0 => reg0_q,
            In1 => reg1_q,
            In2 => reg2_q,
            In3 => reg3_q,
            In4 => reg4_q,
            In5 => reg5_q,
            In6 => reg6_q,
            In7 => reg7_q,
            In8 => reg8_q,
            In9 => reg9_q,
            In10 => reg10_q,
            In11 => reg11_q,
            In12 => reg12_q,
            In13 => reg13_q,
            In14 => reg14_q,
            In15 => reg15_q,
            In16 => reg16_q,
            In17 => reg17_q,
            In18 => reg18_q,
            In19 => reg19_q,
            In20 => reg20_q,
            In21 => reg21_q,
            In22 => reg22_q,
            In23 => reg23_q,
            In24 => reg24_q,
            In25 => reg25_q,
            In26 => reg26_q,
            In27 => reg27_q,
            In28 => reg28_q,
            In29 => reg29_q,
            In30 => reg30_q,
            In31 => reg31_q,
            S => src_s,
            Z => src_reg 
        );
        
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
