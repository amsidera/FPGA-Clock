----------------------------------------------------------------------------------
-- Company:		    
-- Engineer: 	   Ángela María Castillo Martínez	11068
-- 				   Ana María Martínez Sidera			11257
-- Create Date: 
-- Design Name: 
-- Module Name:    Modos - Behavioral 
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

entity Modos is
	Port (
			clk : 	in  STD_LOGIC;
			
			btnuno : 	in  STD_LOGIC;
			btndos : 	in  STD_LOGIC;
			btntres : 	in  STD_LOGIC;
			btncuatro : in  STD_LOGIC;
			
			led_hora :		out  STD_LOGIC;
			led_alarma : 	out  STD_LOGIC;
			led_crono : 	out  STD_LOGIC;
			led_eggtimer : 	out  STD_LOGIC;
			led_ajuste : 	out  STD_LOGIC;
			led_horafecha : out  STD_LOGIC;
			led_alarmaon : 	out  STD_LOGIC;
			led_alarmasonando : out  STD_LOGIC;
			
			interruptor_reset : in  STD_LOGIC;
			interruptor_izq : 	in  STD_LOGIC;
			interruptor_der :	in  STD_LOGIC;
			dp: out STD_LOGIC;
			
		   display : out STD_LOGIC_VECTOR (3 downto 0);
         segmentos : out STD_LOGIC_VECTOR (6 downto 0));
		   
end Modos;

architecture Behavioral of Modos is

-----------------------------------------------------------------
--------------  DECLARACION DE COMPONENTES ----------------------
-----------------------------------------------------------------	

----------------- ANTIRREBOTE ------------------
component Antirrebote is
	Port (reset :	in  STD_LOGIC;
         clk :		in  STD_LOGIC; 
			btn_in :	in  STD_LOGIC;
			btn_out : out STD_LOGIC);
end component;

----------------- SELECTOR DE VELOCIDAD ------------------
component velocidad is
    Port (	clk: in STD_LOGIC;
				interr_izq: in STD_LOGIC; 
		   interr_der: in STD_LOGIC; 
		   k: out integer range 0 to 50000001); 
end component;

----------------- GENERADOR DE PULSOS ------------------
component pulsos is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
		   velocidad: in integer range 0 to 50000001; 
           Pulse : out  STD_LOGIC);
end component;

----------------- VISUALIZADOR DE DISPLAYS ------------------
component Visualiza_Displays is
	Port (  reset :	in  STD_LOGIC;
           clk : 		in  STD_LOGIC;
           segment_Disp0 :	in  STD_LOGIC_VECTOR (3 downto 0);
           segment_Disp1 :	in  STD_LOGIC_VECTOR (3 downto 0);
           segment_Disp2 :	in  STD_LOGIC_VECTOR (3 downto 0);
           segment_Disp3 :	in  STD_LOGIC_VECTOR (3 downto 0);
			  display2 : out  STD_LOGIC;
			  display :		out STD_LOGIC_VECTOR (3 downto 0);
           segment :		out STD_LOGIC_VECTOR (6 downto 0));
end component;

----------------- MODO HORA/FECHA ------------------
component modohora is

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
		   
end component;

----------------- MODO ALARMA ------------------
component modo_alarm is

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
		   
end component;

----------------- MODO CRONOMETRO ------------------
component cronometro is
	Port ( 	
				clk: in STD_LOGIC;
				reset: in STD_LOGIC;
				pulse: in STD_LOGIC;
				enable: in STD_LOGIC_VECTOR(2 downto 0);
				display2: in STD_LOGIC;
				btn_lapso: 		 in  STD_LOGIC; 	
				btn_reset :		 in  STD_LOGIC; 	
				btn_startstop : in  STD_LOGIC;	
				dp_in : out  STD_LOGIC;
				unidades_vis: out STD_LOGIC_VECTOR(3 downto 0);
				decenas_vis:  out STD_LOGIC_VECTOR(3 downto 0);
				centenas_vis: out STD_LOGIC_VECTOR(3 downto 0);
				mil_vis: 	  out STD_LOGIC_VECTOR(3 downto 0)); 				
end component;

