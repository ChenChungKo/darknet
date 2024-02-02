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

-- VHDL created from conv1x1_B7_merge
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

entity conv1x1_B7_merge is
    port (
        in_c0_exe116869_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe121191_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe12_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe221295_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321399_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe357_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417177_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517283_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe112_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe1238104_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe121_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe129_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe237_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01048_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116869 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe12 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe121191 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe221295 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe321399 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe357 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417177 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe517283 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe112 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c1_exe1238104 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe121 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe129 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe237 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01048 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B7_merge;

architecture normal of conv1x1_B7_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_c0_exe116869(GPOUT,18)
    out_c0_exe116869 <= in_c0_exe116869_0;

    -- out_c0_exe12(GPOUT,19)
    out_c0_exe12 <= in_c0_exe12_0;

    -- out_c0_exe121191(GPOUT,20)
    out_c0_exe121191 <= in_c0_exe121191_0;

    -- out_c0_exe221295(GPOUT,21)
    out_c0_exe221295 <= in_c0_exe221295_0;

    -- out_c0_exe321399(GPOUT,22)
    out_c0_exe321399 <= in_c0_exe321399_0;

    -- out_c0_exe357(GPOUT,23)
    out_c0_exe357 <= in_c0_exe357_0;

    -- out_c0_exe417177(GPOUT,24)
    out_c0_exe417177 <= in_c0_exe417177_0;

    -- out_c0_exe517283(GPOUT,25)
    out_c0_exe517283 <= in_c0_exe517283_0;

    -- out_c1_exe112(GPOUT,26)
    out_c1_exe112 <= in_c1_exe112_0;

    -- out_c1_exe1238104(GPOUT,27)
    out_c1_exe1238104 <= in_c1_exe1238104_0;

    -- out_c2_exe121(GPOUT,28)
    out_c2_exe121 <= in_c2_exe121_0;

    -- out_c3_exe129(GPOUT,29)
    out_c3_exe129 <= in_c3_exe129_0;

    -- out_c3_exe237(GPOUT,30)
    out_c3_exe237 <= in_c3_exe237_0;

    -- out_j_01048(GPOUT,31)
    out_j_01048 <= in_j_01048_0;

    -- stall_out(LOGICAL,34)
    stall_out_q <= in_valid_in_0 and in_stall_in;

    -- out_stall_out_0(GPOUT,32)
    out_stall_out_0 <= stall_out_q;

    -- out_valid_out(GPOUT,33)
    out_valid_out <= in_valid_in_0;

END normal;
