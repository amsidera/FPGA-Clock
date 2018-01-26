----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:24:04 11/26/2014 
-- Design Name: 
-- Module Name:    Visualiza_Displays - Behavioral 
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

entity Visualiza_Displays is

    Port ( reset :			in  STD_LOGIC;
           clk : 			in  STD_LOGIC;
           segment_Disp0 :	in  STD_LOGIC_VECTOR (3 downto 0);
           segment_Disp1 :	in  STD_LOGIC_VECTOR (3 downto 0);
           segment_Disp2 :	in  STD_LOGIC_VECTOR (3 downto 0);
           segment_Disp3 :	in  STD_LOGIC_VECTOR (3 downto 0);
			  display2 : out  STD_LOGIC;
		     display :		out STD_LOGIC_VECTOR (3 downto 0);
           segment :		out STD_LOGIC_VECTOR (6 downto 0));
		   
end Visualiza_Displays;


architecture Behavioral of Visualiza_Displays is

	---------------------------------------------------
	--------------  DISP_CHANGE PROCESS  --------------
	---------------------------------------------------
	
		signal counter : 		INTEGER range 0 to 40000;
		signal Segment_Select :	STD_LOGIC_VECTOR (3 downto 0);		
	---------------------------------------------------
	
begin

----------------------------------------------------------------------------------
--------  DISP_CHANGE PROCESS: ALTERNA LOS DISPLAYS QUE ESTÁN ENCENDIDOS ---------
--------   A UNA VELOCIDAD SUFICIENTE PARA SU VISUALIZACIÓN SIMULTÁNEA.  ---------
----------------------------------------------------------------------------------

Disp_Change: process(clk, reset,Segment_Select) 
begin										-----------------------------------------------------------
	if reset='1' then  				------  Se inicializan las señales a 0 o a su valor  ------
		counter<=0;						-----  correspondiente para que en reset se visualice  ----
		Segment_Select<="1111";		-- el segmento central con todos los displays encendidos --
		display<="0000";				-----------------------------------------------------------
		display2<='0';
		
	elsif clk'event and clk='1' then
		counter<= counter+1;
		
		if counter = 39999 then  
			counter<=0;
		else
			if counter<10000 then 						--Se enciende el primer Display durante este período tiempo
				display <= "0111" ;
				Segment_Select<=segment_Disp0;
				display2<='0';
			end if;
			if counter>10000 and counter<20000 then 	--El segundo display está encendido
				display <= "1011" ;
				Segment_Select<=segment_Disp1;
				display2<='0';
			end if;
			if counter>20000 and counter<30000 then 	--El tercer display está encendido
				display <= "1101" ;
				Segment_Select<=segment_Disp2;
				display2<='1';
			end if;
			if counter>30000 and counter<40000 then 	--El cuarto display está encendido
				display <= "1110" ;
				Segment_Select<=segment_Disp3;
				display2<='0';
			end if;
		end if;		
	end if;


		--Asignamos las señales internas a las externas
	case Segment_Select is 		
			when	"0000"=> segment<="1000000"; 
			when	"0001"=> segment<="1111001"; 
			when	"0010"=> segment<="0100100"; 
			when	"0011"=> segment<="0110000"; 
			when	"0100"=> segment<="0011001"; 
			when	"0101"=> segment<="0010010"; 
			when	"0110"=> segment<="0000010"; 
			when	"0111"=> segment<="1111000"; 
			when	"1000"=> segment<="0000000"; 
			when	"1001"=> segment<="0010000";
			when    others=> segment<="0111111";
	end case;

end process;

end Behavioral;

----------------------------------------------------------------------------------