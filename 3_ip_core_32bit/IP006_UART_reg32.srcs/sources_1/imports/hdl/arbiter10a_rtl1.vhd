--
-- VHDL Architecture dev_lib.arbiter.rtl
--
-- Created:
--          by - net.UNKNOWN (KPERSM4268)
--          at - 13:25:47 10.03.2011
--
-- using Mentor Graphics HDL Designer(TM) 2010.2 (Build 21)
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
LIBRARY IP006_LIB;
USE IP006_LIB.busdef.ALL;

ENTITY arbiter11_32 IS
   PORT( 
      mbus0_i   : OUT    mbus32_i_t;
      mbus1_i   : OUT    mbus32_i_t;
      mbus0_o   : IN     mbus32_o_t;
      mbus1_o   : IN     mbus32_o_t;
      sbus_i    : OUT    sbus32_i_t;
      sbus0_o   : IN     sbus32_o_t;
      sbus1_o   : IN     sbus32_o_t;
      sbus2_o   : IN     sbus32_o_t;
      sbus3_o   : IN     sbus32_o_t;
      sbus4_o   : IN     sbus32_o_t;
      sbus5_o   : IN     sbus32_o_t;
      sbus6_o   : IN     sbus32_o_t;
      sbus7_o   : IN     sbus32_o_t;
      sbus8_o   : IN     sbus32_o_t;
      sbus9_o   : IN     sbus32_o_t;
      sbus10_o  : IN     sbus32_o_t;
      mbus_null : OUT    mbus32_o_t;
      sbus_null : OUT    sbus32_o_t;
      reset     : IN     std_logic;
      clk       : IN     std_logic
   );

-- Declarations

END arbiter11_32 ;

--
architecture rtl of arbiter11_32 is
  signal bus_grant0, bus_grant1: std_logic;
  signal bus_request0, bus_request1: std_logic;
  signal mbus_i: mbus32_i_t;
  
begin
  
--internal signals --  
mbus0_i.grant <= bus_grant0;
mbus1_i.grant <= bus_grant1;
bus_request0 <= mbus0_o.req;
bus_request1 <= mbus1_o.req;
              
-- bus arbiter ----
process(clk)
begin
   if clk='1' and clk'event then
      if reset = '1' then
          bus_grant0 <= '0';
          bus_grant1 <= '0';
     else
        if bus_grant0 = '0'  and bus_grant1 = '0' then
           if bus_request0 = '1'  then
                bus_grant0 <= '1';
           elsif bus_request1 = '1'   then
                bus_grant1 <= '1';
           end if;
        elsif bus_grant0 = '1' then
           if bus_request0 = '0' then
               bus_grant0 <= '0';
           end if;
        elsif bus_grant1 = '1' then
            if bus_request1 = '0' then
              bus_grant1 <= '0';
           end if;
        end if;
      end if;
   end if;
end process;

sbus_i.wdata <= mbus0_o.wdata or mbus1_o.wdata;
sbus_i.addr  <= mbus0_o.addr  or mbus1_o.addr;
sbus_i.we    <= mbus0_o.we    or mbus1_o.we;
sbus_i.rd    <= mbus0_o.rd    or mbus1_o.rd;


mbus_null <= mbus_null32_c;
sbus_null <= sbus_null32_c;

mbus_i.ack   <= sbus0_o.ack   or sbus1_o.ack or sbus2_o.ack or sbus3_o.ack or sbus4_o.ack or sbus5_o.ack or sbus6_o.ack or sbus7_o.ack or sbus8_o.ack or sbus9_o.ack or sbus10_o.ack;
mbus0_i.ack   <= mbus_i.ack;
mbus1_i.ack   <= mbus_i.ack;

mbus_i.rdata <= sbus0_o.rdata or sbus1_o.rdata or sbus2_o.rdata or sbus3_o.rdata or sbus4_o.rdata or sbus5_o.rdata or sbus6_o.rdata or sbus7_o.rdata or sbus8_o.rdata or sbus9_o.rdata or sbus10_o.rdata;
mbus0_i.rdata <= mbus_i.rdata;
mbus1_i.rdata <= mbus_i.rdata;

process(clk)
begin
  if clk='1' and clk'event then


   end if;
end process;
end architecture rtl;

