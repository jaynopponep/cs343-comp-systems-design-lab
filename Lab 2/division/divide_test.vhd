--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:57:34 06/24/2024
-- Design Name:   
-- Module Name:   E:/School/Lab 2/division/divide_test.vhd
-- Project Name:  division
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divider
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
 
ENTITY divide_test IS
END divide_test;
 
ARCHITECTURE behavior OF divide_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider
    PORT(
         I_CLK : IN  std_logic;
         I_EN : IN  std_logic;
         I_Dividend : IN  std_logic_vector(5 downto 0);
         I_Divisor : IN  std_logic_vector(5 downto 0);
         O_Remainder : IN  std_logic_vector(5 downto 0);
         O_Quotient : IN  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_CLK : std_logic := '0';
   signal I_EN : std_logic := '0';
   signal I_Dividend : std_logic_vector(5 downto 0) := (others => '0');
   signal I_Divisor : std_logic_vector(5 downto 0) := (others => '0');
   signal O_Remainder : std_logic_vector(5 downto 0) := (others => '0');
   signal O_Quotient : std_logic_vector(5 downto 0) := (others => '0');

   -- Clock period definitions
   constant I_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider PORT MAP (
          I_CLK => I_CLK,
          I_EN => I_EN,
          I_Dividend => I_Dividend,
          I_Divisor => I_Divisor,
          O_Remainder => O_Remainder,
          O_Quotient => O_Quotient
        );

   -- Clock process definitions
   I_CLK_process :process
   begin
		I_CLK <= '0';
		wait for I_CLK_period/2;
		I_CLK <= '1';
		wait for I_CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		-- hold reset state for 10 ns.
		wait for 10 ns;
		-- insert stimulus here:
		I_Dividend <= "101011";
		I_Divisor <= "001101";
		I_EN <= '1';
		-- stop the simulation
		wait;
   end process;
END;