----------------- EGGTIMER ------------------
component egg_timer is
Port (	reset : in  STD_LOGIC;
			clk : 	in  STD_LOGIC;
			enable: in STD_LOGIC_VECTOR(2 downto 0);
			pulso :	in  STD_LOGIC;
			btn_start : in  STD_LOGIC;
			btn_seg :   in  STD_LOGIC;
			btn_min :   in  STD_LOGIC;
			led : 	out STD_LOGIC;
			u_seg_out : out STD_LOGIC_VECTOR (3 downto 0);
			d_seg_out : out STD_LOGIC_VECTOR (3 downto 0);
			u_min_out : out STD_LOGIC_VECTOR (3 downto 0);
			d_min_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

----------------- AJUSTE HORA ------------------
component modo_ajustehora is
Port (
			reset :	 	 in  STD_LOGIC;
			clk :    	 in  STD_LOGIC;
			enable :     in  STD_LOGIC_VECTOR (2 downto 0);
			btn_min :    in  STD_LOGIC;
			btn_hora :	 in  STD_LOGIC;
			
			u_hora_in : in STD_LOGIC_VECTOR (3 downto 0);
			d_hora_in : in STD_LOGIC_VECTOR (3 downto 0);
			u_min_in :  in STD_LOGIC_VECTOR (3 downto 0);
			d_min_in :  in STD_LOGIC_VECTOR (3 downto 0);

			u_hora_out : out STD_LOGIC_VECTOR (3 downto 0);
			d_hora_out : out STD_LOGIC_VECTOR (3 downto 0);
			u_min_out :  out STD_LOGIC_VECTOR (3 downto 0);
			d_min_out :  out STD_LOGIC_VECTOR (3 downto 0);
			cambio_hora: out  STD_LOGIC);
end component;

----------------- AJUSTE FECHA ------------------
component modo_ajustefecha is
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
			cambio_fecha: out  STD_LOGIC);
		   
end component;

-----------------------------------------------------
--------------- SEÑALES INTERNAS --------------------
-----------------------------------------------------

-- señal que determina la velocidad de los pulsos
signal k_out: integer range 0 to 50000001;

-- señales de las salidas de los antirrebotes de los botones
signal btnuno_out: STD_LOGIC;
signal btndos_out: STD_LOGIC;
signal btntres_out: STD_LOGIC;
signal btncuatro_out: STD_LOGIC;

-- señal interna: salida del generador de pulsos 
signal pulso: STD_LOGIC;

-- señales correspondientes a la alarma sonando
signal sonando_egg: STD_LOGIC;
signal sonando_alarma: STD_LOGIC;

--señales para la visualizacion de displays
signal unidades: STD_LOGIC_VECTOR(3 downto 0);
signal decenas: STD_LOGIC_VECTOR(3 downto 0);
signal centenas: STD_LOGIC_VECTOR(3 downto 0);
signal mil: STD_LOGIC_VECTOR(3 downto 0);
signal display2 :  STD_LOGIC;

--señales internas modo cronometro
signal unidades_crono: STD_LOGIC_VECTOR(3 downto 0);
signal decenas_crono: STD_LOGIC_VECTOR(3 downto 0);
signal centenas_crono: STD_LOGIC_VECTOR(3 downto 0);
signal mil_crono: STD_LOGIC_VECTOR(3 downto 0);

--señales internas para los ajustes
signal cambio_hora :  	STD_LOGIC;
signal cambio_fecha :   STD_LOGIC;
	
signal unidades_ajuste: STD_LOGIC_VECTOR(3 downto 0);
signal decenas_ajuste: STD_LOGIC_VECTOR(3 downto 0);
signal centenas_ajuste: STD_LOGIC_VECTOR(3 downto 0);
signal mil_ajuste: STD_LOGIC_VECTOR(3 downto 0);

signal unidades_ajustehora: STD_LOGIC_VECTOR(3 downto 0);
signal decenas_ajustehora: STD_LOGIC_VECTOR(3 downto 0);
signal centenas_ajustehora: STD_LOGIC_VECTOR(3 downto 0);
signal mil_ajustehora: STD_LOGIC_VECTOR(3 downto 0);

--señales internas modo hora
signal u_hora : STD_LOGIC_VECTOR (3 downto 0);
signal d_hora : STD_LOGIC_VECTOR (3 downto 0);
signal u_min :  STD_LOGIC_VECTOR (3 downto 0);
signal d_min :  STD_LOGIC_VECTOR (3 downto 0);
signal u_day :  STD_LOGIC_VECTOR (3 downto 0);
signal d_day :  STD_LOGIC_VECTOR (3 downto 0);
signal u_month : STD_LOGIC_VECTOR (3 downto 0);
signal d_month : STD_LOGIC_VECTOR (3 downto 0);

