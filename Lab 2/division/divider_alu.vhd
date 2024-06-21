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

-- treat I_ALU_EN is the on/off switch for the ALU to begin dividingn
-- treat I_ALU_A as the divisor, so it will never change
-- treat I_ALU_B as the HI, or the remainder, which will constantly compare to A during each division shift step
-- treat O_ALU_Out as the new HI value which will overwrite the current HI value, and is also the difference between A and B
-- treat O_ALU_Flag as the LSB digit that we will overwrite in the quotient of the register
--- the only thing this alu should be doing are:
--- comparing the A and B 
--- create a variable to represent I_ALU_B - I_ALU_A, and then pass it to I_ALU_Out as the output
--- if I_ALU_Out > 0, then output O_ALU_Flag with the value of 1, otherwise the value of 0

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
				O_ALU_Flag <= '1';
				O_ALU_Out <= STD_LOGIC_VECTOR(to_unsigned(B,6) - to_unsigned(A,6));
				-- SINCE B and A are converted into integers, they must be converted back into
				-- unsigned digits that can be converted into a vector. an integer itself cannot be
				-- directly assigned nor directly converted into a vector
			else 
				O_ALU_Flag <= '0';
				O_ALU_Out <= I_ALU_B;
			end if;
		else null;
		end if;
	end process;
end Behavioral;
-- https://www.bitweenie.com/wp-content/uploads/2013/02/vhdl-type-conversions-913x1024.png

