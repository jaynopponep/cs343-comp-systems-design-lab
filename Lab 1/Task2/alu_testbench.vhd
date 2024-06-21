--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:19:17 06/13/2024
-- Design Name:   
-- Module Name:   C:/Users/cs343/Desktop/Lab 1/Task2/alu_testbench.vhd
-- Project Name:  Task2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: one_bit_alu
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alu_testbench IS
END alu_testbench;
 
ARCHITECTURE behavior OF alu_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT one_bit_alu
    PORT(
         A : IN  std_logic;
         A_inv : IN  std_logic;
         B : IN  std_logic;
         B_inv : IN  std_logic;
         CarryIn : IN  std_logic;
         OP0 : IN  std_logic;
         OP1 : IN  std_logic;
         CarryOut : OUT  std_logic;
         Result : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal A_inv : std_logic := '0';
   signal B : std_logic := '0';
   signal B_inv : std_logic := '0';
   signal CarryIn : std_logic := '0';
   signal OP0 : std_logic := '0';
   signal OP1 : std_logic := '0';

 	--Outputs
   signal CarryOut : std_logic;
   signal Result : std_logic;
 
BEGIN
   uut: one_bit_alu PORT MAP (
          A => A,
          A_inv => A_inv,
          B => B,
          B_inv => B_inv,
          CarryIn => CarryIn,
          OP0 => OP0,
          OP1 => OP1,
          CarryOut => CarryOut,
          Result => Result
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
	-- A AND B
	A_inv <= '0'; B_inv <= '0'; OP1 <= '0'; OP0 <= '0'; CarryIn <= '0';
	A <= '0'; B <= '0'; wait for 10 ns;
	A <= '0'; B <= '1'; wait for 10 ns;
	A <= '1'; B <= '0'; wait for 10 ns;
	A <= '1'; B <= '1'; wait for 40 ns;
	-- A OR B
	A_inv <= '0'; B_inv <= '0'; OP1 <= '0'; OP0 <= '1'; CarryIn <= '0';
	A <= '0'; B <= '0'; wait for 10 ns;
	A <= '0'; B <= '1'; wait for 10 ns;
	A <= '1'; B <= '0'; wait for 10 ns;
	A <= '1'; B <= '1'; wait for 40 ns;
	-- A + B
	-- CarryIn = '0'
	A_inv <= '0'; B_inv <= '0'; OP1 <= '1'; OP0 <= '0'; CarryIn <= '0';
	A <= '0'; B <= '0'; wait for 10 ns;
	A <= '0'; B <= '1'; wait for 10 ns;
	A <= '1'; B <= '0'; wait for 10 ns;
	A <= '1'; B <= '1'; wait for 40 ns;
	-- CarryIn = '1'
	A_inv <= '0'; B_inv <= '0'; OP1 <= '1'; OP0 <= '0'; CarryIn <= '1';
	A <= '0'; B <= '0'; wait for 10 ns;
	A <= '0'; B <= '1'; wait for 10 ns;
	A <= '1'; B <= '0'; wait for 10 ns;
	A <= '1'; B <= '1'; wait for 40 ns;
	-- A - B
	A_inv <= '0'; B_inv <= '1'; OP1 <= '1'; OP0 <= '0'; CarryIn <= '1';
	A <= '0'; B <= '0'; wait for 10 ns;
	A <= '0'; B <= '1'; wait for 10 ns;
	A <= '1'; B <= '0'; wait for 10 ns;
	A <= '1'; B <= '1'; wait for 40 ns;
	wait;
   end process;

END;
