library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ParteD is
    Port (
        a : in  std_logic_vector(1 downto 0);
        b : in  std_logic_vector(1 downto 0);
        producto_unsigned : out std_logic_vector(3 downto 0);
        producto_signed   : out std_logic_vector(3 downto 0)
    );
end ParteD;

architecture Behavioral of ParteD is
begin
    -- Multiplicación en módulo (sin signo)
    producto_unsigned <= std_logic_vector(
        resize(unsigned(a) * unsigned(b), 4)
    );

    -- Multiplicación en complemento a 2 (con signo)
    producto_signed <= std_logic_vector(
        resize(signed(a) * signed(b), 4)
    );
end Behavioral;
