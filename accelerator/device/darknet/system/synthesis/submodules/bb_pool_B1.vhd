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

-- VHDL created from bb_pool_B1
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

entity bb_pool_B1 is
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
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_in_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_kernel_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_out_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_09_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_09_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp_224_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_224_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
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
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_224 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_pool_B1;

architecture normal of bb_pool_B1 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_pool_B1_stall_region is
        port (
            in_c0_exe12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe38 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe411 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe116 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp620 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_17 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_09 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp_224 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe113 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe411 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe113 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe119 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe116 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe125 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp620 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_17 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_row_09 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_224 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B1_branch is
        port (
            in_c0_exe113 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe38 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe411 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe119 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe116 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe125 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp620 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_17 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_09 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_224 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe113 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe411 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe113 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe119 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe116 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe125 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp620 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_17 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_row_09 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_224 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B1_merge is
        port (
            in_c0_exe12_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe12_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe26_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe26_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe38_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe38_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe411_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe411_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe113_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe116_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe116_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp620_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_cmp620_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_17_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_col_17_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_09_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_09_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_224_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_224_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe411 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe113 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe116 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp620 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_17 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_row_09 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_224 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_pool_B1_stall_region_out_c0_exe113 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_stall_region_out_c0_exe12 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_stall_region_out_c0_exe26 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_stall_region_out_c0_exe38 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_stall_region_out_c0_exe411 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_stall_region_out_c1_exe113 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_stall_region_out_c1_exe119 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_stall_region_out_c2_exe116 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_stall_region_out_c2_exe125 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_stall_region_out_cmp620 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_stall_region_out_col_17 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_stall_region_out_row_09 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_stall_region_out_tmp_224 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_branch_out_c0_exe113 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_branch_out_c0_exe12 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_branch_out_c0_exe26 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_branch_out_c0_exe38 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_branch_out_c0_exe411 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_branch_out_c1_exe113 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_branch_out_c1_exe119 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_branch_out_c2_exe116 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_branch_out_c2_exe125 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_branch_out_cmp620 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_branch_out_col_17 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_branch_out_row_09 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_branch_out_tmp_224 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_out_c0_exe12 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_out_c0_exe26 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_out_c0_exe38 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_out_c0_exe411 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_out_c1_exe113 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_out_c2_exe116 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_out_cmp620 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_out_col_17 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_out_row_09 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_out_tmp_224 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- pool_B1_merge(BLACKBOX,49)
    thepool_B1_merge : pool_B1_merge
    PORT MAP (
        in_c0_exe12_0 => in_c0_exe12_0,
        in_c0_exe12_1 => in_c0_exe12_1,
        in_c0_exe26_0 => in_c0_exe26_0,
        in_c0_exe26_1 => in_c0_exe26_1,
        in_c0_exe38_0 => in_c0_exe38_0,
        in_c0_exe38_1 => in_c0_exe38_1,
        in_c0_exe411_0 => in_c0_exe411_0,
        in_c0_exe411_1 => in_c0_exe411_1,
        in_c1_exe113_0 => in_c1_exe113_0,
        in_c1_exe113_1 => in_c1_exe113_1,
        in_c2_exe116_0 => in_c2_exe116_0,
        in_c2_exe116_1 => in_c2_exe116_1,
        in_cmp620_0 => in_cmp620_0,
        in_cmp620_1 => in_cmp620_1,
        in_col_17_0 => in_col_17_0,
        in_col_17_1 => in_col_17_1,
        in_row_09_0 => in_row_09_0,
        in_row_09_1 => in_row_09_1,
        in_stall_in => bb_pool_B1_stall_region_out_stall_out,
        in_tmp_224_0 => in_tmp_224_0,
        in_tmp_224_1 => in_tmp_224_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_c0_exe12 => pool_B1_merge_out_c0_exe12,
        out_c0_exe26 => pool_B1_merge_out_c0_exe26,
        out_c0_exe38 => pool_B1_merge_out_c0_exe38,
        out_c0_exe411 => pool_B1_merge_out_c0_exe411,
        out_c1_exe113 => pool_B1_merge_out_c1_exe113,
        out_c2_exe116 => pool_B1_merge_out_c2_exe116,
        out_cmp620 => pool_B1_merge_out_cmp620,
        out_col_17 => pool_B1_merge_out_col_17,
        out_row_09 => pool_B1_merge_out_row_09,
        out_stall_out_0 => pool_B1_merge_out_stall_out_0,
        out_stall_out_1 => pool_B1_merge_out_stall_out_1,
        out_tmp_224 => pool_B1_merge_out_tmp_224,
        out_valid_out => pool_B1_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B1_stall_region(BLACKBOX,2)
    thebb_pool_B1_stall_region : bb_pool_B1_stall_region
    PORT MAP (
        in_c0_exe12 => pool_B1_merge_out_c0_exe12,
        in_c0_exe26 => pool_B1_merge_out_c0_exe26,
        in_c0_exe38 => pool_B1_merge_out_c0_exe38,
        in_c0_exe411 => pool_B1_merge_out_c0_exe411,
        in_c1_exe113 => pool_B1_merge_out_c1_exe113,
        in_c2_exe116 => pool_B1_merge_out_c2_exe116,
        in_cmp620 => pool_B1_merge_out_cmp620,
        in_col_17 => pool_B1_merge_out_col_17,
        in_out_size => in_out_size,
        in_row_09 => pool_B1_merge_out_row_09,
        in_stall_in => pool_B1_branch_out_stall_out,
        in_stride => in_stride,
        in_tmp_224 => pool_B1_merge_out_tmp_224,
        in_valid_in => pool_B1_merge_out_valid_out,
        out_c0_exe113 => bb_pool_B1_stall_region_out_c0_exe113,
        out_c0_exe12 => bb_pool_B1_stall_region_out_c0_exe12,
        out_c0_exe26 => bb_pool_B1_stall_region_out_c0_exe26,
        out_c0_exe38 => bb_pool_B1_stall_region_out_c0_exe38,
        out_c0_exe411 => bb_pool_B1_stall_region_out_c0_exe411,
        out_c1_exe113 => bb_pool_B1_stall_region_out_c1_exe113,
        out_c1_exe119 => bb_pool_B1_stall_region_out_c1_exe119,
        out_c2_exe116 => bb_pool_B1_stall_region_out_c2_exe116,
        out_c2_exe125 => bb_pool_B1_stall_region_out_c2_exe125,
        out_cmp620 => bb_pool_B1_stall_region_out_cmp620,
        out_col_17 => bb_pool_B1_stall_region_out_col_17,
        out_row_09 => bb_pool_B1_stall_region_out_row_09,
        out_stall_out => bb_pool_B1_stall_region_out_stall_out,
        out_tmp_224 => bb_pool_B1_stall_region_out_tmp_224,
        out_valid_out => bb_pool_B1_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- pool_B1_branch(BLACKBOX,48)
    thepool_B1_branch : pool_B1_branch
    PORT MAP (
        in_c0_exe113 => bb_pool_B1_stall_region_out_c0_exe113,
        in_c0_exe12 => bb_pool_B1_stall_region_out_c0_exe12,
        in_c0_exe26 => bb_pool_B1_stall_region_out_c0_exe26,
        in_c0_exe38 => bb_pool_B1_stall_region_out_c0_exe38,
        in_c0_exe411 => bb_pool_B1_stall_region_out_c0_exe411,
        in_c1_exe113 => bb_pool_B1_stall_region_out_c1_exe113,
        in_c1_exe119 => bb_pool_B1_stall_region_out_c1_exe119,
        in_c2_exe116 => bb_pool_B1_stall_region_out_c2_exe116,
        in_c2_exe125 => bb_pool_B1_stall_region_out_c2_exe125,
        in_cmp620 => bb_pool_B1_stall_region_out_cmp620,
        in_col_17 => bb_pool_B1_stall_region_out_col_17,
        in_row_09 => bb_pool_B1_stall_region_out_row_09,
        in_stall_in_0 => in_stall_in_0,
        in_tmp_224 => bb_pool_B1_stall_region_out_tmp_224,
        in_valid_in => bb_pool_B1_stall_region_out_valid_out,
        out_c0_exe113 => pool_B1_branch_out_c0_exe113,
        out_c0_exe12 => pool_B1_branch_out_c0_exe12,
        out_c0_exe26 => pool_B1_branch_out_c0_exe26,
        out_c0_exe38 => pool_B1_branch_out_c0_exe38,
        out_c0_exe411 => pool_B1_branch_out_c0_exe411,
        out_c1_exe113 => pool_B1_branch_out_c1_exe113,
        out_c1_exe119 => pool_B1_branch_out_c1_exe119,
        out_c2_exe116 => pool_B1_branch_out_c2_exe116,
        out_c2_exe125 => pool_B1_branch_out_c2_exe125,
        out_cmp620 => pool_B1_branch_out_cmp620,
        out_col_17 => pool_B1_branch_out_col_17,
        out_row_09 => pool_B1_branch_out_row_09,
        out_stall_out => pool_B1_branch_out_stall_out,
        out_tmp_224 => pool_B1_branch_out_tmp_224,
        out_valid_out_0 => pool_B1_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe113(GPOUT,32)
    out_c0_exe113 <= pool_B1_branch_out_c0_exe113;

    -- out_c0_exe12(GPOUT,33)
    out_c0_exe12 <= pool_B1_branch_out_c0_exe12;

    -- out_c0_exe26(GPOUT,34)
    out_c0_exe26 <= pool_B1_branch_out_c0_exe26;

    -- out_c0_exe38(GPOUT,35)
    out_c0_exe38 <= pool_B1_branch_out_c0_exe38;

    -- out_c0_exe411(GPOUT,36)
    out_c0_exe411 <= pool_B1_branch_out_c0_exe411;

    -- out_c1_exe113(GPOUT,37)
    out_c1_exe113 <= pool_B1_branch_out_c1_exe113;

    -- out_c1_exe119(GPOUT,38)
    out_c1_exe119 <= pool_B1_branch_out_c1_exe119;

    -- out_c2_exe116(GPOUT,39)
    out_c2_exe116 <= pool_B1_branch_out_c2_exe116;

    -- out_c2_exe125(GPOUT,40)
    out_c2_exe125 <= pool_B1_branch_out_c2_exe125;

    -- out_cmp620(GPOUT,41)
    out_cmp620 <= pool_B1_branch_out_cmp620;

    -- out_col_17(GPOUT,42)
    out_col_17 <= pool_B1_branch_out_col_17;

    -- out_row_09(GPOUT,43)
    out_row_09 <= pool_B1_branch_out_row_09;

    -- out_stall_out_0(GPOUT,44)
    out_stall_out_0 <= pool_B1_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,45)
    out_stall_out_1 <= pool_B1_merge_out_stall_out_1;

    -- out_tmp_224(GPOUT,46)
    out_tmp_224 <= pool_B1_branch_out_tmp_224;

    -- out_valid_out_0(GPOUT,47)
    out_valid_out_0 <= pool_B1_branch_out_valid_out_0;

END normal;
