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

-- VHDL created from conv1x1_B9_merge
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

entity conv1x1_B9_merge is
    port (
        in_c0_exe116867_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe1254105_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe19_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe221293_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2255107_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321397_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417175_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517281_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe110_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe1280112_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe119_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe136_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe244_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01046_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116867 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1254105 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe19 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe221293 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2255107 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe321397 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417175 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe517281 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe110 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c1_exe1280112 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe119 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe136 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe244 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01046 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B9_merge;

architecture normal of conv1x1_B9_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_c0_exe116867(GPOUT,18)
    out_c0_exe116867 <= in_c0_exe116867_0;

    -- out_c0_exe1254105(GPOUT,19)
    out_c0_exe1254105 <= in_c0_exe1254105_0;

    -- out_c0_exe19(GPOUT,20)
    out_c0_exe19 <= in_c0_exe19_0;

    -- out_c0_exe221293(GPOUT,21)
    out_c0_exe221293 <= in_c0_exe221293_0;

    -- out_c0_exe2255107(GPOUT,22)
    out_c0_exe2255107 <= in_c0_exe2255107_0;

    -- out_c0_exe321397(GPOUT,23)
    out_c0_exe321397 <= in_c0_exe321397_0;

    -- out_c0_exe417175(GPOUT,24)
    out_c0_exe417175 <= in_c0_exe417175_0;

    -- out_c0_exe517281(GPOUT,25)
    out_c0_exe517281 <= in_c0_exe517281_0;

    -- out_c1_exe110(GPOUT,26)
    out_c1_exe110 <= in_c1_exe110_0;

    -- out_c1_exe1280112(GPOUT,27)
    out_c1_exe1280112 <= in_c1_exe1280112_0;

    -- out_c2_exe119(GPOUT,28)
    out_c2_exe119 <= in_c2_exe119_0;

    -- out_c3_exe136(GPOUT,29)
    out_c3_exe136 <= in_c3_exe136_0;

    -- out_c3_exe244(GPOUT,30)
    out_c3_exe244 <= in_c3_exe244_0;

    -- out_j_01046(GPOUT,31)
    out_j_01046 <= in_j_01046_0;

    -- stall_out(LOGICAL,34)
    stall_out_q <= in_valid_in_0 and in_stall_in;

    -- out_stall_out_0(GPOUT,32)
    out_stall_out_0 <= stall_out_q;

    -- out_valid_out(GPOUT,33)
    out_valid_out <= in_valid_in_0;

END normal;
