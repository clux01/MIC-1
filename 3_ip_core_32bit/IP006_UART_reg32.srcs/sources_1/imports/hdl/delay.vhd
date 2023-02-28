--
-- VHDL Architecture dic_lib.syn.rtl
--
-- Created:
--          by - lamplp.UNKNOWN (KEL02R5189)
--          at - 09:54:38 25.11.2011
--
-- using Mentor Graphics HDL Designer(TM) 2010.2a (Build 7)
--
--delays input xclock cycles
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY delay IS
	generic(
		delay_clk_cycles : integer := 8
	);
	port (
	signal clk, reset, input : in std_logic;
	signal output : out std_logic
	);
END ENTITY delay;
--
ARCHITECTURE rtl OF delay IS
  signal shiftreg : std_logic_vector (delay_clk_cycles-1 downto 0);
  
BEGIN
    
--generate this if delay is 1-X
gen_norm: if (delay_clk_cycles > 0) generate
  	process(clk)
  	begin
  		if clk='1' and clk'event then
  			if reset='1' then
  				shiftreg <= (others=>'0');
  			else
  				shiftreg <= input & shiftreg(delay_clk_cycles-1 downto 1);
  			end if;
  		end if;
  	end process;
  output <= shiftreg(0);
end generate;

--generate this if delay = 0
gen_zero_delay: if (delay_clk_cycles = 0) generate
  output <= input;
end generate;
	
END ARCHITECTURE rtl;

