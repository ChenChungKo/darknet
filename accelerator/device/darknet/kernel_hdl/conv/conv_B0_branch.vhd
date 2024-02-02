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

-- VHDL created from conv_B0_branch
-- VHDL created on Wed Nov 29 11:50:04 2023


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

entity conv_B0_branch is
    port (
        in_acl_hw_wg_id : in std_logic_vector(31 downto 0);  -- ufix32
        in_add13 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp42 : in std_logic_vector(0 downto 0);  -- ufix1
        in_global_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul38 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_acl_hw_wg_id : out std_logic_vector(31 downto 0);  -- ufix32
        out_add13 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp42 : out std_logic_vector(0 downto 0);  -- ufix1
        out_global_id_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_global_id_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul38 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_B0_branch;

architecture normal of conv_B0_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_acl_hw_wg_id(GPOUT,18)
    out_acl_hw_wg_id <= in_acl_hw_wg_id;

    -- out_add13(GPOUT,19)
    out_add13 <= in_add13;

    -- out_c0_exe1(GPOUT,20)
    out_c0_exe1 <= in_c0_exe1;

    -- out_c0_exe2(GPOUT,21)
    out_c0_exe2 <= in_c0_exe2;

    -- out_c0_exe3(GPOUT,22)
    out_c0_exe3 <= in_c0_exe3;

    -- out_c1_exe1(GPOUT,23)
    out_c1_exe1 <= in_c1_exe1;

    -- out_c1_exe2(GPOUT,24)
    out_c1_exe2 <= in_c1_exe2;

    -- out_cmp42(GPOUT,25)
    out_cmp42 <= in_cmp42;

    -- out_global_id_0(GPOUT,26)
    out_global_id_0 <= in_global_id_0;

    -- out_global_id_1(GPOUT,27)
    out_global_id_1 <= in_global_id_1;

    -- out_local_id_0(GPOUT,28)
    out_local_id_0 <= in_local_id_0;

    -- out_local_id_1(GPOUT,29)
    out_local_id_1 <= in_local_id_1;

    -- out_mul(GPOUT,30)
    out_mul <= in_mul;

    -- out_mul38(GPOUT,31)
    out_mul38 <= in_mul38;

    -- stall_out(LOGICAL,34)
    stall_out_q <= in_valid_in and in_stall_in_0;

    -- out_stall_out(GPOUT,32)
    out_stall_out <= stall_out_q;

    -- out_valid_out_0(GPOUT,33)
    out_valid_out_0 <= in_valid_in;

END normal;
