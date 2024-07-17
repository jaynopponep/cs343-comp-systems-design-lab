----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:36:03 07/17/2024 
-- Design Name: 
-- Module Name:    REG - Behavioral 
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
USE STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.all;

entity REG is
	Port (
		I_REG_EN : in STD_LOGIC;
		I_REG_WE : in STD_LOGIC;
		I_REG_SEL_RS : in STD_LOGIC_VECTOR (4 downto 0);
		I_REG_SEL_RT : in STD_LOGIC_VECTOR (4 downto 0);
		I_REG_SEL_RD : in STD_LOGIC_VECTOR (4 downto 0);
		I_REG_DATA_RD : in STD_LOGIC_VECTOR (31 downto 0);
		O_REG_DATA_A : out STD_LOGIC_VECTOR (31 downto 0);
		O_REG_DATA_B : out STD_LOGIC_VECTOR (31 downto 0)
	);
end REG;

architecture Behavioral of REG is
	type buf32x32 is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
	signal mem : buf32x32;
	impure function init_buf(FileName : in string) return buf32x32 is
		constant LINE_NUM : integer := 31;
		file fp: text;
		variable temp_mem : buf32x32 := (others => x"00000000");
		variable line_cache : line;
		variable byte_cache : bit_vector (31 downto 0) := x"00000000";
	begin	
		file_open(fp, FileName, read_mode);
			for i in 0 to LINE_NUM loop
				if endfile(fp) then
					exit;
				else
					readline(fp, line_cache);
					read(line_cache, byte_cache);
					temp_mem(i) := to_stdlogicvector(byte_cache);
				end if;
			end loop;
			file_close(fp);
			return temp_mem;
	end function;
	begin
		process (I_REG_EN, I_REG_WE, I_REG_SEL_RS, I_REG_SEL_RT, I_REG_SEL_RD, I_REG_DATA_RD)
		begin
		if I_REG_EN = '1' then
				O_REG_DATA_A <= mem(to_integer(unsigned(I_REG_SEL_RS)));
				O_REG_DATA_B <= mem(to_integer(unsigned(I_REG_SEL_RT)));
			if I_REG_WE = '1' then
				mem <= init_buf("REG_INIT.txt");
				mem(to_integer(unsigned(I_REG_SEL_RD))) <= I_REG_DATA_RD;
			end if;
		end if;
	end process;
end Behavioral;