signal unidades_alarma: STD_LOGIC_VECTOR(3 downto 0);
signal decenas_alarma: STD_LOGIC_VECTOR(3 downto 0);
signal centenas_alarma: STD_LOGIC_VECTOR(3 downto 0);
signal mil_alarma: STD_LOGIC_VECTOR(3 downto 0);

signal unidades_eggtimer: STD_LOGIC_VECTOR(3 downto 0);
signal decenas_eggtimer: STD_LOGIC_VECTOR(3 downto 0);
signal centenas_eggtimer: STD_LOGIC_VECTOR(3 downto 0);
signal mil_eggtimer: STD_LOGIC_VECTOR(3 downto 0);




type pulsa is (hora,alarma,crono,eggtimer,ajuste);
		signal estado:pulsa;
type modo1 is (mhora,mfecha);
		signal modo_hora:modo1;
type modo2 is (mset,munset);
		signal modo_alarma:modo2;
type modo3 is (ajustehora,ajustefecha);
		signal modo_ajuste:modo3;
type modo4 is (mstart,mstop);
		signal modo_crono:modo4;

signal enable: STD_LOGIC_VECTOR(2 downto 0);

begin
------------------ antirrebotes ----------------------
antrr_btnuno :		Antirrebote 
						port map (interruptor_reset,
										clk,
										btnuno,
										btnuno_out);

antrr_btndos :		Antirrebote 
						port map (interruptor_reset,
										clk,
										btndos,
										btndos_out);

antrr_btntres :		Antirrebote 
						port map (interruptor_reset,
										clk,
										btntres,
										btntres_out);

antrr_btncuatro :	Antirrebote 
						port map (interruptor_reset,
										clk,
										btncuatro,
										btncuatro_out);
										
------------------ selector de velocidad ----------------
velocidad_uno : velocidad 
				port map(clk,
							interruptor_izq,
							interruptor_der,
							k_out);
							
------------------ generador de pulsos ------------------
pulsos_uno: pulsos 
				port map(interruptor_reset,
							clk,
							k_out,	
							pulso);
------------------ cronometro --------------------------
crono_uno: cronometro 
			port map(clk,
						interruptor_reset,
						pulso,
						enable,
						display2,
						btndos_out,
						btntres_out,
						btncuatro_out,
						dp,
						unidades_crono,
						decenas_crono,
						centenas_crono,
						mil_crono);

visualiza_dos: Visualiza_Displays 
			port map(interruptor_reset,
						clk,
						unidades,
						decenas,
						centenas,
						mil,
						display2,
						display,
						segmentos);

modo_ajuste_uno : modo_ajustefecha 
			port map(interruptor_reset,
						clk,
						enable,
						btndos_out,
						btntres_out,
						u_day, 
						d_day, 
						u_month,
						d_month,
						centenas_ajuste,
						mil_ajuste,
						unidades_ajuste,
						decenas_ajuste,
						cambio_fecha);
			
modo_ajuste_dos : modo_ajustehora 
			port map(	interruptor_reset,
							clk,
							enable,
							btntres_out,
							btndos_out,
							u_hora,
							d_hora,
							u_min,
							d_min,
							centenas_ajustehora,
							mil_ajustehora,
							unidades_ajustehora,
							decenas_ajustehora,
							cambio_hora);
modo_hora_uno : modohora 
			port map(	interruptor_reset,
							clk,
							pulso,
							cambio_hora,
							cambio_fecha,
							centenas_ajustehora, 
							mil_ajustehora, 
							unidades_ajustehora, 
							decenas_ajustehora,
							centenas_ajuste, 
							mil_ajuste, 
							unidades_ajuste,
							decenas_ajuste,
							u_hora, 
							d_hora, 
							u_min, 
							d_min, 
							u_day, 
							d_day, 
							u_month,
							d_month);
				
alarma_modo: modo_alarm 
			port map (	interruptor_reset,
							clk ,
							enable,
							btndos_out,
							btntres_out,
							btncuatro_out,
							u_hora, 
							d_hora, 
							u_min, 
							d_min,
							centenas_alarma,
							mil_alarma,
							unidades_alarma,
							decenas_alarma,
							sonando_alarma,
							led_alarmaon);				
									
eggtimer_uno: egg_timer 
			port map(interruptor_reset,
						clk,
						enable,
						pulso,
						btncuatro_out,
						btntres_out,
						btndos_out,
						sonando_egg,
						unidades_eggtimer,
						decenas_eggtimer,
						centenas_eggtimer,
						mil_eggtimer);

