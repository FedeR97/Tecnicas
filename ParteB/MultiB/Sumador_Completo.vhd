library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumador_completo is
port(A: in std_logic;
	B: in std_logic;
	CI: in std_logic;
	CO: out std_logic;
	S: out std_logic);
end sumador_completo;

architecture sumar of sumador_completo is
begin
	S 	<= A xor (B xor CI);
	CO	<= (A and CI) or (A and B) or (B and CI); 
end sumar;