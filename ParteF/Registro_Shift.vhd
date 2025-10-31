library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Registro_Shift is
    generic (
        N : integer := 7   -- Tamaño del registro (7 o 8 bits)
    );
    port (
        clk     : in  std_logic;                 -- reloj (SCL)
        reset   : in  std_logic;                 -- reset síncrono
        enable  : in  std_logic;                 -- habilita el desplazamiento
        s_in    : in  std_logic;                 -- entrada serial (SDA)
        q_out   : out std_logic_vector(N-1 downto 0)  -- salida paralela
    );
end Registro_Shift;

architecture Behavioral of Registro_Shift is
    signal reg : std_logic_vector(N-1 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                reg <= (others => '0');
            elsif enable = '1' then
                -- Desplazamiento hacia la izquierda (MSB primero)
                reg <= reg(N-2 downto 0) & s_in;
            end if;
        end if;
    end process;

    q_out <= reg;
end Behavioral;
