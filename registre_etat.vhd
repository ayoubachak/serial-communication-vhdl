library IEEE;
use IEEE.std_logic_1164.all;

entity registre_etat is
port( 	clk,raz,set	:	in std_logic;
	d_out 		: 	out std_logic_vector(7 downto 0));
end registre_etat;

architecture arch_registre_etat of registre_etat is

begin
	process(clk)
		begin
		
		if rising_edge(clk) then 
			if raz='1' then d_out <= (others => '0');
			elsif set='1' then d_out(0) <= '1'; d_out(7 downto 1) <= (others => '0');
			end if;
		end if;
	end process;

end arch_registre_etat;
