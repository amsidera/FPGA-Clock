----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:37 12/12/2014 
-- Design Name: 
-- Module Name:    modo_ajuste - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity modo_ajustefecha is

    Port (	reset :	in  STD_LOGIC;
				clk :    in  STD_LOGIC;
				enable: in STD_LOGIC_VECTOR(2 downto 0);
				
				btn_day :     in  STD_LOGIC;
				btn_month :   in  STD_LOGIC;
				u_day_in :    in STD_LOGIC_VECTOR (3 downto 0);
				d_day_in :    in STD_LOGIC_VECTOR (3 downto 0);
				u_month_in :	in STD_LOGIC_VECTOR (3 downto 0);
				d_month_in : 	in STD_LOGIC_VECTOR (3 downto 0);
				u_day_out :   out STD_LOGIC_VECTOR (3 downto 0);
				d_day_out :   out STD_LOGIC_VECTOR (3 downto 0);
				u_month_out : out STD_LOGIC_VECTOR (3 downto 0);
				d_month_out : out STD_LOGIC_VECTOR (3 downto 0);
				cambio_fecha :   out  STD_LOGIC);
		   
end modo_ajustefecha;

architecture Behavioral of modo_ajustefecha is

signal u_day :	   STD_LOGIC_VECTOR (3 downto 0);
signal d_day : 	STD_LOGIC_VECTOR (3 downto 0);
signal u_month :  STD_LOGIC_VECTOR (3 downto 0);
signal d_month :  STD_LOGIC_VECTOR (3 downto 0);

-- señal que nos los diás que tiene cada mes --
signal special:   STD_LOGIC_VECTOR (1 downto 0);

begin

ajustar_fecha: process (clk, reset)
begin	
	if reset='1' then  --Inicializamos todo a cero
		u_day<="0001";
		d_day<="0000";
		u_month<="0001";
		d_month<="0000";
      special<="00";
		cambio_fecha<='0';
	elsif clk'event and clk='1' then

------------------------------------------------------
---  ESTABLECEMOS EL VALOR MÁXIMO DE LOS DÍAS  -------
--- EN 31 Y SE PROCEDE AL INCREMENTO, TENIENDO  ------
-----   EN CUENTA EL MES EN EL QUE ESTAMOS.  ---------
------------------------------------------------------	
		if enable="101" then
		
			if btn_day='1' or btn_month='1' then
				cambio_fecha<='1';
			else cambio_fecha<='0';
			end if;
		
			if special="00" then
				if btn_day='1' then
					if u_day="0001" and d_day="0011"then
						u_day<="0001";
						d_day<="0000";
					elsif u_day="1001" then
							u_day<="0000";
							d_day<=d_day+"0001"; 
					else u_day<=u_day+"0001"; 		
					end if;
				end if;
			end if;
			
			if special="01" then
				if (u_day="0001" and d_day="0011") then
					u_day<="0001";
					d_day<="0000";
				end if;
				if btn_day='1' then
					if u_day="0000" and d_day="0011" then
						u_day<="0001";
						d_day<="0000";
					elsif u_day="1001" then
							u_day<="0000";
							d_day<=d_day+"0001"; 
					else u_day<=u_day+"0001"; 		
					end if;
				end if;
			end if;
			
			 if special="11" then
				if (u_day="1001" and d_day="0010")or (u_day="0000" and d_day="0011")then
					u_day<="0001";
					d_day<="0000";
				end if;
				if btn_day='1' then
					if u_day="1000" and d_day="0010"then
						u_day<="0001";
						d_day<="0000";
					elsif u_day="1001" then
							u_day<="0000";
							d_day<=d_day+"0001"; 
					else u_day<=u_day+"0001"; 		
					end if;
				end if;
			end if;
	 
	------------------------------------------------------
	---  ESTABLECEMOS EL VALOR MÁXIMO DE LOS MESES  ------
	--- EN 12 Y SE INCREMENTAN CADA VEZ QUE SE PULSA -----
	--------------  EL BOTÓN BTN_MONTH  ------------------
	------------------------------------------------------
			if btn_month='1' then
				if u_month="0010" and d_month="0001" then
					u_month<="0001";
					d_month<="0000";
				elsif u_month="1001" then
						u_month<="0000";
						d_month<=d_month+"0001";
					else u_month<=u_month + "0001";
				end if;
			end if;
			
			case u_month is
			
				when "0010"  =>if d_month="0001" then
										special<="00";
									else special<="11";
									end if;
									
				when "0100"  =>special<="01";
									
				when "0110"  =>special<="01";
									
				when "1001"  =>special<="01";
									
				when "0001" =>	if d_month="0001" then
										special<="01";
									else special<="00";
									end if;
				when others => special<="00";
					
			end case;
		else 	u_day<=u_day_in;
				d_day<=d_day_in;
				u_month<=u_month_in;
				d_month<=d_month_in;
		end if;
   end if;
end process;

	u_day_out<=u_day;
	d_day_out<=d_day;
	u_month_out<=u_month;
	d_month_out<=d_month;

end Behavioral;