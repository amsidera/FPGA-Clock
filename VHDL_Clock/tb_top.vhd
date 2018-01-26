--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:10:30 01/15/2015
-- Design Name:   
-- Module Name:   C:/Users/Tmicro 3/Desktop/definitivo_11068_11257/ESTE!!/tb_top.vhd
-- Project Name:  hds
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Modos
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
 
ENTITY tb_top IS
END tb_top;
 
ARCHITECTURE behavior OF tb_top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Modos
    PORT(
         clk : IN  std_logic;
         btnuno : IN  std_logic;
         btndos : IN  std_logic;
         btntres : IN  std_logic;
         btncuatro : IN  std_logic;
         led_hora : OUT  std_logic;
         led_alarma : OUT  std_logic;
         led_crono : OUT  std_logic;
         led_eggtimer : OUT  std_logic;
         led_ajuste : OUT  std_logic;
         led_horafecha : OUT  std_logic;
         led_alarmaon : OUT  std_logic;
         led_alarmasonando : OUT  std_logic;
         interruptor_reset : IN  std_logic;
         interruptor_izq : IN  std_logic;
         interruptor_der : IN  std_logic;
         dp : OUT  std_logic;
         display : OUT  std_logic_vector(3 downto 0);
         segmentos : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal btnuno : std_logic := '0';
   signal btndos : std_logic := '0';
   signal btntres : std_logic := '0';
   signal btncuatro : std_logic := '0';
   signal interruptor_reset : std_logic := '0';
   signal interruptor_izq : std_logic := '0';
   signal interruptor_der : std_logic := '0';

 	--Outputs
   signal led_hora : std_logic;
   signal led_alarma : std_logic;
   signal led_crono : std_logic;
   signal led_eggtimer : std_logic;
   signal led_ajuste : std_logic;
   signal led_horafecha : std_logic;
   signal led_alarmaon : std_logic;
   signal led_alarmasonando : std_logic;
   signal dp : std_logic;
   signal display : std_logic_vector(3 downto 0);
   signal segmentos : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Modos PORT MAP (
          clk => clk,
          btnuno => btnuno,
          btndos => btndos,
          btntres => btntres,
          btncuatro => btncuatro,
          led_hora => led_hora,
          led_alarma => led_alarma,
          led_crono => led_crono,
          led_eggtimer => led_eggtimer,
          led_ajuste => led_ajuste,
          led_horafecha => led_horafecha,
          led_alarmaon => led_alarmaon,
          led_alarmasonando => led_alarmasonando,
          interruptor_reset => interruptor_reset,
          interruptor_izq => interruptor_izq,
          interruptor_der => interruptor_der,
          dp => dp,
          display => display,
          segmentos => segmentos
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
