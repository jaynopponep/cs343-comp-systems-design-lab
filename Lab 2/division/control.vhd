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
use IEEE.NUMERIC_STD.ALL;

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
	type division_state is (INIT, SHIFT, SUBTRACT, UPDATE, STOP_OR_RESTART);
	signal state : division_state := INIT;
begin
	process(I_CTL_CLK)
	begin 
		if rising_edge(I_CTL_CLK) then
			if I_CTL_EN='1' then
				if state = INIT then state <= SHIFT;
				elsif state = SHIFT then state <= SUBTRACT;
				elsif state = SUBTRACT then state <= UPDATE;
				elsif state = UPDATE then state <= STOP_OR_RESTART;
				elsif state = STOP_OR_RESTART then
						state <= SHIFT;
				end if;
			else
				if state = INIT then state <= INIT;
				end if;
			end if;
		end if;
	end process;
	process(state)
	begin
		O_CTL_INI <= '0'; O_CTL_ALU <= '0'; O_CTL_RMD <= '0'; O_CTL_SLL <= '0'; 
		if state = INIT then
			O_CTL_INI <= '1'; O_CTL_ALU <= '0'; O_CTL_RMD <= '0'; O_CTL_SLL <= '0'; 
			-- initialization
		elsif state = SHIFT then
			O_CTL_SLL <= '1'; O_CTL_ALU <= '0'; O_CTL_INI<= '0'; O_CTL_RMD <='0'; 
			-- shift first
		elsif state = SUBTRACT then
			O_CTL_ALU <='1'; O_CTL_RMD <='0'; O_CTL_INI <='0'; O_CTL_SLL <= '0';
			-- subtraction
		elsif state = UPDATE then
			O_CTL_RMD <='1'; O_CTL_ALU <='0'; O_CTL_INI <='0'; O_CTL_SLL<= '0';
			-- update remainder
		elsif state = STOP_OR_RESTART then
			O_CTL_INI <= '0'; O_CTL_ALU <= '0'; O_CTL_RMD <= '0'; O_CTL_SLL <= '0'; 
		end if;
	end process;
end Behavioral;

