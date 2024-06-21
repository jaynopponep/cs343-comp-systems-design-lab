----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:48:51 06/20/2024 
-- Design Name: 
-- Module Name:    control - Behavioral 
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

entity control is
	Port (
		I_CTL_CLK : in STD_LOGIC; -- clock driving control unit
		I_CTL_EN : in STD_LOGIC; -- signal enabling control unit
		O_CTL_ALU : out STD_LOGIC; -- control signal enabling ALU
		O_CTL_RMD : out STD_lOGIC; -- control signal triggering update register
		O_CTL_SLL : out STD_LOGIC; -- control signal triggering shift register
		O_CTL_INI : out STD_LOGIC -- control signal triggering init register
		);
end control;

architecture Behavioral of control is

begin
	process(I_CTL_CLK, I_CTL_EN)
	begin 
	-- this control will only be triggered when we have to shift and update the register
	-- basically when the ALU computes that the subtraction is successful, or B-A > 0
	-- which will require for the register to be updated. 
		if I_CTL_CLK='1' and I_CTL_EN='1' then
			O_CTL_ALU <= '1';
			O_CTL_RMD <= '1';
			O_CTL_SLL <= '1';
			O_CTL_INI <= '1';
			-- Two cases: 
			-- Subtraction: Shift register to left && overwrite quotient with difference
			-- cannot subtract: Shift register to left
		else null;
		end if;
	end process;
end Behavioral;

