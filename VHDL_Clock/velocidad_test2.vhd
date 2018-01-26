--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:01:21 12/12/2014
-- Design Name:   
-- Module Name:   C:/Users/Tmicro 1/Desktop/hds/velocidad_test2.vhd
-- Project Name:  hds
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: velocidad
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
 
ENTITY velocidad_test2 IS
END velocidad_test2;
 
ARCHITECTURE behavior OF velocidad_test2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT velocidad
    PORT(
         clk : IN  std_logic;
         interr_izq : IN  std_logic;
         interr_der : IN  std_logic;
         k : OUT  std_logic_vector(0 to 25)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal interr_izq : std_logic := '0';
   signal interr_der : std_logic := '0';

 	--Outputs
   signal k : std_logic_vector(0 to 25);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: velocidad PORT MAP (
          clk => clk,
          interr_izq => interr_izq,
          interr_der => interr_der,
          k => k
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
		interr_izq<='0';
		interr_der<='0';
		wait for clk_period*100000;
		interr_izq<='0';
		interr_der<='1';
		wait for clk_period*100000;
		interr_izq<='1';
		interr_der<='0';
		wait for clk_period*100000;
		interr_izq<='1';
		interr_der<='1';
      -- insert stimulus here 

      wait;
   end process;

END;
