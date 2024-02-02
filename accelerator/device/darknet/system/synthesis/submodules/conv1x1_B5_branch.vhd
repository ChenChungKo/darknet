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

-- VHDL created from conv1x1_B5_branch
-- VHDL created on Wed Nov 29 11:50:03 2023


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

entity conv1x1_B5_branch is
    port (
        in_c0_exe116871 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe1211 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe14 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe2212 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3213 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe359 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417179 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4214 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe517285 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5215 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6216 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe114 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe123 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe131 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe239 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01050 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116871 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1211 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe14 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe2212 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3213 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe359 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417179 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4214 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe517285 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5215 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6216 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe114 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe123 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe131 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe239 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01050 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B5_branch;

architecture normal of conv1x1_B5_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_c0_exe116871(GPOUT,20)
    out_c0_exe116871 <= in_c0_exe116871;

    -- out_c0_exe1211(GPOUT,21)
    out_c0_exe1211 <= in_c0_exe1211;

    -- out_c0_exe14(GPOUT,22)
    out_c0_exe14 <= in_c0_exe14;

    -- out_c0_exe2212(GPOUT,23)
    out_c0_exe2212 <= in_c0_exe2212;

    -- out_c0_exe3213(GPOUT,24)
    out_c0_exe3213 <= in_c0_exe3213;

    -- out_c0_exe359(GPOUT,25)
    out_c0_exe359 <= in_c0_exe359;

    -- out_c0_exe417179(GPOUT,26)
    out_c0_exe417179 <= in_c0_exe417179;

    -- out_c0_exe4214(GPOUT,27)
    out_c0_exe4214 <= in_c0_exe4214;

    -- out_c0_exe517285(GPOUT,28)
    out_c0_exe517285 <= in_c0_exe517285;

    -- out_c0_exe5215(GPOUT,29)
    out_c0_exe5215 <= in_c0_exe5215;

    -- out_c0_exe6216(GPOUT,30)
    out_c0_exe6216 <= in_c0_exe6216;

    -- out_c1_exe114(GPOUT,31)
    out_c1_exe114 <= in_c1_exe114;

    -- out_c2_exe123(GPOUT,32)
    out_c2_exe123 <= in_c2_exe123;

    -- out_c3_exe131(GPOUT,33)
    out_c3_exe131 <= in_c3_exe131;

    -- out_c3_exe239(GPOUT,34)
    out_c3_exe239 <= in_c3_exe239;

    -- out_j_01050(GPOUT,35)
    out_j_01050 <= in_j_01050;

    -- stall_out(LOGICAL,38)
    stall_out_q <= in_valid_in and in_stall_in_0;

    -- out_stall_out(GPOUT,36)
    out_stall_out <= stall_out_q;

    -- out_valid_out_0(GPOUT,37)
    out_valid_out_0 <= in_valid_in;

END normal;
