----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	�ngela Mar�a Castillo Mart�nez	11068
-- 				Ana Mar�a Mart�nez Sidera			11257
-- Create Date:   
-- Design Name: 
-- Module Name:    velocidad - Behavioral 
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

--En este bloque modificamos la velocidad dependiendo de la posici�n de los interruptores: m�xima velocidad>ultrar�pida>r�pida>real
entity velocidad is
    Port (clk: in STD_LOGIC;
			interr_izq: in STD_LOGIC; --Interruptor de la izquierda
		   interr_der: in STD_LOGIC; --Interruptor de la derecha
		   k: out integer range 0 to 50000001); --Se�al de salida que var�a su valor dependiendo de la velocidad que hemos seleccionado
end velocidad;

architecture Behavioral of velocidad is

begin
velocidad:process(interr_izq,interr_der)
begin
if clk'event and clk='1' then	
	if interr_izq='1' then
		if interr_der='1' then --Interruptores en la posici�n 11: m�xima velocidad
			k<=500;
		else 
			k<=5000; --Interruptores en la posici�n 10: ultrar�pida
		end if;
	else
		if interr_der='1' then
		--Interruptores en la posici�n 01: r�pida
			k<=500000;
		else
		 	k<=50000000; --Interruptores en la posici�n 00: real
		end if;
	end if;
end if;
end process;
end Behavioral;
