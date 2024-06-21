--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:21:21 06/13/2024
-- Design Name:   
-- Module Name:   E:/Lab 1/Task3/eight_bit_testbench.vhd
-- Project Name:  Task3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eight_bit_adder
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
 
ENTITY eight_bit_testbench IS
END eight_bit_testbench;
 
ARCHITECTURE behavior OF eight_bit_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eight_bit_adder
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         A_inv : IN  std_logic;
         B : IN  std_logic_vector(7 downto 0);
         B_inv : IN  std_logic;
         CarryIn : IN  std_logic;
         OP : IN  std_logic_vector(1 downto 0);
         CarryOut : OUT  std_logic;
         Result : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal A_inv : std_logic := '0';
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal B_inv : std_logic := '0';
   signal CarryIn : std_logic := '0';
   signal OP : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal CarryOut : std_logic;
   signal Result : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eight_bit_adder PORT MAP (
          A => A,
          A_inv => A_inv,
          B => B,
          B_inv => B_inv,
          CarryIn => CarryIn,
          OP => OP,
          CarryOut => CarryOut,
          Result => Result
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		-- A AND B
		OP <= "00"; CarryIn <= '0'; A_inv <= '0'; B_inv <= '0';
		A <= "01111000"; B <= "00011110"; wait for 40 ns;
		-- A OR B
		OP <= "01"; CarryIn <= '0'; A_inv <= '0'; B_inv <= '0';
		A <= "01111000"; B <= "00011110"; wait for 40 ns;
		-- A + B
		OP <= "10"; CarryIn <= '0'; A_inv <= '0'; B_inv <= '0';
		A <= "00001111"; B <= "00111000"; wait for 40 ns;
		-- A - B
		OP <= "10"; CarryIn <= '1'; A_inv <= '0'; B_inv <= '1';
		A <= "01010101"; B <= "00101010"; wait for 40 ns;
		wait;
   end process;

END;
