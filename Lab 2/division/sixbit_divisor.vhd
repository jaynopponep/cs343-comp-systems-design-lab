----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:43:53 06/20/2024 
-- Design Name: 
-- Module Name:    sixbit_divider - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity sixbit_divider is
	port ( I_ALU_EN : in STD_LOGIC; -- used to enable ALU
	I_ALU_A : in STD_LOGIC_VECTOR (5 downto 0); -- first input of ALU
	I_ALU_B : in STD_LOGIC_VECTOR (5 downto 0); -- second input of ALU
	O_ALU_Out : out STD_LOGIC_VECTOR (5 downto 0); -- output of ALU
	O_ALU_Flag : out STD_LOGIC -- bit that indicates bigger input, setting LSB of the register
	);
end sixbit_divider;

architecture Behavioral of sixbit_divider is

begin


end Behavioral;

