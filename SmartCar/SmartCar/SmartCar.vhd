library ieee;
library work;
use ieee.std_logic_1164.all;
--use work.segment_package.all;


entity SmartCar is
port(US,IR1 : IN std_logic;
		A,L,E,R,T: OUT std_logic_vector(1 to 7);
		mL, mR : OUT std_logic:='1');
		
end SmartCar;

architecture move of SmartCar is
begin

process(US,IR1)

begin


mL <= NOT US;
mR <= NOT US;

if (IR1='1') Then
	A<="1111111";
	L<="1111111";
	E<="1111111";
	R<="1111111";
	T<="1111111";

else
	A<="0000010";
	L<="1110001";
	E<="0010000";
	R<="0111001";
	T<="1110000";
		
	

end if;

end process;
end move;