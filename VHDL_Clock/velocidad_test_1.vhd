--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:57:40 12/12/2014
-- Design Name:   
-- Module Name:   C:/Users/Tmicro 1/Desktop/hds/velocidad_test_1.vhd
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
 
ENTITY velocidad_test_1 IS
END velocidad_test_1;
 
ARCHITECTURE behavior OF velocidad_test_1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT velocidad
    PORT(
         interr_izq : IN  std_logic;
         interr_der : IN  std_logic;
         k : OUT  std_logic_vector(0 to 25)
        );
    END COMPONENT;
    

   --Inputs
   signal interr_izq : std_logic := '0';
   signal interr_der : std_logic := '0';

 	--Outputs
   signal k : std_logic_vector(0 to 25);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: velocidad PORT MAP (
          interr_izq => interr_izq,
          interr_der => interr_der,
          k => k
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;
		interr_izq<='0';
		interr_der<='0';
		
		 wait for <clock>_period*10000000;
		interr_izq<='0';
		interr_der<='1';
		
		 wait for <clock>_period*10000000;
		interr_izq<='1';
		interr_der<='0';
		
		 wait for <clock>_period*10000000;
		interr_izq<='1';
		interr_der<='1';
		

      -- insert stimulus here 

      wait;
   end process;

END;
