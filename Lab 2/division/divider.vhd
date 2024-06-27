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
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity divider is
	Port (
		I_CLK : in STD_LOGIC; -- for control
		I_EN : in STD_LOGIC; -- for control
		I_Dividend: in STD_LOGIC_VECTOR (5 downto 0); -- for alu
		I_Divisor : in STD_LOGIC_VECTOR (5 downto 0); -- for alu (not passed to register)
		O_Remainder: out STD_LOGIC_VECTOR (5 downto 0); -- for alu
		O_Quotient: out STD_LOGIC_VECTOR (5 downto 0) -- for alu 
		);
end divider;

architecture Behavioral of divider is
	signal CONTROL_TO_ALU, CONTROL_UPDATE_REG, CONTROL_SHIFT_REG, CONTROL_INIT_REG: STD_LOGIC;
	signal ALU_OUTPUT: STD_LOGIC_VECTOR (5 downto 0);
	signal ALU_FLAG: STD_LOGIC;
	signal HI_loop, quotient_loop: STD_LOGIC_VECTOR (5 downto 0);
	component control port (I_CTL_CLK, I_CTL_EN: in STD_LOGIC;
									O_CTL_ALU, O_CTL_RMD, O_CTL_SLL, O_CTL_INI: out STD_LOGIC); end component;
	component divider_alu port (I_ALU_EN: in STD_LOGIC;
										 I_ALU_A, I_ALU_B: in STD_LOGIC_VECTOR (5 downto 0);
										 O_ALU_Out: out STD_LOGIC_VECTOR (5 downto 0);  
										 O_ALU_Flag: out STD_LOGIC); end component;
	component div_register port (I_REG_Init, I_REG_Update, I_REG_SLL, I_REG_LSB: in STD_LOGIC;
										  I_REG_Div, I_REG_ALU: in STD_LOGIC_VECTOR (5 downto 0);
										  O_REG_HI, O_REG_LO: out STD_LOGIC_VECTOR (5 downto 0)); end component;
begin
	U1: control port map (I_CLK, I_EN, CONTROL_TO_ALU, CONTROL_UPDATE_REG, CONTROL_SHIFT_REG, CONTROL_INIT_REG);
	U2: divider_alu port map (CONTROL_TO_ALU, I_Divisor, HI_loop, ALU_OUTPUT, ALU_FLAG);
	U3: div_register port map (CONTROL_INIT_REG, CONTROL_UPDATE_REG, CONTROL_SHIFT_REG, ALU_FLAG, I_Dividend, ALU_OUTPUT, HI_loop, quotient_loop);
	O_Remainder <= HI_loop;
	O_Quotient <= quotient_loop;
end Behavioral;

