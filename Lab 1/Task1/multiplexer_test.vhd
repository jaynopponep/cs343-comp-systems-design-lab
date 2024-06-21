-- Vhdl test bench created from schematic C:\Users\cs343\Desktop\teroger\Lab1\multiplexer.sch - Wed Jun 12 12:53:26 2024
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY multiplexer_multiplexer_sch_tb IS
END multiplexer_multiplexer_sch_tb;
ARCHITECTURE behavioral OF multiplexer_multiplexer_sch_tb IS 

   COMPONENT multiplexer
   PORT( );
   END COMPONENT;


BEGIN

   UUT: multiplexer PORT MAP(
		
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
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
   END PROCESS;
-- *** End Test Bench - User Defined Section ***
END;
