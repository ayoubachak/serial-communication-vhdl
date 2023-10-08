library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity reg_serialisateur is
port( raz, clk, load, rotate : in std_logic;
	d_in : in std_logic_vector(8 downto 0);
	TX : out std_logic);
end reg_serialisateur;


architecture arch_reg_serialisateur of reg_serialisateur is
signal data :unsigned (10 downto 0); 
begin

process (clk,raz)

	begin
		if rising_edge(clk) then
			if raz='1' then data <= (others => '0' );
		elsif load = '1' then data  <= unsigned(d_in & "01");
				
		elsif rotate ='1' then 
			data<=rotate_right(data,1);
			end if;
		end if;
end process;

TX <= data(0);

end arch_reg_serialisateur;
