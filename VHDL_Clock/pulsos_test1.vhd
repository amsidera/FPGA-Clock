--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:04:09 12/12/2014
-- Design Name:   
-- Module Name:   C:/Users/Tmicro 1/Desktop/hds/pulsos_test1.vhd
-- Project Name:  hds
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pulsos
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
 
ENTITY pulsos_test1 IS
END pulsos_test1;
 
ARCHITECTURE behavior OF pulsos_test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pulsos
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         velocidad : IN  std_logic_vector(0 to 25);
         Pulse : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal velocidad : std_logic_vector(0 to 25) := (others => '0');

 	--Outputs
   signal Pulse : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pulsos PORT MAP (
          reset => reset,
          clk => clk,
          velocidad => velocidad,
          Pulse => Pulse
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      wait for clk_period*10;
		reset<='1';
		wait for clk_period*10;
		reset<='0';
		wait for clk_period*10;
		velocidad<="00000000010000000000000000";
      -- insert stimulus here 

      wait;
   end process;

END;
