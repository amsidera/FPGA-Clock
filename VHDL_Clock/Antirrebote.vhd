----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Ángela María Castillo Martínez	11068
-- 				Ana María Martínez Sidera			11257
-- Create Date:    
-- Design Name: 
-- Module Name:    Antirrebote - Behavioral 
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


entity Antirrebote is

    Port ( reset :	 in  STD_LOGIC;
           
           clk : 	 in  STD_LOGIC;
           btn_in :	 in  STD_LOGIC;
           btn_out : out STD_LOGIC);
		   
end Antirrebote;
----------------------------------------------------------------------------------


architecture Behavioral of Antirrebote is

	------------------------------------------------------
	----------  PROCESO SISTEMA_ANTIRREBOTE  -------------
	------------------------------------------------------

	  --Enum para los diferentes estados que utilizaremos para el sistema antirebote;
		type pulsa is (inicial, pulsado);
		signal ESTADO:pulsa;
		signal cuenta_rebote : integer range 0 to 7500000;
		signal rebote: STD_LOGIC;
	-------------------------------------------------------
begin

sistema_antirrebote: process (clk,reset)
begin
	if reset='1' then		--Inicializamos ESTADO en el estado inicial
		ESTADO<=inicial;
		btn_out<='0';
	elsif clk'event and clk='1' then	
	
		if btn_in='1' then				
		case ESTADO is
		
			--Si nos encontramos en el estado en inicial pasamos al estado de pulsado;
			when inicial =>  				
					ESTADO<=pulsado;
					btn_out<='0';
					
			when pulsado =>					--Esperamos un tiempo para evitar los rebotes y despúes pasamos el pulso al botón interior
				cuenta_rebote<=cuenta_rebote+1;
				if cuenta_rebote=7500000 then		--Cuando pasa un tiempo de 200ms levantamos la bandera del rebote
					rebote<='1';
					cuenta_rebote<=0;		
				else
				rebote<='0';
				end if;
				
				if rebote='1' then 
					ESTADO<=inicial;
					btn_out<='1';
				end if;
		end case;
		end if;
	end if;
end process;	

end Behavioral;

----------------------------------------------------------------------------------