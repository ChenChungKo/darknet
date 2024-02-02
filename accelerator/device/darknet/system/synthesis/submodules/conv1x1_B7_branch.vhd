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

-- VHDL created from conv1x1_B7_branch
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

entity conv1x1_B7_branch is
    port (
        in_c0_exe116869 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe12 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe1254 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe221295 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2255 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321399 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3256 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe357 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417177 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4257 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517283 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5258 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe112 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe121 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe129 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe237 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01048 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116869 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe12 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe1254 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe221295 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2255 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe321399 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3256 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe357 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417177 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4257 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe517283 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5258 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe112 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe121 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe129 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe237 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01048 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B7_branch;

architecture normal of conv1x1_B7_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_c0_exe116869(GPOUT,21)
    out_c0_exe116869 <= in_c0_exe116869;

    -- out_c0_exe12(GPOUT,22)
    out_c0_exe12 <= in_c0_exe12;

    -- out_c0_exe1254(GPOUT,23)
    out_c0_exe1254 <= in_c0_exe1254;

    -- out_c0_exe221295(GPOUT,24)
    out_c0_exe221295 <= in_c0_exe221295;

    -- out_c0_exe2255(GPOUT,25)
    out_c0_exe2255 <= in_c0_exe2255;

    -- out_c0_exe321399(GPOUT,26)
    out_c0_exe321399 <= in_c0_exe321399;

    -- out_c0_exe3256(GPOUT,27)
    out_c0_exe3256 <= in_c0_exe3256;

    -- out_c0_exe357(GPOUT,28)
    out_c0_exe357 <= in_c0_exe357;

    -- out_c0_exe417177(GPOUT,29)
    out_c0_exe417177 <= in_c0_exe417177;

    -- out_c0_exe4257(GPOUT,30)
    out_c0_exe4257 <= in_c0_exe4257;

    -- out_c0_exe517283(GPOUT,31)
    out_c0_exe517283 <= in_c0_exe517283;

    -- out_c0_exe5258(GPOUT,32)
    out_c0_exe5258 <= in_c0_exe5258;

    -- out_c1_exe112(GPOUT,33)
    out_c1_exe112 <= in_c1_exe112;

    -- out_c2_exe121(GPOUT,34)
    out_c2_exe121 <= in_c2_exe121;

    -- out_c3_exe129(GPOUT,35)
    out_c3_exe129 <= in_c3_exe129;

    -- out_c3_exe237(GPOUT,36)
    out_c3_exe237 <= in_c3_exe237;

    -- out_j_01048(GPOUT,37)
    out_j_01048 <= in_j_01048;

    -- stall_out(LOGICAL,40)
    stall_out_q <= in_valid_in and in_stall_in_0;

    -- out_stall_out(GPOUT,38)
    out_stall_out <= stall_out_q;

    -- out_valid_out_0(GPOUT,39)
    out_valid_out_0 <= in_valid_in;

END normal;
