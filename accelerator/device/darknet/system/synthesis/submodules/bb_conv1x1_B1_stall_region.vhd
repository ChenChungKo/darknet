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

-- VHDL created from bb_conv1x1_B1_stall_region
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

entity bb_conv1x1_B1_stall_region is
    port (
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe18 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe118 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe127 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe135 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe243 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_010 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1140 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe18 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe118 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe127 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe135 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe243 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_010 : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B1_stall_region;

architecture normal of bb_conv1x1_B1_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv1x1_B1_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1 is
        port (
            in_c0_eni2_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni2_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit139_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit139_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit139_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit139_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit139_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit139_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_data_fifo is
        generic (
            DEPTH : INTEGER := 0;
            DATA_WIDTH : INTEGER := 32;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0;
            IMPL : STRING := "ram"
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            data_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            valid_out : out std_logic;
            stall_out : out std_logic;
            data_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            full : out std_logic;
            almost_full : out std_logic
        );
    end component;







    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B1_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B1_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B1_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B1_merge_reg_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B1_merge_reg_aunroll_x_out_data_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_conv1x1_B1_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (224 downto 0);
    signal bubble_select_conv1x1_B1_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv1x1_B1_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_conv1x1_B1_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_conv1x1_B1_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv1x1_B1_merge_reg_aunroll_x_f : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv1x1_B1_merge_reg_aunroll_x_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_q : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (224 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B1_merge_reg_aunroll_x_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,67)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= conv1x1_B1_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,42)
    bubble_join_stall_entry_q <= in_j_010 & in_c3_exe243 & in_c3_exe135 & in_c2_exe127 & in_c1_exe118 & in_c0_exe18;

    -- bubble_select_stall_entry(BITSELECT,43)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(63 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(127 downto 64));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(159 downto 128));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(191 downto 160));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(192 downto 192));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(224 downto 193));

    -- conv1x1_B1_merge_reg_aunroll_x(BLACKBOX,2)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_data_out_2@1
    -- out out_data_out_3@1
    -- out out_data_out_4@1
    -- out out_data_out_5@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theconv1x1_B1_merge_reg_aunroll_x : conv1x1_B1_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_g,
        in_data_in_1 => bubble_select_stall_entry_b,
        in_data_in_2 => bubble_select_stall_entry_c,
        in_data_in_3 => bubble_select_stall_entry_d,
        in_data_in_4 => bubble_select_stall_entry_e,
        in_data_in_5 => bubble_select_stall_entry_f,
        in_stall_in => SE_out_conv1x1_B1_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => conv1x1_B1_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => conv1x1_B1_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => conv1x1_B1_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => conv1x1_B1_merge_reg_aunroll_x_out_data_out_3,
        out_data_out_4 => conv1x1_B1_merge_reg_aunroll_x_out_data_out_4,
        out_data_out_5 => conv1x1_B1_merge_reg_aunroll_x_out_data_out_5,
        out_stall_out => conv1x1_B1_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => conv1x1_B1_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_conv1x1_B1_merge_reg_aunroll_x(STALLENABLE,64)
    SE_out_conv1x1_B1_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg2 <= (others => '0');
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg3 <= (others => '0');
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg4 <= (others => '0');
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg5 <= (others => '0');
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg6 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg0 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg1 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg2 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg3 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg4 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg5 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg5;
            -- Succesor 6
            SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg6 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg6;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed0 <= (not (i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_o_stall) and SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg0;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed1 <= (not (redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_out) and SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg1;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed2 <= (not (redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_out) and SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg2;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed3 <= (not (redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_out) and SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg3;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed4 <= (not (redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_out) and SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg4;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed5 <= (not (redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_out) and SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg5;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed6 <= (not (redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_out) and SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg6;
    -- Consuming
    SE_out_conv1x1_B1_merge_reg_aunroll_x_StallValid <= SE_out_conv1x1_B1_merge_reg_aunroll_x_backStall and SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg0 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed0;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg1 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed1;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg2 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed2;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg3 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed3;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg4 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed4;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg5 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed5;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_toReg6 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed6;
    -- Backward Stall generation
    SE_out_conv1x1_B1_merge_reg_aunroll_x_or0 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed0;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_or1 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed1 and SE_out_conv1x1_B1_merge_reg_aunroll_x_or0;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_or2 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed2 and SE_out_conv1x1_B1_merge_reg_aunroll_x_or1;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_or3 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed3 and SE_out_conv1x1_B1_merge_reg_aunroll_x_or2;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_or4 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed4 and SE_out_conv1x1_B1_merge_reg_aunroll_x_or3;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_or5 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed5 and SE_out_conv1x1_B1_merge_reg_aunroll_x_or4;
    SE_out_conv1x1_B1_merge_reg_aunroll_x_wireStall <= not (SE_out_conv1x1_B1_merge_reg_aunroll_x_consumed6 and SE_out_conv1x1_B1_merge_reg_aunroll_x_or5);
    SE_out_conv1x1_B1_merge_reg_aunroll_x_backStall <= SE_out_conv1x1_B1_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_conv1x1_B1_merge_reg_aunroll_x_V0 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg0);
    SE_out_conv1x1_B1_merge_reg_aunroll_x_V1 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg1);
    SE_out_conv1x1_B1_merge_reg_aunroll_x_V2 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg2);
    SE_out_conv1x1_B1_merge_reg_aunroll_x_V3 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg3);
    SE_out_conv1x1_B1_merge_reg_aunroll_x_V4 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg4);
    SE_out_conv1x1_B1_merge_reg_aunroll_x_V5 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg5);
    SE_out_conv1x1_B1_merge_reg_aunroll_x_V6 <= SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B1_merge_reg_aunroll_x_fromReg6);
    -- Computing multiple Valid(s)
    SE_out_conv1x1_B1_merge_reg_aunroll_x_wireValid <= conv1x1_B1_merge_reg_aunroll_x_out_valid_out;

    -- bubble_join_conv1x1_B1_merge_reg_aunroll_x(BITJOIN,35)
    bubble_join_conv1x1_B1_merge_reg_aunroll_x_q <= conv1x1_B1_merge_reg_aunroll_x_out_data_out_5 & conv1x1_B1_merge_reg_aunroll_x_out_data_out_4 & conv1x1_B1_merge_reg_aunroll_x_out_data_out_3 & conv1x1_B1_merge_reg_aunroll_x_out_data_out_2 & conv1x1_B1_merge_reg_aunroll_x_out_data_out_1 & conv1x1_B1_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_conv1x1_B1_merge_reg_aunroll_x(BITSELECT,36)
    bubble_select_conv1x1_B1_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B1_merge_reg_aunroll_x_q(31 downto 0));
    bubble_select_conv1x1_B1_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B1_merge_reg_aunroll_x_q(95 downto 32));
    bubble_select_conv1x1_B1_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B1_merge_reg_aunroll_x_q(159 downto 96));
    bubble_select_conv1x1_B1_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B1_merge_reg_aunroll_x_q(191 downto 160));
    bubble_select_conv1x1_B1_merge_reg_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B1_merge_reg_aunroll_x_q(223 downto 192));
    bubble_select_conv1x1_B1_merge_reg_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B1_merge_reg_aunroll_x_q(224 downto 224));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x(BLACKBOX,11)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit139_0@37
    -- out out_c0_exit139_1@37
    -- out out_c0_exit139_2@37
    -- out out_c0_exit139_3@37
    -- out out_c0_exit139_4@37
    -- out out_c0_exit139_5@37
    -- out out_o_stall@20000000
    -- out out_o_valid@37
    thei_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x : i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1
    PORT MAP (
        in_c0_eni2_0 => GND_q,
        in_c0_eni2_1 => bubble_select_conv1x1_B1_merge_reg_aunroll_x_b,
        in_c0_eni2_2 => bubble_select_conv1x1_B1_merge_reg_aunroll_x_g,
        in_i_stall => SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_backStall,
        in_i_valid => SE_out_conv1x1_B1_merge_reg_aunroll_x_V0,
        in_input_channels => in_input_channels,
        in_input_size => in_input_size,
        in_output_size => in_output_size,
        in_pad => in_pad,
        in_stride => in_stride,
        out_c0_exit139_1 => i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_1,
        out_c0_exit139_2 => i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_2,
        out_c0_exit139_3 => i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_3,
        out_c0_exit139_4 => i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_4,
        out_c0_exit139_5 => i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_5,
        out_o_stall => i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo(STALLFIFO,28)
    redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_in <= SE_out_conv1x1_B1_merge_reg_aunroll_x_V1;
    redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_in <= SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_backStall;
    redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_data_in <= bubble_select_conv1x1_B1_merge_reg_aunroll_x_b;
    redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_in_bitsignaltemp <= redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_in(0);
    redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_in_bitsignaltemp <= redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_in(0);
    redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_out(0) <= redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_out_bitsignaltemp;
    redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_out(0) <= redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_out_bitsignaltemp;
    theredist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 37,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B1_merge_reg_aunroll_x_b,
        valid_out => redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_stall_out_bitsignaltemp,
        data_out => redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo(STALLFIFO,29)
    redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_in <= SE_out_conv1x1_B1_merge_reg_aunroll_x_V2;
    redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_in <= SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_backStall;
    redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_data_in <= bubble_select_conv1x1_B1_merge_reg_aunroll_x_c;
    redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_in_bitsignaltemp <= redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_in(0);
    redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_in_bitsignaltemp <= redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_in(0);
    redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_out(0) <= redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_out_bitsignaltemp;
    redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_out(0) <= redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_out_bitsignaltemp;
    theredist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 37,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B1_merge_reg_aunroll_x_c,
        valid_out => redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_stall_out_bitsignaltemp,
        data_out => redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo(STALLFIFO,30)
    redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_in <= SE_out_conv1x1_B1_merge_reg_aunroll_x_V3;
    redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_in <= SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_backStall;
    redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_data_in <= bubble_select_conv1x1_B1_merge_reg_aunroll_x_d;
    redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_in_bitsignaltemp <= redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_in(0);
    redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_in_bitsignaltemp <= redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_in(0);
    redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_out(0) <= redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_out_bitsignaltemp;
    redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_out(0) <= redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_out_bitsignaltemp;
    theredist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 37,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_in_bitsignaltemp,
        stall_in => redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B1_merge_reg_aunroll_x_d,
        valid_out => redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_out_bitsignaltemp,
        stall_out => redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_stall_out_bitsignaltemp,
        data_out => redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo(STALLFIFO,31)
    redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_in <= SE_out_conv1x1_B1_merge_reg_aunroll_x_V4;
    redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_in <= SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_backStall;
    redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_data_in <= bubble_select_conv1x1_B1_merge_reg_aunroll_x_e;
    redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_in_bitsignaltemp <= redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_in(0);
    redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_in_bitsignaltemp <= redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_in(0);
    redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_out(0) <= redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_out_bitsignaltemp;
    redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_out(0) <= redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_out_bitsignaltemp;
    theredist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 37,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_in_bitsignaltemp,
        stall_in => redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B1_merge_reg_aunroll_x_e,
        valid_out => redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_out_bitsignaltemp,
        stall_out => redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_stall_out_bitsignaltemp,
        data_out => redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo(STALLFIFO,32)
    redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_in <= SE_out_conv1x1_B1_merge_reg_aunroll_x_V5;
    redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_in <= SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_backStall;
    redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_data_in <= bubble_select_conv1x1_B1_merge_reg_aunroll_x_f;
    redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_in_bitsignaltemp <= redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_in(0);
    redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_in_bitsignaltemp <= redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_in(0);
    redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_out(0) <= redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_out_bitsignaltemp;
    redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_out(0) <= redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_out_bitsignaltemp;
    theredist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 37,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_in_bitsignaltemp,
        stall_in => redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B1_merge_reg_aunroll_x_f,
        valid_out => redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_out_bitsignaltemp,
        stall_out => redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_stall_out_bitsignaltemp,
        data_out => redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo(STALLFIFO,33)
    redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_in <= SE_out_conv1x1_B1_merge_reg_aunroll_x_V6;
    redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_in <= SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_backStall;
    redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_data_in <= bubble_select_conv1x1_B1_merge_reg_aunroll_x_g;
    redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_in_bitsignaltemp <= redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_in(0);
    redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_in_bitsignaltemp <= redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_in(0);
    redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_out(0) <= redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_out_bitsignaltemp;
    redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_out(0) <= redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_out_bitsignaltemp;
    theredist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 37,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_in_bitsignaltemp,
        stall_in => redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B1_merge_reg_aunroll_x_g,
        valid_out => redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_out_bitsignaltemp,
        stall_out => redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_stall_out_bitsignaltemp,
        data_out => redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo(STALLENABLE,80)
    -- Valid signal propagation
    SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_V0 <= SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_backStall <= in_stall_in or not (SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and0 <= redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_valid_out;
    SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and1 <= redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_valid_out and SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and0;
    SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and2 <= redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_valid_out and SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and1;
    SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and3 <= redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_valid_out and SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and2;
    SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and4 <= redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_valid_out and SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and3;
    SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and5 <= redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_valid_out and SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and4;
    SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_wireValid <= i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_o_valid and SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_and5;

    -- bubble_join_redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo(BITJOIN,46)
    bubble_join_redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_q <= redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_data_out;

    -- bubble_select_redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo(BITSELECT,47)
    bubble_select_redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_q(31 downto 0));

    -- bubble_join_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo(BITJOIN,61)
    bubble_join_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_q <= redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_data_out;

    -- bubble_select_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo(BITSELECT,62)
    bubble_select_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_q(0 downto 0));

    -- bubble_join_redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo(BITJOIN,58)
    bubble_join_redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_q <= redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_data_out;

    -- bubble_select_redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo(BITSELECT,59)
    bubble_select_redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_q(31 downto 0));

    -- bubble_join_redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo(BITJOIN,55)
    bubble_join_redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_q <= redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_data_out;

    -- bubble_select_redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo(BITSELECT,56)
    bubble_select_redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_q(31 downto 0));

    -- bubble_join_redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo(BITJOIN,52)
    bubble_join_redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_q <= redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_data_out;

    -- bubble_select_redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo(BITSELECT,53)
    bubble_select_redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_q(63 downto 0));

    -- bubble_join_redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo(BITJOIN,49)
    bubble_join_redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_q <= redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_data_out;

    -- bubble_select_redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo(BITSELECT,50)
    bubble_select_redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_q(63 downto 0));

    -- bubble_join_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x(BITJOIN,38)
    bubble_join_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_q <= i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_5 & i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_4 & i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_3 & i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_2 & i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_out_c0_exit139_1;

    -- bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x(BITSELECT,39)
    bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_q(31 downto 0));
    bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_q(32 downto 32));
    bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_q(33 downto 33));
    bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_q(34 downto 34));
    bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_q(35 downto 35));

    -- dupName_0_sync_out_x(GPOUT,7)@37
    out_c0_exe1140 <= bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_b;
    out_c0_exe18 <= bubble_select_redist1_conv1x1_B1_merge_reg_aunroll_x_out_data_out_1_36_fifo_b;
    out_c0_exe2 <= bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_c;
    out_c0_exe3 <= bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_d;
    out_c0_exe4 <= bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_e;
    out_c0_exe5 <= bubble_select_i_sfc_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x1_aunroll_x_f;
    out_c1_exe118 <= bubble_select_redist2_conv1x1_B1_merge_reg_aunroll_x_out_data_out_2_36_fifo_b;
    out_c2_exe127 <= bubble_select_redist3_conv1x1_B1_merge_reg_aunroll_x_out_data_out_3_36_fifo_b;
    out_c3_exe135 <= bubble_select_redist4_conv1x1_B1_merge_reg_aunroll_x_out_data_out_4_36_fifo_b;
    out_c3_exe243 <= bubble_select_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_b;
    out_j_010 <= bubble_select_redist0_conv1x1_B1_merge_reg_aunroll_x_out_data_out_0_36_fifo_b;
    out_valid_out <= SE_out_redist5_conv1x1_B1_merge_reg_aunroll_x_out_data_out_5_36_fifo_V0;

    -- sync_out(GPOUT,21)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
