----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:46:11 06/20/2024 
-- Design Name: 
-- Module Name:    div_register - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity div_register is
	Port (
		I_REG_Init : in STD_LOGIC; -- control signal for register value init
		I_REG_Update: in STD_LOGIC; -- control signal for register update
		I_REG_SLL : in STD_LOGIC; -- control signal for perform shift on register
		I_REG_LSB : in STD_LOGIC; -- set LSB of reg, this will come in as O_ALU_Flag from the divider_alu
		I_REG_Div : in STD_LOGIC_VECTOR (5 downto 0); -- pass Dividend to reg -> LO
		I_REG_ALU : in STD_LOGIC_VECTOR (5 downto 0); -- pass ALU output to reg (NEW HI VALUE/REMAINDER) -> HI (OBVIOUSLY THIS COMES FROM THE ALU)
		O_REG_HI : out STD_LOGIC_VECTOR (5 downto 0); -- output of HI
		O_REG_LO : out STD_LOGIC_VECTOR (5 downto 0) -- output of LO
		);
end div_register;

-- I am assuming the I_REG_Div will be given directly as an input in the divider high level function?

architecture Behavioral of div_register is

begin
	process(I_REG_Init, I_REG_Update, I_REG_SLL, I_REG_LSB, I_REG_Div, I_REG_ALU)

	begin
		if I_REG_Init='1' then -- for the case of initialization
			I_REG_ALU <= "000000";
			O_REG_HI <= I_REG_ALU;
			O_REG_LO <= I_REG_Div;
		elsif I_REG_Update='1' and I_REG_SLL='1' then -- for the case of updating + shifting, indicating success (OVERWRITE)
			O_REG_HI <= I_REG_ALU;
			O_REG_LO <= I_REG_Div(4 downto 0) & I_REG_LSB;
		else -- final case: normal shifting (NO OVERWRITE)
			O_REG_HI <= I_REG_ALU(4 downto 0) & I_REG_Div(5);
			O_REG_LO <= I_REG_Div(4 downto 0) & I_REG_LSB;
		end if;
	end process;
end Behavioral;

