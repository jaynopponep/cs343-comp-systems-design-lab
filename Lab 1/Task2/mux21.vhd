----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:07:56 06/13/2024 
-- Design Name: 
-- Module Name:    mux21 - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity mux21 is
port ( D0: in STD_LOGIC;
		 D1: in STD_LOGIC;
		 S0: in STD_LOGIC;
		 Y: out STD_LOGIC);
end mux21;

architecture Behavioral of mux21 is
signal S0_L: STD_LOGIC;
signal S0_AND_D1, S0L_AND_D0: STD_LOGIC;
component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component; 
component AND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component OR2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
begin
	U1: INV port map (S0, S0_L);
	U2: AND2 port map (S0, D1, S0_AND_D1);
	U3: AND2 port map (S0_L, D0, S0L_AND_D0);
	U4: OR2 port map (S0_AND_D1, S0L_AND_D0, Y); 
end Behavioral;

