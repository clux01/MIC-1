--
-- VHDL Architecture dic_lib.syn.rtl
--
-- Created:
--          by - lamplp.UNKNOWN (KEL02R5189)
--          at - 09:54:38 25.11.2011
--
-- using Mentor Graphics HDL Designer(TM) 2010.2a (Build 7)
--
--delays vector input xclock cycles
--e .. with enable input
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY delay_e_vector IS
	generic(
		DELAY_CLK_CYCLES : integer := 8;
		WIDTH : integer := 8;
		RST_TO : std_logic := '0'
	);
	port (
	signal clk, reset, enable: in std_logic;
	signal input : in std_logic_vector(WIDTH-1 downto 0);
	signal output : out std_logic_vector(WIDTH-1 downto 0)
	);
END ENTITY delay_e_vector;
--
ARCHITECTURE rtl OF delay_e_vector IS
  
	type fifo_memory_type is array(0 to DELAY_CLK_CYCLES-1) of std_logic_vector(WIDTH-1 downto 0);
	signal fifo_memory: fifo_memory_type;
BEGIN
  
--generate this if delay is 1-X
gen_norm: if (delay_clk_cycles > 0) generate
	process(clk)
	begin
		if clk='1' and clk'event then
			if reset='1' then
				fifo_memory <= (others => (others => RST_TO));
			else
				if enable='1' then
				fifo_memory <= input & fifo_memory(0 to DELAY_CLK_CYCLES-2);
				end if;
			end if;
		end if;
	end process;
  output <= fifo_memory(DELAY_CLK_CYCLES-1);
end generate;

--generate this if delay = 0
gen_zero_delay: if (delay_clk_cycles = 0) generate
  output <= input;
end generate;
	
END ARCHITECTURE rtl;

