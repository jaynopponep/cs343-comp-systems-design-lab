----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:29:29 07/08/2024 
-- Design Name: 
-- Module Name:    DEC - Behavioral 
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

entity DEC is
	Port (
		I_DEC_EN : in STD_LOGIC;
		I_DEC_Opcode : in STD_LOGIC_VECTOR (5 downto 0);
		O_DEC_RegDst : out STD_LOGIC; 
		O_DEC_Jump : out STD_LOGIC;
		O_DEC_Beq : out STD_LOGIC;
		O_DEC_Bne : out STD_LOGIC; 
		O_DEC_MemRead : out STD_LOGIC; 
		O_DEC_MemtoReg : out STD_LOGIC;
		O_DEC_ALUOp : out STD_LOGIC_VECTOR (1 downto 0);
		O_DEC_MemWrite : out STD_LOGIC;
		O_DEC_ALUSrc : out STD_LOGIC; 
		O_DEC_RegWrite : out STD_LOGIC 
	);
end DEC;

architecture Behavioral of DEC is
begin 
	process (I_DEC_EN, I_DEC_Opcode)
		-- any variable assignments
	begin
		if I_DEC_EN = '1' then
			-- initialization:
			O_DEC_RegDst <= '0'; O_DEC_Jump <= '0'; O_DEC_Beq <= '0';
			O_DEC_Bne <= '0'; O_DEC_MemRead <= '0'; O_DEC_MemtoReg <= '0';
			O_DEC_MemWrite <= '0'; O_DEC_ALUSrc <= '0'; O_DEC_RegWrite <='0';
			if I_DEC_Opcode = "000000" then -- addu ONLY R-Type Operation
				O_DEC_ALUOp <= "10";
				O_DEC_RegDst <= '1';
				O_DEC_RegWrite <= '1'; -- changing values in the register
			elsif I_DEC_Opcode = "001001" then -- addiu (I-Type not R-Type)
				O_DEC_ALUOp <= "00";
				O_DEC_RegWrite <= '1'; -- changing values in register
				O_DEC_ALUSrc <= '1';
			elsif I_DEC_Opcode = "000100" then -- beq
				O_DEC_ALUOp <= "01";
				O_DEC_Beq <= '1';
			elsif I_DEC_Opcode = "100011" then -- lw (Read memory)
				O_DEC_ALUOp <= "00";
				O_DEC_MemRead <= '1'; 
				O_DEC_MemtoReg <= '1';
				O_DEC_ALUSrc <= '1'; -- indicates need for offset
				O_DEC_RegWrite <= '1';
			elsif I_DEC_Opcode = "000101" then -- bne
				O_DEC_ALUOp <= "01";
				O_DEC_Bne <= '1';
			elsif I_DEC_Opcode = "101011" then -- sw (Write to memory)
				O_DEC_ALUOp <= "00";
				O_DEC_MemWrite <= '1';
				O_DEC_ALUSrc <= '1';  -- indiciates need for offset
			elsif I_DEC_Opcode = "000010" then -- j (determined by Jump signal)
				O_DEC_ALUOp <= "11";
				O_DEC_Jump <= '1';
			end if;
		else 
			null;
		end if;
	end process;
end Behavioral;
-- Notes:
-- I-Type: 00
-- Lw/Sw: 00 
-- Jump: 00
-- Branch: 01
-- R-Type: 10

-- O_DEC_RegWrite => Used for writing anything in the register? 
