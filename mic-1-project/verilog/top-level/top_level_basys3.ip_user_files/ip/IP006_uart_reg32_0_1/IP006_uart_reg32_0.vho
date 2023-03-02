-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.
-- IP VLNV: fh-joanneum.local:user:IP006_uart_reg32:1.2
-- IP Revision: 8

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT IP006_uart_reg32_0
  PORT (
    clk : IN STD_LOGIC;
    reg100 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg101 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg102 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg103 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg104 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg105 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg106 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg107 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg108 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg109 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg10A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg10B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg10C : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg10D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg10E : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg10F : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reset_s : IN STD_LOGIC;
    uartA_rxd : IN STD_LOGIC;
    uartB_rxd : IN STD_LOGIC;
    input_read : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
    output_read : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
    output_written : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
    reg000 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg001 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg002 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg003 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg004 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg005 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg006 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg007 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg008 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg009 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg00A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg00B : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg00C : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg00D : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg00E : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg00F : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    uartA_txd : OUT STD_LOGIC;
    uartB_txd : OUT STD_LOGIC 
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : IP006_uart_reg32_0
  PORT MAP (
    clk => clk,
    reg100 => reg100,
    reg101 => reg101,
    reg102 => reg102,
    reg103 => reg103,
    reg104 => reg104,
    reg105 => reg105,
    reg106 => reg106,
    reg107 => reg107,
    reg108 => reg108,
    reg109 => reg109,
    reg10A => reg10A,
    reg10B => reg10B,
    reg10C => reg10C,
    reg10D => reg10D,
    reg10E => reg10E,
    reg10F => reg10F,
    reset_s => reset_s,
    uartA_rxd => uartA_rxd,
    uartB_rxd => uartB_rxd,
    input_read => input_read,
    output_read => output_read,
    output_written => output_written,
    reg000 => reg000,
    reg001 => reg001,
    reg002 => reg002,
    reg003 => reg003,
    reg004 => reg004,
    reg005 => reg005,
    reg006 => reg006,
    reg007 => reg007,
    reg008 => reg008,
    reg009 => reg009,
    reg00A => reg00A,
    reg00B => reg00B,
    reg00C => reg00C,
    reg00D => reg00D,
    reg00E => reg00E,
    reg00F => reg00F,
    uartA_txd => uartA_txd,
    uartB_txd => uartB_txd
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file IP006_uart_reg32_0.vhd when simulating
-- the core, IP006_uart_reg32_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.



