--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:18:16 12/12/2014
-- Design Name:   
-- Module Name:   C:/Users/Tmicro 1/Desktop/hds/visualiza_test1.vhd
-- Project Name:  hds
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Visualiza_Displays
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
 
ENTITY visualiza_test1 IS
END visualiza_test1;
 
ARCHITECTURE behavior OF visualiza_test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Visualiza_Displays
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         segment_Disp0 : IN  std_logic_vector(3 downto 0);
         segment_Disp1 : IN  std_logic_vector(3 downto 0);
         segment_Disp2 : IN  std_logic_vector(3 downto 0);
         segment_Disp3 : IN  std_logic_vector(3 downto 0);
         display : OUT  std_logic_vector(3 downto 0);
         segment : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal segment_Disp0 : std_logic_vector(3 downto 0) := (others => '0');
   signal segment_Disp1 : std_logic_vector(3 downto 0) := (others => '0');
   signal segment_Disp2 : std_logic_vector(3 downto 0) := (others => '0');
   signal segment_Disp3 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal display : std_logic_vector(3 downto 0);
   signal segment : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Visualiza_Displays PORT MAP (
          reset => reset,
          clk => clk,
          segment_Disp0 => segment_Disp0,
          segment_Disp1 => segment_Disp1,
          segment_Disp2 => segment_Disp2,
          segment_Disp3 => segment_Disp3,
          display => display,
          segment => segment
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

      -- insert stimulus here 

      wait;
   end process;

END;
