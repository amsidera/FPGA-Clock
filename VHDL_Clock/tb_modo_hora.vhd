--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:22:33 01/14/2015
-- Design Name:   
-- Module Name:   C:/Users/Tmicro 3/Desktop/ESTE!!/ESTE!!/tb_modo_hora.vhd
-- Project Name:  hds
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: modohora
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
 
ENTITY tb_modo_hora IS
END tb_modo_hora;
 
ARCHITECTURE behavior OF tb_modo_hora IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modohora
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         pulso : IN  std_logic;
         u_hora_in : IN  std_logic_vector(3 downto 0);
         d_hora_in : IN  std_logic_vector(3 downto 0);
         u_min_in : IN  std_logic_vector(3 downto 0);
         d_min_in : IN  std_logic_vector(3 downto 0);
         u_day_in : IN  std_logic_vector(3 downto 0);
         d_day_in : IN  std_logic_vector(3 downto 0);
         u_month_in : IN  std_logic_vector(3 downto 0);
         d_month_in : IN  std_logic_vector(3 downto 0);
         u_hora_out : OUT  std_logic_vector(3 downto 0);
         d_hora_out : OUT  std_logic_vector(3 downto 0);
         u_min_out : OUT  std_logic_vector(3 downto 0);
         d_min_out : OUT  std_logic_vector(3 downto 0);
         u_day_out : OUT  std_logic_vector(3 downto 0);
         d_day_out : OUT  std_logic_vector(3 downto 0);
         u_month_out : OUT  std_logic_vector(3 downto 0);
         d_month_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal pulso : std_logic := '0';
   signal u_hora_in : std_logic_vector(3 downto 0) := (others => '0');
   signal d_hora_in : std_logic_vector(3 downto 0) := (others => '0');
   signal u_min_in : std_logic_vector(3 downto 0) := (others => '0');
   signal d_min_in : std_logic_vector(3 downto 0) := (others => '0');
   signal u_day_in : std_logic_vector(3 downto 0) := (others => '0');
   signal d_day_in : std_logic_vector(3 downto 0) := (others => '0');
   signal u_month_in : std_logic_vector(3 downto 0) := (others => '0');
   signal d_month_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal u_hora_out : std_logic_vector(3 downto 0);
   signal d_hora_out : std_logic_vector(3 downto 0);
   signal u_min_out : std_logic_vector(3 downto 0);
   signal d_min_out : std_logic_vector(3 downto 0);
   signal u_day_out : std_logic_vector(3 downto 0);
   signal d_day_out : std_logic_vector(3 downto 0);
   signal u_month_out : std_logic_vector(3 downto 0);
   signal d_month_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modohora PORT MAP (
          reset => reset,
          clk => clk,
          pulso => pulso,
          u_hora_in => u_hora_in,
          d_hora_in => d_hora_in,
          u_min_in => u_min_in,
          d_min_in => d_min_in,
          u_day_in => u_day_in,
          d_day_in => d_day_in,
          u_month_in => u_month_in,
          d_month_in => d_month_in,
          u_hora_out => u_hora_out,
          d_hora_out => d_hora_out,
          u_min_out => u_min_out,
          d_min_out => d_min_out,
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

      -- insert stimulus here 
		wait for clk_period*10;
		reset<='1';
		wait for clk_period*10;
		reset<='0';

      wait;
   end process;

END;
