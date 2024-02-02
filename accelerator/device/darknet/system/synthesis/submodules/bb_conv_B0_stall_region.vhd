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

-- VHDL created from bb_conv_B0_stall_region
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

entity bb_conv_B0_stall_region is
    port (
        in_N_Fin : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_group_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
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
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_N_Fout_dim : in std_logic_vector(31 downto 0);  -- ufix32
        in_N_elem : in std_logic_vector(31 downto 0);  -- ufix32
        in_S_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_K_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_B0_stall_region;

architecture normal of bb_conv_B0_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv_B0_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_entry_conv_c0_enter_conv is
        port (
            in_c0_eni1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni1_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_elem : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_entry_conv_c1_enter_conv is
        port (
            in_c1_eni1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni1_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fout_dim : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_S_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exit_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_k_conv_sync_buffer95_conv0 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_n_elem_sync_buffer91_conv237 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_n_fin_sync_buffer_conv250 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_n_fout_dim_sync_buffer_conv252 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
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







    component acl_valid_fifo_counter is
        generic (
            DEPTH : INTEGER := 0;
            ASYNC_RESET : INTEGER := 1;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            valid_out : out std_logic;
            stall_out : out std_logic;
            full : out std_logic
        );
    end component;





















    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add13_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul12_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul38_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul41_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_reg_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_reg_aunroll_x_out_data_out_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B0_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_c0_exit_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_c0_exit_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_c0_exit_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_c1_exit_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_c1_exit_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add13_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add13_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add13_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add13_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp42_conv_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp42_conv_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp42_conv_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp42_conv_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_k_conv_sync_buffer95_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_k_conv_sync_buffer95_conv_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_k_conv_sync_buffer95_conv_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_n_elem_sync_buffer91_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer91_conv_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_n_elem_sync_buffer91_conv_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_n_fin_sync_buffer_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_fin_sync_buffer_conv_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_n_fin_sync_buffer_conv_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_n_fout_dim_sync_buffer_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_fout_dim_sync_buffer_conv_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_n_fout_dim_sync_buffer_conv_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_mul12_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul12_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul38_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul38_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul41_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul41_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul12_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul12_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul12_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul12_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul12_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul12_conv_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul12_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul12_conv_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul12_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul12_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul12_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul12_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul12_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul12_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul12_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul38_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul38_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul38_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul38_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul38_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul38_conv_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul38_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul38_conv_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul38_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul38_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul38_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul38_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul38_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul38_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul38_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul41_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul41_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul41_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul41_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul41_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul41_conv_bs6_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul41_conv_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul41_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul41_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul41_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul41_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul41_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul41_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul41_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul41_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul_conv_bs6_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul_conv_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul12_conv_im0_cma_reset : std_logic;
    type i_mul12_conv_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul12_conv_im0_cma_a0 : i_mul12_conv_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_mul12_conv_im0_cma_a0 : signal is true;
    signal i_mul12_conv_im0_cma_c0 : i_mul12_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul12_conv_im0_cma_c0 : signal is true;
    type i_mul12_conv_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul12_conv_im0_cma_p : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul12_conv_im0_cma_u : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul12_conv_im0_cma_w : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul12_conv_im0_cma_x : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul12_conv_im0_cma_y : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul12_conv_im0_cma_s : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul12_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul12_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul12_conv_im0_cma_ena0 : std_logic;
    signal i_mul12_conv_im0_cma_ena1 : std_logic;
    signal i_mul12_conv_im10_cma_reset : std_logic;
    type i_mul12_conv_im10_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal i_mul12_conv_im10_cma_a0 : i_mul12_conv_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul12_conv_im10_cma_a0 : signal is true;
    signal i_mul12_conv_im10_cma_c0 : i_mul12_conv_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul12_conv_im10_cma_c0 : signal is true;
    type i_mul12_conv_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_mul12_conv_im10_cma_p : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul12_conv_im10_cma_u : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul12_conv_im10_cma_w : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul12_conv_im10_cma_x : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul12_conv_im10_cma_y : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul12_conv_im10_cma_s : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul12_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul12_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul12_conv_im10_cma_ena0 : std_logic;
    signal i_mul12_conv_im10_cma_ena1 : std_logic;
    signal i_mul38_conv_im0_cma_reset : std_logic;
    signal i_mul38_conv_im0_cma_a0 : i_mul12_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul38_conv_im0_cma_a0 : signal is true;
    signal i_mul38_conv_im0_cma_c0 : i_mul12_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul38_conv_im0_cma_c0 : signal is true;
    signal i_mul38_conv_im0_cma_p : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul38_conv_im0_cma_u : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul38_conv_im0_cma_w : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul38_conv_im0_cma_x : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul38_conv_im0_cma_y : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul38_conv_im0_cma_s : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul38_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul38_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul38_conv_im0_cma_ena0 : std_logic;
    signal i_mul38_conv_im0_cma_ena1 : std_logic;
    signal i_mul38_conv_im10_cma_reset : std_logic;
    signal i_mul38_conv_im10_cma_a0 : i_mul12_conv_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul38_conv_im10_cma_a0 : signal is true;
    signal i_mul38_conv_im10_cma_c0 : i_mul12_conv_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul38_conv_im10_cma_c0 : signal is true;
    signal i_mul38_conv_im10_cma_p : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul38_conv_im10_cma_u : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul38_conv_im10_cma_w : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul38_conv_im10_cma_x : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul38_conv_im10_cma_y : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul38_conv_im10_cma_s : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul38_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul38_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul38_conv_im10_cma_ena0 : std_logic;
    signal i_mul38_conv_im10_cma_ena1 : std_logic;
    signal i_mul41_conv_im0_cma_reset : std_logic;
    signal i_mul41_conv_im0_cma_a0 : i_mul12_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul41_conv_im0_cma_a0 : signal is true;
    signal i_mul41_conv_im0_cma_c0 : i_mul12_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul41_conv_im0_cma_c0 : signal is true;
    signal i_mul41_conv_im0_cma_p : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul41_conv_im0_cma_u : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul41_conv_im0_cma_w : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul41_conv_im0_cma_x : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul41_conv_im0_cma_y : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul41_conv_im0_cma_s : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul41_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul41_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul41_conv_im0_cma_ena0 : std_logic;
    signal i_mul41_conv_im0_cma_ena1 : std_logic;
    signal i_mul41_conv_im10_cma_reset : std_logic;
    signal i_mul41_conv_im10_cma_a0 : i_mul12_conv_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul41_conv_im10_cma_a0 : signal is true;
    signal i_mul41_conv_im10_cma_c0 : i_mul12_conv_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul41_conv_im10_cma_c0 : signal is true;
    signal i_mul41_conv_im10_cma_p : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul41_conv_im10_cma_u : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul41_conv_im10_cma_w : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul41_conv_im10_cma_x : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul41_conv_im10_cma_y : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul41_conv_im10_cma_s : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul41_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul41_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul41_conv_im10_cma_ena0 : std_logic;
    signal i_mul41_conv_im10_cma_ena1 : std_logic;
    signal i_mul_conv_im0_cma_reset : std_logic;
    signal i_mul_conv_im0_cma_a0 : i_mul12_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul_conv_im0_cma_a0 : signal is true;
    signal i_mul_conv_im0_cma_c0 : i_mul12_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul_conv_im0_cma_c0 : signal is true;
    signal i_mul_conv_im0_cma_p : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul_conv_im0_cma_u : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul_conv_im0_cma_w : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul_conv_im0_cma_x : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul_conv_im0_cma_y : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul_conv_im0_cma_s : i_mul12_conv_im0_cma_ptype(0 to 0);
    signal i_mul_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul_conv_im0_cma_ena0 : std_logic;
    signal i_mul_conv_im0_cma_ena1 : std_logic;
    signal i_mul_conv_im10_cma_reset : std_logic;
    signal i_mul_conv_im10_cma_a0 : i_mul12_conv_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul_conv_im10_cma_a0 : signal is true;
    signal i_mul_conv_im10_cma_c0 : i_mul12_conv_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul_conv_im10_cma_c0 : signal is true;
    signal i_mul_conv_im10_cma_p : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul_conv_im10_cma_u : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul_conv_im10_cma_w : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul_conv_im10_cma_x : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul_conv_im10_cma_y : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul_conv_im10_cma_s : i_mul12_conv_im10_cma_ptype(0 to 0);
    signal i_mul_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul_conv_im10_cma_ena0 : std_logic;
    signal i_mul_conv_im10_cma_ena1 : std_logic;
    signal i_mul12_conv_ma3_cma_reset : std_logic;
    signal i_mul12_conv_ma3_cma_a0 : i_mul12_conv_im10_cma_a0type(0 to 1);
    attribute preserve of i_mul12_conv_ma3_cma_a0 : signal is true;
    type i_mul12_conv_ma3_cma_c0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_mul12_conv_ma3_cma_c0 : i_mul12_conv_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul12_conv_ma3_cma_c0 : signal is true;
    type i_mul12_conv_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal i_mul12_conv_ma3_cma_l : i_mul12_conv_ma3_cma_ltype(0 to 1);
    type i_mul12_conv_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_mul12_conv_ma3_cma_p : i_mul12_conv_ma3_cma_ptype(0 to 1);
    type i_mul12_conv_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_mul12_conv_ma3_cma_u : i_mul12_conv_ma3_cma_utype(0 to 1);
    signal i_mul12_conv_ma3_cma_w : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul12_conv_ma3_cma_x : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul12_conv_ma3_cma_y : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul12_conv_ma3_cma_s : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul12_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul12_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul12_conv_ma3_cma_ena0 : std_logic;
    signal i_mul12_conv_ma3_cma_ena1 : std_logic;
    signal i_mul38_conv_ma3_cma_reset : std_logic;
    signal i_mul38_conv_ma3_cma_a0 : i_mul12_conv_im10_cma_a0type(0 to 1);
    attribute preserve of i_mul38_conv_ma3_cma_a0 : signal is true;
    signal i_mul38_conv_ma3_cma_c0 : i_mul12_conv_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul38_conv_ma3_cma_c0 : signal is true;
    signal i_mul38_conv_ma3_cma_l : i_mul12_conv_ma3_cma_ltype(0 to 1);
    signal i_mul38_conv_ma3_cma_p : i_mul12_conv_ma3_cma_ptype(0 to 1);
    signal i_mul38_conv_ma3_cma_u : i_mul12_conv_ma3_cma_utype(0 to 1);
    signal i_mul38_conv_ma3_cma_w : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul38_conv_ma3_cma_x : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul38_conv_ma3_cma_y : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul38_conv_ma3_cma_s : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul38_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul38_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul38_conv_ma3_cma_ena0 : std_logic;
    signal i_mul38_conv_ma3_cma_ena1 : std_logic;
    signal i_mul41_conv_ma3_cma_reset : std_logic;
    signal i_mul41_conv_ma3_cma_a0 : i_mul12_conv_im10_cma_a0type(0 to 1);
    attribute preserve of i_mul41_conv_ma3_cma_a0 : signal is true;
    signal i_mul41_conv_ma3_cma_c0 : i_mul12_conv_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul41_conv_ma3_cma_c0 : signal is true;
    signal i_mul41_conv_ma3_cma_l : i_mul12_conv_ma3_cma_ltype(0 to 1);
    signal i_mul41_conv_ma3_cma_p : i_mul12_conv_ma3_cma_ptype(0 to 1);
    signal i_mul41_conv_ma3_cma_u : i_mul12_conv_ma3_cma_utype(0 to 1);
    signal i_mul41_conv_ma3_cma_w : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul41_conv_ma3_cma_x : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul41_conv_ma3_cma_y : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul41_conv_ma3_cma_s : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul41_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul41_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul41_conv_ma3_cma_ena0 : std_logic;
    signal i_mul41_conv_ma3_cma_ena1 : std_logic;
    signal i_mul_conv_ma3_cma_reset : std_logic;
    signal i_mul_conv_ma3_cma_a0 : i_mul12_conv_im10_cma_a0type(0 to 1);
    attribute preserve of i_mul_conv_ma3_cma_a0 : signal is true;
    signal i_mul_conv_ma3_cma_c0 : i_mul12_conv_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul_conv_ma3_cma_c0 : signal is true;
    signal i_mul_conv_ma3_cma_l : i_mul12_conv_ma3_cma_ltype(0 to 1);
    signal i_mul_conv_ma3_cma_p : i_mul12_conv_ma3_cma_ptype(0 to 1);
    signal i_mul_conv_ma3_cma_u : i_mul12_conv_ma3_cma_utype(0 to 1);
    signal i_mul_conv_ma3_cma_w : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul_conv_ma3_cma_x : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul_conv_ma3_cma_y : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul_conv_ma3_cma_s : i_mul12_conv_ma3_cma_utype(0 to 0);
    signal i_mul_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul_conv_ma3_cma_ena0 : std_logic;
    signal i_mul_conv_ma3_cma_ena1 : std_logic;
    signal i_mul12_conv_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul12_conv_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul38_conv_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul38_conv_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal redist0_i_mul_conv_ma3_cma_q_1_0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist1_i_mul41_conv_ma3_cma_q_1_0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist2_i_mul38_conv_ma3_cma_q_1_0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist3_i_mul12_conv_ma3_cma_q_1_0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist4_i_mul_conv_im10_cma_q_1_0_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist5_i_mul_conv_im0_cma_q_1_0_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist6_i_mul41_conv_im10_cma_q_1_0_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist7_i_mul41_conv_im0_cma_q_1_0_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist8_i_mul38_conv_im10_cma_q_1_0_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist9_i_mul38_conv_im0_cma_q_1_0_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist10_i_mul12_conv_im10_cma_q_1_0_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist11_i_mul12_conv_im0_cma_q_1_0_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_conv_B0_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (191 downto 0);
    signal bubble_select_conv_B0_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B0_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B0_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B0_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B0_merge_reg_aunroll_x_f : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B0_merge_reg_aunroll_x_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal bubble_select_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_k_conv_sync_buffer95_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_k_conv_sync_buffer95_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_n_elem_sync_buffer91_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_n_elem_sync_buffer91_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_n_fin_sync_buffer_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_n_fin_sync_buffer_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_n_fout_dim_sync_buffer_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_n_fout_dim_sync_buffer_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (191 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_mul12_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_select_i_mul12_conv_im0_cma_b : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_join_i_mul12_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_select_i_mul12_conv_im10_cma_b : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_join_i_mul38_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_select_i_mul38_conv_im0_cma_b : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_join_i_mul38_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_select_i_mul38_conv_im10_cma_b : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_join_i_mul41_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_select_i_mul41_conv_im0_cma_b : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_join_i_mul41_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_select_i_mul41_conv_im10_cma_b : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_join_i_mul_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_select_i_mul_conv_im0_cma_b : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_join_i_mul_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_select_i_mul_conv_im10_cma_b : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_join_i_mul12_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_select_i_mul12_conv_ma3_cma_b : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_join_i_mul38_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_select_i_mul38_conv_ma3_cma_b : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_join_i_mul41_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_select_i_mul41_conv_ma3_cma_b : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_join_i_mul_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_select_i_mul_conv_ma3_cma_b : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_join_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_toReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_fromReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_consumed10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_or7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_or8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_or9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B0_merge_reg_aunroll_x_V10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add13_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add13_conv_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add13_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add13_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp42_conv_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp42_conv_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp42_conv_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp42_conv_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp42_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp42_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_k_conv_sync_buffer95_conv_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_elem_sync_buffer91_conv_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fin_sync_buffer_conv_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_join_13_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_join_13_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_join_13_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_join_13_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_join_13_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_join_13_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_join_13_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_join_13_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_join_13_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_join_13_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_join_13_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_join_13_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_join_13_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_join_13_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_join_13_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_join_13_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_join_13_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_join_13_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_join_13_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_join_13_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_R_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul12_conv_im0_cma_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_R_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul38_conv_im0_cma_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_R_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul41_conv_im0_cma_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_R_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_mul_conv_im0_cma_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_mul_conv_ma3_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_mul_conv_ma3_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_mul_conv_ma3_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_mul_conv_ma3_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_mul_conv_ma3_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_mul_conv_ma3_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_mul41_conv_ma3_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_mul41_conv_ma3_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_mul41_conv_ma3_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_mul41_conv_ma3_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_mul38_conv_ma3_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_mul38_conv_ma3_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_mul38_conv_ma3_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_mul38_conv_ma3_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_mul12_conv_ma3_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_mul12_conv_ma3_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_mul12_conv_ma3_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_mul12_conv_ma3_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_mul_conv_im10_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_mul_conv_im10_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_mul_conv_im10_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_mul_conv_im10_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_mul_conv_im10_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_mul_conv_im10_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_mul_conv_im0_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_mul_conv_im0_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_mul_conv_im0_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_mul_conv_im0_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_mul_conv_im0_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_mul_conv_im0_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist6_i_mul41_conv_im10_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist6_i_mul41_conv_im10_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist6_i_mul41_conv_im10_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist6_i_mul41_conv_im10_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist6_i_mul41_conv_im10_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist6_i_mul41_conv_im10_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_i_mul41_conv_im0_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_i_mul41_conv_im0_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_i_mul41_conv_im0_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_i_mul41_conv_im0_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_i_mul41_conv_im0_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_i_mul41_conv_im0_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist8_i_mul38_conv_im10_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist8_i_mul38_conv_im10_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist8_i_mul38_conv_im10_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist8_i_mul38_conv_im10_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist8_i_mul38_conv_im10_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist8_i_mul38_conv_im10_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_mul38_conv_im0_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_mul38_conv_im0_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_mul38_conv_im0_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_mul38_conv_im0_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_mul38_conv_im0_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_mul38_conv_im0_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_mul12_conv_im10_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_mul12_conv_im10_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_mul12_conv_im10_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_mul12_conv_im10_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_mul12_conv_im10_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_mul12_conv_im10_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_mul12_conv_im0_cma_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_mul12_conv_im0_cma_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_mul12_conv_im0_cma_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_mul12_conv_im0_cma_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_mul12_conv_im0_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_mul12_conv_im0_cma_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul12_conv_im0_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul12_conv_im0_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul12_conv_im0_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul12_conv_im10_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul12_conv_im10_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul12_conv_im10_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul38_conv_im0_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul38_conv_im0_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul38_conv_im0_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul38_conv_im10_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul38_conv_im10_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul38_conv_im10_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul41_conv_im0_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul41_conv_im0_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul41_conv_im0_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul41_conv_im10_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul41_conv_im10_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul41_conv_im10_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul_conv_im0_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul_conv_im0_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul_conv_im0_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul_conv_im10_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul_conv_im10_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul_conv_im10_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul12_conv_ma3_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul12_conv_ma3_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul12_conv_ma3_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul38_conv_ma3_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul38_conv_ma3_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul38_conv_ma3_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul41_conv_ma3_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul41_conv_ma3_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul41_conv_ma3_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul_conv_ma3_cma_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul_conv_ma3_cma_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_mul_conv_ma3_cma_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_im0_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_im0_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_im0_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_im0_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_im0_cma_data_reg_data_in : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_out_i_mul12_conv_im0_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_im0_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_im0_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_im0_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_im0_cma_data_reg_data_out : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_out_i_mul12_conv_im10_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_im10_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_im10_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_im10_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_im10_cma_data_reg_data_in : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_out_i_mul12_conv_im10_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_im10_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_im10_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_im10_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_im10_cma_data_reg_data_out : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_out_i_mul38_conv_im0_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_im0_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_im0_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_im0_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_im0_cma_data_reg_data_in : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_out_i_mul38_conv_im0_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_im0_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_im0_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_im0_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_im0_cma_data_reg_data_out : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_out_i_mul38_conv_im10_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_im10_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_im10_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_im10_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_im10_cma_data_reg_data_in : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_out_i_mul38_conv_im10_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_im10_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_im10_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_im10_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_im10_cma_data_reg_data_out : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_out_i_mul41_conv_im0_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_im0_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_im0_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_im0_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_im0_cma_data_reg_data_in : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_out_i_mul41_conv_im0_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_im0_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_im0_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_im0_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_im0_cma_data_reg_data_out : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_out_i_mul41_conv_im10_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_im10_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_im10_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_im10_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_im10_cma_data_reg_data_in : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_out_i_mul41_conv_im10_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_im10_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_im10_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_im10_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_im10_cma_data_reg_data_out : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_out_i_mul_conv_im0_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_im0_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_im0_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_im0_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_im0_cma_data_reg_data_in : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_out_i_mul_conv_im0_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_im0_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_im0_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_im0_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_im0_cma_data_reg_data_out : STD_LOGIC_VECTOR (35 downto 0);
    signal bubble_out_i_mul_conv_im10_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_im10_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_im10_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_im10_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_im10_cma_data_reg_data_in : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_out_i_mul_conv_im10_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_im10_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_im10_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_im10_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_im10_cma_data_reg_data_out : STD_LOGIC_VECTOR (27 downto 0);
    signal bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_ma3_cma_data_reg_data_in : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul12_conv_ma3_cma_data_reg_data_out : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_ma3_cma_data_reg_data_in : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul38_conv_ma3_cma_data_reg_data_out : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_ma3_cma_data_reg_data_in : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul41_conv_ma3_cma_data_reg_data_out : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_out_i_mul_conv_ma3_cma_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_ma3_cma_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_ma3_cma_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_ma3_cma_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_ma3_cma_data_reg_data_in : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_out_i_mul_conv_ma3_cma_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_ma3_cma_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_ma3_cma_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_mul_conv_ma3_cma_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_mul_conv_ma3_cma_data_reg_data_out : STD_LOGIC_VECTOR (33 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_r_data0 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_r_data1 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_r_data2 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_r_data3 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_r_data4 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_r_data5 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_r_data6 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_r_data7 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_D0 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_D1 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_D2 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_D3 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_D4 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_D5 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_D6 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul12_conv_im0_cma_D7 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (27 downto 0);
    signal SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_D0 : STD_LOGIC_VECTOR (27 downto 0);
    signal SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (35 downto 0);
    signal SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_D0 : STD_LOGIC_VECTOR (35 downto 0);
    signal SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (33 downto 0);
    signal SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_D0 : STD_LOGIC_VECTOR (33 downto 0);
    signal SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_r_data0 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_r_data1 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_r_data2 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_r_data3 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_r_data4 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_r_data5 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_r_data6 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_r_data7 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_D0 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_D1 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_D2 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_D3 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_D4 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_D5 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_D6 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul41_conv_im0_cma_D7 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (27 downto 0);
    signal SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_D0 : STD_LOGIC_VECTOR (27 downto 0);
    signal SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (35 downto 0);
    signal SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_D0 : STD_LOGIC_VECTOR (35 downto 0);
    signal SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (33 downto 0);
    signal SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_D0 : STD_LOGIC_VECTOR (33 downto 0);
    signal SR_SE_i_cmp42_conv_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp42_conv_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp42_conv_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp42_conv_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp42_conv_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp42_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp42_conv_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp42_conv_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp42_conv_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_r_data0 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_r_data1 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_r_data2 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_r_data3 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_r_data4 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_r_data5 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_r_data6 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_r_data7 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_D0 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_D1 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_D2 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_D3 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_D4 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_D5 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_D6 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul_conv_im0_cma_D7 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (27 downto 0);
    signal SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_D0 : STD_LOGIC_VECTOR (27 downto 0);
    signal SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (35 downto 0);
    signal SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_D0 : STD_LOGIC_VECTOR (35 downto 0);
    signal SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (33 downto 0);
    signal SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_D0 : STD_LOGIC_VECTOR (33 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_r_data0 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_r_data1 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_r_data2 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_r_data3 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_r_data4 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_r_data5 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_r_data6 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_r_data7 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_D0 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_D1 : STD_LOGIC_VECTOR (17 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_D2 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_D3 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_D4 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_D5 : STD_LOGIC_VECTOR (13 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_D6 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_i_mul38_conv_im0_cma_D7 : STD_LOGIC_VECTOR (18 downto 0);
    signal SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (27 downto 0);
    signal SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_D0 : STD_LOGIC_VECTOR (27 downto 0);
    signal SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (35 downto 0);
    signal SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_D0 : STD_LOGIC_VECTOR (35 downto 0);
    signal SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_data0 : STD_LOGIC_VECTOR (33 downto 0);
    signal SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_D0 : STD_LOGIC_VECTOR (33 downto 0);

begin


    -- bubble_join_conv_B0_merge_reg_aunroll_x(BITJOIN,204)
    bubble_join_conv_B0_merge_reg_aunroll_x_q <= conv_B0_merge_reg_aunroll_x_out_data_out_5 & conv_B0_merge_reg_aunroll_x_out_data_out_4 & conv_B0_merge_reg_aunroll_x_out_data_out_3 & conv_B0_merge_reg_aunroll_x_out_data_out_2 & conv_B0_merge_reg_aunroll_x_out_data_out_1 & conv_B0_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_conv_B0_merge_reg_aunroll_x(BITSELECT,205)
    bubble_select_conv_B0_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_conv_B0_merge_reg_aunroll_x_q(31 downto 0));
    bubble_select_conv_B0_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_conv_B0_merge_reg_aunroll_x_q(63 downto 32));
    bubble_select_conv_B0_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_conv_B0_merge_reg_aunroll_x_q(95 downto 64));
    bubble_select_conv_B0_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_conv_B0_merge_reg_aunroll_x_q(127 downto 96));
    bubble_select_conv_B0_merge_reg_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_conv_B0_merge_reg_aunroll_x_q(159 downto 128));
    bubble_select_conv_B0_merge_reg_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_conv_B0_merge_reg_aunroll_x_q(191 downto 160));

    -- SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo(STALLENABLE,397)
    -- Valid signal propagation
    SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_V0 <= SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_backStall <= i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_o_stall or not (SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_wireValid <= redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_out;

    -- redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo(STALLFIFO,192)
    redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_in <= SE_out_conv_B0_merge_reg_aunroll_x_V9;
    redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_in <= SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_backStall;
    redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_data_in <= bubble_select_conv_B0_merge_reg_aunroll_x_f;
    redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_in_bitsignaltemp <= redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_in(0);
    redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_in_bitsignaltemp <= redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_in(0);
    redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_out(0) <= redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_out_bitsignaltemp;
    redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_out(0) <= redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_out_bitsignaltemp;
    theredist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 13,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_in_bitsignaltemp,
        stall_in => redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B0_merge_reg_aunroll_x_f,
        valid_out => redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_valid_out_bitsignaltemp,
        stall_out => redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_out_bitsignaltemp,
        data_out => redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2(STALLENABLE,416)
    -- Valid signal propagation
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2_V0 <= SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2_backStall <= i_syncbuf_n_elem_sync_buffer91_conv_out_stall_out or not (SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2_wireValid <= bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_out;

    -- i_syncbuf_n_elem_sync_buffer91_conv(BLACKBOX,43)@41
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_n_elem_sync_buffer91_conv : i_syncbuf_n_elem_sync_buffer91_conv237
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_n_elem_sync_buffer91_conv_backStall,
        in_valid_in => SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2_V0,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer91_conv_out_buffer_out,
        out_stall_out => i_syncbuf_n_elem_sync_buffer91_conv_out_stall_out,
        out_valid_out => i_syncbuf_n_elem_sync_buffer91_conv_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_syncbuf_n_elem_sync_buffer91_conv(BITJOIN,223)
    bubble_join_i_syncbuf_n_elem_sync_buffer91_conv_q <= i_syncbuf_n_elem_sync_buffer91_conv_out_buffer_out;

    -- bubble_select_i_syncbuf_n_elem_sync_buffer91_conv(BITSELECT,224)
    bubble_select_i_syncbuf_n_elem_sync_buffer91_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_n_elem_sync_buffer91_conv_q(31 downto 0));

    -- i_mul12_conv_bs4(BITSELECT,64)@41
    i_mul12_conv_bs4_in <= STD_LOGIC_VECTOR(bubble_select_i_syncbuf_n_elem_sync_buffer91_conv_b(17 downto 0));
    i_mul12_conv_bs4_b <= STD_LOGIC_VECTOR(i_mul12_conv_bs4_in(17 downto 0));

    -- i_mul12_conv_bjA5(BITJOIN,65)@41
    i_mul12_conv_bjA5_q <= GND_q & i_mul12_conv_bs4_b;

    -- i_mul12_conv_bjB9(BITJOIN,69)@41
    i_mul12_conv_bjB9_q <= GND_q & i_mul12_conv_bs2_merged_bit_select_b;

    -- i_mul12_conv_bs7(BITSELECT,67)@41
    i_mul12_conv_bs7_b <= STD_LOGIC_VECTOR(bubble_select_i_syncbuf_n_elem_sync_buffer91_conv_b(31 downto 18));

    -- i_mul12_conv_bs11(BITSELECT,71)@41
    i_mul12_conv_bs11_b <= bubble_select_i_syncbuf_n_elem_sync_buffer91_conv_b(31 downto 18);

    -- bubble_join_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo(BITJOIN,284)
    bubble_join_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_q <= redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_data_out;

    -- bubble_select_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo(BITSELECT,285)
    bubble_select_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_q(31 downto 0));

    -- i_mul12_conv_bs2_merged_bit_select(BITSELECT,140)@41
    i_mul12_conv_bs2_merged_bit_select_b <= bubble_select_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_b(17 downto 0);
    i_mul12_conv_bs2_merged_bit_select_c <= bubble_select_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_b(31 downto 18);

    -- i_mul12_conv_bs1(BITSELECT,61)@41
    i_mul12_conv_bs1_in <= bubble_select_i_syncbuf_n_elem_sync_buffer91_conv_b(17 downto 0);
    i_mul12_conv_bs1_b <= i_mul12_conv_bs1_in(17 downto 0);

    -- SE_out_i_syncbuf_n_elem_sync_buffer91_conv(STALLENABLE,308)
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_syncbuf_n_elem_sync_buffer91_conv_fromReg0 <= (others => '0');
            SE_out_i_syncbuf_n_elem_sync_buffer91_conv_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_syncbuf_n_elem_sync_buffer91_conv_fromReg0 <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_toReg0;
            -- Succesor 1
            SE_out_i_syncbuf_n_elem_sync_buffer91_conv_fromReg1 <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_consumed0 <= (not (bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_out) and SE_out_i_syncbuf_n_elem_sync_buffer91_conv_wireValid) or SE_out_i_syncbuf_n_elem_sync_buffer91_conv_fromReg0;
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_consumed1 <= (not (SR_SE_i_mul12_conv_im0_cma_backStall) and SE_out_i_syncbuf_n_elem_sync_buffer91_conv_wireValid) or SE_out_i_syncbuf_n_elem_sync_buffer91_conv_fromReg1;
    -- Consuming
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_StallValid <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_backStall and SE_out_i_syncbuf_n_elem_sync_buffer91_conv_wireValid;
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_toReg0 <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_StallValid and SE_out_i_syncbuf_n_elem_sync_buffer91_conv_consumed0;
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_toReg1 <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_StallValid and SE_out_i_syncbuf_n_elem_sync_buffer91_conv_consumed1;
    -- Backward Stall generation
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_or0 <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_consumed0;
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_wireStall <= not (SE_out_i_syncbuf_n_elem_sync_buffer91_conv_consumed1 and SE_out_i_syncbuf_n_elem_sync_buffer91_conv_or0);
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_backStall <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_wireStall;
    -- Valid signal propagation
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_V0 <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_wireValid and not (SE_out_i_syncbuf_n_elem_sync_buffer91_conv_fromReg0);
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_V1 <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_wireValid and not (SE_out_i_syncbuf_n_elem_sync_buffer91_conv_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_n_elem_sync_buffer91_conv_wireValid <= i_syncbuf_n_elem_sync_buffer91_conv_out_valid_out;

    -- i_mul12_conv_ma3_cma(CHAINMULTADD,136)@41 + 2
    i_mul12_conv_ma3_cma_reset <= not (resetn);
    i_mul12_conv_ma3_cma_ena0 <= SE_i_mul12_conv_im0_cma_backEN(0);
    i_mul12_conv_ma3_cma_ena1 <= i_mul12_conv_ma3_cma_ena0;
    i_mul12_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul12_conv_ma3_cma_a0(0),15));
    i_mul12_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul12_conv_ma3_cma_a0(1),15));
    i_mul12_conv_ma3_cma_p(0) <= i_mul12_conv_ma3_cma_l(0) * i_mul12_conv_ma3_cma_c0(0);
    i_mul12_conv_ma3_cma_p(1) <= i_mul12_conv_ma3_cma_l(1) * i_mul12_conv_ma3_cma_c0(1);
    i_mul12_conv_ma3_cma_u(0) <= RESIZE(i_mul12_conv_ma3_cma_p(0),35);
    i_mul12_conv_ma3_cma_u(1) <= RESIZE(i_mul12_conv_ma3_cma_p(1),35);
    i_mul12_conv_ma3_cma_w(0) <= i_mul12_conv_ma3_cma_u(0) + i_mul12_conv_ma3_cma_u(1);
    i_mul12_conv_ma3_cma_x(0) <= i_mul12_conv_ma3_cma_w(0);
    i_mul12_conv_ma3_cma_y(0) <= i_mul12_conv_ma3_cma_x(0);
    i_mul12_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul12_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul12_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul12_conv_ma3_cma_ena0 = '1') THEN
                i_mul12_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul12_conv_im0_cma_D5),14);
                i_mul12_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(SR_SE_i_mul12_conv_im0_cma_D4),14);
                i_mul12_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(SR_SE_i_mul12_conv_im0_cma_D6),19);
                i_mul12_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(SR_SE_i_mul12_conv_im0_cma_D7),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul12_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul12_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul12_conv_ma3_cma_ena1 = '1') THEN
                i_mul12_conv_ma3_cma_s(0) <= i_mul12_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul12_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul12_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul12_conv_ma3_cma_qq, ena => SE_i_mul12_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul12_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul12_conv_ma3_cma_qq(33 downto 0));

    -- bubble_join_i_mul12_conv_ma3_cma(BITJOIN,263)
    bubble_join_i_mul12_conv_ma3_cma_q <= i_mul12_conv_ma3_cma_q;

    -- bubble_select_i_mul12_conv_ma3_cma(BITSELECT,264)
    bubble_select_i_mul12_conv_ma3_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul12_conv_ma3_cma_data_reg_data_out(33 downto 0));

    -- bubble_join_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo(BITJOIN,281)
    bubble_join_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_q <= redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_data_out;

    -- bubble_select_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo(BITSELECT,282)
    bubble_select_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_q(31 downto 0));

    -- redist3_i_mul12_conv_ma3_cma_q_1_0(REG,172)
    redist3_i_mul12_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_mul12_conv_ma3_cma_q_1_0_q <= "0000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backEN = "1") THEN
                redist3_i_mul12_conv_ma3_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_mul12_conv_align_14(BITSHIFT,74)@44
    i_mul12_conv_align_14_qint <= redist3_i_mul12_conv_ma3_cma_q_1_0_q & "000000000000000000";
    i_mul12_conv_align_14_q <= i_mul12_conv_align_14_qint(51 downto 0);

    -- bubble_select_i_mul12_conv_im10_cma(BITSELECT,243)
    bubble_select_i_mul12_conv_im10_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul12_conv_im10_cma_data_reg_data_out(27 downto 0));

    -- SE_out_bubble_out_i_mul12_conv_im10_cma_data(STALLENABLE,468)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul12_conv_im10_cma_data_V0 <= SE_out_bubble_out_i_mul12_conv_im10_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul12_conv_im10_cma_data_backStall <= SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul12_conv_im10_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul12_conv_im10_cma_data_wireValid <= bubble_out_i_mul12_conv_im10_cma_data_reg_valid_out;

    -- SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0(STALLREG,556)
    SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_valid <= SE_redist10_i_mul12_conv_im10_cma_q_1_0_backStall and (SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_valid or SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_i_valid);

            IF (SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul12_conv_im10_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul12_conv_im10_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_backStall <= SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_valid or not (SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_V <= SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_valid WHEN SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_i_valid;

    SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_D0 <= SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_data0 WHEN SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul12_conv_im10_cma_b;

    -- redist10_i_mul12_conv_im10_cma_q_1_0(REG,179)
    redist10_i_mul12_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_mul12_conv_im10_cma_q_1_0_q <= "0000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist10_i_mul12_conv_im10_cma_q_1_0_backEN = "1") THEN
                redist10_i_mul12_conv_im10_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_select_i_mul12_conv_im0_cma(BITSELECT,240)
    bubble_select_i_mul12_conv_im0_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul12_conv_im0_cma_data_reg_data_out(35 downto 0));

    -- SE_out_bubble_out_i_mul12_conv_im0_cma_data(STALLENABLE,464)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul12_conv_im0_cma_data_V0 <= SE_out_bubble_out_i_mul12_conv_im0_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul12_conv_im0_cma_data_backStall <= SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul12_conv_im0_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul12_conv_im0_cma_data_wireValid <= bubble_out_i_mul12_conv_im0_cma_data_reg_valid_out;

    -- SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0(STALLREG,557)
    SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_valid <= SE_redist11_i_mul12_conv_im0_cma_q_1_0_backStall and (SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_valid or SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_i_valid);

            IF (SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul12_conv_im0_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul12_conv_im0_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_backStall <= SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_valid or not (SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_V <= SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_valid WHEN SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_i_valid;

    SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_D0 <= SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_data0 WHEN SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul12_conv_im0_cma_b;

    -- redist11_i_mul12_conv_im0_cma_q_1_0(REG,180)
    redist11_i_mul12_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_i_mul12_conv_im0_cma_q_1_0_q <= "000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist11_i_mul12_conv_im0_cma_q_1_0_backEN = "1") THEN
                redist11_i_mul12_conv_im0_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_mul12_conv_join_13(BITJOIN,73)@44
    i_mul12_conv_join_13_q <= redist10_i_mul12_conv_im10_cma_q_1_0_q & redist11_i_mul12_conv_im0_cma_q_1_0_q;

    -- i_mul12_conv_result_add_0_0(ADD,76)@44
    i_mul12_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul12_conv_join_13_q));
    i_mul12_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul12_conv_align_14_q(51)) & i_mul12_conv_align_14_q));
    i_mul12_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul12_conv_result_add_0_0_a) + SIGNED(i_mul12_conv_result_add_0_0_b));
    i_mul12_conv_result_add_0_0_q <= i_mul12_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul12_conv_rnd_sel(BITSELECT,56)@44
    bgTrunc_i_mul12_conv_rnd_sel_in <= i_mul12_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul12_conv_rnd_sel_b <= bgTrunc_i_mul12_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul12_conv_sel_x(BITSELECT,3)@44
    bgTrunc_i_mul12_conv_sel_x_b <= bgTrunc_i_mul12_conv_rnd_sel_b(31 downto 0);

    -- redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0(REG,201)
    redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_backEN = "1") THEN
                redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(bgTrunc_i_mul12_conv_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_add13_conv(ADD,36)@45
    i_add13_conv_a <= STD_LOGIC_VECTOR("0" & redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_q);
    i_add13_conv_b <= STD_LOGIC_VECTOR("0" & bubble_select_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_b);
    i_add13_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add13_conv_a) + UNSIGNED(i_add13_conv_b));
    i_add13_conv_q <= i_add13_conv_o(32 downto 0);

    -- bgTrunc_i_add13_conv_sel_x(BITSELECT,2)@45
    bgTrunc_i_add13_conv_sel_x_b <= i_add13_conv_q(31 downto 0);

    -- SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0(STALLREG,559)
    SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_valid <= (others => '0');
            SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_valid <= SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backStall and (SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_valid or SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_i_valid);

            IF (SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_data0 <= STD_LOGIC_VECTOR(bgTrunc_i_add13_conv_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_i_valid <= SE_i_add13_conv_V0;
    -- Stall signal propagation
    SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backStall <= SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_valid or not (SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_i_valid);

    -- Valid
    SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_V <= SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_valid WHEN SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_valid = "1" ELSE SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_i_valid;

    SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_D0 <= SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_data0 WHEN SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_r_valid = "1" ELSE bgTrunc_i_add13_conv_sel_x_b;

    -- SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0(STALLREG,566)
    SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_valid <= (others => '0');
            SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_valid <= SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backStall and (SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_valid or SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_i_valid);

            IF (SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_i_valid <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_V1;
    -- Stall signal propagation
    SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backStall <= SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_valid or not (SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_i_valid);

    -- Valid
    SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_V <= SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_valid WHEN SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_valid = "1" ELSE SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_i_valid;

    SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_D0 <= SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_data0 WHEN SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_r_valid = "1" ELSE bubble_select_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_b;

    -- SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo(STALLENABLE,387)
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_fromReg0 <= (others => '0');
            SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_fromReg0 <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_toReg0;
            -- Succesor 1
            SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_fromReg1 <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_consumed0 <= (not (SE_i_add13_conv_backStall) and SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_wireValid) or SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_fromReg0;
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_consumed1 <= (not (SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backStall) and SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_wireValid) or SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_fromReg1;
    -- Consuming
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_StallValid <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_backStall and SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_wireValid;
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_toReg0 <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_StallValid and SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_consumed0;
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_toReg1 <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_StallValid and SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_or0 <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_consumed0;
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_wireStall <= not (SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_consumed1 and SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_or0);
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_backStall <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_V0 <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_wireValid and not (SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_fromReg0);
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_V1 <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_wireValid and not (SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_wireValid <= redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_out;

    -- SE_i_add13_conv(STALLENABLE,303)
    -- Valid signal propagation
    SE_i_add13_conv_V0 <= SE_i_add13_conv_wireValid;
    -- Backward Stall generation
    SE_i_add13_conv_backStall <= SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backStall or not (SE_i_add13_conv_wireValid);
    -- Computing multiple Valid(s)
    SE_i_add13_conv_and0 <= SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_V0;
    SE_i_add13_conv_wireValid <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_V0 and SE_i_add13_conv_and0;

    -- SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0(STALLENABLE,407)
    -- Valid signal propagation
    SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_V0 <= SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_s_tv_0 <= SE_i_add13_conv_backStall and SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_backEN <= not (SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_v_s_0 <= SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_backEN and SE_i_mul12_conv_join_13_V0;
    -- Backward Stall generation
    SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_backStall <= not (SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_v_s_0);
    SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_backEN = "0") THEN
                SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_R_v_0 <= SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_R_v_0 and SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_R_v_0 <= SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist11_i_mul12_conv_im0_cma_q_1_0(STALLENABLE,380)
    -- Valid signal propagation
    SE_redist11_i_mul12_conv_im0_cma_q_1_0_V0 <= SE_redist11_i_mul12_conv_im0_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist11_i_mul12_conv_im0_cma_q_1_0_s_tv_0 <= SE_i_mul12_conv_join_13_backStall and SE_redist11_i_mul12_conv_im0_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist11_i_mul12_conv_im0_cma_q_1_0_backEN <= not (SE_redist11_i_mul12_conv_im0_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist11_i_mul12_conv_im0_cma_q_1_0_v_s_0 <= SE_redist11_i_mul12_conv_im0_cma_q_1_0_backEN and SR_SE_redist11_i_mul12_conv_im0_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist11_i_mul12_conv_im0_cma_q_1_0_backStall <= not (SE_redist11_i_mul12_conv_im0_cma_q_1_0_backEN);
    SE_redist11_i_mul12_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist11_i_mul12_conv_im0_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist11_i_mul12_conv_im0_cma_q_1_0_backEN = "0") THEN
                SE_redist11_i_mul12_conv_im0_cma_q_1_0_R_v_0 <= SE_redist11_i_mul12_conv_im0_cma_q_1_0_R_v_0 and SE_redist11_i_mul12_conv_im0_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist11_i_mul12_conv_im0_cma_q_1_0_R_v_0 <= SE_redist11_i_mul12_conv_im0_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist10_i_mul12_conv_im10_cma_q_1_0(STALLENABLE,379)
    -- Valid signal propagation
    SE_redist10_i_mul12_conv_im10_cma_q_1_0_V0 <= SE_redist10_i_mul12_conv_im10_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist10_i_mul12_conv_im10_cma_q_1_0_s_tv_0 <= SE_i_mul12_conv_join_13_backStall and SE_redist10_i_mul12_conv_im10_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist10_i_mul12_conv_im10_cma_q_1_0_backEN <= not (SE_redist10_i_mul12_conv_im10_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist10_i_mul12_conv_im10_cma_q_1_0_v_s_0 <= SE_redist10_i_mul12_conv_im10_cma_q_1_0_backEN and SR_SE_redist10_i_mul12_conv_im10_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist10_i_mul12_conv_im10_cma_q_1_0_backStall <= not (SE_redist10_i_mul12_conv_im10_cma_q_1_0_backEN);
    SE_redist10_i_mul12_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist10_i_mul12_conv_im10_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist10_i_mul12_conv_im10_cma_q_1_0_backEN = "0") THEN
                SE_redist10_i_mul12_conv_im10_cma_q_1_0_R_v_0 <= SE_redist10_i_mul12_conv_im10_cma_q_1_0_R_v_0 and SE_redist10_i_mul12_conv_im10_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist10_i_mul12_conv_im10_cma_q_1_0_R_v_0 <= SE_redist10_i_mul12_conv_im10_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_mul12_conv_join_13(STALLENABLE,325)
    -- Valid signal propagation
    SE_i_mul12_conv_join_13_V0 <= SE_i_mul12_conv_join_13_wireValid;
    -- Backward Stall generation
    SE_i_mul12_conv_join_13_backStall <= SE_redist25_bgTrunc_i_mul12_conv_sel_x_b_1_0_backStall or not (SE_i_mul12_conv_join_13_wireValid);
    -- Computing multiple Valid(s)
    SE_i_mul12_conv_join_13_and0 <= SE_redist10_i_mul12_conv_im10_cma_q_1_0_V0;
    SE_i_mul12_conv_join_13_and1 <= SE_redist11_i_mul12_conv_im0_cma_q_1_0_V0 and SE_i_mul12_conv_join_13_and0;
    SE_i_mul12_conv_join_13_wireValid <= SE_redist3_i_mul12_conv_ma3_cma_q_1_0_V0 and SE_i_mul12_conv_join_13_and1;

    -- SE_redist3_i_mul12_conv_ma3_cma_q_1_0(STALLENABLE,372)
    -- Valid signal propagation
    SE_redist3_i_mul12_conv_ma3_cma_q_1_0_V0 <= SE_redist3_i_mul12_conv_ma3_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist3_i_mul12_conv_ma3_cma_q_1_0_s_tv_0 <= SE_i_mul12_conv_join_13_backStall and SE_redist3_i_mul12_conv_ma3_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backEN <= not (SE_redist3_i_mul12_conv_ma3_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist3_i_mul12_conv_ma3_cma_q_1_0_v_s_0 <= SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backEN and SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backStall <= not (SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backEN);
    SE_redist3_i_mul12_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist3_i_mul12_conv_ma3_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backEN = "0") THEN
                SE_redist3_i_mul12_conv_ma3_cma_q_1_0_R_v_0 <= SE_redist3_i_mul12_conv_ma3_cma_q_1_0_R_v_0 and SE_redist3_i_mul12_conv_ma3_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist3_i_mul12_conv_ma3_cma_q_1_0_R_v_0 <= SE_redist3_i_mul12_conv_ma3_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0(STALLREG,558)
    SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_valid <= SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backStall and (SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_valid or SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_i_valid);

            IF (SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul12_conv_ma3_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul12_conv_ma3_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backStall <= SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_valid or not (SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_V <= SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_valid WHEN SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_i_valid;

    SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_D0 <= SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_data0 WHEN SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul12_conv_ma3_cma_b;

    -- SE_out_bubble_out_i_mul12_conv_ma3_cma_data(STALLENABLE,496)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul12_conv_ma3_cma_data_V0 <= SE_out_bubble_out_i_mul12_conv_ma3_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul12_conv_ma3_cma_data_backStall <= SR_SE_redist3_i_mul12_conv_ma3_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul12_conv_ma3_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul12_conv_ma3_cma_data_wireValid <= bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_out;

    -- bubble_out_i_mul12_conv_ma3_cma_data_reg(STALLFIFO,551)
    bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_in <= SE_i_mul12_conv_im0_cma_V2;
    bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul12_conv_ma3_cma_data_backStall;
    bubble_out_i_mul12_conv_ma3_cma_data_reg_data_in <= bubble_join_i_mul12_conv_ma3_cma_q;
    bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_in(0);
    bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_in(0);
    bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_out(0) <= bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_out(0) <= bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul12_conv_ma3_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 34,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul12_conv_ma3_cma_q,
        valid_out => bubble_out_i_mul12_conv_ma3_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul12_conv_ma3_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul12_conv_im10_cma(CHAINMULTADD,129)@41 + 2
    i_mul12_conv_im10_cma_reset <= not (resetn);
    i_mul12_conv_im10_cma_ena0 <= SE_i_mul12_conv_im0_cma_backEN(0);
    i_mul12_conv_im10_cma_ena1 <= i_mul12_conv_im10_cma_ena0;
    i_mul12_conv_im10_cma_p(0) <= i_mul12_conv_im10_cma_a0(0) * i_mul12_conv_im10_cma_c0(0);
    i_mul12_conv_im10_cma_u(0) <= RESIZE(i_mul12_conv_im10_cma_p(0),28);
    i_mul12_conv_im10_cma_w(0) <= i_mul12_conv_im10_cma_u(0);
    i_mul12_conv_im10_cma_x(0) <= i_mul12_conv_im10_cma_w(0);
    i_mul12_conv_im10_cma_y(0) <= i_mul12_conv_im10_cma_x(0);
    i_mul12_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul12_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul12_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul12_conv_im10_cma_ena0 = '1') THEN
                i_mul12_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul12_conv_im0_cma_D2),14);
                i_mul12_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul12_conv_im0_cma_D3),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul12_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul12_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul12_conv_im10_cma_ena1 = '1') THEN
                i_mul12_conv_im10_cma_s(0) <= i_mul12_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul12_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul12_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul12_conv_im10_cma_qq, ena => SE_i_mul12_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul12_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul12_conv_im10_cma_qq(27 downto 0));

    -- bubble_join_i_mul12_conv_im10_cma(BITJOIN,242)
    bubble_join_i_mul12_conv_im10_cma_q <= i_mul12_conv_im10_cma_q;

    -- bubble_out_i_mul12_conv_im10_cma_data_reg(STALLFIFO,544)
    bubble_out_i_mul12_conv_im10_cma_data_reg_valid_in <= SE_i_mul12_conv_im0_cma_V1;
    bubble_out_i_mul12_conv_im10_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul12_conv_im10_cma_data_backStall;
    bubble_out_i_mul12_conv_im10_cma_data_reg_data_in <= bubble_join_i_mul12_conv_im10_cma_q;
    bubble_out_i_mul12_conv_im10_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul12_conv_im10_cma_data_reg_valid_in(0);
    bubble_out_i_mul12_conv_im10_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul12_conv_im10_cma_data_reg_stall_in(0);
    bubble_out_i_mul12_conv_im10_cma_data_reg_valid_out(0) <= bubble_out_i_mul12_conv_im10_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul12_conv_im10_cma_data_reg_stall_out(0) <= bubble_out_i_mul12_conv_im10_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul12_conv_im10_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 28,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul12_conv_im10_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul12_conv_im10_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul12_conv_im10_cma_q,
        valid_out => bubble_out_i_mul12_conv_im10_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul12_conv_im10_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul12_conv_im10_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul12_conv_im0_cma(CHAINMULTADD,128)@41 + 2
    i_mul12_conv_im0_cma_reset <= not (resetn);
    i_mul12_conv_im0_cma_ena0 <= SE_i_mul12_conv_im0_cma_backEN(0);
    i_mul12_conv_im0_cma_ena1 <= i_mul12_conv_im0_cma_ena0;
    i_mul12_conv_im0_cma_p(0) <= i_mul12_conv_im0_cma_a0(0) * i_mul12_conv_im0_cma_c0(0);
    i_mul12_conv_im0_cma_u(0) <= RESIZE(i_mul12_conv_im0_cma_p(0),36);
    i_mul12_conv_im0_cma_w(0) <= i_mul12_conv_im0_cma_u(0);
    i_mul12_conv_im0_cma_x(0) <= i_mul12_conv_im0_cma_w(0);
    i_mul12_conv_im0_cma_y(0) <= i_mul12_conv_im0_cma_x(0);
    i_mul12_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul12_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul12_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul12_conv_im0_cma_ena0 = '1') THEN
                i_mul12_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul12_conv_im0_cma_D0),18);
                i_mul12_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul12_conv_im0_cma_D1),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul12_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul12_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul12_conv_im0_cma_ena1 = '1') THEN
                i_mul12_conv_im0_cma_s(0) <= i_mul12_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul12_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul12_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul12_conv_im0_cma_qq, ena => SE_i_mul12_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul12_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul12_conv_im0_cma_qq(35 downto 0));

    -- bubble_join_i_mul12_conv_im0_cma(BITJOIN,239)
    bubble_join_i_mul12_conv_im0_cma_q <= i_mul12_conv_im0_cma_q;

    -- bubble_out_i_mul12_conv_im0_cma_data_reg(STALLFIFO,543)
    bubble_out_i_mul12_conv_im0_cma_data_reg_valid_in <= SE_i_mul12_conv_im0_cma_V0;
    bubble_out_i_mul12_conv_im0_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul12_conv_im0_cma_data_backStall;
    bubble_out_i_mul12_conv_im0_cma_data_reg_data_in <= bubble_join_i_mul12_conv_im0_cma_q;
    bubble_out_i_mul12_conv_im0_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul12_conv_im0_cma_data_reg_valid_in(0);
    bubble_out_i_mul12_conv_im0_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul12_conv_im0_cma_data_reg_stall_in(0);
    bubble_out_i_mul12_conv_im0_cma_data_reg_valid_out(0) <= bubble_out_i_mul12_conv_im0_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul12_conv_im0_cma_data_reg_stall_out(0) <= bubble_out_i_mul12_conv_im0_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul12_conv_im0_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 36,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul12_conv_im0_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul12_conv_im0_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul12_conv_im0_cma_q,
        valid_out => bubble_out_i_mul12_conv_im0_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul12_conv_im0_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul12_conv_im0_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_i_mul12_conv_im0_cma(STALLENABLE,355)
    -- Valid signal propagation
    SE_i_mul12_conv_im0_cma_V0 <= SE_i_mul12_conv_im0_cma_R_v_0;
    SE_i_mul12_conv_im0_cma_V1 <= SE_i_mul12_conv_im0_cma_R_v_1;
    SE_i_mul12_conv_im0_cma_V2 <= SE_i_mul12_conv_im0_cma_R_v_2;
    -- Stall signal propagation
    SE_i_mul12_conv_im0_cma_s_tv_0 <= bubble_out_i_mul12_conv_im0_cma_data_reg_stall_out and SE_i_mul12_conv_im0_cma_R_v_0;
    SE_i_mul12_conv_im0_cma_s_tv_1 <= bubble_out_i_mul12_conv_im10_cma_data_reg_stall_out and SE_i_mul12_conv_im0_cma_R_v_1;
    SE_i_mul12_conv_im0_cma_s_tv_2 <= bubble_out_i_mul12_conv_ma3_cma_data_reg_stall_out and SE_i_mul12_conv_im0_cma_R_v_2;
    -- Backward Enable generation
    SE_i_mul12_conv_im0_cma_or0 <= SE_i_mul12_conv_im0_cma_s_tv_0;
    SE_i_mul12_conv_im0_cma_or1 <= SE_i_mul12_conv_im0_cma_s_tv_1 or SE_i_mul12_conv_im0_cma_or0;
    SE_i_mul12_conv_im0_cma_backEN <= not (SE_i_mul12_conv_im0_cma_s_tv_2 or SE_i_mul12_conv_im0_cma_or1);
    -- Determine whether to write valid data into the first register stage
    SE_i_mul12_conv_im0_cma_v_s_0 <= SE_i_mul12_conv_im0_cma_backEN and SR_SE_i_mul12_conv_im0_cma_V;
    -- Backward Stall generation
    SE_i_mul12_conv_im0_cma_backStall <= not (SE_i_mul12_conv_im0_cma_backEN);
    SE_i_mul12_conv_im0_cma_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_mul12_conv_im0_cma_R_s_0 <= (others => '0');
            SE_i_mul12_conv_im0_cma_R_v_0 <= (others => '0');
            SE_i_mul12_conv_im0_cma_R_v_1 <= (others => '0');
            SE_i_mul12_conv_im0_cma_R_v_2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_mul12_conv_im0_cma_backEN = "1") THEN
                SE_i_mul12_conv_im0_cma_R_s_0 <= SE_i_mul12_conv_im0_cma_v_s_0;
            END IF;

            IF (SE_i_mul12_conv_im0_cma_backEN = "0") THEN
                SE_i_mul12_conv_im0_cma_R_v_0 <= SE_i_mul12_conv_im0_cma_R_v_0 and SE_i_mul12_conv_im0_cma_s_tv_0;
            ELSE
                SE_i_mul12_conv_im0_cma_R_v_0 <= SE_i_mul12_conv_im0_cma_R_s_0;
            END IF;

            IF (SE_i_mul12_conv_im0_cma_backEN = "0") THEN
                SE_i_mul12_conv_im0_cma_R_v_1 <= SE_i_mul12_conv_im0_cma_R_v_1 and SE_i_mul12_conv_im0_cma_s_tv_1;
            ELSE
                SE_i_mul12_conv_im0_cma_R_v_1 <= SE_i_mul12_conv_im0_cma_R_s_0;
            END IF;

            IF (SE_i_mul12_conv_im0_cma_backEN = "0") THEN
                SE_i_mul12_conv_im0_cma_R_v_2 <= SE_i_mul12_conv_im0_cma_R_v_2 and SE_i_mul12_conv_im0_cma_s_tv_2;
            ELSE
                SE_i_mul12_conv_im0_cma_R_v_2 <= SE_i_mul12_conv_im0_cma_R_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_mul12_conv_im0_cma(STALLREG,555)
    SR_SE_i_mul12_conv_im0_cma_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_mul12_conv_im0_cma_r_valid <= (others => '0');
            SR_SE_i_mul12_conv_im0_cma_r_data0 <= (others => '-');
            SR_SE_i_mul12_conv_im0_cma_r_data1 <= (others => '-');
            SR_SE_i_mul12_conv_im0_cma_r_data2 <= (others => '-');
            SR_SE_i_mul12_conv_im0_cma_r_data3 <= (others => '-');
            SR_SE_i_mul12_conv_im0_cma_r_data4 <= (others => '-');
            SR_SE_i_mul12_conv_im0_cma_r_data5 <= (others => '-');
            SR_SE_i_mul12_conv_im0_cma_r_data6 <= (others => '-');
            SR_SE_i_mul12_conv_im0_cma_r_data7 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_mul12_conv_im0_cma_r_valid <= SE_i_mul12_conv_im0_cma_backStall and (SR_SE_i_mul12_conv_im0_cma_r_valid or SR_SE_i_mul12_conv_im0_cma_i_valid);

            IF (SR_SE_i_mul12_conv_im0_cma_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_mul12_conv_im0_cma_r_data0 <= i_mul12_conv_bs1_b;
                SR_SE_i_mul12_conv_im0_cma_r_data1 <= i_mul12_conv_bs2_merged_bit_select_b;
                SR_SE_i_mul12_conv_im0_cma_r_data2 <= i_mul12_conv_bs11_b;
                SR_SE_i_mul12_conv_im0_cma_r_data3 <= i_mul12_conv_bs2_merged_bit_select_c;
                SR_SE_i_mul12_conv_im0_cma_r_data4 <= i_mul12_conv_bs2_merged_bit_select_c;
                SR_SE_i_mul12_conv_im0_cma_r_data5 <= i_mul12_conv_bs7_b;
                SR_SE_i_mul12_conv_im0_cma_r_data6 <= STD_LOGIC_VECTOR(i_mul12_conv_bjB9_q);
                SR_SE_i_mul12_conv_im0_cma_r_data7 <= STD_LOGIC_VECTOR(i_mul12_conv_bjA5_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_mul12_conv_im0_cma_and0 <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_V1;
    SR_SE_i_mul12_conv_im0_cma_i_valid <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_V1 and SR_SE_i_mul12_conv_im0_cma_and0;
    -- Stall signal propagation
    SR_SE_i_mul12_conv_im0_cma_backStall <= SR_SE_i_mul12_conv_im0_cma_r_valid or not (SR_SE_i_mul12_conv_im0_cma_i_valid);

    -- Valid
    SR_SE_i_mul12_conv_im0_cma_V <= SR_SE_i_mul12_conv_im0_cma_r_valid WHEN SR_SE_i_mul12_conv_im0_cma_r_valid = "1" ELSE SR_SE_i_mul12_conv_im0_cma_i_valid;

    -- Data0
    SR_SE_i_mul12_conv_im0_cma_D0 <= SR_SE_i_mul12_conv_im0_cma_r_data0 WHEN SR_SE_i_mul12_conv_im0_cma_r_valid = "1" ELSE i_mul12_conv_bs1_b;
    -- Data1
    SR_SE_i_mul12_conv_im0_cma_D1 <= SR_SE_i_mul12_conv_im0_cma_r_data1 WHEN SR_SE_i_mul12_conv_im0_cma_r_valid = "1" ELSE i_mul12_conv_bs2_merged_bit_select_b;
    -- Data2
    SR_SE_i_mul12_conv_im0_cma_D2 <= SR_SE_i_mul12_conv_im0_cma_r_data2 WHEN SR_SE_i_mul12_conv_im0_cma_r_valid = "1" ELSE i_mul12_conv_bs11_b;
    -- Data3
    SR_SE_i_mul12_conv_im0_cma_D3 <= SR_SE_i_mul12_conv_im0_cma_r_data3 WHEN SR_SE_i_mul12_conv_im0_cma_r_valid = "1" ELSE i_mul12_conv_bs2_merged_bit_select_c;
    -- Data4
    SR_SE_i_mul12_conv_im0_cma_D4 <= SR_SE_i_mul12_conv_im0_cma_r_data4 WHEN SR_SE_i_mul12_conv_im0_cma_r_valid = "1" ELSE i_mul12_conv_bs2_merged_bit_select_c;
    -- Data5
    SR_SE_i_mul12_conv_im0_cma_D5 <= SR_SE_i_mul12_conv_im0_cma_r_data5 WHEN SR_SE_i_mul12_conv_im0_cma_r_valid = "1" ELSE i_mul12_conv_bs7_b;
    -- Data6
    SR_SE_i_mul12_conv_im0_cma_D6 <= SR_SE_i_mul12_conv_im0_cma_r_data6 WHEN SR_SE_i_mul12_conv_im0_cma_r_valid = "1" ELSE i_mul12_conv_bjB9_q;
    -- Data7
    SR_SE_i_mul12_conv_im0_cma_D7 <= SR_SE_i_mul12_conv_im0_cma_r_data7 WHEN SR_SE_i_mul12_conv_im0_cma_r_valid = "1" ELSE i_mul12_conv_bjA5_q;

    -- redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0(REG,187)
    redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backEN = "1") THEN
                redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_q <= STD_LOGIC_VECTOR(SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1(REG,188)
    redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_backEN = "1") THEN
                redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_q <= STD_LOGIC_VECTOR(redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2(REG,189)
    redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backEN = "1") THEN
                redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_q <= STD_LOGIC_VECTOR(SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3(REG,190)
    redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_backEN = "1") THEN
                redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_q <= STD_LOGIC_VECTOR(redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4(STALLREG,569)
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_valid <= (others => '0');
            SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_valid <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backStall and (SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_valid or SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_i_valid);

            IF (SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_data0 <= STD_LOGIC_VECTOR(redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_i_valid <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_V0;
    -- Stall signal propagation
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backStall <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_valid or not (SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_i_valid);

    -- Valid
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_V <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_valid WHEN SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_valid = "1" ELSE SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_i_valid;

    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_D0 <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_data0 WHEN SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_r_valid = "1" ELSE redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_q;

    -- SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3(STALLENABLE,394)
    -- Valid signal propagation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_V0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_R_v_0;
    -- Stall signal propagation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_s_tv_0 <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backStall and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_R_v_0;
    -- Backward Enable generation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_backEN <= not (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_v_s_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_backEN and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_V0;
    -- Backward Stall generation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_backStall <= not (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_v_s_0);
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_backEN = "0") THEN
                SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_R_v_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_R_v_0 and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_s_tv_0;
            ELSE
                SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_R_v_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2(STALLENABLE,393)
    -- Valid signal propagation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_V0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_R_v_0;
    -- Stall signal propagation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_s_tv_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_3_backStall and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_R_v_0;
    -- Backward Enable generation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backEN <= not (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_v_s_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backEN and SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_V;
    -- Backward Stall generation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backStall <= not (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backEN);
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backEN = "0") THEN
                SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_R_v_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_R_v_0 and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_s_tv_0;
            ELSE
                SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_R_v_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2(STALLREG,568)
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_valid <= (others => '0');
            SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_valid <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backStall and (SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_valid or SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_i_valid);

            IF (SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_data0 <= STD_LOGIC_VECTOR(redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_i_valid <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_V0;
    -- Stall signal propagation
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backStall <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_valid or not (SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_i_valid);

    -- Valid
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_V <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_valid WHEN SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_valid = "1" ELSE SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_i_valid;

    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_D0 <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_data0 WHEN SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_r_valid = "1" ELSE redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_q;

    -- SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1(STALLENABLE,392)
    -- Valid signal propagation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_V0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_R_v_0;
    -- Stall signal propagation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_s_tv_0 <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_2_backStall and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_R_v_0;
    -- Backward Enable generation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_backEN <= not (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_v_s_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_backEN and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_V0;
    -- Backward Stall generation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_backStall <= not (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_v_s_0);
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_backEN = "0") THEN
                SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_R_v_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_R_v_0 and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_s_tv_0;
            ELSE
                SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_R_v_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0(STALLENABLE,391)
    -- Valid signal propagation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_V0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_R_v_0;
    -- Stall signal propagation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_s_tv_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_1_backStall and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_R_v_0;
    -- Backward Enable generation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backEN <= not (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_v_s_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backEN and SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_V;
    -- Backward Stall generation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backStall <= not (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backEN);
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backEN = "0") THEN
                SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_R_v_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_R_v_0 and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_s_tv_0;
            ELSE
                SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_R_v_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0(STALLREG,567)
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_valid <= (others => '0');
            SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_valid <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backStall and (SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_valid or SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_i_valid);

            IF (SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_i_valid <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_V0;
    -- Stall signal propagation
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backStall <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_valid or not (SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_i_valid);

    -- Valid
    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_V <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_valid WHEN SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_valid = "1" ELSE SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_i_valid;

    SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_D0 <= SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_data0 WHEN SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_r_valid = "1" ELSE bubble_select_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_b;

    -- SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo(STALLENABLE,390)
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_fromReg0 <= (others => '0');
            SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_fromReg0 <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_toReg0;
            -- Succesor 1
            SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_fromReg1 <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_consumed0 <= (not (SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_0_backStall) and SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_wireValid) or SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_fromReg0;
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_consumed1 <= (not (SR_SE_i_mul12_conv_im0_cma_backStall) and SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_wireValid) or SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_fromReg1;
    -- Consuming
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_StallValid <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_backStall and SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_wireValid;
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_toReg0 <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_StallValid and SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_consumed0;
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_toReg1 <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_StallValid and SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_or0 <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_consumed0;
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_wireStall <= not (SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_consumed1 and SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_or0);
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_backStall <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_V0 <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_wireValid and not (SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_fromReg0);
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_V1 <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_wireValid and not (SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_wireValid <= redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_out;

    -- redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo(STALLFIFO,186)
    redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_in <= SE_out_conv_B0_merge_reg_aunroll_x_V8;
    redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_in <= SE_out_redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_backStall;
    redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_data_in <= bubble_select_conv_B0_merge_reg_aunroll_x_e;
    redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_in_bitsignaltemp <= redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_in(0);
    redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_in_bitsignaltemp <= redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_in(0);
    redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_out(0) <= redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_out_bitsignaltemp;
    redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_out(0) <= redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_out_bitsignaltemp;
    theredist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 41,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_in_bitsignaltemp,
        stall_in => redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B0_merge_reg_aunroll_x_e,
        valid_out => redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_valid_out_bitsignaltemp,
        stall_out => redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_out_bitsignaltemp,
        data_out => redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo(STALLFIFO,184)
    redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_in <= SE_out_conv_B0_merge_reg_aunroll_x_V7;
    redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_in <= SE_out_redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_backStall;
    redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_data_in <= bubble_select_conv_B0_merge_reg_aunroll_x_d;
    redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_in_bitsignaltemp <= redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_in(0);
    redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_in_bitsignaltemp <= redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_in(0);
    redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_out(0) <= redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_out_bitsignaltemp;
    redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_out(0) <= redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_out_bitsignaltemp;
    theredist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B0_merge_reg_aunroll_x_d,
        valid_out => redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_out_bitsignaltemp,
        data_out => redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo(BITJOIN,275)
    bubble_join_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_q <= redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_data_out;

    -- bubble_select_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo(BITSELECT,276)
    bubble_select_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_q(31 downto 0));

    -- SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0(STALLREG,565)
    SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_valid <= (others => '0');
            SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_valid <= SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backStall and (SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_valid or SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_i_valid);

            IF (SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_i_valid <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_V1;
    -- Stall signal propagation
    SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backStall <= SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_valid or not (SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_i_valid);

    -- Valid
    SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_V <= SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_valid WHEN SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_valid = "1" ELSE SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_i_valid;

    SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_D0 <= SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_data0 WHEN SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_r_valid = "1" ELSE bubble_select_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_b;

    -- SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4(STALLENABLE,420)
    -- Valid signal propagation
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4_V0 <= SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4_backStall <= i_syncbuf_n_fout_dim_sync_buffer_conv_out_stall_out or not (SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4_wireValid <= bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_out;

    -- i_syncbuf_n_fout_dim_sync_buffer_conv(BLACKBOX,45)@41
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_n_fout_dim_sync_buffer_conv : i_syncbuf_n_fout_dim_sync_buffer_conv252
    PORT MAP (
        in_buffer_in => in_N_Fout_dim,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_backStall,
        in_valid_in => SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4_V0,
        out_buffer_out => i_syncbuf_n_fout_dim_sync_buffer_conv_out_buffer_out,
        out_stall_out => i_syncbuf_n_fout_dim_sync_buffer_conv_out_stall_out,
        out_valid_out => i_syncbuf_n_fout_dim_sync_buffer_conv_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_syncbuf_n_fout_dim_sync_buffer_conv(BITJOIN,231)
    bubble_join_i_syncbuf_n_fout_dim_sync_buffer_conv_q <= i_syncbuf_n_fout_dim_sync_buffer_conv_out_buffer_out;

    -- bubble_select_i_syncbuf_n_fout_dim_sync_buffer_conv(BITSELECT,232)
    bubble_select_i_syncbuf_n_fout_dim_sync_buffer_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_n_fout_dim_sync_buffer_conv_q(31 downto 0));

    -- i_mul41_conv_bs4(BITSELECT,98)@41
    i_mul41_conv_bs4_in <= STD_LOGIC_VECTOR(bubble_select_i_syncbuf_n_fout_dim_sync_buffer_conv_b(17 downto 0));
    i_mul41_conv_bs4_b <= STD_LOGIC_VECTOR(i_mul41_conv_bs4_in(17 downto 0));

    -- i_mul41_conv_bjA5(BITJOIN,99)@41
    i_mul41_conv_bjA5_q <= GND_q & i_mul41_conv_bs4_b;

    -- i_mul41_conv_bjB9(BITJOIN,103)@41
    i_mul41_conv_bjB9_q <= GND_q & i_mul41_conv_bs1_b;

    -- i_mul41_conv_bs7(BITSELECT,101)@41
    i_mul41_conv_bs7_b <= STD_LOGIC_VECTOR(bubble_select_i_syncbuf_n_fout_dim_sync_buffer_conv_b(31 downto 18));

    -- i_mul41_conv_bs6(BITSELECT,100)@41
    i_mul41_conv_bs6_b <= bubble_select_i_syncbuf_n_fout_dim_sync_buffer_conv_b(31 downto 18);

    -- i_mul41_conv_bs1(BITSELECT,95)@41
    i_mul41_conv_bs1_in <= bubble_select_i_syncbuf_n_fout_dim_sync_buffer_conv_b(17 downto 0);
    i_mul41_conv_bs1_b <= i_mul41_conv_bs1_in(17 downto 0);

    -- SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv(STALLENABLE,312)
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_fromReg0 <= (others => '0');
            SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_fromReg0 <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_toReg0;
            -- Succesor 1
            SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_fromReg1 <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_consumed0 <= (not (bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_out) and SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_wireValid) or SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_fromReg0;
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_consumed1 <= (not (SR_SE_i_mul41_conv_im0_cma_backStall) and SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_wireValid) or SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_fromReg1;
    -- Consuming
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_StallValid <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_backStall and SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_wireValid;
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_toReg0 <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_StallValid and SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_consumed0;
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_toReg1 <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_StallValid and SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_consumed1;
    -- Backward Stall generation
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_or0 <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_consumed0;
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_wireStall <= not (SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_consumed1 and SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_or0);
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_backStall <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_wireStall;
    -- Valid signal propagation
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_V0 <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_wireValid and not (SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_fromReg0);
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_V1 <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_wireValid and not (SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_wireValid <= i_syncbuf_n_fout_dim_sync_buffer_conv_out_valid_out;

    -- SR_SE_i_mul41_conv_im0_cma(STALLREG,560)
    SR_SE_i_mul41_conv_im0_cma_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_mul41_conv_im0_cma_r_valid <= (others => '0');
            SR_SE_i_mul41_conv_im0_cma_r_data0 <= (others => '-');
            SR_SE_i_mul41_conv_im0_cma_r_data1 <= (others => '-');
            SR_SE_i_mul41_conv_im0_cma_r_data2 <= (others => '-');
            SR_SE_i_mul41_conv_im0_cma_r_data3 <= (others => '-');
            SR_SE_i_mul41_conv_im0_cma_r_data4 <= (others => '-');
            SR_SE_i_mul41_conv_im0_cma_r_data5 <= (others => '-');
            SR_SE_i_mul41_conv_im0_cma_r_data6 <= (others => '-');
            SR_SE_i_mul41_conv_im0_cma_r_data7 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_mul41_conv_im0_cma_r_valid <= SE_i_mul41_conv_im0_cma_backStall and (SR_SE_i_mul41_conv_im0_cma_r_valid or SR_SE_i_mul41_conv_im0_cma_i_valid);

            IF (SR_SE_i_mul41_conv_im0_cma_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_mul41_conv_im0_cma_r_data0 <= i_mul41_conv_bs1_b;
                SR_SE_i_mul41_conv_im0_cma_r_data1 <= i_mul41_conv_bs1_b;
                SR_SE_i_mul41_conv_im0_cma_r_data2 <= i_mul41_conv_bs6_b;
                SR_SE_i_mul41_conv_im0_cma_r_data3 <= i_mul41_conv_bs6_b;
                SR_SE_i_mul41_conv_im0_cma_r_data4 <= i_mul41_conv_bs6_b;
                SR_SE_i_mul41_conv_im0_cma_r_data5 <= i_mul41_conv_bs7_b;
                SR_SE_i_mul41_conv_im0_cma_r_data6 <= STD_LOGIC_VECTOR(i_mul41_conv_bjB9_q);
                SR_SE_i_mul41_conv_im0_cma_r_data7 <= STD_LOGIC_VECTOR(i_mul41_conv_bjA5_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_mul41_conv_im0_cma_i_valid <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_V1;
    -- Stall signal propagation
    SR_SE_i_mul41_conv_im0_cma_backStall <= SR_SE_i_mul41_conv_im0_cma_r_valid or not (SR_SE_i_mul41_conv_im0_cma_i_valid);

    -- Valid
    SR_SE_i_mul41_conv_im0_cma_V <= SR_SE_i_mul41_conv_im0_cma_r_valid WHEN SR_SE_i_mul41_conv_im0_cma_r_valid = "1" ELSE SR_SE_i_mul41_conv_im0_cma_i_valid;

    -- Data0
    SR_SE_i_mul41_conv_im0_cma_D0 <= SR_SE_i_mul41_conv_im0_cma_r_data0 WHEN SR_SE_i_mul41_conv_im0_cma_r_valid = "1" ELSE i_mul41_conv_bs1_b;
    -- Data1
    SR_SE_i_mul41_conv_im0_cma_D1 <= SR_SE_i_mul41_conv_im0_cma_r_data1 WHEN SR_SE_i_mul41_conv_im0_cma_r_valid = "1" ELSE i_mul41_conv_bs1_b;
    -- Data2
    SR_SE_i_mul41_conv_im0_cma_D2 <= SR_SE_i_mul41_conv_im0_cma_r_data2 WHEN SR_SE_i_mul41_conv_im0_cma_r_valid = "1" ELSE i_mul41_conv_bs6_b;
    -- Data3
    SR_SE_i_mul41_conv_im0_cma_D3 <= SR_SE_i_mul41_conv_im0_cma_r_data3 WHEN SR_SE_i_mul41_conv_im0_cma_r_valid = "1" ELSE i_mul41_conv_bs6_b;
    -- Data4
    SR_SE_i_mul41_conv_im0_cma_D4 <= SR_SE_i_mul41_conv_im0_cma_r_data4 WHEN SR_SE_i_mul41_conv_im0_cma_r_valid = "1" ELSE i_mul41_conv_bs6_b;
    -- Data5
    SR_SE_i_mul41_conv_im0_cma_D5 <= SR_SE_i_mul41_conv_im0_cma_r_data5 WHEN SR_SE_i_mul41_conv_im0_cma_r_valid = "1" ELSE i_mul41_conv_bs7_b;
    -- Data6
    SR_SE_i_mul41_conv_im0_cma_D6 <= SR_SE_i_mul41_conv_im0_cma_r_data6 WHEN SR_SE_i_mul41_conv_im0_cma_r_valid = "1" ELSE i_mul41_conv_bjB9_q;
    -- Data7
    SR_SE_i_mul41_conv_im0_cma_D7 <= SR_SE_i_mul41_conv_im0_cma_r_data7 WHEN SR_SE_i_mul41_conv_im0_cma_r_valid = "1" ELSE i_mul41_conv_bjA5_q;

    -- i_mul41_conv_im0_cma(CHAINMULTADD,132)@41 + 2
    i_mul41_conv_im0_cma_reset <= not (resetn);
    i_mul41_conv_im0_cma_ena0 <= SE_i_mul41_conv_im0_cma_backEN(0);
    i_mul41_conv_im0_cma_ena1 <= i_mul41_conv_im0_cma_ena0;
    i_mul41_conv_im0_cma_p(0) <= i_mul41_conv_im0_cma_a0(0) * i_mul41_conv_im0_cma_c0(0);
    i_mul41_conv_im0_cma_u(0) <= RESIZE(i_mul41_conv_im0_cma_p(0),36);
    i_mul41_conv_im0_cma_w(0) <= i_mul41_conv_im0_cma_u(0);
    i_mul41_conv_im0_cma_x(0) <= i_mul41_conv_im0_cma_w(0);
    i_mul41_conv_im0_cma_y(0) <= i_mul41_conv_im0_cma_x(0);
    i_mul41_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul41_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul41_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul41_conv_im0_cma_ena0 = '1') THEN
                i_mul41_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul41_conv_im0_cma_D0),18);
                i_mul41_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul41_conv_im0_cma_D1),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul41_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul41_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul41_conv_im0_cma_ena1 = '1') THEN
                i_mul41_conv_im0_cma_s(0) <= i_mul41_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul41_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul41_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul41_conv_im0_cma_qq, ena => SE_i_mul41_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul41_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul41_conv_im0_cma_qq(35 downto 0));

    -- bubble_join_i_mul41_conv_im0_cma(BITJOIN,251)
    bubble_join_i_mul41_conv_im0_cma_q <= i_mul41_conv_im0_cma_q;

    -- i_mul41_conv_ma3_cma(CHAINMULTADD,138)@41 + 2
    i_mul41_conv_ma3_cma_reset <= not (resetn);
    i_mul41_conv_ma3_cma_ena0 <= SE_i_mul41_conv_im0_cma_backEN(0);
    i_mul41_conv_ma3_cma_ena1 <= i_mul41_conv_ma3_cma_ena0;
    i_mul41_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul41_conv_ma3_cma_a0(0),15));
    i_mul41_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul41_conv_ma3_cma_a0(1),15));
    i_mul41_conv_ma3_cma_p(0) <= i_mul41_conv_ma3_cma_l(0) * i_mul41_conv_ma3_cma_c0(0);
    i_mul41_conv_ma3_cma_p(1) <= i_mul41_conv_ma3_cma_l(1) * i_mul41_conv_ma3_cma_c0(1);
    i_mul41_conv_ma3_cma_u(0) <= RESIZE(i_mul41_conv_ma3_cma_p(0),35);
    i_mul41_conv_ma3_cma_u(1) <= RESIZE(i_mul41_conv_ma3_cma_p(1),35);
    i_mul41_conv_ma3_cma_w(0) <= i_mul41_conv_ma3_cma_u(0) + i_mul41_conv_ma3_cma_u(1);
    i_mul41_conv_ma3_cma_x(0) <= i_mul41_conv_ma3_cma_w(0);
    i_mul41_conv_ma3_cma_y(0) <= i_mul41_conv_ma3_cma_x(0);
    i_mul41_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul41_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul41_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul41_conv_ma3_cma_ena0 = '1') THEN
                i_mul41_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul41_conv_im0_cma_D5),14);
                i_mul41_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(SR_SE_i_mul41_conv_im0_cma_D4),14);
                i_mul41_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(SR_SE_i_mul41_conv_im0_cma_D6),19);
                i_mul41_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(SR_SE_i_mul41_conv_im0_cma_D7),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul41_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul41_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul41_conv_ma3_cma_ena1 = '1') THEN
                i_mul41_conv_ma3_cma_s(0) <= i_mul41_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul41_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul41_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul41_conv_ma3_cma_qq, ena => SE_i_mul41_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul41_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul41_conv_ma3_cma_qq(33 downto 0));

    -- bubble_join_i_mul41_conv_ma3_cma(BITJOIN,269)
    bubble_join_i_mul41_conv_ma3_cma_q <= i_mul41_conv_ma3_cma_q;

    -- SE_out_bubble_out_i_mul41_conv_ma3_cma_data(STALLENABLE,504)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul41_conv_ma3_cma_data_V0 <= SE_out_bubble_out_i_mul41_conv_ma3_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul41_conv_ma3_cma_data_backStall <= SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul41_conv_ma3_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul41_conv_ma3_cma_data_wireValid <= bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_out;

    -- bubble_out_i_mul41_conv_ma3_cma_data_reg(STALLFIFO,553)
    bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_in <= SE_i_mul41_conv_im0_cma_V2;
    bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul41_conv_ma3_cma_data_backStall;
    bubble_out_i_mul41_conv_ma3_cma_data_reg_data_in <= bubble_join_i_mul41_conv_ma3_cma_q;
    bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_in(0);
    bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_in(0);
    bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_out(0) <= bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_out(0) <= bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul41_conv_ma3_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 34,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul41_conv_ma3_cma_q,
        valid_out => bubble_out_i_mul41_conv_ma3_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul41_conv_ma3_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul41_conv_im10_cma(CHAINMULTADD,133)@41 + 2
    i_mul41_conv_im10_cma_reset <= not (resetn);
    i_mul41_conv_im10_cma_ena0 <= SE_i_mul41_conv_im0_cma_backEN(0);
    i_mul41_conv_im10_cma_ena1 <= i_mul41_conv_im10_cma_ena0;
    i_mul41_conv_im10_cma_p(0) <= i_mul41_conv_im10_cma_a0(0) * i_mul41_conv_im10_cma_c0(0);
    i_mul41_conv_im10_cma_u(0) <= RESIZE(i_mul41_conv_im10_cma_p(0),28);
    i_mul41_conv_im10_cma_w(0) <= i_mul41_conv_im10_cma_u(0);
    i_mul41_conv_im10_cma_x(0) <= i_mul41_conv_im10_cma_w(0);
    i_mul41_conv_im10_cma_y(0) <= i_mul41_conv_im10_cma_x(0);
    i_mul41_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul41_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul41_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul41_conv_im10_cma_ena0 = '1') THEN
                i_mul41_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul41_conv_im0_cma_D2),14);
                i_mul41_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul41_conv_im0_cma_D3),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul41_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul41_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul41_conv_im10_cma_ena1 = '1') THEN
                i_mul41_conv_im10_cma_s(0) <= i_mul41_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul41_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul41_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul41_conv_im10_cma_qq, ena => SE_i_mul41_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul41_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul41_conv_im10_cma_qq(27 downto 0));

    -- bubble_join_i_mul41_conv_im10_cma(BITJOIN,254)
    bubble_join_i_mul41_conv_im10_cma_q <= i_mul41_conv_im10_cma_q;

    -- bubble_select_i_mul41_conv_im10_cma(BITSELECT,255)
    bubble_select_i_mul41_conv_im10_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul41_conv_im10_cma_data_reg_data_out(27 downto 0));

    -- SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0(STALLREG,561)
    SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_valid <= SE_redist6_i_mul41_conv_im10_cma_q_1_0_backStall and (SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_valid or SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_i_valid);

            IF (SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul41_conv_im10_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul41_conv_im10_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_backStall <= SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_valid or not (SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_V <= SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_valid WHEN SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_i_valid;

    SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_D0 <= SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_data0 WHEN SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul41_conv_im10_cma_b;

    -- SE_out_bubble_out_i_mul41_conv_im10_cma_data(STALLENABLE,484)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul41_conv_im10_cma_data_V0 <= SE_out_bubble_out_i_mul41_conv_im10_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul41_conv_im10_cma_data_backStall <= SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul41_conv_im10_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul41_conv_im10_cma_data_wireValid <= bubble_out_i_mul41_conv_im10_cma_data_reg_valid_out;

    -- bubble_out_i_mul41_conv_im10_cma_data_reg(STALLFIFO,548)
    bubble_out_i_mul41_conv_im10_cma_data_reg_valid_in <= SE_i_mul41_conv_im0_cma_V1;
    bubble_out_i_mul41_conv_im10_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul41_conv_im10_cma_data_backStall;
    bubble_out_i_mul41_conv_im10_cma_data_reg_data_in <= bubble_join_i_mul41_conv_im10_cma_q;
    bubble_out_i_mul41_conv_im10_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul41_conv_im10_cma_data_reg_valid_in(0);
    bubble_out_i_mul41_conv_im10_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul41_conv_im10_cma_data_reg_stall_in(0);
    bubble_out_i_mul41_conv_im10_cma_data_reg_valid_out(0) <= bubble_out_i_mul41_conv_im10_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul41_conv_im10_cma_data_reg_stall_out(0) <= bubble_out_i_mul41_conv_im10_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul41_conv_im10_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 28,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul41_conv_im10_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul41_conv_im10_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul41_conv_im10_cma_q,
        valid_out => bubble_out_i_mul41_conv_im10_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul41_conv_im10_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul41_conv_im10_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_i_mul41_conv_im0_cma(STALLENABLE,359)
    -- Valid signal propagation
    SE_i_mul41_conv_im0_cma_V0 <= SE_i_mul41_conv_im0_cma_R_v_0;
    SE_i_mul41_conv_im0_cma_V1 <= SE_i_mul41_conv_im0_cma_R_v_1;
    SE_i_mul41_conv_im0_cma_V2 <= SE_i_mul41_conv_im0_cma_R_v_2;
    -- Stall signal propagation
    SE_i_mul41_conv_im0_cma_s_tv_0 <= bubble_out_i_mul41_conv_im0_cma_data_reg_stall_out and SE_i_mul41_conv_im0_cma_R_v_0;
    SE_i_mul41_conv_im0_cma_s_tv_1 <= bubble_out_i_mul41_conv_im10_cma_data_reg_stall_out and SE_i_mul41_conv_im0_cma_R_v_1;
    SE_i_mul41_conv_im0_cma_s_tv_2 <= bubble_out_i_mul41_conv_ma3_cma_data_reg_stall_out and SE_i_mul41_conv_im0_cma_R_v_2;
    -- Backward Enable generation
    SE_i_mul41_conv_im0_cma_or0 <= SE_i_mul41_conv_im0_cma_s_tv_0;
    SE_i_mul41_conv_im0_cma_or1 <= SE_i_mul41_conv_im0_cma_s_tv_1 or SE_i_mul41_conv_im0_cma_or0;
    SE_i_mul41_conv_im0_cma_backEN <= not (SE_i_mul41_conv_im0_cma_s_tv_2 or SE_i_mul41_conv_im0_cma_or1);
    -- Determine whether to write valid data into the first register stage
    SE_i_mul41_conv_im0_cma_v_s_0 <= SE_i_mul41_conv_im0_cma_backEN and SR_SE_i_mul41_conv_im0_cma_V;
    -- Backward Stall generation
    SE_i_mul41_conv_im0_cma_backStall <= not (SE_i_mul41_conv_im0_cma_backEN);
    SE_i_mul41_conv_im0_cma_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_mul41_conv_im0_cma_R_s_0 <= (others => '0');
            SE_i_mul41_conv_im0_cma_R_v_0 <= (others => '0');
            SE_i_mul41_conv_im0_cma_R_v_1 <= (others => '0');
            SE_i_mul41_conv_im0_cma_R_v_2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_mul41_conv_im0_cma_backEN = "1") THEN
                SE_i_mul41_conv_im0_cma_R_s_0 <= SE_i_mul41_conv_im0_cma_v_s_0;
            END IF;

            IF (SE_i_mul41_conv_im0_cma_backEN = "0") THEN
                SE_i_mul41_conv_im0_cma_R_v_0 <= SE_i_mul41_conv_im0_cma_R_v_0 and SE_i_mul41_conv_im0_cma_s_tv_0;
            ELSE
                SE_i_mul41_conv_im0_cma_R_v_0 <= SE_i_mul41_conv_im0_cma_R_s_0;
            END IF;

            IF (SE_i_mul41_conv_im0_cma_backEN = "0") THEN
                SE_i_mul41_conv_im0_cma_R_v_1 <= SE_i_mul41_conv_im0_cma_R_v_1 and SE_i_mul41_conv_im0_cma_s_tv_1;
            ELSE
                SE_i_mul41_conv_im0_cma_R_v_1 <= SE_i_mul41_conv_im0_cma_R_s_0;
            END IF;

            IF (SE_i_mul41_conv_im0_cma_backEN = "0") THEN
                SE_i_mul41_conv_im0_cma_R_v_2 <= SE_i_mul41_conv_im0_cma_R_v_2 and SE_i_mul41_conv_im0_cma_s_tv_2;
            ELSE
                SE_i_mul41_conv_im0_cma_R_v_2 <= SE_i_mul41_conv_im0_cma_R_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_out_i_mul41_conv_im0_cma_data_reg(STALLFIFO,547)
    bubble_out_i_mul41_conv_im0_cma_data_reg_valid_in <= SE_i_mul41_conv_im0_cma_V0;
    bubble_out_i_mul41_conv_im0_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul41_conv_im0_cma_data_backStall;
    bubble_out_i_mul41_conv_im0_cma_data_reg_data_in <= bubble_join_i_mul41_conv_im0_cma_q;
    bubble_out_i_mul41_conv_im0_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul41_conv_im0_cma_data_reg_valid_in(0);
    bubble_out_i_mul41_conv_im0_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul41_conv_im0_cma_data_reg_stall_in(0);
    bubble_out_i_mul41_conv_im0_cma_data_reg_valid_out(0) <= bubble_out_i_mul41_conv_im0_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul41_conv_im0_cma_data_reg_stall_out(0) <= bubble_out_i_mul41_conv_im0_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul41_conv_im0_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 36,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul41_conv_im0_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul41_conv_im0_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul41_conv_im0_cma_q,
        valid_out => bubble_out_i_mul41_conv_im0_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul41_conv_im0_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul41_conv_im0_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_select_i_mul41_conv_im0_cma(BITSELECT,252)
    bubble_select_i_mul41_conv_im0_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul41_conv_im0_cma_data_reg_data_out(35 downto 0));

    -- SE_out_bubble_out_i_mul41_conv_im0_cma_data(STALLENABLE,480)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul41_conv_im0_cma_data_V0 <= SE_out_bubble_out_i_mul41_conv_im0_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul41_conv_im0_cma_data_backStall <= SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul41_conv_im0_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul41_conv_im0_cma_data_wireValid <= bubble_out_i_mul41_conv_im0_cma_data_reg_valid_out;

    -- SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0(STALLREG,562)
    SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_valid <= SE_redist7_i_mul41_conv_im0_cma_q_1_0_backStall and (SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_valid or SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_i_valid);

            IF (SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul41_conv_im0_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul41_conv_im0_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_backStall <= SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_valid or not (SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_V <= SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_valid WHEN SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_i_valid;

    SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_D0 <= SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_data0 WHEN SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul41_conv_im0_cma_b;

    -- SE_redist7_i_mul41_conv_im0_cma_q_1_0(STALLENABLE,376)
    -- Valid signal propagation
    SE_redist7_i_mul41_conv_im0_cma_q_1_0_V0 <= SE_redist7_i_mul41_conv_im0_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist7_i_mul41_conv_im0_cma_q_1_0_s_tv_0 <= SE_i_mul41_conv_join_13_backStall and SE_redist7_i_mul41_conv_im0_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist7_i_mul41_conv_im0_cma_q_1_0_backEN <= not (SE_redist7_i_mul41_conv_im0_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist7_i_mul41_conv_im0_cma_q_1_0_v_s_0 <= SE_redist7_i_mul41_conv_im0_cma_q_1_0_backEN and SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist7_i_mul41_conv_im0_cma_q_1_0_backStall <= not (SE_redist7_i_mul41_conv_im0_cma_q_1_0_backEN);
    SE_redist7_i_mul41_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist7_i_mul41_conv_im0_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist7_i_mul41_conv_im0_cma_q_1_0_backEN = "0") THEN
                SE_redist7_i_mul41_conv_im0_cma_q_1_0_R_v_0 <= SE_redist7_i_mul41_conv_im0_cma_q_1_0_R_v_0 and SE_redist7_i_mul41_conv_im0_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist7_i_mul41_conv_im0_cma_q_1_0_R_v_0 <= SE_redist7_i_mul41_conv_im0_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist6_i_mul41_conv_im10_cma_q_1_0(STALLENABLE,375)
    -- Valid signal propagation
    SE_redist6_i_mul41_conv_im10_cma_q_1_0_V0 <= SE_redist6_i_mul41_conv_im10_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist6_i_mul41_conv_im10_cma_q_1_0_s_tv_0 <= SE_i_mul41_conv_join_13_backStall and SE_redist6_i_mul41_conv_im10_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist6_i_mul41_conv_im10_cma_q_1_0_backEN <= not (SE_redist6_i_mul41_conv_im10_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist6_i_mul41_conv_im10_cma_q_1_0_v_s_0 <= SE_redist6_i_mul41_conv_im10_cma_q_1_0_backEN and SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist6_i_mul41_conv_im10_cma_q_1_0_backStall <= not (SE_redist6_i_mul41_conv_im10_cma_q_1_0_backEN);
    SE_redist6_i_mul41_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist6_i_mul41_conv_im10_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist6_i_mul41_conv_im10_cma_q_1_0_backEN = "0") THEN
                SE_redist6_i_mul41_conv_im10_cma_q_1_0_R_v_0 <= SE_redist6_i_mul41_conv_im10_cma_q_1_0_R_v_0 and SE_redist6_i_mul41_conv_im10_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist6_i_mul41_conv_im10_cma_q_1_0_R_v_0 <= SE_redist6_i_mul41_conv_im10_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_mul41_conv_join_13(STALLENABLE,343)
    -- Valid signal propagation
    SE_i_mul41_conv_join_13_V0 <= SE_i_mul41_conv_join_13_wireValid;
    -- Backward Stall generation
    SE_i_mul41_conv_join_13_backStall <= SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_backStall or not (SE_i_mul41_conv_join_13_wireValid);
    -- Computing multiple Valid(s)
    SE_i_mul41_conv_join_13_and0 <= SE_redist6_i_mul41_conv_im10_cma_q_1_0_V0;
    SE_i_mul41_conv_join_13_and1 <= SE_redist7_i_mul41_conv_im0_cma_q_1_0_V0 and SE_i_mul41_conv_join_13_and0;
    SE_i_mul41_conv_join_13_wireValid <= SE_redist1_i_mul41_conv_ma3_cma_q_1_0_V0 and SE_i_mul41_conv_join_13_and1;

    -- SE_redist1_i_mul41_conv_ma3_cma_q_1_0(STALLENABLE,370)
    -- Valid signal propagation
    SE_redist1_i_mul41_conv_ma3_cma_q_1_0_V0 <= SE_redist1_i_mul41_conv_ma3_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist1_i_mul41_conv_ma3_cma_q_1_0_s_tv_0 <= SE_i_mul41_conv_join_13_backStall and SE_redist1_i_mul41_conv_ma3_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backEN <= not (SE_redist1_i_mul41_conv_ma3_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_i_mul41_conv_ma3_cma_q_1_0_v_s_0 <= SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backEN and SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backStall <= not (SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backEN);
    SE_redist1_i_mul41_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_i_mul41_conv_ma3_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backEN = "0") THEN
                SE_redist1_i_mul41_conv_ma3_cma_q_1_0_R_v_0 <= SE_redist1_i_mul41_conv_ma3_cma_q_1_0_R_v_0 and SE_redist1_i_mul41_conv_ma3_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist1_i_mul41_conv_ma3_cma_q_1_0_R_v_0 <= SE_redist1_i_mul41_conv_ma3_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_select_i_mul41_conv_ma3_cma(BITSELECT,270)
    bubble_select_i_mul41_conv_ma3_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul41_conv_ma3_cma_data_reg_data_out(33 downto 0));

    -- SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0(STALLREG,563)
    SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_valid <= SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backStall and (SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_valid or SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_i_valid);

            IF (SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul41_conv_ma3_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul41_conv_ma3_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backStall <= SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_valid or not (SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_V <= SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_valid WHEN SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_i_valid;

    SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_D0 <= SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_data0 WHEN SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul41_conv_ma3_cma_b;

    -- redist1_i_mul41_conv_ma3_cma_q_1_0(REG,170)
    redist1_i_mul41_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_mul41_conv_ma3_cma_q_1_0_q <= "0000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_mul41_conv_ma3_cma_q_1_0_backEN = "1") THEN
                redist1_i_mul41_conv_ma3_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_i_mul41_conv_ma3_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_mul41_conv_align_14(BITSHIFT,108)@44
    i_mul41_conv_align_14_qint <= redist1_i_mul41_conv_ma3_cma_q_1_0_q & "000000000000000000";
    i_mul41_conv_align_14_q <= i_mul41_conv_align_14_qint(51 downto 0);

    -- redist6_i_mul41_conv_im10_cma_q_1_0(REG,175)
    redist6_i_mul41_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_mul41_conv_im10_cma_q_1_0_q <= "0000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist6_i_mul41_conv_im10_cma_q_1_0_backEN = "1") THEN
                redist6_i_mul41_conv_im10_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist6_i_mul41_conv_im10_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_i_mul41_conv_im0_cma_q_1_0(REG,176)
    redist7_i_mul41_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_i_mul41_conv_im0_cma_q_1_0_q <= "000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist7_i_mul41_conv_im0_cma_q_1_0_backEN = "1") THEN
                redist7_i_mul41_conv_im0_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist7_i_mul41_conv_im0_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_mul41_conv_join_13(BITJOIN,107)@44
    i_mul41_conv_join_13_q <= redist6_i_mul41_conv_im10_cma_q_1_0_q & redist7_i_mul41_conv_im0_cma_q_1_0_q;

    -- i_mul41_conv_result_add_0_0(ADD,110)@44
    i_mul41_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul41_conv_join_13_q));
    i_mul41_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul41_conv_align_14_q(51)) & i_mul41_conv_align_14_q));
    i_mul41_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul41_conv_result_add_0_0_a) + SIGNED(i_mul41_conv_result_add_0_0_b));
    i_mul41_conv_result_add_0_0_q <= i_mul41_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul41_conv_rnd_sel(BITSELECT,58)@44
    bgTrunc_i_mul41_conv_rnd_sel_in <= i_mul41_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul41_conv_rnd_sel_b <= bgTrunc_i_mul41_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul41_conv_sel_x(BITSELECT,5)@44
    bgTrunc_i_mul41_conv_sel_x_b <= bgTrunc_i_mul41_conv_rnd_sel_b(31 downto 0);

    -- redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0(REG,199)
    redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_backEN = "1") THEN
                redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(bgTrunc_i_mul41_conv_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0(STALLENABLE,405)
    -- Valid signal propagation
    SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_V0 <= SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_s_tv_0 <= SR_SE_i_cmp42_conv_backStall and SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_backEN <= not (SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_v_s_0 <= SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_backEN and SE_i_mul41_conv_join_13_V0;
    -- Backward Stall generation
    SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_backStall <= not (SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_v_s_0);
    SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_backEN = "0") THEN
                SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_R_v_0 <= SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_R_v_0 and SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_R_v_0 <= SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_cmp42_conv(STALLREG,564)
    SR_SE_i_cmp42_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_cmp42_conv_r_valid <= (others => '0');
            SR_SE_i_cmp42_conv_r_data0 <= (others => '-');
            SR_SE_i_cmp42_conv_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_cmp42_conv_r_valid <= SE_i_cmp42_conv_backStall and (SR_SE_i_cmp42_conv_r_valid or SR_SE_i_cmp42_conv_i_valid);

            IF (SR_SE_i_cmp42_conv_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_cmp42_conv_r_data0 <= STD_LOGIC_VECTOR(redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_q);
                SR_SE_i_cmp42_conv_r_data1 <= STD_LOGIC_VECTOR(bubble_select_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_cmp42_conv_and0 <= SE_redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_V0;
    SR_SE_i_cmp42_conv_i_valid <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_V0 and SR_SE_i_cmp42_conv_and0;
    -- Stall signal propagation
    SR_SE_i_cmp42_conv_backStall <= SR_SE_i_cmp42_conv_r_valid or not (SR_SE_i_cmp42_conv_i_valid);

    -- Valid
    SR_SE_i_cmp42_conv_V <= SR_SE_i_cmp42_conv_r_valid WHEN SR_SE_i_cmp42_conv_r_valid = "1" ELSE SR_SE_i_cmp42_conv_i_valid;

    -- Data0
    SR_SE_i_cmp42_conv_D0 <= SR_SE_i_cmp42_conv_r_data0 WHEN SR_SE_i_cmp42_conv_r_valid = "1" ELSE redist23_bgTrunc_i_mul41_conv_sel_x_b_1_0_q;
    -- Data1
    SR_SE_i_cmp42_conv_D1 <= SR_SE_i_cmp42_conv_r_data1 WHEN SR_SE_i_cmp42_conv_r_valid = "1" ELSE bubble_select_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_b;

    -- SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo(STALLENABLE,382)
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_fromReg0 <= (others => '0');
            SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_fromReg0 <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_toReg0;
            -- Succesor 1
            SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_fromReg1 <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_consumed0 <= (not (SR_SE_i_cmp42_conv_backStall) and SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_wireValid) or SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_fromReg0;
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_consumed1 <= (not (SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backStall) and SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_wireValid) or SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_fromReg1;
    -- Consuming
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_StallValid <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_backStall and SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_wireValid;
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_toReg0 <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_StallValid and SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_consumed0;
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_toReg1 <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_StallValid and SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_or0 <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_consumed0;
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_wireStall <= not (SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_consumed1 and SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_or0);
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_backStall <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_V0 <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_wireValid and not (SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_fromReg0);
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_V1 <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_wireValid and not (SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_wireValid <= redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_out;

    -- redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo(STALLFIFO,181)
    redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_in <= SE_out_conv_B0_merge_reg_aunroll_x_V5;
    redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_in <= SE_out_redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_backStall;
    redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_data_in <= bubble_select_conv_B0_merge_reg_aunroll_x_b;
    redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_in_bitsignaltemp <= redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_in(0);
    redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_in_bitsignaltemp <= redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_in(0);
    redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_out(0) <= redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_out_bitsignaltemp;
    redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_out(0) <= redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_out_bitsignaltemp;
    theredist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B0_merge_reg_aunroll_x_b,
        valid_out => redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_out_bitsignaltemp,
        data_out => redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_conv_B0_merge_reg_aunroll_x_4_reg(STALLFIFO,538)
    bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_in <= SE_out_conv_B0_merge_reg_aunroll_x_V3;
    bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_in <= SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_4_backStall;
    bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp <= bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_in(0);
    bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp <= bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_in(0);
    bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_out(0) <= bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_out(0) <= bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    thebubble_out_conv_B0_merge_reg_aunroll_x_4_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 41,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- i_syncbuf_n_fin_sync_buffer_conv(BLACKBOX,44)@42
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_n_fin_sync_buffer_conv : i_syncbuf_n_fin_sync_buffer_conv250
    PORT MAP (
        in_buffer_in => in_N_Fin,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_n_fin_sync_buffer_conv_backStall,
        in_valid_in => SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3_V0,
        out_buffer_out => i_syncbuf_n_fin_sync_buffer_conv_out_buffer_out,
        out_stall_out => i_syncbuf_n_fin_sync_buffer_conv_out_stall_out,
        out_valid_out => i_syncbuf_n_fin_sync_buffer_conv_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3(STALLENABLE,418)
    -- Valid signal propagation
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3_V0 <= SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3_backStall <= i_syncbuf_n_fin_sync_buffer_conv_out_stall_out or not (SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3_wireValid <= bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_out;

    -- bubble_out_conv_B0_merge_reg_aunroll_x_3_reg(STALLFIFO,537)
    bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_in <= SE_out_conv_B0_merge_reg_aunroll_x_V2;
    bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_in <= SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_3_backStall;
    bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp <= bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_in(0);
    bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp <= bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_in(0);
    bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_out(0) <= bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_out(0) <= bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    thebubble_out_conv_B0_merge_reg_aunroll_x_3_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 42,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_conv_B0_merge_reg_aunroll_x_2_reg(STALLFIFO,536)
    bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_in <= SE_out_conv_B0_merge_reg_aunroll_x_V1;
    bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_in <= SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_2_backStall;
    bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp <= bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_in(0);
    bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp <= bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_in(0);
    bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_out(0) <= bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_out(0) <= bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    thebubble_out_conv_B0_merge_reg_aunroll_x_2_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 41,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,313)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= conv_B0_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,235)
    bubble_join_stall_entry_q <= in_local_id_1 & in_local_id_0 & in_group_id_1 & in_global_id_1 & in_global_id_0 & in_acl_hw_wg_id;

    -- bubble_select_stall_entry(BITSELECT,236)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(63 downto 32));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(95 downto 64));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(127 downto 96));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(159 downto 128));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(191 downto 160));

    -- conv_B0_merge_reg_aunroll_x(BLACKBOX,7)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_data_out_2@1
    -- out out_data_out_3@1
    -- out out_data_out_4@1
    -- out out_data_out_5@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theconv_B0_merge_reg_aunroll_x : conv_B0_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_c,
        in_data_in_1 => bubble_select_stall_entry_d,
        in_data_in_2 => bubble_select_stall_entry_f,
        in_data_in_3 => bubble_select_stall_entry_g,
        in_data_in_4 => bubble_select_stall_entry_e,
        in_data_in_5 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_conv_B0_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => conv_B0_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => conv_B0_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => conv_B0_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => conv_B0_merge_reg_aunroll_x_out_data_out_3,
        out_data_out_4 => conv_B0_merge_reg_aunroll_x_out_data_out_4,
        out_data_out_5 => conv_B0_merge_reg_aunroll_x_out_data_out_5,
        out_stall_out => conv_B0_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => conv_B0_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_conv_B0_merge_reg_aunroll_x(STALLENABLE,298)
    SE_out_conv_B0_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg2 <= (others => '0');
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg3 <= (others => '0');
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg4 <= (others => '0');
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg5 <= (others => '0');
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg6 <= (others => '0');
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg7 <= (others => '0');
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg8 <= (others => '0');
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg9 <= (others => '0');
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg10 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg0 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg1 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg2 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg3 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg4 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg5 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg5;
            -- Succesor 6
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg6 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg6;
            -- Succesor 7
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg7 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg7;
            -- Succesor 8
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg8 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg8;
            -- Succesor 9
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg9 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg9;
            -- Succesor 10
            SE_out_conv_B0_merge_reg_aunroll_x_fromReg10 <= SE_out_conv_B0_merge_reg_aunroll_x_toReg10;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_conv_B0_merge_reg_aunroll_x_consumed0 <= (not (bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_out) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg0;
    SE_out_conv_B0_merge_reg_aunroll_x_consumed1 <= (not (bubble_out_conv_B0_merge_reg_aunroll_x_2_reg_stall_out) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg1;
    SE_out_conv_B0_merge_reg_aunroll_x_consumed2 <= (not (bubble_out_conv_B0_merge_reg_aunroll_x_3_reg_stall_out) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg2;
    SE_out_conv_B0_merge_reg_aunroll_x_consumed3 <= (not (bubble_out_conv_B0_merge_reg_aunroll_x_4_reg_stall_out) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg3;
    SE_out_conv_B0_merge_reg_aunroll_x_consumed4 <= (not (i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_o_stall) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg4;
    SE_out_conv_B0_merge_reg_aunroll_x_consumed5 <= (not (redist12_conv_B0_merge_reg_aunroll_x_out_data_out_0_44_fifo_stall_out) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg5;
    SE_out_conv_B0_merge_reg_aunroll_x_consumed6 <= (not (redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_out) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg6;
    SE_out_conv_B0_merge_reg_aunroll_x_consumed7 <= (not (redist15_conv_B0_merge_reg_aunroll_x_out_data_out_2_44_fifo_stall_out) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg7;
    SE_out_conv_B0_merge_reg_aunroll_x_consumed8 <= (not (redist17_conv_B0_merge_reg_aunroll_x_out_data_out_3_40_fifo_stall_out) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg8;
    SE_out_conv_B0_merge_reg_aunroll_x_consumed9 <= (not (redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_stall_out) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg9;
    SE_out_conv_B0_merge_reg_aunroll_x_consumed10 <= (not (redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out) and SE_out_conv_B0_merge_reg_aunroll_x_wireValid) or SE_out_conv_B0_merge_reg_aunroll_x_fromReg10;
    -- Consuming
    SE_out_conv_B0_merge_reg_aunroll_x_StallValid <= SE_out_conv_B0_merge_reg_aunroll_x_backStall and SE_out_conv_B0_merge_reg_aunroll_x_wireValid;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg0 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed0;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg1 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed1;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg2 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed2;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg3 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed3;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg4 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed4;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg5 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed5;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg6 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed6;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg7 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed7;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg8 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed8;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg9 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed9;
    SE_out_conv_B0_merge_reg_aunroll_x_toReg10 <= SE_out_conv_B0_merge_reg_aunroll_x_StallValid and SE_out_conv_B0_merge_reg_aunroll_x_consumed10;
    -- Backward Stall generation
    SE_out_conv_B0_merge_reg_aunroll_x_or0 <= SE_out_conv_B0_merge_reg_aunroll_x_consumed0;
    SE_out_conv_B0_merge_reg_aunroll_x_or1 <= SE_out_conv_B0_merge_reg_aunroll_x_consumed1 and SE_out_conv_B0_merge_reg_aunroll_x_or0;
    SE_out_conv_B0_merge_reg_aunroll_x_or2 <= SE_out_conv_B0_merge_reg_aunroll_x_consumed2 and SE_out_conv_B0_merge_reg_aunroll_x_or1;
    SE_out_conv_B0_merge_reg_aunroll_x_or3 <= SE_out_conv_B0_merge_reg_aunroll_x_consumed3 and SE_out_conv_B0_merge_reg_aunroll_x_or2;
    SE_out_conv_B0_merge_reg_aunroll_x_or4 <= SE_out_conv_B0_merge_reg_aunroll_x_consumed4 and SE_out_conv_B0_merge_reg_aunroll_x_or3;
    SE_out_conv_B0_merge_reg_aunroll_x_or5 <= SE_out_conv_B0_merge_reg_aunroll_x_consumed5 and SE_out_conv_B0_merge_reg_aunroll_x_or4;
    SE_out_conv_B0_merge_reg_aunroll_x_or6 <= SE_out_conv_B0_merge_reg_aunroll_x_consumed6 and SE_out_conv_B0_merge_reg_aunroll_x_or5;
    SE_out_conv_B0_merge_reg_aunroll_x_or7 <= SE_out_conv_B0_merge_reg_aunroll_x_consumed7 and SE_out_conv_B0_merge_reg_aunroll_x_or6;
    SE_out_conv_B0_merge_reg_aunroll_x_or8 <= SE_out_conv_B0_merge_reg_aunroll_x_consumed8 and SE_out_conv_B0_merge_reg_aunroll_x_or7;
    SE_out_conv_B0_merge_reg_aunroll_x_or9 <= SE_out_conv_B0_merge_reg_aunroll_x_consumed9 and SE_out_conv_B0_merge_reg_aunroll_x_or8;
    SE_out_conv_B0_merge_reg_aunroll_x_wireStall <= not (SE_out_conv_B0_merge_reg_aunroll_x_consumed10 and SE_out_conv_B0_merge_reg_aunroll_x_or9);
    SE_out_conv_B0_merge_reg_aunroll_x_backStall <= SE_out_conv_B0_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_conv_B0_merge_reg_aunroll_x_V0 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg0);
    SE_out_conv_B0_merge_reg_aunroll_x_V1 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg1);
    SE_out_conv_B0_merge_reg_aunroll_x_V2 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg2);
    SE_out_conv_B0_merge_reg_aunroll_x_V3 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg3);
    SE_out_conv_B0_merge_reg_aunroll_x_V4 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg4);
    SE_out_conv_B0_merge_reg_aunroll_x_V5 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg5);
    SE_out_conv_B0_merge_reg_aunroll_x_V6 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg6);
    SE_out_conv_B0_merge_reg_aunroll_x_V7 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg7);
    SE_out_conv_B0_merge_reg_aunroll_x_V8 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg8);
    SE_out_conv_B0_merge_reg_aunroll_x_V9 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg9);
    SE_out_conv_B0_merge_reg_aunroll_x_V10 <= SE_out_conv_B0_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B0_merge_reg_aunroll_x_fromReg10);
    -- Computing multiple Valid(s)
    SE_out_conv_B0_merge_reg_aunroll_x_wireValid <= conv_B0_merge_reg_aunroll_x_out_valid_out;

    -- bubble_out_conv_B0_merge_reg_aunroll_x_1_reg(STALLFIFO,535)
    bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_in <= SE_out_conv_B0_merge_reg_aunroll_x_V0;
    bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_in <= SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1_backStall;
    bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp <= bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_in(0);
    bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp <= bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_in(0);
    bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_out(0) <= bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_out(0) <= bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    thebubble_out_conv_B0_merge_reg_aunroll_x_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 38,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1(STALLENABLE,414)
    -- Valid signal propagation
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1_V0 <= SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1_backStall <= i_syncbuf_k_conv_sync_buffer95_conv_out_stall_out or not (SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1_wireValid <= bubble_out_conv_B0_merge_reg_aunroll_x_1_reg_valid_out;

    -- i_syncbuf_k_conv_sync_buffer95_conv(BLACKBOX,42)@38
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_k_conv_sync_buffer95_conv : i_syncbuf_k_conv_sync_buffer95_conv0
    PORT MAP (
        in_buffer_in => in_K_conv,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_k_conv_sync_buffer95_conv_backStall,
        in_valid_in => SE_out_bubble_out_conv_B0_merge_reg_aunroll_x_1_V0,
        out_buffer_out => i_syncbuf_k_conv_sync_buffer95_conv_out_buffer_out,
        out_stall_out => i_syncbuf_k_conv_sync_buffer95_conv_out_stall_out,
        out_valid_out => i_syncbuf_k_conv_sync_buffer95_conv_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_syncbuf_k_conv_sync_buffer95_conv(BITJOIN,219)
    bubble_join_i_syncbuf_k_conv_sync_buffer95_conv_q <= i_syncbuf_k_conv_sync_buffer95_conv_out_buffer_out;

    -- bubble_select_i_syncbuf_k_conv_sync_buffer95_conv(BITSELECT,220)
    bubble_select_i_syncbuf_k_conv_sync_buffer95_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_k_conv_sync_buffer95_conv_q(31 downto 0));

    -- i_mul_conv_bs4(BITSELECT,115)@38
    i_mul_conv_bs4_in <= STD_LOGIC_VECTOR(bubble_select_i_syncbuf_k_conv_sync_buffer95_conv_b(17 downto 0));
    i_mul_conv_bs4_b <= STD_LOGIC_VECTOR(i_mul_conv_bs4_in(17 downto 0));

    -- i_mul_conv_bjA5(BITJOIN,116)@38
    i_mul_conv_bjA5_q <= GND_q & i_mul_conv_bs4_b;

    -- i_mul_conv_bjB9(BITJOIN,120)@38
    i_mul_conv_bjB9_q <= GND_q & i_mul_conv_bs1_b;

    -- i_mul_conv_bs7(BITSELECT,118)@38
    i_mul_conv_bs7_b <= STD_LOGIC_VECTOR(bubble_select_i_syncbuf_k_conv_sync_buffer95_conv_b(31 downto 18));

    -- i_mul_conv_bs6(BITSELECT,117)@38
    i_mul_conv_bs6_b <= bubble_select_i_syncbuf_k_conv_sync_buffer95_conv_b(31 downto 18);

    -- i_mul_conv_bs1(BITSELECT,112)@38
    i_mul_conv_bs1_in <= bubble_select_i_syncbuf_k_conv_sync_buffer95_conv_b(17 downto 0);
    i_mul_conv_bs1_b <= i_mul_conv_bs1_in(17 downto 0);

    -- SE_out_i_syncbuf_k_conv_sync_buffer95_conv(STALLENABLE,306)
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_syncbuf_k_conv_sync_buffer95_conv_fromReg0 <= (others => '0');
            SE_out_i_syncbuf_k_conv_sync_buffer95_conv_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_syncbuf_k_conv_sync_buffer95_conv_fromReg0 <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_toReg0;
            -- Succesor 1
            SE_out_i_syncbuf_k_conv_sync_buffer95_conv_fromReg1 <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_consumed0 <= (not (bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_out) and SE_out_i_syncbuf_k_conv_sync_buffer95_conv_wireValid) or SE_out_i_syncbuf_k_conv_sync_buffer95_conv_fromReg0;
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_consumed1 <= (not (SR_SE_i_mul_conv_im0_cma_backStall) and SE_out_i_syncbuf_k_conv_sync_buffer95_conv_wireValid) or SE_out_i_syncbuf_k_conv_sync_buffer95_conv_fromReg1;
    -- Consuming
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_StallValid <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_backStall and SE_out_i_syncbuf_k_conv_sync_buffer95_conv_wireValid;
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_toReg0 <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_StallValid and SE_out_i_syncbuf_k_conv_sync_buffer95_conv_consumed0;
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_toReg1 <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_StallValid and SE_out_i_syncbuf_k_conv_sync_buffer95_conv_consumed1;
    -- Backward Stall generation
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_or0 <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_consumed0;
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_wireStall <= not (SE_out_i_syncbuf_k_conv_sync_buffer95_conv_consumed1 and SE_out_i_syncbuf_k_conv_sync_buffer95_conv_or0);
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_backStall <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_wireStall;
    -- Valid signal propagation
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_V0 <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_wireValid and not (SE_out_i_syncbuf_k_conv_sync_buffer95_conv_fromReg0);
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_V1 <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_wireValid and not (SE_out_i_syncbuf_k_conv_sync_buffer95_conv_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_k_conv_sync_buffer95_conv_wireValid <= i_syncbuf_k_conv_sync_buffer95_conv_out_valid_out;

    -- SR_SE_i_mul_conv_im0_cma(STALLREG,570)
    SR_SE_i_mul_conv_im0_cma_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_mul_conv_im0_cma_r_valid <= (others => '0');
            SR_SE_i_mul_conv_im0_cma_r_data0 <= (others => '-');
            SR_SE_i_mul_conv_im0_cma_r_data1 <= (others => '-');
            SR_SE_i_mul_conv_im0_cma_r_data2 <= (others => '-');
            SR_SE_i_mul_conv_im0_cma_r_data3 <= (others => '-');
            SR_SE_i_mul_conv_im0_cma_r_data4 <= (others => '-');
            SR_SE_i_mul_conv_im0_cma_r_data5 <= (others => '-');
            SR_SE_i_mul_conv_im0_cma_r_data6 <= (others => '-');
            SR_SE_i_mul_conv_im0_cma_r_data7 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_mul_conv_im0_cma_r_valid <= SE_i_mul_conv_im0_cma_backStall and (SR_SE_i_mul_conv_im0_cma_r_valid or SR_SE_i_mul_conv_im0_cma_i_valid);

            IF (SR_SE_i_mul_conv_im0_cma_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_mul_conv_im0_cma_r_data0 <= i_mul_conv_bs1_b;
                SR_SE_i_mul_conv_im0_cma_r_data1 <= i_mul_conv_bs1_b;
                SR_SE_i_mul_conv_im0_cma_r_data2 <= i_mul_conv_bs6_b;
                SR_SE_i_mul_conv_im0_cma_r_data3 <= i_mul_conv_bs6_b;
                SR_SE_i_mul_conv_im0_cma_r_data4 <= i_mul_conv_bs6_b;
                SR_SE_i_mul_conv_im0_cma_r_data5 <= i_mul_conv_bs7_b;
                SR_SE_i_mul_conv_im0_cma_r_data6 <= STD_LOGIC_VECTOR(i_mul_conv_bjB9_q);
                SR_SE_i_mul_conv_im0_cma_r_data7 <= STD_LOGIC_VECTOR(i_mul_conv_bjA5_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_mul_conv_im0_cma_i_valid <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_V1;
    -- Stall signal propagation
    SR_SE_i_mul_conv_im0_cma_backStall <= SR_SE_i_mul_conv_im0_cma_r_valid or not (SR_SE_i_mul_conv_im0_cma_i_valid);

    -- Valid
    SR_SE_i_mul_conv_im0_cma_V <= SR_SE_i_mul_conv_im0_cma_r_valid WHEN SR_SE_i_mul_conv_im0_cma_r_valid = "1" ELSE SR_SE_i_mul_conv_im0_cma_i_valid;

    -- Data0
    SR_SE_i_mul_conv_im0_cma_D0 <= SR_SE_i_mul_conv_im0_cma_r_data0 WHEN SR_SE_i_mul_conv_im0_cma_r_valid = "1" ELSE i_mul_conv_bs1_b;
    -- Data1
    SR_SE_i_mul_conv_im0_cma_D1 <= SR_SE_i_mul_conv_im0_cma_r_data1 WHEN SR_SE_i_mul_conv_im0_cma_r_valid = "1" ELSE i_mul_conv_bs1_b;
    -- Data2
    SR_SE_i_mul_conv_im0_cma_D2 <= SR_SE_i_mul_conv_im0_cma_r_data2 WHEN SR_SE_i_mul_conv_im0_cma_r_valid = "1" ELSE i_mul_conv_bs6_b;
    -- Data3
    SR_SE_i_mul_conv_im0_cma_D3 <= SR_SE_i_mul_conv_im0_cma_r_data3 WHEN SR_SE_i_mul_conv_im0_cma_r_valid = "1" ELSE i_mul_conv_bs6_b;
    -- Data4
    SR_SE_i_mul_conv_im0_cma_D4 <= SR_SE_i_mul_conv_im0_cma_r_data4 WHEN SR_SE_i_mul_conv_im0_cma_r_valid = "1" ELSE i_mul_conv_bs6_b;
    -- Data5
    SR_SE_i_mul_conv_im0_cma_D5 <= SR_SE_i_mul_conv_im0_cma_r_data5 WHEN SR_SE_i_mul_conv_im0_cma_r_valid = "1" ELSE i_mul_conv_bs7_b;
    -- Data6
    SR_SE_i_mul_conv_im0_cma_D6 <= SR_SE_i_mul_conv_im0_cma_r_data6 WHEN SR_SE_i_mul_conv_im0_cma_r_valid = "1" ELSE i_mul_conv_bjB9_q;
    -- Data7
    SR_SE_i_mul_conv_im0_cma_D7 <= SR_SE_i_mul_conv_im0_cma_r_data7 WHEN SR_SE_i_mul_conv_im0_cma_r_valid = "1" ELSE i_mul_conv_bjA5_q;

    -- i_mul_conv_im0_cma(CHAINMULTADD,134)@38 + 2
    i_mul_conv_im0_cma_reset <= not (resetn);
    i_mul_conv_im0_cma_ena0 <= SE_i_mul_conv_im0_cma_backEN(0);
    i_mul_conv_im0_cma_ena1 <= i_mul_conv_im0_cma_ena0;
    i_mul_conv_im0_cma_p(0) <= i_mul_conv_im0_cma_a0(0) * i_mul_conv_im0_cma_c0(0);
    i_mul_conv_im0_cma_u(0) <= RESIZE(i_mul_conv_im0_cma_p(0),36);
    i_mul_conv_im0_cma_w(0) <= i_mul_conv_im0_cma_u(0);
    i_mul_conv_im0_cma_x(0) <= i_mul_conv_im0_cma_w(0);
    i_mul_conv_im0_cma_y(0) <= i_mul_conv_im0_cma_x(0);
    i_mul_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_conv_im0_cma_ena0 = '1') THEN
                i_mul_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul_conv_im0_cma_D0),18);
                i_mul_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul_conv_im0_cma_D1),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_conv_im0_cma_ena1 = '1') THEN
                i_mul_conv_im0_cma_s(0) <= i_mul_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul_conv_im0_cma_qq, ena => SE_i_mul_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul_conv_im0_cma_qq(35 downto 0));

    -- bubble_join_i_mul_conv_im0_cma(BITJOIN,257)
    bubble_join_i_mul_conv_im0_cma_q <= i_mul_conv_im0_cma_q;

    -- i_mul_conv_ma3_cma(CHAINMULTADD,139)@38 + 2
    i_mul_conv_ma3_cma_reset <= not (resetn);
    i_mul_conv_ma3_cma_ena0 <= SE_i_mul_conv_im0_cma_backEN(0);
    i_mul_conv_ma3_cma_ena1 <= i_mul_conv_ma3_cma_ena0;
    i_mul_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul_conv_ma3_cma_a0(0),15));
    i_mul_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul_conv_ma3_cma_a0(1),15));
    i_mul_conv_ma3_cma_p(0) <= i_mul_conv_ma3_cma_l(0) * i_mul_conv_ma3_cma_c0(0);
    i_mul_conv_ma3_cma_p(1) <= i_mul_conv_ma3_cma_l(1) * i_mul_conv_ma3_cma_c0(1);
    i_mul_conv_ma3_cma_u(0) <= RESIZE(i_mul_conv_ma3_cma_p(0),35);
    i_mul_conv_ma3_cma_u(1) <= RESIZE(i_mul_conv_ma3_cma_p(1),35);
    i_mul_conv_ma3_cma_w(0) <= i_mul_conv_ma3_cma_u(0) + i_mul_conv_ma3_cma_u(1);
    i_mul_conv_ma3_cma_x(0) <= i_mul_conv_ma3_cma_w(0);
    i_mul_conv_ma3_cma_y(0) <= i_mul_conv_ma3_cma_x(0);
    i_mul_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_conv_ma3_cma_ena0 = '1') THEN
                i_mul_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul_conv_im0_cma_D5),14);
                i_mul_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(SR_SE_i_mul_conv_im0_cma_D4),14);
                i_mul_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(SR_SE_i_mul_conv_im0_cma_D6),19);
                i_mul_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(SR_SE_i_mul_conv_im0_cma_D7),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_conv_ma3_cma_ena1 = '1') THEN
                i_mul_conv_ma3_cma_s(0) <= i_mul_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul_conv_ma3_cma_qq, ena => SE_i_mul_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul_conv_ma3_cma_qq(33 downto 0));

    -- bubble_join_i_mul_conv_ma3_cma(BITJOIN,272)
    bubble_join_i_mul_conv_ma3_cma_q <= i_mul_conv_ma3_cma_q;

    -- SE_out_bubble_out_i_mul_conv_ma3_cma_data(STALLENABLE,508)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul_conv_ma3_cma_data_V0 <= SE_out_bubble_out_i_mul_conv_ma3_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul_conv_ma3_cma_data_backStall <= SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul_conv_ma3_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul_conv_ma3_cma_data_wireValid <= bubble_out_i_mul_conv_ma3_cma_data_reg_valid_out;

    -- bubble_out_i_mul_conv_ma3_cma_data_reg(STALLFIFO,554)
    bubble_out_i_mul_conv_ma3_cma_data_reg_valid_in <= SE_i_mul_conv_im0_cma_V2;
    bubble_out_i_mul_conv_ma3_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul_conv_ma3_cma_data_backStall;
    bubble_out_i_mul_conv_ma3_cma_data_reg_data_in <= bubble_join_i_mul_conv_ma3_cma_q;
    bubble_out_i_mul_conv_ma3_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul_conv_ma3_cma_data_reg_valid_in(0);
    bubble_out_i_mul_conv_ma3_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul_conv_ma3_cma_data_reg_stall_in(0);
    bubble_out_i_mul_conv_ma3_cma_data_reg_valid_out(0) <= bubble_out_i_mul_conv_ma3_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul_conv_ma3_cma_data_reg_stall_out(0) <= bubble_out_i_mul_conv_ma3_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul_conv_ma3_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 34,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul_conv_ma3_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul_conv_ma3_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul_conv_ma3_cma_q,
        valid_out => bubble_out_i_mul_conv_ma3_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul_conv_ma3_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul_conv_ma3_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul_conv_im10_cma(CHAINMULTADD,135)@38 + 2
    i_mul_conv_im10_cma_reset <= not (resetn);
    i_mul_conv_im10_cma_ena0 <= SE_i_mul_conv_im0_cma_backEN(0);
    i_mul_conv_im10_cma_ena1 <= i_mul_conv_im10_cma_ena0;
    i_mul_conv_im10_cma_p(0) <= i_mul_conv_im10_cma_a0(0) * i_mul_conv_im10_cma_c0(0);
    i_mul_conv_im10_cma_u(0) <= RESIZE(i_mul_conv_im10_cma_p(0),28);
    i_mul_conv_im10_cma_w(0) <= i_mul_conv_im10_cma_u(0);
    i_mul_conv_im10_cma_x(0) <= i_mul_conv_im10_cma_w(0);
    i_mul_conv_im10_cma_y(0) <= i_mul_conv_im10_cma_x(0);
    i_mul_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_conv_im10_cma_ena0 = '1') THEN
                i_mul_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul_conv_im0_cma_D2),14);
                i_mul_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul_conv_im0_cma_D3),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_conv_im10_cma_ena1 = '1') THEN
                i_mul_conv_im10_cma_s(0) <= i_mul_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul_conv_im10_cma_qq, ena => SE_i_mul_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul_conv_im10_cma_qq(27 downto 0));

    -- bubble_join_i_mul_conv_im10_cma(BITJOIN,260)
    bubble_join_i_mul_conv_im10_cma_q <= i_mul_conv_im10_cma_q;

    -- bubble_select_i_mul_conv_im10_cma(BITSELECT,261)
    bubble_select_i_mul_conv_im10_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul_conv_im10_cma_data_reg_data_out(27 downto 0));

    -- SR_SE_redist4_i_mul_conv_im10_cma_q_1_0(STALLREG,571)
    SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_valid <= SE_redist4_i_mul_conv_im10_cma_q_1_0_backStall and (SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_valid or SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_i_valid);

            IF (SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul_conv_im10_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul_conv_im10_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_backStall <= SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_valid or not (SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_V <= SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_valid WHEN SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_i_valid;

    SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_D0 <= SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_data0 WHEN SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul_conv_im10_cma_b;

    -- SE_out_bubble_out_i_mul_conv_im10_cma_data(STALLENABLE,492)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul_conv_im10_cma_data_V0 <= SE_out_bubble_out_i_mul_conv_im10_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul_conv_im10_cma_data_backStall <= SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul_conv_im10_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul_conv_im10_cma_data_wireValid <= bubble_out_i_mul_conv_im10_cma_data_reg_valid_out;

    -- bubble_out_i_mul_conv_im10_cma_data_reg(STALLFIFO,550)
    bubble_out_i_mul_conv_im10_cma_data_reg_valid_in <= SE_i_mul_conv_im0_cma_V1;
    bubble_out_i_mul_conv_im10_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul_conv_im10_cma_data_backStall;
    bubble_out_i_mul_conv_im10_cma_data_reg_data_in <= bubble_join_i_mul_conv_im10_cma_q;
    bubble_out_i_mul_conv_im10_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul_conv_im10_cma_data_reg_valid_in(0);
    bubble_out_i_mul_conv_im10_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul_conv_im10_cma_data_reg_stall_in(0);
    bubble_out_i_mul_conv_im10_cma_data_reg_valid_out(0) <= bubble_out_i_mul_conv_im10_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul_conv_im10_cma_data_reg_stall_out(0) <= bubble_out_i_mul_conv_im10_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul_conv_im10_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 28,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul_conv_im10_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul_conv_im10_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul_conv_im10_cma_q,
        valid_out => bubble_out_i_mul_conv_im10_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul_conv_im10_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul_conv_im10_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_i_mul_conv_im0_cma(STALLENABLE,361)
    -- Valid signal propagation
    SE_i_mul_conv_im0_cma_V0 <= SE_i_mul_conv_im0_cma_R_v_0;
    SE_i_mul_conv_im0_cma_V1 <= SE_i_mul_conv_im0_cma_R_v_1;
    SE_i_mul_conv_im0_cma_V2 <= SE_i_mul_conv_im0_cma_R_v_2;
    -- Stall signal propagation
    SE_i_mul_conv_im0_cma_s_tv_0 <= bubble_out_i_mul_conv_im0_cma_data_reg_stall_out and SE_i_mul_conv_im0_cma_R_v_0;
    SE_i_mul_conv_im0_cma_s_tv_1 <= bubble_out_i_mul_conv_im10_cma_data_reg_stall_out and SE_i_mul_conv_im0_cma_R_v_1;
    SE_i_mul_conv_im0_cma_s_tv_2 <= bubble_out_i_mul_conv_ma3_cma_data_reg_stall_out and SE_i_mul_conv_im0_cma_R_v_2;
    -- Backward Enable generation
    SE_i_mul_conv_im0_cma_or0 <= SE_i_mul_conv_im0_cma_s_tv_0;
    SE_i_mul_conv_im0_cma_or1 <= SE_i_mul_conv_im0_cma_s_tv_1 or SE_i_mul_conv_im0_cma_or0;
    SE_i_mul_conv_im0_cma_backEN <= not (SE_i_mul_conv_im0_cma_s_tv_2 or SE_i_mul_conv_im0_cma_or1);
    -- Determine whether to write valid data into the first register stage
    SE_i_mul_conv_im0_cma_v_s_0 <= SE_i_mul_conv_im0_cma_backEN and SR_SE_i_mul_conv_im0_cma_V;
    -- Backward Stall generation
    SE_i_mul_conv_im0_cma_backStall <= not (SE_i_mul_conv_im0_cma_backEN);
    SE_i_mul_conv_im0_cma_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_mul_conv_im0_cma_R_s_0 <= (others => '0');
            SE_i_mul_conv_im0_cma_R_v_0 <= (others => '0');
            SE_i_mul_conv_im0_cma_R_v_1 <= (others => '0');
            SE_i_mul_conv_im0_cma_R_v_2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_mul_conv_im0_cma_backEN = "1") THEN
                SE_i_mul_conv_im0_cma_R_s_0 <= SE_i_mul_conv_im0_cma_v_s_0;
            END IF;

            IF (SE_i_mul_conv_im0_cma_backEN = "0") THEN
                SE_i_mul_conv_im0_cma_R_v_0 <= SE_i_mul_conv_im0_cma_R_v_0 and SE_i_mul_conv_im0_cma_s_tv_0;
            ELSE
                SE_i_mul_conv_im0_cma_R_v_0 <= SE_i_mul_conv_im0_cma_R_s_0;
            END IF;

            IF (SE_i_mul_conv_im0_cma_backEN = "0") THEN
                SE_i_mul_conv_im0_cma_R_v_1 <= SE_i_mul_conv_im0_cma_R_v_1 and SE_i_mul_conv_im0_cma_s_tv_1;
            ELSE
                SE_i_mul_conv_im0_cma_R_v_1 <= SE_i_mul_conv_im0_cma_R_s_0;
            END IF;

            IF (SE_i_mul_conv_im0_cma_backEN = "0") THEN
                SE_i_mul_conv_im0_cma_R_v_2 <= SE_i_mul_conv_im0_cma_R_v_2 and SE_i_mul_conv_im0_cma_s_tv_2;
            ELSE
                SE_i_mul_conv_im0_cma_R_v_2 <= SE_i_mul_conv_im0_cma_R_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_out_i_mul_conv_im0_cma_data_reg(STALLFIFO,549)
    bubble_out_i_mul_conv_im0_cma_data_reg_valid_in <= SE_i_mul_conv_im0_cma_V0;
    bubble_out_i_mul_conv_im0_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul_conv_im0_cma_data_backStall;
    bubble_out_i_mul_conv_im0_cma_data_reg_data_in <= bubble_join_i_mul_conv_im0_cma_q;
    bubble_out_i_mul_conv_im0_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul_conv_im0_cma_data_reg_valid_in(0);
    bubble_out_i_mul_conv_im0_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul_conv_im0_cma_data_reg_stall_in(0);
    bubble_out_i_mul_conv_im0_cma_data_reg_valid_out(0) <= bubble_out_i_mul_conv_im0_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul_conv_im0_cma_data_reg_stall_out(0) <= bubble_out_i_mul_conv_im0_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul_conv_im0_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 36,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul_conv_im0_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul_conv_im0_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul_conv_im0_cma_q,
        valid_out => bubble_out_i_mul_conv_im0_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul_conv_im0_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul_conv_im0_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_select_i_mul_conv_im0_cma(BITSELECT,258)
    bubble_select_i_mul_conv_im0_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul_conv_im0_cma_data_reg_data_out(35 downto 0));

    -- SE_out_bubble_out_i_mul_conv_im0_cma_data(STALLENABLE,488)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul_conv_im0_cma_data_V0 <= SE_out_bubble_out_i_mul_conv_im0_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul_conv_im0_cma_data_backStall <= SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul_conv_im0_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul_conv_im0_cma_data_wireValid <= bubble_out_i_mul_conv_im0_cma_data_reg_valid_out;

    -- SR_SE_redist5_i_mul_conv_im0_cma_q_1_0(STALLREG,572)
    SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_valid <= SE_redist5_i_mul_conv_im0_cma_q_1_0_backStall and (SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_valid or SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_i_valid);

            IF (SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul_conv_im0_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul_conv_im0_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_backStall <= SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_valid or not (SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_V <= SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_valid WHEN SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_i_valid;

    SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_D0 <= SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_data0 WHEN SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul_conv_im0_cma_b;

    -- SE_redist5_i_mul_conv_im0_cma_q_1_0(STALLENABLE,374)
    -- Valid signal propagation
    SE_redist5_i_mul_conv_im0_cma_q_1_0_V0 <= SE_redist5_i_mul_conv_im0_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist5_i_mul_conv_im0_cma_q_1_0_s_tv_0 <= SE_i_mul_conv_join_13_backStall and SE_redist5_i_mul_conv_im0_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist5_i_mul_conv_im0_cma_q_1_0_backEN <= not (SE_redist5_i_mul_conv_im0_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_i_mul_conv_im0_cma_q_1_0_v_s_0 <= SE_redist5_i_mul_conv_im0_cma_q_1_0_backEN and SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist5_i_mul_conv_im0_cma_q_1_0_backStall <= not (SE_redist5_i_mul_conv_im0_cma_q_1_0_backEN);
    SE_redist5_i_mul_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_i_mul_conv_im0_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_mul_conv_im0_cma_q_1_0_backEN = "0") THEN
                SE_redist5_i_mul_conv_im0_cma_q_1_0_R_v_0 <= SE_redist5_i_mul_conv_im0_cma_q_1_0_R_v_0 and SE_redist5_i_mul_conv_im0_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist5_i_mul_conv_im0_cma_q_1_0_R_v_0 <= SE_redist5_i_mul_conv_im0_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist4_i_mul_conv_im10_cma_q_1_0(STALLENABLE,373)
    -- Valid signal propagation
    SE_redist4_i_mul_conv_im10_cma_q_1_0_V0 <= SE_redist4_i_mul_conv_im10_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist4_i_mul_conv_im10_cma_q_1_0_s_tv_0 <= SE_i_mul_conv_join_13_backStall and SE_redist4_i_mul_conv_im10_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist4_i_mul_conv_im10_cma_q_1_0_backEN <= not (SE_redist4_i_mul_conv_im10_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist4_i_mul_conv_im10_cma_q_1_0_v_s_0 <= SE_redist4_i_mul_conv_im10_cma_q_1_0_backEN and SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist4_i_mul_conv_im10_cma_q_1_0_backStall <= not (SE_redist4_i_mul_conv_im10_cma_q_1_0_backEN);
    SE_redist4_i_mul_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist4_i_mul_conv_im10_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_mul_conv_im10_cma_q_1_0_backEN = "0") THEN
                SE_redist4_i_mul_conv_im10_cma_q_1_0_R_v_0 <= SE_redist4_i_mul_conv_im10_cma_q_1_0_R_v_0 and SE_redist4_i_mul_conv_im10_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist4_i_mul_conv_im10_cma_q_1_0_R_v_0 <= SE_redist4_i_mul_conv_im10_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_mul_conv_join_13(STALLENABLE,352)
    -- Valid signal propagation
    SE_i_mul_conv_join_13_V0 <= SE_i_mul_conv_join_13_wireValid;
    -- Backward Stall generation
    SE_i_mul_conv_join_13_backStall <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_backStall or not (SE_i_mul_conv_join_13_wireValid);
    -- Computing multiple Valid(s)
    SE_i_mul_conv_join_13_and0 <= SE_redist4_i_mul_conv_im10_cma_q_1_0_V0;
    SE_i_mul_conv_join_13_and1 <= SE_redist5_i_mul_conv_im0_cma_q_1_0_V0 and SE_i_mul_conv_join_13_and0;
    SE_i_mul_conv_join_13_wireValid <= SE_redist0_i_mul_conv_ma3_cma_q_1_0_V0 and SE_i_mul_conv_join_13_and1;

    -- SE_redist0_i_mul_conv_ma3_cma_q_1_0(STALLENABLE,369)
    -- Valid signal propagation
    SE_redist0_i_mul_conv_ma3_cma_q_1_0_V0 <= SE_redist0_i_mul_conv_ma3_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist0_i_mul_conv_ma3_cma_q_1_0_s_tv_0 <= SE_i_mul_conv_join_13_backStall and SE_redist0_i_mul_conv_ma3_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist0_i_mul_conv_ma3_cma_q_1_0_backEN <= not (SE_redist0_i_mul_conv_ma3_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_i_mul_conv_ma3_cma_q_1_0_v_s_0 <= SE_redist0_i_mul_conv_ma3_cma_q_1_0_backEN and SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist0_i_mul_conv_ma3_cma_q_1_0_backStall <= not (SE_redist0_i_mul_conv_ma3_cma_q_1_0_backEN);
    SE_redist0_i_mul_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_i_mul_conv_ma3_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_mul_conv_ma3_cma_q_1_0_backEN = "0") THEN
                SE_redist0_i_mul_conv_ma3_cma_q_1_0_R_v_0 <= SE_redist0_i_mul_conv_ma3_cma_q_1_0_R_v_0 and SE_redist0_i_mul_conv_ma3_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist0_i_mul_conv_ma3_cma_q_1_0_R_v_0 <= SE_redist0_i_mul_conv_ma3_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_select_i_mul_conv_ma3_cma(BITSELECT,273)
    bubble_select_i_mul_conv_ma3_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul_conv_ma3_cma_data_reg_data_out(33 downto 0));

    -- SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0(STALLREG,573)
    SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_valid <= SE_redist0_i_mul_conv_ma3_cma_q_1_0_backStall and (SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_valid or SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_i_valid);

            IF (SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul_conv_ma3_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul_conv_ma3_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_backStall <= SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_valid or not (SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_V <= SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_valid WHEN SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_i_valid;

    SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_D0 <= SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_data0 WHEN SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul_conv_ma3_cma_b;

    -- redist0_i_mul_conv_ma3_cma_q_1_0(REG,169)
    redist0_i_mul_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_mul_conv_ma3_cma_q_1_0_q <= "0000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_mul_conv_ma3_cma_q_1_0_backEN = "1") THEN
                redist0_i_mul_conv_ma3_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist0_i_mul_conv_ma3_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_mul_conv_align_14(BITSHIFT,125)@41
    i_mul_conv_align_14_qint <= redist0_i_mul_conv_ma3_cma_q_1_0_q & "000000000000000000";
    i_mul_conv_align_14_q <= i_mul_conv_align_14_qint(51 downto 0);

    -- redist4_i_mul_conv_im10_cma_q_1_0(REG,173)
    redist4_i_mul_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_mul_conv_im10_cma_q_1_0_q <= "0000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_mul_conv_im10_cma_q_1_0_backEN = "1") THEN
                redist4_i_mul_conv_im10_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist4_i_mul_conv_im10_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_i_mul_conv_im0_cma_q_1_0(REG,174)
    redist5_i_mul_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_mul_conv_im0_cma_q_1_0_q <= "000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_mul_conv_im0_cma_q_1_0_backEN = "1") THEN
                redist5_i_mul_conv_im0_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist5_i_mul_conv_im0_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_mul_conv_join_13(BITJOIN,124)@41
    i_mul_conv_join_13_q <= redist4_i_mul_conv_im10_cma_q_1_0_q & redist5_i_mul_conv_im0_cma_q_1_0_q;

    -- i_mul_conv_result_add_0_0(ADD,127)@41
    i_mul_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul_conv_join_13_q));
    i_mul_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul_conv_align_14_q(51)) & i_mul_conv_align_14_q));
    i_mul_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul_conv_result_add_0_0_a) + SIGNED(i_mul_conv_result_add_0_0_b));
    i_mul_conv_result_add_0_0_q <= i_mul_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul_conv_rnd_sel(BITSELECT,59)@41
    bgTrunc_i_mul_conv_rnd_sel_in <= i_mul_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul_conv_rnd_sel_b <= bgTrunc_i_mul_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul_conv_sel_x(BITSELECT,6)@41
    bgTrunc_i_mul_conv_sel_x_b <= bgTrunc_i_mul_conv_rnd_sel_b(31 downto 0);

    -- redist21_bgTrunc_i_mul_conv_sel_x_b_1_0(REG,194)
    redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_backEN = "1") THEN
                redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(bgTrunc_i_mul_conv_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_mul38_conv_bs4(BITSELECT,81)@42
    i_mul38_conv_bs4_in <= STD_LOGIC_VECTOR(redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_q(17 downto 0));
    i_mul38_conv_bs4_b <= STD_LOGIC_VECTOR(i_mul38_conv_bs4_in(17 downto 0));

    -- i_mul38_conv_bjA5(BITJOIN,82)@42
    i_mul38_conv_bjA5_q <= GND_q & i_mul38_conv_bs4_b;

    -- i_mul38_conv_bjB9(BITJOIN,86)@42
    i_mul38_conv_bjB9_q <= GND_q & i_mul38_conv_bs2_merged_bit_select_b;

    -- i_mul38_conv_bs7(BITSELECT,84)@42
    i_mul38_conv_bs7_b <= STD_LOGIC_VECTOR(redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_q(31 downto 18));

    -- i_mul38_conv_bs11(BITSELECT,88)@42
    i_mul38_conv_bs11_b <= redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_q(31 downto 18);

    -- bubble_join_i_syncbuf_n_fin_sync_buffer_conv(BITJOIN,227)
    bubble_join_i_syncbuf_n_fin_sync_buffer_conv_q <= i_syncbuf_n_fin_sync_buffer_conv_out_buffer_out;

    -- bubble_select_i_syncbuf_n_fin_sync_buffer_conv(BITSELECT,228)
    bubble_select_i_syncbuf_n_fin_sync_buffer_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_n_fin_sync_buffer_conv_q(31 downto 0));

    -- i_mul38_conv_bs2_merged_bit_select(BITSELECT,141)@42
    i_mul38_conv_bs2_merged_bit_select_b <= bubble_select_i_syncbuf_n_fin_sync_buffer_conv_b(17 downto 0);
    i_mul38_conv_bs2_merged_bit_select_c <= bubble_select_i_syncbuf_n_fin_sync_buffer_conv_b(31 downto 18);

    -- i_mul38_conv_bs1(BITSELECT,78)@42
    i_mul38_conv_bs1_in <= redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_q(17 downto 0);
    i_mul38_conv_bs1_b <= i_mul38_conv_bs1_in(17 downto 0);

    -- SE_out_i_syncbuf_n_fin_sync_buffer_conv(STALLENABLE,310)
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_syncbuf_n_fin_sync_buffer_conv_fromReg0 <= (others => '0');
            SE_out_i_syncbuf_n_fin_sync_buffer_conv_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_syncbuf_n_fin_sync_buffer_conv_fromReg0 <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_toReg0;
            -- Succesor 1
            SE_out_i_syncbuf_n_fin_sync_buffer_conv_fromReg1 <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_consumed0 <= (not (bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_out) and SE_out_i_syncbuf_n_fin_sync_buffer_conv_wireValid) or SE_out_i_syncbuf_n_fin_sync_buffer_conv_fromReg0;
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_consumed1 <= (not (SR_SE_i_mul38_conv_im0_cma_backStall) and SE_out_i_syncbuf_n_fin_sync_buffer_conv_wireValid) or SE_out_i_syncbuf_n_fin_sync_buffer_conv_fromReg1;
    -- Consuming
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_StallValid <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_backStall and SE_out_i_syncbuf_n_fin_sync_buffer_conv_wireValid;
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_toReg0 <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_StallValid and SE_out_i_syncbuf_n_fin_sync_buffer_conv_consumed0;
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_toReg1 <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_StallValid and SE_out_i_syncbuf_n_fin_sync_buffer_conv_consumed1;
    -- Backward Stall generation
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_or0 <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_consumed0;
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_wireStall <= not (SE_out_i_syncbuf_n_fin_sync_buffer_conv_consumed1 and SE_out_i_syncbuf_n_fin_sync_buffer_conv_or0);
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_backStall <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_wireStall;
    -- Valid signal propagation
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_V0 <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_wireValid and not (SE_out_i_syncbuf_n_fin_sync_buffer_conv_fromReg0);
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_V1 <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_wireValid and not (SE_out_i_syncbuf_n_fin_sync_buffer_conv_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_n_fin_sync_buffer_conv_wireValid <= i_syncbuf_n_fin_sync_buffer_conv_out_valid_out;

    -- redist22_bgTrunc_i_mul_conv_sel_x_b_5_0(REG,195)
    redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backEN = "1") THEN
                redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_q <= STD_LOGIC_VECTOR(SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist22_bgTrunc_i_mul_conv_sel_x_b_5_1(REG,196)
    redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_backEN = "1") THEN
                redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_q <= STD_LOGIC_VECTOR(redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2(STALLENABLE,403)
    -- Valid signal propagation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_V0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_R_v_0;
    -- Stall signal propagation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_s_tv_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_backStall and SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_R_v_0;
    -- Backward Enable generation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backEN <= not (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_v_s_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backEN and SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_V;
    -- Backward Stall generation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backStall <= not (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backEN);
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backEN = "0") THEN
                SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_R_v_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_R_v_0 and SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_s_tv_0;
            ELSE
                SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_R_v_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2(STALLREG,575)
    SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_valid <= (others => '0');
            SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_valid <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backStall and (SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_valid or SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_i_valid);

            IF (SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_data0 <= STD_LOGIC_VECTOR(redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_i_valid <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_V0;
    -- Stall signal propagation
    SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backStall <= SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_valid or not (SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_i_valid);

    -- Valid
    SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_V <= SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_valid WHEN SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_valid = "1" ELSE SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_i_valid;

    SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_D0 <= SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_data0 WHEN SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_r_valid = "1" ELSE redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_q;

    -- SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1(STALLENABLE,402)
    -- Valid signal propagation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_V0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_R_v_0;
    -- Stall signal propagation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_s_tv_0 <= SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backStall and SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_R_v_0;
    -- Backward Enable generation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_backEN <= not (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_v_s_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_backEN and SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_V0;
    -- Backward Stall generation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_backStall <= not (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_v_s_0);
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_backEN = "0") THEN
                SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_R_v_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_R_v_0 and SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_s_tv_0;
            ELSE
                SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_R_v_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0(STALLENABLE,401)
    -- Valid signal propagation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_V0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_R_v_0;
    -- Stall signal propagation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_s_tv_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_1_backStall and SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_R_v_0;
    -- Backward Enable generation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backEN <= not (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_v_s_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backEN and SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_V;
    -- Backward Stall generation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backStall <= not (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backEN);
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backEN = "0") THEN
                SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_R_v_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_R_v_0 and SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_s_tv_0;
            ELSE
                SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_R_v_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0(STALLREG,574)
    SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_valid <= (others => '0');
            SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_valid <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backStall and (SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_valid or SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_i_valid);

            IF (SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_data0 <= STD_LOGIC_VECTOR(redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_i_valid <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_V0;
    -- Stall signal propagation
    SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backStall <= SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_valid or not (SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_i_valid);

    -- Valid
    SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_V <= SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_valid WHEN SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_valid = "1" ELSE SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_i_valid;

    SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_D0 <= SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_data0 WHEN SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_r_valid = "1" ELSE redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_q;

    -- SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0(STALLENABLE,400)
    -- Valid signal propagation
    SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_V0 <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_0;
    SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_V1 <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_s_tv_0 <= SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_0_backStall and SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_0;
    SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_s_tv_1 <= SR_SE_i_mul38_conv_im0_cma_backStall and SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_or0 <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_s_tv_0;
    SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_backEN <= not (SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_s_tv_1 or SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_v_s_0 <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_backEN and SE_i_mul_conv_join_13_V0;
    -- Backward Stall generation
    SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_backStall <= not (SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_v_s_0);
    SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_0 <= (others => '0');
            SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_backEN = "0") THEN
                SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_0 <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_0 and SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_0 <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_v_s_0;
            END IF;

            IF (SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_backEN = "0") THEN
                SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_1 <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_1 and SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_s_tv_1;
            ELSE
                SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_R_v_1 <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_mul38_conv_im0_cma(STALLREG,576)
    SR_SE_i_mul38_conv_im0_cma_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_mul38_conv_im0_cma_r_valid <= (others => '0');
            SR_SE_i_mul38_conv_im0_cma_r_data0 <= (others => '-');
            SR_SE_i_mul38_conv_im0_cma_r_data1 <= (others => '-');
            SR_SE_i_mul38_conv_im0_cma_r_data2 <= (others => '-');
            SR_SE_i_mul38_conv_im0_cma_r_data3 <= (others => '-');
            SR_SE_i_mul38_conv_im0_cma_r_data4 <= (others => '-');
            SR_SE_i_mul38_conv_im0_cma_r_data5 <= (others => '-');
            SR_SE_i_mul38_conv_im0_cma_r_data6 <= (others => '-');
            SR_SE_i_mul38_conv_im0_cma_r_data7 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_mul38_conv_im0_cma_r_valid <= SE_i_mul38_conv_im0_cma_backStall and (SR_SE_i_mul38_conv_im0_cma_r_valid or SR_SE_i_mul38_conv_im0_cma_i_valid);

            IF (SR_SE_i_mul38_conv_im0_cma_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_mul38_conv_im0_cma_r_data0 <= i_mul38_conv_bs1_b;
                SR_SE_i_mul38_conv_im0_cma_r_data1 <= i_mul38_conv_bs2_merged_bit_select_b;
                SR_SE_i_mul38_conv_im0_cma_r_data2 <= i_mul38_conv_bs11_b;
                SR_SE_i_mul38_conv_im0_cma_r_data3 <= i_mul38_conv_bs2_merged_bit_select_c;
                SR_SE_i_mul38_conv_im0_cma_r_data4 <= i_mul38_conv_bs2_merged_bit_select_c;
                SR_SE_i_mul38_conv_im0_cma_r_data5 <= i_mul38_conv_bs7_b;
                SR_SE_i_mul38_conv_im0_cma_r_data6 <= STD_LOGIC_VECTOR(i_mul38_conv_bjB9_q);
                SR_SE_i_mul38_conv_im0_cma_r_data7 <= STD_LOGIC_VECTOR(i_mul38_conv_bjA5_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_mul38_conv_im0_cma_and0 <= SE_redist21_bgTrunc_i_mul_conv_sel_x_b_1_0_V1;
    SR_SE_i_mul38_conv_im0_cma_i_valid <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_V1 and SR_SE_i_mul38_conv_im0_cma_and0;
    -- Stall signal propagation
    SR_SE_i_mul38_conv_im0_cma_backStall <= SR_SE_i_mul38_conv_im0_cma_r_valid or not (SR_SE_i_mul38_conv_im0_cma_i_valid);

    -- Valid
    SR_SE_i_mul38_conv_im0_cma_V <= SR_SE_i_mul38_conv_im0_cma_r_valid WHEN SR_SE_i_mul38_conv_im0_cma_r_valid = "1" ELSE SR_SE_i_mul38_conv_im0_cma_i_valid;

    -- Data0
    SR_SE_i_mul38_conv_im0_cma_D0 <= SR_SE_i_mul38_conv_im0_cma_r_data0 WHEN SR_SE_i_mul38_conv_im0_cma_r_valid = "1" ELSE i_mul38_conv_bs1_b;
    -- Data1
    SR_SE_i_mul38_conv_im0_cma_D1 <= SR_SE_i_mul38_conv_im0_cma_r_data1 WHEN SR_SE_i_mul38_conv_im0_cma_r_valid = "1" ELSE i_mul38_conv_bs2_merged_bit_select_b;
    -- Data2
    SR_SE_i_mul38_conv_im0_cma_D2 <= SR_SE_i_mul38_conv_im0_cma_r_data2 WHEN SR_SE_i_mul38_conv_im0_cma_r_valid = "1" ELSE i_mul38_conv_bs11_b;
    -- Data3
    SR_SE_i_mul38_conv_im0_cma_D3 <= SR_SE_i_mul38_conv_im0_cma_r_data3 WHEN SR_SE_i_mul38_conv_im0_cma_r_valid = "1" ELSE i_mul38_conv_bs2_merged_bit_select_c;
    -- Data4
    SR_SE_i_mul38_conv_im0_cma_D4 <= SR_SE_i_mul38_conv_im0_cma_r_data4 WHEN SR_SE_i_mul38_conv_im0_cma_r_valid = "1" ELSE i_mul38_conv_bs2_merged_bit_select_c;
    -- Data5
    SR_SE_i_mul38_conv_im0_cma_D5 <= SR_SE_i_mul38_conv_im0_cma_r_data5 WHEN SR_SE_i_mul38_conv_im0_cma_r_valid = "1" ELSE i_mul38_conv_bs7_b;
    -- Data6
    SR_SE_i_mul38_conv_im0_cma_D6 <= SR_SE_i_mul38_conv_im0_cma_r_data6 WHEN SR_SE_i_mul38_conv_im0_cma_r_valid = "1" ELSE i_mul38_conv_bjB9_q;
    -- Data7
    SR_SE_i_mul38_conv_im0_cma_D7 <= SR_SE_i_mul38_conv_im0_cma_r_data7 WHEN SR_SE_i_mul38_conv_im0_cma_r_valid = "1" ELSE i_mul38_conv_bjA5_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_mul38_conv_ma3_cma(CHAINMULTADD,137)@42 + 2
    i_mul38_conv_ma3_cma_reset <= not (resetn);
    i_mul38_conv_ma3_cma_ena0 <= SE_i_mul38_conv_im0_cma_backEN(0);
    i_mul38_conv_ma3_cma_ena1 <= i_mul38_conv_ma3_cma_ena0;
    i_mul38_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul38_conv_ma3_cma_a0(0),15));
    i_mul38_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul38_conv_ma3_cma_a0(1),15));
    i_mul38_conv_ma3_cma_p(0) <= i_mul38_conv_ma3_cma_l(0) * i_mul38_conv_ma3_cma_c0(0);
    i_mul38_conv_ma3_cma_p(1) <= i_mul38_conv_ma3_cma_l(1) * i_mul38_conv_ma3_cma_c0(1);
    i_mul38_conv_ma3_cma_u(0) <= RESIZE(i_mul38_conv_ma3_cma_p(0),35);
    i_mul38_conv_ma3_cma_u(1) <= RESIZE(i_mul38_conv_ma3_cma_p(1),35);
    i_mul38_conv_ma3_cma_w(0) <= i_mul38_conv_ma3_cma_u(0) + i_mul38_conv_ma3_cma_u(1);
    i_mul38_conv_ma3_cma_x(0) <= i_mul38_conv_ma3_cma_w(0);
    i_mul38_conv_ma3_cma_y(0) <= i_mul38_conv_ma3_cma_x(0);
    i_mul38_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul38_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul38_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul38_conv_ma3_cma_ena0 = '1') THEN
                i_mul38_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul38_conv_im0_cma_D5),14);
                i_mul38_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(SR_SE_i_mul38_conv_im0_cma_D4),14);
                i_mul38_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(SR_SE_i_mul38_conv_im0_cma_D6),19);
                i_mul38_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(SR_SE_i_mul38_conv_im0_cma_D7),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul38_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul38_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul38_conv_ma3_cma_ena1 = '1') THEN
                i_mul38_conv_ma3_cma_s(0) <= i_mul38_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul38_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul38_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul38_conv_ma3_cma_qq, ena => SE_i_mul38_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul38_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul38_conv_ma3_cma_qq(33 downto 0));

    -- bubble_join_i_mul38_conv_ma3_cma(BITJOIN,266)
    bubble_join_i_mul38_conv_ma3_cma_q <= i_mul38_conv_ma3_cma_q;

    -- i_mul38_conv_im10_cma(CHAINMULTADD,131)@42 + 2
    i_mul38_conv_im10_cma_reset <= not (resetn);
    i_mul38_conv_im10_cma_ena0 <= SE_i_mul38_conv_im0_cma_backEN(0);
    i_mul38_conv_im10_cma_ena1 <= i_mul38_conv_im10_cma_ena0;
    i_mul38_conv_im10_cma_p(0) <= i_mul38_conv_im10_cma_a0(0) * i_mul38_conv_im10_cma_c0(0);
    i_mul38_conv_im10_cma_u(0) <= RESIZE(i_mul38_conv_im10_cma_p(0),28);
    i_mul38_conv_im10_cma_w(0) <= i_mul38_conv_im10_cma_u(0);
    i_mul38_conv_im10_cma_x(0) <= i_mul38_conv_im10_cma_w(0);
    i_mul38_conv_im10_cma_y(0) <= i_mul38_conv_im10_cma_x(0);
    i_mul38_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul38_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul38_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul38_conv_im10_cma_ena0 = '1') THEN
                i_mul38_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul38_conv_im0_cma_D2),14);
                i_mul38_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul38_conv_im0_cma_D3),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul38_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul38_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul38_conv_im10_cma_ena1 = '1') THEN
                i_mul38_conv_im10_cma_s(0) <= i_mul38_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul38_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul38_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul38_conv_im10_cma_qq, ena => SE_i_mul38_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul38_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul38_conv_im10_cma_qq(27 downto 0));

    -- bubble_join_i_mul38_conv_im10_cma(BITJOIN,248)
    bubble_join_i_mul38_conv_im10_cma_q <= i_mul38_conv_im10_cma_q;

    -- bubble_select_i_mul38_conv_im10_cma(BITSELECT,249)
    bubble_select_i_mul38_conv_im10_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul38_conv_im10_cma_data_reg_data_out(27 downto 0));

    -- SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0(STALLREG,577)
    SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_valid <= SE_redist8_i_mul38_conv_im10_cma_q_1_0_backStall and (SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_valid or SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_i_valid);

            IF (SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul38_conv_im10_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul38_conv_im10_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_backStall <= SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_valid or not (SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_V <= SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_valid WHEN SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_i_valid;

    SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_D0 <= SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_data0 WHEN SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul38_conv_im10_cma_b;

    -- SE_out_bubble_out_i_mul38_conv_im10_cma_data(STALLENABLE,476)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul38_conv_im10_cma_data_V0 <= SE_out_bubble_out_i_mul38_conv_im10_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul38_conv_im10_cma_data_backStall <= SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul38_conv_im10_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul38_conv_im10_cma_data_wireValid <= bubble_out_i_mul38_conv_im10_cma_data_reg_valid_out;

    -- bubble_out_i_mul38_conv_im10_cma_data_reg(STALLFIFO,546)
    bubble_out_i_mul38_conv_im10_cma_data_reg_valid_in <= SE_i_mul38_conv_im0_cma_V1;
    bubble_out_i_mul38_conv_im10_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul38_conv_im10_cma_data_backStall;
    bubble_out_i_mul38_conv_im10_cma_data_reg_data_in <= bubble_join_i_mul38_conv_im10_cma_q;
    bubble_out_i_mul38_conv_im10_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul38_conv_im10_cma_data_reg_valid_in(0);
    bubble_out_i_mul38_conv_im10_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul38_conv_im10_cma_data_reg_stall_in(0);
    bubble_out_i_mul38_conv_im10_cma_data_reg_valid_out(0) <= bubble_out_i_mul38_conv_im10_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul38_conv_im10_cma_data_reg_stall_out(0) <= bubble_out_i_mul38_conv_im10_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul38_conv_im10_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 28,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul38_conv_im10_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul38_conv_im10_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul38_conv_im10_cma_q,
        valid_out => bubble_out_i_mul38_conv_im10_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul38_conv_im10_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul38_conv_im10_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul38_conv_im0_cma(CHAINMULTADD,130)@42 + 2
    i_mul38_conv_im0_cma_reset <= not (resetn);
    i_mul38_conv_im0_cma_ena0 <= SE_i_mul38_conv_im0_cma_backEN(0);
    i_mul38_conv_im0_cma_ena1 <= i_mul38_conv_im0_cma_ena0;
    i_mul38_conv_im0_cma_p(0) <= i_mul38_conv_im0_cma_a0(0) * i_mul38_conv_im0_cma_c0(0);
    i_mul38_conv_im0_cma_u(0) <= RESIZE(i_mul38_conv_im0_cma_p(0),36);
    i_mul38_conv_im0_cma_w(0) <= i_mul38_conv_im0_cma_u(0);
    i_mul38_conv_im0_cma_x(0) <= i_mul38_conv_im0_cma_w(0);
    i_mul38_conv_im0_cma_y(0) <= i_mul38_conv_im0_cma_x(0);
    i_mul38_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul38_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul38_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul38_conv_im0_cma_ena0 = '1') THEN
                i_mul38_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul38_conv_im0_cma_D0),18);
                i_mul38_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(SR_SE_i_mul38_conv_im0_cma_D1),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul38_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul38_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul38_conv_im0_cma_ena1 = '1') THEN
                i_mul38_conv_im0_cma_s(0) <= i_mul38_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul38_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul38_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul38_conv_im0_cma_qq, ena => SE_i_mul38_conv_im0_cma_backEN(0), clk => clock, aclr => resetn );
    i_mul38_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul38_conv_im0_cma_qq(35 downto 0));

    -- bubble_join_i_mul38_conv_im0_cma(BITJOIN,245)
    bubble_join_i_mul38_conv_im0_cma_q <= i_mul38_conv_im0_cma_q;

    -- bubble_select_i_mul38_conv_im0_cma(BITSELECT,246)
    bubble_select_i_mul38_conv_im0_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul38_conv_im0_cma_data_reg_data_out(35 downto 0));

    -- SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0(STALLREG,578)
    SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_valid <= SE_redist9_i_mul38_conv_im0_cma_q_1_0_backStall and (SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_valid or SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_i_valid);

            IF (SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul38_conv_im0_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul38_conv_im0_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_backStall <= SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_valid or not (SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_V <= SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_valid WHEN SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_i_valid;

    SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_D0 <= SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_data0 WHEN SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul38_conv_im0_cma_b;

    -- SE_out_bubble_out_i_mul38_conv_im0_cma_data(STALLENABLE,472)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul38_conv_im0_cma_data_V0 <= SE_out_bubble_out_i_mul38_conv_im0_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul38_conv_im0_cma_data_backStall <= SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul38_conv_im0_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul38_conv_im0_cma_data_wireValid <= bubble_out_i_mul38_conv_im0_cma_data_reg_valid_out;

    -- bubble_out_i_mul38_conv_im0_cma_data_reg(STALLFIFO,545)
    bubble_out_i_mul38_conv_im0_cma_data_reg_valid_in <= SE_i_mul38_conv_im0_cma_V0;
    bubble_out_i_mul38_conv_im0_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul38_conv_im0_cma_data_backStall;
    bubble_out_i_mul38_conv_im0_cma_data_reg_data_in <= bubble_join_i_mul38_conv_im0_cma_q;
    bubble_out_i_mul38_conv_im0_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul38_conv_im0_cma_data_reg_valid_in(0);
    bubble_out_i_mul38_conv_im0_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul38_conv_im0_cma_data_reg_stall_in(0);
    bubble_out_i_mul38_conv_im0_cma_data_reg_valid_out(0) <= bubble_out_i_mul38_conv_im0_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul38_conv_im0_cma_data_reg_stall_out(0) <= bubble_out_i_mul38_conv_im0_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul38_conv_im0_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 36,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul38_conv_im0_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul38_conv_im0_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul38_conv_im0_cma_q,
        valid_out => bubble_out_i_mul38_conv_im0_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul38_conv_im0_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul38_conv_im0_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_i_mul38_conv_im0_cma(STALLENABLE,357)
    -- Valid signal propagation
    SE_i_mul38_conv_im0_cma_V0 <= SE_i_mul38_conv_im0_cma_R_v_0;
    SE_i_mul38_conv_im0_cma_V1 <= SE_i_mul38_conv_im0_cma_R_v_1;
    SE_i_mul38_conv_im0_cma_V2 <= SE_i_mul38_conv_im0_cma_R_v_2;
    -- Stall signal propagation
    SE_i_mul38_conv_im0_cma_s_tv_0 <= bubble_out_i_mul38_conv_im0_cma_data_reg_stall_out and SE_i_mul38_conv_im0_cma_R_v_0;
    SE_i_mul38_conv_im0_cma_s_tv_1 <= bubble_out_i_mul38_conv_im10_cma_data_reg_stall_out and SE_i_mul38_conv_im0_cma_R_v_1;
    SE_i_mul38_conv_im0_cma_s_tv_2 <= bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_out and SE_i_mul38_conv_im0_cma_R_v_2;
    -- Backward Enable generation
    SE_i_mul38_conv_im0_cma_or0 <= SE_i_mul38_conv_im0_cma_s_tv_0;
    SE_i_mul38_conv_im0_cma_or1 <= SE_i_mul38_conv_im0_cma_s_tv_1 or SE_i_mul38_conv_im0_cma_or0;
    SE_i_mul38_conv_im0_cma_backEN <= not (SE_i_mul38_conv_im0_cma_s_tv_2 or SE_i_mul38_conv_im0_cma_or1);
    -- Determine whether to write valid data into the first register stage
    SE_i_mul38_conv_im0_cma_v_s_0 <= SE_i_mul38_conv_im0_cma_backEN and SR_SE_i_mul38_conv_im0_cma_V;
    -- Backward Stall generation
    SE_i_mul38_conv_im0_cma_backStall <= not (SE_i_mul38_conv_im0_cma_backEN);
    SE_i_mul38_conv_im0_cma_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_mul38_conv_im0_cma_R_s_0 <= (others => '0');
            SE_i_mul38_conv_im0_cma_R_v_0 <= (others => '0');
            SE_i_mul38_conv_im0_cma_R_v_1 <= (others => '0');
            SE_i_mul38_conv_im0_cma_R_v_2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_mul38_conv_im0_cma_backEN = "1") THEN
                SE_i_mul38_conv_im0_cma_R_s_0 <= SE_i_mul38_conv_im0_cma_v_s_0;
            END IF;

            IF (SE_i_mul38_conv_im0_cma_backEN = "0") THEN
                SE_i_mul38_conv_im0_cma_R_v_0 <= SE_i_mul38_conv_im0_cma_R_v_0 and SE_i_mul38_conv_im0_cma_s_tv_0;
            ELSE
                SE_i_mul38_conv_im0_cma_R_v_0 <= SE_i_mul38_conv_im0_cma_R_s_0;
            END IF;

            IF (SE_i_mul38_conv_im0_cma_backEN = "0") THEN
                SE_i_mul38_conv_im0_cma_R_v_1 <= SE_i_mul38_conv_im0_cma_R_v_1 and SE_i_mul38_conv_im0_cma_s_tv_1;
            ELSE
                SE_i_mul38_conv_im0_cma_R_v_1 <= SE_i_mul38_conv_im0_cma_R_s_0;
            END IF;

            IF (SE_i_mul38_conv_im0_cma_backEN = "0") THEN
                SE_i_mul38_conv_im0_cma_R_v_2 <= SE_i_mul38_conv_im0_cma_R_v_2 and SE_i_mul38_conv_im0_cma_s_tv_2;
            ELSE
                SE_i_mul38_conv_im0_cma_R_v_2 <= SE_i_mul38_conv_im0_cma_R_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_out_i_mul38_conv_ma3_cma_data_reg(STALLFIFO,552)
    bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_in <= SE_i_mul38_conv_im0_cma_V2;
    bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_in <= SE_out_bubble_out_i_mul38_conv_ma3_cma_data_backStall;
    bubble_out_i_mul38_conv_ma3_cma_data_reg_data_in <= bubble_join_i_mul38_conv_ma3_cma_q;
    bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_in_bitsignaltemp <= bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_in(0);
    bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_in_bitsignaltemp <= bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_in(0);
    bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_out(0) <= bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_out(0) <= bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_mul38_conv_ma3_cma_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 1,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 34,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_mul38_conv_ma3_cma_q,
        valid_out => bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_mul38_conv_ma3_cma_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_mul38_conv_ma3_cma_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_select_i_mul38_conv_ma3_cma(BITSELECT,267)
    bubble_select_i_mul38_conv_ma3_cma_b <= STD_LOGIC_VECTOR(bubble_out_i_mul38_conv_ma3_cma_data_reg_data_out(33 downto 0));

    -- SE_out_bubble_out_i_mul38_conv_ma3_cma_data(STALLENABLE,500)
    -- Valid signal propagation
    SE_out_bubble_out_i_mul38_conv_ma3_cma_data_V0 <= SE_out_bubble_out_i_mul38_conv_ma3_cma_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_mul38_conv_ma3_cma_data_backStall <= SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backStall or not (SE_out_bubble_out_i_mul38_conv_ma3_cma_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_mul38_conv_ma3_cma_data_wireValid <= bubble_out_i_mul38_conv_ma3_cma_data_reg_valid_out;

    -- SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0(STALLREG,579)
    SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_valid <= (others => '0');
            SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_valid <= SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backStall and (SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_valid or SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_i_valid);

            IF (SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_i_mul38_conv_ma3_cma_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_i_valid <= SE_out_bubble_out_i_mul38_conv_ma3_cma_data_V0;
    -- Stall signal propagation
    SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backStall <= SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_valid or not (SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_i_valid);

    -- Valid
    SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_V <= SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_valid WHEN SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_valid = "1" ELSE SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_i_valid;

    SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_D0 <= SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_data0 WHEN SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_r_valid = "1" ELSE bubble_select_i_mul38_conv_ma3_cma_b;

    -- SE_redist2_i_mul38_conv_ma3_cma_q_1_0(STALLENABLE,371)
    -- Valid signal propagation
    SE_redist2_i_mul38_conv_ma3_cma_q_1_0_V0 <= SE_redist2_i_mul38_conv_ma3_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist2_i_mul38_conv_ma3_cma_q_1_0_s_tv_0 <= SE_i_mul38_conv_join_13_backStall and SE_redist2_i_mul38_conv_ma3_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backEN <= not (SE_redist2_i_mul38_conv_ma3_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist2_i_mul38_conv_ma3_cma_q_1_0_v_s_0 <= SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backEN and SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backStall <= not (SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backEN);
    SE_redist2_i_mul38_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist2_i_mul38_conv_ma3_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backEN = "0") THEN
                SE_redist2_i_mul38_conv_ma3_cma_q_1_0_R_v_0 <= SE_redist2_i_mul38_conv_ma3_cma_q_1_0_R_v_0 and SE_redist2_i_mul38_conv_ma3_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist2_i_mul38_conv_ma3_cma_q_1_0_R_v_0 <= SE_redist2_i_mul38_conv_ma3_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist9_i_mul38_conv_im0_cma_q_1_0(STALLENABLE,378)
    -- Valid signal propagation
    SE_redist9_i_mul38_conv_im0_cma_q_1_0_V0 <= SE_redist9_i_mul38_conv_im0_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist9_i_mul38_conv_im0_cma_q_1_0_s_tv_0 <= SE_i_mul38_conv_join_13_backStall and SE_redist9_i_mul38_conv_im0_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist9_i_mul38_conv_im0_cma_q_1_0_backEN <= not (SE_redist9_i_mul38_conv_im0_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist9_i_mul38_conv_im0_cma_q_1_0_v_s_0 <= SE_redist9_i_mul38_conv_im0_cma_q_1_0_backEN and SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist9_i_mul38_conv_im0_cma_q_1_0_backStall <= not (SE_redist9_i_mul38_conv_im0_cma_q_1_0_backEN);
    SE_redist9_i_mul38_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist9_i_mul38_conv_im0_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist9_i_mul38_conv_im0_cma_q_1_0_backEN = "0") THEN
                SE_redist9_i_mul38_conv_im0_cma_q_1_0_R_v_0 <= SE_redist9_i_mul38_conv_im0_cma_q_1_0_R_v_0 and SE_redist9_i_mul38_conv_im0_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist9_i_mul38_conv_im0_cma_q_1_0_R_v_0 <= SE_redist9_i_mul38_conv_im0_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist8_i_mul38_conv_im10_cma_q_1_0(STALLENABLE,377)
    -- Valid signal propagation
    SE_redist8_i_mul38_conv_im10_cma_q_1_0_V0 <= SE_redist8_i_mul38_conv_im10_cma_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist8_i_mul38_conv_im10_cma_q_1_0_s_tv_0 <= SE_i_mul38_conv_join_13_backStall and SE_redist8_i_mul38_conv_im10_cma_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist8_i_mul38_conv_im10_cma_q_1_0_backEN <= not (SE_redist8_i_mul38_conv_im10_cma_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist8_i_mul38_conv_im10_cma_q_1_0_v_s_0 <= SE_redist8_i_mul38_conv_im10_cma_q_1_0_backEN and SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_V;
    -- Backward Stall generation
    SE_redist8_i_mul38_conv_im10_cma_q_1_0_backStall <= not (SE_redist8_i_mul38_conv_im10_cma_q_1_0_backEN);
    SE_redist8_i_mul38_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist8_i_mul38_conv_im10_cma_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist8_i_mul38_conv_im10_cma_q_1_0_backEN = "0") THEN
                SE_redist8_i_mul38_conv_im10_cma_q_1_0_R_v_0 <= SE_redist8_i_mul38_conv_im10_cma_q_1_0_R_v_0 and SE_redist8_i_mul38_conv_im10_cma_q_1_0_s_tv_0;
            ELSE
                SE_redist8_i_mul38_conv_im10_cma_q_1_0_R_v_0 <= SE_redist8_i_mul38_conv_im10_cma_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_mul38_conv_join_13(STALLENABLE,334)
    -- Valid signal propagation
    SE_i_mul38_conv_join_13_V0 <= SE_i_mul38_conv_join_13_wireValid;
    -- Backward Stall generation
    SE_i_mul38_conv_join_13_backStall <= SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_backStall or not (SE_i_mul38_conv_join_13_wireValid);
    -- Computing multiple Valid(s)
    SE_i_mul38_conv_join_13_and0 <= SE_redist8_i_mul38_conv_im10_cma_q_1_0_V0;
    SE_i_mul38_conv_join_13_and1 <= SE_redist9_i_mul38_conv_im0_cma_q_1_0_V0 and SE_i_mul38_conv_join_13_and0;
    SE_i_mul38_conv_join_13_wireValid <= SE_redist2_i_mul38_conv_ma3_cma_q_1_0_V0 and SE_i_mul38_conv_join_13_and1;

    -- SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0(STALLENABLE,406)
    -- Valid signal propagation
    SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_V0 <= SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_s_tv_0 <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall and SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_backEN <= not (SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_v_s_0 <= SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_backEN and SE_i_mul38_conv_join_13_V0;
    -- Backward Stall generation
    SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_backStall <= not (SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_v_s_0);
    SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_backEN = "0") THEN
                SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_R_v_0 <= SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_R_v_0 and SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_R_v_0 <= SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3(STALLENABLE,404)
    -- Valid signal propagation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_V0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_R_v_0;
    -- Stall signal propagation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_s_tv_0 <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall and SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_R_v_0;
    -- Backward Enable generation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_backEN <= not (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_v_s_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_backEN and SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_V0;
    -- Backward Stall generation
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_backStall <= not (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_v_s_0);
    SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_backEN = "0") THEN
                SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_R_v_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_R_v_0 and SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_s_tv_0;
            ELSE
                SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_R_v_0 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4(STALLENABLE,395)
    -- Valid signal propagation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_V0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_R_v_0;
    -- Stall signal propagation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_s_tv_0 <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_R_v_0;
    -- Backward Enable generation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backEN <= not (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_v_s_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backEN and SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_V;
    -- Backward Stall generation
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backStall <= not (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backEN);
    SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backEN = "0") THEN
                SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_R_v_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_R_v_0 and SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_s_tv_0;
            ELSE
                SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_R_v_0 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0(STALLENABLE,388)
    -- Valid signal propagation
    SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_V0 <= SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_R_v_0;
    -- Stall signal propagation
    SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_s_tv_0 <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall and SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_R_v_0;
    -- Backward Enable generation
    SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backEN <= not (SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_v_s_0 <= SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backEN and SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_V;
    -- Backward Stall generation
    SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backStall <= not (SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backEN);
    SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backEN = "0") THEN
                SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_R_v_0 <= SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_R_v_0 and SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_s_tv_0;
            ELSE
                SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_R_v_0 <= SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0(STALLENABLE,383)
    -- Valid signal propagation
    SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_V0 <= SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_R_v_0;
    -- Stall signal propagation
    SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_s_tv_0 <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall and SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_R_v_0;
    -- Backward Enable generation
    SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backEN <= not (SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_v_s_0 <= SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backEN and SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_V;
    -- Backward Stall generation
    SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backStall <= not (SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backEN);
    SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backEN = "0") THEN
                SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_R_v_0 <= SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_R_v_0 and SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_s_tv_0;
            ELSE
                SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_R_v_0 <= SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_cmp42_conv(STALLENABLE,304)
    -- Valid signal propagation
    SE_i_cmp42_conv_V0 <= SE_i_cmp42_conv_R_v_0;
    -- Stall signal propagation
    SE_i_cmp42_conv_s_tv_0 <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall and SE_i_cmp42_conv_R_v_0;
    -- Backward Enable generation
    SE_i_cmp42_conv_backEN <= not (SE_i_cmp42_conv_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_cmp42_conv_v_s_0 <= SE_i_cmp42_conv_backEN and SR_SE_i_cmp42_conv_V;
    -- Backward Stall generation
    SE_i_cmp42_conv_backStall <= not (SE_i_cmp42_conv_backEN);
    SE_i_cmp42_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_cmp42_conv_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp42_conv_backEN = "0") THEN
                SE_i_cmp42_conv_R_v_0 <= SE_i_cmp42_conv_R_v_0 and SE_i_cmp42_conv_s_tv_0;
            ELSE
                SE_i_cmp42_conv_R_v_0 <= SE_i_cmp42_conv_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0(STALLENABLE,408)
    -- Valid signal propagation
    SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_V0 <= SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_s_tv_0 <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall and SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backEN <= not (SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_v_s_0 <= SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backEN and SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_V;
    -- Backward Stall generation
    SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backStall <= not (SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backEN);
    SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backEN = "0") THEN
                SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_R_v_0 <= SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_R_v_0 and SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_R_v_0 <= SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo(BITJOIN,287)
    bubble_join_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_q <= redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_data_out;

    -- bubble_select_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo(BITSELECT,288)
    bubble_select_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_q(31 downto 0));

    -- i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x(BLACKBOX,26)@13
    -- in in_i_stall@20000000
    -- out out_c0_exit_0@46
    -- out out_c0_exit_1@46
    -- out out_c0_exit_2@46
    -- out out_c0_exit_3@46
    -- out out_o_stall@20000000
    -- out out_o_valid@46
    thei_sfc_c0_entry_conv_c0_enter_conv_aunroll_x : i_sfc_c0_entry_conv_c0_enter_conv
    PORT MAP (
        in_c0_eni1_0 => GND_q,
        in_c0_eni1_1 => bubble_select_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_b,
        in_N_elem => in_N_elem,
        in_i_stall => SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall,
        in_i_valid => SE_out_redist19_conv_B0_merge_reg_aunroll_x_out_data_out_4_12_fifo_V0,
        out_c0_exit_1 => i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_c0_exit_1,
        out_c0_exit_2 => i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_c0_exit_2,
        out_c0_exit_3 => i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_c0_exit_3,
        out_o_stall => i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x(BLACKBOX,27)@1
    -- in in_i_stall@20000000
    -- out out_c1_exit_0@46
    -- out out_c1_exit_1@46
    -- out out_c1_exit_2@46
    -- out out_o_stall@20000000
    -- out out_o_valid@46
    thei_sfc_c1_entry_conv_c1_enter_conv_aunroll_x : i_sfc_c1_entry_conv_c1_enter_conv
    PORT MAP (
        in_c1_eni1_0 => GND_q,
        in_c1_eni1_1 => bubble_select_conv_B0_merge_reg_aunroll_x_b,
        in_N_Fout_dim => in_N_Fout_dim,
        in_S_conv => in_S_conv,
        in_i_stall => SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall,
        in_i_valid => SE_out_conv_B0_merge_reg_aunroll_x_V4,
        out_c1_exit_1 => i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_c1_exit_1,
        out_c1_exit_2 => i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_c1_exit_2,
        out_o_stall => i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo(STALLFIFO,183)
    redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_in <= SE_out_conv_B0_merge_reg_aunroll_x_V6;
    redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall;
    redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_data_in <= bubble_select_conv_B0_merge_reg_aunroll_x_c;
    redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_in_bitsignaltemp <= redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_in(0);
    redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_in_bitsignaltemp <= redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_in(0);
    redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_out(0) <= redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_out_bitsignaltemp;
    redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_out(0) <= redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_out_bitsignaltemp;
    theredist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 46,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_in_bitsignaltemp,
        stall_in => redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B0_merge_reg_aunroll_x_c,
        valid_out => redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_out_bitsignaltemp,
        stall_out => redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_stall_out_bitsignaltemp,
        data_out => redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo(STALLFIFO,193)
    redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in <= SE_out_conv_B0_merge_reg_aunroll_x_V10;
    redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall;
    redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_data_in <= bubble_select_conv_B0_merge_reg_aunroll_x_g;
    redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in_bitsignaltemp <= redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in(0);
    redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in_bitsignaltemp <= redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in(0);
    redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out(0) <= redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out_bitsignaltemp;
    redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out(0) <= redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out_bitsignaltemp;
    theredist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 46,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in_bitsignaltemp,
        stall_in => redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B0_merge_reg_aunroll_x_g,
        valid_out => redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out_bitsignaltemp,
        stall_out => redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out_bitsignaltemp,
        data_out => redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg(STALLFIFO,539)
    bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_in <= SE_out_i_syncbuf_k_conv_sync_buffer95_conv_V0;
    bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_in <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall;
    bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_in_bitsignaltemp <= bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_in(0);
    bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_in_bitsignaltemp <= bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_in(0);
    bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_out(0) <= bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_out(0) <= bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 9,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg(STALLFIFO,540)
    bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_in <= SE_out_i_syncbuf_n_elem_sync_buffer91_conv_V0;
    bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_in <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall;
    bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_in_bitsignaltemp <= bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_in(0);
    bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_in_bitsignaltemp <= bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_in(0);
    bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_out(0) <= bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_out(0) <= bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 6,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg(STALLFIFO,541)
    bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_in <= SE_out_i_syncbuf_n_fin_sync_buffer_conv_V0;
    bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_in <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall;
    bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_in_bitsignaltemp <= bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_in(0);
    bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_in_bitsignaltemp <= bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_in(0);
    bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_out(0) <= bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_out(0) <= bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 5,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg(STALLFIFO,542)
    bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_in <= SE_out_i_syncbuf_n_fout_dim_sync_buffer_conv_V0;
    bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_in <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall;
    bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_in_bitsignaltemp <= bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_in(0);
    bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_in_bitsignaltemp <= bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_in(0);
    bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_out(0) <= bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_out(0) <= bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 6,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1(STALLENABLE,456)
    -- Valid signal propagation
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_V0 <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_backStall <= in_stall_in or not (SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and0 <= bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_reg_valid_out;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and1 <= bubble_out_i_syncbuf_n_fin_sync_buffer_conv_1_reg_valid_out and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and0;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and2 <= bubble_out_i_syncbuf_n_elem_sync_buffer91_conv_1_reg_valid_out and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and1;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and3 <= bubble_out_i_syncbuf_k_conv_sync_buffer95_conv_1_reg_valid_out and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and2;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and4 <= redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and3;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and5 <= redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_valid_out and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and4;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and6 <= i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_o_valid and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and5;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and7 <= i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_o_valid and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and6;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and8 <= SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_V0 and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and7;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and9 <= SE_i_cmp42_conv_V0 and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and8;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and10 <= SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_V0 and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and9;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and11 <= SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_V0 and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and10;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and12 <= SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_V0 and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and11;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and13 <= SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_V0 and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and12;
    SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_wireValid <= SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_V0 and SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_and13;

    -- redist2_i_mul38_conv_ma3_cma_q_1_0(REG,171)
    redist2_i_mul38_conv_ma3_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_mul38_conv_ma3_cma_q_1_0_q <= "0000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_i_mul38_conv_ma3_cma_q_1_0_backEN = "1") THEN
                redist2_i_mul38_conv_ma3_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist2_i_mul38_conv_ma3_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_mul38_conv_align_14(BITSHIFT,91)@45
    i_mul38_conv_align_14_qint <= redist2_i_mul38_conv_ma3_cma_q_1_0_q & "000000000000000000";
    i_mul38_conv_align_14_q <= i_mul38_conv_align_14_qint(51 downto 0);

    -- redist8_i_mul38_conv_im10_cma_q_1_0(REG,177)
    redist8_i_mul38_conv_im10_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_mul38_conv_im10_cma_q_1_0_q <= "0000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist8_i_mul38_conv_im10_cma_q_1_0_backEN = "1") THEN
                redist8_i_mul38_conv_im10_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist8_i_mul38_conv_im10_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_i_mul38_conv_im0_cma_q_1_0(REG,178)
    redist9_i_mul38_conv_im0_cma_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_mul38_conv_im0_cma_q_1_0_q <= "000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist9_i_mul38_conv_im0_cma_q_1_0_backEN = "1") THEN
                redist9_i_mul38_conv_im0_cma_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist9_i_mul38_conv_im0_cma_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_mul38_conv_join_13(BITJOIN,90)@45
    i_mul38_conv_join_13_q <= redist8_i_mul38_conv_im10_cma_q_1_0_q & redist9_i_mul38_conv_im0_cma_q_1_0_q;

    -- i_mul38_conv_result_add_0_0(ADD,93)@45
    i_mul38_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul38_conv_join_13_q));
    i_mul38_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul38_conv_align_14_q(51)) & i_mul38_conv_align_14_q));
    i_mul38_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul38_conv_result_add_0_0_a) + SIGNED(i_mul38_conv_result_add_0_0_b));
    i_mul38_conv_result_add_0_0_q <= i_mul38_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul38_conv_rnd_sel(BITSELECT,57)@45
    bgTrunc_i_mul38_conv_rnd_sel_in <= i_mul38_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul38_conv_rnd_sel_b <= bgTrunc_i_mul38_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul38_conv_sel_x(BITSELECT,4)@45
    bgTrunc_i_mul38_conv_sel_x_b <= bgTrunc_i_mul38_conv_rnd_sel_b(31 downto 0);

    -- redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0(REG,200)
    redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_backEN = "1") THEN
                redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(bgTrunc_i_mul38_conv_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- redist22_bgTrunc_i_mul_conv_sel_x_b_5_2(REG,197)
    redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_backEN = "1") THEN
                redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_q <= STD_LOGIC_VECTOR(SR_SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist22_bgTrunc_i_mul_conv_sel_x_b_5_3(REG,198)
    redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_backEN = "1") THEN
                redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_q <= STD_LOGIC_VECTOR(redist22_bgTrunc_i_mul_conv_sel_x_b_5_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4(REG,191)
    redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_backEN = "1") THEN
                redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_q <= STD_LOGIC_VECTOR(SR_SE_redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0(REG,185)
    redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_backEN = "1") THEN
                redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_q <= STD_LOGIC_VECTOR(SR_SE_redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo(BITJOIN,278)
    bubble_join_redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_q <= redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_data_out;

    -- bubble_select_redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo(BITSELECT,279)
    bubble_select_redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_q(31 downto 0));

    -- redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0(REG,182)
    redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_backEN = "1") THEN
                redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_q <= STD_LOGIC_VECTOR(SR_SE_redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_cmp42_conv(COMPARE,37)@45 + 1
    i_cmp42_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => SR_SE_i_cmp42_conv_D0(31)) & SR_SE_i_cmp42_conv_D0));
    i_cmp42_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => SR_SE_i_cmp42_conv_D1(31)) & SR_SE_i_cmp42_conv_D1));
    i_cmp42_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp42_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp42_conv_backEN = "1") THEN
                i_cmp42_conv_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp42_conv_a) - SIGNED(i_cmp42_conv_b));
            END IF;
        END IF;
    END PROCESS;
    i_cmp42_conv_c(0) <= i_cmp42_conv_o(33);

    -- bubble_join_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x(BITJOIN,215)
    bubble_join_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_q <= i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_c1_exit_2 & i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_out_c1_exit_1;

    -- bubble_select_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x(BITSELECT,216)
    bubble_select_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_q(31 downto 0));
    bubble_select_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_q(63 downto 32));

    -- bubble_join_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x(BITJOIN,211)
    bubble_join_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_q <= i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_c0_exit_3 & i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_c0_exit_2 & i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_out_c0_exit_1;

    -- bubble_select_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x(BITSELECT,212)
    bubble_select_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_q(31 downto 0));
    bubble_select_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_q(63 downto 32));
    bubble_select_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_q(64 downto 64));

    -- redist26_bgTrunc_i_add13_conv_sel_x_b_1_0(REG,202)
    redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_backEN = "1") THEN
                redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo(BITJOIN,290)
    bubble_join_redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_q <= redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_data_out;

    -- bubble_select_redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo(BITSELECT,291)
    bubble_select_redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_q(31 downto 0));

    -- dupName_0_sync_out_x(GPOUT,12)@46
    out_acl_hw_wg_id <= bubble_select_redist20_conv_B0_merge_reg_aunroll_x_out_data_out_5_45_fifo_b;
    out_add13 <= redist26_bgTrunc_i_add13_conv_sel_x_b_1_0_q;
    out_c0_exe1 <= bubble_select_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_b;
    out_c0_exe2 <= bubble_select_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_c;
    out_c0_exe3 <= bubble_select_i_sfc_c0_entry_conv_c0_enter_conv_aunroll_x_d;
    out_c1_exe1 <= bubble_select_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_b;
    out_c1_exe2 <= bubble_select_i_sfc_c1_entry_conv_c1_enter_conv_aunroll_x_c;
    out_cmp42 <= i_cmp42_conv_c;
    out_global_id_0 <= redist13_conv_B0_merge_reg_aunroll_x_out_data_out_0_45_0_q;
    out_global_id_1 <= bubble_select_redist14_conv_B0_merge_reg_aunroll_x_out_data_out_1_45_fifo_b;
    out_local_id_0 <= redist16_conv_B0_merge_reg_aunroll_x_out_data_out_2_45_0_q;
    out_local_id_1 <= redist18_conv_B0_merge_reg_aunroll_x_out_data_out_3_45_4_q;
    out_mul <= redist22_bgTrunc_i_mul_conv_sel_x_b_5_3_q;
    out_mul38 <= redist24_bgTrunc_i_mul38_conv_sel_x_b_1_0_q;
    out_valid_out <= SE_out_bubble_out_i_syncbuf_n_fout_dim_sync_buffer_conv_1_V0;

    -- sync_out(GPOUT,54)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
