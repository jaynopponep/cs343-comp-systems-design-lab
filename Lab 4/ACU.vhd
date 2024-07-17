----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:39:32 07/09/2024 
-- Design Name: 
-- Module Name:    ACU - Behavioral 
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

entity ACU is
	Port (
		I_ACU_ALUOp : in STD_LOGIC_VECTOR (1 downto 0);
		I_ACU_Funct : in STD_LOGIC_VECTOR (5 downto 0);
		O_ACU_ATL: out STD_LOGIC_VECTOR (3 downto 0)
	);
end ACU;

architecture Behavioral of ACU is

begin
	process(I_ACU_ALUOp, I_ACU_Funct)
	begin 
		if I_ACU_ALUOp = "01" then 
			O_ACU_ATL <= "0110";
		elsif I_ACU_ALUOp = "10" or I_ACU_ALUOp = "00" then
			O_ACU_ATL <= "0010";
		else -- jump condition or initialization
			O_ACU_ATL <= "0000";
		end if;
	end process;
end Behavioral;

