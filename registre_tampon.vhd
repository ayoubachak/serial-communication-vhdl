library IEEE;
use IEEE.std_logic_1164.all;

entity registre_tampon is
port( 	clk,reset,load	:	in std_logic;
	d_in 		: 	in std_logic_vector(7 downto 0);
	d_out 		: 	out std_logic_vector(7 downto 0));
end registre_tampon;

architecture arch_registre_tampon of registre_tampon is
begin
	process(clk,reset)
		begin
		if reset='1' then d_out <= (others => '0');
		elsif rising_edge(clk) then 
			if load='1' then d_out <= d_in;
			end if;
		end if;
	end process;
end arch_registre_tampon;

