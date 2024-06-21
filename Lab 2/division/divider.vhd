----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:51:00 06/20/2024 
-- Design Name: 
-- Module Name:    divider - Behavioral 
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

entity divider is
	Port (
		I_CLK : in STD_LOGIC;
		I_EN : in STD_LOGIC;
		I_Dividend: in STD_LOGIC_VECTOR (5 downto 0);
		I_Divisor : in STD_LOGIC_VECTOR (5 downto 0);
		O_Remainder: in STD_LOGIC_VECTOR (5 downto 0);
		O_Quotient: in STD_LOGIC_VECTOR (5 downto 0)
		);
end divider;

architecture Behavioral of divider is

begin


end Behavioral;

