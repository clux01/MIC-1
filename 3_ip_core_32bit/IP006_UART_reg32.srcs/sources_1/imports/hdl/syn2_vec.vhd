--
-- VHDL Architecture dic_lib.syn.rtl
--
-- Created:
--          by - lamplp.UNKNOWN (KEL02R5189)
--          at - 09:54:38 25.11.2011
--
-- using Mentor Graphics HDL Designer(TM) 2010.2a (Build 7)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY syn2_vector IS
	generic(
		sig_width : integer := 8
	);
	port (
	signal clk, rst : in std_logic;
	signal inputA : in std_logic_vector(sig_width-1 downto 0);
	signal outputA, rise, fall, any : out std_logic_vector(sig_width-1 downto 0)
	);
END ENTITY syn2_vector;
--
ARCHITECTURE rtl OF syn2_vector IS
	signal a, b, c : std_logic_vector(sig_width-1 downto 0) := (others => '0');
BEGIN
	process(clk)
	begin
		if (clk = '1') and clk'event then
			if (rst = '1') then
				a <= (others => '0');
				b <= (others => '0');
				c <= (others => '0');
			else
				a <= inputA;
				b <= a;
				c <= b;
			end if;
		end if;
	end process;
--one delay (d) more for edge detection to sync with data
outputA <= c;
fall <= (not b) and c;
rise <= b and (not c);
any <= b xor c;
	
END ARCHITECTURE rtl;
