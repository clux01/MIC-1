-- VHDL Entity IP006_lib.uart_rx.symbol
--
-- Created:
--          by - lamplpat.UNKNOWN (M00159)
--          at - 07:19:40 26.04.2017
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2016.1 (Build 8)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY uart_rx IS
   GENERIC( 
      baudrate_g      : integer := 9600;
      core_clk_freq_g : integer := 50000000
   );
   PORT( 
      clk    : IN     std_logic;
      reset  : IN     std_logic;
      rxd    : IN     std_logic;
      dout   : OUT    std_logic_vector (7 DOWNTO 0);
      rx_ack : OUT    std_logic
   );

-- Declarations

END uart_rx ;

--
-- VHDL Architecture IP006_lib.uart_rx.fsm
--
-- Created:
--          by - lamplpat.Personal ETM (M00159)
--          at - 14:52:44 05/04/16
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2016.1 (Build 8)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
ARCHITECTURE fsm OF uart_rx IS

   -- Architecture Declarations
   constant bdcnt_mod_c: integer :=  core_clk_freq_g / baudrate_g / 8;
   signal bdcnt_en: std_logic;
   signal bdcnt_tc: std_logic;
   signal bdcnt: integer range 0 to bdcnt_mod_c-1;
   signal rx_reg: std_logic_vector(dout'left downto 0);
   signal bit_cnt: integer range 0 to dout'length+1;
   signal sample_cnt: integer range 0 to 7;
   signal symbol_val: std_logic_vector(3 downto 0);
   signal dout_int: std_logic_vector(dout'range);
   signal rxd_q1, rxd_q2: std_logic;
   signal escape: std_logic;

   TYPE STATE_TYPE IS (
      s_wait,
      s_rx,
      s_rx1,
      s_reg
   );
 
   -- State vector declaration
   ATTRIBUTE state_vector : string;
   ATTRIBUTE state_vector OF fsm : ARCHITECTURE IS "current_state";

   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE;
   SIGNAL next_state : STATE_TYPE;

   -- Declare any pre-registered internal signals
   SIGNAL rx_ack_cld : std_logic ;

BEGIN

   -----------------------------------------------------------------
   clocked_proc : PROCESS ( 
      clk
   )
   -----------------------------------------------------------------
   BEGIN
      IF (clk'EVENT AND clk = '1') THEN
         IF (reset = '1') THEN
            current_state <= s_wait;
            -- Default Reset Values
            rx_ack_cld <= '0';
            dout_int <= (others => '0');
            rx_reg <= (others => '0');
         ELSE
            current_state <= next_state;
            -- Default Assignment To Internals
            rx_ack_cld <= '0';

            -- Combined Actions
            CASE current_state IS
               WHEN s_wait => 
                  IF (rxd_q2 = '0') THEN 
                     symbol_val <= (others => '0');
                     sample_cnt <= 1;
                     bit_cnt <= rx_reg'length+1;
                     rx_reg <= (others => '0');
                  END IF;
               WHEN s_rx => 
                  IF (bdcnt_tc = '1' and sample_cnt = 7) THEN 
                     if rxd_q2 = '1' then
                        symbol_val <= symbol_val+1;
                     end if;
                  ELSIF (bdcnt_tc = '1') THEN 
                     sample_cnt <= sample_cnt+1;
                     if rxd_q2 = '1' then
                        symbol_val <= symbol_val+1;
                     end if;
                  END IF;
               WHEN s_rx1 => 
                  IF (escape = '1' and bdcnt_tc = '1') THEN 
                  ELSIF ((bdcnt_tc = '1') AND (bit_cnt = 1)) THEN 
                     symbol_val <= (others => '0');
                     sample_cnt <= 1;
                     bit_cnt <= bit_cnt - 1;
                     rx_reg <= (symbol_val(2) or symbol_val(3)) &  rx_reg(rx_reg'left downto 1) ;
                     if rxd_q2 = '1' then
                        symbol_val <= "0001";
                     else
                        symbol_val <= "0000";
                     end if;
                  ELSIF (bdcnt_tc = '1') THEN 
                     symbol_val <= (others => '0');
                     sample_cnt <= 1;
                     bit_cnt <= bit_cnt - 1;
                     rx_reg <= (symbol_val(2) or symbol_val(3)) &  rx_reg(rx_reg'left downto 1) ;
                     if rxd_q2 = '1' then
                        symbol_val <= "0001";
                     else
                        symbol_val <= "0000";
                     end if;
                  END IF;
               WHEN s_reg => 
                  rx_ack_cld <= '1';
                  dout_int <= rx_reg;
               WHEN OTHERS =>
                  NULL;
            END CASE;
         END IF;
      END IF;
   END PROCESS clocked_proc;
 
   -----------------------------------------------------------------
   nextstate_proc : PROCESS ( 
      bdcnt_tc,
      bit_cnt,
      current_state,
      escape,
      rxd_q2,
      sample_cnt
   )
   -----------------------------------------------------------------
   BEGIN
      CASE current_state IS
         WHEN s_wait => 
            IF (rxd_q2 = '0') THEN 
               next_state <= s_rx;
            ELSE
               next_state <= s_wait;
            END IF;
         WHEN s_rx => 
            IF (bdcnt_tc = '1' and sample_cnt = 7) THEN 
               next_state <= s_rx1;
            ELSIF (bdcnt_tc = '1') THEN 
               next_state <= s_rx;
            ELSE
               next_state <= s_rx;
            END IF;
         WHEN s_rx1 => 
            IF (escape = '1' and bdcnt_tc = '1') THEN 
               next_state <= s_wait;
            ELSIF ((bdcnt_tc = '1') AND (bit_cnt = 1)) THEN 
               next_state <= s_reg;
            ELSIF (bdcnt_tc = '1') THEN 
               next_state <= s_rx;
            ELSE
               next_state <= s_rx1;
            END IF;
         WHEN s_reg => 
            next_state <= s_wait;
         WHEN OTHERS =>
            next_state <= s_wait;
      END CASE;
   END PROCESS nextstate_proc;
 
   -----------------------------------------------------------------
   output_proc : PROCESS ( 
      current_state
   )
   -----------------------------------------------------------------
   BEGIN
      -- Default Assignment To Internals
      bdcnt_en <= '0';

      -- Combined Actions
      CASE current_state IS
         WHEN s_rx => 
            bdcnt_en <= '1';
         WHEN s_rx1 => 
            bdcnt_en <= '1';
         WHEN OTHERS =>
            NULL;
      END CASE;
   END PROCESS output_proc;
 
   -- Concurrent Statements
   -- Clocked output assignments
   rx_ack <= rx_ack_cld;
   -- baudrate counter ----------
   process(clk)
   begin
      if clk='1' and clk'event then
         if bdcnt_en = '0'  then
             bdcnt <= 0;
         else
             if bdcnt_tc = '1' then
                 bdcnt <= 0;
             else
               bdcnt <= bdcnt + 1;
             end if;
         end if;
     end if;
   end process;
   
   -- resample external rxd signal ---
   process(clk)
   begin
      if clk='1' and clk'event then
          if reset = '1' then
               rxd_q1 <= '1';
               rxd_q2 <= '1';
          else
               rxd_q1 <= rxd;
               rxd_q2 <= rxd_q1;
           end if;
       end if;
   end process;
   
   bdcnt_tc <= '1' when bdcnt = bdcnt_mod_c - 1 else '0';
   dout <= dout_int;
   
   -- escape when start bit is not zero ---
   escape <= '1' when bit_cnt = rx_reg'length+1 and symbol_val(3 downto 2) /= "00" else '0';
END fsm;
