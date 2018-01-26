----------------------------------------------------------------------------------
-- Company:		    
-- Engineer: 	   Ángela María Castillo Martínez	11068
-- 				   Ana María Martínez Sidera		11257
-- Create Date:
-- Design Name: 
-- Module Name:    Modo_egg_timer - Behavioral 
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

entity egg_timer is

	Port ( 	reset : 	in  STD_LOGIC;
				clk : 	in  STD_LOGIC;
				enable: 	in STD_LOGIC_VECTOR(2 downto 0);
				pulso :	in  STD_LOGIC;
				btn_start : in  STD_LOGIC;
				btn_seg :   in  STD_LOGIC;
				btn_min :   in  STD_LOGIC;
				
				led : 		out STD_LOGIC;
				u_seg_out : out STD_LOGIC_VECTOR (3 downto 0);
				d_seg_out : out STD_LOGIC_VECTOR (3 downto 0);
				u_min_out : out STD_LOGIC_VECTOR (3 downto 0);
				d_min_out : out STD_LOGIC_VECTOR (3 downto 0));
		   
end egg_timer;

architecture Behavioral of egg_timer is

----------------------------------------- 
--------   PROCESO: C_MAIN    -----------
-----------------------------------------
	--Incluye las operaciones de:
	--Asignación de valor a los segundos y a los minutos con las señales antirrebote de los botones btnseg btnmin;
	--Cuenta atrás que se inicia con la señal antirrebote del botón btnstart;	

	--Señales internas que se modifican dependiendo de los diferentes incrementos o decrementos que hagamos
		signal u_seg : STD_LOGIC_VECTOR (3 downto 0);
		signal d_seg : STD_LOGIC_VECTOR (3 downto 0);
		signal u_min : STD_LOGIC_VECTOR (3 downto 0);
		signal d_min : STD_LOGIC_VECTOR (3 downto 0);
	
		signal banderastart : STD_LOGIC;
		signal fin : STD_LOGIC;
------------------------------------------------------------------
------------------------------------------------------------------	
begin

c_main: process(clk,reset)
begin
	-- Se inicializan todas las señales internas cuando el reset está en '1' --	
	if reset='1' then	
		u_seg<="0000";
		d_seg<="0000";
		u_min<="0000";
		d_min<="0000";
		banderastart<='0';
		led<='0';	
		fin<='0';			
	elsif clk'event and clk='1' then
	
					
	-- Botón de los segundos: aumenta los segundos cada vez que pulsamos el botón --
		if btn_seg='1'and enable="011" then
			banderastart<='0';
         led<='0';		
			if u_seg="1001" then
				u_seg<="0000";							
				if d_seg="0101" then
						d_seg<="0000";							
				else d_seg<=d_seg+"0001"; 
				end if;
			else u_seg<=u_seg+"0001";
			end if;
		end if;
		
	-- Botón de los minutos: aumenta los minutos cada vez que pulsamos el botón --
		if btn_min='1' and enable="011" then
			banderastart<='0';
         led<='0';		
			if u_min="1001" then
				u_min<="0000";
					if d_min="0101" then
						d_min<="0000";
					else d_min<=d_min+"0001"; 
					end if;
			else u_min<=u_min+"0001";
			end if;
		end if;
		
	--Botón de Start: empieza la cuenta atrás		
		if btn_start='1' and fin='0' and enable="011" then
			banderastart<='1';
		end if;
		if fin='0' then 
			if banderastart ='1' then
				if pulso='1' then
					if u_seg="0000" then
						if d_seg="0000" then
							if u_min="0000" then
								if d_min="0000" then
								else d_min<=d_min-"0001";
										u_min<="1001";
										u_seg<="1001";
										d_seg<="0101";
								end if;
							else u_min<=u_min-"0001";
								  u_seg<="1001";
								  d_seg<="0101";
							end if;
						else d_seg<=d_seg-"0001";
								u_seg<="1001";
						end if;
					else u_seg<=u_seg-"0001";
					end if;					
				end if;
			end if;
		end if;
		if u_seg="0000" and d_seg="0000" and u_min="0000" and d_min="0000" and banderastart='1' then
			fin<='1';
			banderastart<='0';
			led<='1';
		end if;
		if fin<='1' then
			if btn_start='1' then
				led<='0';
				fin<='0';
			end if;
		end if;
	end if;
end process;

-- Asignación de los valores de las señales internas a las salidas. --
	u_seg_out<=u_seg;
	d_seg_out<=d_seg;
	u_min_out<=u_min;
	d_min_out<=d_min;
	

end Behavioral;