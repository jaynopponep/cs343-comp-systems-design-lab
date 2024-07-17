----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:42:16 07/09/2024 
-- Design Name: 
-- Module Name:    Test_Module - Behavioral 
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

entity Test_Module is
	Port (
		I_EN : in STD_LOGIC;
		I_Instr : in STD_LOGIC_VECTOR (31 downto 0);
		O_RegDst : out STD_LOGIC;
		O_Jump : out STD_LOGIC;
		O_Beq : out STD_LOGIC;
		O_Bne : out STD_LOGIC;
		O_MemRead : out STD_LOGIC;
		O_MemtoReg : out STD_LOGIC;
		O_MemWrite : out STD_LOGIC;
		O_ALUSrc : out STD_LOGIC;
		O_RegWrite : out STD_LOGIC;
		O_ALUCtl : out STD_LOGIC_VECTOR (3 downto 0)
	);
end Test_Module;
	
architecture Behavioral of Test_Module is
	signal OPCODE: STD_LOGIC_VECTOR (5 downto 0);
	signal ALUOP: STD_LOGIC_VECTOR (1 downto 0);
	component DEC port (I_DEC_EN: in STD_LOGIC;
							  I_DEC_Opcode: in STD_LOGIC_VECTOR (5 downto 0);
							  O_DEC_RegDst, O_DEC_Jump, O_DEC_Beq, O_DEC_Bne, 
							  O_DEC_MemRead, O_DEC_MemtoReg: out STD_LOGIC;
							  O_DEC_ALUOp: out STD_LOGIC_VECTOR (1 downto 0);
							  O_DEC_MemWrite, O_DEC_ALUSrc, 
							  O_DEC_RegWrite: out STD_LOGIC); end component;
	component ACU port (I_ACU_ALUOp: in STD_LOGIC_VECTOR (1 downto 0);
							  I_ACU_Funct: in STD_LOGIC_VECTOR (5 downto 0);
							  O_ACU_ATL: out STD_LOGIC_VECTOR (3 downto 0)); 
							  end component;
begin
	U1: DEC port map (I_EN, I_Instr(31 downto 26), O_RegDst, 
							O_Jump, O_Beq, O_Bne, O_MemRead, O_MemtoReg, 
							ALUOP, O_MemWrite, O_ALUSrc, O_RegWrite);
	U2: ACU port map (ALUOP, I_Instr(5 downto 0), O_ALUCtl);
end Behavioral;