----------------------------------------------------------------------------------------------------------
-------- PROCESO PRINCIPAL: GESTIONA EL CAMBIO DE MODOS Y LA VISUALIZACIÓN EN LOS DISPLAYS ---------------
----------------------------------------------------------------------------------------------------------

modoinc: process (clk,interruptor_reset,btnuno_out,btntres_out,btncuatro_out)

begin
	if interruptor_reset='1' then		--Inicializamos estado en hora
		estado<=hora;
		modo_hora<=mhora;
		
	elsif clk'event and clk='1' then

-----------------------------------------------------
------ MAQUINA DE ESTADOS: GESTION DE MODOS ---------
-----------------------------------------------------			
		if btnuno_out='1' then				
		case estado is
		
			--Pasamos al estado de alarma;
			when hora =>  				
					estado<=alarma;	
											
			--Pasamos al estado de crono;			
			when alarma =>  				
					estado<=crono;
						
			--Pasamos al estado de eggtimer;
			when crono =>  				
					estado<=eggtimer;
			
			--Pasamos al estado de ajuste;
			when eggtimer =>  				
					estado<=ajuste;
					modo_ajuste<=ajustehora;
						
			--Pasamos al estado de hora;			
			when ajuste =>  				
					estado<=hora;

			end case;
		end if;
-----------------------------------------------------
----------------  MODO ALARMA  ----------------------
-----------------------------------------------------			
			if estado=alarma then
				enable<="001";
				unidades<=unidades_alarma;
				decenas<=decenas_alarma;
				centenas<=centenas_alarma;
				mil<=mil_alarma;
			end if;
-----------------------------------------------------
---------------- MODO CRONOMETRO --------------------
-----------------------------------------------------				
			if estado=crono then 
				enable<="010";
					unidades<=unidades_crono;
					decenas<=decenas_crono;
					centenas<=centenas_crono;
					mil<=mil_crono;
										if btncuatro_out='1' then
							case modo_crono is 
								when mstart=>
									modo_crono<=mstop;
									
								when mstop=>
									modo_crono<=mstart;
									
							end case;
						end if;
			end if;
-----------------------------------------------------
---------------- MODO EGGTIMER ----------------------
-----------------------------------------------------			
			if estado=eggtimer then
				enable<="011";
					unidades<=unidades_eggtimer;
					decenas<=decenas_eggtimer;
					centenas<=centenas_eggtimer;
					mil<=mil_eggtimer;
					
			end if;
-----------------------------------------------------
---------------- MODO HORA --------------------------
-----------------------------------------------------			
			if estado=hora then 
				if modo_hora=mhora then
					unidades<=u_min;
					decenas<=d_min;
					centenas<=u_hora;
					mil<=d_hora;					
				end if;
				
				if modo_hora=mfecha then
					
					unidades<=u_month;
					decenas<=d_month;
					centenas<=u_day;
					mil<=d_day;	
				end if;
				
				if btntres_out='1' then
					case modo_hora is 
						when mhora=>
							modo_hora<=mfecha;
							
						when mfecha=>
							modo_hora<=mhora;
														
					end case;					
				end if;
			end if;
-----------------------------------------------------
------------------ MODO AJUSTE ----------------------
-----------------------------------------------------			
			if estado=ajuste then 
			
				if modo_ajuste=ajustehora then
					
					unidades<=unidades_ajustehora;
					decenas<=decenas_ajustehora;
					centenas<=centenas_ajustehora;
					mil<=mil_ajustehora;	
					enable<="100";
					
					if btncuatro_out='1' then
						modo_ajuste<=ajustefecha;
					end if;
			
				end if;
				
				if modo_ajuste=ajustefecha then
					
					unidades<=unidades_ajuste;
					decenas<=decenas_ajuste;
					centenas<=centenas_ajuste;
					mil<=mil_ajuste;	
					enable<="101";	
					
					if btncuatro_out='1' then
						modo_ajuste<=ajustehora;
					end if;
					
				end if;

				
			end if;
	end if;	
end process;


led_hora<='1' when estado=hora
	else '0';	
led_crono<='1' when estado=crono
	else '0';
led_eggtimer<='1' when estado=eggtimer
	else '0';
led_alarmasonando<=sonando_egg or sonando_alarma;
led_ajuste<='1' when estado=ajuste
	else '0';
led_horafecha<='1' when ((estado=hora and modo_hora=mfecha) or (estado=ajuste and modo_ajuste=ajustefecha))
	else '0';
led_alarma<='1' when estado=alarma
	else '0';
	
end Behavioral;


