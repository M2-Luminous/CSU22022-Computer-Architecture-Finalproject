library ieee;
use ieee.std_logic_1164.all;

entity rca_32bit is
	port(A,B  : in  std_logic_vector(31 downto 0);
	     Sum  : out std_logic_vector(31 downto 0);
		 Cin : in std_logic;
	     Cout : out std_logic;
		 Vout : out std_logic);
end entity;

architecture rca_32bit_arch of rca_32bit is

	component full_adder is
		port(A,B,Cin   : in  std_logic;
		     Sum,Cout  : out std_logic);
	end component;

	signal C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17, C18, C19, C20, C21, C22, C23, C24, C25, C26, C27, C28, C29, C30, C31, C_out : std_logic;
begin
	--Full Adders
	FA1 : full_adder port map(A(0), B(0), Cin, Sum(0), C1);
	FA2 : full_adder port map(A(1), B(1), C1,  Sum(1), C2);
	FA3 : full_adder port map(A(2), B(2), C2,  Sum(2), C3);
	FA4 : full_adder port map(A(3), B(3), C3,  Sum(3), C4);
	FA5 : full_adder port map(A(4), B(4), C4,  Sum(4), C5);
	FA6 : full_adder port map(A(5), B(5), C5,  Sum(5), C6);
	FA7 : full_adder port map(A(6), B(6), C6,  Sum(6), C7);
	FA8 : full_adder port map(A(7), B(7), C7,  Sum(7), C8);
	FA9 : full_adder port map(A(8), B(8), C8,  Sum(8), C9);
	FA10 : full_adder port map(A(9), B(9), C9,  Sum(9), C10);
	FA11 : full_adder port map(A(10), B(10), C10,  Sum(10), C11);
	FA12 : full_adder port map(A(11), B(11), C11,  Sum(11), C12);
	FA13 : full_adder port map(A(12), B(12), C12,  Sum(12), C13);
	FA14 : full_adder port map(A(13), B(13), C13,  Sum(13), C14);
	FA15 : full_adder port map(A(14), B(14), C14,  Sum(14), C15);
	FA16 : full_adder port map(A(15), B(15), C15,  Sum(15), C16);
	FA17 : full_adder port map(A(16), B(16), C16,  Sum(16), C17);
	FA18 : full_adder port map(A(17), B(17), C17,  Sum(17), C18);
	FA19 : full_adder port map(A(18), B(18), C18,  Sum(18), C19);
	FA20 : full_adder port map(A(19), B(19), C19,  Sum(19), C20);
	FA21 : full_adder port map(A(20), B(20), C20,  Sum(20), C21);
	FA22 : full_adder port map(A(21), B(21), C21,  Sum(21), C22);
	FA23 : full_adder port map(A(22), B(22), C22,  Sum(22), C23);
	FA24 : full_adder port map(A(23), B(23), C23,  Sum(23), C24);
	FA25 : full_adder port map(A(24), B(24), C24,  Sum(24), C25);
	FA26 : full_adder port map(A(25), B(25), C25,  Sum(25), C26);
	FA27 : full_adder port map(A(26), B(26), C26,  Sum(26), C27);
	FA28 : full_adder port map(A(27), B(27), C27,  Sum(27), C28);
	FA29 : full_adder port map(A(28), B(28), C28,  Sum(28), C29);
	FA30 : full_adder port map(A(29), B(29), C29,  Sum(29), C30);
	FA31 : full_adder port map(A(30), B(30), C30,  Sum(30), C31);
	FA32 : full_adder port map(A(31), B(31), C31,  Sum(31), C_out);
	
	Cout <= C_out;
    Vout <= C31 xor C_out;
end architecture;