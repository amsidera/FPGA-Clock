--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:56:40 12/12/2014
-- Design Name:   
-- Module Name:   C:/Users/Tmicro 1/Desktop/hds/modo_ajustefecha_test1.vhd
-- Project Name:  hds
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: modo_ajustefecha
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
 
ENTITY modo_ajustefecha_test1 IS
END modo_ajustefecha_test1;
 
ARCHITECTURE behavior OF modo_ajustefecha_test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modo_ajustefecha
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         btn_day : IN  std_logic;
         btn_month : IN  std_logic;
         u_day_out : OUT  std_logic_vector(3 downto 0);
         d_day_out : OUT  std_logic_vector(3 downto 0);
         u_month_out : OUT  std_logic_vector(3 downto 0);
         d_month_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal btn_day : std_logic := '0';
   signal btn_month : std_logic := '0';

 	--Outputs
   signal u_day_out : std_logic_vector(3 downto 0);
   signal d_day_out : std_logic_vector(3 downto 0);
   signal u_month_out : std_logic_vector(3 downto 0);
   signal d_month_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modo_ajustefecha PORT MAP (
          reset => reset,
          clk => clk,
          btn_day => btn_day,
          btn_month => btn_month,
          u_day_out => u_day_out,
          d_day_out => d_day_out,
          u_month_out => u_month_out,
          d_month_out => d_month_out
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
		btn_day<='1';
		wait for clk_period*1;
		btn_day<='0';
		wait for clk_period*1;
		btn_month<='1';
		wait for clk_period*1;
		btn_month<='0';
		wait for clk_period*1;
		btn_day<='1';
		wait for clk_period*1;
		btn_day<='0';
		wait for clk_period*1;
		btn_month<='1';
		wait for clk_period*1;
		btn_month<='0';

      wait;
   end process;

END;
