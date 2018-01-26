----------------------------------------------------------------------------------
-- Company:		    
-- Engineer: 	   Ángela María Castillo Martínez	11068
-- 				   Ana María Martínez Sidera		11257
-- Create Date: 
-- Design Name: 
-- Module Name:    modo_hora - Behavioral 
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

entity modohora is

 Port (	reset :	 	in  STD_LOGIC;
			clk :    	in  STD_LOGIC;
			pulso :	 	in  STD_LOGIC;
			
			cambio_hora : in  STD_LOGIC;
			cambio_fecha : in  STD_LOGIC;
			
			u_hora_in : in STD_LOGIC_VECTOR (3 downto 0);
			d_hora_in : in STD_LOGIC_VECTOR (3 downto 0);
			u_min_in :  in STD_LOGIC_VECTOR (3 downto 0);
			d_min_in :  in STD_LOGIC_VECTOR (3 downto 0);
			u_day_in :   in STD_LOGIC_VECTOR (3 downto 0);
			d_day_in :   in STD_LOGIC_VECTOR (3 downto 0);
			u_month_in : in STD_LOGIC_VECTOR (3 downto 0);
			d_month_in : in STD_LOGIC_VECTOR (3 downto 0);
			
			u_hora_out : out STD_LOGIC_VECTOR (3 downto 0);
			d_hora_out : out STD_LOGIC_VECTOR (3 downto 0);
			u_min_out :  out STD_LOGIC_VECTOR (3 downto 0);
			d_min_out :  out STD_LOGIC_VECTOR (3 downto 0);
			u_day_out :   out STD_LOGIC_VECTOR (3 downto 0);
			d_day_out :   out STD_LOGIC_VECTOR (3 downto 0);
			u_month_out : out STD_LOGIC_VECTOR (3 downto 0);
			d_month_out : out STD_LOGIC_VECTOR (3 downto 0));
		   

end modohora;

architecture Behavioral of modohora is

signal u_hora : STD_LOGIC_VECTOR (3 downto 0);
signal d_hora : STD_LOGIC_VECTOR (3 downto 0);
signal u_min :  STD_LOGIC_VECTOR (3 downto 0);
signal d_min :  STD_LOGIC_VECTOR (3 downto 0);
signal u_day :  STD_LOGIC_VECTOR (3 downto 0);
signal d_day :  STD_LOGIC_VECTOR (3 downto 0);
signal u_month : STD_LOGIC_VECTOR (3 downto 0);
signal d_month : STD_LOGIC_VECTOR (3 downto 0);

signal seg : INTEGER RANGE 0 TO 59;
signal Pulse : STD_LOGIC;

signal special:   STD_LOGIC_VECTOR (1 downto 0);
signal fin_de_mes:   STD_LOGIC;
begin

contador: process(clk,reset)

begin

	if reset='1' then	--Se inicializan todas las señales internas cuando el reset está en '1'	
		u_hora<="0000";
		d_hora<="0000";
		u_min<="0000";
		d_min<="0000";
		u_day<="0001";
		d_day<="0000";
		u_month<="0001";
		d_month<="0000";
		seg<=0;
		Pulse<='0';
		
	elsif clk'event and clk='1' then
	
		if cambio_hora='1' then
			u_hora<=u_hora_in;
			d_hora<=d_hora_in;
			u_min<=u_min_in;
			d_min<=d_min_in;
		end if;
		
 	if cambio_fecha='1' then
		u_day<=u_day_in;
		d_day<=d_day_in;
		u_month<=u_month_in;
		d_month<=d_month_in;
	end if;
		
		if pulso='1' then
			seg<=seg+1;		
			if seg=59 then
				Pulse<='1'; 
				seg<=0;
			end if;
		else 
			Pulse<='0';
		end if;
------------------------------------------
--------   CUENTA DEL TIEMPO  ------------
------------------------------------------
		
		if Pulse='1' then 
			
			if u_min="1001" then
				u_min<="0000";
				if d_min="0101" then
					d_min<="0000";
						if u_hora="0011" and d_hora="0010" then
							u_hora<="0000";
							d_hora<="0000";
							
					------------------------------------------------------
					---  ESTABLECEMOS EL VALOR MÁXIMO DE LOS DÍAS  -------
					--- EN 31 Y SE PROCEDE AL INCREMENTO, TENIENDO  ------
					-----   EN CUENTA EL MES EN EL QUE ESTAMOS.  ---------
					------------------------------------------------------	

							if special="00" then
								if u_day="0001" and d_day="0011"then
									fin_de_mes<='1';
									u_day<="0001";
									d_day<="0000";
								elsif u_day="1001" then
										u_day<="0000";
										d_day<=d_day+"0001";
										fin_de_mes<='0';										
								else u_day<=u_day+"0001";
										fin_de_mes<='0';								
								end if;
							end if;
							
							if special="01" then
								if u_day="0000" and d_day="0011" then
									fin_de_mes<='1';
									u_day<="0001";
									d_day<="0000";
								elsif u_day="1001" then
										u_day<="0000";
										d_day<=d_day+"0001";
										fin_de_mes<='0';										
								else u_day<=u_day+"0001";
										fin_de_mes<='0';								
								end if;
							end if;
							
							 if special="11" then
								if u_day="1000" and d_day="0010"then
									fin_de_mes<='1';
									u_day<="0001";
									d_day<="0000";
								elsif u_day="1001" then
										u_day<="0000";
										d_day<=d_day+"0001";
										fin_de_mes<='0';
								else u_day<=u_day+"0001";
										fin_de_mes<='0';
								
								end if;
							end if;
					---------------------------------------
					---------------------------------------		

					elsif u_hora="1001" then
							u_hora<="0000";
							d_hora<=d_hora+1;
					else 	u_hora<=u_hora+1;
					end if;					
				else 	d_min<=d_min+1;
				end if;
			else 	u_min<=u_min+1;
			end if;
			
		end if;

------------------------------------------
-------  casos meses ---------------------
------------------------------------------

		if fin_de_mes='1' then
			fin_de_mes<='0';
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
	
	end if;

end process;

		u_hora_out<=u_hora;
		d_hora_out<=d_hora;
		u_min_out<=u_min;
		d_min_out<=d_min;


		u_day_out<=u_day;
		d_day_out<=d_day;
      
		u_month_out<=u_month;
		d_month_out<=d_month;


end Behavioral;

