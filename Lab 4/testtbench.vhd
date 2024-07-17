--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:19:41 07/09/2024
-- Design Name:   
-- Module Name:   E:/School/Lab4/testtbench.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Test_Module
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY testtbench IS
END testtbench;
ARCHITECTURE behavior OF testtbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Test_Module
    PORT(
         I_EN : IN  std_logic;
         I_Instr : IN  std_logic_vector(31 downto 0);
         O_RegDst : OUT  std_logic;
         O_Jump : OUT  std_logic;
         O_Beq : OUT  std_logic;
         O_Bne : OUT  std_logic;
         O_MemRead : OUT  std_logic;
         O_MemtoReg : OUT  std_logic;
         O_MemWrite : OUT  std_logic;
         O_ALUSrc : OUT  std_logic;
         O_RegWrite : OUT  std_logic;
         O_ALUCtl : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_EN : std_logic := '0';
   signal I_Instr : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_RegDst : std_logic;
   signal O_Jump : std_logic;
   signal O_Beq : std_logic;
   signal O_Bne : std_logic;
   signal O_MemRead : std_logic;
   signal O_MemtoReg : std_logic;
   signal O_MemWrite : std_logic;
   signal O_ALUSrc : std_logic;
   signal O_RegWrite : std_logic;
   signal O_ALUCtl : std_logic_vector(3 downto 0);

 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Test_Module PORT MAP (
          I_EN => I_EN,
          I_Instr => I_Instr,
          O_RegDst => O_RegDst,
          O_Jump => O_Jump,
          O_Beq => O_Beq,
          O_Bne => O_Bne,
          O_MemRead => O_MemRead,
          O_MemtoReg => O_MemtoReg,
          O_MemWrite => O_MemWrite,
          O_ALUSrc => O_ALUSrc,
          O_RegWrite => O_RegWrite,
          O_ALUCtl => O_ALUCtl
        );



   -- Stimulus process
   stim_proc: process
   begin		
      I_EN <= '0';
		wait for 20 ns;
		I_EN <= '1';
		I_Instr <= X"012a5821"; 
		wait for 20 ns;
		I_Instr <= X"24090001";
		wait for 20 ns;
		I_Instr <= X"12120004";
		wait for 20 ns;
		I_Instr <= X"8e080000";
		wait for 20 ns;
		I_Instr <= X"15acfff9";
		wait for 20 ns;
		I_Instr <= X"ae08fffc";
		wait for 20 ns;
		I_Instr <= X"08100005";
		wait;
   end process;

END;
