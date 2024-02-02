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

-- VHDL created from bb_pool_B1_stall_region
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

entity bb_pool_B1_stall_region is
    port (
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe12 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe26 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe38 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe411 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe113 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe116 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp620 : in std_logic_vector(0 downto 0);  -- ufix1
        in_col_17 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_09 : in std_logic_vector(31 downto 0);  -- ufix32
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
        out_tmp_224 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_out_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_pool_B1_stall_region;

architecture normal of bb_pool_B1_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool is
        port (
            in_c0_eni2_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni2_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit12_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit12_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool is
        port (
            in_c1_eni2_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni2_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_eni2_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exit18_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit18_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool is
        port (
            in_c2_eni120_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c2_eni120_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exit24_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c2_exit24_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B1_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_9 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_9 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_out_c0_exit12_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_out_c1_exit18_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_out_c2_exit24_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_data_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_data_out_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_data_out_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_data_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_data_out_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B1_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_pool_B1_merge_reg_aunroll_x_out_data_out_1_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_pool_B1_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (195 downto 0);
    signal bubble_select_pool_B1_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B1_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B1_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B1_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_pool_B1_merge_reg_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_pool_B1_merge_reg_aunroll_x_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_pool_B1_merge_reg_aunroll_x_h : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B1_merge_reg_aunroll_x_i : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B1_merge_reg_aunroll_x_j : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_pool_B1_merge_reg_aunroll_x_k : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (195 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_i : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_j : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_k : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B1_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data6 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data7 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D6 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D7 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data6 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data7 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D6 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D7 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data6 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data7 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D6 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D7 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D9 : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4(STALLENABLE,139)
    -- Valid signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_V0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_R_v_0;
    -- Stall signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_s_tv_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backStall and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_R_v_0;
    -- Backward Enable generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_v_s_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN and SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_V;
    -- Backward Stall generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backStall <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN);
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "0") THEN
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_R_v_0 and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_s_tv_0;
            ELSE
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2(STALLENABLE,137)
    -- Valid signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_V0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_R_v_0;
    -- Stall signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_s_tv_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backStall and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_R_v_0;
    -- Backward Enable generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_v_s_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN and SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_V;
    -- Backward Stall generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backStall <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN);
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "0") THEN
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_R_v_0 and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_s_tv_0;
            ELSE
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_stall_entry(STALLENABLE,133)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= pool_B1_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,122)
    bubble_join_stall_entry_q <= in_tmp_224 & in_row_09 & in_col_17 & in_cmp620 & in_c2_exe116 & in_c1_exe113 & in_c0_exe411 & in_c0_exe38 & in_c0_exe26 & in_c0_exe12;

    -- bubble_select_stall_entry(BITSELECT,123)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(32 downto 32));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(33 downto 33));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(34 downto 34));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(66 downto 35));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(98 downto 67));
    bubble_select_stall_entry_h <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(99 downto 99));
    bubble_select_stall_entry_i <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(131 downto 100));
    bubble_select_stall_entry_j <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(163 downto 132));
    bubble_select_stall_entry_k <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(195 downto 164));

    -- pool_B1_merge_reg_aunroll_x(BLACKBOX,14)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_data_out_2@1
    -- out out_data_out_3@1
    -- out out_data_out_4@1
    -- out out_data_out_5@1
    -- out out_data_out_6@1
    -- out out_data_out_7@1
    -- out out_data_out_8@1
    -- out out_data_out_9@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    thepool_B1_merge_reg_aunroll_x : pool_B1_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_j,
        in_data_in_1 => bubble_select_stall_entry_i,
        in_data_in_2 => bubble_select_stall_entry_b,
        in_data_in_3 => bubble_select_stall_entry_c,
        in_data_in_4 => bubble_select_stall_entry_d,
        in_data_in_5 => bubble_select_stall_entry_e,
        in_data_in_6 => bubble_select_stall_entry_f,
        in_data_in_7 => bubble_select_stall_entry_g,
        in_data_in_8 => bubble_select_stall_entry_h,
        in_data_in_9 => bubble_select_stall_entry_k,
        in_stall_in => SE_out_pool_B1_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => pool_B1_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => pool_B1_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => pool_B1_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => pool_B1_merge_reg_aunroll_x_out_data_out_3,
        out_data_out_4 => pool_B1_merge_reg_aunroll_x_out_data_out_4,
        out_data_out_5 => pool_B1_merge_reg_aunroll_x_out_data_out_5,
        out_data_out_6 => pool_B1_merge_reg_aunroll_x_out_data_out_6,
        out_data_out_7 => pool_B1_merge_reg_aunroll_x_out_data_out_7,
        out_data_out_8 => pool_B1_merge_reg_aunroll_x_out_data_out_8,
        out_data_out_9 => pool_B1_merge_reg_aunroll_x_out_data_out_9,
        out_stall_out => pool_B1_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => pool_B1_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_pool_B1_merge_reg_aunroll_x(STALLENABLE,132)
    SE_out_pool_B1_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_pool_B1_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_pool_B1_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_pool_B1_merge_reg_aunroll_x_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_pool_B1_merge_reg_aunroll_x_fromReg0 <= SE_out_pool_B1_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_pool_B1_merge_reg_aunroll_x_fromReg1 <= SE_out_pool_B1_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_pool_B1_merge_reg_aunroll_x_fromReg2 <= SE_out_pool_B1_merge_reg_aunroll_x_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_pool_B1_merge_reg_aunroll_x_consumed0 <= (not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backStall) and SE_out_pool_B1_merge_reg_aunroll_x_wireValid) or SE_out_pool_B1_merge_reg_aunroll_x_fromReg0;
    SE_out_pool_B1_merge_reg_aunroll_x_consumed1 <= (not (i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_out_o_stall) and SE_out_pool_B1_merge_reg_aunroll_x_wireValid) or SE_out_pool_B1_merge_reg_aunroll_x_fromReg1;
    SE_out_pool_B1_merge_reg_aunroll_x_consumed2 <= (not (i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_out_o_stall) and SE_out_pool_B1_merge_reg_aunroll_x_wireValid) or SE_out_pool_B1_merge_reg_aunroll_x_fromReg2;
    -- Consuming
    SE_out_pool_B1_merge_reg_aunroll_x_StallValid <= SE_out_pool_B1_merge_reg_aunroll_x_backStall and SE_out_pool_B1_merge_reg_aunroll_x_wireValid;
    SE_out_pool_B1_merge_reg_aunroll_x_toReg0 <= SE_out_pool_B1_merge_reg_aunroll_x_StallValid and SE_out_pool_B1_merge_reg_aunroll_x_consumed0;
    SE_out_pool_B1_merge_reg_aunroll_x_toReg1 <= SE_out_pool_B1_merge_reg_aunroll_x_StallValid and SE_out_pool_B1_merge_reg_aunroll_x_consumed1;
    SE_out_pool_B1_merge_reg_aunroll_x_toReg2 <= SE_out_pool_B1_merge_reg_aunroll_x_StallValid and SE_out_pool_B1_merge_reg_aunroll_x_consumed2;
    -- Backward Stall generation
    SE_out_pool_B1_merge_reg_aunroll_x_or0 <= SE_out_pool_B1_merge_reg_aunroll_x_consumed0;
    SE_out_pool_B1_merge_reg_aunroll_x_or1 <= SE_out_pool_B1_merge_reg_aunroll_x_consumed1 and SE_out_pool_B1_merge_reg_aunroll_x_or0;
    SE_out_pool_B1_merge_reg_aunroll_x_wireStall <= not (SE_out_pool_B1_merge_reg_aunroll_x_consumed2 and SE_out_pool_B1_merge_reg_aunroll_x_or1);
    SE_out_pool_B1_merge_reg_aunroll_x_backStall <= SE_out_pool_B1_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_pool_B1_merge_reg_aunroll_x_V0 <= SE_out_pool_B1_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B1_merge_reg_aunroll_x_fromReg0);
    SE_out_pool_B1_merge_reg_aunroll_x_V1 <= SE_out_pool_B1_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B1_merge_reg_aunroll_x_fromReg1);
    SE_out_pool_B1_merge_reg_aunroll_x_V2 <= SE_out_pool_B1_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B1_merge_reg_aunroll_x_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_pool_B1_merge_reg_aunroll_x_wireValid <= pool_B1_merge_reg_aunroll_x_out_valid_out;

    -- SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0(STALLENABLE,135)
    -- Valid signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_V0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_0;
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_V1 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_1;
    -- Stall signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_s_tv_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backStall and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_0;
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_s_tv_1 <= i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_out_o_stall and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_1;
    -- Backward Enable generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_or0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_s_tv_0;
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_s_tv_1 or SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_v_s_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN and SE_out_pool_B1_merge_reg_aunroll_x_V0;
    -- Backward Stall generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backStall <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_v_s_0);
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_0 <= (others => '0');
            SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "0") THEN
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_0 and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_s_tv_0;
            ELSE
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_v_s_0;
            END IF;

            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "0") THEN
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_1 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_1 and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_s_tv_1;
            ELSE
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_R_v_1 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_pool_B1_merge_reg_aunroll_x(BITJOIN,119)
    bubble_join_pool_B1_merge_reg_aunroll_x_q <= pool_B1_merge_reg_aunroll_x_out_data_out_9 & pool_B1_merge_reg_aunroll_x_out_data_out_8 & pool_B1_merge_reg_aunroll_x_out_data_out_7 & pool_B1_merge_reg_aunroll_x_out_data_out_6 & pool_B1_merge_reg_aunroll_x_out_data_out_5 & pool_B1_merge_reg_aunroll_x_out_data_out_4 & pool_B1_merge_reg_aunroll_x_out_data_out_3 & pool_B1_merge_reg_aunroll_x_out_data_out_2 & pool_B1_merge_reg_aunroll_x_out_data_out_1 & pool_B1_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_pool_B1_merge_reg_aunroll_x(BITSELECT,120)
    bubble_select_pool_B1_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_pool_B1_merge_reg_aunroll_x_q(31 downto 0));
    bubble_select_pool_B1_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_pool_B1_merge_reg_aunroll_x_q(63 downto 32));
    bubble_select_pool_B1_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_pool_B1_merge_reg_aunroll_x_q(95 downto 64));
    bubble_select_pool_B1_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_pool_B1_merge_reg_aunroll_x_q(96 downto 96));
    bubble_select_pool_B1_merge_reg_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_pool_B1_merge_reg_aunroll_x_q(97 downto 97));
    bubble_select_pool_B1_merge_reg_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_pool_B1_merge_reg_aunroll_x_q(98 downto 98));
    bubble_select_pool_B1_merge_reg_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_pool_B1_merge_reg_aunroll_x_q(130 downto 99));
    bubble_select_pool_B1_merge_reg_aunroll_x_i <= STD_LOGIC_VECTOR(bubble_join_pool_B1_merge_reg_aunroll_x_q(162 downto 131));
    bubble_select_pool_B1_merge_reg_aunroll_x_j <= STD_LOGIC_VECTOR(bubble_join_pool_B1_merge_reg_aunroll_x_q(163 downto 163));
    bubble_select_pool_B1_merge_reg_aunroll_x_k <= STD_LOGIC_VECTOR(bubble_join_pool_B1_merge_reg_aunroll_x_q(195 downto 164));

    -- redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_0(REG,99)
    redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "1") THEN
                redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B1_merge_reg_aunroll_x_k);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_1(REG,100)
    redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "1") THEN
                redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_1_q <= STD_LOGIC_VECTOR(redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_0(REG,92)
    redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "1") THEN
                redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B1_merge_reg_aunroll_x_j);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_1(REG,93)
    redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "1") THEN
                redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_1_q <= STD_LOGIC_VECTOR(redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_0(REG,85)
    redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "1") THEN
                redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B1_merge_reg_aunroll_x_i);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_1(REG,86)
    redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "1") THEN
                redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_1_q <= STD_LOGIC_VECTOR(redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_0(REG,78)
    redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "1") THEN
                redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B1_merge_reg_aunroll_x_h);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_1(REG,79)
    redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "1") THEN
                redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_1_q <= STD_LOGIC_VECTOR(redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_0(REG,71)
    redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "1") THEN
                redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B1_merge_reg_aunroll_x_g);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_1(REG,72)
    redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "1") THEN
                redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_1_q <= STD_LOGIC_VECTOR(redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_0(REG,64)
    redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "1") THEN
                redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B1_merge_reg_aunroll_x_f);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_1(REG,65)
    redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "1") THEN
                redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_1_q <= STD_LOGIC_VECTOR(redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_0(REG,57)
    redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "1") THEN
                redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B1_merge_reg_aunroll_x_e);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_1(REG,58)
    redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "1") THEN
                redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_1_q <= STD_LOGIC_VECTOR(redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_0(REG,50)
    redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "1") THEN
                redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B1_merge_reg_aunroll_x_d);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_1(REG,51)
    redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "1") THEN
                redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_1_q <= STD_LOGIC_VECTOR(redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_pool_B1_merge_reg_aunroll_x_out_data_out_1_1_0(REG,43)
    redist1_pool_B1_merge_reg_aunroll_x_out_data_out_1_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_pool_B1_merge_reg_aunroll_x_out_data_out_1_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "1") THEN
                redist1_pool_B1_merge_reg_aunroll_x_out_data_out_1_1_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B1_merge_reg_aunroll_x_c);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_0(REG,44)
    redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "1") THEN
                redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_0_q <= STD_LOGIC_VECTOR(redist1_pool_B1_merge_reg_aunroll_x_out_data_out_1_1_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0(REG,36)
    redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_backEN = "1") THEN
                redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B1_merge_reg_aunroll_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1(REG,37)
    redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "1") THEN
                redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_q <= STD_LOGIC_VECTOR(redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1(STALLENABLE,136)
    -- Valid signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_V0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_R_v_0;
    -- Stall signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_s_tv_0 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backStall and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_R_v_0;
    -- Backward Enable generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_v_s_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_V0;
    -- Backward Stall generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backStall <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_v_s_0);
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_backEN = "0") THEN
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_R_v_0 and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_s_tv_0;
            ELSE
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2(STALLREG,233)
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid <= (others => '0');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data0 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data1 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data2 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data3 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data4 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data5 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data6 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data7 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data8 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data9 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backStall and (SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid or SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_i_valid);

            IF (SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data0 <= STD_LOGIC_VECTOR(redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data1 <= STD_LOGIC_VECTOR(redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_0_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data2 <= STD_LOGIC_VECTOR(redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_1_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data3 <= STD_LOGIC_VECTOR(redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_1_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data4 <= STD_LOGIC_VECTOR(redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_1_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data5 <= STD_LOGIC_VECTOR(redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_1_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data6 <= STD_LOGIC_VECTOR(redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_1_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data7 <= STD_LOGIC_VECTOR(redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_1_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data8 <= STD_LOGIC_VECTOR(redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_1_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data9 <= STD_LOGIC_VECTOR(redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_1_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_i_valid <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_V0;
    -- Stall signal propagation
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backStall <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid or not (SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_i_valid);

    -- Valid
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_V <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_i_valid;

    -- Data0
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D0 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data0 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_1_q;
    -- Data1
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D1 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data1 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_0_q;
    -- Data2
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D2 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data2 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_1_q;
    -- Data3
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D3 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data3 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_1_q;
    -- Data4
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D4 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data4 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_1_q;
    -- Data5
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D5 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data5 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_1_q;
    -- Data6
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D6 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data6 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_1_q;
    -- Data7
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D7 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data7 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_1_q;
    -- Data8
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D8 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data8 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_1_q;
    -- Data9
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D9 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_data9 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_r_valid = "1" ELSE redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_1_q;

    -- redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_2(REG,101)
    redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "1") THEN
                redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_2_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D9);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_3(REG,102)
    redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "1") THEN
                redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_3_q <= STD_LOGIC_VECTOR(redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_2(REG,94)
    redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "1") THEN
                redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_2_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D8);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_3(REG,95)
    redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "1") THEN
                redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_3_q <= STD_LOGIC_VECTOR(redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_2(REG,87)
    redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "1") THEN
                redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_2_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D7);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_3(REG,88)
    redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "1") THEN
                redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_3_q <= STD_LOGIC_VECTOR(redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_2(REG,80)
    redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "1") THEN
                redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_2_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D6);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_3(REG,81)
    redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "1") THEN
                redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_3_q <= STD_LOGIC_VECTOR(redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_2(REG,73)
    redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "1") THEN
                redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_2_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D5);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_3(REG,74)
    redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "1") THEN
                redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_3_q <= STD_LOGIC_VECTOR(redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_2(REG,66)
    redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "1") THEN
                redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_2_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D4);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_3(REG,67)
    redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "1") THEN
                redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_3_q <= STD_LOGIC_VECTOR(redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_2(REG,59)
    redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "1") THEN
                redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_2_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D3);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_3(REG,60)
    redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "1") THEN
                redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_3_q <= STD_LOGIC_VECTOR(redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_2(REG,52)
    redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "1") THEN
                redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_2_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D2);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_3(REG,53)
    redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "1") THEN
                redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_3_q <= STD_LOGIC_VECTOR(redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_1(REG,45)
    redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "1") THEN
                redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_1_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_2(REG,46)
    redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "1") THEN
                redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_2_q <= STD_LOGIC_VECTOR(redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2(REG,38)
    redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_backEN = "1") THEN
                redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3(REG,39)
    redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "1") THEN
                redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_q <= STD_LOGIC_VECTOR(redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3(STALLENABLE,138)
    -- Valid signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_V0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_R_v_0;
    -- Stall signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_s_tv_0 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backStall and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_R_v_0;
    -- Backward Enable generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_v_s_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_2_V0;
    -- Backward Stall generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backStall <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_v_s_0);
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_backEN = "0") THEN
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_R_v_0 and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_s_tv_0;
            ELSE
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4(STALLREG,234)
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid <= (others => '0');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data0 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data1 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data2 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data3 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data4 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data5 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data6 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data7 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data8 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data9 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backStall and (SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid or SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_i_valid);

            IF (SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data0 <= STD_LOGIC_VECTOR(redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data1 <= STD_LOGIC_VECTOR(redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_2_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data2 <= STD_LOGIC_VECTOR(redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_3_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data3 <= STD_LOGIC_VECTOR(redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_3_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data4 <= STD_LOGIC_VECTOR(redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_3_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data5 <= STD_LOGIC_VECTOR(redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_3_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data6 <= STD_LOGIC_VECTOR(redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_3_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data7 <= STD_LOGIC_VECTOR(redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_3_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data8 <= STD_LOGIC_VECTOR(redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_3_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data9 <= STD_LOGIC_VECTOR(redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_3_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_i_valid <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_V0;
    -- Stall signal propagation
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backStall <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid or not (SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_i_valid);

    -- Valid
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_V <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_i_valid;

    -- Data0
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D0 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data0 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_3_q;
    -- Data1
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D1 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data1 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_2_q;
    -- Data2
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D2 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data2 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_3_q;
    -- Data3
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D3 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data3 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_3_q;
    -- Data4
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D4 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data4 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_3_q;
    -- Data5
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D5 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data5 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_3_q;
    -- Data6
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D6 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data6 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_3_q;
    -- Data7
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D7 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data7 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_3_q;
    -- Data8
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D8 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data8 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_3_q;
    -- Data9
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D9 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_data9 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_r_valid = "1" ELSE redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_3_q;

    -- redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_4(REG,103)
    redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "1") THEN
                redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_4_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D9);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_5(REG,104)
    redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_5_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "1") THEN
                redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_5_q <= STD_LOGIC_VECTOR(redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_4_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_4(REG,96)
    redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_4_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "1") THEN
                redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_4_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D8);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_5(REG,97)
    redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_5_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "1") THEN
                redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_5_q <= STD_LOGIC_VECTOR(redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_4_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_4(REG,89)
    redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "1") THEN
                redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_4_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D7);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_5(REG,90)
    redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_5_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "1") THEN
                redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_5_q <= STD_LOGIC_VECTOR(redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_4_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_4(REG,82)
    redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "1") THEN
                redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_4_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D6);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_5(REG,83)
    redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_5_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "1") THEN
                redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_5_q <= STD_LOGIC_VECTOR(redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_4_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_4(REG,75)
    redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_4_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "1") THEN
                redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_4_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D5);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_5(REG,76)
    redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_5_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "1") THEN
                redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_5_q <= STD_LOGIC_VECTOR(redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_4_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_4(REG,68)
    redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_4_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "1") THEN
                redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_4_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D4);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_5(REG,69)
    redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_5_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "1") THEN
                redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_5_q <= STD_LOGIC_VECTOR(redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_4_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_4(REG,61)
    redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_4_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "1") THEN
                redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_4_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D3);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_5(REG,62)
    redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_5_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "1") THEN
                redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_5_q <= STD_LOGIC_VECTOR(redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_4_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_4(REG,54)
    redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "1") THEN
                redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_4_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D2);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_5(REG,55)
    redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_5_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "1") THEN
                redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_5_q <= STD_LOGIC_VECTOR(redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_4_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_3(REG,47)
    redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "1") THEN
                redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_3_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_4(REG,48)
    redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "1") THEN
                redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_4_q <= STD_LOGIC_VECTOR(redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_3_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4(REG,40)
    redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_backEN = "1") THEN
                redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5(REG,41)
    redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "1") THEN
                redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_q <= STD_LOGIC_VECTOR(redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5(STALLENABLE,140)
    -- Valid signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_V0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_R_v_0;
    -- Stall signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_s_tv_0 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backStall and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_R_v_0;
    -- Backward Enable generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_v_s_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_4_V0;
    -- Backward Stall generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backStall <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_v_s_0);
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_backEN = "0") THEN
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_R_v_0 and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_s_tv_0;
            ELSE
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6(STALLREG,235)
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid <= (others => '0');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data0 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data1 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data2 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data3 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data4 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data5 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data6 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data7 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data8 <= (others => '-');
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data9 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backStall and (SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid or SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_i_valid);

            IF (SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data0 <= STD_LOGIC_VECTOR(redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data1 <= STD_LOGIC_VECTOR(redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_4_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data2 <= STD_LOGIC_VECTOR(redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_5_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data3 <= STD_LOGIC_VECTOR(redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_5_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data4 <= STD_LOGIC_VECTOR(redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_5_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data5 <= STD_LOGIC_VECTOR(redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_5_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data6 <= STD_LOGIC_VECTOR(redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_5_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data7 <= STD_LOGIC_VECTOR(redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_5_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data8 <= STD_LOGIC_VECTOR(redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_5_q);
                SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data9 <= STD_LOGIC_VECTOR(redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_5_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_i_valid <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_V0;
    -- Stall signal propagation
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backStall <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid or not (SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_i_valid);

    -- Valid
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_V <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_i_valid;

    -- Data0
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D0 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data0 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_5_q;
    -- Data1
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D1 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data1 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_4_q;
    -- Data2
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D2 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data2 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_5_q;
    -- Data3
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D3 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data3 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_5_q;
    -- Data4
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D4 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data4 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_5_q;
    -- Data5
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D5 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data5 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_5_q;
    -- Data6
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D6 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data6 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_5_q;
    -- Data7
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D7 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data7 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_5_q;
    -- Data8
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D8 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data8 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_5_q;
    -- Data9
    SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D9 <= SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_data9 WHEN SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_r_valid = "1" ELSE redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_5_q;

    -- SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6(STALLENABLE,141)
    -- Valid signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_V0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_R_v_0;
    -- Stall signal propagation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_s_tv_0 <= SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_backStall and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_R_v_0;
    -- Backward Enable generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_v_s_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN and SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_V;
    -- Backward Stall generation
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backStall <= not (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN);
    SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "0") THEN
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_R_v_0 and SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_s_tv_0;
            ELSE
                SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_R_v_0 <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x(BLACKBOX,11)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit12_0@8
    -- out out_c0_exit12_1@8
    -- out out_o_stall@20000000
    -- out out_o_valid@8
    thei_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x : i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool
    PORT MAP (
        in_c0_eni2_0 => GND_q,
        in_c0_eni2_1 => bubble_select_pool_B1_merge_reg_aunroll_x_b,
        in_c0_eni2_2 => bubble_select_pool_B1_merge_reg_aunroll_x_h,
        in_i_stall => SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_backStall,
        in_i_valid => SE_out_pool_B1_merge_reg_aunroll_x_V1,
        in_out_size => in_out_size,
        out_c0_exit12_1 => i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_out_c0_exit12_1,
        out_o_stall => i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x(BLACKBOX,12)@1
    -- in in_i_stall@20000000
    -- out out_c1_exit18_0@8
    -- out out_c1_exit18_1@8
    -- out out_o_stall@20000000
    -- out out_o_valid@8
    thei_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x : i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool
    PORT MAP (
        in_c1_eni2_0 => GND_q,
        in_c1_eni2_1 => bubble_select_pool_B1_merge_reg_aunroll_x_b,
        in_c1_eni2_2 => bubble_select_pool_B1_merge_reg_aunroll_x_i,
        in_i_stall => SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_backStall,
        in_i_valid => SE_out_pool_B1_merge_reg_aunroll_x_V2,
        in_stride => in_stride,
        out_c1_exit18_1 => i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_out_c1_exit18_1,
        out_o_stall => i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x(BLACKBOX,13)@2
    -- in in_i_stall@20000000
    -- out out_c2_exit24_0@8
    -- out out_c2_exit24_1@8
    -- out out_o_stall@20000000
    -- out out_o_valid@8
    thei_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x : i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool
    PORT MAP (
        in_c2_eni120_0 => GND_q,
        in_c2_eni120_1 => redist1_pool_B1_merge_reg_aunroll_x_out_data_out_1_1_0_q,
        in_i_stall => SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_backStall,
        in_i_valid => SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_0_V1,
        in_stride => in_stride,
        out_c2_exit24_1 => i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_out_c2_exit24_1,
        out_o_stall => i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x(STALLENABLE,130)
    -- Valid signal propagation
    SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_V0 <= SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_backStall <= in_stall_in or not (SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_and0 <= i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_out_o_valid;
    SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_and1 <= i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_out_o_valid and SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_and0;
    SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_and2 <= i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_out_o_valid and SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_and1;
    SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_wireValid <= SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_V0 and SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_and2;

    -- redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_6(REG,105)
    redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_6_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "1") THEN
                redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D9);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6(REG,42)
    redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "1") THEN
                redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_5(REG,49)
    redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_5_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "1") THEN
                redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_5_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_6(REG,98)
    redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_6_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "1") THEN
                redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D8);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x(BITJOIN,115)
    bubble_join_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_q <= i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_out_c2_exit24_1;

    -- bubble_select_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x(BITSELECT,116)
    bubble_select_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_q(31 downto 0));

    -- redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_6(REG,91)
    redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_6_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "1") THEN
                redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D7);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x(BITJOIN,111)
    bubble_join_i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_q <= i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_out_c1_exit18_1;

    -- bubble_select_i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x(BITSELECT,112)
    bubble_select_i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_q(31 downto 0));

    -- redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_6(REG,84)
    redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_6_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "1") THEN
                redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D6);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_6(REG,77)
    redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_6_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "1") THEN
                redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D5);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_6(REG,70)
    redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_6_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "1") THEN
                redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D4);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_6(REG,63)
    redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_6_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "1") THEN
                redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D3);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_6(REG,56)
    redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_6_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_backEN = "1") THEN
                redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_D2);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x(BITJOIN,107)
    bubble_join_i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_q <= i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_out_c0_exit12_1;

    -- bubble_select_i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x(BITSELECT,108)
    bubble_select_i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_q(31 downto 0));

    -- dupName_0_sync_out_x(GPOUT,6)@8
    out_c0_exe113 <= bubble_select_i_sfc_c0_for_body5_lr_ph_pool_c0_enter10_pool_aunroll_x_b;
    out_c0_exe12 <= redist3_pool_B1_merge_reg_aunroll_x_out_data_out_2_7_6_q;
    out_c0_exe26 <= redist4_pool_B1_merge_reg_aunroll_x_out_data_out_3_7_6_q;
    out_c0_exe38 <= redist5_pool_B1_merge_reg_aunroll_x_out_data_out_4_7_6_q;
    out_c0_exe411 <= redist6_pool_B1_merge_reg_aunroll_x_out_data_out_5_7_6_q;
    out_c1_exe113 <= redist7_pool_B1_merge_reg_aunroll_x_out_data_out_6_7_6_q;
    out_c1_exe119 <= bubble_select_i_sfc_c1_for_body5_lr_ph_pool_c1_enter15_pool_aunroll_x_b;
    out_c2_exe116 <= redist8_pool_B1_merge_reg_aunroll_x_out_data_out_7_7_6_q;
    out_c2_exe125 <= bubble_select_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_b;
    out_cmp620 <= redist9_pool_B1_merge_reg_aunroll_x_out_data_out_8_7_6_q;
    out_col_17 <= redist2_pool_B1_merge_reg_aunroll_x_out_data_out_1_7_5_q;
    out_row_09 <= redist0_pool_B1_merge_reg_aunroll_x_out_data_out_0_7_6_q;
    out_tmp_224 <= redist10_pool_B1_merge_reg_aunroll_x_out_data_out_9_7_6_q;
    out_valid_out <= SE_out_i_sfc_c2_for_body5_lr_ph_pool_c2_enter21_pool_aunroll_x_V0;

    -- sync_out(GPOUT,24)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
