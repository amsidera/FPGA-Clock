----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:52 11/11/2014 
-- Design Name: 
-- Module Name:    cronometro - Behavioral 
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

entity cronometro is
	Port ( 	
				clk: in STD_LOGIC;
				reset: in STD_LOGIC;
				pulse: in STD_LOGIC;
				enable: in STD_LOGIC_VECTOR(2 downto 0);
				display2: in STD_LOGIC;
				btn_lapso: in  STD_LOGIC; 	--Botón Lapso
				btn_reset :	in  STD_LOGIC; 	--Botón Reset del cronometro
				btn_startstop : in  STD_LOGIC;		--Botón start o stop
				dp_in: out  STD_LOGIC;
				unidades_vis: out STD_LOGIC_VECTOR(3 downto 0);
				decenas_vis: out STD_LOGIC_VECTOR(3 downto 0);
				centenas_vis: out STD_LOGIC_VECTOR(3 downto 0);
				mil_vis: out STD_LOGIC_VECTOR(3 downto 0));  
	end cronometro;
	
	

architecture Behavioral of cronometro is 

type modo2 is (start,stop);
		signal estado:modo2;
		
signal ctnunidades: STD_LOGIC_VECTOR (3 downto 0);
signal ctndecenas: STD_LOGIC_VECTOR (3 downto 0);
signal ctncentenas: STD_LOGIC_VECTOR (3 downto 0);
signal ctnmil: STD_LOGIC_VECTOR (3 downto 0);

signal unidades: STD_LOGIC_VECTOR(3 downto 0);
signal decenas: STD_LOGIC_VECTOR(3 downto 0);
signal centenas: STD_LOGIC_VECTOR(3 downto 0);
signal mil: STD_LOGIC_VECTOR(3 downto 0);

signal banderalapso: STD_LOGIC;
signal bandera_dp:STD_LOGIC;

--signal bandera_btn_startstop: STD_LOGIC;
--signal bandera_btn_reset: STD_LOGIC;


begin

crono:process(clk,reset,pulse,btn_lapso,btn_reset,btn_startstop)
	begin
	if reset='1' or btn_reset='1' then 
		ctnunidades<="0000";
		ctndecenas<="0000";
		ctncentenas<="0000";
		ctnmil<="0000";
		banderalapso<='0';
		bandera_dp<='0';
		estado<=stop;
		--bandera_btn_reset<='0';
		--bandera_btn_startstop<='0';
		unidades<="0000";
		centenas<="0000";
		decenas<="0000";
		centenas<="0000";
		mil<="0000";
		unidades_vis<="0000";
		centenas_vis<="0000";
		decenas_vis<="0000";
		centenas_vis<="0000";
		mil_vis<="0000";
		--dp_in<='1';

		
	elsif clk'event and clk='1' then
	
	if enable="010" then 	
		if btn_startstop='1' then 			
			case estado is 
				when start=>
					estado<=stop;

				when stop=>
					estado<=start;					
			end case;
		end if;
		
		if estado=start then
			if pulse='1' then
					if ctnunidades="1001" then
						ctnunidades<="0000";
						if ctndecenas="0101" then
							ctndecenas<="0000";
							if ctncentenas="1001" then
								ctncentenas<="0000";
								if ctnmil="0101" then 
									ctnmil<="0000";
								else ctnmil<=ctnmil+1;
								end if;
							else ctncentenas<=ctncentenas+1;
							end if;
						else ctndecenas<=ctndecenas+1;
						end if;
					else ctnunidades<=ctnunidades+1;
					
							if bandera_dp='1' then --and display2='1' then
								bandera_dp<='0';
								--dp_in<='0';
							else 
								bandera_dp<='1';
								--dp_in<='1';
							end if;
					end if;
			end if;
		end if;
		
		if estado=stop then
			unidades_vis<=ctnunidades;
			decenas_vis<=ctndecenas;
			centenas_vis<=ctncentenas;
			mil_vis<=ctnmil;
		end if;
		
		if btn_lapso='1' and banderalapso='0' then 
			
			banderalapso<='1';
			unidades<=ctnunidades;
			decenas<=ctndecenas;
			centenas<=ctncentenas;
			mil<=ctnmil;
		end if;
		
		if btn_lapso='1' and banderalapso='1' then
			banderalapso<='0';
		end if;
		
		if banderalapso='1' then
			unidades_vis<=unidades;
			decenas_vis<=decenas;
			centenas_vis<=centenas;
			mil_vis<=mil;
		else 
			unidades_vis<=ctnunidades;
			decenas_vis<=ctndecenas;
			centenas_vis<=ctncentenas;
			mil_vis<=ctnmil;
		end if;
			
	
	end if;	
end if;

end process;

dp_in<='0' when bandera_dp='1' and display2='1'
else '1';

end Behavioral;
