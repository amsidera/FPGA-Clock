--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:08:43 12/12/2014
-- Design Name:   
-- Module Name:   C:/Users/Tmicro 1/Desktop/hds/crono_test1.vhd
-- Project Name:  hds
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: crono
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
 
ENTITY crono_test1 IS
END crono_test1;
 
ARCHITECTURE behavior OF crono_test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT crono
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         pulse : IN  std_logic;
         btn_lapso : IN  std_logic;
         btn_reset : IN  std_logic;
         btn_startstop : IN  std_logic;
         dp_in : OUT  std_logic;
         unidades_vis : OUT  std_logic_vector(3 downto 0);
         decenas_vis : OUT  std_logic_vector(3 downto 0);
         centenas_vis : OUT  std_logic_vector(3 downto 0);
         mil_vis : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal pulse : std_logic := '0';
   signal btn_lapso : std_logic := '0';
   signal btn_reset : std_logic := '0';
   signal btn_startstop : std_logic := '0';

 	--Outputs
   signal dp_in : std_logic;
   signal unidades_vis : std_logic_vector(3 downto 0);
   signal decenas_vis : std_logic_vector(3 downto 0);
   signal centenas_vis : std_logic_vector(3 downto 0);
   signal mil_vis : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: crono PORT MAP (
          clk => clk,
          reset => reset,
          pulse => pulse,
          btn_lapso => btn_lapso,
          btn_reset => btn_reset,
          btn_startstop => btn_startstop,
          dp_in => dp_in,
          unidades_vis => unidades_vis,
          decenas_vis => decenas_vis,
          centenas_vis => centenas_vis,
          mil_vis => mil_vis
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
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		btn_startstop<='1';
		wait for clk_period*1;
		pulse<='1';
		btn_startstop<='0';
				wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		btn_lapso<='1';
		wait for clk_period*1;
		pulse<='1';
		btn_lapso<='0';
				wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		wait for clk_period*1;
		pulse<='1';
		wait for clk_period*1;
		pulse<='0';
		btn_reset<='1';
		wait for clk_period*1;
		pulse<='1';
		btn_reset<='0';
		
      -- insert stimulus here 

      wait;
   end process;

END;
