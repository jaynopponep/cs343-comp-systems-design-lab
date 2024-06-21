--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : alu_schematic.vhf
-- /___/   /\     Timestamp : 06/13/2024 13:19:15
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl "C:/Users/cs343/Desktop/Lab 1/Task2/alu_schematic.vhf" -w "C:/Users/cs343/Desktop/Lab 1/Task2/alu_schematic.sch"
--Design Name: alu_schematic
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M4_1E_HXILINX_alu_schematic -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_alu_schematic is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_alu_schematic;

architecture M4_1E_HXILINX_alu_schematic_V of M4_1E_HXILINX_alu_schematic is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_alu_schematic_V;
----- CELL M2_1_HXILINX_alu_schematic -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_alu_schematic is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_alu_schematic;

architecture M2_1_HXILINX_alu_schematic_V of M2_1_HXILINX_alu_schematic is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_alu_schematic_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity alu_schematic is
   port ( OUTPUT : out   std_logic);
end alu_schematic;

architecture BEHAVIORAL of alu_schematic is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal A                     : std_logic;
   signal A_INVERT              : std_logic;
   signal B                     : std_logic;
   signal B_INVERT              : std_logic;
   signal CARRY_IN              : std_logic;
   signal CARRY_OUT             : std_logic;
   signal OP0                   : std_logic;
   signal OP1                   : std_logic;
   signal XLXN_5                : std_logic;
   signal XLXN_6                : std_logic;
   signal XLXN_33               : std_logic;
   signal XLXN_40               : std_logic;
   signal XLXN_41               : std_logic;
   signal XLXN_42               : std_logic;
   signal XLXN_44               : std_logic;
   signal XLXN_45               : std_logic;
   signal XLXN_46               : std_logic;
   signal XLXI_20_D3_openSignal : std_logic;
   signal XLXI_20_E_openSignal  : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component M2_1_HXILINX_alu_schematic
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component XOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR3 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component M4_1E_HXILINX_alu_schematic
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_3 : label is "XLXI_3_0";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_1";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_2";
begin
   XLXI_1 : INV
      port map (I=>A,
                O=>XLXN_5);
   
   XLXI_2 : INV
      port map (I=>B,
                O=>XLXN_6);
   
   XLXI_3 : M2_1_HXILINX_alu_schematic
      port map (D0=>B,
                D1=>XLXN_6,
                S0=>B_INVERT,
                O=>XLXN_33);
   
   XLXI_4 : M2_1_HXILINX_alu_schematic
      port map (D0=>A,
                D1=>XLXN_5,
                S0=>A_INVERT,
                O=>CARRY_IN);
   
   XLXI_5 : AND2
      port map (I0=>XLXN_33,
                I1=>CARRY_IN,
                O=>XLXN_44);
   
   XLXI_6 : OR2
      port map (I0=>XLXN_33,
                I1=>CARRY_IN,
                O=>XLXN_45);
   
   XLXI_10 : AND2
      port map (I0=>CARRY_IN,
                I1=>CARRY_IN,
                O=>XLXN_40);
   
   XLXI_11 : AND2
      port map (I0=>XLXN_33,
                I1=>CARRY_IN,
                O=>XLXN_41);
   
   XLXI_12 : AND2
      port map (I0=>XLXN_33,
                I1=>CARRY_IN,
                O=>XLXN_42);
   
   XLXI_17 : XOR3
      port map (I0=>XLXN_33,
                I1=>CARRY_IN,
                I2=>CARRY_IN,
                O=>XLXN_46);
   
   XLXI_19 : OR3
      port map (I0=>XLXN_42,
                I1=>XLXN_41,
                I2=>XLXN_40,
                O=>CARRY_OUT);
   
   XLXI_20 : M4_1E_HXILINX_alu_schematic
      port map (D0=>XLXN_44,
                D1=>XLXN_45,
                D2=>XLXN_46,
                D3=>XLXI_20_D3_openSignal,
                E=>XLXI_20_E_openSignal,
                S0=>OP0,
                S1=>OP1,
                O=>OUTPUT);
   
end BEHAVIORAL;


