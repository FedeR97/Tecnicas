library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador is
    generic (
        N : integer := 7
    );
    port (
        A   : in  std_logic_vector(N-1 downto 0);  -- dirección recibida
        B   : in  std_logic_vector(N-1 downto 0);  -- dirección del esclavo
        eq  : out std_logic                        -- salida de comparación (soy)
    );
end Comparador;

architecture Behavioral of Comparador is
begin
    process(A, B)
    begin
        if A = B then
            eq <= '1';
        else
            eq <= '0';
        end if;
    end process;
end Behavioral;
