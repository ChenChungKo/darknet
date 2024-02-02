-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from pool_B3_merge
-- VHDL created on Wed Nov 29 11:50:05 2023


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity pool_B3_merge is
    port (
        in_c0_exe11329_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe13_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe24_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe39_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe412_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe114_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe14133_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe117_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp621_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_col_1727_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_0925_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp_222_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_unnamed_pool4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe11329 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe13 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe24 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe39 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe412 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe114 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe14133 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe117 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp621 : out std_logic_vector(0 downto 0);  -- ufix1
        out_col_1727 : out std_logic_vector(31 downto 0);  -- ufix32
        out_row_0925 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_222 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_unnamed_pool4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end pool_B3_merge;

architecture normal of pool_B3_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_c0_exe11329(GPOUT,17)
    out_c0_exe11329 <= in_c0_exe11329_0;

    -- out_c0_exe13(GPOUT,18)
    out_c0_exe13 <= in_c0_exe13_0;

    -- out_c0_exe24(GPOUT,19)
    out_c0_exe24 <= in_c0_exe24_0;

    -- out_c0_exe39(GPOUT,20)
    out_c0_exe39 <= in_c0_exe39_0;

    -- out_c0_exe412(GPOUT,21)
    out_c0_exe412 <= in_c0_exe412_0;

    -- out_c1_exe114(GPOUT,22)
    out_c1_exe114 <= in_c1_exe114_0;

    -- out_c1_exe14133(GPOUT,23)
    out_c1_exe14133 <= in_c1_exe14133_0;

    -- out_c2_exe117(GPOUT,24)
    out_c2_exe117 <= in_c2_exe117_0;

    -- out_cmp621(GPOUT,25)
    out_cmp621 <= in_cmp621_0;

    -- out_col_1727(GPOUT,26)
    out_col_1727 <= in_col_1727_0;

    -- out_row_0925(GPOUT,27)
    out_row_0925 <= in_row_0925_0;

    -- stall_out(LOGICAL,32)
    stall_out_q <= in_valid_in_0 and in_stall_in;

    -- out_stall_out_0(GPOUT,28)
    out_stall_out_0 <= stall_out_q;

    -- out_tmp_222(GPOUT,29)
    out_tmp_222 <= in_tmp_222_0;

    -- out_unnamed_pool4(GPOUT,30)
    out_unnamed_pool4 <= in_unnamed_pool4_0;

    -- out_valid_out(GPOUT,31)
    out_valid_out <= in_valid_in_0;

END normal;
