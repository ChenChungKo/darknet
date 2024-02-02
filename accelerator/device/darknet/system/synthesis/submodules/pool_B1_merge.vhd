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

-- VHDL created from pool_B1_merge
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

entity pool_B1_merge is
    port (
        in_c0_exe12_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe12_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe26_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe26_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe38_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe38_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe411_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe411_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe113_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe113_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe116_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe116_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp620_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_cmp620_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_col_17_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_col_17_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_09_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_09_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp_224_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_224_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe12 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe26 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe38 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe411 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe113 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe116 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp620 : out std_logic_vector(0 downto 0);  -- ufix1
        out_col_17 : out std_logic_vector(31 downto 0);  -- ufix32
        out_row_09 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_224 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end pool_B1_merge;

architecture normal of pool_B1_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe12_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe12_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe26_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe26_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe38_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe38_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe411_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe411_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe113_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe113_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c2_exe116_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_exe116_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cmp620_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp620_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal col_17_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal col_17_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal row_09_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal row_09_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_224_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_224_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- c0_exe12_mux(MUX,2)
    c0_exe12_mux_s <= in_valid_in_0;
    c0_exe12_mux_combproc: PROCESS (c0_exe12_mux_s, in_c0_exe12_1, in_c0_exe12_0)
    BEGIN
        CASE (c0_exe12_mux_s) IS
            WHEN "0" => c0_exe12_mux_q <= in_c0_exe12_1;
            WHEN "1" => c0_exe12_mux_q <= in_c0_exe12_0;
            WHEN OTHERS => c0_exe12_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe12(GPOUT,33)
    out_c0_exe12 <= c0_exe12_mux_q;

    -- c0_exe26_mux(MUX,3)
    c0_exe26_mux_s <= in_valid_in_0;
    c0_exe26_mux_combproc: PROCESS (c0_exe26_mux_s, in_c0_exe26_1, in_c0_exe26_0)
    BEGIN
        CASE (c0_exe26_mux_s) IS
            WHEN "0" => c0_exe26_mux_q <= in_c0_exe26_1;
            WHEN "1" => c0_exe26_mux_q <= in_c0_exe26_0;
            WHEN OTHERS => c0_exe26_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe26(GPOUT,34)
    out_c0_exe26 <= c0_exe26_mux_q;

    -- c0_exe38_mux(MUX,4)
    c0_exe38_mux_s <= in_valid_in_0;
    c0_exe38_mux_combproc: PROCESS (c0_exe38_mux_s, in_c0_exe38_1, in_c0_exe38_0)
    BEGIN
        CASE (c0_exe38_mux_s) IS
            WHEN "0" => c0_exe38_mux_q <= in_c0_exe38_1;
            WHEN "1" => c0_exe38_mux_q <= in_c0_exe38_0;
            WHEN OTHERS => c0_exe38_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe38(GPOUT,35)
    out_c0_exe38 <= c0_exe38_mux_q;

    -- c0_exe411_mux(MUX,5)
    c0_exe411_mux_s <= in_valid_in_0;
    c0_exe411_mux_combproc: PROCESS (c0_exe411_mux_s, in_c0_exe411_1, in_c0_exe411_0)
    BEGIN
        CASE (c0_exe411_mux_s) IS
            WHEN "0" => c0_exe411_mux_q <= in_c0_exe411_1;
            WHEN "1" => c0_exe411_mux_q <= in_c0_exe411_0;
            WHEN OTHERS => c0_exe411_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe411(GPOUT,36)
    out_c0_exe411 <= c0_exe411_mux_q;

    -- c1_exe113_mux(MUX,6)
    c1_exe113_mux_s <= in_valid_in_0;
    c1_exe113_mux_combproc: PROCESS (c1_exe113_mux_s, in_c1_exe113_1, in_c1_exe113_0)
    BEGIN
        CASE (c1_exe113_mux_s) IS
            WHEN "0" => c1_exe113_mux_q <= in_c1_exe113_1;
            WHEN "1" => c1_exe113_mux_q <= in_c1_exe113_0;
            WHEN OTHERS => c1_exe113_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c1_exe113(GPOUT,37)
    out_c1_exe113 <= c1_exe113_mux_q;

    -- c2_exe116_mux(MUX,7)
    c2_exe116_mux_s <= in_valid_in_0;
    c2_exe116_mux_combproc: PROCESS (c2_exe116_mux_s, in_c2_exe116_1, in_c2_exe116_0)
    BEGIN
        CASE (c2_exe116_mux_s) IS
            WHEN "0" => c2_exe116_mux_q <= in_c2_exe116_1;
            WHEN "1" => c2_exe116_mux_q <= in_c2_exe116_0;
            WHEN OTHERS => c2_exe116_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c2_exe116(GPOUT,38)
    out_c2_exe116 <= c2_exe116_mux_q;

    -- cmp620_mux(MUX,8)
    cmp620_mux_s <= in_valid_in_0;
    cmp620_mux_combproc: PROCESS (cmp620_mux_s, in_cmp620_1, in_cmp620_0)
    BEGIN
        CASE (cmp620_mux_s) IS
            WHEN "0" => cmp620_mux_q <= in_cmp620_1;
            WHEN "1" => cmp620_mux_q <= in_cmp620_0;
            WHEN OTHERS => cmp620_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_cmp620(GPOUT,39)
    out_cmp620 <= cmp620_mux_q;

    -- col_17_mux(MUX,9)
    col_17_mux_s <= in_valid_in_0;
    col_17_mux_combproc: PROCESS (col_17_mux_s, in_col_17_1, in_col_17_0)
    BEGIN
        CASE (col_17_mux_s) IS
            WHEN "0" => col_17_mux_q <= in_col_17_1;
            WHEN "1" => col_17_mux_q <= in_col_17_0;
            WHEN OTHERS => col_17_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_col_17(GPOUT,40)
    out_col_17 <= col_17_mux_q;

    -- row_09_mux(MUX,46)
    row_09_mux_s <= in_valid_in_0;
    row_09_mux_combproc: PROCESS (row_09_mux_s, in_row_09_1, in_row_09_0)
    BEGIN
        CASE (row_09_mux_s) IS
            WHEN "0" => row_09_mux_q <= in_row_09_1;
            WHEN "1" => row_09_mux_q <= in_row_09_0;
            WHEN OTHERS => row_09_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_row_09(GPOUT,41)
    out_row_09 <= row_09_mux_q;

    -- valid_or(LOGICAL,50)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,47)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,42)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,48)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,43)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- tmp_224_mux(MUX,49)
    tmp_224_mux_s <= in_valid_in_0;
    tmp_224_mux_combproc: PROCESS (tmp_224_mux_s, in_tmp_224_1, in_tmp_224_0)
    BEGIN
        CASE (tmp_224_mux_s) IS
            WHEN "0" => tmp_224_mux_q <= in_tmp_224_1;
            WHEN "1" => tmp_224_mux_q <= in_tmp_224_0;
            WHEN OTHERS => tmp_224_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_tmp_224(GPOUT,44)
    out_tmp_224 <= tmp_224_mux_q;

    -- out_valid_out(GPOUT,45)
    out_valid_out <= valid_or_q;

END normal;
