----------------------------------------------------------------------------------
-- Company:		    
-- Engineer: 	   Ángela María Castillo Martínez	11068
-- 				   Ana María Martínez Sidera		11257
-- Create Date:    
-- Design Name:    
-- Module Name:    modo_alarma - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_ARITH.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

----------------------------------------------------------------------------------

entity modo_alarm is

    Port (	reset :	 in  STD_LOGIC;
			clk :    	 in  STD_LOGIC;
			enable :    	 in  STD_LOGIC_VECTOR (2 downto 0);
			btn_hora :	 in  STD_LOGIC;
			btn_min :    in  STD_LOGIC;
			btn_cuatro :	 in  STD_LOGIC;
			u_hora_in : in STD_LOGIC_VECTOR (3 downto 0);
			d_hora_in : in STD_LOGIC_VECTOR (3 downto 0);
			u_min_in :  in STD_LOGIC_VECTOR (3 downto 0);
			d_min_in :  in STD_LOGIC_VECTOR (3 downto 0);
			u_hora_out : out STD_LOGIC_VECTOR (3 downto 0);
			d_hora_out : out STD_LOGIC_VECTOR (3 downto 0);
			u_min_out :  out STD_LOGIC_VECTOR (3 downto 0);
			d_min_out :  out STD_LOGIC_VECTOR (3 downto 0);
			led_sonando : out STD_LOGIC;
			led_on : out STD_LOGIC);

		   
end modo_alarm;

architecture Behavioral of modo_alarm is

-- Señales internas del proceso que permiten conocer el valor de las salidas --
signal u_hora : STD_LOGIC_VECTOR (3 downto 0);
signal d_hora : STD_LOGIC_VECTOR (3 downto 0);
signal u_min :  STD_LOGIC_VECTOR (3 downto 0);
signal d_min :  STD_LOGIC_VECTOR (3 downto 0);
signal encendida: STD_LOGIC;
signal sonar: STD_LOGIC;

begin
sec_adj: process(clk,reset)
begin
	if reset='1' then	--Se inicializan todas las señales internas cuando el reset está en '1'	
		u_hora<="0000";
		d_hora<="0000";
		u_min<="0000";
		d_min<="0000";
		led_sonando<='0';
		encendida<='0';		
	elsif clk'event and clk='1' then
		if enable="001" then
		--Botón de las horas: aumenta las horas cada vez que pulsamos el botón
			if btn_hora='1' then
				if u_hora="0011" and d_hora="0010" then
					u_hora<="0000";
					d_hora<="0000";
				elsif u_hora="1001" then
						u_hora<="0000";
						d_hora<=d_hora+"0001"; 
				  else u_hora<=u_hora+"0001";
				end if;
			end if;
      
      --Botón de los minutos: aumenta los minutos cada vez que pulsamos el botón
			if btn_min='1' then
				if u_min="1001" then
					u_min<="0000";
						if d_min="0101" then
							d_min<="0000";
						else d_min<=d_min+"0001"; 
						end if;
				else u_min<=u_min+"0001";
				end if;
			end if;
			
			 if btn_cuatro='1' then
				if encendida='0' then 
					encendida<='1';
				else encendida<='0';
				end if;
			end if;
		end if;
		
		if encendida='1' and u_min=u_min_in and d_min=d_min_in and u_hora=u_hora_in and d_hora=d_hora_in then 
			sonar<='1';
		end if;
		
		if sonar='1' then 

			led_sonando<='1';
		end if;
		
		if sonar='1' and btn_cuatro='1' then
			led_sonando<='0';
			sonar<='0';
		end if;		
   end if;
		
end process;

-- Asignación de los valores de las señales internas a las salidas. --
	u_hora_out<=u_hora;
	d_hora_out<=d_hora;
	u_min_out<=u_min;
	d_min_out<=d_min;
	led_on<=encendida;
end Behavioral;