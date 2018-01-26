----------------------------------------------------------------------------------
-- Company:		    
-- Engineer: 	   Ángela María Castillo Martínez	11068
-- 				   Ana María Martínez Sidera		11257
-- Create Date:    12:27:19 11/26/2014 
-- Design Name:    
-- Module Name:    Pulsos - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
----------------------------------------------------------------------------------

entity pulsos is

    Port ( 	reset :	in  STD_LOGIC;
				clk : 	in  STD_LOGIC;
				velocidad: in integer range 0 to 50000001; --Señal de entrada que proporciona la constante para poder variar la velocidad
				Pulse : out  STD_LOGIC); 						 --Genera pulsos dependiendo de la velocidad seleccionada
				
end pulsos;



architecture Behavioral of	pulsos is

 --Señal interna contador
	signal Sec_Counter : integer range 0 to 50000000;

begin

PulseGenerator: process (clk, reset)

   begin
	
	if reset='1' then  --Inicializamos todo a cero
		Sec_Counter<=0;		
		
	elsif clk'event and clk='1' then
		Sec_Counter<=Sec_Counter+1;
		
		if Sec_Counter=velocidad then
			Pulse<='1'; 
			Sec_Counter<=0;
		else 
			Pulse<='0';
		end if;	
	end if;	
end process;

end Behavioral;
