library IEEE;
use IEEE.std_logic_1164.all;

entity registre_ctl is
port( 	clk,raz,load	:	in std_logic;
	d_in 		: 	in std_logic_vector(7 downto 0);
	d_out 		: 	out std_logic);
end registre_ctl;

architecture arch_registre_ctl of registre_ctl is
begin
	process(clk,raz)
		begin	
		if rising_edge(clk) then 
			if raz='1' then d_out <= '0';
			elsif load='1' then d_out <= d_in(0);
			end if;
		end if;
	end process;
end arch_registre_ctl;

