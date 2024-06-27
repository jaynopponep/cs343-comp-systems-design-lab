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
		I_REG_Init : in STD_LOGIC; -- control signal->reg for init
		I_REG_Update: in STD_LOGIC; -- control signal->reg for update
		I_REG_SLL : in STD_LOGIC; -- control signal->reg for shift
		I_REG_LSB : in STD_LOGIC; -- O_ALU_Flag from ALU
		I_REG_Div : in STD_LOGIC_VECTOR (5 downto 0); -- dividend sourced from within here
		I_REG_ALU : in STD_LOGIC_VECTOR (5 downto 0); -- new remainder from ALU
		O_REG_HI : out STD_LOGIC_VECTOR (5 downto 0); -- remainder
		O_REG_LO : out STD_LOGIC_VECTOR (5 downto 0) -- quotient = I_REG_Div
		);
end div_register;

architecture Behavioral of div_register is
	signal temp_hi, temp_lo : STD_LOGIC_VECTOR (5 downto 0);
	signal flag : std_logic;
begin
	process(I_REG_Init, I_REG_Update, I_REG_SLL, I_REG_LSB, I_REG_Div, I_REG_ALU)

	begin
		flag <= I_REG_LSB;
		if I_REG_Init='1' then 
			temp_hi <= "000000";
			temp_lo <= I_REG_Div;
			flag <= '0';
		elsif I_REG_SLL='1' then 
			if flag = '0' then
				temp_hi <= temp_hi(4 downto 0) & temp_lo(5);
				temp_lo <= temp_lo(4 downto 0) & '0';
			else
				temp_hi <= I_REG_ALU(4 downto 0) & temp_lo(5);
				temp_lo <= temp_lo(4 downto 0) & '1';
			end if;
		elsif I_REG_Update='1' then 
			temp_hi <= I_REG_ALU;
			if flag = '0' then
				temp_lo <= temp_lo;
			else
				temp_lo <= temp_lo(5 downto 1) & '1';
			end if;
		end if;
	end process;
	O_REG_HI <= temp_hi;
	O_REG_LO <= temp_lo;
end Behavioral;

