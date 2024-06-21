----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:46:00 06/12/2024 
-- Design Name: 
-- Module Name:    one_bit_alu - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library unisim;
use unisim.vcomponents.all;

entity one_bit_alu is
port ( A: in STD_LOGIC;
       A_inv: in STD_LOGIC;
		 B: in STD_LOGIC;
		 B_inv: in STD_LOGIC;
		 CarryIn: in STD_LOGIC;
		 OP0: in STD_LOGIC;
		 OP1: in STD_LOGIC;
		 CarryOut: out STD_LOGIC;
		 Result: out STD_LOGIC);
end one_bit_alu;

architecture Behavioral of one_bit_alu is
signal A_L, B_L: STD_LOGIC;
signal AM, BM: STD_LOGIC;
signal AND_AM_BM, OR_AM_BM, CIN_AND_AM, CIN_AND_BM, AM_AND_BM, AM_CIN_XOR_BM: STD_LOGIC;
signal mux_d4: STD_LOGIC;
component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
component mux21 port (D0, D1, S0: in STD_LOGIC; Y: out STD_LOGIC); end component;
component AND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component OR2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component OR3 port (I0, I1, I2: in STD_LOGIC; O: out STD_LOGIC); end component;
component mux port (D0, D1, D2, D3, S0, S1: in STD_LOGIC; Y: out STD_LOGIC); end component;
component XOR3 port (I0, I1, I2: in STD_LOGIC; O: out STD_LOGIC); end component;
begin
	U1: INV port map (A, A_L);
	U2: INV port map (B, B_L);
	U3: mux21 port map (A, A_L, A_inv, AM); 
	U4: mux21 port map (B, B_L, B_inv, BM); 
	U5: AND2 port map (AM, BM, AND_AM_BM);
	U6: OR2 port map (AM, BM, OR_AM_BM);
	U7: AND2 port map (AM, CarryIn, CIN_AND_AM);
	U8: AND2 port map (BM, CarryIn, CIN_AND_BM);
	U9: AND2 port map (AM, BM, AM_AND_BM);
	U10: XOR3 port map (AM, BM, CarryIn, AM_CIN_XOR_BM);
	U11: OR3 port map (CIN_AND_AM, CIN_AND_BM, AM_AND_BM, CarryOut);
	U12: mux port map (AND_AM_BM, OR_AM_BM, AM_CIN_XOR_BM, mux_d4, OP0, OP1, Result);
	
end Behavioral;

