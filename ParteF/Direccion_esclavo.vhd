library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Direccion_esclavo is
--	generic (
--        direc : std_logic_vector(6 downto 0) := "1010001"
--	);
    port (
--        dir_in   : in  std_logic_vector(6 downto 0);  -- dirección que se puede cambiar externamente
        dir_out  : out std_logic_vector(6 downto 0)   -- salida hacia el comparador
    );
end Direccion_esclavo;

architecture Behavioral of Direccion_esclavo is
begin
--    dir_out <= dir_in;
		dir_out <= "1010001";
end Behavioral;
