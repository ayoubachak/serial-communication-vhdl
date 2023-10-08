library IEEE;
use IEEE.std_logic_1164.all;

entity detecteur_parite is
port(	E : in std_logic_vector( 7 downto 0);
	par : out std_logic);
end detecteur_parite;

architecture arch_detecteur_parite of detecteur_parite is
begin

par <= E(0) xor E(1) xor E(2) xor E(3) xor E(4) xor E(5) xor E(6) xor E(7);

end arch_detecteur_parite;
