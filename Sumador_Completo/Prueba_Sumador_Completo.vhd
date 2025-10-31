library ieee;
use ieee.std_logic_1164.all;

entity Prueba_Sumador_Completo is
end Prueba_Sumador_Completo;

architecture behavior of Prueba_Sumador_Completo is
	component Sumador_Completo
	port(A : in std_logic;
		  B : in std_logic;
		  CI : in std_logic;
		  S : out std_logic;
		  CO : out std_logic);
end component;

	signal A : std_logic := '0';
	signal B : std_logic := '0';
	signal CI : std_logic := '0';
	signal S : std_logic;
	signal CO : std_logic;

Begin
	uut: Sumador_Completo port map (
		A 	 => A,
		B 	 => B,
		CI  => CI,
		S 	 => S,
		CO  => CO
	);

	stim_proc: process
	begin
		A <= '0'; B <= '0'; CI <= '0'; wait for 10ns;
		A <= '0'; B <= '0'; CI <= '1'; wait for 10ns;
		A <= '0'; B <= '1'; CI <= '0'; wait for 10ns;
		A <= '0'; B <= '1'; CI <= '1'; wait for 10ns;
		A <= '1'; B <= '0'; CI <= '0'; wait for 10ns;
		A <= '1'; B <= '0'; CI <= '1'; wait for 10ns;
		A <= '1'; B <= '1'; CI <= '0'; wait for 10ns;
		A <= '1'; B <= '1'; CI <= '1'; wait for 10ns;
	end process;
end;