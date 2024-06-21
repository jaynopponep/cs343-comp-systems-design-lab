--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:21:42 06/12/2024
-- Design Name:   
-- Module Name:   C:/Users/cs343/Desktop/teroger/Lab1/mux_test.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux
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
 
ENTITY mux_test IS
END mux_test;
 
ARCHITECTURE behavior OF mux_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux
    PORT(
         D0 : IN  std_logic;
         D1 : IN  std_logic;
         D2 : IN  std_logic;
         D3 : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D0 : std_logic := '0';
   signal D1 : std_logic := '0';
   signal D2 : std_logic := '0';
   signal D3 : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux PORT MAP (
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3,
          S0 => S0,
          S1 => S1,
          Y => Y
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- Initialization
      D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '0';
		-- Select D0
		S1 <= '0'; S0 <= '0'; wait for 10 ns;
		D0 <= '1'; wait for 10 ns;
		D0 <= '0'; wait for 10 ns;
		-- Select D1
		S1 <= '0'; S0 <= '1'; wait for 10 ns;
		D1 <= '1'; wait for 10 ns;
		D1 <= '0'; wait for 10 ns;
		-- Select D2
		S1 <= '1'; S0 <= '0'; wait for 10 ns;
		D2 <= '1'; wait for 10 ns;
		D2 <= '0'; wait for 10 ns;
		-- Select D3
		S1 <= '1'; S0 <= '1'; wait for 10 ns;
		D3 <= '1'; wait for 10 ns;
		D3 <= '0'; wait for 10 ns;
		WAIT; -- WAIT FOREVER
   end process;

END;
