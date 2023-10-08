library IEEE;
use IEEE.std_logic_1164.all;


entity sequenceur_serial is
port( clk, reset, start,  ld_t: in std_logic;
	comptage : in std_logic_vector (3 downto 0);
	set_st, raz_st,raz_ctl,raz_ser, ld_ser, ser, raz_count, ce : out std_logic);
end sequenceur_serial;

architecture arch_sequenceur_serial of sequenceur_serial is  
begin
process (clk,reset)

	begin
	
		if rising_edge(clk) then
			if reset='1' then
			  raz_ctl<='1';
				raz_st <='1';
				raz_ser <='1';
				raz_count <='1';
			elsif reset ='0' then
				raz_st <='0';
				raz_ser <='0';
				raz_count <='0';
			if ld_t = '1' then set_st<='1';
			else set_st <= '0';

			end if;
			if start ='1' then
			      raz_ctl<='0'; 
						ld_ser<='1';
						raz_st<='1';
						ser<='1';
						ce<='1';
			else 
						ld_ser<='0';
						raz_st<='0';
						ser<='0';
						ce<='0';
		
		end if;
		end if;
		end if;
end process;
end arch_sequenceur_serial;
