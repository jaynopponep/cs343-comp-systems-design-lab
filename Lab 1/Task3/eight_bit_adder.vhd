----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:52:31 06/13/2024 
-- Design Name: 
-- Module Name:    eight_bit_adder - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity eight_bit_adder is
port (A : in STD_LOGIC_VECTOR (7 downto 0);
		A_inv : in STD_LOGIC;
		B : in STD_LOGIC_VECTOR (7 downto 0);
		B_inv : in STD_LOGIC;
		CarryIn : in STD_LOGIC;
		OP : in STD_LOGIC_VECTOR (1 downto 0);
		CarryOut : inout STD_LOGIC;
		Result : out STD_LOGIC_VECTOR (7 downto 0));
end eight_bit_adder;	

architecture Behavioral of eight_bit_adder is
signal CarryOut2, CarryOut3, CarryOut4, CarryOut5: STD_LOGIC;
signal CarryOut6, CarryOut7, CarryOut8: STD_LOGIC;
component one_bit_alu port (A, A_inv, B, B_inv, CarryIn, OP0, OP1: in STD_LOGIC; 
									CarryOut, Result: out STD_LOGIC); end component;
begin
	U1: one_bit_alu port map (A(0), A_inv, B(0), B_inv, CarryIn, OP(0), OP(1), CarryOut, Result(0));
	U2: one_bit_alu port map (A(1), A_inv, B(1), B_inv, CarryOut, OP(0), OP(1), CarryOut2, Result(1));
	U3: one_bit_alu port map (A(2), A_inv, B(2), B_inv, CarryOut2, OP(0), OP(1), CarryOut3, Result(2));
	U4: one_bit_alu port map (A(3), A_inv, B(3), B_inv, CarryOut3, OP(0), OP(1), CarryOut4, Result(3));
	U5: one_bit_alu port map (A(4), A_inv, B(4), B_inv, CarryOut4, OP(0), OP(1), CarryOut5, Result(4));
	U6: one_bit_alu port map (A(5), A_inv, B(5), B_inv, CarryOut5, OP(0), OP(1), CarryOut6, Result(5));
	U7: one_bit_alu port map (A(6), A_inv, B(6), B_inv, CarryOut6, OP(0), OP(1), CarryOut7, Result(6));
	U8: one_bit_alu port map (A(7), A_inv, B(7), B_inv, CarryOut7, OP(0), OP(1), CarryOut8, Result(7));

end Behavioral;

