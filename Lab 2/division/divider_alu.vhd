----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:45:46 06/20/2024 
-- Design Name: 
-- Module Name:    divider_alu - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity divider_alu is
	port ( I_ALU_EN : in STD_LOGIC; -- used to enable ALU
	I_ALU_A : in STD_LOGIC_VECTOR (5 downto 0); -- first input of ALU
	I_ALU_B : in STD_LOGIC_VECTOR (5 downto 0); -- second input of ALU
	O_ALU_Out : out STD_LOGIC_VECTOR (5 downto 0); -- output of ALU
	O_ALU_Flag : out STD_LOGIC -- bit that indicates bigger input, setting LSB of the register
	);
end divider_alu;

architecture Behavioral of divider_alu is
	
begin
	process(I_ALU_EN, I_ALU_A, I_ALU_B)
		variable B: integer; 
		variable A: integer;
	begin 
		if I_ALU_EN='1' then
			B := to_integer(unsigned(I_ALU_B));
			A := to_integer(unsigned(I_ALU_A));
			if B >= A then
				O_ALU_Out <= STD_LOGIC_VECTOR(to_unsigned(B,6) - to_unsigned(A,6));
				O_ALU_Flag <= '1';
			else 
				O_ALU_Flag <= '0';
				O_ALU_Out <= I_ALU_B;
			end if;
		else null;
		end if;
	end process;
end Behavioral;
-- https://www.bitweenie.com/wp-content/uploads/2013/02/vhdl-type-conversions-913x1024.png

