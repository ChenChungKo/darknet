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

-- VHDL created from i_sfc_logic_c0_for_end_1_loopexit_conv1x1_c0_enter199_conv1x1350
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

entity i_sfc_logic_c0_for_end_1_loopexit_conv1x1_c0_enter199_conv1x1350 is
    port (
        in_c0_eni4198_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni4198_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni4198_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni4198_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni4198_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi6209_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6209_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi6209_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6209_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6209_4 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi6209_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6209_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_end_1_loopexit_conv1x1_c0_enter199_conv1x1350;

architecture normal of i_sfc_logic_c0_for_end_1_loopexit_conv1x1_c0_enter199_conv1x1350 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_syncbuf_input_size_sync_buffer85_conv1x1361 is
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


    component i_syncbuf_output_size_sync_buffer131_conv1x1352 is
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


    component i_syncbuf_pad_sync_buffer93_conv1x1358 is
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


    component i_syncbuf_stride_sync_buffer126_conv1x1356 is
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


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_mul16_2_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub17_2_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cmp106_neg73_or_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp106_neg73_or_demorgan_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp23_2_conv1x1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp23_2_conv1x1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp23_2_conv1x1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp23_2_conv1x1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp26_2_conv1x1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp26_2_conv1x1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp26_2_conv1x1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp26_2_conv1x1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond11_1_conv1x1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond11_1_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc41_113_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc41_113_conv1x1_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or_cond3_2_conv1x1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond3_2_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond4_2_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision93_or_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub17_2_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub17_2_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub17_2_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub17_2_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_input_size_sync_buffer85_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_output_size_sync_buffer131_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer93_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer126_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1355_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_mul16_2_conv1x1_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul16_2_conv1x1_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul16_2_conv1x1_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul16_2_conv1x1_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul16_2_conv1x1_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul16_2_conv1x1_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul16_2_conv1x1_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul16_2_conv1x1_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul16_2_conv1x1_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul16_2_conv1x1_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul16_2_conv1x1_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul16_2_conv1x1_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul16_2_conv1x1_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul16_2_conv1x1_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul16_2_conv1x1_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul16_2_conv1x1_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul16_2_conv1x1_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul16_2_conv1x1_im0_cma_reset : std_logic;
    type i_mul16_2_conv1x1_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul16_2_conv1x1_im0_cma_a0 : i_mul16_2_conv1x1_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_mul16_2_conv1x1_im0_cma_a0 : signal is true;
    signal i_mul16_2_conv1x1_im0_cma_c0 : i_mul16_2_conv1x1_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul16_2_conv1x1_im0_cma_c0 : signal is true;
    type i_mul16_2_conv1x1_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul16_2_conv1x1_im0_cma_p : i_mul16_2_conv1x1_im0_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im0_cma_u : i_mul16_2_conv1x1_im0_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im0_cma_w : i_mul16_2_conv1x1_im0_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im0_cma_x : i_mul16_2_conv1x1_im0_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im0_cma_y : i_mul16_2_conv1x1_im0_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im0_cma_s : i_mul16_2_conv1x1_im0_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul16_2_conv1x1_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul16_2_conv1x1_im0_cma_ena0 : std_logic;
    signal i_mul16_2_conv1x1_im0_cma_ena1 : std_logic;
    signal i_mul16_2_conv1x1_im10_cma_reset : std_logic;
    type i_mul16_2_conv1x1_im10_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal i_mul16_2_conv1x1_im10_cma_a0 : i_mul16_2_conv1x1_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul16_2_conv1x1_im10_cma_a0 : signal is true;
    signal i_mul16_2_conv1x1_im10_cma_c0 : i_mul16_2_conv1x1_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul16_2_conv1x1_im10_cma_c0 : signal is true;
    type i_mul16_2_conv1x1_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_mul16_2_conv1x1_im10_cma_p : i_mul16_2_conv1x1_im10_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im10_cma_u : i_mul16_2_conv1x1_im10_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im10_cma_w : i_mul16_2_conv1x1_im10_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im10_cma_x : i_mul16_2_conv1x1_im10_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im10_cma_y : i_mul16_2_conv1x1_im10_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im10_cma_s : i_mul16_2_conv1x1_im10_cma_ptype(0 to 0);
    signal i_mul16_2_conv1x1_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul16_2_conv1x1_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul16_2_conv1x1_im10_cma_ena0 : std_logic;
    signal i_mul16_2_conv1x1_im10_cma_ena1 : std_logic;
    signal i_mul16_2_conv1x1_ma3_cma_reset : std_logic;
    signal i_mul16_2_conv1x1_ma3_cma_a0 : i_mul16_2_conv1x1_im10_cma_a0type(0 to 1);
    attribute preserve of i_mul16_2_conv1x1_ma3_cma_a0 : signal is true;
    type i_mul16_2_conv1x1_ma3_cma_c0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_mul16_2_conv1x1_ma3_cma_c0 : i_mul16_2_conv1x1_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul16_2_conv1x1_ma3_cma_c0 : signal is true;
    type i_mul16_2_conv1x1_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal i_mul16_2_conv1x1_ma3_cma_l : i_mul16_2_conv1x1_ma3_cma_ltype(0 to 1);
    type i_mul16_2_conv1x1_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_mul16_2_conv1x1_ma3_cma_p : i_mul16_2_conv1x1_ma3_cma_ptype(0 to 1);
    type i_mul16_2_conv1x1_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_mul16_2_conv1x1_ma3_cma_u : i_mul16_2_conv1x1_ma3_cma_utype(0 to 1);
    signal i_mul16_2_conv1x1_ma3_cma_w : i_mul16_2_conv1x1_ma3_cma_utype(0 to 0);
    signal i_mul16_2_conv1x1_ma3_cma_x : i_mul16_2_conv1x1_ma3_cma_utype(0 to 0);
    signal i_mul16_2_conv1x1_ma3_cma_y : i_mul16_2_conv1x1_ma3_cma_utype(0 to 0);
    signal i_mul16_2_conv1x1_ma3_cma_s : i_mul16_2_conv1x1_ma3_cma_utype(0 to 0);
    signal i_mul16_2_conv1x1_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul16_2_conv1x1_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul16_2_conv1x1_ma3_cma_ena0 : std_logic;
    signal i_mul16_2_conv1x1_ma3_cma_ena1 : std_logic;
    signal i_inc41_113_conv1x1_vt_select_0_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc41_113_conv1x1_vt_select_0_merged_bit_select_c : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul16_2_conv1x1_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul16_2_conv1x1_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal redist0_i_mul16_2_conv1x1_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist1_i_mul16_2_conv1x1_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist2_i_mul16_2_conv1x1_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist4_i_inc41_113_conv1x1_vt_join_q_7_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni4198_2_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni4198_3_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_c0_eni4198_4_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_bgTrunc_i_sub17_2_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_bgTrunc_i_sub17_2_conv1x1_sel_x_b_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_bgTrunc_i_sub17_2_conv1x1_sel_x_b_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_bgTrunc_i_mul16_2_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_reset0 : std_logic;
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_i : signal is true;
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist3_i_inc41_113_conv1x1_vt_join_q_6_sticky_ena_q : signal is true;
    signal redist3_i_inc41_113_conv1x1_vt_join_q_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist8_sync_in_aunroll_x_in_i_valid_4(DELAY,73)
    redist8_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist8_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist9_sync_in_aunroll_x_in_i_valid_6(DELAY,74)
    redist9_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_4_q, xout => redist9_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- redist10_sync_in_aunroll_x_in_i_valid_7(DELAY,75)
    redist10_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_sync_in_aunroll_x_in_i_valid_6_q, xout => redist10_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- redist7_sync_in_aunroll_x_in_c0_eni4198_4_7(DELAY,72)
    redist7_sync_in_aunroll_x_in_c0_eni4198_4_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni4198_4, xout => redist7_sync_in_aunroll_x_in_c0_eni4198_4_7_q, clk => clock, aclr => resetn );

    -- i_cmp106_neg73_or_demorgan_conv1x1(LOGICAL,16)@45
    i_cmp106_neg73_or_demorgan_conv1x1_q <= i_or_cond4_2_conv1x1_q and redist7_sync_in_aunroll_x_in_c0_eni4198_4_7_q;

    -- i_cmp106_neg73_or_conv1x1(LOGICAL,15)@45
    i_cmp106_neg73_or_conv1x1_q <= i_cmp106_neg73_or_demorgan_conv1x1_q xor VCC_q;

    -- i_phi_decision93_or_conv1x1(LOGICAL,28)@45
    i_phi_decision93_or_conv1x1_q <= i_unnamed_conv1x1355_q or i_cmp106_neg73_or_conv1x1_q;

    -- i_syncbuf_input_size_sync_buffer85_conv1x1(BLACKBOX,30)@0
    -- in in_i_dependence@44
    -- in in_valid_in@44
    -- out out_buffer_out@44
    -- out out_valid_out@44
    thei_syncbuf_input_size_sync_buffer85_conv1x1 : i_syncbuf_input_size_sync_buffer85_conv1x1361
    PORT MAP (
        in_buffer_in => in_input_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_6_q,
        out_buffer_out => i_syncbuf_input_size_sync_buffer85_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_syncbuf_pad_sync_buffer93_conv1x1(BLACKBOX,32)@0
    -- in in_i_dependence@42
    -- in in_valid_in@42
    -- out out_buffer_out@42
    -- out out_valid_out@42
    thei_syncbuf_pad_sync_buffer93_conv1x1 : i_syncbuf_pad_sync_buffer93_conv1x1358
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_pad_sync_buffer93_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_2gr(CONSTANT,14)
    c_i32_2gr_q <= "00000000000000000000000000000010";

    -- i_inc41_113_conv1x1(LOGICAL,20)@38
    i_inc41_113_conv1x1_q <= in_c0_eni4198_1 or c_i32_2gr_q;

    -- i_inc41_113_conv1x1_vt_select_0_merged_bit_select(BITSELECT,63)@38
    i_inc41_113_conv1x1_vt_select_0_merged_bit_select_b <= i_inc41_113_conv1x1_q(0 downto 0);
    i_inc41_113_conv1x1_vt_select_0_merged_bit_select_c <= i_inc41_113_conv1x1_q(31 downto 2);

    -- i_inc41_113_conv1x1_vt_join(BITJOIN,22)@38
    i_inc41_113_conv1x1_vt_join_q <= i_inc41_113_conv1x1_vt_select_0_merged_bit_select_c & VCC_q & i_inc41_113_conv1x1_vt_select_0_merged_bit_select_b;

    -- i_mul16_2_conv1x1_bs4(BITSELECT,47)@38
    i_mul16_2_conv1x1_bs4_in <= STD_LOGIC_VECTOR(i_inc41_113_conv1x1_vt_join_q(17 downto 0));
    i_mul16_2_conv1x1_bs4_b <= STD_LOGIC_VECTOR(i_mul16_2_conv1x1_bs4_in(17 downto 0));

    -- i_mul16_2_conv1x1_bjA5(BITJOIN,48)@38
    i_mul16_2_conv1x1_bjA5_q <= GND_q & i_mul16_2_conv1x1_bs4_b;

    -- i_syncbuf_stride_sync_buffer126_conv1x1(BLACKBOX,33)@0
    -- in in_i_dependence@38
    -- in in_valid_in@38
    -- out out_buffer_out@38
    -- out out_valid_out@38
    thei_syncbuf_stride_sync_buffer126_conv1x1 : i_syncbuf_stride_sync_buffer126_conv1x1356
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_stride_sync_buffer126_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul16_2_conv1x1_bs2_merged_bit_select(BITSELECT,64)@38
    i_mul16_2_conv1x1_bs2_merged_bit_select_b <= i_syncbuf_stride_sync_buffer126_conv1x1_out_buffer_out(17 downto 0);
    i_mul16_2_conv1x1_bs2_merged_bit_select_c <= i_syncbuf_stride_sync_buffer126_conv1x1_out_buffer_out(31 downto 18);

    -- i_mul16_2_conv1x1_bjB9(BITJOIN,52)@38
    i_mul16_2_conv1x1_bjB9_q <= GND_q & i_mul16_2_conv1x1_bs2_merged_bit_select_b;

    -- i_mul16_2_conv1x1_bs7(BITSELECT,50)@38
    i_mul16_2_conv1x1_bs7_b <= STD_LOGIC_VECTOR(i_inc41_113_conv1x1_vt_join_q(31 downto 18));

    -- i_mul16_2_conv1x1_ma3_cma(CHAINMULTADD,62)@38 + 2
    i_mul16_2_conv1x1_ma3_cma_reset <= not (resetn);
    i_mul16_2_conv1x1_ma3_cma_ena0 <= '1';
    i_mul16_2_conv1x1_ma3_cma_ena1 <= i_mul16_2_conv1x1_ma3_cma_ena0;
    i_mul16_2_conv1x1_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul16_2_conv1x1_ma3_cma_a0(0),15));
    i_mul16_2_conv1x1_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul16_2_conv1x1_ma3_cma_a0(1),15));
    i_mul16_2_conv1x1_ma3_cma_p(0) <= i_mul16_2_conv1x1_ma3_cma_l(0) * i_mul16_2_conv1x1_ma3_cma_c0(0);
    i_mul16_2_conv1x1_ma3_cma_p(1) <= i_mul16_2_conv1x1_ma3_cma_l(1) * i_mul16_2_conv1x1_ma3_cma_c0(1);
    i_mul16_2_conv1x1_ma3_cma_u(0) <= RESIZE(i_mul16_2_conv1x1_ma3_cma_p(0),35);
    i_mul16_2_conv1x1_ma3_cma_u(1) <= RESIZE(i_mul16_2_conv1x1_ma3_cma_p(1),35);
    i_mul16_2_conv1x1_ma3_cma_w(0) <= i_mul16_2_conv1x1_ma3_cma_u(0) + i_mul16_2_conv1x1_ma3_cma_u(1);
    i_mul16_2_conv1x1_ma3_cma_x(0) <= i_mul16_2_conv1x1_ma3_cma_w(0);
    i_mul16_2_conv1x1_ma3_cma_y(0) <= i_mul16_2_conv1x1_ma3_cma_x(0);
    i_mul16_2_conv1x1_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul16_2_conv1x1_ma3_cma_a0 <= (others => (others => '0'));
            i_mul16_2_conv1x1_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul16_2_conv1x1_ma3_cma_ena0 = '1') THEN
                i_mul16_2_conv1x1_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul16_2_conv1x1_bs7_b),14);
                i_mul16_2_conv1x1_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul16_2_conv1x1_bs2_merged_bit_select_c),14);
                i_mul16_2_conv1x1_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul16_2_conv1x1_bjB9_q),19);
                i_mul16_2_conv1x1_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul16_2_conv1x1_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul16_2_conv1x1_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul16_2_conv1x1_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul16_2_conv1x1_ma3_cma_ena1 = '1') THEN
                i_mul16_2_conv1x1_ma3_cma_s(0) <= i_mul16_2_conv1x1_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul16_2_conv1x1_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul16_2_conv1x1_ma3_cma_s(0)(33 downto 0)), xout => i_mul16_2_conv1x1_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul16_2_conv1x1_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul16_2_conv1x1_ma3_cma_qq(33 downto 0));

    -- redist0_i_mul16_2_conv1x1_ma3_cma_q_1(DELAY,65)
    redist0_i_mul16_2_conv1x1_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul16_2_conv1x1_ma3_cma_q, xout => redist0_i_mul16_2_conv1x1_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul16_2_conv1x1_align_14(BITSHIFT,57)@41
    i_mul16_2_conv1x1_align_14_qint <= redist0_i_mul16_2_conv1x1_ma3_cma_q_1_q & "000000000000000000";
    i_mul16_2_conv1x1_align_14_q <= i_mul16_2_conv1x1_align_14_qint(51 downto 0);

    -- i_mul16_2_conv1x1_bs11(BITSELECT,54)@38
    i_mul16_2_conv1x1_bs11_b <= i_inc41_113_conv1x1_vt_join_q(31 downto 18);

    -- i_mul16_2_conv1x1_im10_cma(CHAINMULTADD,61)@38 + 2
    i_mul16_2_conv1x1_im10_cma_reset <= not (resetn);
    i_mul16_2_conv1x1_im10_cma_ena0 <= '1';
    i_mul16_2_conv1x1_im10_cma_ena1 <= i_mul16_2_conv1x1_im10_cma_ena0;
    i_mul16_2_conv1x1_im10_cma_p(0) <= i_mul16_2_conv1x1_im10_cma_a0(0) * i_mul16_2_conv1x1_im10_cma_c0(0);
    i_mul16_2_conv1x1_im10_cma_u(0) <= RESIZE(i_mul16_2_conv1x1_im10_cma_p(0),28);
    i_mul16_2_conv1x1_im10_cma_w(0) <= i_mul16_2_conv1x1_im10_cma_u(0);
    i_mul16_2_conv1x1_im10_cma_x(0) <= i_mul16_2_conv1x1_im10_cma_w(0);
    i_mul16_2_conv1x1_im10_cma_y(0) <= i_mul16_2_conv1x1_im10_cma_x(0);
    i_mul16_2_conv1x1_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul16_2_conv1x1_im10_cma_a0 <= (others => (others => '0'));
            i_mul16_2_conv1x1_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul16_2_conv1x1_im10_cma_ena0 = '1') THEN
                i_mul16_2_conv1x1_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul16_2_conv1x1_bs11_b),14);
                i_mul16_2_conv1x1_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul16_2_conv1x1_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul16_2_conv1x1_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul16_2_conv1x1_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul16_2_conv1x1_im10_cma_ena1 = '1') THEN
                i_mul16_2_conv1x1_im10_cma_s(0) <= i_mul16_2_conv1x1_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul16_2_conv1x1_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul16_2_conv1x1_im10_cma_s(0)(27 downto 0)), xout => i_mul16_2_conv1x1_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul16_2_conv1x1_im10_cma_q <= STD_LOGIC_VECTOR(i_mul16_2_conv1x1_im10_cma_qq(27 downto 0));

    -- redist1_i_mul16_2_conv1x1_im10_cma_q_1(DELAY,66)
    redist1_i_mul16_2_conv1x1_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul16_2_conv1x1_im10_cma_q, xout => redist1_i_mul16_2_conv1x1_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul16_2_conv1x1_bs1(BITSELECT,44)@38
    i_mul16_2_conv1x1_bs1_in <= i_inc41_113_conv1x1_vt_join_q(17 downto 0);
    i_mul16_2_conv1x1_bs1_b <= i_mul16_2_conv1x1_bs1_in(17 downto 0);

    -- i_mul16_2_conv1x1_im0_cma(CHAINMULTADD,60)@38 + 2
    i_mul16_2_conv1x1_im0_cma_reset <= not (resetn);
    i_mul16_2_conv1x1_im0_cma_ena0 <= '1';
    i_mul16_2_conv1x1_im0_cma_ena1 <= i_mul16_2_conv1x1_im0_cma_ena0;
    i_mul16_2_conv1x1_im0_cma_p(0) <= i_mul16_2_conv1x1_im0_cma_a0(0) * i_mul16_2_conv1x1_im0_cma_c0(0);
    i_mul16_2_conv1x1_im0_cma_u(0) <= RESIZE(i_mul16_2_conv1x1_im0_cma_p(0),36);
    i_mul16_2_conv1x1_im0_cma_w(0) <= i_mul16_2_conv1x1_im0_cma_u(0);
    i_mul16_2_conv1x1_im0_cma_x(0) <= i_mul16_2_conv1x1_im0_cma_w(0);
    i_mul16_2_conv1x1_im0_cma_y(0) <= i_mul16_2_conv1x1_im0_cma_x(0);
    i_mul16_2_conv1x1_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul16_2_conv1x1_im0_cma_a0 <= (others => (others => '0'));
            i_mul16_2_conv1x1_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul16_2_conv1x1_im0_cma_ena0 = '1') THEN
                i_mul16_2_conv1x1_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul16_2_conv1x1_bs1_b),18);
                i_mul16_2_conv1x1_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul16_2_conv1x1_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul16_2_conv1x1_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul16_2_conv1x1_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul16_2_conv1x1_im0_cma_ena1 = '1') THEN
                i_mul16_2_conv1x1_im0_cma_s(0) <= i_mul16_2_conv1x1_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul16_2_conv1x1_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul16_2_conv1x1_im0_cma_s(0)(35 downto 0)), xout => i_mul16_2_conv1x1_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul16_2_conv1x1_im0_cma_q <= STD_LOGIC_VECTOR(i_mul16_2_conv1x1_im0_cma_qq(35 downto 0));

    -- redist2_i_mul16_2_conv1x1_im0_cma_q_1(DELAY,67)
    redist2_i_mul16_2_conv1x1_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul16_2_conv1x1_im0_cma_q, xout => redist2_i_mul16_2_conv1x1_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul16_2_conv1x1_join_13(BITJOIN,56)@41
    i_mul16_2_conv1x1_join_13_q <= redist1_i_mul16_2_conv1x1_im10_cma_q_1_q & redist2_i_mul16_2_conv1x1_im0_cma_q_1_q;

    -- i_mul16_2_conv1x1_result_add_0_0(ADD,59)@41
    i_mul16_2_conv1x1_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul16_2_conv1x1_join_13_q));
    i_mul16_2_conv1x1_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul16_2_conv1x1_align_14_q(51)) & i_mul16_2_conv1x1_align_14_q));
    i_mul16_2_conv1x1_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul16_2_conv1x1_result_add_0_0_a) + SIGNED(i_mul16_2_conv1x1_result_add_0_0_b));
    i_mul16_2_conv1x1_result_add_0_0_q <= i_mul16_2_conv1x1_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul16_2_conv1x1_rnd_sel(BITSELECT,41)@41
    bgTrunc_i_mul16_2_conv1x1_rnd_sel_in <= i_mul16_2_conv1x1_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul16_2_conv1x1_rnd_sel_b <= bgTrunc_i_mul16_2_conv1x1_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul16_2_conv1x1_sel_x(BITSELECT,2)@41
    bgTrunc_i_mul16_2_conv1x1_sel_x_b <= bgTrunc_i_mul16_2_conv1x1_rnd_sel_b(31 downto 0);

    -- redist14_bgTrunc_i_mul16_2_conv1x1_sel_x_b_1(DELAY,79)
    redist14_bgTrunc_i_mul16_2_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_2_conv1x1_sel_x_b, xout => redist14_bgTrunc_i_mul16_2_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub17_2_conv1x1(SUB,29)@42
    i_sub17_2_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist14_bgTrunc_i_mul16_2_conv1x1_sel_x_b_1_q);
    i_sub17_2_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_pad_sync_buffer93_conv1x1_out_buffer_out);
    i_sub17_2_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub17_2_conv1x1_a) - UNSIGNED(i_sub17_2_conv1x1_b));
    i_sub17_2_conv1x1_q <= i_sub17_2_conv1x1_o(32 downto 0);

    -- bgTrunc_i_sub17_2_conv1x1_sel_x(BITSELECT,3)@42
    bgTrunc_i_sub17_2_conv1x1_sel_x_b <= STD_LOGIC_VECTOR(i_sub17_2_conv1x1_q(31 downto 0));

    -- redist11_bgTrunc_i_sub17_2_conv1x1_sel_x_b_1(DELAY,76)
    redist11_bgTrunc_i_sub17_2_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub17_2_conv1x1_sel_x_b, xout => redist11_bgTrunc_i_sub17_2_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- redist12_bgTrunc_i_sub17_2_conv1x1_sel_x_b_2(DELAY,77)
    redist12_bgTrunc_i_sub17_2_conv1x1_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist11_bgTrunc_i_sub17_2_conv1x1_sel_x_b_1_q, xout => redist12_bgTrunc_i_sub17_2_conv1x1_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- i_cmp26_2_conv1x1(COMPARE,18)@44 + 1
    i_cmp26_2_conv1x1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist12_bgTrunc_i_sub17_2_conv1x1_sel_x_b_2_q(31)) & redist12_bgTrunc_i_sub17_2_conv1x1_sel_x_b_2_q));
    i_cmp26_2_conv1x1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_input_size_sync_buffer85_conv1x1_out_buffer_out(31)) & i_syncbuf_input_size_sync_buffer85_conv1x1_out_buffer_out));
    i_cmp26_2_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp26_2_conv1x1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp26_2_conv1x1_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp26_2_conv1x1_a) - SIGNED(i_cmp26_2_conv1x1_b));
        END IF;
    END PROCESS;
    i_cmp26_2_conv1x1_c(0) <= i_cmp26_2_conv1x1_o(33);

    -- c_i32_1gr(CONSTANT,13)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_cmp23_2_conv1x1(COMPARE,17)@43 + 1
    i_cmp23_2_conv1x1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_cmp23_2_conv1x1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist11_bgTrunc_i_sub17_2_conv1x1_sel_x_b_1_q(31)) & redist11_bgTrunc_i_sub17_2_conv1x1_sel_x_b_1_q));
    i_cmp23_2_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp23_2_conv1x1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp23_2_conv1x1_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp23_2_conv1x1_a) - SIGNED(i_cmp23_2_conv1x1_b));
        END IF;
    END PROCESS;
    i_cmp23_2_conv1x1_c(0) <= i_cmp23_2_conv1x1_o(33);

    -- redist6_sync_in_aunroll_x_in_c0_eni4198_3_6(DELAY,71)
    redist6_sync_in_aunroll_x_in_c0_eni4198_3_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni4198_3, xout => redist6_sync_in_aunroll_x_in_c0_eni4198_3_6_q, clk => clock, aclr => resetn );

    -- i_or_cond3_2_conv1x1(LOGICAL,26)@44 + 1
    i_or_cond3_2_conv1x1_qi <= redist6_sync_in_aunroll_x_in_c0_eni4198_3_6_q and i_cmp23_2_conv1x1_c;
    i_or_cond3_2_conv1x1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or_cond3_2_conv1x1_qi, xout => i_or_cond3_2_conv1x1_q, clk => clock, aclr => resetn );

    -- i_or_cond4_2_conv1x1(LOGICAL,27)@45
    i_or_cond4_2_conv1x1_q <= i_or_cond3_2_conv1x1_q and i_cmp26_2_conv1x1_c;

    -- redist13_bgTrunc_i_sub17_2_conv1x1_sel_x_b_3(DELAY,78)
    redist13_bgTrunc_i_sub17_2_conv1x1_sel_x_b_3 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist12_bgTrunc_i_sub17_2_conv1x1_sel_x_b_2_q, xout => redist13_bgTrunc_i_sub17_2_conv1x1_sel_x_b_3_q, clk => clock, aclr => resetn );

    -- redist5_sync_in_aunroll_x_in_c0_eni4198_2_7(DELAY,70)
    redist5_sync_in_aunroll_x_in_c0_eni4198_2_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni4198_2, xout => redist5_sync_in_aunroll_x_in_c0_eni4198_2_7_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1355(LOGICAL,34)@45
    i_unnamed_conv1x1355_q <= redist5_sync_in_aunroll_x_in_c0_eni4198_2_7_q or i_exitcond11_1_conv1x1_q;

    -- i_syncbuf_output_size_sync_buffer131_conv1x1(BLACKBOX,31)@0
    -- in in_i_dependence@44
    -- in in_valid_in@44
    -- out out_buffer_out@44
    -- out out_valid_out@44
    thei_syncbuf_output_size_sync_buffer131_conv1x1 : i_syncbuf_output_size_sync_buffer131_conv1x1352
    PORT MAP (
        in_buffer_in => in_output_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_6_q,
        out_buffer_out => i_syncbuf_output_size_sync_buffer131_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_notEnable(LOGICAL,87)
    redist3_i_inc41_113_conv1x1_vt_join_q_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_nor(LOGICAL,88)
    redist3_i_inc41_113_conv1x1_vt_join_q_6_nor_q <= not (redist3_i_inc41_113_conv1x1_vt_join_q_6_notEnable_q or redist3_i_inc41_113_conv1x1_vt_join_q_6_sticky_ena_q);

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_last(CONSTANT,84)
    redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_last_q <= "010";

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_cmp(LOGICAL,85)
    redist3_i_inc41_113_conv1x1_vt_join_q_6_cmp_b <= STD_LOGIC_VECTOR("0" & redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_q);
    redist3_i_inc41_113_conv1x1_vt_join_q_6_cmp_q <= "1" WHEN redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_last_q = redist3_i_inc41_113_conv1x1_vt_join_q_6_cmp_b ELSE "0";

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_cmpReg(REG,86)
    redist3_i_inc41_113_conv1x1_vt_join_q_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_inc41_113_conv1x1_vt_join_q_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_inc41_113_conv1x1_vt_join_q_6_cmpReg_q <= STD_LOGIC_VECTOR(redist3_i_inc41_113_conv1x1_vt_join_q_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_sticky_ena(REG,89)
    redist3_i_inc41_113_conv1x1_vt_join_q_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_inc41_113_conv1x1_vt_join_q_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_inc41_113_conv1x1_vt_join_q_6_nor_q = "1") THEN
                redist3_i_inc41_113_conv1x1_vt_join_q_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_i_inc41_113_conv1x1_vt_join_q_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_enaAnd(LOGICAL,90)
    redist3_i_inc41_113_conv1x1_vt_join_q_6_enaAnd_q <= redist3_i_inc41_113_conv1x1_vt_join_q_6_sticky_ena_q and VCC_q;

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt(COUNTER,82)
    -- low=0, high=3, step=1, init=0
    redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_i <= redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_i, 2)));

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_wraddr(REG,83)
    redist3_i_inc41_113_conv1x1_vt_join_q_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_inc41_113_conv1x1_vt_join_q_6_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_inc41_113_conv1x1_vt_join_q_6_wraddr_q <= STD_LOGIC_VECTOR(redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_mem(DUALMEM,81)
    redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_ia <= STD_LOGIC_VECTOR(i_inc41_113_conv1x1_vt_join_q);
    redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_aa <= redist3_i_inc41_113_conv1x1_vt_join_q_6_wraddr_q;
    redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_ab <= redist3_i_inc41_113_conv1x1_vt_join_q_6_rdcnt_q;
    redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_reset0 <= not (resetn);
    redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 32,
        widthad_b => 2,
        numwords_b => 4,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist3_i_inc41_113_conv1x1_vt_join_q_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_reset0,
        clock1 => clock,
        address_a => redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_aa,
        data_a => redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_ab,
        q_b => redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_iq
    );
    redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_q <= redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_iq(31 downto 0);

    -- redist3_i_inc41_113_conv1x1_vt_join_q_6_outputreg(DELAY,80)
    redist3_i_inc41_113_conv1x1_vt_join_q_6_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_inc41_113_conv1x1_vt_join_q_6_mem_q, xout => redist3_i_inc41_113_conv1x1_vt_join_q_6_outputreg_q, clk => clock, aclr => resetn );

    -- i_exitcond11_1_conv1x1(LOGICAL,19)@44 + 1
    i_exitcond11_1_conv1x1_qi <= "1" WHEN redist3_i_inc41_113_conv1x1_vt_join_q_6_outputreg_q = i_syncbuf_output_size_sync_buffer131_conv1x1_out_buffer_out ELSE "0";
    i_exitcond11_1_conv1x1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond11_1_conv1x1_qi, xout => i_exitcond11_1_conv1x1_q, clk => clock, aclr => resetn );

    -- redist4_i_inc41_113_conv1x1_vt_join_q_7(DELAY,69)
    redist4_i_inc41_113_conv1x1_vt_join_q_7 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_inc41_113_conv1x1_vt_join_q_6_outputreg_q, xout => redist4_i_inc41_113_conv1x1_vt_join_q_7_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,8)@45
    out_c0_exi6209_0 <= GND_q;
    out_c0_exi6209_1 <= redist4_i_inc41_113_conv1x1_vt_join_q_7_q;
    out_c0_exi6209_2 <= i_exitcond11_1_conv1x1_q;
    out_c0_exi6209_3 <= i_unnamed_conv1x1355_q;
    out_c0_exi6209_4 <= redist13_bgTrunc_i_sub17_2_conv1x1_sel_x_b_3_q;
    out_c0_exi6209_5 <= i_or_cond4_2_conv1x1_q;
    out_c0_exi6209_6 <= i_phi_decision93_or_conv1x1_q;
    out_o_valid <= redist10_sync_in_aunroll_x_in_i_valid_7_q;

END normal;
