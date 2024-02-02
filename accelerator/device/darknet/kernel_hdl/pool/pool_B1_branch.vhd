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

-- VHDL created from pool_B1_branch
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

entity pool_B1_branch is
    port (
        in_c0_exe113 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe12 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe26 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe38 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe411 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe113 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe119 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe116 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe125 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp620 : in std_logic_vector(0 downto 0);  -- ufix1
        in_col_17 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_09 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp_224 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe113 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe12 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe26 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe38 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe411 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe113 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe119 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe116 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe125 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp620 : out std_logic_vector(0 downto 0);  -- ufix1
        out_col_17 : out std_logic_vector(31 downto 0);  -- ufix32
        out_row_09 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_224 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end pool_B1_branch;

architecture normal of pool_B1_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_c0_exe113(GPOUT,17)
    out_c0_exe113 <= in_c0_exe113;

    -- out_c0_exe12(GPOUT,18)
    out_c0_exe12 <= in_c0_exe12;

    -- out_c0_exe26(GPOUT,19)
    out_c0_exe26 <= in_c0_exe26;

    -- out_c0_exe38(GPOUT,20)
    out_c0_exe38 <= in_c0_exe38;

    -- out_c0_exe411(GPOUT,21)
    out_c0_exe411 <= in_c0_exe411;

    -- out_c1_exe113(GPOUT,22)
    out_c1_exe113 <= in_c1_exe113;

    -- out_c1_exe119(GPOUT,23)
    out_c1_exe119 <= in_c1_exe119;

    -- out_c2_exe116(GPOUT,24)
    out_c2_exe116 <= in_c2_exe116;

    -- out_c2_exe125(GPOUT,25)
    out_c2_exe125 <= in_c2_exe125;

    -- out_cmp620(GPOUT,26)
    out_cmp620 <= in_cmp620;

    -- out_col_17(GPOUT,27)
    out_col_17 <= in_col_17;

    -- out_row_09(GPOUT,28)
    out_row_09 <= in_row_09;

    -- stall_out(LOGICAL,32)
    stall_out_q <= in_valid_in and in_stall_in_0;

    -- out_stall_out(GPOUT,29)
    out_stall_out <= stall_out_q;

    -- out_tmp_224(GPOUT,30)
    out_tmp_224 <= in_tmp_224;

    -- out_valid_out_0(GPOUT,31)
    out_valid_out_0 <= in_valid_in;

END normal;
