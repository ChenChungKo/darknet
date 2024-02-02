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

-- VHDL created from i_sfc_logic_c0_for_body_conv_c0_enter103_conv261
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

entity i_sfc_logic_c0_for_body_conv_c0_enter103_conv261 is
    port (
        in_K_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_N_Fin_dim : in std_logic_vector(31 downto 0);  -- ufix32
        in_N_Fin_sq_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_P_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni8_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni8_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni8_3 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni8_4 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni8_5 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni8_6 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni8_7 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_8 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi3107_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3107_1 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi3107_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3107_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body_conv_c0_enter103_conv261;

architecture normal of i_sfc_logic_c0_for_body_conv_c0_enter103_conv261 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_syncbuf_in_data_sync_buffer_conv284 is
        port (
            in_buffer_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_k_conv_sync_buffer94_conv263 is
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


    component i_syncbuf_k_conv_sync_buffer_conv267 is
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


    component i_syncbuf_n_fin_dim_sync_buffer98_conv278 is
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


    component i_syncbuf_n_fin_dim_sync_buffer99_conv273 is
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


    component i_syncbuf_n_fin_dim_sync_buffer_conv281 is
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


    component i_syncbuf_n_fin_sq_pad_sync_buffer_conv271 is
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


    component i_syncbuf_p_conv_sync_buffer97_conv265 is
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


    component i_syncbuf_p_conv_sync_buffer_conv269 is
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
    signal bgTrunc_i_add19_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add29_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add33_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add36_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add37_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul20_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul34_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul35_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub21_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub23_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub25_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub26_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx57_conv_conv286_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx57_conv_conv286_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx57_conv_conv286_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx57_conv_conv286_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx57_conv_conv286_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx57_conv_conv286_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx57_conv_conv286_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx57_conv_conv286_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom56_conv_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_27_xor_or_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add19_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add19_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add19_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add19_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add29_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add29_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add29_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add29_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add33_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add33_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add33_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add33_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add36_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add36_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add36_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add36_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_c0_ene1104_conv_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_c0_ene1104_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_c0_ene1104_conv_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_cmp22_or33_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp22_or33_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp39_conv_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp39_conv_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp39_conv_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp39_conv_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp51_conv_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp51_conv_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp51_conv_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp51_conv_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp54_conv_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp54_conv_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp54_conv_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp54_conv_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_demorgan_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_demorgan_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv_0_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv_0_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv_1_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv_2_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv_2_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv_3_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub21_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub21_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub21_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub21_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub25_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub25_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub25_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub25_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub26_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub26_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub26_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub26_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_in_data_sync_buffer_conv_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_k_conv_sync_buffer_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_fin_dim_sync_buffer98_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_fin_dim_sync_buffer99_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_fin_dim_sync_buffer_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_fin_sq_pad_sync_buffer_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_p_conv_sync_buffer97_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_p_conv_sync_buffer_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid110_i_div22_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yPSE_uid112_i_div22_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSE_uid112_i_div22_conv_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSE_uid112_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSEA_uid114_i_div22_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid114_i_div22_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid114_i_div22_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid114_i_div22_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal yPS_uid115_i_div22_conv_in : STD_LOGIC_VECTOR (31 downto 0);
    signal yPS_uid115_i_div22_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal normYNoLeadOne_uid118_i_div22_conv_in : STD_LOGIC_VECTOR (30 downto 0);
    signal normYNoLeadOne_uid118_i_div22_conv_b : STD_LOGIC_VECTOR (30 downto 0);
    signal paddingY_uid119_i_div22_conv_q : STD_LOGIC_VECTOR (30 downto 0);
    signal updatedY_uid120_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal normYIsOneC2_uid119_i_div22_conv_a : STD_LOGIC_VECTOR (31 downto 0);
    signal normYIsOneC2_uid119_i_div22_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid119_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid122_i_div22_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid123_i_div22_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid123_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yIsZero_uid124_i_div22_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yIsZero_uid124_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fxpInverseRes_uid129_i_div22_conv_in : STD_LOGIC_VECTOR (38 downto 0);
    signal fxpInverseRes_uid129_i_div22_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal oneInvRes_uid130_i_div22_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal invResPostOneHandling2_uid131_i_div22_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal invResPostOneHandling2_uid131_i_div22_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal cWOut_uid132_i_div22_conv_q : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid133_i_div22_conv_a : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid133_i_div22_conv_b : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid133_i_div22_conv_o : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid133_i_div22_conv_q : STD_LOGIC_VECTOR (6 downto 0);
    signal xPSX_uid134_i_div22_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal xPSX_uid134_i_div22_conv_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal xPSX_uid134_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zMsbY0_uid136_i_div22_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xPSXE_uid137_i_div22_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid137_i_div22_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid137_i_div22_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid137_i_div22_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftInput_uid140_i_div22_conv_in : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftInput_uid140_i_div22_conv_b : STD_LOGIC_VECTOR (64 downto 0);
    signal prodPostRightShiftPost_uid142_i_div22_conv_in : STD_LOGIC_VECTOR (62 downto 0);
    signal prodPostRightShiftPost_uid142_i_div22_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal prodPostRightShiftPostRnd_uid144_i_div22_conv_a : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid144_i_div22_conv_b : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid144_i_div22_conv_o : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid144_i_div22_conv_q : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRndRange_uid145_i_div22_conv_in : STD_LOGIC_VECTOR (32 downto 0);
    signal prodPostRightShiftPostRndRange_uid145_i_div22_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal cstValOvfPos_uid146_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cstValOvfneg_uid147_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal signX_uid148_i_div22_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstOvf_uid149_i_div22_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cstOvf_uid149_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinal_uid150_i_div22_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinal_uid150_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prod_qy_GT_x_uid152_i_div22_conv_a : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid152_i_div22_conv_b : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid152_i_div22_conv_o : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid152_i_div22_conv_c : STD_LOGIC_VECTOR (0 downto 0);
    signal prod_qy_LT_x_uid153_i_div22_conv_a : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid153_i_div22_conv_b : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid153_i_div22_conv_o : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid153_i_div22_conv_c : STD_LOGIC_VECTOR (0 downto 0);
    signal resultSign_uid158_i_div22_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal resultSign_uid158_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signResFinal_uid159_i_div22_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal OverflowCond_uid160_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CondNegX_uid161_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid162_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CondPosX_uid163_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal postMuxSelect_uid164_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstSubFinal_uid166_i_div22_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal resFinalMP1_uid167_i_div22_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid167_i_div22_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid167_i_div22_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid167_i_div22_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalPostMux_uid168_i_div22_conv_in : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinalPostMux_uid168_i_div22_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinalIntDiv_uid169_i_div22_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinalIntDiv_uid169_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid171_i_div_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yPSE_uid173_i_div_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSE_uid173_i_div_conv_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSE_uid173_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSEA_uid175_i_div_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid175_i_div_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid175_i_div_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid175_i_div_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal yPS_uid176_i_div_conv_in : STD_LOGIC_VECTOR (31 downto 0);
    signal yPS_uid176_i_div_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal normYNoLeadOne_uid179_i_div_conv_in : STD_LOGIC_VECTOR (30 downto 0);
    signal normYNoLeadOne_uid179_i_div_conv_b : STD_LOGIC_VECTOR (30 downto 0);
    signal normYIsOneC2_uid180_i_div_conv_a : STD_LOGIC_VECTOR (31 downto 0);
    signal normYIsOneC2_uid180_i_div_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid180_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid183_i_div_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid184_i_div_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid184_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yIsZero_uid185_i_div_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yIsZero_uid185_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fxpInverseRes_uid190_i_div_conv_in : STD_LOGIC_VECTOR (38 downto 0);
    signal fxpInverseRes_uid190_i_div_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal invResPostOneHandling2_uid192_i_div_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal invResPostOneHandling2_uid192_i_div_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal rShiftCount_uid194_i_div_conv_a : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid194_i_div_conv_b : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid194_i_div_conv_o : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid194_i_div_conv_q : STD_LOGIC_VECTOR (6 downto 0);
    signal xPSX_uid195_i_div_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal xPSX_uid195_i_div_conv_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal xPSX_uid195_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zMsbY0_uid197_i_div_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xPSXE_uid198_i_div_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid198_i_div_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid198_i_div_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid198_i_div_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftInput_uid201_i_div_conv_in : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftInput_uid201_i_div_conv_b : STD_LOGIC_VECTOR (64 downto 0);
    signal prodPostRightShiftPost_uid203_i_div_conv_in : STD_LOGIC_VECTOR (62 downto 0);
    signal prodPostRightShiftPost_uid203_i_div_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal prodPostRightShiftPostRnd_uid205_i_div_conv_a : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid205_i_div_conv_b : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid205_i_div_conv_o : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid205_i_div_conv_q : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRndRange_uid206_i_div_conv_in : STD_LOGIC_VECTOR (32 downto 0);
    signal prodPostRightShiftPostRndRange_uid206_i_div_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal signX_uid209_i_div_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstOvf_uid210_i_div_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cstOvf_uid210_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinal_uid211_i_div_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinal_uid211_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prod_qy_GT_x_uid213_i_div_conv_a : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid213_i_div_conv_b : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid213_i_div_conv_o : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid213_i_div_conv_c : STD_LOGIC_VECTOR (0 downto 0);
    signal prod_qy_LT_x_uid214_i_div_conv_a : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid214_i_div_conv_b : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid214_i_div_conv_o : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid214_i_div_conv_c : STD_LOGIC_VECTOR (0 downto 0);
    signal resultSign_uid219_i_div_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal resultSign_uid219_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signResFinal_uid220_i_div_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal OverflowCond_uid221_i_div_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal OverflowCond_uid221_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CondNegX_uid222_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid223_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CondPosX_uid224_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal postMuxSelect_uid225_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstSubFinal_uid227_i_div_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal resFinalMP1_uid228_i_div_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid228_i_div_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid228_i_div_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid228_i_div_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalPostMux_uid229_i_div_conv_in : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinalPostMux_uid229_i_div_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinalIntDiv_uid230_i_div_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinalIntDiv_uid230_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid232_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid234_zCount_uid116_i_div22_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid234_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid235_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid237_zCount_uid116_i_div22_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid237_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid238_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid240_zCount_uid116_i_div22_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid240_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid243_zCount_uid116_i_div22_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid243_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (15 downto 0);
    signal zs_uid244_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid246_zCount_uid116_i_div22_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid246_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid249_zCount_uid116_i_div22_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid249_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid250_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid252_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid255_zCount_uid116_i_div22_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid255_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid256_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid258_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid261_zCount_uid116_i_div22_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid261_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid263_zCount_uid116_i_div22_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid264_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid265_zCount_uid116_i_div22_conv_q : STD_LOGIC_VECTOR (5 downto 0);
    signal yT1_uid283_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal lowRangeB_uid285_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid285_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid286_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid287_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid287_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid287_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid287_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid288_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal yT2_uid289_invPolyEval_b : STD_LOGIC_VECTOR (20 downto 0);
    signal lowRangeB_uid291_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid291_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid292_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid293_invPolyEval_a : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid293_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid293_invPolyEval_o : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid293_invPolyEval_q : STD_LOGIC_VECTOR (29 downto 0);
    signal s2_uid294_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal lowRangeB_uid297_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid297_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid298_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s3sumAHighB_uid299_invPolyEval_a : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid299_invPolyEval_b : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid299_invPolyEval_o : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid299_invPolyEval_q : STD_LOGIC_VECTOR (38 downto 0);
    signal s3_uid300_invPolyEval_q : STD_LOGIC_VECTOR (40 downto 0);
    signal vCount_uid304_zCount_uid177_i_div_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid304_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid307_zCount_uid177_i_div_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid307_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid310_zCount_uid177_i_div_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid310_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid313_zCount_uid177_i_div_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid313_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid316_zCount_uid177_i_div_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid316_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid319_zCount_uid177_i_div_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid319_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid322_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid325_zCount_uid177_i_div_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid325_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid328_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid331_zCount_uid177_i_div_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid331_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid333_zCount_uid177_i_div_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid334_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid335_zCount_uid177_i_div_conv_q : STD_LOGIC_VECTOR (5 downto 0);
    signal yT1_uid353_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal lowRangeB_uid355_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid355_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid356_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid357_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid357_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid357_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid357_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid358_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal yT2_uid359_invPolyEval_b : STD_LOGIC_VECTOR (20 downto 0);
    signal lowRangeB_uid361_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid361_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid362_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid363_invPolyEval_a : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid363_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid363_invPolyEval_o : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid363_invPolyEval_q : STD_LOGIC_VECTOR (29 downto 0);
    signal s2_uid364_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal lowRangeB_uid367_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid367_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid368_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s3sumAHighB_uid369_invPolyEval_a : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid369_invPolyEval_b : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid369_invPolyEval_o : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid369_invPolyEval_q : STD_LOGIC_VECTOR (38 downto 0);
    signal s3_uid370_invPolyEval_q : STD_LOGIC_VECTOR (40 downto 0);
    signal osig_uid373_pT1_uid284_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid376_pT2_uid290_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal nx_mergedSignalTM_uid390_pT3_uid296_invPolyEval_q : STD_LOGIC_VECTOR (23 downto 0);
    signal aboveLeftY_bottomExtension_uid395_pT3_uid296_invPolyEval_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aboveLeftY_mergedSignalTM_uid397_pT3_uid296_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal rightBottomX_bottomExtension_uid399_pT3_uid296_invPolyEval_q : STD_LOGIC_VECTOR (11 downto 0);
    signal rightBottomX_mergedSignalTM_uid401_pT3_uid296_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid407_pT3_uid296_invPolyEval_in : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid407_pT3_uid296_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal highBBits_uid408_pT3_uid296_invPolyEval_b : STD_LOGIC_VECTOR (18 downto 0);
    signal lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_a : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_b : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_o : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_q : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0_uid410_pT3_uid296_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal os_uid411_pT3_uid296_invPolyEval_in : STD_LOGIC_VECTOR (52 downto 0);
    signal os_uid411_pT3_uid296_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal osig_uid414_pT1_uid354_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid417_pT2_uid360_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal nx_mergedSignalTM_uid431_pT3_uid366_invPolyEval_q : STD_LOGIC_VECTOR (23 downto 0);
    signal aboveLeftY_mergedSignalTM_uid438_pT3_uid366_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal rightBottomX_mergedSignalTM_uid442_pT3_uid366_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid448_pT3_uid366_invPolyEval_in : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid448_pT3_uid366_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal highBBits_uid449_pT3_uid366_invPolyEval_b : STD_LOGIC_VECTOR (18 downto 0);
    signal lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_a : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_b : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_o : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_q : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0_uid451_pT3_uid366_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal os_uid452_pT3_uid366_invPolyEval_in : STD_LOGIC_VECTOR (52 downto 0);
    signal os_uid452_pT3_uid366_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal bgTrunc_i_mul20_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul20_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul24_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul24_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul34_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul34_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul35_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul35_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul20_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul20_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul20_conv_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul20_conv_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul20_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul20_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul20_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul20_conv_bs6_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul20_conv_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul20_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul20_conv_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul20_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul20_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul20_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul20_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul20_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul20_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul20_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul24_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul24_conv_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul24_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul24_conv_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul24_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul24_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul24_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul24_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul24_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul24_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul24_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul34_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul34_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul34_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul34_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul34_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul34_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul34_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul34_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul35_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul35_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul35_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul35_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul35_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul35_conv_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul35_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul35_conv_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul35_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul35_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul35_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul35_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul35_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul35_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul35_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage0Idx1Rng16_uid557_normY_uid117_i_div22_conv_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid557_normY_uid117_i_div22_conv_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid558_normY_uid117_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid562_normY_uid117_i_div22_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid562_normY_uid117_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid564_normY_uid117_i_div22_conv_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid564_normY_uid117_i_div22_conv_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid565_normY_uid117_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx2Rng8_uid567_normY_uid117_i_div22_conv_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2Rng8_uid567_normY_uid117_i_div22_conv_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2_uid568_normY_uid117_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx3Rng12_uid570_normY_uid117_i_div22_conv_in : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage1Idx3Rng12_uid570_normY_uid117_i_div22_conv_b : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage1Idx3_uid571_normY_uid117_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid573_normY_uid117_i_div22_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid573_normY_uid117_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid575_normY_uid117_i_div22_conv_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid575_normY_uid117_i_div22_conv_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid576_normY_uid117_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx2Rng2_uid578_normY_uid117_i_div22_conv_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx2Rng2_uid578_normY_uid117_i_div22_conv_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx2_uid579_normY_uid117_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx3Rng3_uid581_normY_uid117_i_div22_conv_in : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage2Idx3Rng3_uid581_normY_uid117_i_div22_conv_b : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage2Idx3_uid582_normY_uid117_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid584_normY_uid117_i_div22_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid584_normY_uid117_i_div22_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bs6_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bs7_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bs10_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid139_i_div22_conv_bs11_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid139_i_div22_conv_join_12_q : STD_LOGIC_VECTOR (65 downto 0);
    signal prodXInvY_uid139_i_div22_conv_align_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal prodXInvY_uid139_i_div22_conv_align_13_qint : STD_LOGIC_VECTOR (55 downto 0);
    signal prodXInvY_uid139_i_div22_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid139_i_div22_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid139_i_div22_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid139_i_div22_conv_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to32_uid604_in : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to32_uid604_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng32_uid605_prodPostRightShift_uid141_i_div22_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftStage0Idx1_uid606_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to64_uid607_in : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to64_uid607_b : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx2Rng64_uid608_prodPostRightShift_uid141_i_div22_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx2_uid609_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal stageIndexName_to65_uid610_in : STD_LOGIC_VECTOR (64 downto 0);
    signal stageIndexName_to65_uid610_b : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to8_uid614_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid614_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid615_prodPostRightShift_uid141_i_div22_conv_b : STD_LOGIC_VECTOR (56 downto 0);
    signal rightShiftStage1Idx1_uid616_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to16_uid617_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid617_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage1Idx2Rng16_uid618_prodPostRightShift_uid141_i_div22_conv_b : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx2_uid619_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to24_uid620_in : STD_LOGIC_VECTOR (23 downto 0);
    signal seMsb_to24_uid620_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx3Rng24_uid621_prodPostRightShift_uid141_i_div22_conv_b : STD_LOGIC_VECTOR (40 downto 0);
    signal rightShiftStage1Idx3_uid622_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to2_uid625_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid625_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2Idx1Rng2_uid626_prodPostRightShift_uid141_i_div22_conv_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage2Idx1_uid627_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to4_uid628_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid628_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx2Rng4_uid629_prodPostRightShift_uid141_i_div22_conv_b : STD_LOGIC_VECTOR (60 downto 0);
    signal rightShiftStage2Idx2_uid630_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to6_uid631_in : STD_LOGIC_VECTOR (5 downto 0);
    signal seMsb_to6_uid631_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage2Idx3Rng6_uid632_prodPostRightShift_uid141_i_div22_conv_b : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage2Idx3_uid633_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage3Idx1Rng1_uid636_prodPostRightShift_uid141_i_div22_conv_b : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage3Idx1_uid637_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid151_i_div22_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid151_i_div22_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid151_i_div22_conv_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid151_i_div22_conv_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid151_i_div22_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid151_i_div22_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid151_i_div22_conv_bs5_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid151_i_div22_conv_bs6_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid151_i_div22_conv_bs10_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid151_i_div22_conv_join_11_q : STD_LOGIC_VECTOR (63 downto 0);
    signal prodResY_uid151_i_div22_conv_align_12_q : STD_LOGIC_VECTOR (50 downto 0);
    signal prodResY_uid151_i_div22_conv_align_12_qint : STD_LOGIC_VECTOR (50 downto 0);
    signal prodResY_uid151_i_div22_conv_result_add_0_0_a : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid151_i_div22_conv_result_add_0_0_b : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid151_i_div22_conv_result_add_0_0_o : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid151_i_div22_conv_result_add_0_0_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage0Idx1Rng16_uid659_normY_uid178_i_div_conv_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid659_normY_uid178_i_div_conv_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid660_normY_uid178_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid664_normY_uid178_i_div_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid664_normY_uid178_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid666_normY_uid178_i_div_conv_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid666_normY_uid178_i_div_conv_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid667_normY_uid178_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx2Rng8_uid669_normY_uid178_i_div_conv_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2Rng8_uid669_normY_uid178_i_div_conv_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2_uid670_normY_uid178_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx3Rng12_uid672_normY_uid178_i_div_conv_in : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage1Idx3Rng12_uid672_normY_uid178_i_div_conv_b : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage1Idx3_uid673_normY_uid178_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid675_normY_uid178_i_div_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid675_normY_uid178_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid677_normY_uid178_i_div_conv_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid677_normY_uid178_i_div_conv_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid678_normY_uid178_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx2Rng2_uid680_normY_uid178_i_div_conv_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx2Rng2_uid680_normY_uid178_i_div_conv_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx2_uid681_normY_uid178_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx3Rng3_uid683_normY_uid178_i_div_conv_in : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage2Idx3Rng3_uid683_normY_uid178_i_div_conv_b : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage2Idx3_uid684_normY_uid178_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid686_normY_uid178_i_div_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid686_normY_uid178_i_div_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXInvY_uid200_i_div_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid200_i_div_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid200_i_div_conv_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid200_i_div_conv_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid200_i_div_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid200_i_div_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid200_i_div_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal prodXInvY_uid200_i_div_conv_bs6_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid200_i_div_conv_bs7_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid200_i_div_conv_bs10_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid200_i_div_conv_bs11_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid200_i_div_conv_join_12_q : STD_LOGIC_VECTOR (65 downto 0);
    signal prodXInvY_uid200_i_div_conv_align_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal prodXInvY_uid200_i_div_conv_align_13_qint : STD_LOGIC_VECTOR (55 downto 0);
    signal prodXInvY_uid200_i_div_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid200_i_div_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid200_i_div_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid200_i_div_conv_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to32_uid706_in : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to32_uid706_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng32_uid707_prodPostRightShift_uid202_i_div_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftStage0Idx1_uid708_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to64_uid709_in : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to64_uid709_b : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx2Rng64_uid710_prodPostRightShift_uid202_i_div_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx2_uid711_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal stageIndexName_to65_uid712_in : STD_LOGIC_VECTOR (64 downto 0);
    signal stageIndexName_to65_uid712_b : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to8_uid716_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid716_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid717_prodPostRightShift_uid202_i_div_conv_b : STD_LOGIC_VECTOR (56 downto 0);
    signal rightShiftStage1Idx1_uid718_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to16_uid719_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid719_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage1Idx2Rng16_uid720_prodPostRightShift_uid202_i_div_conv_b : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx2_uid721_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to24_uid722_in : STD_LOGIC_VECTOR (23 downto 0);
    signal seMsb_to24_uid722_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx3Rng24_uid723_prodPostRightShift_uid202_i_div_conv_b : STD_LOGIC_VECTOR (40 downto 0);
    signal rightShiftStage1Idx3_uid724_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to2_uid727_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid727_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2Idx1Rng2_uid728_prodPostRightShift_uid202_i_div_conv_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage2Idx1_uid729_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to4_uid730_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid730_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx2Rng4_uid731_prodPostRightShift_uid202_i_div_conv_b : STD_LOGIC_VECTOR (60 downto 0);
    signal rightShiftStage2Idx2_uid732_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to6_uid733_in : STD_LOGIC_VECTOR (5 downto 0);
    signal seMsb_to6_uid733_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage2Idx3Rng6_uid734_prodPostRightShift_uid202_i_div_conv_b : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage2Idx3_uid735_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage3Idx1Rng1_uid738_prodPostRightShift_uid202_i_div_conv_b : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage3Idx1_uid739_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid212_i_div_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid212_i_div_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid212_i_div_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid212_i_div_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid212_i_div_conv_bs6_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid212_i_div_conv_bs10_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid212_i_div_conv_join_11_q : STD_LOGIC_VECTOR (63 downto 0);
    signal prodResY_uid212_i_div_conv_align_12_q : STD_LOGIC_VECTOR (50 downto 0);
    signal prodResY_uid212_i_div_conv_align_12_qint : STD_LOGIC_VECTOR (50 downto 0);
    signal prodResY_uid212_i_div_conv_result_add_0_0_a : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid212_i_div_conv_result_add_0_0_b : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid212_i_div_conv_result_add_0_0_o : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid212_i_div_conv_result_add_0_0_q : STD_LOGIC_VECTOR (64 downto 0);
    signal memoryC0_uid267_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC0_uid267_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid267_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid267_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid267_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid267_invTabGen_lutmem_r : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC1_uid270_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC1_uid270_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid270_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid270_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid270_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid270_invTabGen_lutmem_r : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC2_uid273_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC2_uid273_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid273_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid273_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid273_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid273_invTabGen_lutmem_r : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC3_uid276_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC3_uid276_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid276_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid276_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid276_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid276_invTabGen_lutmem_r : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC0_uid337_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC0_uid337_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid337_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid337_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid337_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid337_invTabGen_lutmem_r : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC1_uid340_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC1_uid340_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid340_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid340_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid340_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid340_invTabGen_lutmem_r : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC2_uid343_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC2_uid343_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid343_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid343_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid343_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid343_invTabGen_lutmem_r : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC3_uid346_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC3_uid346_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid346_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid346_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid346_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid346_invTabGen_lutmem_r : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_cmp45_conv_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp48_conv_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_reset : std_logic;
    type prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of prodXY_uid372_pT1_uid284_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid372_pT1_uid284_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid372_pT1_uid284_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid372_pT1_uid284_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_l : prodXY_uid372_pT1_uid284_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(28 downto 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_p : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_u : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_w : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_x : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_y : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_s : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid372_pT1_uid284_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_reset : std_logic;
    type prodXY_uid375_pT2_uid290_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(20 downto 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_a0 : prodXY_uid375_pT2_uid290_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid375_pT2_uid290_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid375_pT2_uid290_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(22 downto 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_c0 : prodXY_uid375_pT2_uid290_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid375_pT2_uid290_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid375_pT2_uid290_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(21 downto 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_l : prodXY_uid375_pT2_uid290_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(44 downto 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_p : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_u : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_w : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_x : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_y : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_s : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_qq : STD_LOGIC_VECTOR (43 downto 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_q : STD_LOGIC_VECTOR (43 downto 0);
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid375_pT2_uid290_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_reset : std_logic;
    type sm0_uid404_pT3_uid296_invPolyEval_cma_a0type is array(NATURAL range <>) of SIGNED(17 downto 0);
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_a0 : sm0_uid404_pT3_uid296_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid404_pT3_uid296_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_c0 : sm0_uid404_pT3_uid296_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid404_pT3_uid296_invPolyEval_cma_c0 : signal is true;
    type sm0_uid404_pT3_uid296_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(35 downto 0);
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_p : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_u : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_w : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_x : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_y : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_s : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid404_pT3_uid296_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_reset : std_logic;
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid413_pT1_uid354_invPolyEval_cma_a0 : signal is true;
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid413_pT1_uid354_invPolyEval_cma_c0 : signal is true;
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_l : prodXY_uid372_pT1_uid284_invPolyEval_cma_ltype(0 to 0);
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_p : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_u : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_w : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_x : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_y : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_s : prodXY_uid372_pT1_uid284_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid413_pT1_uid354_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_reset : std_logic;
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_a0 : prodXY_uid375_pT2_uid290_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid416_pT2_uid360_invPolyEval_cma_a0 : signal is true;
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_c0 : prodXY_uid375_pT2_uid290_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid416_pT2_uid360_invPolyEval_cma_c0 : signal is true;
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_l : prodXY_uid375_pT2_uid290_invPolyEval_cma_ltype(0 to 0);
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_p : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_u : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_w : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_x : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_y : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_s : prodXY_uid375_pT2_uid290_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_qq : STD_LOGIC_VECTOR (43 downto 0);
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_q : STD_LOGIC_VECTOR (43 downto 0);
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid416_pT2_uid360_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_reset : std_logic;
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_a0 : sm0_uid404_pT3_uid296_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid445_pT3_uid366_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_c0 : sm0_uid404_pT3_uid296_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid445_pT3_uid366_invPolyEval_cma_c0 : signal is true;
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_p : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_u : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_w : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_x : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_y : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_s : sm0_uid404_pT3_uid296_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid445_pT3_uid366_invPolyEval_cma_ena1 : std_logic;
    signal i_mul20_conv_im0_cma_reset : std_logic;
    type i_mul20_conv_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul20_conv_im0_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul20_conv_im0_cma_a0 : signal is true;
    signal i_mul20_conv_im0_cma_c0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul20_conv_im0_cma_c0 : signal is true;
    type i_mul20_conv_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul20_conv_im0_cma_p : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul20_conv_im0_cma_u : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul20_conv_im0_cma_w : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul20_conv_im0_cma_x : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul20_conv_im0_cma_y : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul20_conv_im0_cma_s : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul20_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul20_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul20_conv_im0_cma_ena0 : std_logic;
    signal i_mul20_conv_im0_cma_ena1 : std_logic;
    signal i_mul20_conv_im10_cma_reset : std_logic;
    signal i_mul20_conv_im10_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul20_conv_im10_cma_a0 : signal is true;
    signal i_mul20_conv_im10_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul20_conv_im10_cma_c0 : signal is true;
    type i_mul20_conv_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_mul20_conv_im10_cma_p : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul20_conv_im10_cma_u : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul20_conv_im10_cma_w : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul20_conv_im10_cma_x : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul20_conv_im10_cma_y : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul20_conv_im10_cma_s : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul20_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul20_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul20_conv_im10_cma_ena0 : std_logic;
    signal i_mul20_conv_im10_cma_ena1 : std_logic;
    signal i_mul24_conv_im0_cma_reset : std_logic;
    signal i_mul24_conv_im0_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul24_conv_im0_cma_a0 : signal is true;
    signal i_mul24_conv_im0_cma_c0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul24_conv_im0_cma_c0 : signal is true;
    signal i_mul24_conv_im0_cma_p : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_im0_cma_u : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_im0_cma_w : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_im0_cma_x : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_im0_cma_y : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_im0_cma_s : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul24_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul24_conv_im0_cma_ena0 : std_logic;
    signal i_mul24_conv_im0_cma_ena1 : std_logic;
    signal i_mul24_conv_im10_cma_reset : std_logic;
    signal i_mul24_conv_im10_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul24_conv_im10_cma_a0 : signal is true;
    signal i_mul24_conv_im10_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul24_conv_im10_cma_c0 : signal is true;
    signal i_mul24_conv_im10_cma_p : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_im10_cma_u : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_im10_cma_w : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_im10_cma_x : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_im10_cma_y : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_im10_cma_s : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul24_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul24_conv_im10_cma_ena0 : std_logic;
    signal i_mul24_conv_im10_cma_ena1 : std_logic;
    signal i_mul34_conv_im0_cma_reset : std_logic;
    signal i_mul34_conv_im0_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul34_conv_im0_cma_a0 : signal is true;
    signal i_mul34_conv_im0_cma_c0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul34_conv_im0_cma_c0 : signal is true;
    signal i_mul34_conv_im0_cma_p : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul34_conv_im0_cma_u : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul34_conv_im0_cma_w : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul34_conv_im0_cma_x : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul34_conv_im0_cma_y : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul34_conv_im0_cma_s : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul34_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul34_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul34_conv_im0_cma_ena0 : std_logic;
    signal i_mul34_conv_im0_cma_ena1 : std_logic;
    signal i_mul34_conv_im10_cma_reset : std_logic;
    signal i_mul34_conv_im10_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul34_conv_im10_cma_a0 : signal is true;
    signal i_mul34_conv_im10_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul34_conv_im10_cma_c0 : signal is true;
    signal i_mul34_conv_im10_cma_p : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul34_conv_im10_cma_u : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul34_conv_im10_cma_w : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul34_conv_im10_cma_x : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul34_conv_im10_cma_y : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul34_conv_im10_cma_s : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul34_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul34_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul34_conv_im10_cma_ena0 : std_logic;
    signal i_mul34_conv_im10_cma_ena1 : std_logic;
    signal i_mul35_conv_im0_cma_reset : std_logic;
    signal i_mul35_conv_im0_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul35_conv_im0_cma_a0 : signal is true;
    signal i_mul35_conv_im0_cma_c0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul35_conv_im0_cma_c0 : signal is true;
    signal i_mul35_conv_im0_cma_p : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul35_conv_im0_cma_u : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul35_conv_im0_cma_w : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul35_conv_im0_cma_x : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul35_conv_im0_cma_y : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul35_conv_im0_cma_s : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal i_mul35_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul35_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul35_conv_im0_cma_ena0 : std_logic;
    signal i_mul35_conv_im0_cma_ena1 : std_logic;
    signal i_mul35_conv_im10_cma_reset : std_logic;
    signal i_mul35_conv_im10_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul35_conv_im10_cma_a0 : signal is true;
    signal i_mul35_conv_im10_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul35_conv_im10_cma_c0 : signal is true;
    signal i_mul35_conv_im10_cma_p : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul35_conv_im10_cma_u : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul35_conv_im10_cma_w : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul35_conv_im10_cma_x : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul35_conv_im10_cma_y : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul35_conv_im10_cma_s : i_mul20_conv_im10_cma_ptype(0 to 0);
    signal i_mul35_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul35_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul35_conv_im10_cma_ena0 : std_logic;
    signal i_mul35_conv_im10_cma_ena1 : std_logic;
    signal prodXInvY_uid139_i_div22_conv_im0_cma_reset : std_logic;
    signal prodXInvY_uid139_i_div22_conv_im0_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid139_i_div22_conv_im0_cma_a0 : signal is true;
    signal prodXInvY_uid139_i_div22_conv_im0_cma_c0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid139_i_div22_conv_im0_cma_c0 : signal is true;
    signal prodXInvY_uid139_i_div22_conv_im0_cma_p : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im0_cma_u : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im0_cma_w : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im0_cma_x : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im0_cma_y : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im0_cma_s : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXInvY_uid139_i_div22_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXInvY_uid139_i_div22_conv_im0_cma_ena0 : std_logic;
    signal prodXInvY_uid139_i_div22_conv_im0_cma_ena1 : std_logic;
    signal prodXInvY_uid139_i_div22_conv_im9_cma_reset : std_logic;
    type prodXInvY_uid139_i_div22_conv_im9_cma_a0type is array(NATURAL range <>) of UNSIGNED(14 downto 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_a0 : prodXInvY_uid139_i_div22_conv_im9_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid139_i_div22_conv_im9_cma_a0 : signal is true;
    signal prodXInvY_uid139_i_div22_conv_im9_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_ltype(0 to 0);
    attribute preserve of prodXInvY_uid139_i_div22_conv_im9_cma_c0 : signal is true;
    type prodXInvY_uid139_i_div22_conv_im9_cma_ltype is array(NATURAL range <>) of SIGNED(15 downto 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_l : prodXInvY_uid139_i_div22_conv_im9_cma_ltype(0 to 0);
    type prodXInvY_uid139_i_div22_conv_im9_cma_ptype is array(NATURAL range <>) of SIGNED(30 downto 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_p : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_u : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_w : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_x : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_y : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_s : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_qq : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_q : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXInvY_uid139_i_div22_conv_im9_cma_ena0 : std_logic;
    signal prodXInvY_uid139_i_div22_conv_im9_cma_ena1 : std_logic;
    signal prodResY_uid151_i_div22_conv_im0_cma_reset : std_logic;
    signal prodResY_uid151_i_div22_conv_im0_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodResY_uid151_i_div22_conv_im0_cma_a0 : signal is true;
    signal prodResY_uid151_i_div22_conv_im0_cma_c0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodResY_uid151_i_div22_conv_im0_cma_c0 : signal is true;
    signal prodResY_uid151_i_div22_conv_im0_cma_p : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im0_cma_u : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im0_cma_w : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im0_cma_x : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im0_cma_y : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im0_cma_s : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodResY_uid151_i_div22_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodResY_uid151_i_div22_conv_im0_cma_ena0 : std_logic;
    signal prodResY_uid151_i_div22_conv_im0_cma_ena1 : std_logic;
    signal prodResY_uid151_i_div22_conv_im8_cma_reset : std_logic;
    signal prodResY_uid151_i_div22_conv_im8_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodResY_uid151_i_div22_conv_im8_cma_a0 : signal is true;
    signal prodResY_uid151_i_div22_conv_im8_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodResY_uid151_i_div22_conv_im8_cma_c0 : signal is true;
    type prodResY_uid151_i_div22_conv_im8_cma_ptype is array(NATURAL range <>) of SIGNED(27 downto 0);
    signal prodResY_uid151_i_div22_conv_im8_cma_p : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im8_cma_u : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im8_cma_w : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im8_cma_x : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im8_cma_y : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im8_cma_s : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_im8_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodResY_uid151_i_div22_conv_im8_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal prodResY_uid151_i_div22_conv_im8_cma_ena0 : std_logic;
    signal prodResY_uid151_i_div22_conv_im8_cma_ena1 : std_logic;
    signal prodXInvY_uid200_i_div_conv_im0_cma_reset : std_logic;
    signal prodXInvY_uid200_i_div_conv_im0_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid200_i_div_conv_im0_cma_a0 : signal is true;
    signal prodXInvY_uid200_i_div_conv_im0_cma_c0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid200_i_div_conv_im0_cma_c0 : signal is true;
    signal prodXInvY_uid200_i_div_conv_im0_cma_p : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im0_cma_u : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im0_cma_w : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im0_cma_x : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im0_cma_y : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im0_cma_s : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXInvY_uid200_i_div_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXInvY_uid200_i_div_conv_im0_cma_ena0 : std_logic;
    signal prodXInvY_uid200_i_div_conv_im0_cma_ena1 : std_logic;
    signal prodXInvY_uid200_i_div_conv_im9_cma_reset : std_logic;
    signal prodXInvY_uid200_i_div_conv_im9_cma_a0 : prodXInvY_uid139_i_div22_conv_im9_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid200_i_div_conv_im9_cma_a0 : signal is true;
    signal prodXInvY_uid200_i_div_conv_im9_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_ltype(0 to 0);
    attribute preserve of prodXInvY_uid200_i_div_conv_im9_cma_c0 : signal is true;
    signal prodXInvY_uid200_i_div_conv_im9_cma_l : prodXInvY_uid139_i_div22_conv_im9_cma_ltype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im9_cma_p : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im9_cma_u : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im9_cma_w : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im9_cma_x : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im9_cma_y : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im9_cma_s : prodXInvY_uid139_i_div22_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid200_i_div_conv_im9_cma_qq : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXInvY_uid200_i_div_conv_im9_cma_q : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXInvY_uid200_i_div_conv_im9_cma_ena0 : std_logic;
    signal prodXInvY_uid200_i_div_conv_im9_cma_ena1 : std_logic;
    signal prodResY_uid212_i_div_conv_im0_cma_reset : std_logic;
    signal prodResY_uid212_i_div_conv_im0_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodResY_uid212_i_div_conv_im0_cma_a0 : signal is true;
    signal prodResY_uid212_i_div_conv_im0_cma_c0 : i_mul20_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodResY_uid212_i_div_conv_im0_cma_c0 : signal is true;
    signal prodResY_uid212_i_div_conv_im0_cma_p : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im0_cma_u : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im0_cma_w : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im0_cma_x : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im0_cma_y : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im0_cma_s : i_mul20_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodResY_uid212_i_div_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodResY_uid212_i_div_conv_im0_cma_ena0 : std_logic;
    signal prodResY_uid212_i_div_conv_im0_cma_ena1 : std_logic;
    signal prodResY_uid212_i_div_conv_im8_cma_reset : std_logic;
    signal prodResY_uid212_i_div_conv_im8_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodResY_uid212_i_div_conv_im8_cma_a0 : signal is true;
    signal prodResY_uid212_i_div_conv_im8_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodResY_uid212_i_div_conv_im8_cma_c0 : signal is true;
    signal prodResY_uid212_i_div_conv_im8_cma_p : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im8_cma_u : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im8_cma_w : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im8_cma_x : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im8_cma_y : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im8_cma_s : prodResY_uid151_i_div22_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_im8_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodResY_uid212_i_div_conv_im8_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal prodResY_uid212_i_div_conv_im8_cma_ena0 : std_logic;
    signal prodResY_uid212_i_div_conv_im8_cma_ena1 : std_logic;
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_reset : std_logic;
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 1);
    attribute preserve of multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_a0 : signal is true;
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_c0 : sm0_uid404_pT3_uid296_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_c0 : signal is true;
    type multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_l : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    type multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(36 downto 0);
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_p : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ptype(0 to 1);
    type multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype is array(NATURAL range <>) of SIGNED(37 downto 0);
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_u : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 1);
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_w : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_x : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_y : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_s : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_qq : STD_LOGIC_VECTOR (36 downto 0);
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_q : STD_LOGIC_VECTOR (36 downto 0);
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ena0 : std_logic;
    signal multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ena1 : std_logic;
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_reset : std_logic;
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 1);
    attribute preserve of multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_a0 : signal is true;
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_c0 : sm0_uid404_pT3_uid296_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_c0 : signal is true;
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_l : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_p : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ptype(0 to 1);
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_u : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 1);
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_w : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_x : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_y : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_s : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_qq : STD_LOGIC_VECTOR (36 downto 0);
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_q : STD_LOGIC_VECTOR (36 downto 0);
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_ena0 : std_logic;
    signal multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_ena1 : std_logic;
    signal i_mul20_conv_ma3_cma_reset : std_logic;
    signal i_mul20_conv_ma3_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of i_mul20_conv_ma3_cma_a0 : signal is true;
    signal i_mul20_conv_ma3_cma_c0 : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of i_mul20_conv_ma3_cma_c0 : signal is true;
    signal i_mul20_conv_ma3_cma_l : prodXY_uid372_pT1_uid284_invPolyEval_cma_ltype(0 to 1);
    type i_mul20_conv_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_mul20_conv_ma3_cma_p : i_mul20_conv_ma3_cma_ptype(0 to 1);
    type i_mul20_conv_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_mul20_conv_ma3_cma_u : i_mul20_conv_ma3_cma_utype(0 to 1);
    signal i_mul20_conv_ma3_cma_w : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul20_conv_ma3_cma_x : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul20_conv_ma3_cma_y : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul20_conv_ma3_cma_s : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul20_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul20_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul20_conv_ma3_cma_ena0 : std_logic;
    signal i_mul20_conv_ma3_cma_ena1 : std_logic;
    signal i_mul24_conv_ma3_cma_reset : std_logic;
    signal i_mul24_conv_ma3_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of i_mul24_conv_ma3_cma_a0 : signal is true;
    signal i_mul24_conv_ma3_cma_c0 : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of i_mul24_conv_ma3_cma_c0 : signal is true;
    signal i_mul24_conv_ma3_cma_l : prodXY_uid372_pT1_uid284_invPolyEval_cma_ltype(0 to 1);
    signal i_mul24_conv_ma3_cma_p : i_mul20_conv_ma3_cma_ptype(0 to 1);
    signal i_mul24_conv_ma3_cma_u : i_mul20_conv_ma3_cma_utype(0 to 1);
    signal i_mul24_conv_ma3_cma_w : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul24_conv_ma3_cma_x : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul24_conv_ma3_cma_y : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul24_conv_ma3_cma_s : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul24_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul24_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul24_conv_ma3_cma_ena0 : std_logic;
    signal i_mul24_conv_ma3_cma_ena1 : std_logic;
    signal i_mul34_conv_ma3_cma_reset : std_logic;
    signal i_mul34_conv_ma3_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of i_mul34_conv_ma3_cma_a0 : signal is true;
    signal i_mul34_conv_ma3_cma_c0 : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of i_mul34_conv_ma3_cma_c0 : signal is true;
    signal i_mul34_conv_ma3_cma_l : prodXY_uid372_pT1_uid284_invPolyEval_cma_ltype(0 to 1);
    signal i_mul34_conv_ma3_cma_p : i_mul20_conv_ma3_cma_ptype(0 to 1);
    signal i_mul34_conv_ma3_cma_u : i_mul20_conv_ma3_cma_utype(0 to 1);
    signal i_mul34_conv_ma3_cma_w : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul34_conv_ma3_cma_x : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul34_conv_ma3_cma_y : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul34_conv_ma3_cma_s : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul34_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul34_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul34_conv_ma3_cma_ena0 : std_logic;
    signal i_mul34_conv_ma3_cma_ena1 : std_logic;
    signal i_mul35_conv_ma3_cma_reset : std_logic;
    signal i_mul35_conv_ma3_cma_a0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of i_mul35_conv_ma3_cma_a0 : signal is true;
    signal i_mul35_conv_ma3_cma_c0 : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of i_mul35_conv_ma3_cma_c0 : signal is true;
    signal i_mul35_conv_ma3_cma_l : prodXY_uid372_pT1_uid284_invPolyEval_cma_ltype(0 to 1);
    signal i_mul35_conv_ma3_cma_p : i_mul20_conv_ma3_cma_ptype(0 to 1);
    signal i_mul35_conv_ma3_cma_u : i_mul20_conv_ma3_cma_utype(0 to 1);
    signal i_mul35_conv_ma3_cma_w : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul35_conv_ma3_cma_x : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul35_conv_ma3_cma_y : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul35_conv_ma3_cma_s : i_mul20_conv_ma3_cma_utype(0 to 0);
    signal i_mul35_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul35_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul35_conv_ma3_cma_ena0 : std_logic;
    signal i_mul35_conv_ma3_cma_ena1 : std_logic;
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_reset : std_logic;
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 1);
    attribute preserve of prodXInvY_uid139_i_div22_conv_ma3_cma_a0 : signal is true;
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_c0 : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of prodXInvY_uid139_i_div22_conv_ma3_cma_c0 : signal is true;
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_l : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_p : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 1);
    type prodXInvY_uid139_i_div22_conv_ma3_cma_utype is array(NATURAL range <>) of SIGNED(38 downto 0);
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_u : prodXInvY_uid139_i_div22_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_w : prodXInvY_uid139_i_div22_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_x : prodXInvY_uid139_i_div22_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_y : prodXInvY_uid139_i_div22_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_s : prodXInvY_uid139_i_div22_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_qq : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_q : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_ena0 : std_logic;
    signal prodXInvY_uid139_i_div22_conv_ma3_cma_ena1 : std_logic;
    signal prodResY_uid151_i_div22_conv_ma3_cma_reset : std_logic;
    signal prodResY_uid151_i_div22_conv_ma3_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 1);
    attribute preserve of prodResY_uid151_i_div22_conv_ma3_cma_a0 : signal is true;
    signal prodResY_uid151_i_div22_conv_ma3_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_c0type(0 to 1);
    attribute preserve of prodResY_uid151_i_div22_conv_ma3_cma_c0 : signal is true;
    signal prodResY_uid151_i_div22_conv_ma3_cma_l : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    type prodResY_uid151_i_div22_conv_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(32 downto 0);
    signal prodResY_uid151_i_div22_conv_ma3_cma_p : prodResY_uid151_i_div22_conv_ma3_cma_ptype(0 to 1);
    signal prodResY_uid151_i_div22_conv_ma3_cma_u : i_mul20_conv_ma3_cma_ptype(0 to 1);
    signal prodResY_uid151_i_div22_conv_ma3_cma_w : i_mul20_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_ma3_cma_x : i_mul20_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_ma3_cma_y : i_mul20_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_ma3_cma_s : i_mul20_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid151_i_div22_conv_ma3_cma_qq : STD_LOGIC_VECTOR (32 downto 0);
    signal prodResY_uid151_i_div22_conv_ma3_cma_q : STD_LOGIC_VECTOR (32 downto 0);
    signal prodResY_uid151_i_div22_conv_ma3_cma_ena0 : std_logic;
    signal prodResY_uid151_i_div22_conv_ma3_cma_ena1 : std_logic;
    signal prodXInvY_uid200_i_div_conv_ma3_cma_reset : std_logic;
    signal prodXInvY_uid200_i_div_conv_ma3_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 1);
    attribute preserve of prodXInvY_uid200_i_div_conv_ma3_cma_a0 : signal is true;
    signal prodXInvY_uid200_i_div_conv_ma3_cma_c0 : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of prodXInvY_uid200_i_div_conv_ma3_cma_c0 : signal is true;
    signal prodXInvY_uid200_i_div_conv_ma3_cma_l : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    signal prodXInvY_uid200_i_div_conv_ma3_cma_p : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_utype(0 to 1);
    signal prodXInvY_uid200_i_div_conv_ma3_cma_u : prodXInvY_uid139_i_div22_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid200_i_div_conv_ma3_cma_w : prodXInvY_uid139_i_div22_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid200_i_div_conv_ma3_cma_x : prodXInvY_uid139_i_div22_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid200_i_div_conv_ma3_cma_y : prodXInvY_uid139_i_div22_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid200_i_div_conv_ma3_cma_s : prodXInvY_uid139_i_div22_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid200_i_div_conv_ma3_cma_qq : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXInvY_uid200_i_div_conv_ma3_cma_q : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXInvY_uid200_i_div_conv_ma3_cma_ena0 : std_logic;
    signal prodXInvY_uid200_i_div_conv_ma3_cma_ena1 : std_logic;
    signal prodResY_uid212_i_div_conv_ma3_cma_reset : std_logic;
    signal prodResY_uid212_i_div_conv_ma3_cma_a0 : i_mul20_conv_im0_cma_a0type(0 to 1);
    attribute preserve of prodResY_uid212_i_div_conv_ma3_cma_a0 : signal is true;
    signal prodResY_uid212_i_div_conv_ma3_cma_c0 : prodXY_uid372_pT1_uid284_invPolyEval_cma_c0type(0 to 1);
    attribute preserve of prodResY_uid212_i_div_conv_ma3_cma_c0 : signal is true;
    signal prodResY_uid212_i_div_conv_ma3_cma_l : multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ltype(0 to 1);
    signal prodResY_uid212_i_div_conv_ma3_cma_p : prodResY_uid151_i_div22_conv_ma3_cma_ptype(0 to 1);
    signal prodResY_uid212_i_div_conv_ma3_cma_u : i_mul20_conv_ma3_cma_ptype(0 to 1);
    signal prodResY_uid212_i_div_conv_ma3_cma_w : i_mul20_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_ma3_cma_x : i_mul20_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_ma3_cma_y : i_mul20_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_ma3_cma_s : i_mul20_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid212_i_div_conv_ma3_cma_qq : STD_LOGIC_VECTOR (32 downto 0);
    signal prodResY_uid212_i_div_conv_ma3_cma_q : STD_LOGIC_VECTOR (32 downto 0);
    signal prodResY_uid212_i_div_conv_ma3_cma_ena0 : std_logic;
    signal prodResY_uid212_i_div_conv_ma3_cma_ena1 : std_logic;
    signal i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul35_conv_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul35_conv_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul34_conv_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul34_conv_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal yAddr_uid126_i_div22_conv_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yAddr_uid126_i_div22_conv_merged_bit_select_c : STD_LOGIC_VECTOR (22 downto 0);
    signal rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal yAddr_uid187_i_div_conv_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yAddr_uid187_i_div_conv_merged_bit_select_c : STD_LOGIC_VECTOR (22 downto 0);
    signal rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid251_zCount_uid116_i_div22_conv_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid251_zCount_uid116_i_div22_conv_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid257_zCount_uid116_i_div22_conv_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid257_zCount_uid116_i_div22_conv_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid561_normY_uid117_i_div22_conv_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid561_normY_uid117_i_div22_conv_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid561_normY_uid117_i_div22_conv_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal topRangeY_uid393_pT3_uid296_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeY_uid393_pT3_uid296_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (12 downto 0);
    signal rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid321_zCount_uid177_i_div_conv_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid321_zCount_uid177_i_div_conv_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid327_zCount_uid177_i_div_conv_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid327_zCount_uid177_i_div_conv_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid663_normY_uid178_i_div_conv_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid663_normY_uid178_i_div_conv_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid663_normY_uid178_i_div_conv_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal topRangeY_uid434_pT3_uid366_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeY_uid434_pT3_uid366_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (12 downto 0);
    signal topRangeX_uid392_pT3_uid296_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeX_uid392_pT3_uid296_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (5 downto 0);
    signal topRangeX_uid433_pT3_uid366_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeX_uid433_pT3_uid366_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (5 downto 0);
    signal redist0_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist1_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist3_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist4_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist5_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist6_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist7_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist8_rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_yAddr_uid187_i_div_conv_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist10_yAddr_uid187_i_div_conv_merged_bit_select_b_5_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist12_yAddr_uid187_i_div_conv_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist13_yAddr_uid187_i_div_conv_merged_bit_select_c_5_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist15_rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_yAddr_uid126_i_div22_conv_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist17_yAddr_uid126_i_div22_conv_merged_bit_select_b_5_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist19_yAddr_uid126_i_div22_conv_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist20_yAddr_uid126_i_div22_conv_merged_bit_select_c_5_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist22_prodResY_uid212_i_div_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist23_prodXInvY_uid200_i_div_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist24_prodResY_uid151_i_div22_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist25_prodXInvY_uid139_i_div22_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist26_i_mul35_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist27_i_mul34_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist28_i_mul24_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist29_i_mul20_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist30_multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_q_1_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist31_multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_q_1_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist32_prodResY_uid212_i_div_conv_im8_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist33_prodResY_uid212_i_div_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist34_prodXInvY_uid200_i_div_conv_im9_cma_q_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist35_prodXInvY_uid200_i_div_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist36_prodResY_uid151_i_div22_conv_im8_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist37_prodResY_uid151_i_div22_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist38_prodXInvY_uid139_i_div22_conv_im9_cma_q_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist39_prodXInvY_uid139_i_div22_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist40_i_mul35_conv_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist41_i_mul35_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist42_i_mul34_conv_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist43_i_mul34_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist44_i_mul24_conv_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist45_i_mul24_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist46_i_mul20_conv_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist47_i_mul20_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist48_sm0_uid445_pT3_uid366_invPolyEval_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist49_sm0_uid404_pT3_uid296_invPolyEval_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist50_memoryC1_uid340_invTabGen_lutmem_r_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist51_memoryC0_uid337_invTabGen_lutmem_r_1_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist52_memoryC1_uid270_invTabGen_lutmem_r_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist53_memoryC0_uid267_invTabGen_lutmem_r_1_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist54_xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist55_xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist58_os_uid452_pT3_uid366_invPolyEval_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist59_osig_uid417_pT2_uid360_invPolyEval_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist60_os_uid411_pT3_uid296_invPolyEval_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist61_osig_uid376_pT2_uid290_invPolyEval_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist62_lowRangeB_uid361_invPolyEval_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_lowRangeB_uid355_invPolyEval_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_rVStage_uid333_zCount_uid177_i_div_conv_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist66_vCount_uid328_zCount_uid177_i_div_conv_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_vCount_uid322_zCount_uid177_i_div_conv_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist68_vCount_uid316_zCount_uid177_i_div_conv_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_vCount_uid310_zCount_uid177_i_div_conv_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist70_vCount_uid304_zCount_uid177_i_div_conv_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist71_lowRangeB_uid291_invPolyEval_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist72_lowRangeB_uid285_invPolyEval_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_r_uid265_zCount_uid116_i_div22_conv_q_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist75_vCount_uid252_zCount_uid116_i_div22_conv_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist76_vCount_uid246_zCount_uid116_i_div22_conv_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist77_vCount_uid240_zCount_uid116_i_div22_conv_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist78_vCount_uid234_zCount_uid116_i_div22_conv_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist79_resFinalPostMux_uid229_i_div_conv_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist80_OverflowCond_uid221_i_div_conv_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist81_resFinal_uid211_i_div_conv_q_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist82_resFinal_uid211_i_div_conv_q_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist83_resFinal_uid211_i_div_conv_q_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist84_signX_uid209_i_div_conv_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist85_signX_uid209_i_div_conv_b_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist86_prodPostRightShiftPostRndRange_uid206_i_div_conv_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist87_prodPostRightShiftPost_uid203_i_div_conv_b_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist88_rightShiftInput_uid201_i_div_conv_b_1_q : STD_LOGIC_VECTOR (64 downto 0);
    signal redist89_xPSXE_uid198_i_div_conv_q_2_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist90_invResPostOneHandling2_uid192_i_div_conv_q_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist91_fxpInverseRes_uid190_i_div_conv_b_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist92_normYIsOneC2_uid183_i_div_conv_b_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist94_yPS_uid176_i_div_conv_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist95_yPS_uid176_i_div_conv_b_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist97_xMSB_uid171_i_div_conv_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist98_xMSB_uid171_i_div_conv_b_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist99_xMSB_uid171_i_div_conv_b_20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist100_xMSB_uid171_i_div_conv_b_32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist101_resFinalIntDiv_uid169_i_div22_conv_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist102_resFinalPostMux_uid168_i_div22_conv_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist103_resFinal_uid150_i_div22_conv_q_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist104_resFinal_uid150_i_div22_conv_q_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist105_signX_uid148_i_div22_conv_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist106_signX_uid148_i_div22_conv_b_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist107_prodPostRightShiftPostRndRange_uid145_i_div22_conv_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist108_prodPostRightShiftPost_uid142_i_div22_conv_b_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist109_rightShiftInput_uid140_i_div22_conv_b_1_q : STD_LOGIC_VECTOR (64 downto 0);
    signal redist110_xPSXE_uid137_i_div22_conv_q_2_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist111_invResPostOneHandling2_uid131_i_div22_conv_q_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist112_fxpInverseRes_uid129_i_div22_conv_b_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist113_normYIsOne_uid123_i_div22_conv_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist114_normYIsOneC2_uid122_i_div22_conv_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist116_normYNoLeadOne_uid118_i_div22_conv_b_1_q : STD_LOGIC_VECTOR (30 downto 0);
    signal redist117_yPS_uid115_i_div22_conv_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist118_yPS_uid115_i_div22_conv_b_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist120_xMSB_uid110_i_div22_conv_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist121_xMSB_uid110_i_div22_conv_b_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist122_xMSB_uid110_i_div22_conv_b_20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist123_xMSB_uid110_i_div22_conv_b_32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist124_xMSB_uid110_i_div22_conv_b_34_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist126_i_reduction_conv_0_conv_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist127_i_demorgan_conv_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist128_i_cmp51_conv_n_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist129_i_cmp39_conv_c_60_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist130_i_cmp22_or33_conv_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist134_sync_in_aunroll_x_in_c0_eni8_6_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist135_sync_in_aunroll_x_in_c0_eni8_7_57_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist137_sync_in_aunroll_x_in_i_valid_20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist138_sync_in_aunroll_x_in_i_valid_34_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist139_sync_in_aunroll_x_in_i_valid_54_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist140_sync_in_aunroll_x_in_i_valid_55_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist141_sync_in_aunroll_x_in_i_valid_57_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist142_sync_in_aunroll_x_in_i_valid_60_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist143_sync_in_aunroll_x_in_i_valid_64_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist144_i_arrayidx57_conv_conv286_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist145_bgTrunc_i_sub26_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist146_bgTrunc_i_sub25_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist147_bgTrunc_i_sub23_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist148_bgTrunc_i_sub21_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist150_bgTrunc_i_sub21_conv_sel_x_b_15_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist151_bgTrunc_i_sub21_conv_sel_x_b_19_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist152_bgTrunc_i_mul35_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist154_bgTrunc_i_mul24_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist155_bgTrunc_i_mul20_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist156_bgTrunc_i_add37_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist157_bgTrunc_i_add36_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist158_bgTrunc_i_add33_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist159_bgTrunc_i_add33_conv_sel_x_b_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist160_bgTrunc_i_add29_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist161_bgTrunc_i_add19_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist164_bgTrunc_i_add19_conv_sel_x_b_33_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_reset0 : std_logic;
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_i : signal is true;
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_sticky_ena_q : signal is true;
    signal redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_reset0 : std_logic;
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_i : signal is true;
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_eq : std_logic;
    attribute preserve of redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_eq : signal is true;
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_sticky_ena_q : signal is true;
    signal redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_reset0 : std_logic;
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_i : signal is true;
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_sticky_ena_q : signal is true;
    signal redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_reset0 : std_logic;
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_i : signal is true;
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_eq : std_logic;
    attribute preserve of redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_eq : signal is true;
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_sticky_ena_q : signal is true;
    signal redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_inputreg_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_mem_reset0 : std_logic;
    signal redist56_i_mul20_conv_bs6_b_5_mem_ia : STD_LOGIC_VECTOR (13 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_mem_iq : STD_LOGIC_VECTOR (13 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_mem_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist56_i_mul20_conv_bs6_b_5_rdcnt_i : signal is true;
    signal redist56_i_mul20_conv_bs6_b_5_rdcnt_eq : std_logic;
    attribute preserve of redist56_i_mul20_conv_bs6_b_5_rdcnt_eq : signal is true;
    signal redist56_i_mul20_conv_bs6_b_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_i_mul20_conv_bs6_b_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist56_i_mul20_conv_bs6_b_5_sticky_ena_q : signal is true;
    signal redist56_i_mul20_conv_bs6_b_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_inputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_mem_reset0 : std_logic;
    signal redist57_i_mul20_conv_bs2_b_5_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist57_i_mul20_conv_bs2_b_5_rdcnt_i : signal is true;
    signal redist57_i_mul20_conv_bs2_b_5_rdcnt_eq : std_logic;
    attribute preserve of redist57_i_mul20_conv_bs2_b_5_rdcnt_eq : signal is true;
    signal redist57_i_mul20_conv_bs2_b_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_i_mul20_conv_bs2_b_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist57_i_mul20_conv_bs2_b_5_sticky_ena_q : signal is true;
    signal redist57_i_mul20_conv_bs2_b_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_inputreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_outputreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_reset0 : std_logic;
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_ia : STD_LOGIC_VECTOR (5 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_iq : STD_LOGIC_VECTOR (5 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_i : signal is true;
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_eq : std_logic;
    attribute preserve of redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_eq : signal is true;
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist64_r_uid335_zCount_uid177_i_div_conv_q_18_sticky_ena_q : signal is true;
    signal redist64_r_uid335_zCount_uid177_i_div_conv_q_18_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_inputreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_outputreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_reset0 : std_logic;
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_ia : STD_LOGIC_VECTOR (5 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_iq : STD_LOGIC_VECTOR (5 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_i : signal is true;
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_eq : std_logic;
    attribute preserve of redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_eq : signal is true;
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_sticky_ena_q : signal is true;
    signal redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist81_resFinal_uid211_i_div_conv_q_3_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_inputreg_q : STD_LOGIC_VECTOR (30 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_outputreg_q : STD_LOGIC_VECTOR (30 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_reset0 : std_logic;
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_ia : STD_LOGIC_VECTOR (30 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_iq : STD_LOGIC_VECTOR (30 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_q : STD_LOGIC_VECTOR (30 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_i : signal is true;
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_eq : std_logic;
    attribute preserve of redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_eq : signal is true;
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist93_normYNoLeadOne_uid179_i_div_conv_b_12_sticky_ena_q : signal is true;
    signal redist93_normYNoLeadOne_uid179_i_div_conv_b_12_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_mem_reset0 : std_logic;
    signal redist96_yPS_uid176_i_div_conv_b_6_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist96_yPS_uid176_i_div_conv_b_6_rdcnt_i : signal is true;
    signal redist96_yPS_uid176_i_div_conv_b_6_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist96_yPS_uid176_i_div_conv_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist96_yPS_uid176_i_div_conv_b_6_sticky_ena_q : signal is true;
    signal redist96_yPS_uid176_i_div_conv_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist103_resFinal_uid150_i_div22_conv_q_4_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist103_resFinal_uid150_i_div22_conv_q_4_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_mem_reset0 : std_logic;
    signal redist115_updatedY_uid120_i_div22_conv_q_9_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_i : signal is true;
    signal redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_eq : std_logic;
    attribute preserve of redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_eq : signal is true;
    signal redist115_updatedY_uid120_i_div22_conv_q_9_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist115_updatedY_uid120_i_div22_conv_q_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist115_updatedY_uid120_i_div22_conv_q_9_sticky_ena_q : signal is true;
    signal redist115_updatedY_uid120_i_div22_conv_q_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_mem_reset0 : std_logic;
    signal redist119_yPS_uid115_i_div22_conv_b_6_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_i : signal is true;
    signal redist119_yPS_uid115_i_div22_conv_b_6_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist119_yPS_uid115_i_div22_conv_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist119_yPS_uid115_i_div22_conv_b_6_sticky_ena_q : signal is true;
    signal redist119_yPS_uid115_i_div22_conv_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_reset0 : std_logic;
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_i : signal is true;
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_eq : std_logic;
    attribute preserve of redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_eq : signal is true;
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_sticky_ena_q : signal is true;
    signal redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_reset0 : std_logic;
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_i : signal is true;
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_eq : std_logic;
    attribute preserve of redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_eq : signal is true;
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist131_sync_in_aunroll_x_in_c0_eni8_3_29_sticky_ena_q : signal is true;
    signal redist131_sync_in_aunroll_x_in_c0_eni8_3_29_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_reset0 : std_logic;
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_i : UNSIGNED (5 downto 0);
    attribute preserve of redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_i : signal is true;
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_eq : std_logic;
    attribute preserve of redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_eq : signal is true;
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_wraddr_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_last_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmp_b : STD_LOGIC_VECTOR (6 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist132_sync_in_aunroll_x_in_c0_eni8_4_56_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_reset0 : std_logic;
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_i : UNSIGNED (5 downto 0);
    attribute preserve of redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_i : signal is true;
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_eq : std_logic;
    attribute preserve of redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_eq : signal is true;
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_wraddr_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_last_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmp_b : STD_LOGIC_VECTOR (6 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist133_sync_in_aunroll_x_in_c0_eni8_5_59_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_reset0 : std_logic;
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_i : signal is true;
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist149_bgTrunc_i_sub21_conv_sel_x_b_11_sticky_ena_q : signal is true;
    signal redist149_bgTrunc_i_sub21_conv_sel_x_b_11_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist150_bgTrunc_i_sub21_conv_sel_x_b_15_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist150_bgTrunc_i_sub21_conv_sel_x_b_15_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist151_bgTrunc_i_sub21_conv_sel_x_b_19_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist151_bgTrunc_i_sub21_conv_sel_x_b_19_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_reset0 : std_logic;
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_i : signal is true;
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_eq : std_logic;
    attribute preserve of redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_eq : signal is true;
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist153_bgTrunc_i_mul34_conv_sel_x_b_24_sticky_ena_q : signal is true;
    signal redist153_bgTrunc_i_mul34_conv_sel_x_b_24_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_reset0 : std_logic;
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_i : signal is true;
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist162_bgTrunc_i_add19_conv_sel_x_b_19_sticky_ena_q : signal is true;
    signal redist162_bgTrunc_i_add19_conv_sel_x_b_19_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_reset0 : std_logic;
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_i : signal is true;
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_eq : std_logic;
    attribute preserve of redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_eq : signal is true;
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist163_bgTrunc_i_add19_conv_sel_x_b_29_sticky_ena_q : signal is true;
    signal redist163_bgTrunc_i_add19_conv_sel_x_b_29_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist164_bgTrunc_i_add19_conv_sel_x_b_33_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist164_bgTrunc_i_add19_conv_sel_x_b_33_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_reset0 : std_logic;
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_i : signal is true;
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist165_bgTrunc_i_add19_conv_sel_x_b_38_sticky_ena_q : signal is true;
    signal redist165_bgTrunc_i_add19_conv_sel_x_b_38_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_outputreg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_reset0 : std_logic;
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_ia : STD_LOGIC_VECTOR (0 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_iq : STD_LOGIC_VECTOR (0 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_i : signal is true;
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_eq : std_logic;
    attribute preserve of redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_eq : signal is true;
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_sticky_ena_q : signal is true;
    signal redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist137_sync_in_aunroll_x_in_i_valid_20(DELAY,964)
    redist137_sync_in_aunroll_x_in_i_valid_20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 20, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist137_sync_in_aunroll_x_in_i_valid_20_q, clk => clock, aclr => resetn );

    -- redist138_sync_in_aunroll_x_in_i_valid_34(DELAY,965)
    redist138_sync_in_aunroll_x_in_i_valid_34 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist137_sync_in_aunroll_x_in_i_valid_20_q, xout => redist138_sync_in_aunroll_x_in_i_valid_34_q, clk => clock, aclr => resetn );

    -- redist139_sync_in_aunroll_x_in_i_valid_54(DELAY,966)
    redist139_sync_in_aunroll_x_in_i_valid_54 : dspba_delay
    GENERIC MAP ( width => 1, depth => 20, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist138_sync_in_aunroll_x_in_i_valid_34_q, xout => redist139_sync_in_aunroll_x_in_i_valid_54_q, clk => clock, aclr => resetn );

    -- redist140_sync_in_aunroll_x_in_i_valid_55(DELAY,967)
    redist140_sync_in_aunroll_x_in_i_valid_55 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist139_sync_in_aunroll_x_in_i_valid_54_q, xout => redist140_sync_in_aunroll_x_in_i_valid_55_q, clk => clock, aclr => resetn );

    -- redist141_sync_in_aunroll_x_in_i_valid_57(DELAY,968)
    redist141_sync_in_aunroll_x_in_i_valid_57 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist140_sync_in_aunroll_x_in_i_valid_55_q, xout => redist141_sync_in_aunroll_x_in_i_valid_57_q, clk => clock, aclr => resetn );

    -- redist142_sync_in_aunroll_x_in_i_valid_60(DELAY,969)
    redist142_sync_in_aunroll_x_in_i_valid_60 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist141_sync_in_aunroll_x_in_i_valid_57_q, xout => redist142_sync_in_aunroll_x_in_i_valid_60_q, clk => clock, aclr => resetn );

    -- redist143_sync_in_aunroll_x_in_i_valid_64(DELAY,970)
    redist143_sync_in_aunroll_x_in_i_valid_64 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist142_sync_in_aunroll_x_in_i_valid_60_q, xout => redist143_sync_in_aunroll_x_in_i_valid_64_q, clk => clock, aclr => resetn );

    -- i_syncbuf_n_fin_dim_sync_buffer98_conv(BLACKBOX,91)@0
    -- in in_i_dependence@58
    -- in in_valid_in@58
    -- out out_buffer_out@58
    -- out out_valid_out@58
    thei_syncbuf_n_fin_dim_sync_buffer98_conv : i_syncbuf_n_fin_dim_sync_buffer98_conv278
    PORT MAP (
        in_buffer_in => in_N_Fin_dim,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist141_sync_in_aunroll_x_in_i_valid_57_q,
        out_buffer_out => i_syncbuf_n_fin_dim_sync_buffer98_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_syncbuf_p_conv_sync_buffer97_conv(BLACKBOX,95)@0
    -- in in_i_dependence@56
    -- in in_valid_in@56
    -- out out_buffer_out@56
    -- out out_valid_out@56
    thei_syncbuf_p_conv_sync_buffer97_conv : i_syncbuf_p_conv_sync_buffer97_conv265
    PORT MAP (
        in_buffer_in => in_P_conv,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist140_sync_in_aunroll_x_in_i_valid_55_q,
        out_buffer_out => i_syncbuf_p_conv_sync_buffer97_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_syncbuf_k_conv_sync_buffer94_conv(BLACKBOX,89)@0
    -- in in_i_dependence@21
    -- in in_valid_in@21
    -- out out_buffer_out@21
    -- out out_valid_out@21
    thei_syncbuf_k_conv_sync_buffer94_conv : i_syncbuf_k_conv_sync_buffer94_conv263
    PORT MAP (
        in_buffer_in => in_K_conv,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist137_sync_in_aunroll_x_in_i_valid_20_q,
        out_buffer_out => i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- xMSB_uid110_i_div22_conv(BITSELECT,109)@21
    xMSB_uid110_i_div22_conv_b <= STD_LOGIC_VECTOR(i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out(31 downto 31));

    -- redist120_xMSB_uid110_i_div22_conv_b_1(DELAY,947)
    redist120_xMSB_uid110_i_div22_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xMSB_uid110_i_div22_conv_b, xout => redist120_xMSB_uid110_i_div22_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist121_xMSB_uid110_i_div22_conv_b_19(DELAY,948)
    redist121_xMSB_uid110_i_div22_conv_b_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 18, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist120_xMSB_uid110_i_div22_conv_b_1_q, xout => redist121_xMSB_uid110_i_div22_conv_b_19_q, clk => clock, aclr => resetn );

    -- redist122_xMSB_uid110_i_div22_conv_b_20(DELAY,949)
    redist122_xMSB_uid110_i_div22_conv_b_20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist121_xMSB_uid110_i_div22_conv_b_19_q, xout => redist122_xMSB_uid110_i_div22_conv_b_20_q, clk => clock, aclr => resetn );

    -- redist123_xMSB_uid110_i_div22_conv_b_32(DELAY,950)
    redist123_xMSB_uid110_i_div22_conv_b_32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 12, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist122_xMSB_uid110_i_div22_conv_b_20_q, xout => redist123_xMSB_uid110_i_div22_conv_b_32_q, clk => clock, aclr => resetn );

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_notEnable(LOGICAL,1175)
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_nor(LOGICAL,1176)
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_nor_q <= not (redist149_bgTrunc_i_sub21_conv_sel_x_b_11_notEnable_q or redist149_bgTrunc_i_sub21_conv_sel_x_b_11_sticky_ena_q);

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_last(CONSTANT,1172)
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_last_q <= "0110";

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmp(LOGICAL,1173)
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmp_b <= STD_LOGIC_VECTOR("0" & redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_q);
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmp_q <= "1" WHEN redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_last_q = redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmp_b ELSE "0";

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmpReg(REG,1174)
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmpReg_q <= STD_LOGIC_VECTOR(redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmp_q);
        END IF;
    END PROCESS;

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_sticky_ena(REG,1177)
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist149_bgTrunc_i_sub21_conv_sel_x_b_11_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist149_bgTrunc_i_sub21_conv_sel_x_b_11_nor_q = "1") THEN
                redist149_bgTrunc_i_sub21_conv_sel_x_b_11_sticky_ena_q <= STD_LOGIC_VECTOR(redist149_bgTrunc_i_sub21_conv_sel_x_b_11_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_enaAnd(LOGICAL,1178)
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_enaAnd_q <= redist149_bgTrunc_i_sub21_conv_sel_x_b_11_sticky_ena_q and VCC_q;

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt(COUNTER,1170)
    -- low=0, high=7, step=1, init=0
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_i <= TO_UNSIGNED(0, 3);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_i <= redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_i, 3)));

    -- xMSB_uid171_i_div_conv(BITSELECT,170)@1
    xMSB_uid171_i_div_conv_b <= STD_LOGIC_VECTOR(in_c0_eni8_3(31 downto 31));

    -- redist97_xMSB_uid171_i_div_conv_b_1(DELAY,924)
    redist97_xMSB_uid171_i_div_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xMSB_uid171_i_div_conv_b, xout => redist97_xMSB_uid171_i_div_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist98_xMSB_uid171_i_div_conv_b_19(DELAY,925)
    redist98_xMSB_uid171_i_div_conv_b_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 18, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist97_xMSB_uid171_i_div_conv_b_1_q, xout => redist98_xMSB_uid171_i_div_conv_b_19_q, clk => clock, aclr => resetn );

    -- redist99_xMSB_uid171_i_div_conv_b_20(DELAY,926)
    redist99_xMSB_uid171_i_div_conv_b_20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist98_xMSB_uid171_i_div_conv_b_19_q, xout => redist99_xMSB_uid171_i_div_conv_b_20_q, clk => clock, aclr => resetn );

    -- redist100_xMSB_uid171_i_div_conv_b_32(DELAY,927)
    redist100_xMSB_uid171_i_div_conv_b_32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 12, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist99_xMSB_uid171_i_div_conv_b_20_q, xout => redist100_xMSB_uid171_i_div_conv_b_32_q, clk => clock, aclr => resetn );

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_notEnable(LOGICAL,1214)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_nor(LOGICAL,1215)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_nor_q <= not (redist163_bgTrunc_i_add19_conv_sel_x_b_29_notEnable_q or redist163_bgTrunc_i_add19_conv_sel_x_b_29_sticky_ena_q);

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_last(CONSTANT,1211)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_last_q <= "0101";

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmp(LOGICAL,1212)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmp_b <= STD_LOGIC_VECTOR("0" & redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_q);
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmp_q <= "1" WHEN redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_last_q = redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmp_b ELSE "0";

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmpReg(REG,1213)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmpReg_q <= STD_LOGIC_VECTOR(redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmp_q);
        END IF;
    END PROCESS;

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_sticky_ena(REG,1216)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist163_bgTrunc_i_add19_conv_sel_x_b_29_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist163_bgTrunc_i_add19_conv_sel_x_b_29_nor_q = "1") THEN
                redist163_bgTrunc_i_add19_conv_sel_x_b_29_sticky_ena_q <= STD_LOGIC_VECTOR(redist163_bgTrunc_i_add19_conv_sel_x_b_29_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_enaAnd(LOGICAL,1217)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_enaAnd_q <= redist163_bgTrunc_i_add19_conv_sel_x_b_29_sticky_ena_q and VCC_q;

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt(COUNTER,1209)
    -- low=0, high=6, step=1, init=0
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_eq <= '1';
            ELSE
                redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_eq <= '0';
            END IF;
            IF (redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_eq = '1') THEN
                redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_i <= redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_i + 2;
            ELSE
                redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_i <= redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_i, 3)));

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_notEnable(LOGICAL,1202)
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_nor(LOGICAL,1203)
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_nor_q <= not (redist162_bgTrunc_i_add19_conv_sel_x_b_19_notEnable_q or redist162_bgTrunc_i_add19_conv_sel_x_b_19_sticky_ena_q);

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_last(CONSTANT,1199)
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_last_q <= "01110";

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmp(LOGICAL,1200)
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmp_b <= STD_LOGIC_VECTOR("0" & redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_q);
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmp_q <= "1" WHEN redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_last_q = redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmp_b ELSE "0";

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmpReg(REG,1201)
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmpReg_q <= STD_LOGIC_VECTOR(redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmp_q);
        END IF;
    END PROCESS;

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_sticky_ena(REG,1204)
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist162_bgTrunc_i_add19_conv_sel_x_b_19_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist162_bgTrunc_i_add19_conv_sel_x_b_19_nor_q = "1") THEN
                redist162_bgTrunc_i_add19_conv_sel_x_b_19_sticky_ena_q <= STD_LOGIC_VECTOR(redist162_bgTrunc_i_add19_conv_sel_x_b_19_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_enaAnd(LOGICAL,1205)
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_enaAnd_q <= redist162_bgTrunc_i_add19_conv_sel_x_b_19_sticky_ena_q and VCC_q;

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt(COUNTER,1197)
    -- low=0, high=15, step=1, init=0
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_i <= TO_UNSIGNED(0, 4);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_i <= redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_i, 4)));

    -- i_c0_ene1104_conv_vt_select_31(BITSELECT,62)@1
    i_c0_ene1104_conv_vt_select_31_b <= in_c0_eni8_1(31 downto 3);

    -- i_c0_ene1104_conv_vt_const_2(CONSTANT,60)
    i_c0_ene1104_conv_vt_const_2_q <= "000";

    -- i_c0_ene1104_conv_vt_join(BITJOIN,61)@1
    i_c0_ene1104_conv_vt_join_q <= i_c0_ene1104_conv_vt_select_31_b & i_c0_ene1104_conv_vt_const_2_q;

    -- i_add19_conv(ADD,55)@1
    i_add19_conv_a <= STD_LOGIC_VECTOR("0" & i_c0_ene1104_conv_vt_join_q);
    i_add19_conv_b <= STD_LOGIC_VECTOR("0" & in_c0_eni8_2);
    i_add19_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add19_conv_a) + UNSIGNED(i_add19_conv_b));
    i_add19_conv_q <= i_add19_conv_o(32 downto 0);

    -- bgTrunc_i_add19_conv_sel_x(BITSELECT,2)@1
    bgTrunc_i_add19_conv_sel_x_b <= i_add19_conv_q(31 downto 0);

    -- redist161_bgTrunc_i_add19_conv_sel_x_b_1(DELAY,988)
    redist161_bgTrunc_i_add19_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add19_conv_sel_x_b, xout => redist161_bgTrunc_i_add19_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_wraddr(REG,1198)
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist162_bgTrunc_i_add19_conv_sel_x_b_19_wraddr_q <= "1111";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist162_bgTrunc_i_add19_conv_sel_x_b_19_wraddr_q <= STD_LOGIC_VECTOR(redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem(DUALMEM,1196)
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_ia <= STD_LOGIC_VECTOR(redist161_bgTrunc_i_add19_conv_sel_x_b_1_q);
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_aa <= redist162_bgTrunc_i_add19_conv_sel_x_b_19_wraddr_q;
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_ab <= redist162_bgTrunc_i_add19_conv_sel_x_b_19_rdcnt_q;
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_reset0 <= not (resetn);
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 16,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 16,
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
        clocken1 => redist162_bgTrunc_i_add19_conv_sel_x_b_19_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_reset0,
        clock1 => clock,
        address_a => redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_aa,
        data_a => redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_ab,
        q_b => redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_iq
    );
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_q <= redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_iq(31 downto 0);

    -- redist162_bgTrunc_i_add19_conv_sel_x_b_19_outputreg(DELAY,1195)
    redist162_bgTrunc_i_add19_conv_sel_x_b_19_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist162_bgTrunc_i_add19_conv_sel_x_b_19_mem_q, xout => redist162_bgTrunc_i_add19_conv_sel_x_b_19_outputreg_q, clk => clock, aclr => resetn );

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_inputreg(DELAY,1206)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist162_bgTrunc_i_add19_conv_sel_x_b_19_outputreg_q, xout => redist163_bgTrunc_i_add19_conv_sel_x_b_29_inputreg_q, clk => clock, aclr => resetn );

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_wraddr(REG,1210)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist163_bgTrunc_i_add19_conv_sel_x_b_29_wraddr_q <= "110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist163_bgTrunc_i_add19_conv_sel_x_b_29_wraddr_q <= STD_LOGIC_VECTOR(redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem(DUALMEM,1208)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_ia <= STD_LOGIC_VECTOR(redist163_bgTrunc_i_add19_conv_sel_x_b_29_inputreg_q);
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_aa <= redist163_bgTrunc_i_add19_conv_sel_x_b_29_wraddr_q;
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_ab <= redist163_bgTrunc_i_add19_conv_sel_x_b_29_rdcnt_q;
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_reset0 <= not (resetn);
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 7,
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
        clocken1 => redist163_bgTrunc_i_add19_conv_sel_x_b_29_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_reset0,
        clock1 => clock,
        address_a => redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_aa,
        data_a => redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_ab,
        q_b => redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_iq
    );
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_q <= redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_iq(31 downto 0);

    -- redist163_bgTrunc_i_add19_conv_sel_x_b_29_outputreg(DELAY,1207)
    redist163_bgTrunc_i_add19_conv_sel_x_b_29_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist163_bgTrunc_i_add19_conv_sel_x_b_29_mem_q, xout => redist163_bgTrunc_i_add19_conv_sel_x_b_29_outputreg_q, clk => clock, aclr => resetn );

    -- signX_uid209_i_div_conv(BITSELECT,208)@30
    signX_uid209_i_div_conv_b <= STD_LOGIC_VECTOR(redist163_bgTrunc_i_add19_conv_sel_x_b_29_outputreg_q(31 downto 31));

    -- redist84_signX_uid209_i_div_conv_b_3(DELAY,911)
    redist84_signX_uid209_i_div_conv_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signX_uid209_i_div_conv_b, xout => redist84_signX_uid209_i_div_conv_b_3_q, clk => clock, aclr => resetn );

    -- resultSign_uid219_i_div_conv(LOGICAL,218)@33 + 1
    resultSign_uid219_i_div_conv_qi <= redist84_signX_uid209_i_div_conv_b_3_q xor redist100_xMSB_uid171_i_div_conv_b_32_q;
    resultSign_uid219_i_div_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resultSign_uid219_i_div_conv_qi, xout => resultSign_uid219_i_div_conv_q, clk => clock, aclr => resetn );

    -- cstSubFinal_uid227_i_div_conv(BITJOIN,226)@34
    cstSubFinal_uid227_i_div_conv_q <= resultSign_uid219_i_div_conv_q & VCC_q;

    -- cstValOvfneg_uid147_i_div22_conv(CONSTANT,146)
    cstValOvfneg_uid147_i_div22_conv_q <= "10000000000000000000000000000000";

    -- cstValOvfPos_uid146_i_div22_conv(CONSTANT,145)
    cstValOvfPos_uid146_i_div22_conv_q <= "01111111111111111111111111111111";

    -- cstOvf_uid210_i_div_conv(MUX,209)@30
    cstOvf_uid210_i_div_conv_s <= signX_uid209_i_div_conv_b;
    cstOvf_uid210_i_div_conv_combproc: PROCESS (cstOvf_uid210_i_div_conv_s, cstValOvfPos_uid146_i_div22_conv_q, cstValOvfneg_uid147_i_div22_conv_q)
    BEGIN
        CASE (cstOvf_uid210_i_div_conv_s) IS
            WHEN "0" => cstOvf_uid210_i_div_conv_q <= cstValOvfPos_uid146_i_div22_conv_q;
            WHEN "1" => cstOvf_uid210_i_div_conv_q <= cstValOvfneg_uid147_i_div22_conv_q;
            WHEN OTHERS => cstOvf_uid210_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- zMsbY0_uid197_i_div_conv(BITJOIN,196)@21
    zMsbY0_uid197_i_div_conv_q <= GND_q & redist99_xMSB_uid171_i_div_conv_b_20_q;

    -- xPSX_uid195_i_div_conv(LOGICAL,194)@20 + 1
    xPSX_uid195_i_div_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => redist98_xMSB_uid171_i_div_conv_b_19_q(0)) & redist98_xMSB_uid171_i_div_conv_b_19_q));
    xPSX_uid195_i_div_conv_qi <= redist162_bgTrunc_i_add19_conv_sel_x_b_19_outputreg_q xor xPSX_uid195_i_div_conv_b;
    xPSX_uid195_i_div_conv_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xPSX_uid195_i_div_conv_qi, xout => xPSX_uid195_i_div_conv_q, clk => clock, aclr => resetn );

    -- xPSXE_uid198_i_div_conv(ADD,197)@21 + 1
    xPSXE_uid198_i_div_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => xPSX_uid195_i_div_conv_q(31)) & xPSX_uid195_i_div_conv_q));
    xPSXE_uid198_i_div_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 2 => zMsbY0_uid197_i_div_conv_q(1)) & zMsbY0_uid197_i_div_conv_q));
    xPSXE_uid198_i_div_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            xPSXE_uid198_i_div_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            xPSXE_uid198_i_div_conv_o <= STD_LOGIC_VECTOR(SIGNED(xPSXE_uid198_i_div_conv_a) + SIGNED(xPSXE_uid198_i_div_conv_b));
        END IF;
    END PROCESS;
    xPSXE_uid198_i_div_conv_q <= xPSXE_uid198_i_div_conv_o(32 downto 0);

    -- prodXInvY_uid200_i_div_conv_bs4(BITSELECT,691)@22
    prodXInvY_uid200_i_div_conv_bs4_in <= STD_LOGIC_VECTOR(xPSXE_uid198_i_div_conv_q(17 downto 0));
    prodXInvY_uid200_i_div_conv_bs4_b <= STD_LOGIC_VECTOR(prodXInvY_uid200_i_div_conv_bs4_in(17 downto 0));

    -- prodXInvY_uid200_i_div_conv_bjA5(BITJOIN,692)@22
    prodXInvY_uid200_i_div_conv_bjA5_q <= GND_q & prodXInvY_uid200_i_div_conv_bs4_b;

    -- oneInvRes_uid130_i_div22_conv(CONSTANT,129)
    oneInvRes_uid130_i_div22_conv_q <= "100000000000000000000000000000000";

    -- redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_notEnable(LOGICAL,1010)
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_nor(LOGICAL,1011)
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_nor_q <= not (redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_notEnable_q or redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_sticky_ena_q);

    -- redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_last(CONSTANT,1007)
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_last_q <= "01";

    -- redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_cmp(LOGICAL,1008)
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_cmp_q <= "1" WHEN redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_last_q = redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_q ELSE "0";

    -- redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_cmpReg(REG,1009)
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_cmpReg_q <= STD_LOGIC_VECTOR(redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_sticky_ena(REG,1012)
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_nor_q = "1") THEN
                redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_enaAnd(LOGICAL,1013)
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_enaAnd_q <= redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_sticky_ena_q and VCC_q;

    -- redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt(COUNTER,1005)
    -- low=0, high=2, step=1, init=0
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_eq <= '1';
            ELSE
                redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_eq <= '0';
            END IF;
            IF (redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_eq = '1') THEN
                redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_i <= redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_i + 2;
            ELSE
                redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_i <= redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_i, 2)));

    -- leftShiftStage2Idx3Rng3_uid683_normY_uid178_i_div_conv(BITSELECT,682)@8
    leftShiftStage2Idx3Rng3_uid683_normY_uid178_i_div_conv_in <= leftShiftStage1_uid675_normY_uid178_i_div_conv_q(28 downto 0);
    leftShiftStage2Idx3Rng3_uid683_normY_uid178_i_div_conv_b <= leftShiftStage2Idx3Rng3_uid683_normY_uid178_i_div_conv_in(28 downto 0);

    -- leftShiftStage2Idx3_uid684_normY_uid178_i_div_conv(BITJOIN,683)@8
    leftShiftStage2Idx3_uid684_normY_uid178_i_div_conv_q <= leftShiftStage2Idx3Rng3_uid683_normY_uid178_i_div_conv_b & i_c0_ene1104_conv_vt_const_2_q;

    -- leftShiftStage2Idx2Rng2_uid680_normY_uid178_i_div_conv(BITSELECT,679)@8
    leftShiftStage2Idx2Rng2_uid680_normY_uid178_i_div_conv_in <= leftShiftStage1_uid675_normY_uid178_i_div_conv_q(29 downto 0);
    leftShiftStage2Idx2Rng2_uid680_normY_uid178_i_div_conv_b <= leftShiftStage2Idx2Rng2_uid680_normY_uid178_i_div_conv_in(29 downto 0);

    -- zs_uid256_zCount_uid116_i_div22_conv(CONSTANT,255)
    zs_uid256_zCount_uid116_i_div22_conv_q <= "00";

    -- leftShiftStage2Idx2_uid681_normY_uid178_i_div_conv(BITJOIN,680)@8
    leftShiftStage2Idx2_uid681_normY_uid178_i_div_conv_q <= leftShiftStage2Idx2Rng2_uid680_normY_uid178_i_div_conv_b & zs_uid256_zCount_uid116_i_div22_conv_q;

    -- leftShiftStage2Idx1Rng1_uid677_normY_uid178_i_div_conv(BITSELECT,676)@8
    leftShiftStage2Idx1Rng1_uid677_normY_uid178_i_div_conv_in <= leftShiftStage1_uid675_normY_uid178_i_div_conv_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid677_normY_uid178_i_div_conv_b <= leftShiftStage2Idx1Rng1_uid677_normY_uid178_i_div_conv_in(30 downto 0);

    -- leftShiftStage2Idx1_uid678_normY_uid178_i_div_conv(BITJOIN,677)@8
    leftShiftStage2Idx1_uid678_normY_uid178_i_div_conv_q <= leftShiftStage2Idx1Rng1_uid677_normY_uid178_i_div_conv_b & GND_q;

    -- leftShiftStage1Idx3Rng12_uid672_normY_uid178_i_div_conv(BITSELECT,671)@8
    leftShiftStage1Idx3Rng12_uid672_normY_uid178_i_div_conv_in <= leftShiftStage0_uid664_normY_uid178_i_div_conv_q(19 downto 0);
    leftShiftStage1Idx3Rng12_uid672_normY_uid178_i_div_conv_b <= leftShiftStage1Idx3Rng12_uid672_normY_uid178_i_div_conv_in(19 downto 0);

    -- rightBottomX_bottomExtension_uid399_pT3_uid296_invPolyEval(CONSTANT,398)
    rightBottomX_bottomExtension_uid399_pT3_uid296_invPolyEval_q <= "000000000000";

    -- leftShiftStage1Idx3_uid673_normY_uid178_i_div_conv(BITJOIN,672)@8
    leftShiftStage1Idx3_uid673_normY_uid178_i_div_conv_q <= leftShiftStage1Idx3Rng12_uid672_normY_uid178_i_div_conv_b & rightBottomX_bottomExtension_uid399_pT3_uid296_invPolyEval_q;

    -- leftShiftStage1Idx2Rng8_uid669_normY_uid178_i_div_conv(BITSELECT,668)@8
    leftShiftStage1Idx2Rng8_uid669_normY_uid178_i_div_conv_in <= leftShiftStage0_uid664_normY_uid178_i_div_conv_q(23 downto 0);
    leftShiftStage1Idx2Rng8_uid669_normY_uid178_i_div_conv_b <= leftShiftStage1Idx2Rng8_uid669_normY_uid178_i_div_conv_in(23 downto 0);

    -- zs_uid244_zCount_uid116_i_div22_conv(CONSTANT,243)
    zs_uid244_zCount_uid116_i_div22_conv_q <= "00000000";

    -- leftShiftStage1Idx2_uid670_normY_uid178_i_div_conv(BITJOIN,669)@8
    leftShiftStage1Idx2_uid670_normY_uid178_i_div_conv_q <= leftShiftStage1Idx2Rng8_uid669_normY_uid178_i_div_conv_b & zs_uid244_zCount_uid116_i_div22_conv_q;

    -- leftShiftStage1Idx1Rng4_uid666_normY_uid178_i_div_conv(BITSELECT,665)@8
    leftShiftStage1Idx1Rng4_uid666_normY_uid178_i_div_conv_in <= leftShiftStage0_uid664_normY_uid178_i_div_conv_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid666_normY_uid178_i_div_conv_b <= leftShiftStage1Idx1Rng4_uid666_normY_uid178_i_div_conv_in(27 downto 0);

    -- zs_uid250_zCount_uid116_i_div22_conv(CONSTANT,249)
    zs_uid250_zCount_uid116_i_div22_conv_q <= "0000";

    -- leftShiftStage1Idx1_uid667_normY_uid178_i_div_conv(BITJOIN,666)@8
    leftShiftStage1Idx1_uid667_normY_uid178_i_div_conv_q <= leftShiftStage1Idx1Rng4_uid666_normY_uid178_i_div_conv_b & zs_uid250_zCount_uid116_i_div22_conv_q;

    -- zs_uid232_zCount_uid116_i_div22_conv(CONSTANT,231)
    zs_uid232_zCount_uid116_i_div22_conv_q <= "00000000000000000000000000000000";

    -- leftShiftStage0Idx1Rng16_uid659_normY_uid178_i_div_conv(BITSELECT,658)@8
    leftShiftStage0Idx1Rng16_uid659_normY_uid178_i_div_conv_in <= redist96_yPS_uid176_i_div_conv_b_6_outputreg_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid659_normY_uid178_i_div_conv_b <= leftShiftStage0Idx1Rng16_uid659_normY_uid178_i_div_conv_in(15 downto 0);

    -- zs_uid238_zCount_uid116_i_div22_conv(CONSTANT,237)
    zs_uid238_zCount_uid116_i_div22_conv_q <= "0000000000000000";

    -- leftShiftStage0Idx1_uid660_normY_uid178_i_div_conv(BITJOIN,659)@8
    leftShiftStage0Idx1_uid660_normY_uid178_i_div_conv_q <= leftShiftStage0Idx1Rng16_uid659_normY_uid178_i_div_conv_b & zs_uid238_zCount_uid116_i_div22_conv_q;

    -- redist96_yPS_uid176_i_div_conv_b_6_notEnable(LOGICAL,1098)
    redist96_yPS_uid176_i_div_conv_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist96_yPS_uid176_i_div_conv_b_6_nor(LOGICAL,1099)
    redist96_yPS_uid176_i_div_conv_b_6_nor_q <= not (redist96_yPS_uid176_i_div_conv_b_6_notEnable_q or redist96_yPS_uid176_i_div_conv_b_6_sticky_ena_q);

    -- redist96_yPS_uid176_i_div_conv_b_6_cmpReg(REG,1097)
    redist96_yPS_uid176_i_div_conv_b_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist96_yPS_uid176_i_div_conv_b_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist96_yPS_uid176_i_div_conv_b_6_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist96_yPS_uid176_i_div_conv_b_6_sticky_ena(REG,1100)
    redist96_yPS_uid176_i_div_conv_b_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist96_yPS_uid176_i_div_conv_b_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist96_yPS_uid176_i_div_conv_b_6_nor_q = "1") THEN
                redist96_yPS_uid176_i_div_conv_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist96_yPS_uid176_i_div_conv_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist96_yPS_uid176_i_div_conv_b_6_enaAnd(LOGICAL,1101)
    redist96_yPS_uid176_i_div_conv_b_6_enaAnd_q <= redist96_yPS_uid176_i_div_conv_b_6_sticky_ena_q and VCC_q;

    -- redist96_yPS_uid176_i_div_conv_b_6_rdcnt(COUNTER,1095)
    -- low=0, high=1, step=1, init=0
    redist96_yPS_uid176_i_div_conv_b_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist96_yPS_uid176_i_div_conv_b_6_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist96_yPS_uid176_i_div_conv_b_6_rdcnt_i <= redist96_yPS_uid176_i_div_conv_b_6_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist96_yPS_uid176_i_div_conv_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist96_yPS_uid176_i_div_conv_b_6_rdcnt_i, 1)));

    -- yPSE_uid173_i_div_conv(LOGICAL,172)@1 + 1
    yPSE_uid173_i_div_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid171_i_div_conv_b(0)) & xMSB_uid171_i_div_conv_b));
    yPSE_uid173_i_div_conv_qi <= in_c0_eni8_3 xor yPSE_uid173_i_div_conv_b;
    yPSE_uid173_i_div_conv_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yPSE_uid173_i_div_conv_qi, xout => yPSE_uid173_i_div_conv_q, clk => clock, aclr => resetn );

    -- yPSEA_uid175_i_div_conv(ADD,174)@2
    yPSEA_uid175_i_div_conv_a <= STD_LOGIC_VECTOR("0" & yPSE_uid173_i_div_conv_q);
    yPSEA_uid175_i_div_conv_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000" & redist97_xMSB_uid171_i_div_conv_b_1_q);
    yPSEA_uid175_i_div_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(yPSEA_uid175_i_div_conv_a) + UNSIGNED(yPSEA_uid175_i_div_conv_b));
    yPSEA_uid175_i_div_conv_q <= yPSEA_uid175_i_div_conv_o(32 downto 0);

    -- yPS_uid176_i_div_conv(BITSELECT,175)@2
    yPS_uid176_i_div_conv_in <= STD_LOGIC_VECTOR(yPSEA_uid175_i_div_conv_q(31 downto 0));
    yPS_uid176_i_div_conv_b <= STD_LOGIC_VECTOR(yPS_uid176_i_div_conv_in(31 downto 0));

    -- redist94_yPS_uid176_i_div_conv_b_1(DELAY,921)
    redist94_yPS_uid176_i_div_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yPS_uid176_i_div_conv_b, xout => redist94_yPS_uid176_i_div_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist95_yPS_uid176_i_div_conv_b_2(DELAY,922)
    redist95_yPS_uid176_i_div_conv_b_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist94_yPS_uid176_i_div_conv_b_1_q, xout => redist95_yPS_uid176_i_div_conv_b_2_q, clk => clock, aclr => resetn );

    -- redist96_yPS_uid176_i_div_conv_b_6_wraddr(REG,1096)
    redist96_yPS_uid176_i_div_conv_b_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist96_yPS_uid176_i_div_conv_b_6_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist96_yPS_uid176_i_div_conv_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist96_yPS_uid176_i_div_conv_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist96_yPS_uid176_i_div_conv_b_6_mem(DUALMEM,1094)
    redist96_yPS_uid176_i_div_conv_b_6_mem_ia <= STD_LOGIC_VECTOR(redist95_yPS_uid176_i_div_conv_b_2_q);
    redist96_yPS_uid176_i_div_conv_b_6_mem_aa <= redist96_yPS_uid176_i_div_conv_b_6_wraddr_q;
    redist96_yPS_uid176_i_div_conv_b_6_mem_ab <= redist96_yPS_uid176_i_div_conv_b_6_rdcnt_q;
    redist96_yPS_uid176_i_div_conv_b_6_mem_reset0 <= not (resetn);
    redist96_yPS_uid176_i_div_conv_b_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 32,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist96_yPS_uid176_i_div_conv_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist96_yPS_uid176_i_div_conv_b_6_mem_reset0,
        clock1 => clock,
        address_a => redist96_yPS_uid176_i_div_conv_b_6_mem_aa,
        data_a => redist96_yPS_uid176_i_div_conv_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist96_yPS_uid176_i_div_conv_b_6_mem_ab,
        q_b => redist96_yPS_uid176_i_div_conv_b_6_mem_iq
    );
    redist96_yPS_uid176_i_div_conv_b_6_mem_q <= redist96_yPS_uid176_i_div_conv_b_6_mem_iq(31 downto 0);

    -- redist96_yPS_uid176_i_div_conv_b_6_outputreg(DELAY,1093)
    redist96_yPS_uid176_i_div_conv_b_6_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist96_yPS_uid176_i_div_conv_b_6_mem_q, xout => redist96_yPS_uid176_i_div_conv_b_6_outputreg_q, clk => clock, aclr => resetn );

    -- leftShiftStage0_uid664_normY_uid178_i_div_conv(MUX,663)@8
    leftShiftStage0_uid664_normY_uid178_i_div_conv_s <= leftShiftStageSel5Dto4_uid663_normY_uid178_i_div_conv_merged_bit_select_b;
    leftShiftStage0_uid664_normY_uid178_i_div_conv_combproc: PROCESS (leftShiftStage0_uid664_normY_uid178_i_div_conv_s, redist96_yPS_uid176_i_div_conv_b_6_outputreg_q, leftShiftStage0Idx1_uid660_normY_uid178_i_div_conv_q, zs_uid232_zCount_uid116_i_div22_conv_q)
    BEGIN
        CASE (leftShiftStage0_uid664_normY_uid178_i_div_conv_s) IS
            WHEN "00" => leftShiftStage0_uid664_normY_uid178_i_div_conv_q <= redist96_yPS_uid176_i_div_conv_b_6_outputreg_q;
            WHEN "01" => leftShiftStage0_uid664_normY_uid178_i_div_conv_q <= leftShiftStage0Idx1_uid660_normY_uid178_i_div_conv_q;
            WHEN "10" => leftShiftStage0_uid664_normY_uid178_i_div_conv_q <= zs_uid232_zCount_uid116_i_div22_conv_q;
            WHEN "11" => leftShiftStage0_uid664_normY_uid178_i_div_conv_q <= zs_uid232_zCount_uid116_i_div22_conv_q;
            WHEN OTHERS => leftShiftStage0_uid664_normY_uid178_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid675_normY_uid178_i_div_conv(MUX,674)@8
    leftShiftStage1_uid675_normY_uid178_i_div_conv_s <= leftShiftStageSel5Dto4_uid663_normY_uid178_i_div_conv_merged_bit_select_c;
    leftShiftStage1_uid675_normY_uid178_i_div_conv_combproc: PROCESS (leftShiftStage1_uid675_normY_uid178_i_div_conv_s, leftShiftStage0_uid664_normY_uid178_i_div_conv_q, leftShiftStage1Idx1_uid667_normY_uid178_i_div_conv_q, leftShiftStage1Idx2_uid670_normY_uid178_i_div_conv_q, leftShiftStage1Idx3_uid673_normY_uid178_i_div_conv_q)
    BEGIN
        CASE (leftShiftStage1_uid675_normY_uid178_i_div_conv_s) IS
            WHEN "00" => leftShiftStage1_uid675_normY_uid178_i_div_conv_q <= leftShiftStage0_uid664_normY_uid178_i_div_conv_q;
            WHEN "01" => leftShiftStage1_uid675_normY_uid178_i_div_conv_q <= leftShiftStage1Idx1_uid667_normY_uid178_i_div_conv_q;
            WHEN "10" => leftShiftStage1_uid675_normY_uid178_i_div_conv_q <= leftShiftStage1Idx2_uid670_normY_uid178_i_div_conv_q;
            WHEN "11" => leftShiftStage1_uid675_normY_uid178_i_div_conv_q <= leftShiftStage1Idx3_uid673_normY_uid178_i_div_conv_q;
            WHEN OTHERS => leftShiftStage1_uid675_normY_uid178_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid304_zCount_uid177_i_div_conv(LOGICAL,303)@3 + 1
    vCount_uid304_zCount_uid177_i_div_conv_qi <= "1" WHEN redist94_yPS_uid176_i_div_conv_b_1_q = zs_uid232_zCount_uid116_i_div22_conv_q ELSE "0";
    vCount_uid304_zCount_uid177_i_div_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid304_zCount_uid177_i_div_conv_qi, xout => vCount_uid304_zCount_uid177_i_div_conv_q, clk => clock, aclr => resetn );

    -- redist70_vCount_uid304_zCount_uid177_i_div_conv_q_5(DELAY,897)
    redist70_vCount_uid304_zCount_uid177_i_div_conv_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid304_zCount_uid177_i_div_conv_q, xout => redist70_vCount_uid304_zCount_uid177_i_div_conv_q_5_q, clk => clock, aclr => resetn );

    -- mO_uid235_zCount_uid116_i_div22_conv(CONSTANT,234)
    mO_uid235_zCount_uid116_i_div22_conv_q <= "11111111111111111111111111111111";

    -- vStagei_uid307_zCount_uid177_i_div_conv(MUX,306)@4
    vStagei_uid307_zCount_uid177_i_div_conv_s <= vCount_uid304_zCount_uid177_i_div_conv_q;
    vStagei_uid307_zCount_uid177_i_div_conv_combproc: PROCESS (vStagei_uid307_zCount_uid177_i_div_conv_s, redist95_yPS_uid176_i_div_conv_b_2_q, mO_uid235_zCount_uid116_i_div22_conv_q)
    BEGIN
        CASE (vStagei_uid307_zCount_uid177_i_div_conv_s) IS
            WHEN "0" => vStagei_uid307_zCount_uid177_i_div_conv_q <= redist95_yPS_uid176_i_div_conv_b_2_q;
            WHEN "1" => vStagei_uid307_zCount_uid177_i_div_conv_q <= mO_uid235_zCount_uid116_i_div22_conv_q;
            WHEN OTHERS => vStagei_uid307_zCount_uid177_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select(BITSELECT,819)@4
    rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_b <= vStagei_uid307_zCount_uid177_i_div_conv_q(31 downto 16);
    rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_c <= vStagei_uid307_zCount_uid177_i_div_conv_q(15 downto 0);

    -- vCount_uid310_zCount_uid177_i_div_conv(LOGICAL,309)@4 + 1
    vCount_uid310_zCount_uid177_i_div_conv_qi <= "1" WHEN rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_b = zs_uid238_zCount_uid116_i_div22_conv_q ELSE "0";
    vCount_uid310_zCount_uid177_i_div_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid310_zCount_uid177_i_div_conv_qi, xout => vCount_uid310_zCount_uid177_i_div_conv_q, clk => clock, aclr => resetn );

    -- redist69_vCount_uid310_zCount_uid177_i_div_conv_q_4(DELAY,896)
    redist69_vCount_uid310_zCount_uid177_i_div_conv_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid310_zCount_uid177_i_div_conv_q, xout => redist69_vCount_uid310_zCount_uid177_i_div_conv_q_4_q, clk => clock, aclr => resetn );

    -- redist3_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_c_1(DELAY,830)
    redist3_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_c, xout => redist3_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist2_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_b_1(DELAY,829)
    redist2_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_b, xout => redist2_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid313_zCount_uid177_i_div_conv(MUX,312)@5
    vStagei_uid313_zCount_uid177_i_div_conv_s <= vCount_uid310_zCount_uid177_i_div_conv_q;
    vStagei_uid313_zCount_uid177_i_div_conv_combproc: PROCESS (vStagei_uid313_zCount_uid177_i_div_conv_s, redist2_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_b_1_q, redist3_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid313_zCount_uid177_i_div_conv_s) IS
            WHEN "0" => vStagei_uid313_zCount_uid177_i_div_conv_q <= redist2_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid313_zCount_uid177_i_div_conv_q <= redist3_rVStage_uid309_zCount_uid177_i_div_conv_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid313_zCount_uid177_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select(BITSELECT,820)@5
    rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_b <= vStagei_uid313_zCount_uid177_i_div_conv_q(15 downto 8);
    rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_c <= vStagei_uid313_zCount_uid177_i_div_conv_q(7 downto 0);

    -- vCount_uid316_zCount_uid177_i_div_conv(LOGICAL,315)@5 + 1
    vCount_uid316_zCount_uid177_i_div_conv_qi <= "1" WHEN rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_b = zs_uid244_zCount_uid116_i_div22_conv_q ELSE "0";
    vCount_uid316_zCount_uid177_i_div_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid316_zCount_uid177_i_div_conv_qi, xout => vCount_uid316_zCount_uid177_i_div_conv_q, clk => clock, aclr => resetn );

    -- redist68_vCount_uid316_zCount_uid177_i_div_conv_q_3(DELAY,895)
    redist68_vCount_uid316_zCount_uid177_i_div_conv_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid316_zCount_uid177_i_div_conv_q, xout => redist68_vCount_uid316_zCount_uid177_i_div_conv_q_3_q, clk => clock, aclr => resetn );

    -- redist1_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_c_1(DELAY,828)
    redist1_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_c, xout => redist1_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist0_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_b_1(DELAY,827)
    redist0_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_b, xout => redist0_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid319_zCount_uid177_i_div_conv(MUX,318)@6
    vStagei_uid319_zCount_uid177_i_div_conv_s <= vCount_uid316_zCount_uid177_i_div_conv_q;
    vStagei_uid319_zCount_uid177_i_div_conv_combproc: PROCESS (vStagei_uid319_zCount_uid177_i_div_conv_s, redist0_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_b_1_q, redist1_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid319_zCount_uid177_i_div_conv_s) IS
            WHEN "0" => vStagei_uid319_zCount_uid177_i_div_conv_q <= redist0_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid319_zCount_uid177_i_div_conv_q <= redist1_rVStage_uid315_zCount_uid177_i_div_conv_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid319_zCount_uid177_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid321_zCount_uid177_i_div_conv_merged_bit_select(BITSELECT,821)@6
    rVStage_uid321_zCount_uid177_i_div_conv_merged_bit_select_b <= vStagei_uid319_zCount_uid177_i_div_conv_q(7 downto 4);
    rVStage_uid321_zCount_uid177_i_div_conv_merged_bit_select_c <= vStagei_uid319_zCount_uid177_i_div_conv_q(3 downto 0);

    -- vCount_uid322_zCount_uid177_i_div_conv(LOGICAL,321)@6
    vCount_uid322_zCount_uid177_i_div_conv_q <= "1" WHEN rVStage_uid321_zCount_uid177_i_div_conv_merged_bit_select_b = zs_uid250_zCount_uid116_i_div22_conv_q ELSE "0";

    -- redist67_vCount_uid322_zCount_uid177_i_div_conv_q_2(DELAY,894)
    redist67_vCount_uid322_zCount_uid177_i_div_conv_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid322_zCount_uid177_i_div_conv_q, xout => redist67_vCount_uid322_zCount_uid177_i_div_conv_q_2_q, clk => clock, aclr => resetn );

    -- vStagei_uid325_zCount_uid177_i_div_conv(MUX,324)@6 + 1
    vStagei_uid325_zCount_uid177_i_div_conv_s <= vCount_uid322_zCount_uid177_i_div_conv_q;
    vStagei_uid325_zCount_uid177_i_div_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            vStagei_uid325_zCount_uid177_i_div_conv_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (vStagei_uid325_zCount_uid177_i_div_conv_s) IS
                WHEN "0" => vStagei_uid325_zCount_uid177_i_div_conv_q <= rVStage_uid321_zCount_uid177_i_div_conv_merged_bit_select_b;
                WHEN "1" => vStagei_uid325_zCount_uid177_i_div_conv_q <= rVStage_uid321_zCount_uid177_i_div_conv_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid325_zCount_uid177_i_div_conv_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid327_zCount_uid177_i_div_conv_merged_bit_select(BITSELECT,822)@7
    rVStage_uid327_zCount_uid177_i_div_conv_merged_bit_select_b <= vStagei_uid325_zCount_uid177_i_div_conv_q(3 downto 2);
    rVStage_uid327_zCount_uid177_i_div_conv_merged_bit_select_c <= vStagei_uid325_zCount_uid177_i_div_conv_q(1 downto 0);

    -- vCount_uid328_zCount_uid177_i_div_conv(LOGICAL,327)@7
    vCount_uid328_zCount_uid177_i_div_conv_q <= "1" WHEN rVStage_uid327_zCount_uid177_i_div_conv_merged_bit_select_b = zs_uid256_zCount_uid116_i_div22_conv_q ELSE "0";

    -- redist66_vCount_uid328_zCount_uid177_i_div_conv_q_1(DELAY,893)
    redist66_vCount_uid328_zCount_uid177_i_div_conv_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid328_zCount_uid177_i_div_conv_q, xout => redist66_vCount_uid328_zCount_uid177_i_div_conv_q_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid331_zCount_uid177_i_div_conv(MUX,330)@7
    vStagei_uid331_zCount_uid177_i_div_conv_s <= vCount_uid328_zCount_uid177_i_div_conv_q;
    vStagei_uid331_zCount_uid177_i_div_conv_combproc: PROCESS (vStagei_uid331_zCount_uid177_i_div_conv_s, rVStage_uid327_zCount_uid177_i_div_conv_merged_bit_select_b, rVStage_uid327_zCount_uid177_i_div_conv_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid331_zCount_uid177_i_div_conv_s) IS
            WHEN "0" => vStagei_uid331_zCount_uid177_i_div_conv_q <= rVStage_uid327_zCount_uid177_i_div_conv_merged_bit_select_b;
            WHEN "1" => vStagei_uid331_zCount_uid177_i_div_conv_q <= rVStage_uid327_zCount_uid177_i_div_conv_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid331_zCount_uid177_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid333_zCount_uid177_i_div_conv(BITSELECT,332)@7
    rVStage_uid333_zCount_uid177_i_div_conv_b <= vStagei_uid331_zCount_uid177_i_div_conv_q(1 downto 1);

    -- redist65_rVStage_uid333_zCount_uid177_i_div_conv_b_1(DELAY,892)
    redist65_rVStage_uid333_zCount_uid177_i_div_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid333_zCount_uid177_i_div_conv_b, xout => redist65_rVStage_uid333_zCount_uid177_i_div_conv_b_1_q, clk => clock, aclr => resetn );

    -- vCount_uid334_zCount_uid177_i_div_conv(LOGICAL,333)@8
    vCount_uid334_zCount_uid177_i_div_conv_q <= "1" WHEN redist65_rVStage_uid333_zCount_uid177_i_div_conv_b_1_q = GND_q ELSE "0";

    -- r_uid335_zCount_uid177_i_div_conv(BITJOIN,334)@8
    r_uid335_zCount_uid177_i_div_conv_q <= redist70_vCount_uid304_zCount_uid177_i_div_conv_q_5_q & redist69_vCount_uid310_zCount_uid177_i_div_conv_q_4_q & redist68_vCount_uid316_zCount_uid177_i_div_conv_q_3_q & redist67_vCount_uid322_zCount_uid177_i_div_conv_q_2_q & redist66_vCount_uid328_zCount_uid177_i_div_conv_q_1_q & vCount_uid334_zCount_uid177_i_div_conv_q;

    -- leftShiftStageSel5Dto4_uid663_normY_uid178_i_div_conv_merged_bit_select(BITSELECT,823)@8
    leftShiftStageSel5Dto4_uid663_normY_uid178_i_div_conv_merged_bit_select_b <= r_uid335_zCount_uid177_i_div_conv_q(5 downto 4);
    leftShiftStageSel5Dto4_uid663_normY_uid178_i_div_conv_merged_bit_select_c <= r_uid335_zCount_uid177_i_div_conv_q(3 downto 2);
    leftShiftStageSel5Dto4_uid663_normY_uid178_i_div_conv_merged_bit_select_d <= r_uid335_zCount_uid177_i_div_conv_q(1 downto 0);

    -- leftShiftStage2_uid686_normY_uid178_i_div_conv(MUX,685)@8
    leftShiftStage2_uid686_normY_uid178_i_div_conv_s <= leftShiftStageSel5Dto4_uid663_normY_uid178_i_div_conv_merged_bit_select_d;
    leftShiftStage2_uid686_normY_uid178_i_div_conv_combproc: PROCESS (leftShiftStage2_uid686_normY_uid178_i_div_conv_s, leftShiftStage1_uid675_normY_uid178_i_div_conv_q, leftShiftStage2Idx1_uid678_normY_uid178_i_div_conv_q, leftShiftStage2Idx2_uid681_normY_uid178_i_div_conv_q, leftShiftStage2Idx3_uid684_normY_uid178_i_div_conv_q)
    BEGIN
        CASE (leftShiftStage2_uid686_normY_uid178_i_div_conv_s) IS
            WHEN "00" => leftShiftStage2_uid686_normY_uid178_i_div_conv_q <= leftShiftStage1_uid675_normY_uid178_i_div_conv_q;
            WHEN "01" => leftShiftStage2_uid686_normY_uid178_i_div_conv_q <= leftShiftStage2Idx1_uid678_normY_uid178_i_div_conv_q;
            WHEN "10" => leftShiftStage2_uid686_normY_uid178_i_div_conv_q <= leftShiftStage2Idx2_uid681_normY_uid178_i_div_conv_q;
            WHEN "11" => leftShiftStage2_uid686_normY_uid178_i_div_conv_q <= leftShiftStage2Idx3_uid684_normY_uid178_i_div_conv_q;
            WHEN OTHERS => leftShiftStage2_uid686_normY_uid178_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- normYNoLeadOne_uid179_i_div_conv(BITSELECT,178)@8
    normYNoLeadOne_uid179_i_div_conv_in <= leftShiftStage2_uid686_normY_uid178_i_div_conv_q(30 downto 0);
    normYNoLeadOne_uid179_i_div_conv_b <= normYNoLeadOne_uid179_i_div_conv_in(30 downto 0);

    -- yAddr_uid187_i_div_conv_merged_bit_select(BITSELECT,811)@8
    yAddr_uid187_i_div_conv_merged_bit_select_b <= normYNoLeadOne_uid179_i_div_conv_b(30 downto 23);
    yAddr_uid187_i_div_conv_merged_bit_select_c <= normYNoLeadOne_uid179_i_div_conv_b(22 downto 0);

    -- redist12_yAddr_uid187_i_div_conv_merged_bit_select_c_2(DELAY,839)
    redist12_yAddr_uid187_i_div_conv_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yAddr_uid187_i_div_conv_merged_bit_select_c, xout => redist12_yAddr_uid187_i_div_conv_merged_bit_select_c_2_q, clk => clock, aclr => resetn );

    -- redist13_yAddr_uid187_i_div_conv_merged_bit_select_c_5(DELAY,840)
    redist13_yAddr_uid187_i_div_conv_merged_bit_select_c_5 : dspba_delay
    GENERIC MAP ( width => 23, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist12_yAddr_uid187_i_div_conv_merged_bit_select_c_2_q, xout => redist13_yAddr_uid187_i_div_conv_merged_bit_select_c_5_q, clk => clock, aclr => resetn );

    -- redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_wraddr(REG,1006)
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_wraddr_q <= STD_LOGIC_VECTOR(redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem(DUALMEM,1004)
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_ia <= STD_LOGIC_VECTOR(redist13_yAddr_uid187_i_div_conv_merged_bit_select_c_5_q);
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_aa <= redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_wraddr_q;
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_ab <= redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_rdcnt_q;
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_reset0 <= not (resetn);
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 23,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 23,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_reset0,
        clock1 => clock,
        address_a => redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_aa,
        data_a => redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_ab,
        q_b => redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_iq
    );
    redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_q <= redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_iq(22 downto 0);

    -- nx_mergedSignalTM_uid431_pT3_uid366_invPolyEval(BITJOIN,430)@17
    nx_mergedSignalTM_uid431_pT3_uid366_invPolyEval_q <= GND_q & redist14_yAddr_uid187_i_div_conv_merged_bit_select_c_9_mem_q;

    -- topRangeX_uid433_pT3_uid366_invPolyEval_merged_bit_select(BITSELECT,826)@17
    topRangeX_uid433_pT3_uid366_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid431_pT3_uid366_invPolyEval_q(23 downto 6));
    topRangeX_uid433_pT3_uid366_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid431_pT3_uid366_invPolyEval_q(5 downto 0));

    -- aboveLeftY_bottomExtension_uid395_pT3_uid296_invPolyEval(CONSTANT,394)
    aboveLeftY_bottomExtension_uid395_pT3_uid296_invPolyEval_q <= "00000";

    -- aboveLeftY_mergedSignalTM_uid438_pT3_uid366_invPolyEval(BITJOIN,437)@17
    aboveLeftY_mergedSignalTM_uid438_pT3_uid366_invPolyEval_q <= topRangeY_uid434_pT3_uid366_invPolyEval_merged_bit_select_c & aboveLeftY_bottomExtension_uid395_pT3_uid296_invPolyEval_q;

    -- memoryC3_uid346_invTabGen_lutmem(DUALMEM,764)@8 + 2
    -- in j@20000000
    memoryC3_uid346_invTabGen_lutmem_aa <= yAddr_uid187_i_div_conv_merged_bit_select_b;
    memoryC3_uid346_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC3_uid346_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 14,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body_conv_c0_enter103A7ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid346_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid346_invTabGen_lutmem_aa,
        q_a => memoryC3_uid346_invTabGen_lutmem_ir
    );
    memoryC3_uid346_invTabGen_lutmem_r <= memoryC3_uid346_invTabGen_lutmem_ir(13 downto 0);

    -- yT1_uid353_invPolyEval(BITSELECT,352)@10
    yT1_uid353_invPolyEval_b <= redist12_yAddr_uid187_i_div_conv_merged_bit_select_c_2_q(22 downto 9);

    -- prodXY_uid413_pT1_uid354_invPolyEval_cma(CHAINMULTADD,776)@10 + 2
    prodXY_uid413_pT1_uid354_invPolyEval_cma_reset <= not (resetn);
    prodXY_uid413_pT1_uid354_invPolyEval_cma_ena0 <= '1';
    prodXY_uid413_pT1_uid354_invPolyEval_cma_ena1 <= prodXY_uid413_pT1_uid354_invPolyEval_cma_ena0;
    prodXY_uid413_pT1_uid354_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid413_pT1_uid354_invPolyEval_cma_a0(0),15));
    prodXY_uid413_pT1_uid354_invPolyEval_cma_p(0) <= prodXY_uid413_pT1_uid354_invPolyEval_cma_l(0) * prodXY_uid413_pT1_uid354_invPolyEval_cma_c0(0);
    prodXY_uid413_pT1_uid354_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid413_pT1_uid354_invPolyEval_cma_p(0),29);
    prodXY_uid413_pT1_uid354_invPolyEval_cma_w(0) <= prodXY_uid413_pT1_uid354_invPolyEval_cma_u(0);
    prodXY_uid413_pT1_uid354_invPolyEval_cma_x(0) <= prodXY_uid413_pT1_uid354_invPolyEval_cma_w(0);
    prodXY_uid413_pT1_uid354_invPolyEval_cma_y(0) <= prodXY_uid413_pT1_uid354_invPolyEval_cma_x(0);
    prodXY_uid413_pT1_uid354_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid413_pT1_uid354_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid413_pT1_uid354_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid413_pT1_uid354_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid413_pT1_uid354_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid353_invPolyEval_b),14);
                prodXY_uid413_pT1_uid354_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC3_uid346_invTabGen_lutmem_r),14);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid413_pT1_uid354_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid413_pT1_uid354_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid413_pT1_uid354_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid413_pT1_uid354_invPolyEval_cma_s(0) <= prodXY_uid413_pT1_uid354_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid413_pT1_uid354_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid413_pT1_uid354_invPolyEval_cma_s(0)(27 downto 0)), xout => prodXY_uid413_pT1_uid354_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    prodXY_uid413_pT1_uid354_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid413_pT1_uid354_invPolyEval_cma_qq(27 downto 0));

    -- osig_uid414_pT1_uid354_invPolyEval(BITSELECT,413)@12
    osig_uid414_pT1_uid354_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid413_pT1_uid354_invPolyEval_cma_q(27 downto 14));

    -- highBBits_uid356_invPolyEval(BITSELECT,355)@12
    highBBits_uid356_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid414_pT1_uid354_invPolyEval_b(13 downto 1));

    -- redist9_yAddr_uid187_i_div_conv_merged_bit_select_b_2(DELAY,836)
    redist9_yAddr_uid187_i_div_conv_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yAddr_uid187_i_div_conv_merged_bit_select_b, xout => redist9_yAddr_uid187_i_div_conv_merged_bit_select_b_2_q, clk => clock, aclr => resetn );

    -- memoryC2_uid343_invTabGen_lutmem(DUALMEM,763)@10 + 2
    -- in j@20000000
    memoryC2_uid343_invTabGen_lutmem_aa <= redist9_yAddr_uid187_i_div_conv_merged_bit_select_b_2_q;
    memoryC2_uid343_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC2_uid343_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 21,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body_conv_c0_enter103A6ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid343_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid343_invTabGen_lutmem_aa,
        q_a => memoryC2_uid343_invTabGen_lutmem_ir
    );
    memoryC2_uid343_invTabGen_lutmem_r <= memoryC2_uid343_invTabGen_lutmem_ir(20 downto 0);

    -- s1sumAHighB_uid357_invPolyEval(ADD,356)@12 + 1
    s1sumAHighB_uid357_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => memoryC2_uid343_invTabGen_lutmem_r(20)) & memoryC2_uid343_invTabGen_lutmem_r));
    s1sumAHighB_uid357_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 13 => highBBits_uid356_invPolyEval_b(12)) & highBBits_uid356_invPolyEval_b));
    s1sumAHighB_uid357_invPolyEval_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            s1sumAHighB_uid357_invPolyEval_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            s1sumAHighB_uid357_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid357_invPolyEval_a) + SIGNED(s1sumAHighB_uid357_invPolyEval_b));
        END IF;
    END PROCESS;
    s1sumAHighB_uid357_invPolyEval_q <= s1sumAHighB_uid357_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid355_invPolyEval(BITSELECT,354)@12
    lowRangeB_uid355_invPolyEval_in <= osig_uid414_pT1_uid354_invPolyEval_b(0 downto 0);
    lowRangeB_uid355_invPolyEval_b <= lowRangeB_uid355_invPolyEval_in(0 downto 0);

    -- redist63_lowRangeB_uid355_invPolyEval_b_1(DELAY,890)
    redist63_lowRangeB_uid355_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => lowRangeB_uid355_invPolyEval_b, xout => redist63_lowRangeB_uid355_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- s1_uid358_invPolyEval(BITJOIN,357)@13
    s1_uid358_invPolyEval_q <= s1sumAHighB_uid357_invPolyEval_q & redist63_lowRangeB_uid355_invPolyEval_b_1_q;

    -- yT2_uid359_invPolyEval(BITSELECT,358)@13
    yT2_uid359_invPolyEval_b <= redist13_yAddr_uid187_i_div_conv_merged_bit_select_c_5_q(22 downto 2);

    -- prodXY_uid416_pT2_uid360_invPolyEval_cma(CHAINMULTADD,777)@13 + 2
    prodXY_uid416_pT2_uid360_invPolyEval_cma_reset <= not (resetn);
    prodXY_uid416_pT2_uid360_invPolyEval_cma_ena0 <= '1';
    prodXY_uid416_pT2_uid360_invPolyEval_cma_ena1 <= prodXY_uid416_pT2_uid360_invPolyEval_cma_ena0;
    prodXY_uid416_pT2_uid360_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid416_pT2_uid360_invPolyEval_cma_a0(0),22));
    prodXY_uid416_pT2_uid360_invPolyEval_cma_p(0) <= prodXY_uid416_pT2_uid360_invPolyEval_cma_l(0) * prodXY_uid416_pT2_uid360_invPolyEval_cma_c0(0);
    prodXY_uid416_pT2_uid360_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid416_pT2_uid360_invPolyEval_cma_p(0),45);
    prodXY_uid416_pT2_uid360_invPolyEval_cma_w(0) <= prodXY_uid416_pT2_uid360_invPolyEval_cma_u(0);
    prodXY_uid416_pT2_uid360_invPolyEval_cma_x(0) <= prodXY_uid416_pT2_uid360_invPolyEval_cma_w(0);
    prodXY_uid416_pT2_uid360_invPolyEval_cma_y(0) <= prodXY_uid416_pT2_uid360_invPolyEval_cma_x(0);
    prodXY_uid416_pT2_uid360_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid416_pT2_uid360_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid416_pT2_uid360_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid416_pT2_uid360_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid416_pT2_uid360_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT2_uid359_invPolyEval_b),21);
                prodXY_uid416_pT2_uid360_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid358_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid416_pT2_uid360_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid416_pT2_uid360_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid416_pT2_uid360_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid416_pT2_uid360_invPolyEval_cma_s(0) <= prodXY_uid416_pT2_uid360_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid416_pT2_uid360_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 44, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid416_pT2_uid360_invPolyEval_cma_s(0)(43 downto 0)), xout => prodXY_uid416_pT2_uid360_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    prodXY_uid416_pT2_uid360_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid416_pT2_uid360_invPolyEval_cma_qq(43 downto 0));

    -- osig_uid417_pT2_uid360_invPolyEval(BITSELECT,416)@15
    osig_uid417_pT2_uid360_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid416_pT2_uid360_invPolyEval_cma_q(43 downto 21));

    -- redist59_osig_uid417_pT2_uid360_invPolyEval_b_1(DELAY,886)
    redist59_osig_uid417_pT2_uid360_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => osig_uid417_pT2_uid360_invPolyEval_b, xout => redist59_osig_uid417_pT2_uid360_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid362_invPolyEval(BITSELECT,361)@16
    highBBits_uid362_invPolyEval_b <= STD_LOGIC_VECTOR(redist59_osig_uid417_pT2_uid360_invPolyEval_b_1_q(22 downto 1));

    -- redist10_yAddr_uid187_i_div_conv_merged_bit_select_b_5(DELAY,837)
    redist10_yAddr_uid187_i_div_conv_merged_bit_select_b_5 : dspba_delay
    GENERIC MAP ( width => 8, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_yAddr_uid187_i_div_conv_merged_bit_select_b_2_q, xout => redist10_yAddr_uid187_i_div_conv_merged_bit_select_b_5_q, clk => clock, aclr => resetn );

    -- memoryC1_uid340_invTabGen_lutmem(DUALMEM,762)@13 + 2
    -- in j@20000000
    memoryC1_uid340_invTabGen_lutmem_aa <= redist10_yAddr_uid187_i_div_conv_merged_bit_select_b_5_q;
    memoryC1_uid340_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC1_uid340_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 29,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body_conv_c0_enter103A5ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid340_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid340_invTabGen_lutmem_aa,
        q_a => memoryC1_uid340_invTabGen_lutmem_ir
    );
    memoryC1_uid340_invTabGen_lutmem_r <= memoryC1_uid340_invTabGen_lutmem_ir(28 downto 0);

    -- redist50_memoryC1_uid340_invTabGen_lutmem_r_1(DELAY,877)
    redist50_memoryC1_uid340_invTabGen_lutmem_r_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => memoryC1_uid340_invTabGen_lutmem_r, xout => redist50_memoryC1_uid340_invTabGen_lutmem_r_1_q, clk => clock, aclr => resetn );

    -- s2sumAHighB_uid363_invPolyEval(ADD,362)@16 + 1
    s2sumAHighB_uid363_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => redist50_memoryC1_uid340_invTabGen_lutmem_r_1_q(28)) & redist50_memoryC1_uid340_invTabGen_lutmem_r_1_q));
    s2sumAHighB_uid363_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => highBBits_uid362_invPolyEval_b(21)) & highBBits_uid362_invPolyEval_b));
    s2sumAHighB_uid363_invPolyEval_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            s2sumAHighB_uid363_invPolyEval_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            s2sumAHighB_uid363_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid363_invPolyEval_a) + SIGNED(s2sumAHighB_uid363_invPolyEval_b));
        END IF;
    END PROCESS;
    s2sumAHighB_uid363_invPolyEval_q <= s2sumAHighB_uid363_invPolyEval_o(29 downto 0);

    -- lowRangeB_uid361_invPolyEval(BITSELECT,360)@16
    lowRangeB_uid361_invPolyEval_in <= redist59_osig_uid417_pT2_uid360_invPolyEval_b_1_q(0 downto 0);
    lowRangeB_uid361_invPolyEval_b <= lowRangeB_uid361_invPolyEval_in(0 downto 0);

    -- redist62_lowRangeB_uid361_invPolyEval_b_1(DELAY,889)
    redist62_lowRangeB_uid361_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => lowRangeB_uid361_invPolyEval_b, xout => redist62_lowRangeB_uid361_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- s2_uid364_invPolyEval(BITJOIN,363)@17
    s2_uid364_invPolyEval_q <= s2sumAHighB_uid363_invPolyEval_q & redist62_lowRangeB_uid361_invPolyEval_b_1_q;

    -- topRangeY_uid434_pT3_uid366_invPolyEval_merged_bit_select(BITSELECT,824)@17
    topRangeY_uid434_pT3_uid366_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(s2_uid364_invPolyEval_q(30 downto 13));
    topRangeY_uid434_pT3_uid366_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(s2_uid364_invPolyEval_q(12 downto 0));

    -- rightBottomX_mergedSignalTM_uid442_pT3_uid366_invPolyEval(BITJOIN,441)@17
    rightBottomX_mergedSignalTM_uid442_pT3_uid366_invPolyEval_q <= topRangeX_uid433_pT3_uid366_invPolyEval_merged_bit_select_c & rightBottomX_bottomExtension_uid399_pT3_uid296_invPolyEval_q;

    -- multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma(CHAINMULTADD,796)@17 + 2
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_reset <= not (resetn);
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_ena0 <= '1';
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_ena1 <= multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_ena0;
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_l(0) <= SIGNED(RESIZE(multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_a0(0),19));
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_l(1) <= SIGNED(RESIZE(multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_a0(1),19));
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_p(0) <= multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_l(0) * multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_c0(0);
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_p(1) <= multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_l(1) * multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_c0(1);
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_u(0) <= RESIZE(multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_p(0),38);
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_u(1) <= RESIZE(multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_p(1),38);
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_w(0) <= multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_u(0) + multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_u(1);
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_x(0) <= multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_w(0);
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_y(0) <= multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_x(0);
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_a0 <= (others => (others => '0'));
            multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_ena0 = '1') THEN
                multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(rightBottomX_mergedSignalTM_uid442_pT3_uid366_invPolyEval_q),18);
                multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_a0(1) <= RESIZE(UNSIGNED(aboveLeftY_mergedSignalTM_uid438_pT3_uid366_invPolyEval_q),18);
                multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid434_pT3_uid366_invPolyEval_merged_bit_select_b),18);
                multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_c0(1) <= RESIZE(SIGNED(topRangeX_uid433_pT3_uid366_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_ena1 = '1') THEN
                multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_s(0) <= multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 37, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_s(0)(36 downto 0)), xout => multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_q <= STD_LOGIC_VECTOR(multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_qq(36 downto 0));

    -- redist30_multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_q_1(DELAY,857)
    redist30_multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_q, xout => redist30_multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_q_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid449_pT3_uid366_invPolyEval(BITSELECT,448)@20
    highBBits_uid449_pT3_uid366_invPolyEval_b <= STD_LOGIC_VECTOR(redist30_multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_q_1_q(36 downto 18));

    -- sm0_uid445_pT3_uid366_invPolyEval_cma(CHAINMULTADD,778)@17 + 2
    sm0_uid445_pT3_uid366_invPolyEval_cma_reset <= not (resetn);
    sm0_uid445_pT3_uid366_invPolyEval_cma_ena0 <= '1';
    sm0_uid445_pT3_uid366_invPolyEval_cma_ena1 <= sm0_uid445_pT3_uid366_invPolyEval_cma_ena0;
    sm0_uid445_pT3_uid366_invPolyEval_cma_p(0) <= sm0_uid445_pT3_uid366_invPolyEval_cma_a0(0) * sm0_uid445_pT3_uid366_invPolyEval_cma_c0(0);
    sm0_uid445_pT3_uid366_invPolyEval_cma_u(0) <= RESIZE(sm0_uid445_pT3_uid366_invPolyEval_cma_p(0),36);
    sm0_uid445_pT3_uid366_invPolyEval_cma_w(0) <= sm0_uid445_pT3_uid366_invPolyEval_cma_u(0);
    sm0_uid445_pT3_uid366_invPolyEval_cma_x(0) <= sm0_uid445_pT3_uid366_invPolyEval_cma_w(0);
    sm0_uid445_pT3_uid366_invPolyEval_cma_y(0) <= sm0_uid445_pT3_uid366_invPolyEval_cma_x(0);
    sm0_uid445_pT3_uid366_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            sm0_uid445_pT3_uid366_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid445_pT3_uid366_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (sm0_uid445_pT3_uid366_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid445_pT3_uid366_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_uid433_pT3_uid366_invPolyEval_merged_bit_select_b),18);
                sm0_uid445_pT3_uid366_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid434_pT3_uid366_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid445_pT3_uid366_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            sm0_uid445_pT3_uid366_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (sm0_uid445_pT3_uid366_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid445_pT3_uid366_invPolyEval_cma_s(0) <= sm0_uid445_pT3_uid366_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid445_pT3_uid366_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid445_pT3_uid366_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid445_pT3_uid366_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    sm0_uid445_pT3_uid366_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid445_pT3_uid366_invPolyEval_cma_qq(35 downto 0));

    -- redist48_sm0_uid445_pT3_uid366_invPolyEval_cma_q_1(DELAY,875)
    redist48_sm0_uid445_pT3_uid366_invPolyEval_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => sm0_uid445_pT3_uid366_invPolyEval_cma_q, xout => redist48_sm0_uid445_pT3_uid366_invPolyEval_cma_q_1_q, clk => clock, aclr => resetn );

    -- lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval(ADD,449)@20
    lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 36 => redist48_sm0_uid445_pT3_uid366_invPolyEval_cma_q_1_q(35)) & redist48_sm0_uid445_pT3_uid366_invPolyEval_cma_q_1_q));
    lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 19 => highBBits_uid449_pT3_uid366_invPolyEval_b(18)) & highBBits_uid449_pT3_uid366_invPolyEval_b));
    lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_b));
    lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_q <= lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_o(36 downto 0);

    -- lowRangeB_uid448_pT3_uid366_invPolyEval(BITSELECT,447)@20
    lowRangeB_uid448_pT3_uid366_invPolyEval_in <= redist30_multSumOfTwoTS_uid446_pT3_uid366_invPolyEval_cma_q_1_q(17 downto 0);
    lowRangeB_uid448_pT3_uid366_invPolyEval_b <= lowRangeB_uid448_pT3_uid366_invPolyEval_in(17 downto 0);

    -- lev1_a0_uid451_pT3_uid366_invPolyEval(BITJOIN,450)@20
    lev1_a0_uid451_pT3_uid366_invPolyEval_q <= lev1_a0sumAHighB_uid450_pT3_uid366_invPolyEval_q & lowRangeB_uid448_pT3_uid366_invPolyEval_b;

    -- os_uid452_pT3_uid366_invPolyEval(BITSELECT,451)@20
    os_uid452_pT3_uid366_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid451_pT3_uid366_invPolyEval_q(52 downto 0));
    os_uid452_pT3_uid366_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid452_pT3_uid366_invPolyEval_in(52 downto 21));

    -- redist58_os_uid452_pT3_uid366_invPolyEval_b_1(DELAY,885)
    redist58_os_uid452_pT3_uid366_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => os_uid452_pT3_uid366_invPolyEval_b, xout => redist58_os_uid452_pT3_uid366_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid368_invPolyEval(BITSELECT,367)@21
    highBBits_uid368_invPolyEval_b <= STD_LOGIC_VECTOR(redist58_os_uid452_pT3_uid366_invPolyEval_b_1_q(31 downto 2));

    -- redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_notEnable(LOGICAL,1000)
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_nor(LOGICAL,1001)
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_nor_q <= not (redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_notEnable_q or redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_sticky_ena_q);

    -- redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_last(CONSTANT,997)
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_last_q <= "010";

    -- redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmp(LOGICAL,998)
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmp_b <= STD_LOGIC_VECTOR("0" & redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_q);
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmp_q <= "1" WHEN redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_last_q = redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmp_b ELSE "0";

    -- redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmpReg(REG,999)
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmpReg_q <= STD_LOGIC_VECTOR(redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmp_q);
        END IF;
    END PROCESS;

    -- redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_sticky_ena(REG,1002)
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_nor_q = "1") THEN
                redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_sticky_ena_q <= STD_LOGIC_VECTOR(redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_enaAnd(LOGICAL,1003)
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_enaAnd_q <= redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_sticky_ena_q and VCC_q;

    -- redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt(COUNTER,995)
    -- low=0, high=3, step=1, init=0
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_i <= redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_i, 2)));

    -- redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_wraddr(REG,996)
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_wraddr_q <= STD_LOGIC_VECTOR(redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem(DUALMEM,994)
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_ia <= STD_LOGIC_VECTOR(redist10_yAddr_uid187_i_div_conv_merged_bit_select_b_5_q);
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_aa <= redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_wraddr_q;
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_ab <= redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_rdcnt_q;
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_reset0 <= not (resetn);
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 8,
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
        clocken1 => redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_reset0,
        clock1 => clock,
        address_a => redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_aa,
        data_a => redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_ab,
        q_b => redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_iq
    );
    redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_q <= redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_iq(7 downto 0);

    -- memoryC0_uid337_invTabGen_lutmem(DUALMEM,761)@18 + 2
    -- in j@20000000
    memoryC0_uid337_invTabGen_lutmem_aa <= redist11_yAddr_uid187_i_div_conv_merged_bit_select_b_10_mem_q;
    memoryC0_uid337_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC0_uid337_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 38,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body_conv_c0_enter103A4ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid337_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid337_invTabGen_lutmem_aa,
        q_a => memoryC0_uid337_invTabGen_lutmem_ir
    );
    memoryC0_uid337_invTabGen_lutmem_r <= memoryC0_uid337_invTabGen_lutmem_ir(37 downto 0);

    -- redist51_memoryC0_uid337_invTabGen_lutmem_r_1(DELAY,878)
    redist51_memoryC0_uid337_invTabGen_lutmem_r_1 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => memoryC0_uid337_invTabGen_lutmem_r, xout => redist51_memoryC0_uid337_invTabGen_lutmem_r_1_q, clk => clock, aclr => resetn );

    -- s3sumAHighB_uid369_invPolyEval(ADD,368)@21
    s3sumAHighB_uid369_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 38 => redist51_memoryC0_uid337_invTabGen_lutmem_r_1_q(37)) & redist51_memoryC0_uid337_invTabGen_lutmem_r_1_q));
    s3sumAHighB_uid369_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 30 => highBBits_uid368_invPolyEval_b(29)) & highBBits_uid368_invPolyEval_b));
    s3sumAHighB_uid369_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s3sumAHighB_uid369_invPolyEval_a) + SIGNED(s3sumAHighB_uid369_invPolyEval_b));
    s3sumAHighB_uid369_invPolyEval_q <= s3sumAHighB_uid369_invPolyEval_o(38 downto 0);

    -- lowRangeB_uid367_invPolyEval(BITSELECT,366)@21
    lowRangeB_uid367_invPolyEval_in <= redist58_os_uid452_pT3_uid366_invPolyEval_b_1_q(1 downto 0);
    lowRangeB_uid367_invPolyEval_b <= lowRangeB_uid367_invPolyEval_in(1 downto 0);

    -- s3_uid370_invPolyEval(BITJOIN,369)@21
    s3_uid370_invPolyEval_q <= s3sumAHighB_uid369_invPolyEval_q & lowRangeB_uid367_invPolyEval_b;

    -- fxpInverseRes_uid190_i_div_conv(BITSELECT,189)@21
    fxpInverseRes_uid190_i_div_conv_in <= s3_uid370_invPolyEval_q(38 downto 0);
    fxpInverseRes_uid190_i_div_conv_b <= fxpInverseRes_uid190_i_div_conv_in(38 downto 6);

    -- redist91_fxpInverseRes_uid190_i_div_conv_b_1(DELAY,918)
    redist91_fxpInverseRes_uid190_i_div_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fxpInverseRes_uid190_i_div_conv_b, xout => redist91_fxpInverseRes_uid190_i_div_conv_b_1_q, clk => clock, aclr => resetn );

    -- paddingY_uid119_i_div22_conv(CONSTANT,118)
    paddingY_uid119_i_div22_conv_q <= "0000000000000000000000000000000";

    -- updatedY_uid120_i_div22_conv(BITJOIN,119)@20
    updatedY_uid120_i_div22_conv_q <= GND_q & paddingY_uid119_i_div22_conv_q;

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_notEnable(LOGICAL,1089)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_nor(LOGICAL,1090)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_nor_q <= not (redist93_normYNoLeadOne_uid179_i_div_conv_b_12_notEnable_q or redist93_normYNoLeadOne_uid179_i_div_conv_b_12_sticky_ena_q);

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_last(CONSTANT,1086)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_last_q <= "0111";

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_cmp(LOGICAL,1087)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_cmp_q <= "1" WHEN redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_last_q = redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_q ELSE "0";

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_cmpReg(REG,1088)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist93_normYNoLeadOne_uid179_i_div_conv_b_12_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist93_normYNoLeadOne_uid179_i_div_conv_b_12_cmpReg_q <= STD_LOGIC_VECTOR(redist93_normYNoLeadOne_uid179_i_div_conv_b_12_cmp_q);
        END IF;
    END PROCESS;

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_sticky_ena(REG,1091)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist93_normYNoLeadOne_uid179_i_div_conv_b_12_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist93_normYNoLeadOne_uid179_i_div_conv_b_12_nor_q = "1") THEN
                redist93_normYNoLeadOne_uid179_i_div_conv_b_12_sticky_ena_q <= STD_LOGIC_VECTOR(redist93_normYNoLeadOne_uid179_i_div_conv_b_12_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_enaAnd(LOGICAL,1092)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_enaAnd_q <= redist93_normYNoLeadOne_uid179_i_div_conv_b_12_sticky_ena_q and VCC_q;

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt(COUNTER,1084)
    -- low=0, high=8, step=1, init=0
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_i = TO_UNSIGNED(7, 4)) THEN
                redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_eq <= '1';
            ELSE
                redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_eq <= '0';
            END IF;
            IF (redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_eq = '1') THEN
                redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_i <= redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_i + 8;
            ELSE
                redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_i <= redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_i, 4)));

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_inputreg(DELAY,1081)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_inputreg : dspba_delay
    GENERIC MAP ( width => 31, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYNoLeadOne_uid179_i_div_conv_b, xout => redist93_normYNoLeadOne_uid179_i_div_conv_b_12_inputreg_q, clk => clock, aclr => resetn );

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_wraddr(REG,1085)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist93_normYNoLeadOne_uid179_i_div_conv_b_12_wraddr_q <= "1000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist93_normYNoLeadOne_uid179_i_div_conv_b_12_wraddr_q <= STD_LOGIC_VECTOR(redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem(DUALMEM,1083)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_ia <= STD_LOGIC_VECTOR(redist93_normYNoLeadOne_uid179_i_div_conv_b_12_inputreg_q);
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_aa <= redist93_normYNoLeadOne_uid179_i_div_conv_b_12_wraddr_q;
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_ab <= redist93_normYNoLeadOne_uid179_i_div_conv_b_12_rdcnt_q;
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_reset0 <= not (resetn);
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 31,
        widthad_a => 4,
        numwords_a => 9,
        width_b => 31,
        widthad_b => 4,
        numwords_b => 9,
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
        clocken1 => redist93_normYNoLeadOne_uid179_i_div_conv_b_12_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_reset0,
        clock1 => clock,
        address_a => redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_aa,
        data_a => redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_ab,
        q_b => redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_iq
    );
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_q <= redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_iq(30 downto 0);

    -- redist93_normYNoLeadOne_uid179_i_div_conv_b_12_outputreg(DELAY,1082)
    redist93_normYNoLeadOne_uid179_i_div_conv_b_12_outputreg : dspba_delay
    GENERIC MAP ( width => 31, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist93_normYNoLeadOne_uid179_i_div_conv_b_12_mem_q, xout => redist93_normYNoLeadOne_uid179_i_div_conv_b_12_outputreg_q, clk => clock, aclr => resetn );

    -- normYIsOneC2_uid180_i_div_conv(LOGICAL,181)@20 + 1
    normYIsOneC2_uid180_i_div_conv_a <= STD_LOGIC_VECTOR("0" & redist93_normYNoLeadOne_uid179_i_div_conv_b_12_outputreg_q);
    normYIsOneC2_uid180_i_div_conv_qi <= "1" WHEN normYIsOneC2_uid180_i_div_conv_a = updatedY_uid120_i_div22_conv_q ELSE "0";
    normYIsOneC2_uid180_i_div_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOneC2_uid180_i_div_conv_qi, xout => normYIsOneC2_uid180_i_div_conv_q, clk => clock, aclr => resetn );

    -- normYIsOneC2_uid183_i_div_conv(BITSELECT,182)@8
    normYIsOneC2_uid183_i_div_conv_b <= STD_LOGIC_VECTOR(leftShiftStage2_uid686_normY_uid178_i_div_conv_q(31 downto 31));

    -- redist92_normYIsOneC2_uid183_i_div_conv_b_13(DELAY,919)
    redist92_normYIsOneC2_uid183_i_div_conv_b_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 13, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOneC2_uid183_i_div_conv_b, xout => redist92_normYIsOneC2_uid183_i_div_conv_b_13_q, clk => clock, aclr => resetn );

    -- normYIsOne_uid184_i_div_conv(LOGICAL,183)@21 + 1
    normYIsOne_uid184_i_div_conv_qi <= redist92_normYIsOneC2_uid183_i_div_conv_b_13_q and normYIsOneC2_uid180_i_div_conv_q;
    normYIsOne_uid184_i_div_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOne_uid184_i_div_conv_qi, xout => normYIsOne_uid184_i_div_conv_q, clk => clock, aclr => resetn );

    -- invResPostOneHandling2_uid192_i_div_conv(MUX,191)@22
    invResPostOneHandling2_uid192_i_div_conv_s <= normYIsOne_uid184_i_div_conv_q;
    invResPostOneHandling2_uid192_i_div_conv_combproc: PROCESS (invResPostOneHandling2_uid192_i_div_conv_s, redist91_fxpInverseRes_uid190_i_div_conv_b_1_q, oneInvRes_uid130_i_div22_conv_q)
    BEGIN
        CASE (invResPostOneHandling2_uid192_i_div_conv_s) IS
            WHEN "0" => invResPostOneHandling2_uid192_i_div_conv_q <= redist91_fxpInverseRes_uid190_i_div_conv_b_1_q;
            WHEN "1" => invResPostOneHandling2_uid192_i_div_conv_q <= oneInvRes_uid130_i_div22_conv_q;
            WHEN OTHERS => invResPostOneHandling2_uid192_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodXInvY_uid200_i_div_conv_bs6(BITSELECT,693)@22
    prodXInvY_uid200_i_div_conv_bs6_b <= invResPostOneHandling2_uid192_i_div_conv_q(32 downto 18);

    -- redist89_xPSXE_uid198_i_div_conv_q_2(DELAY,916)
    redist89_xPSXE_uid198_i_div_conv_q_2 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xPSXE_uid198_i_div_conv_q, xout => redist89_xPSXE_uid198_i_div_conv_q_2_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid200_i_div_conv_bs7(BITSELECT,694)@23
    prodXInvY_uid200_i_div_conv_bs7_b <= STD_LOGIC_VECTOR(redist89_xPSXE_uid198_i_div_conv_q_2_q(32 downto 18));

    -- redist90_invResPostOneHandling2_uid192_i_div_conv_q_1(DELAY,917)
    redist90_invResPostOneHandling2_uid192_i_div_conv_q_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => invResPostOneHandling2_uid192_i_div_conv_q, xout => redist90_invResPostOneHandling2_uid192_i_div_conv_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid200_i_div_conv_bs2(BITSELECT,689)@23
    prodXInvY_uid200_i_div_conv_bs2_in <= redist90_invResPostOneHandling2_uid192_i_div_conv_q_1_q(17 downto 0);
    prodXInvY_uid200_i_div_conv_bs2_b <= prodXInvY_uid200_i_div_conv_bs2_in(17 downto 0);

    -- prodXInvY_uid200_i_div_conv_ma3_cma(CHAINMULTADD,803)@22 + 2
    -- in e@23
    -- in g@23
    -- out q@25
    prodXInvY_uid200_i_div_conv_ma3_cma_reset <= not (resetn);
    prodXInvY_uid200_i_div_conv_ma3_cma_ena0 <= '1';
    prodXInvY_uid200_i_div_conv_ma3_cma_ena1 <= prodXInvY_uid200_i_div_conv_ma3_cma_ena0;
    prodXInvY_uid200_i_div_conv_ma3_cma_l(0) <= SIGNED(RESIZE(prodXInvY_uid200_i_div_conv_ma3_cma_a0(0),19));
    prodXInvY_uid200_i_div_conv_ma3_cma_l(1) <= SIGNED(RESIZE(prodXInvY_uid200_i_div_conv_ma3_cma_a0(1),19));
    prodXInvY_uid200_i_div_conv_ma3_cma_p(0) <= prodXInvY_uid200_i_div_conv_ma3_cma_l(0) * prodXInvY_uid200_i_div_conv_ma3_cma_c0(0);
    prodXInvY_uid200_i_div_conv_ma3_cma_p(1) <= prodXInvY_uid200_i_div_conv_ma3_cma_l(1) * prodXInvY_uid200_i_div_conv_ma3_cma_c0(1);
    prodXInvY_uid200_i_div_conv_ma3_cma_u(0) <= RESIZE(prodXInvY_uid200_i_div_conv_ma3_cma_p(0),39);
    prodXInvY_uid200_i_div_conv_ma3_cma_u(1) <= RESIZE(prodXInvY_uid200_i_div_conv_ma3_cma_p(1),39);
    prodXInvY_uid200_i_div_conv_ma3_cma_w(0) <= prodXInvY_uid200_i_div_conv_ma3_cma_u(0);
    prodXInvY_uid200_i_div_conv_ma3_cma_w(1) <= prodXInvY_uid200_i_div_conv_ma3_cma_u(1);
    prodXInvY_uid200_i_div_conv_ma3_cma_x(0) <= prodXInvY_uid200_i_div_conv_ma3_cma_w(0);
    prodXInvY_uid200_i_div_conv_ma3_cma_x(1) <= prodXInvY_uid200_i_div_conv_ma3_cma_w(1);
    prodXInvY_uid200_i_div_conv_ma3_cma_y(0) <= prodXInvY_uid200_i_div_conv_ma3_cma_s(1) + prodXInvY_uid200_i_div_conv_ma3_cma_x(0);
    prodXInvY_uid200_i_div_conv_ma3_cma_y(1) <= prodXInvY_uid200_i_div_conv_ma3_cma_x(1);
    prodXInvY_uid200_i_div_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid200_i_div_conv_ma3_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid200_i_div_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid200_i_div_conv_ma3_cma_ena0 = '1') THEN
                prodXInvY_uid200_i_div_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid200_i_div_conv_bs2_b),18);
                prodXInvY_uid200_i_div_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(prodXInvY_uid200_i_div_conv_bs6_b),18);
                prodXInvY_uid200_i_div_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(prodXInvY_uid200_i_div_conv_bs7_b),19);
                prodXInvY_uid200_i_div_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(prodXInvY_uid200_i_div_conv_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid200_i_div_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid200_i_div_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid200_i_div_conv_ma3_cma_ena1 = '1') THEN
                prodXInvY_uid200_i_div_conv_ma3_cma_s(0) <= prodXInvY_uid200_i_div_conv_ma3_cma_y(0);
                prodXInvY_uid200_i_div_conv_ma3_cma_s(1) <= prodXInvY_uid200_i_div_conv_ma3_cma_y(1);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid200_i_div_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 38, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid200_i_div_conv_ma3_cma_s(0)(37 downto 0)), xout => prodXInvY_uid200_i_div_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid200_i_div_conv_ma3_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid200_i_div_conv_ma3_cma_qq(37 downto 0));

    -- redist23_prodXInvY_uid200_i_div_conv_ma3_cma_q_1(DELAY,850)
    redist23_prodXInvY_uid200_i_div_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid200_i_div_conv_ma3_cma_q, xout => redist23_prodXInvY_uid200_i_div_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid200_i_div_conv_align_13(BITSHIFT,700)@26
    prodXInvY_uid200_i_div_conv_align_13_qint <= redist23_prodXInvY_uid200_i_div_conv_ma3_cma_q_1_q & "000000000000000000";
    prodXInvY_uid200_i_div_conv_align_13_q <= prodXInvY_uid200_i_div_conv_align_13_qint(55 downto 0);

    -- prodXInvY_uid200_i_div_conv_bs10(BITSELECT,697)@23
    prodXInvY_uid200_i_div_conv_bs10_b <= redist89_xPSXE_uid198_i_div_conv_q_2_q(32 downto 18);

    -- prodXInvY_uid200_i_div_conv_bs11(BITSELECT,698)@23
    prodXInvY_uid200_i_div_conv_bs11_b <= STD_LOGIC_VECTOR(redist90_invResPostOneHandling2_uid192_i_div_conv_q_1_q(32 downto 18));

    -- prodXInvY_uid200_i_div_conv_im9_cma(CHAINMULTADD,792)@23 + 2
    prodXInvY_uid200_i_div_conv_im9_cma_reset <= not (resetn);
    prodXInvY_uid200_i_div_conv_im9_cma_ena0 <= '1';
    prodXInvY_uid200_i_div_conv_im9_cma_ena1 <= prodXInvY_uid200_i_div_conv_im9_cma_ena0;
    prodXInvY_uid200_i_div_conv_im9_cma_l(0) <= SIGNED(RESIZE(prodXInvY_uid200_i_div_conv_im9_cma_a0(0),16));
    prodXInvY_uid200_i_div_conv_im9_cma_p(0) <= prodXInvY_uid200_i_div_conv_im9_cma_l(0) * prodXInvY_uid200_i_div_conv_im9_cma_c0(0);
    prodXInvY_uid200_i_div_conv_im9_cma_u(0) <= RESIZE(prodXInvY_uid200_i_div_conv_im9_cma_p(0),31);
    prodXInvY_uid200_i_div_conv_im9_cma_w(0) <= prodXInvY_uid200_i_div_conv_im9_cma_u(0);
    prodXInvY_uid200_i_div_conv_im9_cma_x(0) <= prodXInvY_uid200_i_div_conv_im9_cma_w(0);
    prodXInvY_uid200_i_div_conv_im9_cma_y(0) <= prodXInvY_uid200_i_div_conv_im9_cma_x(0);
    prodXInvY_uid200_i_div_conv_im9_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid200_i_div_conv_im9_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid200_i_div_conv_im9_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid200_i_div_conv_im9_cma_ena0 = '1') THEN
                prodXInvY_uid200_i_div_conv_im9_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid200_i_div_conv_bs11_b),15);
                prodXInvY_uid200_i_div_conv_im9_cma_c0(0) <= RESIZE(SIGNED(prodXInvY_uid200_i_div_conv_bs10_b),15);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid200_i_div_conv_im9_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid200_i_div_conv_im9_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid200_i_div_conv_im9_cma_ena1 = '1') THEN
                prodXInvY_uid200_i_div_conv_im9_cma_s(0) <= prodXInvY_uid200_i_div_conv_im9_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid200_i_div_conv_im9_cma_delay : dspba_delay
    GENERIC MAP ( width => 30, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid200_i_div_conv_im9_cma_s(0)(29 downto 0)), xout => prodXInvY_uid200_i_div_conv_im9_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid200_i_div_conv_im9_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid200_i_div_conv_im9_cma_qq(29 downto 0));

    -- redist34_prodXInvY_uid200_i_div_conv_im9_cma_q_1(DELAY,861)
    redist34_prodXInvY_uid200_i_div_conv_im9_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid200_i_div_conv_im9_cma_q, xout => redist34_prodXInvY_uid200_i_div_conv_im9_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid200_i_div_conv_bs1(BITSELECT,688)@23
    prodXInvY_uid200_i_div_conv_bs1_in <= redist89_xPSXE_uid198_i_div_conv_q_2_q(17 downto 0);
    prodXInvY_uid200_i_div_conv_bs1_b <= prodXInvY_uid200_i_div_conv_bs1_in(17 downto 0);

    -- prodXInvY_uid200_i_div_conv_im0_cma(CHAINMULTADD,791)@23 + 2
    prodXInvY_uid200_i_div_conv_im0_cma_reset <= not (resetn);
    prodXInvY_uid200_i_div_conv_im0_cma_ena0 <= '1';
    prodXInvY_uid200_i_div_conv_im0_cma_ena1 <= prodXInvY_uid200_i_div_conv_im0_cma_ena0;
    prodXInvY_uid200_i_div_conv_im0_cma_p(0) <= prodXInvY_uid200_i_div_conv_im0_cma_a0(0) * prodXInvY_uid200_i_div_conv_im0_cma_c0(0);
    prodXInvY_uid200_i_div_conv_im0_cma_u(0) <= RESIZE(prodXInvY_uid200_i_div_conv_im0_cma_p(0),36);
    prodXInvY_uid200_i_div_conv_im0_cma_w(0) <= prodXInvY_uid200_i_div_conv_im0_cma_u(0);
    prodXInvY_uid200_i_div_conv_im0_cma_x(0) <= prodXInvY_uid200_i_div_conv_im0_cma_w(0);
    prodXInvY_uid200_i_div_conv_im0_cma_y(0) <= prodXInvY_uid200_i_div_conv_im0_cma_x(0);
    prodXInvY_uid200_i_div_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid200_i_div_conv_im0_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid200_i_div_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid200_i_div_conv_im0_cma_ena0 = '1') THEN
                prodXInvY_uid200_i_div_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid200_i_div_conv_bs1_b),18);
                prodXInvY_uid200_i_div_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(prodXInvY_uid200_i_div_conv_bs2_b),18);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid200_i_div_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid200_i_div_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid200_i_div_conv_im0_cma_ena1 = '1') THEN
                prodXInvY_uid200_i_div_conv_im0_cma_s(0) <= prodXInvY_uid200_i_div_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid200_i_div_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid200_i_div_conv_im0_cma_s(0)(35 downto 0)), xout => prodXInvY_uid200_i_div_conv_im0_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid200_i_div_conv_im0_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid200_i_div_conv_im0_cma_qq(35 downto 0));

    -- redist35_prodXInvY_uid200_i_div_conv_im0_cma_q_1(DELAY,862)
    redist35_prodXInvY_uid200_i_div_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid200_i_div_conv_im0_cma_q, xout => redist35_prodXInvY_uid200_i_div_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid200_i_div_conv_join_12(BITJOIN,699)@26
    prodXInvY_uid200_i_div_conv_join_12_q <= redist34_prodXInvY_uid200_i_div_conv_im9_cma_q_1_q & redist35_prodXInvY_uid200_i_div_conv_im0_cma_q_1_q;

    -- prodXInvY_uid200_i_div_conv_result_add_0_0(ADD,702)@26
    prodXInvY_uid200_i_div_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 66 => prodXInvY_uid200_i_div_conv_join_12_q(65)) & prodXInvY_uid200_i_div_conv_join_12_q));
    prodXInvY_uid200_i_div_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 56 => prodXInvY_uid200_i_div_conv_align_13_q(55)) & prodXInvY_uid200_i_div_conv_align_13_q));
    prodXInvY_uid200_i_div_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodXInvY_uid200_i_div_conv_result_add_0_0_a) + SIGNED(prodXInvY_uid200_i_div_conv_result_add_0_0_b));
    prodXInvY_uid200_i_div_conv_result_add_0_0_q <= prodXInvY_uid200_i_div_conv_result_add_0_0_o(66 downto 0);

    -- rightShiftInput_uid201_i_div_conv(BITSELECT,200)@26
    rightShiftInput_uid201_i_div_conv_in <= STD_LOGIC_VECTOR(prodXInvY_uid200_i_div_conv_result_add_0_0_q(64 downto 0));
    rightShiftInput_uid201_i_div_conv_b <= STD_LOGIC_VECTOR(rightShiftInput_uid201_i_div_conv_in(64 downto 0));

    -- redist88_rightShiftInput_uid201_i_div_conv_b_1(DELAY,915)
    redist88_rightShiftInput_uid201_i_div_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 65, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftInput_uid201_i_div_conv_b, xout => redist88_rightShiftInput_uid201_i_div_conv_b_1_q, clk => clock, aclr => resetn );

    -- xMSB_uid704_prodPostRightShift_uid202_i_div_conv(BITSELECT,703)@27
    xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b <= STD_LOGIC_VECTOR(redist88_rightShiftInput_uid201_i_div_conv_b_1_q(64 downto 64));

    -- redist54_xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b_1(DELAY,881)
    redist54_xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b, xout => redist54_xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage3Idx1Rng1_uid738_prodPostRightShift_uid202_i_div_conv(BITSELECT,737)@28
    rightShiftStage3Idx1Rng1_uid738_prodPostRightShift_uid202_i_div_conv_b <= rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_q(64 downto 1);

    -- rightShiftStage3Idx1_uid739_prodPostRightShift_uid202_i_div_conv(BITJOIN,738)@28
    rightShiftStage3Idx1_uid739_prodPostRightShift_uid202_i_div_conv_q <= redist54_xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b_1_q & rightShiftStage3Idx1Rng1_uid738_prodPostRightShift_uid202_i_div_conv_b;

    -- seMsb_to6_uid733(BITSELECT,732)@27
    seMsb_to6_uid733_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((5 downto 1 => xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b(0)) & xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b));
    seMsb_to6_uid733_b <= STD_LOGIC_VECTOR(seMsb_to6_uid733_in(5 downto 0));

    -- rightShiftStage2Idx3Rng6_uid734_prodPostRightShift_uid202_i_div_conv(BITSELECT,733)@27
    rightShiftStage2Idx3Rng6_uid734_prodPostRightShift_uid202_i_div_conv_b <= rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_q(64 downto 6);

    -- rightShiftStage2Idx3_uid735_prodPostRightShift_uid202_i_div_conv(BITJOIN,734)@27
    rightShiftStage2Idx3_uid735_prodPostRightShift_uid202_i_div_conv_q <= seMsb_to6_uid733_b & rightShiftStage2Idx3Rng6_uid734_prodPostRightShift_uid202_i_div_conv_b;

    -- seMsb_to4_uid730(BITSELECT,729)@27
    seMsb_to4_uid730_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b(0)) & xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b));
    seMsb_to4_uid730_b <= STD_LOGIC_VECTOR(seMsb_to4_uid730_in(3 downto 0));

    -- rightShiftStage2Idx2Rng4_uid731_prodPostRightShift_uid202_i_div_conv(BITSELECT,730)@27
    rightShiftStage2Idx2Rng4_uid731_prodPostRightShift_uid202_i_div_conv_b <= rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_q(64 downto 4);

    -- rightShiftStage2Idx2_uid732_prodPostRightShift_uid202_i_div_conv(BITJOIN,731)@27
    rightShiftStage2Idx2_uid732_prodPostRightShift_uid202_i_div_conv_q <= seMsb_to4_uid730_b & rightShiftStage2Idx2Rng4_uid731_prodPostRightShift_uid202_i_div_conv_b;

    -- seMsb_to2_uid727(BITSELECT,726)@27
    seMsb_to2_uid727_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b(0)) & xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b));
    seMsb_to2_uid727_b <= STD_LOGIC_VECTOR(seMsb_to2_uid727_in(1 downto 0));

    -- rightShiftStage2Idx1Rng2_uid728_prodPostRightShift_uid202_i_div_conv(BITSELECT,727)@27
    rightShiftStage2Idx1Rng2_uid728_prodPostRightShift_uid202_i_div_conv_b <= rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_q(64 downto 2);

    -- rightShiftStage2Idx1_uid729_prodPostRightShift_uid202_i_div_conv(BITJOIN,728)@27
    rightShiftStage2Idx1_uid729_prodPostRightShift_uid202_i_div_conv_q <= seMsb_to2_uid727_b & rightShiftStage2Idx1Rng2_uid728_prodPostRightShift_uid202_i_div_conv_b;

    -- seMsb_to24_uid722(BITSELECT,721)@27
    seMsb_to24_uid722_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 1 => xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b(0)) & xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b));
    seMsb_to24_uid722_b <= STD_LOGIC_VECTOR(seMsb_to24_uid722_in(23 downto 0));

    -- rightShiftStage1Idx3Rng24_uid723_prodPostRightShift_uid202_i_div_conv(BITSELECT,722)@27
    rightShiftStage1Idx3Rng24_uid723_prodPostRightShift_uid202_i_div_conv_b <= rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q(64 downto 24);

    -- rightShiftStage1Idx3_uid724_prodPostRightShift_uid202_i_div_conv(BITJOIN,723)@27
    rightShiftStage1Idx3_uid724_prodPostRightShift_uid202_i_div_conv_q <= seMsb_to24_uid722_b & rightShiftStage1Idx3Rng24_uid723_prodPostRightShift_uid202_i_div_conv_b;

    -- seMsb_to16_uid719(BITSELECT,718)@27
    seMsb_to16_uid719_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b(0)) & xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b));
    seMsb_to16_uid719_b <= STD_LOGIC_VECTOR(seMsb_to16_uid719_in(15 downto 0));

    -- rightShiftStage1Idx2Rng16_uid720_prodPostRightShift_uid202_i_div_conv(BITSELECT,719)@27
    rightShiftStage1Idx2Rng16_uid720_prodPostRightShift_uid202_i_div_conv_b <= rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q(64 downto 16);

    -- rightShiftStage1Idx2_uid721_prodPostRightShift_uid202_i_div_conv(BITJOIN,720)@27
    rightShiftStage1Idx2_uid721_prodPostRightShift_uid202_i_div_conv_q <= seMsb_to16_uid719_b & rightShiftStage1Idx2Rng16_uid720_prodPostRightShift_uid202_i_div_conv_b;

    -- seMsb_to8_uid716(BITSELECT,715)@27
    seMsb_to8_uid716_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b(0)) & xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b));
    seMsb_to8_uid716_b <= STD_LOGIC_VECTOR(seMsb_to8_uid716_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid717_prodPostRightShift_uid202_i_div_conv(BITSELECT,716)@27
    rightShiftStage1Idx1Rng8_uid717_prodPostRightShift_uid202_i_div_conv_b <= rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q(64 downto 8);

    -- rightShiftStage1Idx1_uid718_prodPostRightShift_uid202_i_div_conv(BITJOIN,717)@27
    rightShiftStage1Idx1_uid718_prodPostRightShift_uid202_i_div_conv_q <= seMsb_to8_uid716_b & rightShiftStage1Idx1Rng8_uid717_prodPostRightShift_uid202_i_div_conv_b;

    -- stageIndexName_to65_uid712(BITSELECT,711)@27
    stageIndexName_to65_uid712_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 1 => xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b(0)) & xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b));
    stageIndexName_to65_uid712_b <= STD_LOGIC_VECTOR(stageIndexName_to65_uid712_in(64 downto 0));

    -- seMsb_to64_uid709(BITSELECT,708)@27
    seMsb_to64_uid709_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((63 downto 1 => xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b(0)) & xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b));
    seMsb_to64_uid709_b <= STD_LOGIC_VECTOR(seMsb_to64_uid709_in(63 downto 0));

    -- rightShiftStage0Idx2Rng64_uid710_prodPostRightShift_uid202_i_div_conv(BITSELECT,709)@27
    rightShiftStage0Idx2Rng64_uid710_prodPostRightShift_uid202_i_div_conv_b <= redist88_rightShiftInput_uid201_i_div_conv_b_1_q(64 downto 64);

    -- rightShiftStage0Idx2_uid711_prodPostRightShift_uid202_i_div_conv(BITJOIN,710)@27
    rightShiftStage0Idx2_uid711_prodPostRightShift_uid202_i_div_conv_q <= seMsb_to64_uid709_b & rightShiftStage0Idx2Rng64_uid710_prodPostRightShift_uid202_i_div_conv_b;

    -- seMsb_to32_uid706(BITSELECT,705)@27
    seMsb_to32_uid706_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b(0)) & xMSB_uid704_prodPostRightShift_uid202_i_div_conv_b));
    seMsb_to32_uid706_b <= STD_LOGIC_VECTOR(seMsb_to32_uid706_in(31 downto 0));

    -- rightShiftStage0Idx1Rng32_uid707_prodPostRightShift_uid202_i_div_conv(BITSELECT,706)@27
    rightShiftStage0Idx1Rng32_uid707_prodPostRightShift_uid202_i_div_conv_b <= redist88_rightShiftInput_uid201_i_div_conv_b_1_q(64 downto 32);

    -- rightShiftStage0Idx1_uid708_prodPostRightShift_uid202_i_div_conv(BITJOIN,707)@27
    rightShiftStage0Idx1_uid708_prodPostRightShift_uid202_i_div_conv_q <= seMsb_to32_uid706_b & rightShiftStage0Idx1Rng32_uid707_prodPostRightShift_uid202_i_div_conv_b;

    -- rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv(MUX,714)@27
    rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_s <= rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_b;
    rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_combproc: PROCESS (rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_s, redist88_rightShiftInput_uid201_i_div_conv_b_1_q, rightShiftStage0Idx1_uid708_prodPostRightShift_uid202_i_div_conv_q, rightShiftStage0Idx2_uid711_prodPostRightShift_uid202_i_div_conv_q, stageIndexName_to65_uid712_b)
    BEGIN
        CASE (rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_s) IS
            WHEN "00" => rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q <= redist88_rightShiftInput_uid201_i_div_conv_b_1_q;
            WHEN "01" => rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage0Idx1_uid708_prodPostRightShift_uid202_i_div_conv_q;
            WHEN "10" => rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage0Idx2_uid711_prodPostRightShift_uid202_i_div_conv_q;
            WHEN "11" => rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q <= stageIndexName_to65_uid712_b;
            WHEN OTHERS => rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv(MUX,725)@27
    rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_s <= rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_c;
    rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_combproc: PROCESS (rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_s, rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q, rightShiftStage1Idx1_uid718_prodPostRightShift_uid202_i_div_conv_q, rightShiftStage1Idx2_uid721_prodPostRightShift_uid202_i_div_conv_q, rightShiftStage1Idx3_uid724_prodPostRightShift_uid202_i_div_conv_q)
    BEGIN
        CASE (rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_s) IS
            WHEN "00" => rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage0_uid715_prodPostRightShift_uid202_i_div_conv_q;
            WHEN "01" => rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage1Idx1_uid718_prodPostRightShift_uid202_i_div_conv_q;
            WHEN "10" => rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage1Idx2_uid721_prodPostRightShift_uid202_i_div_conv_q;
            WHEN "11" => rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage1Idx3_uid724_prodPostRightShift_uid202_i_div_conv_q;
            WHEN OTHERS => rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_notEnable(LOGICAL,1064)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_nor(LOGICAL,1065)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_nor_q <= not (redist64_r_uid335_zCount_uid177_i_div_conv_q_18_notEnable_q or redist64_r_uid335_zCount_uid177_i_div_conv_q_18_sticky_ena_q);

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_last(CONSTANT,1061)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_last_q <= "01101";

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmp(LOGICAL,1062)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmp_b <= STD_LOGIC_VECTOR("0" & redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_q);
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmp_q <= "1" WHEN redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_last_q = redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmp_b ELSE "0";

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmpReg(REG,1063)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmpReg_q <= STD_LOGIC_VECTOR(redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmp_q);
        END IF;
    END PROCESS;

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_sticky_ena(REG,1066)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_r_uid335_zCount_uid177_i_div_conv_q_18_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist64_r_uid335_zCount_uid177_i_div_conv_q_18_nor_q = "1") THEN
                redist64_r_uid335_zCount_uid177_i_div_conv_q_18_sticky_ena_q <= STD_LOGIC_VECTOR(redist64_r_uid335_zCount_uid177_i_div_conv_q_18_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_enaAnd(LOGICAL,1067)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_enaAnd_q <= redist64_r_uid335_zCount_uid177_i_div_conv_q_18_sticky_ena_q and VCC_q;

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt(COUNTER,1059)
    -- low=0, high=14, step=1, init=0
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_eq <= '1';
            ELSE
                redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_eq <= '0';
            END IF;
            IF (redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_eq = '1') THEN
                redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_i <= redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_i + 2;
            ELSE
                redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_i <= redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_i, 4)));

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_inputreg(DELAY,1056)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_inputreg : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => r_uid335_zCount_uid177_i_div_conv_q, xout => redist64_r_uid335_zCount_uid177_i_div_conv_q_18_inputreg_q, clk => clock, aclr => resetn );

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_wraddr(REG,1060)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_r_uid335_zCount_uid177_i_div_conv_q_18_wraddr_q <= "1110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist64_r_uid335_zCount_uid177_i_div_conv_q_18_wraddr_q <= STD_LOGIC_VECTOR(redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem(DUALMEM,1058)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_ia <= STD_LOGIC_VECTOR(redist64_r_uid335_zCount_uid177_i_div_conv_q_18_inputreg_q);
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_aa <= redist64_r_uid335_zCount_uid177_i_div_conv_q_18_wraddr_q;
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_ab <= redist64_r_uid335_zCount_uid177_i_div_conv_q_18_rdcnt_q;
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_reset0 <= not (resetn);
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 6,
        widthad_a => 4,
        numwords_a => 15,
        width_b => 6,
        widthad_b => 4,
        numwords_b => 15,
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
        clocken1 => redist64_r_uid335_zCount_uid177_i_div_conv_q_18_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_reset0,
        clock1 => clock,
        address_a => redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_aa,
        data_a => redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_ab,
        q_b => redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_iq
    );
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_q <= redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_iq(5 downto 0);

    -- redist64_r_uid335_zCount_uid177_i_div_conv_q_18_outputreg(DELAY,1057)
    redist64_r_uid335_zCount_uid177_i_div_conv_q_18_outputreg : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist64_r_uid335_zCount_uid177_i_div_conv_q_18_mem_q, xout => redist64_r_uid335_zCount_uid177_i_div_conv_q_18_outputreg_q, clk => clock, aclr => resetn );

    -- cWOut_uid132_i_div22_conv(CONSTANT,131)
    cWOut_uid132_i_div22_conv_q <= "100000";

    -- rShiftCount_uid194_i_div_conv(SUB,193)@26 + 1
    rShiftCount_uid194_i_div_conv_a <= STD_LOGIC_VECTOR("0" & cWOut_uid132_i_div22_conv_q);
    rShiftCount_uid194_i_div_conv_b <= STD_LOGIC_VECTOR("0" & redist64_r_uid335_zCount_uid177_i_div_conv_q_18_outputreg_q);
    rShiftCount_uid194_i_div_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rShiftCount_uid194_i_div_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            rShiftCount_uid194_i_div_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(rShiftCount_uid194_i_div_conv_a) - UNSIGNED(rShiftCount_uid194_i_div_conv_b));
        END IF;
    END PROCESS;
    rShiftCount_uid194_i_div_conv_q <= rShiftCount_uid194_i_div_conv_o(6 downto 0);

    -- rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select(BITSELECT,812)@27
    rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_b <= rShiftCount_uid194_i_div_conv_q(6 downto 5);
    rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_c <= rShiftCount_uid194_i_div_conv_q(4 downto 3);
    rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_d <= rShiftCount_uid194_i_div_conv_q(2 downto 1);
    rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_e <= rShiftCount_uid194_i_div_conv_q(0 downto 0);

    -- rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv(MUX,736)@27 + 1
    rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_s <= rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_d;
    rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_s) IS
                WHEN "00" => rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage1_uid726_prodPostRightShift_uid202_i_div_conv_q;
                WHEN "01" => rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage2Idx1_uid729_prodPostRightShift_uid202_i_div_conv_q;
                WHEN "10" => rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage2Idx2_uid732_prodPostRightShift_uid202_i_div_conv_q;
                WHEN "11" => rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage2Idx3_uid735_prodPostRightShift_uid202_i_div_conv_q;
                WHEN OTHERS => rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist8_rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_e_1(DELAY,835)
    redist8_rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_e, xout => redist8_rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv(MUX,740)@28
    rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv_s <= redist8_rightShiftStageSel6Dto5_uid714_prodPostRightShift_uid202_i_div_conv_merged_bit_select_e_1_q;
    rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv_combproc: PROCESS (rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv_s, rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_q, rightShiftStage3Idx1_uid739_prodPostRightShift_uid202_i_div_conv_q)
    BEGIN
        CASE (rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv_s) IS
            WHEN "0" => rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage2_uid737_prodPostRightShift_uid202_i_div_conv_q;
            WHEN "1" => rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv_q <= rightShiftStage3Idx1_uid739_prodPostRightShift_uid202_i_div_conv_q;
            WHEN OTHERS => rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodPostRightShiftPost_uid203_i_div_conv(BITSELECT,202)@28
    prodPostRightShiftPost_uid203_i_div_conv_in <= rightShiftStage3_uid741_prodPostRightShift_uid202_i_div_conv_q(62 downto 0);
    prodPostRightShiftPost_uid203_i_div_conv_b <= prodPostRightShiftPost_uid203_i_div_conv_in(62 downto 30);

    -- redist87_prodPostRightShiftPost_uid203_i_div_conv_b_1(DELAY,914)
    redist87_prodPostRightShiftPost_uid203_i_div_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodPostRightShiftPost_uid203_i_div_conv_b, xout => redist87_prodPostRightShiftPost_uid203_i_div_conv_b_1_q, clk => clock, aclr => resetn );

    -- prodPostRightShiftPostRnd_uid205_i_div_conv(ADD,204)@29
    prodPostRightShiftPostRnd_uid205_i_div_conv_a <= STD_LOGIC_VECTOR("0" & redist87_prodPostRightShiftPost_uid203_i_div_conv_b_1_q);
    prodPostRightShiftPostRnd_uid205_i_div_conv_b <= STD_LOGIC_VECTOR("000000000000000000000000000000000" & VCC_q);
    prodPostRightShiftPostRnd_uid205_i_div_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(prodPostRightShiftPostRnd_uid205_i_div_conv_a) + UNSIGNED(prodPostRightShiftPostRnd_uid205_i_div_conv_b));
    prodPostRightShiftPostRnd_uid205_i_div_conv_q <= prodPostRightShiftPostRnd_uid205_i_div_conv_o(33 downto 0);

    -- prodPostRightShiftPostRndRange_uid206_i_div_conv(BITSELECT,205)@29
    prodPostRightShiftPostRndRange_uid206_i_div_conv_in <= prodPostRightShiftPostRnd_uid205_i_div_conv_q(32 downto 0);
    prodPostRightShiftPostRndRange_uid206_i_div_conv_b <= prodPostRightShiftPostRndRange_uid206_i_div_conv_in(32 downto 1);

    -- redist86_prodPostRightShiftPostRndRange_uid206_i_div_conv_b_1(DELAY,913)
    redist86_prodPostRightShiftPostRndRange_uid206_i_div_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodPostRightShiftPostRndRange_uid206_i_div_conv_b, xout => redist86_prodPostRightShiftPostRndRange_uid206_i_div_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_notEnable(LOGICAL,1142)
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_nor(LOGICAL,1143)
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_nor_q <= not (redist131_sync_in_aunroll_x_in_c0_eni8_3_29_notEnable_q or redist131_sync_in_aunroll_x_in_c0_eni8_3_29_sticky_ena_q);

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_last(CONSTANT,1139)
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_last_q <= "011001";

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmp(LOGICAL,1140)
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmp_b <= STD_LOGIC_VECTOR("0" & redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_q);
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmp_q <= "1" WHEN redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_last_q = redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmp_b ELSE "0";

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmpReg(REG,1141)
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmpReg_q <= STD_LOGIC_VECTOR(redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmp_q);
        END IF;
    END PROCESS;

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_sticky_ena(REG,1144)
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist131_sync_in_aunroll_x_in_c0_eni8_3_29_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist131_sync_in_aunroll_x_in_c0_eni8_3_29_nor_q = "1") THEN
                redist131_sync_in_aunroll_x_in_c0_eni8_3_29_sticky_ena_q <= STD_LOGIC_VECTOR(redist131_sync_in_aunroll_x_in_c0_eni8_3_29_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_enaAnd(LOGICAL,1145)
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_enaAnd_q <= redist131_sync_in_aunroll_x_in_c0_eni8_3_29_sticky_ena_q and VCC_q;

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt(COUNTER,1137)
    -- low=0, high=26, step=1, init=0
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_i = TO_UNSIGNED(25, 5)) THEN
                redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_eq <= '1';
            ELSE
                redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_eq <= '0';
            END IF;
            IF (redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_eq = '1') THEN
                redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_i <= redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_i + 6;
            ELSE
                redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_i <= redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_i, 5)));

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_wraddr(REG,1138)
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist131_sync_in_aunroll_x_in_c0_eni8_3_29_wraddr_q <= "11010";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist131_sync_in_aunroll_x_in_c0_eni8_3_29_wraddr_q <= STD_LOGIC_VECTOR(redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem(DUALMEM,1136)
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni8_3);
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_aa <= redist131_sync_in_aunroll_x_in_c0_eni8_3_29_wraddr_q;
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_ab <= redist131_sync_in_aunroll_x_in_c0_eni8_3_29_rdcnt_q;
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_reset0 <= not (resetn);
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 27,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 27,
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
        clocken1 => redist131_sync_in_aunroll_x_in_c0_eni8_3_29_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_reset0,
        clock1 => clock,
        address_a => redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_aa,
        data_a => redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_ab,
        q_b => redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_iq
    );
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_q <= redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_iq(31 downto 0);

    -- redist131_sync_in_aunroll_x_in_c0_eni8_3_29_outputreg(DELAY,1135)
    redist131_sync_in_aunroll_x_in_c0_eni8_3_29_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist131_sync_in_aunroll_x_in_c0_eni8_3_29_mem_q, xout => redist131_sync_in_aunroll_x_in_c0_eni8_3_29_outputreg_q, clk => clock, aclr => resetn );

    -- yIsZero_uid185_i_div_conv(LOGICAL,184)@30
    yIsZero_uid185_i_div_conv_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000" & GND_q);
    yIsZero_uid185_i_div_conv_q <= "1" WHEN redist131_sync_in_aunroll_x_in_c0_eni8_3_29_outputreg_q = yIsZero_uid185_i_div_conv_b ELSE "0";

    -- resFinal_uid211_i_div_conv(MUX,210)@30
    resFinal_uid211_i_div_conv_s <= yIsZero_uid185_i_div_conv_q;
    resFinal_uid211_i_div_conv_combproc: PROCESS (resFinal_uid211_i_div_conv_s, redist86_prodPostRightShiftPostRndRange_uid206_i_div_conv_b_1_q, cstOvf_uid210_i_div_conv_q)
    BEGIN
        CASE (resFinal_uid211_i_div_conv_s) IS
            WHEN "0" => resFinal_uid211_i_div_conv_q <= redist86_prodPostRightShiftPostRndRange_uid206_i_div_conv_b_1_q;
            WHEN "1" => resFinal_uid211_i_div_conv_q <= cstOvf_uid210_i_div_conv_q;
            WHEN OTHERS => resFinal_uid211_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist81_resFinal_uid211_i_div_conv_q_3_inputreg(DELAY,1080)
    redist81_resFinal_uid211_i_div_conv_q_3_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resFinal_uid211_i_div_conv_q, xout => redist81_resFinal_uid211_i_div_conv_q_3_inputreg_q, clk => clock, aclr => resetn );

    -- redist81_resFinal_uid211_i_div_conv_q_3(DELAY,908)
    redist81_resFinal_uid211_i_div_conv_q_3 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist81_resFinal_uid211_i_div_conv_q_3_inputreg_q, xout => redist81_resFinal_uid211_i_div_conv_q_3_q, clk => clock, aclr => resetn );

    -- redist82_resFinal_uid211_i_div_conv_q_4(DELAY,909)
    redist82_resFinal_uid211_i_div_conv_q_4 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist81_resFinal_uid211_i_div_conv_q_3_q, xout => redist82_resFinal_uid211_i_div_conv_q_4_q, clk => clock, aclr => resetn );

    -- resFinalMP1_uid228_i_div_conv(SUB,227)@34
    resFinalMP1_uid228_i_div_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => redist82_resFinal_uid211_i_div_conv_q_4_q(31)) & redist82_resFinal_uid211_i_div_conv_q_4_q));
    resFinalMP1_uid228_i_div_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 2 => cstSubFinal_uid227_i_div_conv_q(1)) & cstSubFinal_uid227_i_div_conv_q));
    resFinalMP1_uid228_i_div_conv_o <= STD_LOGIC_VECTOR(SIGNED(resFinalMP1_uid228_i_div_conv_a) - SIGNED(resFinalMP1_uid228_i_div_conv_b));
    resFinalMP1_uid228_i_div_conv_q <= resFinalMP1_uid228_i_div_conv_o(32 downto 0);

    -- resFinalPostMux_uid229_i_div_conv(BITSELECT,228)@34
    resFinalPostMux_uid229_i_div_conv_in <= STD_LOGIC_VECTOR(resFinalMP1_uid228_i_div_conv_q(31 downto 0));
    resFinalPostMux_uid229_i_div_conv_b <= STD_LOGIC_VECTOR(resFinalPostMux_uid229_i_div_conv_in(31 downto 0));

    -- redist79_resFinalPostMux_uid229_i_div_conv_b_1(DELAY,906)
    redist79_resFinalPostMux_uid229_i_div_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resFinalPostMux_uid229_i_div_conv_b, xout => redist79_resFinalPostMux_uid229_i_div_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist83_resFinal_uid211_i_div_conv_q_5(DELAY,910)
    redist83_resFinal_uid211_i_div_conv_q_5 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist82_resFinal_uid211_i_div_conv_q_4_q, xout => redist83_resFinal_uid211_i_div_conv_q_5_q, clk => clock, aclr => resetn );

    -- signResFinal_uid220_i_div_conv(BITSELECT,219)@33
    signResFinal_uid220_i_div_conv_b <= STD_LOGIC_VECTOR(redist81_resFinal_uid211_i_div_conv_q_3_q(31 downto 31));

    -- OverflowCond_uid221_i_div_conv(LOGICAL,220)@33 + 1
    OverflowCond_uid221_i_div_conv_qi <= redist84_signX_uid209_i_div_conv_b_3_q and redist100_xMSB_uid171_i_div_conv_b_32_q and signResFinal_uid220_i_div_conv_b;
    OverflowCond_uid221_i_div_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => OverflowCond_uid221_i_div_conv_qi, xout => OverflowCond_uid221_i_div_conv_q, clk => clock, aclr => resetn );

    -- redist80_OverflowCond_uid221_i_div_conv_q_2(DELAY,907)
    redist80_OverflowCond_uid221_i_div_conv_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => OverflowCond_uid221_i_div_conv_q, xout => redist80_OverflowCond_uid221_i_div_conv_q_2_q, clk => clock, aclr => resetn );

    -- redist85_signX_uid209_i_div_conv_b_5(DELAY,912)
    redist85_signX_uid209_i_div_conv_b_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist84_signX_uid209_i_div_conv_b_3_q, xout => redist85_signX_uid209_i_div_conv_b_5_q, clk => clock, aclr => resetn );

    -- redist164_bgTrunc_i_add19_conv_sel_x_b_33_inputreg(DELAY,1218)
    redist164_bgTrunc_i_add19_conv_sel_x_b_33_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist163_bgTrunc_i_add19_conv_sel_x_b_29_outputreg_q, xout => redist164_bgTrunc_i_add19_conv_sel_x_b_33_inputreg_q, clk => clock, aclr => resetn );

    -- redist164_bgTrunc_i_add19_conv_sel_x_b_33(DELAY,991)
    redist164_bgTrunc_i_add19_conv_sel_x_b_33 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist164_bgTrunc_i_add19_conv_sel_x_b_33_inputreg_q, xout => redist164_bgTrunc_i_add19_conv_sel_x_b_33_q, clk => clock, aclr => resetn );

    -- redist164_bgTrunc_i_add19_conv_sel_x_b_33_outputreg(DELAY,1219)
    redist164_bgTrunc_i_add19_conv_sel_x_b_33_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist164_bgTrunc_i_add19_conv_sel_x_b_33_q, xout => redist164_bgTrunc_i_add19_conv_sel_x_b_33_outputreg_q, clk => clock, aclr => resetn );

    -- i_mul20_conv_bs6(BITSELECT,491)@30
    i_mul20_conv_bs6_b <= redist131_sync_in_aunroll_x_in_c0_eni8_3_29_outputreg_q(31 downto 18);

    -- prodResY_uid212_i_div_conv_bs4(BITSELECT,746)@30
    prodResY_uid212_i_div_conv_bs4_in <= STD_LOGIC_VECTOR(resFinal_uid211_i_div_conv_q(17 downto 0));
    prodResY_uid212_i_div_conv_bs4_b <= STD_LOGIC_VECTOR(prodResY_uid212_i_div_conv_bs4_in(17 downto 0));

    -- prodResY_uid212_i_div_conv_bs6(BITSELECT,748)@30
    prodResY_uid212_i_div_conv_bs6_b <= STD_LOGIC_VECTOR(resFinal_uid211_i_div_conv_q(31 downto 18));

    -- i_mul20_conv_bs2(BITSELECT,487)@30
    i_mul20_conv_bs2_in <= redist131_sync_in_aunroll_x_in_c0_eni8_3_29_outputreg_q(17 downto 0);
    i_mul20_conv_bs2_b <= i_mul20_conv_bs2_in(17 downto 0);

    -- prodResY_uid212_i_div_conv_ma3_cma(CHAINMULTADD,804)@30 + 2
    prodResY_uid212_i_div_conv_ma3_cma_reset <= not (resetn);
    prodResY_uid212_i_div_conv_ma3_cma_ena0 <= '1';
    prodResY_uid212_i_div_conv_ma3_cma_ena1 <= prodResY_uid212_i_div_conv_ma3_cma_ena0;
    prodResY_uid212_i_div_conv_ma3_cma_l(0) <= SIGNED(RESIZE(prodResY_uid212_i_div_conv_ma3_cma_a0(0),19));
    prodResY_uid212_i_div_conv_ma3_cma_l(1) <= SIGNED(RESIZE(prodResY_uid212_i_div_conv_ma3_cma_a0(1),19));
    prodResY_uid212_i_div_conv_ma3_cma_p(0) <= prodResY_uid212_i_div_conv_ma3_cma_l(0) * prodResY_uid212_i_div_conv_ma3_cma_c0(0);
    prodResY_uid212_i_div_conv_ma3_cma_p(1) <= prodResY_uid212_i_div_conv_ma3_cma_l(1) * prodResY_uid212_i_div_conv_ma3_cma_c0(1);
    prodResY_uid212_i_div_conv_ma3_cma_u(0) <= RESIZE(prodResY_uid212_i_div_conv_ma3_cma_p(0),34);
    prodResY_uid212_i_div_conv_ma3_cma_u(1) <= RESIZE(prodResY_uid212_i_div_conv_ma3_cma_p(1),34);
    prodResY_uid212_i_div_conv_ma3_cma_w(0) <= prodResY_uid212_i_div_conv_ma3_cma_u(0) + prodResY_uid212_i_div_conv_ma3_cma_u(1);
    prodResY_uid212_i_div_conv_ma3_cma_x(0) <= prodResY_uid212_i_div_conv_ma3_cma_w(0);
    prodResY_uid212_i_div_conv_ma3_cma_y(0) <= prodResY_uid212_i_div_conv_ma3_cma_x(0);
    prodResY_uid212_i_div_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid212_i_div_conv_ma3_cma_a0 <= (others => (others => '0'));
            prodResY_uid212_i_div_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid212_i_div_conv_ma3_cma_ena0 = '1') THEN
                prodResY_uid212_i_div_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul20_conv_bs2_b),18);
                prodResY_uid212_i_div_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(prodResY_uid212_i_div_conv_bs4_b),18);
                prodResY_uid212_i_div_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(prodResY_uid212_i_div_conv_bs6_b),14);
                prodResY_uid212_i_div_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul20_conv_bs6_b),14);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid212_i_div_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid212_i_div_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid212_i_div_conv_ma3_cma_ena1 = '1') THEN
                prodResY_uid212_i_div_conv_ma3_cma_s(0) <= prodResY_uid212_i_div_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid212_i_div_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 33, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid212_i_div_conv_ma3_cma_s(0)(32 downto 0)), xout => prodResY_uid212_i_div_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid212_i_div_conv_ma3_cma_q <= STD_LOGIC_VECTOR(prodResY_uid212_i_div_conv_ma3_cma_qq(32 downto 0));

    -- redist22_prodResY_uid212_i_div_conv_ma3_cma_q_1(DELAY,849)
    redist22_prodResY_uid212_i_div_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid212_i_div_conv_ma3_cma_q, xout => redist22_prodResY_uid212_i_div_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid212_i_div_conv_align_12(BITSHIFT,754)@33
    prodResY_uid212_i_div_conv_align_12_qint <= redist22_prodResY_uid212_i_div_conv_ma3_cma_q_1_q & "000000000000000000";
    prodResY_uid212_i_div_conv_align_12_q <= prodResY_uid212_i_div_conv_align_12_qint(50 downto 0);

    -- prodResY_uid212_i_div_conv_bs10(BITSELECT,752)@30
    prodResY_uid212_i_div_conv_bs10_b <= STD_LOGIC_VECTOR(redist131_sync_in_aunroll_x_in_c0_eni8_3_29_outputreg_q(31 downto 18));

    -- prodResY_uid212_i_div_conv_im8_cma(CHAINMULTADD,794)@30 + 2
    prodResY_uid212_i_div_conv_im8_cma_reset <= not (resetn);
    prodResY_uid212_i_div_conv_im8_cma_ena0 <= '1';
    prodResY_uid212_i_div_conv_im8_cma_ena1 <= prodResY_uid212_i_div_conv_im8_cma_ena0;
    prodResY_uid212_i_div_conv_im8_cma_p(0) <= prodResY_uid212_i_div_conv_im8_cma_a0(0) * prodResY_uid212_i_div_conv_im8_cma_c0(0);
    prodResY_uid212_i_div_conv_im8_cma_u(0) <= RESIZE(prodResY_uid212_i_div_conv_im8_cma_p(0),28);
    prodResY_uid212_i_div_conv_im8_cma_w(0) <= prodResY_uid212_i_div_conv_im8_cma_u(0);
    prodResY_uid212_i_div_conv_im8_cma_x(0) <= prodResY_uid212_i_div_conv_im8_cma_w(0);
    prodResY_uid212_i_div_conv_im8_cma_y(0) <= prodResY_uid212_i_div_conv_im8_cma_x(0);
    prodResY_uid212_i_div_conv_im8_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid212_i_div_conv_im8_cma_a0 <= (others => (others => '0'));
            prodResY_uid212_i_div_conv_im8_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid212_i_div_conv_im8_cma_ena0 = '1') THEN
                prodResY_uid212_i_div_conv_im8_cma_a0(0) <= RESIZE(SIGNED(prodResY_uid212_i_div_conv_bs6_b),14);
                prodResY_uid212_i_div_conv_im8_cma_c0(0) <= RESIZE(SIGNED(prodResY_uid212_i_div_conv_bs10_b),14);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid212_i_div_conv_im8_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid212_i_div_conv_im8_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid212_i_div_conv_im8_cma_ena1 = '1') THEN
                prodResY_uid212_i_div_conv_im8_cma_s(0) <= prodResY_uid212_i_div_conv_im8_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid212_i_div_conv_im8_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid212_i_div_conv_im8_cma_s(0)(27 downto 0)), xout => prodResY_uid212_i_div_conv_im8_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid212_i_div_conv_im8_cma_q <= STD_LOGIC_VECTOR(prodResY_uid212_i_div_conv_im8_cma_qq(27 downto 0));

    -- redist32_prodResY_uid212_i_div_conv_im8_cma_q_1(DELAY,859)
    redist32_prodResY_uid212_i_div_conv_im8_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid212_i_div_conv_im8_cma_q, xout => redist32_prodResY_uid212_i_div_conv_im8_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid212_i_div_conv_bs1(BITSELECT,743)@30
    prodResY_uid212_i_div_conv_bs1_in <= resFinal_uid211_i_div_conv_q(17 downto 0);
    prodResY_uid212_i_div_conv_bs1_b <= prodResY_uid212_i_div_conv_bs1_in(17 downto 0);

    -- prodResY_uid212_i_div_conv_im0_cma(CHAINMULTADD,793)@30 + 2
    prodResY_uid212_i_div_conv_im0_cma_reset <= not (resetn);
    prodResY_uid212_i_div_conv_im0_cma_ena0 <= '1';
    prodResY_uid212_i_div_conv_im0_cma_ena1 <= prodResY_uid212_i_div_conv_im0_cma_ena0;
    prodResY_uid212_i_div_conv_im0_cma_p(0) <= prodResY_uid212_i_div_conv_im0_cma_a0(0) * prodResY_uid212_i_div_conv_im0_cma_c0(0);
    prodResY_uid212_i_div_conv_im0_cma_u(0) <= RESIZE(prodResY_uid212_i_div_conv_im0_cma_p(0),36);
    prodResY_uid212_i_div_conv_im0_cma_w(0) <= prodResY_uid212_i_div_conv_im0_cma_u(0);
    prodResY_uid212_i_div_conv_im0_cma_x(0) <= prodResY_uid212_i_div_conv_im0_cma_w(0);
    prodResY_uid212_i_div_conv_im0_cma_y(0) <= prodResY_uid212_i_div_conv_im0_cma_x(0);
    prodResY_uid212_i_div_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid212_i_div_conv_im0_cma_a0 <= (others => (others => '0'));
            prodResY_uid212_i_div_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid212_i_div_conv_im0_cma_ena0 = '1') THEN
                prodResY_uid212_i_div_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodResY_uid212_i_div_conv_bs1_b),18);
                prodResY_uid212_i_div_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul20_conv_bs2_b),18);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid212_i_div_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid212_i_div_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid212_i_div_conv_im0_cma_ena1 = '1') THEN
                prodResY_uid212_i_div_conv_im0_cma_s(0) <= prodResY_uid212_i_div_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid212_i_div_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid212_i_div_conv_im0_cma_s(0)(35 downto 0)), xout => prodResY_uid212_i_div_conv_im0_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid212_i_div_conv_im0_cma_q <= STD_LOGIC_VECTOR(prodResY_uid212_i_div_conv_im0_cma_qq(35 downto 0));

    -- redist33_prodResY_uid212_i_div_conv_im0_cma_q_1(DELAY,860)
    redist33_prodResY_uid212_i_div_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid212_i_div_conv_im0_cma_q, xout => redist33_prodResY_uid212_i_div_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid212_i_div_conv_join_11(BITJOIN,753)@33
    prodResY_uid212_i_div_conv_join_11_q <= redist32_prodResY_uid212_i_div_conv_im8_cma_q_1_q & redist33_prodResY_uid212_i_div_conv_im0_cma_q_1_q;

    -- prodResY_uid212_i_div_conv_result_add_0_0(ADD,756)@33 + 1
    prodResY_uid212_i_div_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 64 => prodResY_uid212_i_div_conv_join_11_q(63)) & prodResY_uid212_i_div_conv_join_11_q));
    prodResY_uid212_i_div_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 51 => prodResY_uid212_i_div_conv_align_12_q(50)) & prodResY_uid212_i_div_conv_align_12_q));
    prodResY_uid212_i_div_conv_result_add_0_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid212_i_div_conv_result_add_0_0_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prodResY_uid212_i_div_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodResY_uid212_i_div_conv_result_add_0_0_a) + SIGNED(prodResY_uid212_i_div_conv_result_add_0_0_b));
        END IF;
    END PROCESS;
    prodResY_uid212_i_div_conv_result_add_0_0_q <= prodResY_uid212_i_div_conv_result_add_0_0_o(64 downto 0);

    -- prod_qy_LT_x_uid214_i_div_conv(COMPARE,213)@34 + 1
    prod_qy_LT_x_uid214_i_div_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 65 => prodResY_uid212_i_div_conv_result_add_0_0_q(64)) & prodResY_uid212_i_div_conv_result_add_0_0_q));
    prod_qy_LT_x_uid214_i_div_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 32 => redist164_bgTrunc_i_add19_conv_sel_x_b_33_outputreg_q(31)) & redist164_bgTrunc_i_add19_conv_sel_x_b_33_outputreg_q));
    prod_qy_LT_x_uid214_i_div_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prod_qy_LT_x_uid214_i_div_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prod_qy_LT_x_uid214_i_div_conv_o <= STD_LOGIC_VECTOR(SIGNED(prod_qy_LT_x_uid214_i_div_conv_a) - SIGNED(prod_qy_LT_x_uid214_i_div_conv_b));
        END IF;
    END PROCESS;
    prod_qy_LT_x_uid214_i_div_conv_c(0) <= prod_qy_LT_x_uid214_i_div_conv_o(65);

    -- CondNegX_uid222_i_div_conv(LOGICAL,221)@35
    CondNegX_uid222_i_div_conv_q <= prod_qy_LT_x_uid214_i_div_conv_c and redist85_signX_uid209_i_div_conv_b_5_q;

    -- invSignX_uid223_i_div_conv(LOGICAL,222)@35
    invSignX_uid223_i_div_conv_q <= not (redist85_signX_uid209_i_div_conv_b_5_q);

    -- prod_qy_GT_x_uid213_i_div_conv(COMPARE,212)@34 + 1
    prod_qy_GT_x_uid213_i_div_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 32 => redist164_bgTrunc_i_add19_conv_sel_x_b_33_outputreg_q(31)) & redist164_bgTrunc_i_add19_conv_sel_x_b_33_outputreg_q));
    prod_qy_GT_x_uid213_i_div_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 65 => prodResY_uid212_i_div_conv_result_add_0_0_q(64)) & prodResY_uid212_i_div_conv_result_add_0_0_q));
    prod_qy_GT_x_uid213_i_div_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prod_qy_GT_x_uid213_i_div_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prod_qy_GT_x_uid213_i_div_conv_o <= STD_LOGIC_VECTOR(SIGNED(prod_qy_GT_x_uid213_i_div_conv_a) - SIGNED(prod_qy_GT_x_uid213_i_div_conv_b));
        END IF;
    END PROCESS;
    prod_qy_GT_x_uid213_i_div_conv_c(0) <= prod_qy_GT_x_uid213_i_div_conv_o(65);

    -- CondPosX_uid224_i_div_conv(LOGICAL,223)@35
    CondPosX_uid224_i_div_conv_q <= prod_qy_GT_x_uid213_i_div_conv_c and invSignX_uid223_i_div_conv_q;

    -- postMuxSelect_uid225_i_div_conv(LOGICAL,224)@35
    postMuxSelect_uid225_i_div_conv_q <= CondPosX_uid224_i_div_conv_q or CondNegX_uid222_i_div_conv_q or redist80_OverflowCond_uid221_i_div_conv_q_2_q;

    -- resFinalIntDiv_uid230_i_div_conv(MUX,229)@35
    resFinalIntDiv_uid230_i_div_conv_s <= postMuxSelect_uid225_i_div_conv_q;
    resFinalIntDiv_uid230_i_div_conv_combproc: PROCESS (resFinalIntDiv_uid230_i_div_conv_s, redist83_resFinal_uid211_i_div_conv_q_5_q, redist79_resFinalPostMux_uid229_i_div_conv_b_1_q)
    BEGIN
        CASE (resFinalIntDiv_uid230_i_div_conv_s) IS
            WHEN "0" => resFinalIntDiv_uid230_i_div_conv_q <= redist83_resFinal_uid211_i_div_conv_q_5_q;
            WHEN "1" => resFinalIntDiv_uid230_i_div_conv_q <= redist79_resFinalPostMux_uid229_i_div_conv_b_1_q;
            WHEN OTHERS => resFinalIntDiv_uid230_i_div_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul20_conv_bs4(BITSELECT,489)@35
    i_mul20_conv_bs4_in <= STD_LOGIC_VECTOR(resFinalIntDiv_uid230_i_div_conv_q(17 downto 0));
    i_mul20_conv_bs4_b <= STD_LOGIC_VECTOR(i_mul20_conv_bs4_in(17 downto 0));

    -- i_mul20_conv_bjA5(BITJOIN,490)@35
    i_mul20_conv_bjA5_q <= GND_q & i_mul20_conv_bs4_b;

    -- redist56_i_mul20_conv_bs6_b_5_notEnable(LOGICAL,1041)
    redist56_i_mul20_conv_bs6_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist56_i_mul20_conv_bs6_b_5_nor(LOGICAL,1042)
    redist56_i_mul20_conv_bs6_b_5_nor_q <= not (redist56_i_mul20_conv_bs6_b_5_notEnable_q or redist56_i_mul20_conv_bs6_b_5_sticky_ena_q);

    -- redist56_i_mul20_conv_bs6_b_5_mem_last(CONSTANT,1038)
    redist56_i_mul20_conv_bs6_b_5_mem_last_q <= "01";

    -- redist56_i_mul20_conv_bs6_b_5_cmp(LOGICAL,1039)
    redist56_i_mul20_conv_bs6_b_5_cmp_q <= "1" WHEN redist56_i_mul20_conv_bs6_b_5_mem_last_q = redist56_i_mul20_conv_bs6_b_5_rdcnt_q ELSE "0";

    -- redist56_i_mul20_conv_bs6_b_5_cmpReg(REG,1040)
    redist56_i_mul20_conv_bs6_b_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist56_i_mul20_conv_bs6_b_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist56_i_mul20_conv_bs6_b_5_cmpReg_q <= STD_LOGIC_VECTOR(redist56_i_mul20_conv_bs6_b_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist56_i_mul20_conv_bs6_b_5_sticky_ena(REG,1043)
    redist56_i_mul20_conv_bs6_b_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist56_i_mul20_conv_bs6_b_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist56_i_mul20_conv_bs6_b_5_nor_q = "1") THEN
                redist56_i_mul20_conv_bs6_b_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist56_i_mul20_conv_bs6_b_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist56_i_mul20_conv_bs6_b_5_enaAnd(LOGICAL,1044)
    redist56_i_mul20_conv_bs6_b_5_enaAnd_q <= redist56_i_mul20_conv_bs6_b_5_sticky_ena_q and VCC_q;

    -- redist56_i_mul20_conv_bs6_b_5_rdcnt(COUNTER,1036)
    -- low=0, high=2, step=1, init=0
    redist56_i_mul20_conv_bs6_b_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist56_i_mul20_conv_bs6_b_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist56_i_mul20_conv_bs6_b_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist56_i_mul20_conv_bs6_b_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist56_i_mul20_conv_bs6_b_5_rdcnt_eq <= '1';
            ELSE
                redist56_i_mul20_conv_bs6_b_5_rdcnt_eq <= '0';
            END IF;
            IF (redist56_i_mul20_conv_bs6_b_5_rdcnt_eq = '1') THEN
                redist56_i_mul20_conv_bs6_b_5_rdcnt_i <= redist56_i_mul20_conv_bs6_b_5_rdcnt_i + 2;
            ELSE
                redist56_i_mul20_conv_bs6_b_5_rdcnt_i <= redist56_i_mul20_conv_bs6_b_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist56_i_mul20_conv_bs6_b_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist56_i_mul20_conv_bs6_b_5_rdcnt_i, 2)));

    -- redist56_i_mul20_conv_bs6_b_5_inputreg(DELAY,1034)
    redist56_i_mul20_conv_bs6_b_5_inputreg : dspba_delay
    GENERIC MAP ( width => 14, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul20_conv_bs6_b, xout => redist56_i_mul20_conv_bs6_b_5_inputreg_q, clk => clock, aclr => resetn );

    -- redist56_i_mul20_conv_bs6_b_5_wraddr(REG,1037)
    redist56_i_mul20_conv_bs6_b_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist56_i_mul20_conv_bs6_b_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist56_i_mul20_conv_bs6_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist56_i_mul20_conv_bs6_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist56_i_mul20_conv_bs6_b_5_mem(DUALMEM,1035)
    redist56_i_mul20_conv_bs6_b_5_mem_ia <= STD_LOGIC_VECTOR(redist56_i_mul20_conv_bs6_b_5_inputreg_q);
    redist56_i_mul20_conv_bs6_b_5_mem_aa <= redist56_i_mul20_conv_bs6_b_5_wraddr_q;
    redist56_i_mul20_conv_bs6_b_5_mem_ab <= redist56_i_mul20_conv_bs6_b_5_rdcnt_q;
    redist56_i_mul20_conv_bs6_b_5_mem_reset0 <= not (resetn);
    redist56_i_mul20_conv_bs6_b_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 14,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 14,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist56_i_mul20_conv_bs6_b_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist56_i_mul20_conv_bs6_b_5_mem_reset0,
        clock1 => clock,
        address_a => redist56_i_mul20_conv_bs6_b_5_mem_aa,
        data_a => redist56_i_mul20_conv_bs6_b_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist56_i_mul20_conv_bs6_b_5_mem_ab,
        q_b => redist56_i_mul20_conv_bs6_b_5_mem_iq
    );
    redist56_i_mul20_conv_bs6_b_5_mem_q <= redist56_i_mul20_conv_bs6_b_5_mem_iq(13 downto 0);

    -- redist57_i_mul20_conv_bs2_b_5_notEnable(LOGICAL,1052)
    redist57_i_mul20_conv_bs2_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist57_i_mul20_conv_bs2_b_5_nor(LOGICAL,1053)
    redist57_i_mul20_conv_bs2_b_5_nor_q <= not (redist57_i_mul20_conv_bs2_b_5_notEnable_q or redist57_i_mul20_conv_bs2_b_5_sticky_ena_q);

    -- redist57_i_mul20_conv_bs2_b_5_mem_last(CONSTANT,1049)
    redist57_i_mul20_conv_bs2_b_5_mem_last_q <= "01";

    -- redist57_i_mul20_conv_bs2_b_5_cmp(LOGICAL,1050)
    redist57_i_mul20_conv_bs2_b_5_cmp_q <= "1" WHEN redist57_i_mul20_conv_bs2_b_5_mem_last_q = redist57_i_mul20_conv_bs2_b_5_rdcnt_q ELSE "0";

    -- redist57_i_mul20_conv_bs2_b_5_cmpReg(REG,1051)
    redist57_i_mul20_conv_bs2_b_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_i_mul20_conv_bs2_b_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist57_i_mul20_conv_bs2_b_5_cmpReg_q <= STD_LOGIC_VECTOR(redist57_i_mul20_conv_bs2_b_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist57_i_mul20_conv_bs2_b_5_sticky_ena(REG,1054)
    redist57_i_mul20_conv_bs2_b_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_i_mul20_conv_bs2_b_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist57_i_mul20_conv_bs2_b_5_nor_q = "1") THEN
                redist57_i_mul20_conv_bs2_b_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist57_i_mul20_conv_bs2_b_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist57_i_mul20_conv_bs2_b_5_enaAnd(LOGICAL,1055)
    redist57_i_mul20_conv_bs2_b_5_enaAnd_q <= redist57_i_mul20_conv_bs2_b_5_sticky_ena_q and VCC_q;

    -- redist57_i_mul20_conv_bs2_b_5_rdcnt(COUNTER,1047)
    -- low=0, high=2, step=1, init=0
    redist57_i_mul20_conv_bs2_b_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_i_mul20_conv_bs2_b_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist57_i_mul20_conv_bs2_b_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist57_i_mul20_conv_bs2_b_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist57_i_mul20_conv_bs2_b_5_rdcnt_eq <= '1';
            ELSE
                redist57_i_mul20_conv_bs2_b_5_rdcnt_eq <= '0';
            END IF;
            IF (redist57_i_mul20_conv_bs2_b_5_rdcnt_eq = '1') THEN
                redist57_i_mul20_conv_bs2_b_5_rdcnt_i <= redist57_i_mul20_conv_bs2_b_5_rdcnt_i + 2;
            ELSE
                redist57_i_mul20_conv_bs2_b_5_rdcnt_i <= redist57_i_mul20_conv_bs2_b_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist57_i_mul20_conv_bs2_b_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist57_i_mul20_conv_bs2_b_5_rdcnt_i, 2)));

    -- redist57_i_mul20_conv_bs2_b_5_inputreg(DELAY,1045)
    redist57_i_mul20_conv_bs2_b_5_inputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul20_conv_bs2_b, xout => redist57_i_mul20_conv_bs2_b_5_inputreg_q, clk => clock, aclr => resetn );

    -- redist57_i_mul20_conv_bs2_b_5_wraddr(REG,1048)
    redist57_i_mul20_conv_bs2_b_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_i_mul20_conv_bs2_b_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist57_i_mul20_conv_bs2_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist57_i_mul20_conv_bs2_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist57_i_mul20_conv_bs2_b_5_mem(DUALMEM,1046)
    redist57_i_mul20_conv_bs2_b_5_mem_ia <= STD_LOGIC_VECTOR(redist57_i_mul20_conv_bs2_b_5_inputreg_q);
    redist57_i_mul20_conv_bs2_b_5_mem_aa <= redist57_i_mul20_conv_bs2_b_5_wraddr_q;
    redist57_i_mul20_conv_bs2_b_5_mem_ab <= redist57_i_mul20_conv_bs2_b_5_rdcnt_q;
    redist57_i_mul20_conv_bs2_b_5_mem_reset0 <= not (resetn);
    redist57_i_mul20_conv_bs2_b_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist57_i_mul20_conv_bs2_b_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist57_i_mul20_conv_bs2_b_5_mem_reset0,
        clock1 => clock,
        address_a => redist57_i_mul20_conv_bs2_b_5_mem_aa,
        data_a => redist57_i_mul20_conv_bs2_b_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist57_i_mul20_conv_bs2_b_5_mem_ab,
        q_b => redist57_i_mul20_conv_bs2_b_5_mem_iq
    );
    redist57_i_mul20_conv_bs2_b_5_mem_q <= redist57_i_mul20_conv_bs2_b_5_mem_iq(17 downto 0);

    -- i_mul20_conv_bjB9(BITJOIN,494)@35
    i_mul20_conv_bjB9_q <= GND_q & redist57_i_mul20_conv_bs2_b_5_mem_q;

    -- i_mul20_conv_bs7(BITSELECT,492)@35
    i_mul20_conv_bs7_b <= STD_LOGIC_VECTOR(resFinalIntDiv_uid230_i_div_conv_q(31 downto 18));

    -- i_mul20_conv_ma3_cma(CHAINMULTADD,797)@35 + 2
    i_mul20_conv_ma3_cma_reset <= not (resetn);
    i_mul20_conv_ma3_cma_ena0 <= '1';
    i_mul20_conv_ma3_cma_ena1 <= i_mul20_conv_ma3_cma_ena0;
    i_mul20_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul20_conv_ma3_cma_a0(0),15));
    i_mul20_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul20_conv_ma3_cma_a0(1),15));
    i_mul20_conv_ma3_cma_p(0) <= i_mul20_conv_ma3_cma_l(0) * i_mul20_conv_ma3_cma_c0(0);
    i_mul20_conv_ma3_cma_p(1) <= i_mul20_conv_ma3_cma_l(1) * i_mul20_conv_ma3_cma_c0(1);
    i_mul20_conv_ma3_cma_u(0) <= RESIZE(i_mul20_conv_ma3_cma_p(0),35);
    i_mul20_conv_ma3_cma_u(1) <= RESIZE(i_mul20_conv_ma3_cma_p(1),35);
    i_mul20_conv_ma3_cma_w(0) <= i_mul20_conv_ma3_cma_u(0) + i_mul20_conv_ma3_cma_u(1);
    i_mul20_conv_ma3_cma_x(0) <= i_mul20_conv_ma3_cma_w(0);
    i_mul20_conv_ma3_cma_y(0) <= i_mul20_conv_ma3_cma_x(0);
    i_mul20_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul20_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul20_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul20_conv_ma3_cma_ena0 = '1') THEN
                i_mul20_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul20_conv_bs7_b),14);
                i_mul20_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(redist56_i_mul20_conv_bs6_b_5_mem_q),14);
                i_mul20_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul20_conv_bjB9_q),19);
                i_mul20_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul20_conv_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul20_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul20_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul20_conv_ma3_cma_ena1 = '1') THEN
                i_mul20_conv_ma3_cma_s(0) <= i_mul20_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul20_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul20_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul20_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul20_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul20_conv_ma3_cma_qq(33 downto 0));

    -- redist29_i_mul20_conv_ma3_cma_q_1(DELAY,856)
    redist29_i_mul20_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul20_conv_ma3_cma_q, xout => redist29_i_mul20_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul20_conv_align_14(BITSHIFT,499)@38
    i_mul20_conv_align_14_qint <= redist29_i_mul20_conv_ma3_cma_q_1_q & "000000000000000000";
    i_mul20_conv_align_14_q <= i_mul20_conv_align_14_qint(51 downto 0);

    -- i_mul20_conv_bs11(BITSELECT,496)@35
    i_mul20_conv_bs11_b <= resFinalIntDiv_uid230_i_div_conv_q(31 downto 18);

    -- i_mul20_conv_im10_cma(CHAINMULTADD,780)@35 + 2
    i_mul20_conv_im10_cma_reset <= not (resetn);
    i_mul20_conv_im10_cma_ena0 <= '1';
    i_mul20_conv_im10_cma_ena1 <= i_mul20_conv_im10_cma_ena0;
    i_mul20_conv_im10_cma_p(0) <= i_mul20_conv_im10_cma_a0(0) * i_mul20_conv_im10_cma_c0(0);
    i_mul20_conv_im10_cma_u(0) <= RESIZE(i_mul20_conv_im10_cma_p(0),28);
    i_mul20_conv_im10_cma_w(0) <= i_mul20_conv_im10_cma_u(0);
    i_mul20_conv_im10_cma_x(0) <= i_mul20_conv_im10_cma_w(0);
    i_mul20_conv_im10_cma_y(0) <= i_mul20_conv_im10_cma_x(0);
    i_mul20_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul20_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul20_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul20_conv_im10_cma_ena0 = '1') THEN
                i_mul20_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul20_conv_bs11_b),14);
                i_mul20_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(redist56_i_mul20_conv_bs6_b_5_mem_q),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul20_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul20_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul20_conv_im10_cma_ena1 = '1') THEN
                i_mul20_conv_im10_cma_s(0) <= i_mul20_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul20_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul20_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul20_conv_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul20_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul20_conv_im10_cma_qq(27 downto 0));

    -- redist46_i_mul20_conv_im10_cma_q_1(DELAY,873)
    redist46_i_mul20_conv_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul20_conv_im10_cma_q, xout => redist46_i_mul20_conv_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul20_conv_bs1(BITSELECT,486)@35
    i_mul20_conv_bs1_in <= resFinalIntDiv_uid230_i_div_conv_q(17 downto 0);
    i_mul20_conv_bs1_b <= i_mul20_conv_bs1_in(17 downto 0);

    -- i_mul20_conv_im0_cma(CHAINMULTADD,779)@35 + 2
    i_mul20_conv_im0_cma_reset <= not (resetn);
    i_mul20_conv_im0_cma_ena0 <= '1';
    i_mul20_conv_im0_cma_ena1 <= i_mul20_conv_im0_cma_ena0;
    i_mul20_conv_im0_cma_p(0) <= i_mul20_conv_im0_cma_a0(0) * i_mul20_conv_im0_cma_c0(0);
    i_mul20_conv_im0_cma_u(0) <= RESIZE(i_mul20_conv_im0_cma_p(0),36);
    i_mul20_conv_im0_cma_w(0) <= i_mul20_conv_im0_cma_u(0);
    i_mul20_conv_im0_cma_x(0) <= i_mul20_conv_im0_cma_w(0);
    i_mul20_conv_im0_cma_y(0) <= i_mul20_conv_im0_cma_x(0);
    i_mul20_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul20_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul20_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul20_conv_im0_cma_ena0 = '1') THEN
                i_mul20_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul20_conv_bs1_b),18);
                i_mul20_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(redist57_i_mul20_conv_bs2_b_5_mem_q),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul20_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul20_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul20_conv_im0_cma_ena1 = '1') THEN
                i_mul20_conv_im0_cma_s(0) <= i_mul20_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul20_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul20_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul20_conv_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul20_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul20_conv_im0_cma_qq(35 downto 0));

    -- redist47_i_mul20_conv_im0_cma_q_1(DELAY,874)
    redist47_i_mul20_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul20_conv_im0_cma_q, xout => redist47_i_mul20_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul20_conv_join_13(BITJOIN,498)@38
    i_mul20_conv_join_13_q <= redist46_i_mul20_conv_im10_cma_q_1_q & redist47_i_mul20_conv_im0_cma_q_1_q;

    -- i_mul20_conv_result_add_0_0(ADD,501)@38
    i_mul20_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul20_conv_join_13_q));
    i_mul20_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul20_conv_align_14_q(51)) & i_mul20_conv_align_14_q));
    i_mul20_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul20_conv_result_add_0_0_a) + SIGNED(i_mul20_conv_result_add_0_0_b));
    i_mul20_conv_result_add_0_0_q <= i_mul20_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul20_conv_rnd_sel(BITSELECT,476)@38
    bgTrunc_i_mul20_conv_rnd_sel_in <= i_mul20_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul20_conv_rnd_sel_b <= bgTrunc_i_mul20_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul20_conv_sel_x(BITSELECT,7)@38
    bgTrunc_i_mul20_conv_sel_x_b <= bgTrunc_i_mul20_conv_rnd_sel_b(31 downto 0);

    -- redist155_bgTrunc_i_mul20_conv_sel_x_b_1(DELAY,982)
    redist155_bgTrunc_i_mul20_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul20_conv_sel_x_b, xout => redist155_bgTrunc_i_mul20_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- redist165_bgTrunc_i_add19_conv_sel_x_b_38_notEnable(LOGICAL,1226)
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist165_bgTrunc_i_add19_conv_sel_x_b_38_nor(LOGICAL,1227)
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_nor_q <= not (redist165_bgTrunc_i_add19_conv_sel_x_b_38_notEnable_q or redist165_bgTrunc_i_add19_conv_sel_x_b_38_sticky_ena_q);

    -- redist165_bgTrunc_i_add19_conv_sel_x_b_38_cmpReg(REG,1225)
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist165_bgTrunc_i_add19_conv_sel_x_b_38_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist165_bgTrunc_i_add19_conv_sel_x_b_38_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist165_bgTrunc_i_add19_conv_sel_x_b_38_sticky_ena(REG,1228)
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist165_bgTrunc_i_add19_conv_sel_x_b_38_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist165_bgTrunc_i_add19_conv_sel_x_b_38_nor_q = "1") THEN
                redist165_bgTrunc_i_add19_conv_sel_x_b_38_sticky_ena_q <= STD_LOGIC_VECTOR(redist165_bgTrunc_i_add19_conv_sel_x_b_38_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist165_bgTrunc_i_add19_conv_sel_x_b_38_enaAnd(LOGICAL,1229)
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_enaAnd_q <= redist165_bgTrunc_i_add19_conv_sel_x_b_38_sticky_ena_q and VCC_q;

    -- redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt(COUNTER,1223)
    -- low=0, high=1, step=1, init=0
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_i <= redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_i, 1)));

    -- redist165_bgTrunc_i_add19_conv_sel_x_b_38_inputreg(DELAY,1220)
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist164_bgTrunc_i_add19_conv_sel_x_b_33_outputreg_q, xout => redist165_bgTrunc_i_add19_conv_sel_x_b_38_inputreg_q, clk => clock, aclr => resetn );

    -- redist165_bgTrunc_i_add19_conv_sel_x_b_38_wraddr(REG,1224)
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist165_bgTrunc_i_add19_conv_sel_x_b_38_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist165_bgTrunc_i_add19_conv_sel_x_b_38_wraddr_q <= STD_LOGIC_VECTOR(redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem(DUALMEM,1222)
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_ia <= STD_LOGIC_VECTOR(redist165_bgTrunc_i_add19_conv_sel_x_b_38_inputreg_q);
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_aa <= redist165_bgTrunc_i_add19_conv_sel_x_b_38_wraddr_q;
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_ab <= redist165_bgTrunc_i_add19_conv_sel_x_b_38_rdcnt_q;
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_reset0 <= not (resetn);
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 32,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist165_bgTrunc_i_add19_conv_sel_x_b_38_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_reset0,
        clock1 => clock,
        address_a => redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_aa,
        data_a => redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_ab,
        q_b => redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_iq
    );
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_q <= redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_iq(31 downto 0);

    -- redist165_bgTrunc_i_add19_conv_sel_x_b_38_outputreg(DELAY,1221)
    redist165_bgTrunc_i_add19_conv_sel_x_b_38_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist165_bgTrunc_i_add19_conv_sel_x_b_38_mem_q, xout => redist165_bgTrunc_i_add19_conv_sel_x_b_38_outputreg_q, clk => clock, aclr => resetn );

    -- i_sub21_conv(SUB,84)@39
    i_sub21_conv_a <= STD_LOGIC_VECTOR("0" & redist165_bgTrunc_i_add19_conv_sel_x_b_38_outputreg_q);
    i_sub21_conv_b <= STD_LOGIC_VECTOR("0" & redist155_bgTrunc_i_mul20_conv_sel_x_b_1_q);
    i_sub21_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub21_conv_a) - UNSIGNED(i_sub21_conv_b));
    i_sub21_conv_q <= i_sub21_conv_o(32 downto 0);

    -- bgTrunc_i_sub21_conv_sel_x(BITSELECT,11)@39
    bgTrunc_i_sub21_conv_sel_x_b <= STD_LOGIC_VECTOR(i_sub21_conv_q(31 downto 0));

    -- redist148_bgTrunc_i_sub21_conv_sel_x_b_1(DELAY,975)
    redist148_bgTrunc_i_sub21_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub21_conv_sel_x_b, xout => redist148_bgTrunc_i_sub21_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_wraddr(REG,1171)
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist149_bgTrunc_i_sub21_conv_sel_x_b_11_wraddr_q <= "111";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist149_bgTrunc_i_sub21_conv_sel_x_b_11_wraddr_q <= STD_LOGIC_VECTOR(redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem(DUALMEM,1169)
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_ia <= STD_LOGIC_VECTOR(redist148_bgTrunc_i_sub21_conv_sel_x_b_1_q);
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_aa <= redist149_bgTrunc_i_sub21_conv_sel_x_b_11_wraddr_q;
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_ab <= redist149_bgTrunc_i_sub21_conv_sel_x_b_11_rdcnt_q;
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_reset0 <= not (resetn);
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 8,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 8,
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
        clocken1 => redist149_bgTrunc_i_sub21_conv_sel_x_b_11_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_reset0,
        clock1 => clock,
        address_a => redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_aa,
        data_a => redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_ab,
        q_b => redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_iq
    );
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_q <= redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_iq(31 downto 0);

    -- redist149_bgTrunc_i_sub21_conv_sel_x_b_11_outputreg(DELAY,1168)
    redist149_bgTrunc_i_sub21_conv_sel_x_b_11_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist149_bgTrunc_i_sub21_conv_sel_x_b_11_mem_q, xout => redist149_bgTrunc_i_sub21_conv_sel_x_b_11_outputreg_q, clk => clock, aclr => resetn );

    -- signX_uid148_i_div22_conv(BITSELECT,147)@50
    signX_uid148_i_div22_conv_b <= STD_LOGIC_VECTOR(redist149_bgTrunc_i_sub21_conv_sel_x_b_11_outputreg_q(31 downto 31));

    -- redist105_signX_uid148_i_div22_conv_b_3(DELAY,932)
    redist105_signX_uid148_i_div22_conv_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signX_uid148_i_div22_conv_b, xout => redist105_signX_uid148_i_div22_conv_b_3_q, clk => clock, aclr => resetn );

    -- resultSign_uid158_i_div22_conv(LOGICAL,157)@53 + 1
    resultSign_uid158_i_div22_conv_qi <= redist105_signX_uid148_i_div22_conv_b_3_q xor redist123_xMSB_uid110_i_div22_conv_b_32_q;
    resultSign_uid158_i_div22_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resultSign_uid158_i_div22_conv_qi, xout => resultSign_uid158_i_div22_conv_q, clk => clock, aclr => resetn );

    -- cstSubFinal_uid166_i_div22_conv(BITJOIN,165)@54
    cstSubFinal_uid166_i_div22_conv_q <= resultSign_uid158_i_div22_conv_q & VCC_q;

    -- cstOvf_uid149_i_div22_conv(MUX,148)@50
    cstOvf_uid149_i_div22_conv_s <= signX_uid148_i_div22_conv_b;
    cstOvf_uid149_i_div22_conv_combproc: PROCESS (cstOvf_uid149_i_div22_conv_s, cstValOvfPos_uid146_i_div22_conv_q, cstValOvfneg_uid147_i_div22_conv_q)
    BEGIN
        CASE (cstOvf_uid149_i_div22_conv_s) IS
            WHEN "0" => cstOvf_uid149_i_div22_conv_q <= cstValOvfPos_uid146_i_div22_conv_q;
            WHEN "1" => cstOvf_uid149_i_div22_conv_q <= cstValOvfneg_uid147_i_div22_conv_q;
            WHEN OTHERS => cstOvf_uid149_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- zMsbY0_uid136_i_div22_conv(BITJOIN,135)@41
    zMsbY0_uid136_i_div22_conv_q <= GND_q & redist122_xMSB_uid110_i_div22_conv_b_20_q;

    -- xPSX_uid134_i_div22_conv(LOGICAL,133)@40 + 1
    xPSX_uid134_i_div22_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => redist121_xMSB_uid110_i_div22_conv_b_19_q(0)) & redist121_xMSB_uid110_i_div22_conv_b_19_q));
    xPSX_uid134_i_div22_conv_qi <= redist148_bgTrunc_i_sub21_conv_sel_x_b_1_q xor xPSX_uid134_i_div22_conv_b;
    xPSX_uid134_i_div22_conv_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xPSX_uid134_i_div22_conv_qi, xout => xPSX_uid134_i_div22_conv_q, clk => clock, aclr => resetn );

    -- xPSXE_uid137_i_div22_conv(ADD,136)@41 + 1
    xPSXE_uid137_i_div22_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => xPSX_uid134_i_div22_conv_q(31)) & xPSX_uid134_i_div22_conv_q));
    xPSXE_uid137_i_div22_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 2 => zMsbY0_uid136_i_div22_conv_q(1)) & zMsbY0_uid136_i_div22_conv_q));
    xPSXE_uid137_i_div22_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            xPSXE_uid137_i_div22_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            xPSXE_uid137_i_div22_conv_o <= STD_LOGIC_VECTOR(SIGNED(xPSXE_uid137_i_div22_conv_a) + SIGNED(xPSXE_uid137_i_div22_conv_b));
        END IF;
    END PROCESS;
    xPSXE_uid137_i_div22_conv_q <= xPSXE_uid137_i_div22_conv_o(32 downto 0);

    -- prodXInvY_uid139_i_div22_conv_bs4(BITSELECT,589)@42
    prodXInvY_uid139_i_div22_conv_bs4_in <= STD_LOGIC_VECTOR(xPSXE_uid137_i_div22_conv_q(17 downto 0));
    prodXInvY_uid139_i_div22_conv_bs4_b <= STD_LOGIC_VECTOR(prodXInvY_uid139_i_div22_conv_bs4_in(17 downto 0));

    -- prodXInvY_uid139_i_div22_conv_bjA5(BITJOIN,590)@42
    prodXInvY_uid139_i_div22_conv_bjA5_q <= GND_q & prodXInvY_uid139_i_div22_conv_bs4_b;

    -- redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_notEnable(LOGICAL,1030)
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_nor(LOGICAL,1031)
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_nor_q <= not (redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_notEnable_q or redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_sticky_ena_q);

    -- redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_last(CONSTANT,1027)
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_last_q <= "01";

    -- redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_cmp(LOGICAL,1028)
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_cmp_q <= "1" WHEN redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_last_q = redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_q ELSE "0";

    -- redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_cmpReg(REG,1029)
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_cmpReg_q <= STD_LOGIC_VECTOR(redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_sticky_ena(REG,1032)
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_nor_q = "1") THEN
                redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_enaAnd(LOGICAL,1033)
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_enaAnd_q <= redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_sticky_ena_q and VCC_q;

    -- redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt(COUNTER,1025)
    -- low=0, high=2, step=1, init=0
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_eq <= '1';
            ELSE
                redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_eq <= '0';
            END IF;
            IF (redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_eq = '1') THEN
                redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_i <= redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_i + 2;
            ELSE
                redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_i <= redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_i, 2)));

    -- leftShiftStage2Idx3Rng3_uid581_normY_uid117_i_div22_conv(BITSELECT,580)@28
    leftShiftStage2Idx3Rng3_uid581_normY_uid117_i_div22_conv_in <= leftShiftStage1_uid573_normY_uid117_i_div22_conv_q(28 downto 0);
    leftShiftStage2Idx3Rng3_uid581_normY_uid117_i_div22_conv_b <= leftShiftStage2Idx3Rng3_uid581_normY_uid117_i_div22_conv_in(28 downto 0);

    -- leftShiftStage2Idx3_uid582_normY_uid117_i_div22_conv(BITJOIN,581)@28
    leftShiftStage2Idx3_uid582_normY_uid117_i_div22_conv_q <= leftShiftStage2Idx3Rng3_uid581_normY_uid117_i_div22_conv_b & i_c0_ene1104_conv_vt_const_2_q;

    -- leftShiftStage2Idx2Rng2_uid578_normY_uid117_i_div22_conv(BITSELECT,577)@28
    leftShiftStage2Idx2Rng2_uid578_normY_uid117_i_div22_conv_in <= leftShiftStage1_uid573_normY_uid117_i_div22_conv_q(29 downto 0);
    leftShiftStage2Idx2Rng2_uid578_normY_uid117_i_div22_conv_b <= leftShiftStage2Idx2Rng2_uid578_normY_uid117_i_div22_conv_in(29 downto 0);

    -- leftShiftStage2Idx2_uid579_normY_uid117_i_div22_conv(BITJOIN,578)@28
    leftShiftStage2Idx2_uid579_normY_uid117_i_div22_conv_q <= leftShiftStage2Idx2Rng2_uid578_normY_uid117_i_div22_conv_b & zs_uid256_zCount_uid116_i_div22_conv_q;

    -- leftShiftStage2Idx1Rng1_uid575_normY_uid117_i_div22_conv(BITSELECT,574)@28
    leftShiftStage2Idx1Rng1_uid575_normY_uid117_i_div22_conv_in <= leftShiftStage1_uid573_normY_uid117_i_div22_conv_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid575_normY_uid117_i_div22_conv_b <= leftShiftStage2Idx1Rng1_uid575_normY_uid117_i_div22_conv_in(30 downto 0);

    -- leftShiftStage2Idx1_uid576_normY_uid117_i_div22_conv(BITJOIN,575)@28
    leftShiftStage2Idx1_uid576_normY_uid117_i_div22_conv_q <= leftShiftStage2Idx1Rng1_uid575_normY_uid117_i_div22_conv_b & GND_q;

    -- leftShiftStage1Idx3Rng12_uid570_normY_uid117_i_div22_conv(BITSELECT,569)@28
    leftShiftStage1Idx3Rng12_uid570_normY_uid117_i_div22_conv_in <= leftShiftStage0_uid562_normY_uid117_i_div22_conv_q(19 downto 0);
    leftShiftStage1Idx3Rng12_uid570_normY_uid117_i_div22_conv_b <= leftShiftStage1Idx3Rng12_uid570_normY_uid117_i_div22_conv_in(19 downto 0);

    -- leftShiftStage1Idx3_uid571_normY_uid117_i_div22_conv(BITJOIN,570)@28
    leftShiftStage1Idx3_uid571_normY_uid117_i_div22_conv_q <= leftShiftStage1Idx3Rng12_uid570_normY_uid117_i_div22_conv_b & rightBottomX_bottomExtension_uid399_pT3_uid296_invPolyEval_q;

    -- leftShiftStage1Idx2Rng8_uid567_normY_uid117_i_div22_conv(BITSELECT,566)@28
    leftShiftStage1Idx2Rng8_uid567_normY_uid117_i_div22_conv_in <= leftShiftStage0_uid562_normY_uid117_i_div22_conv_q(23 downto 0);
    leftShiftStage1Idx2Rng8_uid567_normY_uid117_i_div22_conv_b <= leftShiftStage1Idx2Rng8_uid567_normY_uid117_i_div22_conv_in(23 downto 0);

    -- leftShiftStage1Idx2_uid568_normY_uid117_i_div22_conv(BITJOIN,567)@28
    leftShiftStage1Idx2_uid568_normY_uid117_i_div22_conv_q <= leftShiftStage1Idx2Rng8_uid567_normY_uid117_i_div22_conv_b & zs_uid244_zCount_uid116_i_div22_conv_q;

    -- leftShiftStage1Idx1Rng4_uid564_normY_uid117_i_div22_conv(BITSELECT,563)@28
    leftShiftStage1Idx1Rng4_uid564_normY_uid117_i_div22_conv_in <= leftShiftStage0_uid562_normY_uid117_i_div22_conv_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid564_normY_uid117_i_div22_conv_b <= leftShiftStage1Idx1Rng4_uid564_normY_uid117_i_div22_conv_in(27 downto 0);

    -- leftShiftStage1Idx1_uid565_normY_uid117_i_div22_conv(BITJOIN,564)@28
    leftShiftStage1Idx1_uid565_normY_uid117_i_div22_conv_q <= leftShiftStage1Idx1Rng4_uid564_normY_uid117_i_div22_conv_b & zs_uid250_zCount_uid116_i_div22_conv_q;

    -- leftShiftStage0Idx1Rng16_uid557_normY_uid117_i_div22_conv(BITSELECT,556)@28
    leftShiftStage0Idx1Rng16_uid557_normY_uid117_i_div22_conv_in <= redist119_yPS_uid115_i_div22_conv_b_6_outputreg_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid557_normY_uid117_i_div22_conv_b <= leftShiftStage0Idx1Rng16_uid557_normY_uid117_i_div22_conv_in(15 downto 0);

    -- leftShiftStage0Idx1_uid558_normY_uid117_i_div22_conv(BITJOIN,557)@28
    leftShiftStage0Idx1_uid558_normY_uid117_i_div22_conv_q <= leftShiftStage0Idx1Rng16_uid557_normY_uid117_i_div22_conv_b & zs_uid238_zCount_uid116_i_div22_conv_q;

    -- redist119_yPS_uid115_i_div22_conv_b_6_notEnable(LOGICAL,1120)
    redist119_yPS_uid115_i_div22_conv_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist119_yPS_uid115_i_div22_conv_b_6_nor(LOGICAL,1121)
    redist119_yPS_uid115_i_div22_conv_b_6_nor_q <= not (redist119_yPS_uid115_i_div22_conv_b_6_notEnable_q or redist119_yPS_uid115_i_div22_conv_b_6_sticky_ena_q);

    -- redist119_yPS_uid115_i_div22_conv_b_6_cmpReg(REG,1119)
    redist119_yPS_uid115_i_div22_conv_b_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist119_yPS_uid115_i_div22_conv_b_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist119_yPS_uid115_i_div22_conv_b_6_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist119_yPS_uid115_i_div22_conv_b_6_sticky_ena(REG,1122)
    redist119_yPS_uid115_i_div22_conv_b_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist119_yPS_uid115_i_div22_conv_b_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist119_yPS_uid115_i_div22_conv_b_6_nor_q = "1") THEN
                redist119_yPS_uid115_i_div22_conv_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist119_yPS_uid115_i_div22_conv_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist119_yPS_uid115_i_div22_conv_b_6_enaAnd(LOGICAL,1123)
    redist119_yPS_uid115_i_div22_conv_b_6_enaAnd_q <= redist119_yPS_uid115_i_div22_conv_b_6_sticky_ena_q and VCC_q;

    -- redist119_yPS_uid115_i_div22_conv_b_6_rdcnt(COUNTER,1117)
    -- low=0, high=1, step=1, init=0
    redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_i <= redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_i, 1)));

    -- yPSE_uid112_i_div22_conv(LOGICAL,111)@21 + 1
    yPSE_uid112_i_div22_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid110_i_div22_conv_b(0)) & xMSB_uid110_i_div22_conv_b));
    yPSE_uid112_i_div22_conv_qi <= i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out xor yPSE_uid112_i_div22_conv_b;
    yPSE_uid112_i_div22_conv_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yPSE_uid112_i_div22_conv_qi, xout => yPSE_uid112_i_div22_conv_q, clk => clock, aclr => resetn );

    -- yPSEA_uid114_i_div22_conv(ADD,113)@22
    yPSEA_uid114_i_div22_conv_a <= STD_LOGIC_VECTOR("0" & yPSE_uid112_i_div22_conv_q);
    yPSEA_uid114_i_div22_conv_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000" & redist120_xMSB_uid110_i_div22_conv_b_1_q);
    yPSEA_uid114_i_div22_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(yPSEA_uid114_i_div22_conv_a) + UNSIGNED(yPSEA_uid114_i_div22_conv_b));
    yPSEA_uid114_i_div22_conv_q <= yPSEA_uid114_i_div22_conv_o(32 downto 0);

    -- yPS_uid115_i_div22_conv(BITSELECT,114)@22
    yPS_uid115_i_div22_conv_in <= STD_LOGIC_VECTOR(yPSEA_uid114_i_div22_conv_q(31 downto 0));
    yPS_uid115_i_div22_conv_b <= STD_LOGIC_VECTOR(yPS_uid115_i_div22_conv_in(31 downto 0));

    -- redist117_yPS_uid115_i_div22_conv_b_1(DELAY,944)
    redist117_yPS_uid115_i_div22_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yPS_uid115_i_div22_conv_b, xout => redist117_yPS_uid115_i_div22_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist118_yPS_uid115_i_div22_conv_b_2(DELAY,945)
    redist118_yPS_uid115_i_div22_conv_b_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist117_yPS_uid115_i_div22_conv_b_1_q, xout => redist118_yPS_uid115_i_div22_conv_b_2_q, clk => clock, aclr => resetn );

    -- redist119_yPS_uid115_i_div22_conv_b_6_wraddr(REG,1118)
    redist119_yPS_uid115_i_div22_conv_b_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist119_yPS_uid115_i_div22_conv_b_6_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist119_yPS_uid115_i_div22_conv_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist119_yPS_uid115_i_div22_conv_b_6_mem(DUALMEM,1116)
    redist119_yPS_uid115_i_div22_conv_b_6_mem_ia <= STD_LOGIC_VECTOR(redist118_yPS_uid115_i_div22_conv_b_2_q);
    redist119_yPS_uid115_i_div22_conv_b_6_mem_aa <= redist119_yPS_uid115_i_div22_conv_b_6_wraddr_q;
    redist119_yPS_uid115_i_div22_conv_b_6_mem_ab <= redist119_yPS_uid115_i_div22_conv_b_6_rdcnt_q;
    redist119_yPS_uid115_i_div22_conv_b_6_mem_reset0 <= not (resetn);
    redist119_yPS_uid115_i_div22_conv_b_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 32,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist119_yPS_uid115_i_div22_conv_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist119_yPS_uid115_i_div22_conv_b_6_mem_reset0,
        clock1 => clock,
        address_a => redist119_yPS_uid115_i_div22_conv_b_6_mem_aa,
        data_a => redist119_yPS_uid115_i_div22_conv_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist119_yPS_uid115_i_div22_conv_b_6_mem_ab,
        q_b => redist119_yPS_uid115_i_div22_conv_b_6_mem_iq
    );
    redist119_yPS_uid115_i_div22_conv_b_6_mem_q <= redist119_yPS_uid115_i_div22_conv_b_6_mem_iq(31 downto 0);

    -- redist119_yPS_uid115_i_div22_conv_b_6_outputreg(DELAY,1115)
    redist119_yPS_uid115_i_div22_conv_b_6_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist119_yPS_uid115_i_div22_conv_b_6_mem_q, xout => redist119_yPS_uid115_i_div22_conv_b_6_outputreg_q, clk => clock, aclr => resetn );

    -- leftShiftStage0_uid562_normY_uid117_i_div22_conv(MUX,561)@28
    leftShiftStage0_uid562_normY_uid117_i_div22_conv_s <= leftShiftStageSel5Dto4_uid561_normY_uid117_i_div22_conv_merged_bit_select_b;
    leftShiftStage0_uid562_normY_uid117_i_div22_conv_combproc: PROCESS (leftShiftStage0_uid562_normY_uid117_i_div22_conv_s, redist119_yPS_uid115_i_div22_conv_b_6_outputreg_q, leftShiftStage0Idx1_uid558_normY_uid117_i_div22_conv_q, zs_uid232_zCount_uid116_i_div22_conv_q)
    BEGIN
        CASE (leftShiftStage0_uid562_normY_uid117_i_div22_conv_s) IS
            WHEN "00" => leftShiftStage0_uid562_normY_uid117_i_div22_conv_q <= redist119_yPS_uid115_i_div22_conv_b_6_outputreg_q;
            WHEN "01" => leftShiftStage0_uid562_normY_uid117_i_div22_conv_q <= leftShiftStage0Idx1_uid558_normY_uid117_i_div22_conv_q;
            WHEN "10" => leftShiftStage0_uid562_normY_uid117_i_div22_conv_q <= zs_uid232_zCount_uid116_i_div22_conv_q;
            WHEN "11" => leftShiftStage0_uid562_normY_uid117_i_div22_conv_q <= zs_uid232_zCount_uid116_i_div22_conv_q;
            WHEN OTHERS => leftShiftStage0_uid562_normY_uid117_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid573_normY_uid117_i_div22_conv(MUX,572)@28
    leftShiftStage1_uid573_normY_uid117_i_div22_conv_s <= leftShiftStageSel5Dto4_uid561_normY_uid117_i_div22_conv_merged_bit_select_c;
    leftShiftStage1_uid573_normY_uid117_i_div22_conv_combproc: PROCESS (leftShiftStage1_uid573_normY_uid117_i_div22_conv_s, leftShiftStage0_uid562_normY_uid117_i_div22_conv_q, leftShiftStage1Idx1_uid565_normY_uid117_i_div22_conv_q, leftShiftStage1Idx2_uid568_normY_uid117_i_div22_conv_q, leftShiftStage1Idx3_uid571_normY_uid117_i_div22_conv_q)
    BEGIN
        CASE (leftShiftStage1_uid573_normY_uid117_i_div22_conv_s) IS
            WHEN "00" => leftShiftStage1_uid573_normY_uid117_i_div22_conv_q <= leftShiftStage0_uid562_normY_uid117_i_div22_conv_q;
            WHEN "01" => leftShiftStage1_uid573_normY_uid117_i_div22_conv_q <= leftShiftStage1Idx1_uid565_normY_uid117_i_div22_conv_q;
            WHEN "10" => leftShiftStage1_uid573_normY_uid117_i_div22_conv_q <= leftShiftStage1Idx2_uid568_normY_uid117_i_div22_conv_q;
            WHEN "11" => leftShiftStage1_uid573_normY_uid117_i_div22_conv_q <= leftShiftStage1Idx3_uid571_normY_uid117_i_div22_conv_q;
            WHEN OTHERS => leftShiftStage1_uid573_normY_uid117_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid234_zCount_uid116_i_div22_conv(LOGICAL,233)@23 + 1
    vCount_uid234_zCount_uid116_i_div22_conv_qi <= "1" WHEN redist117_yPS_uid115_i_div22_conv_b_1_q = zs_uid232_zCount_uid116_i_div22_conv_q ELSE "0";
    vCount_uid234_zCount_uid116_i_div22_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid234_zCount_uid116_i_div22_conv_qi, xout => vCount_uid234_zCount_uid116_i_div22_conv_q, clk => clock, aclr => resetn );

    -- redist78_vCount_uid234_zCount_uid116_i_div22_conv_q_4(DELAY,905)
    redist78_vCount_uid234_zCount_uid116_i_div22_conv_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid234_zCount_uid116_i_div22_conv_q, xout => redist78_vCount_uid234_zCount_uid116_i_div22_conv_q_4_q, clk => clock, aclr => resetn );

    -- vStagei_uid237_zCount_uid116_i_div22_conv(MUX,236)@24
    vStagei_uid237_zCount_uid116_i_div22_conv_s <= vCount_uid234_zCount_uid116_i_div22_conv_q;
    vStagei_uid237_zCount_uid116_i_div22_conv_combproc: PROCESS (vStagei_uid237_zCount_uid116_i_div22_conv_s, redist118_yPS_uid115_i_div22_conv_b_2_q, mO_uid235_zCount_uid116_i_div22_conv_q)
    BEGIN
        CASE (vStagei_uid237_zCount_uid116_i_div22_conv_s) IS
            WHEN "0" => vStagei_uid237_zCount_uid116_i_div22_conv_q <= redist118_yPS_uid115_i_div22_conv_b_2_q;
            WHEN "1" => vStagei_uid237_zCount_uid116_i_div22_conv_q <= mO_uid235_zCount_uid116_i_div22_conv_q;
            WHEN OTHERS => vStagei_uid237_zCount_uid116_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select(BITSELECT,813)@24
    rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_b <= vStagei_uid237_zCount_uid116_i_div22_conv_q(31 downto 16);
    rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_c <= vStagei_uid237_zCount_uid116_i_div22_conv_q(15 downto 0);

    -- vCount_uid240_zCount_uid116_i_div22_conv(LOGICAL,239)@24 + 1
    vCount_uid240_zCount_uid116_i_div22_conv_qi <= "1" WHEN rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_b = zs_uid238_zCount_uid116_i_div22_conv_q ELSE "0";
    vCount_uid240_zCount_uid116_i_div22_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid240_zCount_uid116_i_div22_conv_qi, xout => vCount_uid240_zCount_uid116_i_div22_conv_q, clk => clock, aclr => resetn );

    -- redist77_vCount_uid240_zCount_uid116_i_div22_conv_q_3(DELAY,904)
    redist77_vCount_uid240_zCount_uid116_i_div22_conv_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid240_zCount_uid116_i_div22_conv_q, xout => redist77_vCount_uid240_zCount_uid116_i_div22_conv_q_3_q, clk => clock, aclr => resetn );

    -- redist7_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_c_1(DELAY,834)
    redist7_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_c, xout => redist7_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist6_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_b_1(DELAY,833)
    redist6_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_b, xout => redist6_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid243_zCount_uid116_i_div22_conv(MUX,242)@25
    vStagei_uid243_zCount_uid116_i_div22_conv_s <= vCount_uid240_zCount_uid116_i_div22_conv_q;
    vStagei_uid243_zCount_uid116_i_div22_conv_combproc: PROCESS (vStagei_uid243_zCount_uid116_i_div22_conv_s, redist6_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_b_1_q, redist7_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid243_zCount_uid116_i_div22_conv_s) IS
            WHEN "0" => vStagei_uid243_zCount_uid116_i_div22_conv_q <= redist6_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid243_zCount_uid116_i_div22_conv_q <= redist7_rVStage_uid239_zCount_uid116_i_div22_conv_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid243_zCount_uid116_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select(BITSELECT,814)@25
    rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_b <= vStagei_uid243_zCount_uid116_i_div22_conv_q(15 downto 8);
    rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_c <= vStagei_uid243_zCount_uid116_i_div22_conv_q(7 downto 0);

    -- vCount_uid246_zCount_uid116_i_div22_conv(LOGICAL,245)@25 + 1
    vCount_uid246_zCount_uid116_i_div22_conv_qi <= "1" WHEN rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_b = zs_uid244_zCount_uid116_i_div22_conv_q ELSE "0";
    vCount_uid246_zCount_uid116_i_div22_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid246_zCount_uid116_i_div22_conv_qi, xout => vCount_uid246_zCount_uid116_i_div22_conv_q, clk => clock, aclr => resetn );

    -- redist76_vCount_uid246_zCount_uid116_i_div22_conv_q_2(DELAY,903)
    redist76_vCount_uid246_zCount_uid116_i_div22_conv_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid246_zCount_uid116_i_div22_conv_q, xout => redist76_vCount_uid246_zCount_uid116_i_div22_conv_q_2_q, clk => clock, aclr => resetn );

    -- redist5_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_c_1(DELAY,832)
    redist5_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_c, xout => redist5_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist4_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_b_1(DELAY,831)
    redist4_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_b, xout => redist4_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid249_zCount_uid116_i_div22_conv(MUX,248)@26
    vStagei_uid249_zCount_uid116_i_div22_conv_s <= vCount_uid246_zCount_uid116_i_div22_conv_q;
    vStagei_uid249_zCount_uid116_i_div22_conv_combproc: PROCESS (vStagei_uid249_zCount_uid116_i_div22_conv_s, redist4_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_b_1_q, redist5_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid249_zCount_uid116_i_div22_conv_s) IS
            WHEN "0" => vStagei_uid249_zCount_uid116_i_div22_conv_q <= redist4_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid249_zCount_uid116_i_div22_conv_q <= redist5_rVStage_uid245_zCount_uid116_i_div22_conv_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid249_zCount_uid116_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid251_zCount_uid116_i_div22_conv_merged_bit_select(BITSELECT,815)@26
    rVStage_uid251_zCount_uid116_i_div22_conv_merged_bit_select_b <= vStagei_uid249_zCount_uid116_i_div22_conv_q(7 downto 4);
    rVStage_uid251_zCount_uid116_i_div22_conv_merged_bit_select_c <= vStagei_uid249_zCount_uid116_i_div22_conv_q(3 downto 0);

    -- vCount_uid252_zCount_uid116_i_div22_conv(LOGICAL,251)@26
    vCount_uid252_zCount_uid116_i_div22_conv_q <= "1" WHEN rVStage_uid251_zCount_uid116_i_div22_conv_merged_bit_select_b = zs_uid250_zCount_uid116_i_div22_conv_q ELSE "0";

    -- redist75_vCount_uid252_zCount_uid116_i_div22_conv_q_1(DELAY,902)
    redist75_vCount_uid252_zCount_uid116_i_div22_conv_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid252_zCount_uid116_i_div22_conv_q, xout => redist75_vCount_uid252_zCount_uid116_i_div22_conv_q_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid255_zCount_uid116_i_div22_conv(MUX,254)@26 + 1
    vStagei_uid255_zCount_uid116_i_div22_conv_s <= vCount_uid252_zCount_uid116_i_div22_conv_q;
    vStagei_uid255_zCount_uid116_i_div22_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            vStagei_uid255_zCount_uid116_i_div22_conv_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (vStagei_uid255_zCount_uid116_i_div22_conv_s) IS
                WHEN "0" => vStagei_uid255_zCount_uid116_i_div22_conv_q <= rVStage_uid251_zCount_uid116_i_div22_conv_merged_bit_select_b;
                WHEN "1" => vStagei_uid255_zCount_uid116_i_div22_conv_q <= rVStage_uid251_zCount_uid116_i_div22_conv_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid255_zCount_uid116_i_div22_conv_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid257_zCount_uid116_i_div22_conv_merged_bit_select(BITSELECT,816)@27
    rVStage_uid257_zCount_uid116_i_div22_conv_merged_bit_select_b <= vStagei_uid255_zCount_uid116_i_div22_conv_q(3 downto 2);
    rVStage_uid257_zCount_uid116_i_div22_conv_merged_bit_select_c <= vStagei_uid255_zCount_uid116_i_div22_conv_q(1 downto 0);

    -- vCount_uid258_zCount_uid116_i_div22_conv(LOGICAL,257)@27
    vCount_uid258_zCount_uid116_i_div22_conv_q <= "1" WHEN rVStage_uid257_zCount_uid116_i_div22_conv_merged_bit_select_b = zs_uid256_zCount_uid116_i_div22_conv_q ELSE "0";

    -- vStagei_uid261_zCount_uid116_i_div22_conv(MUX,260)@27
    vStagei_uid261_zCount_uid116_i_div22_conv_s <= vCount_uid258_zCount_uid116_i_div22_conv_q;
    vStagei_uid261_zCount_uid116_i_div22_conv_combproc: PROCESS (vStagei_uid261_zCount_uid116_i_div22_conv_s, rVStage_uid257_zCount_uid116_i_div22_conv_merged_bit_select_b, rVStage_uid257_zCount_uid116_i_div22_conv_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid261_zCount_uid116_i_div22_conv_s) IS
            WHEN "0" => vStagei_uid261_zCount_uid116_i_div22_conv_q <= rVStage_uid257_zCount_uid116_i_div22_conv_merged_bit_select_b;
            WHEN "1" => vStagei_uid261_zCount_uid116_i_div22_conv_q <= rVStage_uid257_zCount_uid116_i_div22_conv_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid261_zCount_uid116_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid263_zCount_uid116_i_div22_conv(BITSELECT,262)@27
    rVStage_uid263_zCount_uid116_i_div22_conv_b <= vStagei_uid261_zCount_uid116_i_div22_conv_q(1 downto 1);

    -- vCount_uid264_zCount_uid116_i_div22_conv(LOGICAL,263)@27
    vCount_uid264_zCount_uid116_i_div22_conv_q <= "1" WHEN rVStage_uid263_zCount_uid116_i_div22_conv_b = GND_q ELSE "0";

    -- r_uid265_zCount_uid116_i_div22_conv(BITJOIN,264)@27
    r_uid265_zCount_uid116_i_div22_conv_q <= redist78_vCount_uid234_zCount_uid116_i_div22_conv_q_4_q & redist77_vCount_uid240_zCount_uid116_i_div22_conv_q_3_q & redist76_vCount_uid246_zCount_uid116_i_div22_conv_q_2_q & redist75_vCount_uid252_zCount_uid116_i_div22_conv_q_1_q & vCount_uid258_zCount_uid116_i_div22_conv_q & vCount_uid264_zCount_uid116_i_div22_conv_q;

    -- redist73_r_uid265_zCount_uid116_i_div22_conv_q_1(DELAY,900)
    redist73_r_uid265_zCount_uid116_i_div22_conv_q_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => r_uid265_zCount_uid116_i_div22_conv_q, xout => redist73_r_uid265_zCount_uid116_i_div22_conv_q_1_q, clk => clock, aclr => resetn );

    -- leftShiftStageSel5Dto4_uid561_normY_uid117_i_div22_conv_merged_bit_select(BITSELECT,817)@28
    leftShiftStageSel5Dto4_uid561_normY_uid117_i_div22_conv_merged_bit_select_b <= redist73_r_uid265_zCount_uid116_i_div22_conv_q_1_q(5 downto 4);
    leftShiftStageSel5Dto4_uid561_normY_uid117_i_div22_conv_merged_bit_select_c <= redist73_r_uid265_zCount_uid116_i_div22_conv_q_1_q(3 downto 2);
    leftShiftStageSel5Dto4_uid561_normY_uid117_i_div22_conv_merged_bit_select_d <= redist73_r_uid265_zCount_uid116_i_div22_conv_q_1_q(1 downto 0);

    -- leftShiftStage2_uid584_normY_uid117_i_div22_conv(MUX,583)@28
    leftShiftStage2_uid584_normY_uid117_i_div22_conv_s <= leftShiftStageSel5Dto4_uid561_normY_uid117_i_div22_conv_merged_bit_select_d;
    leftShiftStage2_uid584_normY_uid117_i_div22_conv_combproc: PROCESS (leftShiftStage2_uid584_normY_uid117_i_div22_conv_s, leftShiftStage1_uid573_normY_uid117_i_div22_conv_q, leftShiftStage2Idx1_uid576_normY_uid117_i_div22_conv_q, leftShiftStage2Idx2_uid579_normY_uid117_i_div22_conv_q, leftShiftStage2Idx3_uid582_normY_uid117_i_div22_conv_q)
    BEGIN
        CASE (leftShiftStage2_uid584_normY_uid117_i_div22_conv_s) IS
            WHEN "00" => leftShiftStage2_uid584_normY_uid117_i_div22_conv_q <= leftShiftStage1_uid573_normY_uid117_i_div22_conv_q;
            WHEN "01" => leftShiftStage2_uid584_normY_uid117_i_div22_conv_q <= leftShiftStage2Idx1_uid576_normY_uid117_i_div22_conv_q;
            WHEN "10" => leftShiftStage2_uid584_normY_uid117_i_div22_conv_q <= leftShiftStage2Idx2_uid579_normY_uid117_i_div22_conv_q;
            WHEN "11" => leftShiftStage2_uid584_normY_uid117_i_div22_conv_q <= leftShiftStage2Idx3_uid582_normY_uid117_i_div22_conv_q;
            WHEN OTHERS => leftShiftStage2_uid584_normY_uid117_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- normYNoLeadOne_uid118_i_div22_conv(BITSELECT,117)@28
    normYNoLeadOne_uid118_i_div22_conv_in <= leftShiftStage2_uid584_normY_uid117_i_div22_conv_q(30 downto 0);
    normYNoLeadOne_uid118_i_div22_conv_b <= normYNoLeadOne_uid118_i_div22_conv_in(30 downto 0);

    -- yAddr_uid126_i_div22_conv_merged_bit_select(BITSELECT,809)@28
    yAddr_uid126_i_div22_conv_merged_bit_select_b <= normYNoLeadOne_uid118_i_div22_conv_b(30 downto 23);
    yAddr_uid126_i_div22_conv_merged_bit_select_c <= normYNoLeadOne_uid118_i_div22_conv_b(22 downto 0);

    -- redist19_yAddr_uid126_i_div22_conv_merged_bit_select_c_2(DELAY,846)
    redist19_yAddr_uid126_i_div22_conv_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yAddr_uid126_i_div22_conv_merged_bit_select_c, xout => redist19_yAddr_uid126_i_div22_conv_merged_bit_select_c_2_q, clk => clock, aclr => resetn );

    -- redist20_yAddr_uid126_i_div22_conv_merged_bit_select_c_5(DELAY,847)
    redist20_yAddr_uid126_i_div22_conv_merged_bit_select_c_5 : dspba_delay
    GENERIC MAP ( width => 23, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist19_yAddr_uid126_i_div22_conv_merged_bit_select_c_2_q, xout => redist20_yAddr_uid126_i_div22_conv_merged_bit_select_c_5_q, clk => clock, aclr => resetn );

    -- redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_wraddr(REG,1026)
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_wraddr_q <= STD_LOGIC_VECTOR(redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem(DUALMEM,1024)
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_ia <= STD_LOGIC_VECTOR(redist20_yAddr_uid126_i_div22_conv_merged_bit_select_c_5_q);
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_aa <= redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_wraddr_q;
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_ab <= redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_rdcnt_q;
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_reset0 <= not (resetn);
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 23,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 23,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_reset0,
        clock1 => clock,
        address_a => redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_aa,
        data_a => redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_ab,
        q_b => redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_iq
    );
    redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_q <= redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_iq(22 downto 0);

    -- nx_mergedSignalTM_uid390_pT3_uid296_invPolyEval(BITJOIN,389)@37
    nx_mergedSignalTM_uid390_pT3_uid296_invPolyEval_q <= GND_q & redist21_yAddr_uid126_i_div22_conv_merged_bit_select_c_9_mem_q;

    -- topRangeX_uid392_pT3_uid296_invPolyEval_merged_bit_select(BITSELECT,825)@37
    topRangeX_uid392_pT3_uid296_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid390_pT3_uid296_invPolyEval_q(23 downto 6));
    topRangeX_uid392_pT3_uid296_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid390_pT3_uid296_invPolyEval_q(5 downto 0));

    -- aboveLeftY_mergedSignalTM_uid397_pT3_uid296_invPolyEval(BITJOIN,396)@37
    aboveLeftY_mergedSignalTM_uid397_pT3_uid296_invPolyEval_q <= topRangeY_uid393_pT3_uid296_invPolyEval_merged_bit_select_c & aboveLeftY_bottomExtension_uid395_pT3_uid296_invPolyEval_q;

    -- memoryC3_uid276_invTabGen_lutmem(DUALMEM,760)@28 + 2
    -- in j@20000000
    memoryC3_uid276_invTabGen_lutmem_aa <= yAddr_uid126_i_div22_conv_merged_bit_select_b;
    memoryC3_uid276_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC3_uid276_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 14,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body_conv_c0_enter103A3ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid276_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid276_invTabGen_lutmem_aa,
        q_a => memoryC3_uid276_invTabGen_lutmem_ir
    );
    memoryC3_uid276_invTabGen_lutmem_r <= memoryC3_uid276_invTabGen_lutmem_ir(13 downto 0);

    -- yT1_uid283_invPolyEval(BITSELECT,282)@30
    yT1_uid283_invPolyEval_b <= redist19_yAddr_uid126_i_div22_conv_merged_bit_select_c_2_q(22 downto 9);

    -- prodXY_uid372_pT1_uid284_invPolyEval_cma(CHAINMULTADD,773)@30 + 2
    prodXY_uid372_pT1_uid284_invPolyEval_cma_reset <= not (resetn);
    prodXY_uid372_pT1_uid284_invPolyEval_cma_ena0 <= '1';
    prodXY_uid372_pT1_uid284_invPolyEval_cma_ena1 <= prodXY_uid372_pT1_uid284_invPolyEval_cma_ena0;
    prodXY_uid372_pT1_uid284_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid372_pT1_uid284_invPolyEval_cma_a0(0),15));
    prodXY_uid372_pT1_uid284_invPolyEval_cma_p(0) <= prodXY_uid372_pT1_uid284_invPolyEval_cma_l(0) * prodXY_uid372_pT1_uid284_invPolyEval_cma_c0(0);
    prodXY_uid372_pT1_uid284_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid372_pT1_uid284_invPolyEval_cma_p(0),29);
    prodXY_uid372_pT1_uid284_invPolyEval_cma_w(0) <= prodXY_uid372_pT1_uid284_invPolyEval_cma_u(0);
    prodXY_uid372_pT1_uid284_invPolyEval_cma_x(0) <= prodXY_uid372_pT1_uid284_invPolyEval_cma_w(0);
    prodXY_uid372_pT1_uid284_invPolyEval_cma_y(0) <= prodXY_uid372_pT1_uid284_invPolyEval_cma_x(0);
    prodXY_uid372_pT1_uid284_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid372_pT1_uid284_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid372_pT1_uid284_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid372_pT1_uid284_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid372_pT1_uid284_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid283_invPolyEval_b),14);
                prodXY_uid372_pT1_uid284_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC3_uid276_invTabGen_lutmem_r),14);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid372_pT1_uid284_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid372_pT1_uid284_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid372_pT1_uid284_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid372_pT1_uid284_invPolyEval_cma_s(0) <= prodXY_uid372_pT1_uid284_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid372_pT1_uid284_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid372_pT1_uid284_invPolyEval_cma_s(0)(27 downto 0)), xout => prodXY_uid372_pT1_uid284_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    prodXY_uid372_pT1_uid284_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid372_pT1_uid284_invPolyEval_cma_qq(27 downto 0));

    -- osig_uid373_pT1_uid284_invPolyEval(BITSELECT,372)@32
    osig_uid373_pT1_uid284_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid372_pT1_uid284_invPolyEval_cma_q(27 downto 14));

    -- highBBits_uid286_invPolyEval(BITSELECT,285)@32
    highBBits_uid286_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid373_pT1_uid284_invPolyEval_b(13 downto 1));

    -- redist16_yAddr_uid126_i_div22_conv_merged_bit_select_b_2(DELAY,843)
    redist16_yAddr_uid126_i_div22_conv_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yAddr_uid126_i_div22_conv_merged_bit_select_b, xout => redist16_yAddr_uid126_i_div22_conv_merged_bit_select_b_2_q, clk => clock, aclr => resetn );

    -- memoryC2_uid273_invTabGen_lutmem(DUALMEM,759)@30 + 2
    -- in j@20000000
    memoryC2_uid273_invTabGen_lutmem_aa <= redist16_yAddr_uid126_i_div22_conv_merged_bit_select_b_2_q;
    memoryC2_uid273_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC2_uid273_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 21,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body_conv_c0_enter103A2ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid273_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid273_invTabGen_lutmem_aa,
        q_a => memoryC2_uid273_invTabGen_lutmem_ir
    );
    memoryC2_uid273_invTabGen_lutmem_r <= memoryC2_uid273_invTabGen_lutmem_ir(20 downto 0);

    -- s1sumAHighB_uid287_invPolyEval(ADD,286)@32 + 1
    s1sumAHighB_uid287_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => memoryC2_uid273_invTabGen_lutmem_r(20)) & memoryC2_uid273_invTabGen_lutmem_r));
    s1sumAHighB_uid287_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 13 => highBBits_uid286_invPolyEval_b(12)) & highBBits_uid286_invPolyEval_b));
    s1sumAHighB_uid287_invPolyEval_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            s1sumAHighB_uid287_invPolyEval_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            s1sumAHighB_uid287_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid287_invPolyEval_a) + SIGNED(s1sumAHighB_uid287_invPolyEval_b));
        END IF;
    END PROCESS;
    s1sumAHighB_uid287_invPolyEval_q <= s1sumAHighB_uid287_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid285_invPolyEval(BITSELECT,284)@32
    lowRangeB_uid285_invPolyEval_in <= osig_uid373_pT1_uid284_invPolyEval_b(0 downto 0);
    lowRangeB_uid285_invPolyEval_b <= lowRangeB_uid285_invPolyEval_in(0 downto 0);

    -- redist72_lowRangeB_uid285_invPolyEval_b_1(DELAY,899)
    redist72_lowRangeB_uid285_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => lowRangeB_uid285_invPolyEval_b, xout => redist72_lowRangeB_uid285_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- s1_uid288_invPolyEval(BITJOIN,287)@33
    s1_uid288_invPolyEval_q <= s1sumAHighB_uid287_invPolyEval_q & redist72_lowRangeB_uid285_invPolyEval_b_1_q;

    -- yT2_uid289_invPolyEval(BITSELECT,288)@33
    yT2_uid289_invPolyEval_b <= redist20_yAddr_uid126_i_div22_conv_merged_bit_select_c_5_q(22 downto 2);

    -- prodXY_uid375_pT2_uid290_invPolyEval_cma(CHAINMULTADD,774)@33 + 2
    prodXY_uid375_pT2_uid290_invPolyEval_cma_reset <= not (resetn);
    prodXY_uid375_pT2_uid290_invPolyEval_cma_ena0 <= '1';
    prodXY_uid375_pT2_uid290_invPolyEval_cma_ena1 <= prodXY_uid375_pT2_uid290_invPolyEval_cma_ena0;
    prodXY_uid375_pT2_uid290_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid375_pT2_uid290_invPolyEval_cma_a0(0),22));
    prodXY_uid375_pT2_uid290_invPolyEval_cma_p(0) <= prodXY_uid375_pT2_uid290_invPolyEval_cma_l(0) * prodXY_uid375_pT2_uid290_invPolyEval_cma_c0(0);
    prodXY_uid375_pT2_uid290_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid375_pT2_uid290_invPolyEval_cma_p(0),45);
    prodXY_uid375_pT2_uid290_invPolyEval_cma_w(0) <= prodXY_uid375_pT2_uid290_invPolyEval_cma_u(0);
    prodXY_uid375_pT2_uid290_invPolyEval_cma_x(0) <= prodXY_uid375_pT2_uid290_invPolyEval_cma_w(0);
    prodXY_uid375_pT2_uid290_invPolyEval_cma_y(0) <= prodXY_uid375_pT2_uid290_invPolyEval_cma_x(0);
    prodXY_uid375_pT2_uid290_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid375_pT2_uid290_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid375_pT2_uid290_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid375_pT2_uid290_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid375_pT2_uid290_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT2_uid289_invPolyEval_b),21);
                prodXY_uid375_pT2_uid290_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid288_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid375_pT2_uid290_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid375_pT2_uid290_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid375_pT2_uid290_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid375_pT2_uid290_invPolyEval_cma_s(0) <= prodXY_uid375_pT2_uid290_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid375_pT2_uid290_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 44, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid375_pT2_uid290_invPolyEval_cma_s(0)(43 downto 0)), xout => prodXY_uid375_pT2_uid290_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    prodXY_uid375_pT2_uid290_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid375_pT2_uid290_invPolyEval_cma_qq(43 downto 0));

    -- osig_uid376_pT2_uid290_invPolyEval(BITSELECT,375)@35
    osig_uid376_pT2_uid290_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid375_pT2_uid290_invPolyEval_cma_q(43 downto 21));

    -- redist61_osig_uid376_pT2_uid290_invPolyEval_b_1(DELAY,888)
    redist61_osig_uid376_pT2_uid290_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => osig_uid376_pT2_uid290_invPolyEval_b, xout => redist61_osig_uid376_pT2_uid290_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid292_invPolyEval(BITSELECT,291)@36
    highBBits_uid292_invPolyEval_b <= STD_LOGIC_VECTOR(redist61_osig_uid376_pT2_uid290_invPolyEval_b_1_q(22 downto 1));

    -- redist17_yAddr_uid126_i_div22_conv_merged_bit_select_b_5(DELAY,844)
    redist17_yAddr_uid126_i_div22_conv_merged_bit_select_b_5 : dspba_delay
    GENERIC MAP ( width => 8, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_yAddr_uid126_i_div22_conv_merged_bit_select_b_2_q, xout => redist17_yAddr_uid126_i_div22_conv_merged_bit_select_b_5_q, clk => clock, aclr => resetn );

    -- memoryC1_uid270_invTabGen_lutmem(DUALMEM,758)@33 + 2
    -- in j@20000000
    memoryC1_uid270_invTabGen_lutmem_aa <= redist17_yAddr_uid126_i_div22_conv_merged_bit_select_b_5_q;
    memoryC1_uid270_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC1_uid270_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 29,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body_conv_c0_enter103A1ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid270_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid270_invTabGen_lutmem_aa,
        q_a => memoryC1_uid270_invTabGen_lutmem_ir
    );
    memoryC1_uid270_invTabGen_lutmem_r <= memoryC1_uid270_invTabGen_lutmem_ir(28 downto 0);

    -- redist52_memoryC1_uid270_invTabGen_lutmem_r_1(DELAY,879)
    redist52_memoryC1_uid270_invTabGen_lutmem_r_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => memoryC1_uid270_invTabGen_lutmem_r, xout => redist52_memoryC1_uid270_invTabGen_lutmem_r_1_q, clk => clock, aclr => resetn );

    -- s2sumAHighB_uid293_invPolyEval(ADD,292)@36 + 1
    s2sumAHighB_uid293_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => redist52_memoryC1_uid270_invTabGen_lutmem_r_1_q(28)) & redist52_memoryC1_uid270_invTabGen_lutmem_r_1_q));
    s2sumAHighB_uid293_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => highBBits_uid292_invPolyEval_b(21)) & highBBits_uid292_invPolyEval_b));
    s2sumAHighB_uid293_invPolyEval_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            s2sumAHighB_uid293_invPolyEval_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            s2sumAHighB_uid293_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid293_invPolyEval_a) + SIGNED(s2sumAHighB_uid293_invPolyEval_b));
        END IF;
    END PROCESS;
    s2sumAHighB_uid293_invPolyEval_q <= s2sumAHighB_uid293_invPolyEval_o(29 downto 0);

    -- lowRangeB_uid291_invPolyEval(BITSELECT,290)@36
    lowRangeB_uid291_invPolyEval_in <= redist61_osig_uid376_pT2_uid290_invPolyEval_b_1_q(0 downto 0);
    lowRangeB_uid291_invPolyEval_b <= lowRangeB_uid291_invPolyEval_in(0 downto 0);

    -- redist71_lowRangeB_uid291_invPolyEval_b_1(DELAY,898)
    redist71_lowRangeB_uid291_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => lowRangeB_uid291_invPolyEval_b, xout => redist71_lowRangeB_uid291_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- s2_uid294_invPolyEval(BITJOIN,293)@37
    s2_uid294_invPolyEval_q <= s2sumAHighB_uid293_invPolyEval_q & redist71_lowRangeB_uid291_invPolyEval_b_1_q;

    -- topRangeY_uid393_pT3_uid296_invPolyEval_merged_bit_select(BITSELECT,818)@37
    topRangeY_uid393_pT3_uid296_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(s2_uid294_invPolyEval_q(30 downto 13));
    topRangeY_uid393_pT3_uid296_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(s2_uid294_invPolyEval_q(12 downto 0));

    -- rightBottomX_mergedSignalTM_uid401_pT3_uid296_invPolyEval(BITJOIN,400)@37
    rightBottomX_mergedSignalTM_uid401_pT3_uid296_invPolyEval_q <= topRangeX_uid392_pT3_uid296_invPolyEval_merged_bit_select_c & rightBottomX_bottomExtension_uid399_pT3_uid296_invPolyEval_q;

    -- multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma(CHAINMULTADD,795)@37 + 2
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_reset <= not (resetn);
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ena0 <= '1';
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ena1 <= multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ena0;
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_l(0) <= SIGNED(RESIZE(multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_a0(0),19));
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_l(1) <= SIGNED(RESIZE(multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_a0(1),19));
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_p(0) <= multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_l(0) * multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_c0(0);
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_p(1) <= multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_l(1) * multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_c0(1);
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_u(0) <= RESIZE(multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_p(0),38);
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_u(1) <= RESIZE(multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_p(1),38);
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_w(0) <= multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_u(0) + multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_u(1);
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_x(0) <= multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_w(0);
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_y(0) <= multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_x(0);
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_a0 <= (others => (others => '0'));
            multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ena0 = '1') THEN
                multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(rightBottomX_mergedSignalTM_uid401_pT3_uid296_invPolyEval_q),18);
                multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_a0(1) <= RESIZE(UNSIGNED(aboveLeftY_mergedSignalTM_uid397_pT3_uid296_invPolyEval_q),18);
                multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid393_pT3_uid296_invPolyEval_merged_bit_select_b),18);
                multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_c0(1) <= RESIZE(SIGNED(topRangeX_uid392_pT3_uid296_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_ena1 = '1') THEN
                multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_s(0) <= multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 37, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_s(0)(36 downto 0)), xout => multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_q <= STD_LOGIC_VECTOR(multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_qq(36 downto 0));

    -- redist31_multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_q_1(DELAY,858)
    redist31_multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_q, xout => redist31_multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_q_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid408_pT3_uid296_invPolyEval(BITSELECT,407)@40
    highBBits_uid408_pT3_uid296_invPolyEval_b <= STD_LOGIC_VECTOR(redist31_multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_q_1_q(36 downto 18));

    -- sm0_uid404_pT3_uid296_invPolyEval_cma(CHAINMULTADD,775)@37 + 2
    sm0_uid404_pT3_uid296_invPolyEval_cma_reset <= not (resetn);
    sm0_uid404_pT3_uid296_invPolyEval_cma_ena0 <= '1';
    sm0_uid404_pT3_uid296_invPolyEval_cma_ena1 <= sm0_uid404_pT3_uid296_invPolyEval_cma_ena0;
    sm0_uid404_pT3_uid296_invPolyEval_cma_p(0) <= sm0_uid404_pT3_uid296_invPolyEval_cma_a0(0) * sm0_uid404_pT3_uid296_invPolyEval_cma_c0(0);
    sm0_uid404_pT3_uid296_invPolyEval_cma_u(0) <= RESIZE(sm0_uid404_pT3_uid296_invPolyEval_cma_p(0),36);
    sm0_uid404_pT3_uid296_invPolyEval_cma_w(0) <= sm0_uid404_pT3_uid296_invPolyEval_cma_u(0);
    sm0_uid404_pT3_uid296_invPolyEval_cma_x(0) <= sm0_uid404_pT3_uid296_invPolyEval_cma_w(0);
    sm0_uid404_pT3_uid296_invPolyEval_cma_y(0) <= sm0_uid404_pT3_uid296_invPolyEval_cma_x(0);
    sm0_uid404_pT3_uid296_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            sm0_uid404_pT3_uid296_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid404_pT3_uid296_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (sm0_uid404_pT3_uid296_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid404_pT3_uid296_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_uid392_pT3_uid296_invPolyEval_merged_bit_select_b),18);
                sm0_uid404_pT3_uid296_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid393_pT3_uid296_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid404_pT3_uid296_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            sm0_uid404_pT3_uid296_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (sm0_uid404_pT3_uid296_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid404_pT3_uid296_invPolyEval_cma_s(0) <= sm0_uid404_pT3_uid296_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid404_pT3_uid296_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid404_pT3_uid296_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid404_pT3_uid296_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    sm0_uid404_pT3_uid296_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid404_pT3_uid296_invPolyEval_cma_qq(35 downto 0));

    -- redist49_sm0_uid404_pT3_uid296_invPolyEval_cma_q_1(DELAY,876)
    redist49_sm0_uid404_pT3_uid296_invPolyEval_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => sm0_uid404_pT3_uid296_invPolyEval_cma_q, xout => redist49_sm0_uid404_pT3_uid296_invPolyEval_cma_q_1_q, clk => clock, aclr => resetn );

    -- lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval(ADD,408)@40
    lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 36 => redist49_sm0_uid404_pT3_uid296_invPolyEval_cma_q_1_q(35)) & redist49_sm0_uid404_pT3_uid296_invPolyEval_cma_q_1_q));
    lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 19 => highBBits_uid408_pT3_uid296_invPolyEval_b(18)) & highBBits_uid408_pT3_uid296_invPolyEval_b));
    lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_b));
    lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_q <= lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_o(36 downto 0);

    -- lowRangeB_uid407_pT3_uid296_invPolyEval(BITSELECT,406)@40
    lowRangeB_uid407_pT3_uid296_invPolyEval_in <= redist31_multSumOfTwoTS_uid405_pT3_uid296_invPolyEval_cma_q_1_q(17 downto 0);
    lowRangeB_uid407_pT3_uid296_invPolyEval_b <= lowRangeB_uid407_pT3_uid296_invPolyEval_in(17 downto 0);

    -- lev1_a0_uid410_pT3_uid296_invPolyEval(BITJOIN,409)@40
    lev1_a0_uid410_pT3_uid296_invPolyEval_q <= lev1_a0sumAHighB_uid409_pT3_uid296_invPolyEval_q & lowRangeB_uid407_pT3_uid296_invPolyEval_b;

    -- os_uid411_pT3_uid296_invPolyEval(BITSELECT,410)@40
    os_uid411_pT3_uid296_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid410_pT3_uid296_invPolyEval_q(52 downto 0));
    os_uid411_pT3_uid296_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid411_pT3_uid296_invPolyEval_in(52 downto 21));

    -- redist60_os_uid411_pT3_uid296_invPolyEval_b_1(DELAY,887)
    redist60_os_uid411_pT3_uid296_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => os_uid411_pT3_uid296_invPolyEval_b, xout => redist60_os_uid411_pT3_uid296_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid298_invPolyEval(BITSELECT,297)@41
    highBBits_uid298_invPolyEval_b <= STD_LOGIC_VECTOR(redist60_os_uid411_pT3_uid296_invPolyEval_b_1_q(31 downto 2));

    -- redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_notEnable(LOGICAL,1020)
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_nor(LOGICAL,1021)
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_nor_q <= not (redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_notEnable_q or redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_sticky_ena_q);

    -- redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_last(CONSTANT,1017)
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_last_q <= "010";

    -- redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmp(LOGICAL,1018)
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmp_b <= STD_LOGIC_VECTOR("0" & redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_q);
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmp_q <= "1" WHEN redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_last_q = redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmp_b ELSE "0";

    -- redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmpReg(REG,1019)
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmpReg_q <= STD_LOGIC_VECTOR(redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmp_q);
        END IF;
    END PROCESS;

    -- redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_sticky_ena(REG,1022)
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_nor_q = "1") THEN
                redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_sticky_ena_q <= STD_LOGIC_VECTOR(redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_enaAnd(LOGICAL,1023)
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_enaAnd_q <= redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_sticky_ena_q and VCC_q;

    -- redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt(COUNTER,1015)
    -- low=0, high=3, step=1, init=0
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_i <= redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_i, 2)));

    -- redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_wraddr(REG,1016)
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_wraddr_q <= STD_LOGIC_VECTOR(redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem(DUALMEM,1014)
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_ia <= STD_LOGIC_VECTOR(redist17_yAddr_uid126_i_div22_conv_merged_bit_select_b_5_q);
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_aa <= redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_wraddr_q;
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_ab <= redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_rdcnt_q;
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_reset0 <= not (resetn);
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 8,
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
        clocken1 => redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_reset0,
        clock1 => clock,
        address_a => redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_aa,
        data_a => redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_ab,
        q_b => redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_iq
    );
    redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_q <= redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_iq(7 downto 0);

    -- memoryC0_uid267_invTabGen_lutmem(DUALMEM,757)@38 + 2
    -- in j@20000000
    memoryC0_uid267_invTabGen_lutmem_aa <= redist18_yAddr_uid126_i_div22_conv_merged_bit_select_b_10_mem_q;
    memoryC0_uid267_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC0_uid267_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 38,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body_conv_c0_enter103A0ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid267_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid267_invTabGen_lutmem_aa,
        q_a => memoryC0_uid267_invTabGen_lutmem_ir
    );
    memoryC0_uid267_invTabGen_lutmem_r <= memoryC0_uid267_invTabGen_lutmem_ir(37 downto 0);

    -- redist53_memoryC0_uid267_invTabGen_lutmem_r_1(DELAY,880)
    redist53_memoryC0_uid267_invTabGen_lutmem_r_1 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => memoryC0_uid267_invTabGen_lutmem_r, xout => redist53_memoryC0_uid267_invTabGen_lutmem_r_1_q, clk => clock, aclr => resetn );

    -- s3sumAHighB_uid299_invPolyEval(ADD,298)@41
    s3sumAHighB_uid299_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 38 => redist53_memoryC0_uid267_invTabGen_lutmem_r_1_q(37)) & redist53_memoryC0_uid267_invTabGen_lutmem_r_1_q));
    s3sumAHighB_uid299_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 30 => highBBits_uid298_invPolyEval_b(29)) & highBBits_uid298_invPolyEval_b));
    s3sumAHighB_uid299_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s3sumAHighB_uid299_invPolyEval_a) + SIGNED(s3sumAHighB_uid299_invPolyEval_b));
    s3sumAHighB_uid299_invPolyEval_q <= s3sumAHighB_uid299_invPolyEval_o(38 downto 0);

    -- lowRangeB_uid297_invPolyEval(BITSELECT,296)@41
    lowRangeB_uid297_invPolyEval_in <= redist60_os_uid411_pT3_uid296_invPolyEval_b_1_q(1 downto 0);
    lowRangeB_uid297_invPolyEval_b <= lowRangeB_uid297_invPolyEval_in(1 downto 0);

    -- s3_uid300_invPolyEval(BITJOIN,299)@41
    s3_uid300_invPolyEval_q <= s3sumAHighB_uid299_invPolyEval_q & lowRangeB_uid297_invPolyEval_b;

    -- fxpInverseRes_uid129_i_div22_conv(BITSELECT,128)@41
    fxpInverseRes_uid129_i_div22_conv_in <= s3_uid300_invPolyEval_q(38 downto 0);
    fxpInverseRes_uid129_i_div22_conv_b <= fxpInverseRes_uid129_i_div22_conv_in(38 downto 6);

    -- redist112_fxpInverseRes_uid129_i_div22_conv_b_1(DELAY,939)
    redist112_fxpInverseRes_uid129_i_div22_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fxpInverseRes_uid129_i_div22_conv_b, xout => redist112_fxpInverseRes_uid129_i_div22_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist115_updatedY_uid120_i_div22_conv_q_9_notEnable(LOGICAL,1111)
    redist115_updatedY_uid120_i_div22_conv_q_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist115_updatedY_uid120_i_div22_conv_q_9_nor(LOGICAL,1112)
    redist115_updatedY_uid120_i_div22_conv_q_9_nor_q <= not (redist115_updatedY_uid120_i_div22_conv_q_9_notEnable_q or redist115_updatedY_uid120_i_div22_conv_q_9_sticky_ena_q);

    -- redist115_updatedY_uid120_i_div22_conv_q_9_mem_last(CONSTANT,1108)
    redist115_updatedY_uid120_i_div22_conv_q_9_mem_last_q <= "0101";

    -- redist115_updatedY_uid120_i_div22_conv_q_9_cmp(LOGICAL,1109)
    redist115_updatedY_uid120_i_div22_conv_q_9_cmp_b <= STD_LOGIC_VECTOR("0" & redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_q);
    redist115_updatedY_uid120_i_div22_conv_q_9_cmp_q <= "1" WHEN redist115_updatedY_uid120_i_div22_conv_q_9_mem_last_q = redist115_updatedY_uid120_i_div22_conv_q_9_cmp_b ELSE "0";

    -- redist115_updatedY_uid120_i_div22_conv_q_9_cmpReg(REG,1110)
    redist115_updatedY_uid120_i_div22_conv_q_9_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist115_updatedY_uid120_i_div22_conv_q_9_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist115_updatedY_uid120_i_div22_conv_q_9_cmpReg_q <= STD_LOGIC_VECTOR(redist115_updatedY_uid120_i_div22_conv_q_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist115_updatedY_uid120_i_div22_conv_q_9_sticky_ena(REG,1113)
    redist115_updatedY_uid120_i_div22_conv_q_9_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist115_updatedY_uid120_i_div22_conv_q_9_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist115_updatedY_uid120_i_div22_conv_q_9_nor_q = "1") THEN
                redist115_updatedY_uid120_i_div22_conv_q_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist115_updatedY_uid120_i_div22_conv_q_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist115_updatedY_uid120_i_div22_conv_q_9_enaAnd(LOGICAL,1114)
    redist115_updatedY_uid120_i_div22_conv_q_9_enaAnd_q <= redist115_updatedY_uid120_i_div22_conv_q_9_sticky_ena_q and VCC_q;

    -- redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt(COUNTER,1106)
    -- low=0, high=6, step=1, init=0
    redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_eq <= '1';
            ELSE
                redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_eq <= '0';
            END IF;
            IF (redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_eq = '1') THEN
                redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_i <= redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_i + 2;
            ELSE
                redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_i <= redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_i, 3)));

    -- redist115_updatedY_uid120_i_div22_conv_q_9_wraddr(REG,1107)
    redist115_updatedY_uid120_i_div22_conv_q_9_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist115_updatedY_uid120_i_div22_conv_q_9_wraddr_q <= "110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist115_updatedY_uid120_i_div22_conv_q_9_wraddr_q <= STD_LOGIC_VECTOR(redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist115_updatedY_uid120_i_div22_conv_q_9_mem(DUALMEM,1105)
    redist115_updatedY_uid120_i_div22_conv_q_9_mem_ia <= STD_LOGIC_VECTOR(updatedY_uid120_i_div22_conv_q);
    redist115_updatedY_uid120_i_div22_conv_q_9_mem_aa <= redist115_updatedY_uid120_i_div22_conv_q_9_wraddr_q;
    redist115_updatedY_uid120_i_div22_conv_q_9_mem_ab <= redist115_updatedY_uid120_i_div22_conv_q_9_rdcnt_q;
    redist115_updatedY_uid120_i_div22_conv_q_9_mem_reset0 <= not (resetn);
    redist115_updatedY_uid120_i_div22_conv_q_9_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 7,
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
        clocken1 => redist115_updatedY_uid120_i_div22_conv_q_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist115_updatedY_uid120_i_div22_conv_q_9_mem_reset0,
        clock1 => clock,
        address_a => redist115_updatedY_uid120_i_div22_conv_q_9_mem_aa,
        data_a => redist115_updatedY_uid120_i_div22_conv_q_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist115_updatedY_uid120_i_div22_conv_q_9_mem_ab,
        q_b => redist115_updatedY_uid120_i_div22_conv_q_9_mem_iq
    );
    redist115_updatedY_uid120_i_div22_conv_q_9_mem_q <= redist115_updatedY_uid120_i_div22_conv_q_9_mem_iq(31 downto 0);

    -- redist115_updatedY_uid120_i_div22_conv_q_9_outputreg(DELAY,1104)
    redist115_updatedY_uid120_i_div22_conv_q_9_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist115_updatedY_uid120_i_div22_conv_q_9_mem_q, xout => redist115_updatedY_uid120_i_div22_conv_q_9_outputreg_q, clk => clock, aclr => resetn );

    -- redist116_normYNoLeadOne_uid118_i_div22_conv_b_1(DELAY,943)
    redist116_normYNoLeadOne_uid118_i_div22_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 31, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYNoLeadOne_uid118_i_div22_conv_b, xout => redist116_normYNoLeadOne_uid118_i_div22_conv_b_1_q, clk => clock, aclr => resetn );

    -- normYIsOneC2_uid119_i_div22_conv(LOGICAL,120)@29 + 1
    normYIsOneC2_uid119_i_div22_conv_a <= STD_LOGIC_VECTOR("0" & redist116_normYNoLeadOne_uid118_i_div22_conv_b_1_q);
    normYIsOneC2_uid119_i_div22_conv_qi <= "1" WHEN normYIsOneC2_uid119_i_div22_conv_a = redist115_updatedY_uid120_i_div22_conv_q_9_outputreg_q ELSE "0";
    normYIsOneC2_uid119_i_div22_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOneC2_uid119_i_div22_conv_qi, xout => normYIsOneC2_uid119_i_div22_conv_q, clk => clock, aclr => resetn );

    -- normYIsOneC2_uid122_i_div22_conv(BITSELECT,121)@28
    normYIsOneC2_uid122_i_div22_conv_b <= STD_LOGIC_VECTOR(leftShiftStage2_uid584_normY_uid117_i_div22_conv_q(31 downto 31));

    -- redist114_normYIsOneC2_uid122_i_div22_conv_b_2(DELAY,941)
    redist114_normYIsOneC2_uid122_i_div22_conv_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOneC2_uid122_i_div22_conv_b, xout => redist114_normYIsOneC2_uid122_i_div22_conv_b_2_q, clk => clock, aclr => resetn );

    -- normYIsOne_uid123_i_div22_conv(LOGICAL,122)@30 + 1
    normYIsOne_uid123_i_div22_conv_qi <= redist114_normYIsOneC2_uid122_i_div22_conv_b_2_q and normYIsOneC2_uid119_i_div22_conv_q;
    normYIsOne_uid123_i_div22_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOne_uid123_i_div22_conv_qi, xout => normYIsOne_uid123_i_div22_conv_q, clk => clock, aclr => resetn );

    -- redist113_normYIsOne_uid123_i_div22_conv_q_12(DELAY,940)
    redist113_normYIsOne_uid123_i_div22_conv_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 11, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOne_uid123_i_div22_conv_q, xout => redist113_normYIsOne_uid123_i_div22_conv_q_12_q, clk => clock, aclr => resetn );

    -- invResPostOneHandling2_uid131_i_div22_conv(MUX,130)@42
    invResPostOneHandling2_uid131_i_div22_conv_s <= redist113_normYIsOne_uid123_i_div22_conv_q_12_q;
    invResPostOneHandling2_uid131_i_div22_conv_combproc: PROCESS (invResPostOneHandling2_uid131_i_div22_conv_s, redist112_fxpInverseRes_uid129_i_div22_conv_b_1_q, oneInvRes_uid130_i_div22_conv_q)
    BEGIN
        CASE (invResPostOneHandling2_uid131_i_div22_conv_s) IS
            WHEN "0" => invResPostOneHandling2_uid131_i_div22_conv_q <= redist112_fxpInverseRes_uid129_i_div22_conv_b_1_q;
            WHEN "1" => invResPostOneHandling2_uid131_i_div22_conv_q <= oneInvRes_uid130_i_div22_conv_q;
            WHEN OTHERS => invResPostOneHandling2_uid131_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodXInvY_uid139_i_div22_conv_bs6(BITSELECT,591)@42
    prodXInvY_uid139_i_div22_conv_bs6_b <= invResPostOneHandling2_uid131_i_div22_conv_q(32 downto 18);

    -- redist110_xPSXE_uid137_i_div22_conv_q_2(DELAY,937)
    redist110_xPSXE_uid137_i_div22_conv_q_2 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xPSXE_uid137_i_div22_conv_q, xout => redist110_xPSXE_uid137_i_div22_conv_q_2_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid139_i_div22_conv_bs7(BITSELECT,592)@43
    prodXInvY_uid139_i_div22_conv_bs7_b <= STD_LOGIC_VECTOR(redist110_xPSXE_uid137_i_div22_conv_q_2_q(32 downto 18));

    -- redist111_invResPostOneHandling2_uid131_i_div22_conv_q_1(DELAY,938)
    redist111_invResPostOneHandling2_uid131_i_div22_conv_q_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => invResPostOneHandling2_uid131_i_div22_conv_q, xout => redist111_invResPostOneHandling2_uid131_i_div22_conv_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid139_i_div22_conv_bs2(BITSELECT,587)@43
    prodXInvY_uid139_i_div22_conv_bs2_in <= redist111_invResPostOneHandling2_uid131_i_div22_conv_q_1_q(17 downto 0);
    prodXInvY_uid139_i_div22_conv_bs2_b <= prodXInvY_uid139_i_div22_conv_bs2_in(17 downto 0);

    -- prodXInvY_uid139_i_div22_conv_ma3_cma(CHAINMULTADD,801)@42 + 2
    -- in e@43
    -- in g@43
    -- out q@45
    prodXInvY_uid139_i_div22_conv_ma3_cma_reset <= not (resetn);
    prodXInvY_uid139_i_div22_conv_ma3_cma_ena0 <= '1';
    prodXInvY_uid139_i_div22_conv_ma3_cma_ena1 <= prodXInvY_uid139_i_div22_conv_ma3_cma_ena0;
    prodXInvY_uid139_i_div22_conv_ma3_cma_l(0) <= SIGNED(RESIZE(prodXInvY_uid139_i_div22_conv_ma3_cma_a0(0),19));
    prodXInvY_uid139_i_div22_conv_ma3_cma_l(1) <= SIGNED(RESIZE(prodXInvY_uid139_i_div22_conv_ma3_cma_a0(1),19));
    prodXInvY_uid139_i_div22_conv_ma3_cma_p(0) <= prodXInvY_uid139_i_div22_conv_ma3_cma_l(0) * prodXInvY_uid139_i_div22_conv_ma3_cma_c0(0);
    prodXInvY_uid139_i_div22_conv_ma3_cma_p(1) <= prodXInvY_uid139_i_div22_conv_ma3_cma_l(1) * prodXInvY_uid139_i_div22_conv_ma3_cma_c0(1);
    prodXInvY_uid139_i_div22_conv_ma3_cma_u(0) <= RESIZE(prodXInvY_uid139_i_div22_conv_ma3_cma_p(0),39);
    prodXInvY_uid139_i_div22_conv_ma3_cma_u(1) <= RESIZE(prodXInvY_uid139_i_div22_conv_ma3_cma_p(1),39);
    prodXInvY_uid139_i_div22_conv_ma3_cma_w(0) <= prodXInvY_uid139_i_div22_conv_ma3_cma_u(0);
    prodXInvY_uid139_i_div22_conv_ma3_cma_w(1) <= prodXInvY_uid139_i_div22_conv_ma3_cma_u(1);
    prodXInvY_uid139_i_div22_conv_ma3_cma_x(0) <= prodXInvY_uid139_i_div22_conv_ma3_cma_w(0);
    prodXInvY_uid139_i_div22_conv_ma3_cma_x(1) <= prodXInvY_uid139_i_div22_conv_ma3_cma_w(1);
    prodXInvY_uid139_i_div22_conv_ma3_cma_y(0) <= prodXInvY_uid139_i_div22_conv_ma3_cma_s(1) + prodXInvY_uid139_i_div22_conv_ma3_cma_x(0);
    prodXInvY_uid139_i_div22_conv_ma3_cma_y(1) <= prodXInvY_uid139_i_div22_conv_ma3_cma_x(1);
    prodXInvY_uid139_i_div22_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid139_i_div22_conv_ma3_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid139_i_div22_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid139_i_div22_conv_ma3_cma_ena0 = '1') THEN
                prodXInvY_uid139_i_div22_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid139_i_div22_conv_bs2_b),18);
                prodXInvY_uid139_i_div22_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(prodXInvY_uid139_i_div22_conv_bs6_b),18);
                prodXInvY_uid139_i_div22_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(prodXInvY_uid139_i_div22_conv_bs7_b),19);
                prodXInvY_uid139_i_div22_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(prodXInvY_uid139_i_div22_conv_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid139_i_div22_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid139_i_div22_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid139_i_div22_conv_ma3_cma_ena1 = '1') THEN
                prodXInvY_uid139_i_div22_conv_ma3_cma_s(0) <= prodXInvY_uid139_i_div22_conv_ma3_cma_y(0);
                prodXInvY_uid139_i_div22_conv_ma3_cma_s(1) <= prodXInvY_uid139_i_div22_conv_ma3_cma_y(1);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid139_i_div22_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 38, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid139_i_div22_conv_ma3_cma_s(0)(37 downto 0)), xout => prodXInvY_uid139_i_div22_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid139_i_div22_conv_ma3_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid139_i_div22_conv_ma3_cma_qq(37 downto 0));

    -- redist25_prodXInvY_uid139_i_div22_conv_ma3_cma_q_1(DELAY,852)
    redist25_prodXInvY_uid139_i_div22_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid139_i_div22_conv_ma3_cma_q, xout => redist25_prodXInvY_uid139_i_div22_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid139_i_div22_conv_align_13(BITSHIFT,598)@46
    prodXInvY_uid139_i_div22_conv_align_13_qint <= redist25_prodXInvY_uid139_i_div22_conv_ma3_cma_q_1_q & "000000000000000000";
    prodXInvY_uid139_i_div22_conv_align_13_q <= prodXInvY_uid139_i_div22_conv_align_13_qint(55 downto 0);

    -- prodXInvY_uid139_i_div22_conv_bs10(BITSELECT,595)@43
    prodXInvY_uid139_i_div22_conv_bs10_b <= redist110_xPSXE_uid137_i_div22_conv_q_2_q(32 downto 18);

    -- prodXInvY_uid139_i_div22_conv_bs11(BITSELECT,596)@43
    prodXInvY_uid139_i_div22_conv_bs11_b <= STD_LOGIC_VECTOR(redist111_invResPostOneHandling2_uid131_i_div22_conv_q_1_q(32 downto 18));

    -- prodXInvY_uid139_i_div22_conv_im9_cma(CHAINMULTADD,788)@43 + 2
    prodXInvY_uid139_i_div22_conv_im9_cma_reset <= not (resetn);
    prodXInvY_uid139_i_div22_conv_im9_cma_ena0 <= '1';
    prodXInvY_uid139_i_div22_conv_im9_cma_ena1 <= prodXInvY_uid139_i_div22_conv_im9_cma_ena0;
    prodXInvY_uid139_i_div22_conv_im9_cma_l(0) <= SIGNED(RESIZE(prodXInvY_uid139_i_div22_conv_im9_cma_a0(0),16));
    prodXInvY_uid139_i_div22_conv_im9_cma_p(0) <= prodXInvY_uid139_i_div22_conv_im9_cma_l(0) * prodXInvY_uid139_i_div22_conv_im9_cma_c0(0);
    prodXInvY_uid139_i_div22_conv_im9_cma_u(0) <= RESIZE(prodXInvY_uid139_i_div22_conv_im9_cma_p(0),31);
    prodXInvY_uid139_i_div22_conv_im9_cma_w(0) <= prodXInvY_uid139_i_div22_conv_im9_cma_u(0);
    prodXInvY_uid139_i_div22_conv_im9_cma_x(0) <= prodXInvY_uid139_i_div22_conv_im9_cma_w(0);
    prodXInvY_uid139_i_div22_conv_im9_cma_y(0) <= prodXInvY_uid139_i_div22_conv_im9_cma_x(0);
    prodXInvY_uid139_i_div22_conv_im9_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid139_i_div22_conv_im9_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid139_i_div22_conv_im9_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid139_i_div22_conv_im9_cma_ena0 = '1') THEN
                prodXInvY_uid139_i_div22_conv_im9_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid139_i_div22_conv_bs11_b),15);
                prodXInvY_uid139_i_div22_conv_im9_cma_c0(0) <= RESIZE(SIGNED(prodXInvY_uid139_i_div22_conv_bs10_b),15);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid139_i_div22_conv_im9_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid139_i_div22_conv_im9_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid139_i_div22_conv_im9_cma_ena1 = '1') THEN
                prodXInvY_uid139_i_div22_conv_im9_cma_s(0) <= prodXInvY_uid139_i_div22_conv_im9_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid139_i_div22_conv_im9_cma_delay : dspba_delay
    GENERIC MAP ( width => 30, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid139_i_div22_conv_im9_cma_s(0)(29 downto 0)), xout => prodXInvY_uid139_i_div22_conv_im9_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid139_i_div22_conv_im9_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid139_i_div22_conv_im9_cma_qq(29 downto 0));

    -- redist38_prodXInvY_uid139_i_div22_conv_im9_cma_q_1(DELAY,865)
    redist38_prodXInvY_uid139_i_div22_conv_im9_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid139_i_div22_conv_im9_cma_q, xout => redist38_prodXInvY_uid139_i_div22_conv_im9_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid139_i_div22_conv_bs1(BITSELECT,586)@43
    prodXInvY_uid139_i_div22_conv_bs1_in <= redist110_xPSXE_uid137_i_div22_conv_q_2_q(17 downto 0);
    prodXInvY_uid139_i_div22_conv_bs1_b <= prodXInvY_uid139_i_div22_conv_bs1_in(17 downto 0);

    -- prodXInvY_uid139_i_div22_conv_im0_cma(CHAINMULTADD,787)@43 + 2
    prodXInvY_uid139_i_div22_conv_im0_cma_reset <= not (resetn);
    prodXInvY_uid139_i_div22_conv_im0_cma_ena0 <= '1';
    prodXInvY_uid139_i_div22_conv_im0_cma_ena1 <= prodXInvY_uid139_i_div22_conv_im0_cma_ena0;
    prodXInvY_uid139_i_div22_conv_im0_cma_p(0) <= prodXInvY_uid139_i_div22_conv_im0_cma_a0(0) * prodXInvY_uid139_i_div22_conv_im0_cma_c0(0);
    prodXInvY_uid139_i_div22_conv_im0_cma_u(0) <= RESIZE(prodXInvY_uid139_i_div22_conv_im0_cma_p(0),36);
    prodXInvY_uid139_i_div22_conv_im0_cma_w(0) <= prodXInvY_uid139_i_div22_conv_im0_cma_u(0);
    prodXInvY_uid139_i_div22_conv_im0_cma_x(0) <= prodXInvY_uid139_i_div22_conv_im0_cma_w(0);
    prodXInvY_uid139_i_div22_conv_im0_cma_y(0) <= prodXInvY_uid139_i_div22_conv_im0_cma_x(0);
    prodXInvY_uid139_i_div22_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid139_i_div22_conv_im0_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid139_i_div22_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid139_i_div22_conv_im0_cma_ena0 = '1') THEN
                prodXInvY_uid139_i_div22_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid139_i_div22_conv_bs1_b),18);
                prodXInvY_uid139_i_div22_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(prodXInvY_uid139_i_div22_conv_bs2_b),18);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid139_i_div22_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid139_i_div22_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid139_i_div22_conv_im0_cma_ena1 = '1') THEN
                prodXInvY_uid139_i_div22_conv_im0_cma_s(0) <= prodXInvY_uid139_i_div22_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid139_i_div22_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid139_i_div22_conv_im0_cma_s(0)(35 downto 0)), xout => prodXInvY_uid139_i_div22_conv_im0_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid139_i_div22_conv_im0_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid139_i_div22_conv_im0_cma_qq(35 downto 0));

    -- redist39_prodXInvY_uid139_i_div22_conv_im0_cma_q_1(DELAY,866)
    redist39_prodXInvY_uid139_i_div22_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid139_i_div22_conv_im0_cma_q, xout => redist39_prodXInvY_uid139_i_div22_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid139_i_div22_conv_join_12(BITJOIN,597)@46
    prodXInvY_uid139_i_div22_conv_join_12_q <= redist38_prodXInvY_uid139_i_div22_conv_im9_cma_q_1_q & redist39_prodXInvY_uid139_i_div22_conv_im0_cma_q_1_q;

    -- prodXInvY_uid139_i_div22_conv_result_add_0_0(ADD,600)@46
    prodXInvY_uid139_i_div22_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 66 => prodXInvY_uid139_i_div22_conv_join_12_q(65)) & prodXInvY_uid139_i_div22_conv_join_12_q));
    prodXInvY_uid139_i_div22_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 56 => prodXInvY_uid139_i_div22_conv_align_13_q(55)) & prodXInvY_uid139_i_div22_conv_align_13_q));
    prodXInvY_uid139_i_div22_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodXInvY_uid139_i_div22_conv_result_add_0_0_a) + SIGNED(prodXInvY_uid139_i_div22_conv_result_add_0_0_b));
    prodXInvY_uid139_i_div22_conv_result_add_0_0_q <= prodXInvY_uid139_i_div22_conv_result_add_0_0_o(66 downto 0);

    -- rightShiftInput_uid140_i_div22_conv(BITSELECT,139)@46
    rightShiftInput_uid140_i_div22_conv_in <= STD_LOGIC_VECTOR(prodXInvY_uid139_i_div22_conv_result_add_0_0_q(64 downto 0));
    rightShiftInput_uid140_i_div22_conv_b <= STD_LOGIC_VECTOR(rightShiftInput_uid140_i_div22_conv_in(64 downto 0));

    -- redist109_rightShiftInput_uid140_i_div22_conv_b_1(DELAY,936)
    redist109_rightShiftInput_uid140_i_div22_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 65, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftInput_uid140_i_div22_conv_b, xout => redist109_rightShiftInput_uid140_i_div22_conv_b_1_q, clk => clock, aclr => resetn );

    -- xMSB_uid602_prodPostRightShift_uid141_i_div22_conv(BITSELECT,601)@47
    xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b <= STD_LOGIC_VECTOR(redist109_rightShiftInput_uid140_i_div22_conv_b_1_q(64 downto 64));

    -- redist55_xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b_1(DELAY,882)
    redist55_xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b, xout => redist55_xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage3Idx1Rng1_uid636_prodPostRightShift_uid141_i_div22_conv(BITSELECT,635)@48
    rightShiftStage3Idx1Rng1_uid636_prodPostRightShift_uid141_i_div22_conv_b <= rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_q(64 downto 1);

    -- rightShiftStage3Idx1_uid637_prodPostRightShift_uid141_i_div22_conv(BITJOIN,636)@48
    rightShiftStage3Idx1_uid637_prodPostRightShift_uid141_i_div22_conv_q <= redist55_xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b_1_q & rightShiftStage3Idx1Rng1_uid636_prodPostRightShift_uid141_i_div22_conv_b;

    -- seMsb_to6_uid631(BITSELECT,630)@47
    seMsb_to6_uid631_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((5 downto 1 => xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b(0)) & xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b));
    seMsb_to6_uid631_b <= STD_LOGIC_VECTOR(seMsb_to6_uid631_in(5 downto 0));

    -- rightShiftStage2Idx3Rng6_uid632_prodPostRightShift_uid141_i_div22_conv(BITSELECT,631)@47
    rightShiftStage2Idx3Rng6_uid632_prodPostRightShift_uid141_i_div22_conv_b <= rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_q(64 downto 6);

    -- rightShiftStage2Idx3_uid633_prodPostRightShift_uid141_i_div22_conv(BITJOIN,632)@47
    rightShiftStage2Idx3_uid633_prodPostRightShift_uid141_i_div22_conv_q <= seMsb_to6_uid631_b & rightShiftStage2Idx3Rng6_uid632_prodPostRightShift_uid141_i_div22_conv_b;

    -- seMsb_to4_uid628(BITSELECT,627)@47
    seMsb_to4_uid628_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b(0)) & xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b));
    seMsb_to4_uid628_b <= STD_LOGIC_VECTOR(seMsb_to4_uid628_in(3 downto 0));

    -- rightShiftStage2Idx2Rng4_uid629_prodPostRightShift_uid141_i_div22_conv(BITSELECT,628)@47
    rightShiftStage2Idx2Rng4_uid629_prodPostRightShift_uid141_i_div22_conv_b <= rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_q(64 downto 4);

    -- rightShiftStage2Idx2_uid630_prodPostRightShift_uid141_i_div22_conv(BITJOIN,629)@47
    rightShiftStage2Idx2_uid630_prodPostRightShift_uid141_i_div22_conv_q <= seMsb_to4_uid628_b & rightShiftStage2Idx2Rng4_uid629_prodPostRightShift_uid141_i_div22_conv_b;

    -- seMsb_to2_uid625(BITSELECT,624)@47
    seMsb_to2_uid625_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b(0)) & xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b));
    seMsb_to2_uid625_b <= STD_LOGIC_VECTOR(seMsb_to2_uid625_in(1 downto 0));

    -- rightShiftStage2Idx1Rng2_uid626_prodPostRightShift_uid141_i_div22_conv(BITSELECT,625)@47
    rightShiftStage2Idx1Rng2_uid626_prodPostRightShift_uid141_i_div22_conv_b <= rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_q(64 downto 2);

    -- rightShiftStage2Idx1_uid627_prodPostRightShift_uid141_i_div22_conv(BITJOIN,626)@47
    rightShiftStage2Idx1_uid627_prodPostRightShift_uid141_i_div22_conv_q <= seMsb_to2_uid625_b & rightShiftStage2Idx1Rng2_uid626_prodPostRightShift_uid141_i_div22_conv_b;

    -- seMsb_to24_uid620(BITSELECT,619)@47
    seMsb_to24_uid620_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 1 => xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b(0)) & xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b));
    seMsb_to24_uid620_b <= STD_LOGIC_VECTOR(seMsb_to24_uid620_in(23 downto 0));

    -- rightShiftStage1Idx3Rng24_uid621_prodPostRightShift_uid141_i_div22_conv(BITSELECT,620)@47
    rightShiftStage1Idx3Rng24_uid621_prodPostRightShift_uid141_i_div22_conv_b <= rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q(64 downto 24);

    -- rightShiftStage1Idx3_uid622_prodPostRightShift_uid141_i_div22_conv(BITJOIN,621)@47
    rightShiftStage1Idx3_uid622_prodPostRightShift_uid141_i_div22_conv_q <= seMsb_to24_uid620_b & rightShiftStage1Idx3Rng24_uid621_prodPostRightShift_uid141_i_div22_conv_b;

    -- seMsb_to16_uid617(BITSELECT,616)@47
    seMsb_to16_uid617_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b(0)) & xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b));
    seMsb_to16_uid617_b <= STD_LOGIC_VECTOR(seMsb_to16_uid617_in(15 downto 0));

    -- rightShiftStage1Idx2Rng16_uid618_prodPostRightShift_uid141_i_div22_conv(BITSELECT,617)@47
    rightShiftStage1Idx2Rng16_uid618_prodPostRightShift_uid141_i_div22_conv_b <= rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q(64 downto 16);

    -- rightShiftStage1Idx2_uid619_prodPostRightShift_uid141_i_div22_conv(BITJOIN,618)@47
    rightShiftStage1Idx2_uid619_prodPostRightShift_uid141_i_div22_conv_q <= seMsb_to16_uid617_b & rightShiftStage1Idx2Rng16_uid618_prodPostRightShift_uid141_i_div22_conv_b;

    -- seMsb_to8_uid614(BITSELECT,613)@47
    seMsb_to8_uid614_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b(0)) & xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b));
    seMsb_to8_uid614_b <= STD_LOGIC_VECTOR(seMsb_to8_uid614_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid615_prodPostRightShift_uid141_i_div22_conv(BITSELECT,614)@47
    rightShiftStage1Idx1Rng8_uid615_prodPostRightShift_uid141_i_div22_conv_b <= rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q(64 downto 8);

    -- rightShiftStage1Idx1_uid616_prodPostRightShift_uid141_i_div22_conv(BITJOIN,615)@47
    rightShiftStage1Idx1_uid616_prodPostRightShift_uid141_i_div22_conv_q <= seMsb_to8_uid614_b & rightShiftStage1Idx1Rng8_uid615_prodPostRightShift_uid141_i_div22_conv_b;

    -- stageIndexName_to65_uid610(BITSELECT,609)@47
    stageIndexName_to65_uid610_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 1 => xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b(0)) & xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b));
    stageIndexName_to65_uid610_b <= STD_LOGIC_VECTOR(stageIndexName_to65_uid610_in(64 downto 0));

    -- seMsb_to64_uid607(BITSELECT,606)@47
    seMsb_to64_uid607_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((63 downto 1 => xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b(0)) & xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b));
    seMsb_to64_uid607_b <= STD_LOGIC_VECTOR(seMsb_to64_uid607_in(63 downto 0));

    -- rightShiftStage0Idx2Rng64_uid608_prodPostRightShift_uid141_i_div22_conv(BITSELECT,607)@47
    rightShiftStage0Idx2Rng64_uid608_prodPostRightShift_uid141_i_div22_conv_b <= redist109_rightShiftInput_uid140_i_div22_conv_b_1_q(64 downto 64);

    -- rightShiftStage0Idx2_uid609_prodPostRightShift_uid141_i_div22_conv(BITJOIN,608)@47
    rightShiftStage0Idx2_uid609_prodPostRightShift_uid141_i_div22_conv_q <= seMsb_to64_uid607_b & rightShiftStage0Idx2Rng64_uid608_prodPostRightShift_uid141_i_div22_conv_b;

    -- seMsb_to32_uid604(BITSELECT,603)@47
    seMsb_to32_uid604_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b(0)) & xMSB_uid602_prodPostRightShift_uid141_i_div22_conv_b));
    seMsb_to32_uid604_b <= STD_LOGIC_VECTOR(seMsb_to32_uid604_in(31 downto 0));

    -- rightShiftStage0Idx1Rng32_uid605_prodPostRightShift_uid141_i_div22_conv(BITSELECT,604)@47
    rightShiftStage0Idx1Rng32_uid605_prodPostRightShift_uid141_i_div22_conv_b <= redist109_rightShiftInput_uid140_i_div22_conv_b_1_q(64 downto 32);

    -- rightShiftStage0Idx1_uid606_prodPostRightShift_uid141_i_div22_conv(BITJOIN,605)@47
    rightShiftStage0Idx1_uid606_prodPostRightShift_uid141_i_div22_conv_q <= seMsb_to32_uid604_b & rightShiftStage0Idx1Rng32_uid605_prodPostRightShift_uid141_i_div22_conv_b;

    -- rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv(MUX,612)@47
    rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_s <= rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_b;
    rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_combproc: PROCESS (rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_s, redist109_rightShiftInput_uid140_i_div22_conv_b_1_q, rightShiftStage0Idx1_uid606_prodPostRightShift_uid141_i_div22_conv_q, rightShiftStage0Idx2_uid609_prodPostRightShift_uid141_i_div22_conv_q, stageIndexName_to65_uid610_b)
    BEGIN
        CASE (rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_s) IS
            WHEN "00" => rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q <= redist109_rightShiftInput_uid140_i_div22_conv_b_1_q;
            WHEN "01" => rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage0Idx1_uid606_prodPostRightShift_uid141_i_div22_conv_q;
            WHEN "10" => rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage0Idx2_uid609_prodPostRightShift_uid141_i_div22_conv_q;
            WHEN "11" => rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q <= stageIndexName_to65_uid610_b;
            WHEN OTHERS => rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv(MUX,623)@47
    rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_s <= rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_c;
    rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_combproc: PROCESS (rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_s, rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q, rightShiftStage1Idx1_uid616_prodPostRightShift_uid141_i_div22_conv_q, rightShiftStage1Idx2_uid619_prodPostRightShift_uid141_i_div22_conv_q, rightShiftStage1Idx3_uid622_prodPostRightShift_uid141_i_div22_conv_q)
    BEGIN
        CASE (rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_s) IS
            WHEN "00" => rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage0_uid613_prodPostRightShift_uid141_i_div22_conv_q;
            WHEN "01" => rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage1Idx1_uid616_prodPostRightShift_uid141_i_div22_conv_q;
            WHEN "10" => rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage1Idx2_uid619_prodPostRightShift_uid141_i_div22_conv_q;
            WHEN "11" => rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage1Idx3_uid622_prodPostRightShift_uid141_i_div22_conv_q;
            WHEN OTHERS => rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_notEnable(LOGICAL,1076)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_nor(LOGICAL,1077)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_nor_q <= not (redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_notEnable_q or redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_sticky_ena_q);

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_last(CONSTANT,1073)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_last_q <= "01101";

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmp(LOGICAL,1074)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmp_b <= STD_LOGIC_VECTOR("0" & redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_q);
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmp_q <= "1" WHEN redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_last_q = redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmp_b ELSE "0";

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmpReg(REG,1075)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmpReg_q <= STD_LOGIC_VECTOR(redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmp_q);
        END IF;
    END PROCESS;

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_sticky_ena(REG,1078)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_nor_q = "1") THEN
                redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_sticky_ena_q <= STD_LOGIC_VECTOR(redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_enaAnd(LOGICAL,1079)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_enaAnd_q <= redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_sticky_ena_q and VCC_q;

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt(COUNTER,1071)
    -- low=0, high=14, step=1, init=0
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_eq <= '1';
            ELSE
                redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_eq <= '0';
            END IF;
            IF (redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_eq = '1') THEN
                redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_i <= redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_i + 2;
            ELSE
                redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_i <= redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_i, 4)));

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_inputreg(DELAY,1068)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_inputreg : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist73_r_uid265_zCount_uid116_i_div22_conv_q_1_q, xout => redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_inputreg_q, clk => clock, aclr => resetn );

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_wraddr(REG,1072)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_wraddr_q <= "1110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_wraddr_q <= STD_LOGIC_VECTOR(redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem(DUALMEM,1070)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_ia <= STD_LOGIC_VECTOR(redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_inputreg_q);
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_aa <= redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_wraddr_q;
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_ab <= redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_rdcnt_q;
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_reset0 <= not (resetn);
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 6,
        widthad_a => 4,
        numwords_a => 15,
        width_b => 6,
        widthad_b => 4,
        numwords_b => 15,
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
        clocken1 => redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_reset0,
        clock1 => clock,
        address_a => redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_aa,
        data_a => redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_ab,
        q_b => redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_iq
    );
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_q <= redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_iq(5 downto 0);

    -- redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_outputreg(DELAY,1069)
    redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_outputreg : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_mem_q, xout => redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_outputreg_q, clk => clock, aclr => resetn );

    -- rShiftCount_uid133_i_div22_conv(SUB,132)@46 + 1
    rShiftCount_uid133_i_div22_conv_a <= STD_LOGIC_VECTOR("0" & cWOut_uid132_i_div22_conv_q);
    rShiftCount_uid133_i_div22_conv_b <= STD_LOGIC_VECTOR("0" & redist74_r_uid265_zCount_uid116_i_div22_conv_q_19_outputreg_q);
    rShiftCount_uid133_i_div22_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rShiftCount_uid133_i_div22_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            rShiftCount_uid133_i_div22_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(rShiftCount_uid133_i_div22_conv_a) - UNSIGNED(rShiftCount_uid133_i_div22_conv_b));
        END IF;
    END PROCESS;
    rShiftCount_uid133_i_div22_conv_q <= rShiftCount_uid133_i_div22_conv_o(6 downto 0);

    -- rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select(BITSELECT,810)@47
    rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_b <= rShiftCount_uid133_i_div22_conv_q(6 downto 5);
    rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_c <= rShiftCount_uid133_i_div22_conv_q(4 downto 3);
    rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_d <= rShiftCount_uid133_i_div22_conv_q(2 downto 1);
    rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_e <= rShiftCount_uid133_i_div22_conv_q(0 downto 0);

    -- rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv(MUX,634)@47 + 1
    rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_s <= rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_d;
    rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_s) IS
                WHEN "00" => rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage1_uid624_prodPostRightShift_uid141_i_div22_conv_q;
                WHEN "01" => rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage2Idx1_uid627_prodPostRightShift_uid141_i_div22_conv_q;
                WHEN "10" => rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage2Idx2_uid630_prodPostRightShift_uid141_i_div22_conv_q;
                WHEN "11" => rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage2Idx3_uid633_prodPostRightShift_uid141_i_div22_conv_q;
                WHEN OTHERS => rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist15_rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_e_1(DELAY,842)
    redist15_rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_e, xout => redist15_rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv(MUX,638)@48
    rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv_s <= redist15_rightShiftStageSel6Dto5_uid612_prodPostRightShift_uid141_i_div22_conv_merged_bit_select_e_1_q;
    rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv_combproc: PROCESS (rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv_s, rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_q, rightShiftStage3Idx1_uid637_prodPostRightShift_uid141_i_div22_conv_q)
    BEGIN
        CASE (rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv_s) IS
            WHEN "0" => rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage2_uid635_prodPostRightShift_uid141_i_div22_conv_q;
            WHEN "1" => rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv_q <= rightShiftStage3Idx1_uid637_prodPostRightShift_uid141_i_div22_conv_q;
            WHEN OTHERS => rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodPostRightShiftPost_uid142_i_div22_conv(BITSELECT,141)@48
    prodPostRightShiftPost_uid142_i_div22_conv_in <= rightShiftStage3_uid639_prodPostRightShift_uid141_i_div22_conv_q(62 downto 0);
    prodPostRightShiftPost_uid142_i_div22_conv_b <= prodPostRightShiftPost_uid142_i_div22_conv_in(62 downto 30);

    -- redist108_prodPostRightShiftPost_uid142_i_div22_conv_b_1(DELAY,935)
    redist108_prodPostRightShiftPost_uid142_i_div22_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodPostRightShiftPost_uid142_i_div22_conv_b, xout => redist108_prodPostRightShiftPost_uid142_i_div22_conv_b_1_q, clk => clock, aclr => resetn );

    -- prodPostRightShiftPostRnd_uid144_i_div22_conv(ADD,143)@49
    prodPostRightShiftPostRnd_uid144_i_div22_conv_a <= STD_LOGIC_VECTOR("0" & redist108_prodPostRightShiftPost_uid142_i_div22_conv_b_1_q);
    prodPostRightShiftPostRnd_uid144_i_div22_conv_b <= STD_LOGIC_VECTOR("000000000000000000000000000000000" & VCC_q);
    prodPostRightShiftPostRnd_uid144_i_div22_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(prodPostRightShiftPostRnd_uid144_i_div22_conv_a) + UNSIGNED(prodPostRightShiftPostRnd_uid144_i_div22_conv_b));
    prodPostRightShiftPostRnd_uid144_i_div22_conv_q <= prodPostRightShiftPostRnd_uid144_i_div22_conv_o(33 downto 0);

    -- prodPostRightShiftPostRndRange_uid145_i_div22_conv(BITSELECT,144)@49
    prodPostRightShiftPostRndRange_uid145_i_div22_conv_in <= prodPostRightShiftPostRnd_uid144_i_div22_conv_q(32 downto 0);
    prodPostRightShiftPostRndRange_uid145_i_div22_conv_b <= prodPostRightShiftPostRndRange_uid145_i_div22_conv_in(32 downto 1);

    -- redist107_prodPostRightShiftPostRndRange_uid145_i_div22_conv_b_1(DELAY,934)
    redist107_prodPostRightShiftPostRndRange_uid145_i_div22_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodPostRightShiftPostRndRange_uid145_i_div22_conv_b, xout => redist107_prodPostRightShiftPostRndRange_uid145_i_div22_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_notEnable(LOGICAL,1131)
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_nor(LOGICAL,1132)
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_nor_q <= not (redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_notEnable_q or redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_sticky_ena_q);

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_last(CONSTANT,1128)
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_last_q <= "011001";

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmp(LOGICAL,1129)
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmp_b <= STD_LOGIC_VECTOR("0" & redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_q);
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmp_q <= "1" WHEN redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_last_q = redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmp_b ELSE "0";

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmpReg(REG,1130)
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmpReg_q <= STD_LOGIC_VECTOR(redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmp_q);
        END IF;
    END PROCESS;

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_sticky_ena(REG,1133)
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_nor_q = "1") THEN
                redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_sticky_ena_q <= STD_LOGIC_VECTOR(redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_enaAnd(LOGICAL,1134)
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_enaAnd_q <= redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_sticky_ena_q and VCC_q;

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt(COUNTER,1126)
    -- low=0, high=26, step=1, init=0
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_i = TO_UNSIGNED(25, 5)) THEN
                redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_eq <= '1';
            ELSE
                redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_eq <= '0';
            END IF;
            IF (redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_eq = '1') THEN
                redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_i <= redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_i + 6;
            ELSE
                redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_i <= redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_i, 5)));

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_wraddr(REG,1127)
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_wraddr_q <= "11010";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_wraddr_q <= STD_LOGIC_VECTOR(redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem(DUALMEM,1125)
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_ia <= STD_LOGIC_VECTOR(i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out);
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_aa <= redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_wraddr_q;
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_ab <= redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_rdcnt_q;
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_reset0 <= not (resetn);
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 27,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 27,
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
        clocken1 => redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_reset0,
        clock1 => clock,
        address_a => redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_aa,
        data_a => redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_ab,
        q_b => redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_iq
    );
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_q <= redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_iq(31 downto 0);

    -- redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_outputreg(DELAY,1124)
    redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_mem_q, xout => redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_outputreg_q, clk => clock, aclr => resetn );

    -- yIsZero_uid124_i_div22_conv(LOGICAL,123)@50
    yIsZero_uid124_i_div22_conv_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000" & GND_q);
    yIsZero_uid124_i_div22_conv_q <= "1" WHEN redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_outputreg_q = yIsZero_uid124_i_div22_conv_b ELSE "0";

    -- resFinal_uid150_i_div22_conv(MUX,149)@50
    resFinal_uid150_i_div22_conv_s <= yIsZero_uid124_i_div22_conv_q;
    resFinal_uid150_i_div22_conv_combproc: PROCESS (resFinal_uid150_i_div22_conv_s, redist107_prodPostRightShiftPostRndRange_uid145_i_div22_conv_b_1_q, cstOvf_uid149_i_div22_conv_q)
    BEGIN
        CASE (resFinal_uid150_i_div22_conv_s) IS
            WHEN "0" => resFinal_uid150_i_div22_conv_q <= redist107_prodPostRightShiftPostRndRange_uid145_i_div22_conv_b_1_q;
            WHEN "1" => resFinal_uid150_i_div22_conv_q <= cstOvf_uid149_i_div22_conv_q;
            WHEN OTHERS => resFinal_uid150_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist103_resFinal_uid150_i_div22_conv_q_4_inputreg(DELAY,1102)
    redist103_resFinal_uid150_i_div22_conv_q_4_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resFinal_uid150_i_div22_conv_q, xout => redist103_resFinal_uid150_i_div22_conv_q_4_inputreg_q, clk => clock, aclr => resetn );

    -- redist103_resFinal_uid150_i_div22_conv_q_4(DELAY,930)
    redist103_resFinal_uid150_i_div22_conv_q_4 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist103_resFinal_uid150_i_div22_conv_q_4_inputreg_q, xout => redist103_resFinal_uid150_i_div22_conv_q_4_q, clk => clock, aclr => resetn );

    -- redist103_resFinal_uid150_i_div22_conv_q_4_outputreg(DELAY,1103)
    redist103_resFinal_uid150_i_div22_conv_q_4_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist103_resFinal_uid150_i_div22_conv_q_4_q, xout => redist103_resFinal_uid150_i_div22_conv_q_4_outputreg_q, clk => clock, aclr => resetn );

    -- resFinalMP1_uid167_i_div22_conv(SUB,166)@54
    resFinalMP1_uid167_i_div22_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => redist103_resFinal_uid150_i_div22_conv_q_4_outputreg_q(31)) & redist103_resFinal_uid150_i_div22_conv_q_4_outputreg_q));
    resFinalMP1_uid167_i_div22_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 2 => cstSubFinal_uid166_i_div22_conv_q(1)) & cstSubFinal_uid166_i_div22_conv_q));
    resFinalMP1_uid167_i_div22_conv_o <= STD_LOGIC_VECTOR(SIGNED(resFinalMP1_uid167_i_div22_conv_a) - SIGNED(resFinalMP1_uid167_i_div22_conv_b));
    resFinalMP1_uid167_i_div22_conv_q <= resFinalMP1_uid167_i_div22_conv_o(32 downto 0);

    -- resFinalPostMux_uid168_i_div22_conv(BITSELECT,167)@54
    resFinalPostMux_uid168_i_div22_conv_in <= STD_LOGIC_VECTOR(resFinalMP1_uid167_i_div22_conv_q(31 downto 0));
    resFinalPostMux_uid168_i_div22_conv_b <= STD_LOGIC_VECTOR(resFinalPostMux_uid168_i_div22_conv_in(31 downto 0));

    -- redist102_resFinalPostMux_uid168_i_div22_conv_b_1(DELAY,929)
    redist102_resFinalPostMux_uid168_i_div22_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resFinalPostMux_uid168_i_div22_conv_b, xout => redist102_resFinalPostMux_uid168_i_div22_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist104_resFinal_uid150_i_div22_conv_q_5(DELAY,931)
    redist104_resFinal_uid150_i_div22_conv_q_5 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist103_resFinal_uid150_i_div22_conv_q_4_outputreg_q, xout => redist104_resFinal_uid150_i_div22_conv_q_5_q, clk => clock, aclr => resetn );

    -- signResFinal_uid159_i_div22_conv(BITSELECT,158)@55
    signResFinal_uid159_i_div22_conv_b <= STD_LOGIC_VECTOR(redist104_resFinal_uid150_i_div22_conv_q_5_q(31 downto 31));

    -- redist124_xMSB_uid110_i_div22_conv_b_34(DELAY,951)
    redist124_xMSB_uid110_i_div22_conv_b_34 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist123_xMSB_uid110_i_div22_conv_b_32_q, xout => redist124_xMSB_uid110_i_div22_conv_b_34_q, clk => clock, aclr => resetn );

    -- redist106_signX_uid148_i_div22_conv_b_5(DELAY,933)
    redist106_signX_uid148_i_div22_conv_b_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist105_signX_uid148_i_div22_conv_b_3_q, xout => redist106_signX_uid148_i_div22_conv_b_5_q, clk => clock, aclr => resetn );

    -- OverflowCond_uid160_i_div22_conv(LOGICAL,159)@55
    OverflowCond_uid160_i_div22_conv_q <= redist106_signX_uid148_i_div22_conv_b_5_q and redist124_xMSB_uid110_i_div22_conv_b_34_q and signResFinal_uid159_i_div22_conv_b;

    -- redist150_bgTrunc_i_sub21_conv_sel_x_b_15_inputreg(DELAY,1179)
    redist150_bgTrunc_i_sub21_conv_sel_x_b_15_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist149_bgTrunc_i_sub21_conv_sel_x_b_11_outputreg_q, xout => redist150_bgTrunc_i_sub21_conv_sel_x_b_15_inputreg_q, clk => clock, aclr => resetn );

    -- redist150_bgTrunc_i_sub21_conv_sel_x_b_15(DELAY,977)
    redist150_bgTrunc_i_sub21_conv_sel_x_b_15 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist150_bgTrunc_i_sub21_conv_sel_x_b_15_inputreg_q, xout => redist150_bgTrunc_i_sub21_conv_sel_x_b_15_q, clk => clock, aclr => resetn );

    -- redist150_bgTrunc_i_sub21_conv_sel_x_b_15_outputreg(DELAY,1180)
    redist150_bgTrunc_i_sub21_conv_sel_x_b_15_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist150_bgTrunc_i_sub21_conv_sel_x_b_15_q, xout => redist150_bgTrunc_i_sub21_conv_sel_x_b_15_outputreg_q, clk => clock, aclr => resetn );

    -- prodResY_uid151_i_div22_conv_bs5(BITSELECT,645)@50
    prodResY_uid151_i_div22_conv_bs5_b <= redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_outputreg_q(31 downto 18);

    -- prodResY_uid151_i_div22_conv_bs4(BITSELECT,644)@50
    prodResY_uid151_i_div22_conv_bs4_in <= STD_LOGIC_VECTOR(resFinal_uid150_i_div22_conv_q(17 downto 0));
    prodResY_uid151_i_div22_conv_bs4_b <= STD_LOGIC_VECTOR(prodResY_uid151_i_div22_conv_bs4_in(17 downto 0));

    -- prodResY_uid151_i_div22_conv_bs6(BITSELECT,646)@50
    prodResY_uid151_i_div22_conv_bs6_b <= STD_LOGIC_VECTOR(resFinal_uid150_i_div22_conv_q(31 downto 18));

    -- prodResY_uid151_i_div22_conv_bs2(BITSELECT,642)@50
    prodResY_uid151_i_div22_conv_bs2_in <= redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_outputreg_q(17 downto 0);
    prodResY_uid151_i_div22_conv_bs2_b <= prodResY_uid151_i_div22_conv_bs2_in(17 downto 0);

    -- prodResY_uid151_i_div22_conv_ma3_cma(CHAINMULTADD,802)@50 + 2
    prodResY_uid151_i_div22_conv_ma3_cma_reset <= not (resetn);
    prodResY_uid151_i_div22_conv_ma3_cma_ena0 <= '1';
    prodResY_uid151_i_div22_conv_ma3_cma_ena1 <= prodResY_uid151_i_div22_conv_ma3_cma_ena0;
    prodResY_uid151_i_div22_conv_ma3_cma_l(0) <= SIGNED(RESIZE(prodResY_uid151_i_div22_conv_ma3_cma_a0(0),19));
    prodResY_uid151_i_div22_conv_ma3_cma_l(1) <= SIGNED(RESIZE(prodResY_uid151_i_div22_conv_ma3_cma_a0(1),19));
    prodResY_uid151_i_div22_conv_ma3_cma_p(0) <= prodResY_uid151_i_div22_conv_ma3_cma_l(0) * prodResY_uid151_i_div22_conv_ma3_cma_c0(0);
    prodResY_uid151_i_div22_conv_ma3_cma_p(1) <= prodResY_uid151_i_div22_conv_ma3_cma_l(1) * prodResY_uid151_i_div22_conv_ma3_cma_c0(1);
    prodResY_uid151_i_div22_conv_ma3_cma_u(0) <= RESIZE(prodResY_uid151_i_div22_conv_ma3_cma_p(0),34);
    prodResY_uid151_i_div22_conv_ma3_cma_u(1) <= RESIZE(prodResY_uid151_i_div22_conv_ma3_cma_p(1),34);
    prodResY_uid151_i_div22_conv_ma3_cma_w(0) <= prodResY_uid151_i_div22_conv_ma3_cma_u(0) + prodResY_uid151_i_div22_conv_ma3_cma_u(1);
    prodResY_uid151_i_div22_conv_ma3_cma_x(0) <= prodResY_uid151_i_div22_conv_ma3_cma_w(0);
    prodResY_uid151_i_div22_conv_ma3_cma_y(0) <= prodResY_uid151_i_div22_conv_ma3_cma_x(0);
    prodResY_uid151_i_div22_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid151_i_div22_conv_ma3_cma_a0 <= (others => (others => '0'));
            prodResY_uid151_i_div22_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid151_i_div22_conv_ma3_cma_ena0 = '1') THEN
                prodResY_uid151_i_div22_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(prodResY_uid151_i_div22_conv_bs2_b),18);
                prodResY_uid151_i_div22_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(prodResY_uid151_i_div22_conv_bs4_b),18);
                prodResY_uid151_i_div22_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(prodResY_uid151_i_div22_conv_bs6_b),14);
                prodResY_uid151_i_div22_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(prodResY_uid151_i_div22_conv_bs5_b),14);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid151_i_div22_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid151_i_div22_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid151_i_div22_conv_ma3_cma_ena1 = '1') THEN
                prodResY_uid151_i_div22_conv_ma3_cma_s(0) <= prodResY_uid151_i_div22_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid151_i_div22_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 33, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid151_i_div22_conv_ma3_cma_s(0)(32 downto 0)), xout => prodResY_uid151_i_div22_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid151_i_div22_conv_ma3_cma_q <= STD_LOGIC_VECTOR(prodResY_uid151_i_div22_conv_ma3_cma_qq(32 downto 0));

    -- redist24_prodResY_uid151_i_div22_conv_ma3_cma_q_1(DELAY,851)
    redist24_prodResY_uid151_i_div22_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid151_i_div22_conv_ma3_cma_q, xout => redist24_prodResY_uid151_i_div22_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid151_i_div22_conv_align_12(BITSHIFT,652)@53
    prodResY_uid151_i_div22_conv_align_12_qint <= redist24_prodResY_uid151_i_div22_conv_ma3_cma_q_1_q & "000000000000000000";
    prodResY_uid151_i_div22_conv_align_12_q <= prodResY_uid151_i_div22_conv_align_12_qint(50 downto 0);

    -- prodResY_uid151_i_div22_conv_bs10(BITSELECT,650)@50
    prodResY_uid151_i_div22_conv_bs10_b <= STD_LOGIC_VECTOR(redist125_i_syncbuf_k_conv_sync_buffer94_conv_out_buffer_out_29_outputreg_q(31 downto 18));

    -- prodResY_uid151_i_div22_conv_im8_cma(CHAINMULTADD,790)@50 + 2
    prodResY_uid151_i_div22_conv_im8_cma_reset <= not (resetn);
    prodResY_uid151_i_div22_conv_im8_cma_ena0 <= '1';
    prodResY_uid151_i_div22_conv_im8_cma_ena1 <= prodResY_uid151_i_div22_conv_im8_cma_ena0;
    prodResY_uid151_i_div22_conv_im8_cma_p(0) <= prodResY_uid151_i_div22_conv_im8_cma_a0(0) * prodResY_uid151_i_div22_conv_im8_cma_c0(0);
    prodResY_uid151_i_div22_conv_im8_cma_u(0) <= RESIZE(prodResY_uid151_i_div22_conv_im8_cma_p(0),28);
    prodResY_uid151_i_div22_conv_im8_cma_w(0) <= prodResY_uid151_i_div22_conv_im8_cma_u(0);
    prodResY_uid151_i_div22_conv_im8_cma_x(0) <= prodResY_uid151_i_div22_conv_im8_cma_w(0);
    prodResY_uid151_i_div22_conv_im8_cma_y(0) <= prodResY_uid151_i_div22_conv_im8_cma_x(0);
    prodResY_uid151_i_div22_conv_im8_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid151_i_div22_conv_im8_cma_a0 <= (others => (others => '0'));
            prodResY_uid151_i_div22_conv_im8_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid151_i_div22_conv_im8_cma_ena0 = '1') THEN
                prodResY_uid151_i_div22_conv_im8_cma_a0(0) <= RESIZE(SIGNED(prodResY_uid151_i_div22_conv_bs6_b),14);
                prodResY_uid151_i_div22_conv_im8_cma_c0(0) <= RESIZE(SIGNED(prodResY_uid151_i_div22_conv_bs10_b),14);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid151_i_div22_conv_im8_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid151_i_div22_conv_im8_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid151_i_div22_conv_im8_cma_ena1 = '1') THEN
                prodResY_uid151_i_div22_conv_im8_cma_s(0) <= prodResY_uid151_i_div22_conv_im8_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid151_i_div22_conv_im8_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid151_i_div22_conv_im8_cma_s(0)(27 downto 0)), xout => prodResY_uid151_i_div22_conv_im8_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid151_i_div22_conv_im8_cma_q <= STD_LOGIC_VECTOR(prodResY_uid151_i_div22_conv_im8_cma_qq(27 downto 0));

    -- redist36_prodResY_uid151_i_div22_conv_im8_cma_q_1(DELAY,863)
    redist36_prodResY_uid151_i_div22_conv_im8_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid151_i_div22_conv_im8_cma_q, xout => redist36_prodResY_uid151_i_div22_conv_im8_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid151_i_div22_conv_bs1(BITSELECT,641)@50
    prodResY_uid151_i_div22_conv_bs1_in <= resFinal_uid150_i_div22_conv_q(17 downto 0);
    prodResY_uid151_i_div22_conv_bs1_b <= prodResY_uid151_i_div22_conv_bs1_in(17 downto 0);

    -- prodResY_uid151_i_div22_conv_im0_cma(CHAINMULTADD,789)@50 + 2
    prodResY_uid151_i_div22_conv_im0_cma_reset <= not (resetn);
    prodResY_uid151_i_div22_conv_im0_cma_ena0 <= '1';
    prodResY_uid151_i_div22_conv_im0_cma_ena1 <= prodResY_uid151_i_div22_conv_im0_cma_ena0;
    prodResY_uid151_i_div22_conv_im0_cma_p(0) <= prodResY_uid151_i_div22_conv_im0_cma_a0(0) * prodResY_uid151_i_div22_conv_im0_cma_c0(0);
    prodResY_uid151_i_div22_conv_im0_cma_u(0) <= RESIZE(prodResY_uid151_i_div22_conv_im0_cma_p(0),36);
    prodResY_uid151_i_div22_conv_im0_cma_w(0) <= prodResY_uid151_i_div22_conv_im0_cma_u(0);
    prodResY_uid151_i_div22_conv_im0_cma_x(0) <= prodResY_uid151_i_div22_conv_im0_cma_w(0);
    prodResY_uid151_i_div22_conv_im0_cma_y(0) <= prodResY_uid151_i_div22_conv_im0_cma_x(0);
    prodResY_uid151_i_div22_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid151_i_div22_conv_im0_cma_a0 <= (others => (others => '0'));
            prodResY_uid151_i_div22_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid151_i_div22_conv_im0_cma_ena0 = '1') THEN
                prodResY_uid151_i_div22_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodResY_uid151_i_div22_conv_bs1_b),18);
                prodResY_uid151_i_div22_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(prodResY_uid151_i_div22_conv_bs2_b),18);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid151_i_div22_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid151_i_div22_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid151_i_div22_conv_im0_cma_ena1 = '1') THEN
                prodResY_uid151_i_div22_conv_im0_cma_s(0) <= prodResY_uid151_i_div22_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid151_i_div22_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid151_i_div22_conv_im0_cma_s(0)(35 downto 0)), xout => prodResY_uid151_i_div22_conv_im0_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid151_i_div22_conv_im0_cma_q <= STD_LOGIC_VECTOR(prodResY_uid151_i_div22_conv_im0_cma_qq(35 downto 0));

    -- redist37_prodResY_uid151_i_div22_conv_im0_cma_q_1(DELAY,864)
    redist37_prodResY_uid151_i_div22_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid151_i_div22_conv_im0_cma_q, xout => redist37_prodResY_uid151_i_div22_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid151_i_div22_conv_join_11(BITJOIN,651)@53
    prodResY_uid151_i_div22_conv_join_11_q <= redist36_prodResY_uid151_i_div22_conv_im8_cma_q_1_q & redist37_prodResY_uid151_i_div22_conv_im0_cma_q_1_q;

    -- prodResY_uid151_i_div22_conv_result_add_0_0(ADD,654)@53 + 1
    prodResY_uid151_i_div22_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 64 => prodResY_uid151_i_div22_conv_join_11_q(63)) & prodResY_uid151_i_div22_conv_join_11_q));
    prodResY_uid151_i_div22_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 51 => prodResY_uid151_i_div22_conv_align_12_q(50)) & prodResY_uid151_i_div22_conv_align_12_q));
    prodResY_uid151_i_div22_conv_result_add_0_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid151_i_div22_conv_result_add_0_0_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prodResY_uid151_i_div22_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodResY_uid151_i_div22_conv_result_add_0_0_a) + SIGNED(prodResY_uid151_i_div22_conv_result_add_0_0_b));
        END IF;
    END PROCESS;
    prodResY_uid151_i_div22_conv_result_add_0_0_q <= prodResY_uid151_i_div22_conv_result_add_0_0_o(64 downto 0);

    -- prod_qy_LT_x_uid153_i_div22_conv(COMPARE,152)@54 + 1
    prod_qy_LT_x_uid153_i_div22_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 65 => prodResY_uid151_i_div22_conv_result_add_0_0_q(64)) & prodResY_uid151_i_div22_conv_result_add_0_0_q));
    prod_qy_LT_x_uid153_i_div22_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 32 => redist150_bgTrunc_i_sub21_conv_sel_x_b_15_outputreg_q(31)) & redist150_bgTrunc_i_sub21_conv_sel_x_b_15_outputreg_q));
    prod_qy_LT_x_uid153_i_div22_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prod_qy_LT_x_uid153_i_div22_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prod_qy_LT_x_uid153_i_div22_conv_o <= STD_LOGIC_VECTOR(SIGNED(prod_qy_LT_x_uid153_i_div22_conv_a) - SIGNED(prod_qy_LT_x_uid153_i_div22_conv_b));
        END IF;
    END PROCESS;
    prod_qy_LT_x_uid153_i_div22_conv_c(0) <= prod_qy_LT_x_uid153_i_div22_conv_o(65);

    -- CondNegX_uid161_i_div22_conv(LOGICAL,160)@55
    CondNegX_uid161_i_div22_conv_q <= prod_qy_LT_x_uid153_i_div22_conv_c and redist106_signX_uid148_i_div22_conv_b_5_q;

    -- invSignX_uid162_i_div22_conv(LOGICAL,161)@55
    invSignX_uid162_i_div22_conv_q <= not (redist106_signX_uid148_i_div22_conv_b_5_q);

    -- prod_qy_GT_x_uid152_i_div22_conv(COMPARE,151)@54 + 1
    prod_qy_GT_x_uid152_i_div22_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 32 => redist150_bgTrunc_i_sub21_conv_sel_x_b_15_outputreg_q(31)) & redist150_bgTrunc_i_sub21_conv_sel_x_b_15_outputreg_q));
    prod_qy_GT_x_uid152_i_div22_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 65 => prodResY_uid151_i_div22_conv_result_add_0_0_q(64)) & prodResY_uid151_i_div22_conv_result_add_0_0_q));
    prod_qy_GT_x_uid152_i_div22_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prod_qy_GT_x_uid152_i_div22_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prod_qy_GT_x_uid152_i_div22_conv_o <= STD_LOGIC_VECTOR(SIGNED(prod_qy_GT_x_uid152_i_div22_conv_a) - SIGNED(prod_qy_GT_x_uid152_i_div22_conv_b));
        END IF;
    END PROCESS;
    prod_qy_GT_x_uid152_i_div22_conv_c(0) <= prod_qy_GT_x_uid152_i_div22_conv_o(65);

    -- CondPosX_uid163_i_div22_conv(LOGICAL,162)@55
    CondPosX_uid163_i_div22_conv_q <= prod_qy_GT_x_uid152_i_div22_conv_c and invSignX_uid162_i_div22_conv_q;

    -- postMuxSelect_uid164_i_div22_conv(LOGICAL,163)@55
    postMuxSelect_uid164_i_div22_conv_q <= CondPosX_uid163_i_div22_conv_q or CondNegX_uid161_i_div22_conv_q or OverflowCond_uid160_i_div22_conv_q;

    -- resFinalIntDiv_uid169_i_div22_conv(MUX,168)@55
    resFinalIntDiv_uid169_i_div22_conv_s <= postMuxSelect_uid164_i_div22_conv_q;
    resFinalIntDiv_uid169_i_div22_conv_combproc: PROCESS (resFinalIntDiv_uid169_i_div22_conv_s, redist104_resFinal_uid150_i_div22_conv_q_5_q, redist102_resFinalPostMux_uid168_i_div22_conv_b_1_q)
    BEGIN
        CASE (resFinalIntDiv_uid169_i_div22_conv_s) IS
            WHEN "0" => resFinalIntDiv_uid169_i_div22_conv_q <= redist104_resFinal_uid150_i_div22_conv_q_5_q;
            WHEN "1" => resFinalIntDiv_uid169_i_div22_conv_q <= redist102_resFinalPostMux_uid168_i_div22_conv_b_1_q;
            WHEN OTHERS => resFinalIntDiv_uid169_i_div22_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist101_resFinalIntDiv_uid169_i_div22_conv_q_1(DELAY,928)
    redist101_resFinalIntDiv_uid169_i_div22_conv_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resFinalIntDiv_uid169_i_div22_conv_q, xout => redist101_resFinalIntDiv_uid169_i_div22_conv_q_1_q, clk => clock, aclr => resetn );

    -- i_sub23_conv(SUB,85)@56
    i_sub23_conv_a <= STD_LOGIC_VECTOR("0" & redist101_resFinalIntDiv_uid169_i_div22_conv_q_1_q);
    i_sub23_conv_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_p_conv_sync_buffer97_conv_out_buffer_out);
    i_sub23_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub23_conv_a) - UNSIGNED(i_sub23_conv_b));
    i_sub23_conv_q <= i_sub23_conv_o(32 downto 0);

    -- bgTrunc_i_sub23_conv_sel_x(BITSELECT,12)@56
    bgTrunc_i_sub23_conv_sel_x_b <= STD_LOGIC_VECTOR(i_sub23_conv_q(31 downto 0));

    -- redist147_bgTrunc_i_sub23_conv_sel_x_b_1(DELAY,974)
    redist147_bgTrunc_i_sub23_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub23_conv_sel_x_b, xout => redist147_bgTrunc_i_sub23_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_notEnable(LOGICAL,1153)
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_nor(LOGICAL,1154)
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_nor_q <= not (redist132_sync_in_aunroll_x_in_c0_eni8_4_56_notEnable_q or redist132_sync_in_aunroll_x_in_c0_eni8_4_56_sticky_ena_q);

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_last(CONSTANT,1150)
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_last_q <= "0110100";

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmp(LOGICAL,1151)
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmp_b <= STD_LOGIC_VECTOR("0" & redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_q);
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmp_q <= "1" WHEN redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_last_q = redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmp_b ELSE "0";

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmpReg(REG,1152)
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmpReg_q <= STD_LOGIC_VECTOR(redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmp_q);
        END IF;
    END PROCESS;

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_sticky_ena(REG,1155)
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist132_sync_in_aunroll_x_in_c0_eni8_4_56_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist132_sync_in_aunroll_x_in_c0_eni8_4_56_nor_q = "1") THEN
                redist132_sync_in_aunroll_x_in_c0_eni8_4_56_sticky_ena_q <= STD_LOGIC_VECTOR(redist132_sync_in_aunroll_x_in_c0_eni8_4_56_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_enaAnd(LOGICAL,1156)
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_enaAnd_q <= redist132_sync_in_aunroll_x_in_c0_eni8_4_56_sticky_ena_q and VCC_q;

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt(COUNTER,1148)
    -- low=0, high=53, step=1, init=0
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_i <= TO_UNSIGNED(0, 6);
            redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_i = TO_UNSIGNED(52, 6)) THEN
                redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_eq <= '1';
            ELSE
                redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_eq <= '0';
            END IF;
            IF (redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_eq = '1') THEN
                redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_i <= redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_i + 11;
            ELSE
                redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_i <= redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_i, 6)));

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_wraddr(REG,1149)
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist132_sync_in_aunroll_x_in_c0_eni8_4_56_wraddr_q <= "110101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist132_sync_in_aunroll_x_in_c0_eni8_4_56_wraddr_q <= STD_LOGIC_VECTOR(redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem(DUALMEM,1147)
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni8_4);
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_aa <= redist132_sync_in_aunroll_x_in_c0_eni8_4_56_wraddr_q;
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_ab <= redist132_sync_in_aunroll_x_in_c0_eni8_4_56_rdcnt_q;
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_reset0 <= not (resetn);
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 6,
        numwords_a => 54,
        width_b => 32,
        widthad_b => 6,
        numwords_b => 54,
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
        clocken1 => redist132_sync_in_aunroll_x_in_c0_eni8_4_56_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_reset0,
        clock1 => clock,
        address_a => redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_aa,
        data_a => redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_ab,
        q_b => redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_iq
    );
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_q <= redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_iq(31 downto 0);

    -- redist132_sync_in_aunroll_x_in_c0_eni8_4_56_outputreg(DELAY,1146)
    redist132_sync_in_aunroll_x_in_c0_eni8_4_56_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist132_sync_in_aunroll_x_in_c0_eni8_4_56_mem_q, xout => redist132_sync_in_aunroll_x_in_c0_eni8_4_56_outputreg_q, clk => clock, aclr => resetn );

    -- i_add29_conv(ADD,56)@57
    i_add29_conv_a <= STD_LOGIC_VECTOR("0" & redist132_sync_in_aunroll_x_in_c0_eni8_4_56_outputreg_q);
    i_add29_conv_b <= STD_LOGIC_VECTOR("0" & redist147_bgTrunc_i_sub23_conv_sel_x_b_1_q);
    i_add29_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add29_conv_a) + UNSIGNED(i_add29_conv_b));
    i_add29_conv_q <= i_add29_conv_o(32 downto 0);

    -- bgTrunc_i_add29_conv_sel_x(BITSELECT,3)@57
    bgTrunc_i_add29_conv_sel_x_b <= i_add29_conv_q(31 downto 0);

    -- redist160_bgTrunc_i_add29_conv_sel_x_b_1(DELAY,987)
    redist160_bgTrunc_i_add29_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add29_conv_sel_x_b, xout => redist160_bgTrunc_i_add29_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp51_conv(COMPARE,67)@58 + 1
    i_cmp51_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist160_bgTrunc_i_add29_conv_sel_x_b_1_q(31)) & redist160_bgTrunc_i_add29_conv_sel_x_b_1_q));
    i_cmp51_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_n_fin_dim_sync_buffer98_conv_out_buffer_out(31)) & i_syncbuf_n_fin_dim_sync_buffer98_conv_out_buffer_out));
    i_cmp51_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp51_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp51_conv_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp51_conv_a) - SIGNED(i_cmp51_conv_b));
        END IF;
    END PROCESS;
    i_cmp51_conv_n(0) <= not (i_cmp51_conv_o(33));

    -- redist128_i_cmp51_conv_n_3(DELAY,955)
    redist128_i_cmp51_conv_n_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp51_conv_n, xout => redist128_i_cmp51_conv_n_3_q, clk => clock, aclr => resetn );

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_notEnable(LOGICAL,1164)
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_nor(LOGICAL,1165)
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_nor_q <= not (redist133_sync_in_aunroll_x_in_c0_eni8_5_59_notEnable_q or redist133_sync_in_aunroll_x_in_c0_eni8_5_59_sticky_ena_q);

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_last(CONSTANT,1161)
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_last_q <= "0110111";

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmp(LOGICAL,1162)
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmp_b <= STD_LOGIC_VECTOR("0" & redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_q);
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmp_q <= "1" WHEN redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_last_q = redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmp_b ELSE "0";

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmpReg(REG,1163)
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmpReg_q <= STD_LOGIC_VECTOR(redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmp_q);
        END IF;
    END PROCESS;

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_sticky_ena(REG,1166)
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist133_sync_in_aunroll_x_in_c0_eni8_5_59_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist133_sync_in_aunroll_x_in_c0_eni8_5_59_nor_q = "1") THEN
                redist133_sync_in_aunroll_x_in_c0_eni8_5_59_sticky_ena_q <= STD_LOGIC_VECTOR(redist133_sync_in_aunroll_x_in_c0_eni8_5_59_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_enaAnd(LOGICAL,1167)
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_enaAnd_q <= redist133_sync_in_aunroll_x_in_c0_eni8_5_59_sticky_ena_q and VCC_q;

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt(COUNTER,1159)
    -- low=0, high=56, step=1, init=0
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_i <= TO_UNSIGNED(0, 6);
            redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_i = TO_UNSIGNED(55, 6)) THEN
                redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_eq <= '1';
            ELSE
                redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_eq <= '0';
            END IF;
            IF (redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_eq = '1') THEN
                redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_i <= redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_i + 8;
            ELSE
                redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_i <= redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_i, 6)));

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_wraddr(REG,1160)
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist133_sync_in_aunroll_x_in_c0_eni8_5_59_wraddr_q <= "111000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist133_sync_in_aunroll_x_in_c0_eni8_5_59_wraddr_q <= STD_LOGIC_VECTOR(redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem(DUALMEM,1158)
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni8_5);
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_aa <= redist133_sync_in_aunroll_x_in_c0_eni8_5_59_wraddr_q;
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_ab <= redist133_sync_in_aunroll_x_in_c0_eni8_5_59_rdcnt_q;
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_reset0 <= not (resetn);
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 6,
        numwords_a => 57,
        width_b => 32,
        widthad_b => 6,
        numwords_b => 57,
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
        clocken1 => redist133_sync_in_aunroll_x_in_c0_eni8_5_59_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_reset0,
        clock1 => clock,
        address_a => redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_aa,
        data_a => redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_ab,
        q_b => redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_iq
    );
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_q <= redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_iq(31 downto 0);

    -- redist133_sync_in_aunroll_x_in_c0_eni8_5_59_outputreg(DELAY,1157)
    redist133_sync_in_aunroll_x_in_c0_eni8_5_59_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist133_sync_in_aunroll_x_in_c0_eni8_5_59_mem_q, xout => redist133_sync_in_aunroll_x_in_c0_eni8_5_59_outputreg_q, clk => clock, aclr => resetn );

    -- i_mul24_conv_bs4(BITSELECT,506)@55
    i_mul24_conv_bs4_in <= STD_LOGIC_VECTOR(resFinalIntDiv_uid169_i_div22_conv_q(17 downto 0));
    i_mul24_conv_bs4_b <= STD_LOGIC_VECTOR(i_mul24_conv_bs4_in(17 downto 0));

    -- i_mul24_conv_bjA5(BITJOIN,507)@55
    i_mul24_conv_bjA5_q <= GND_q & i_mul24_conv_bs4_b;

    -- i_syncbuf_k_conv_sync_buffer_conv(BLACKBOX,90)@0
    -- in in_i_dependence@55
    -- in in_valid_in@55
    -- out out_buffer_out@55
    -- out out_valid_out@55
    thei_syncbuf_k_conv_sync_buffer_conv : i_syncbuf_k_conv_sync_buffer_conv267
    PORT MAP (
        in_buffer_in => in_K_conv,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist139_sync_in_aunroll_x_in_i_valid_54_q,
        out_buffer_out => i_syncbuf_k_conv_sync_buffer_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul24_conv_bs2_merged_bit_select(BITSELECT,806)@55
    i_mul24_conv_bs2_merged_bit_select_b <= i_syncbuf_k_conv_sync_buffer_conv_out_buffer_out(17 downto 0);
    i_mul24_conv_bs2_merged_bit_select_c <= i_syncbuf_k_conv_sync_buffer_conv_out_buffer_out(31 downto 18);

    -- i_mul24_conv_bjB9(BITJOIN,511)@55
    i_mul24_conv_bjB9_q <= GND_q & i_mul24_conv_bs2_merged_bit_select_b;

    -- i_mul24_conv_bs7(BITSELECT,509)@55
    i_mul24_conv_bs7_b <= STD_LOGIC_VECTOR(resFinalIntDiv_uid169_i_div22_conv_q(31 downto 18));

    -- i_mul24_conv_ma3_cma(CHAINMULTADD,798)@55 + 2
    i_mul24_conv_ma3_cma_reset <= not (resetn);
    i_mul24_conv_ma3_cma_ena0 <= '1';
    i_mul24_conv_ma3_cma_ena1 <= i_mul24_conv_ma3_cma_ena0;
    i_mul24_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul24_conv_ma3_cma_a0(0),15));
    i_mul24_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul24_conv_ma3_cma_a0(1),15));
    i_mul24_conv_ma3_cma_p(0) <= i_mul24_conv_ma3_cma_l(0) * i_mul24_conv_ma3_cma_c0(0);
    i_mul24_conv_ma3_cma_p(1) <= i_mul24_conv_ma3_cma_l(1) * i_mul24_conv_ma3_cma_c0(1);
    i_mul24_conv_ma3_cma_u(0) <= RESIZE(i_mul24_conv_ma3_cma_p(0),35);
    i_mul24_conv_ma3_cma_u(1) <= RESIZE(i_mul24_conv_ma3_cma_p(1),35);
    i_mul24_conv_ma3_cma_w(0) <= i_mul24_conv_ma3_cma_u(0) + i_mul24_conv_ma3_cma_u(1);
    i_mul24_conv_ma3_cma_x(0) <= i_mul24_conv_ma3_cma_w(0);
    i_mul24_conv_ma3_cma_y(0) <= i_mul24_conv_ma3_cma_x(0);
    i_mul24_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul24_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_ma3_cma_ena0 = '1') THEN
                i_mul24_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul24_conv_bs7_b),14);
                i_mul24_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul24_conv_bs2_merged_bit_select_c),14);
                i_mul24_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul24_conv_bjB9_q),19);
                i_mul24_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul24_conv_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_ma3_cma_ena1 = '1') THEN
                i_mul24_conv_ma3_cma_s(0) <= i_mul24_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul24_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul24_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul24_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul24_conv_ma3_cma_qq(33 downto 0));

    -- redist28_i_mul24_conv_ma3_cma_q_1(DELAY,855)
    redist28_i_mul24_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_conv_ma3_cma_q, xout => redist28_i_mul24_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul24_conv_align_14(BITSHIFT,516)@58
    i_mul24_conv_align_14_qint <= redist28_i_mul24_conv_ma3_cma_q_1_q & "000000000000000000";
    i_mul24_conv_align_14_q <= i_mul24_conv_align_14_qint(51 downto 0);

    -- i_mul24_conv_bs11(BITSELECT,513)@55
    i_mul24_conv_bs11_b <= resFinalIntDiv_uid169_i_div22_conv_q(31 downto 18);

    -- i_mul24_conv_im10_cma(CHAINMULTADD,782)@55 + 2
    i_mul24_conv_im10_cma_reset <= not (resetn);
    i_mul24_conv_im10_cma_ena0 <= '1';
    i_mul24_conv_im10_cma_ena1 <= i_mul24_conv_im10_cma_ena0;
    i_mul24_conv_im10_cma_p(0) <= i_mul24_conv_im10_cma_a0(0) * i_mul24_conv_im10_cma_c0(0);
    i_mul24_conv_im10_cma_u(0) <= RESIZE(i_mul24_conv_im10_cma_p(0),28);
    i_mul24_conv_im10_cma_w(0) <= i_mul24_conv_im10_cma_u(0);
    i_mul24_conv_im10_cma_x(0) <= i_mul24_conv_im10_cma_w(0);
    i_mul24_conv_im10_cma_y(0) <= i_mul24_conv_im10_cma_x(0);
    i_mul24_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul24_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_im10_cma_ena0 = '1') THEN
                i_mul24_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul24_conv_bs11_b),14);
                i_mul24_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul24_conv_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_im10_cma_ena1 = '1') THEN
                i_mul24_conv_im10_cma_s(0) <= i_mul24_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul24_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul24_conv_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul24_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul24_conv_im10_cma_qq(27 downto 0));

    -- redist44_i_mul24_conv_im10_cma_q_1(DELAY,871)
    redist44_i_mul24_conv_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_conv_im10_cma_q, xout => redist44_i_mul24_conv_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul24_conv_bs1(BITSELECT,503)@55
    i_mul24_conv_bs1_in <= resFinalIntDiv_uid169_i_div22_conv_q(17 downto 0);
    i_mul24_conv_bs1_b <= i_mul24_conv_bs1_in(17 downto 0);

    -- i_mul24_conv_im0_cma(CHAINMULTADD,781)@55 + 2
    i_mul24_conv_im0_cma_reset <= not (resetn);
    i_mul24_conv_im0_cma_ena0 <= '1';
    i_mul24_conv_im0_cma_ena1 <= i_mul24_conv_im0_cma_ena0;
    i_mul24_conv_im0_cma_p(0) <= i_mul24_conv_im0_cma_a0(0) * i_mul24_conv_im0_cma_c0(0);
    i_mul24_conv_im0_cma_u(0) <= RESIZE(i_mul24_conv_im0_cma_p(0),36);
    i_mul24_conv_im0_cma_w(0) <= i_mul24_conv_im0_cma_u(0);
    i_mul24_conv_im0_cma_x(0) <= i_mul24_conv_im0_cma_w(0);
    i_mul24_conv_im0_cma_y(0) <= i_mul24_conv_im0_cma_x(0);
    i_mul24_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul24_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_im0_cma_ena0 = '1') THEN
                i_mul24_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul24_conv_bs1_b),18);
                i_mul24_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul24_conv_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_im0_cma_ena1 = '1') THEN
                i_mul24_conv_im0_cma_s(0) <= i_mul24_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul24_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul24_conv_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul24_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul24_conv_im0_cma_qq(35 downto 0));

    -- redist45_i_mul24_conv_im0_cma_q_1(DELAY,872)
    redist45_i_mul24_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_conv_im0_cma_q, xout => redist45_i_mul24_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul24_conv_join_13(BITJOIN,515)@58
    i_mul24_conv_join_13_q <= redist44_i_mul24_conv_im10_cma_q_1_q & redist45_i_mul24_conv_im0_cma_q_1_q;

    -- i_mul24_conv_result_add_0_0(ADD,518)@58
    i_mul24_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul24_conv_join_13_q));
    i_mul24_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul24_conv_align_14_q(51)) & i_mul24_conv_align_14_q));
    i_mul24_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul24_conv_result_add_0_0_a) + SIGNED(i_mul24_conv_result_add_0_0_b));
    i_mul24_conv_result_add_0_0_q <= i_mul24_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul24_conv_rnd_sel(BITSELECT,477)@58
    bgTrunc_i_mul24_conv_rnd_sel_in <= i_mul24_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul24_conv_rnd_sel_b <= bgTrunc_i_mul24_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul24_conv_sel_x(BITSELECT,8)@58
    bgTrunc_i_mul24_conv_sel_x_b <= bgTrunc_i_mul24_conv_rnd_sel_b(31 downto 0);

    -- redist154_bgTrunc_i_mul24_conv_sel_x_b_1(DELAY,981)
    redist154_bgTrunc_i_mul24_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul24_conv_sel_x_b, xout => redist154_bgTrunc_i_mul24_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_p_conv_sync_buffer_conv(BLACKBOX,96)@0
    -- in in_i_dependence@58
    -- in in_valid_in@58
    -- out out_buffer_out@58
    -- out out_valid_out@58
    thei_syncbuf_p_conv_sync_buffer_conv : i_syncbuf_p_conv_sync_buffer_conv269
    PORT MAP (
        in_buffer_in => in_P_conv,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist141_sync_in_aunroll_x_in_i_valid_57_q,
        out_buffer_out => i_syncbuf_p_conv_sync_buffer_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- redist151_bgTrunc_i_sub21_conv_sel_x_b_19_inputreg(DELAY,1181)
    redist151_bgTrunc_i_sub21_conv_sel_x_b_19_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist150_bgTrunc_i_sub21_conv_sel_x_b_15_outputreg_q, xout => redist151_bgTrunc_i_sub21_conv_sel_x_b_19_inputreg_q, clk => clock, aclr => resetn );

    -- redist151_bgTrunc_i_sub21_conv_sel_x_b_19(DELAY,978)
    redist151_bgTrunc_i_sub21_conv_sel_x_b_19 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist151_bgTrunc_i_sub21_conv_sel_x_b_19_inputreg_q, xout => redist151_bgTrunc_i_sub21_conv_sel_x_b_19_q, clk => clock, aclr => resetn );

    -- redist151_bgTrunc_i_sub21_conv_sel_x_b_19_outputreg(DELAY,1182)
    redist151_bgTrunc_i_sub21_conv_sel_x_b_19_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist151_bgTrunc_i_sub21_conv_sel_x_b_19_q, xout => redist151_bgTrunc_i_sub21_conv_sel_x_b_19_outputreg_q, clk => clock, aclr => resetn );

    -- i_sub25_conv(SUB,86)@58
    i_sub25_conv_a <= STD_LOGIC_VECTOR("0" & redist151_bgTrunc_i_sub21_conv_sel_x_b_19_outputreg_q);
    i_sub25_conv_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_p_conv_sync_buffer_conv_out_buffer_out);
    i_sub25_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub25_conv_a) - UNSIGNED(i_sub25_conv_b));
    i_sub25_conv_q <= i_sub25_conv_o(32 downto 0);

    -- bgTrunc_i_sub25_conv_sel_x(BITSELECT,13)@58
    bgTrunc_i_sub25_conv_sel_x_b <= STD_LOGIC_VECTOR(i_sub25_conv_q(31 downto 0));

    -- redist146_bgTrunc_i_sub25_conv_sel_x_b_1(DELAY,973)
    redist146_bgTrunc_i_sub25_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub25_conv_sel_x_b, xout => redist146_bgTrunc_i_sub25_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub26_conv(SUB,87)@59
    i_sub26_conv_a <= STD_LOGIC_VECTOR("0" & redist146_bgTrunc_i_sub25_conv_sel_x_b_1_q);
    i_sub26_conv_b <= STD_LOGIC_VECTOR("0" & redist154_bgTrunc_i_mul24_conv_sel_x_b_1_q);
    i_sub26_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub26_conv_a) - UNSIGNED(i_sub26_conv_b));
    i_sub26_conv_q <= i_sub26_conv_o(32 downto 0);

    -- bgTrunc_i_sub26_conv_sel_x(BITSELECT,14)@59
    bgTrunc_i_sub26_conv_sel_x_b <= STD_LOGIC_VECTOR(i_sub26_conv_q(31 downto 0));

    -- redist145_bgTrunc_i_sub26_conv_sel_x_b_1(DELAY,972)
    redist145_bgTrunc_i_sub26_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub26_conv_sel_x_b, xout => redist145_bgTrunc_i_sub26_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add33_conv(ADD,57)@60
    i_add33_conv_a <= STD_LOGIC_VECTOR("0" & redist145_bgTrunc_i_sub26_conv_sel_x_b_1_q);
    i_add33_conv_b <= STD_LOGIC_VECTOR("0" & redist133_sync_in_aunroll_x_in_c0_eni8_5_59_outputreg_q);
    i_add33_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add33_conv_a) + UNSIGNED(i_add33_conv_b));
    i_add33_conv_q <= i_add33_conv_o(32 downto 0);

    -- bgTrunc_i_add33_conv_sel_x(BITSELECT,4)@60
    bgTrunc_i_add33_conv_sel_x_b <= i_add33_conv_q(31 downto 0);

    -- redist158_bgTrunc_i_add33_conv_sel_x_b_1(DELAY,985)
    redist158_bgTrunc_i_add33_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add33_conv_sel_x_b, xout => redist158_bgTrunc_i_add33_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp48_conv_cmp_sign(LOGICAL,771)@61
    i_cmp48_conv_cmp_sign_q <= STD_LOGIC_VECTOR(redist158_bgTrunc_i_add33_conv_sel_x_b_1_q(31 downto 31));

    -- i_reduction_conv_1_conv(LOGICAL,81)@61
    i_reduction_conv_1_conv_q <= i_cmp48_conv_cmp_sign_q or redist128_i_cmp51_conv_n_3_q;

    -- i_cmp45_conv_cmp_sign(LOGICAL,769)@58
    i_cmp45_conv_cmp_sign_q <= STD_LOGIC_VECTOR(redist160_bgTrunc_i_add29_conv_sel_x_b_1_q(31 downto 31));

    -- redist135_sync_in_aunroll_x_in_c0_eni8_7_57(DELAY,962)
    redist135_sync_in_aunroll_x_in_c0_eni8_7_57 : dspba_delay
    GENERIC MAP ( width => 1, depth => 57, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni8_7, xout => redist135_sync_in_aunroll_x_in_c0_eni8_7_57_q, clk => clock, aclr => resetn );

    -- i_reduction_conv_0_conv(LOGICAL,80)@58 + 1
    i_reduction_conv_0_conv_qi <= redist135_sync_in_aunroll_x_in_c0_eni8_7_57_q or i_cmp45_conv_cmp_sign_q;
    i_reduction_conv_0_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_conv_0_conv_qi, xout => i_reduction_conv_0_conv_q, clk => clock, aclr => resetn );

    -- redist126_i_reduction_conv_0_conv_q_3(DELAY,953)
    redist126_i_reduction_conv_0_conv_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_conv_0_conv_q, xout => redist126_i_reduction_conv_0_conv_q_3_q, clk => clock, aclr => resetn );

    -- i_reduction_conv_2_conv(LOGICAL,82)@61 + 1
    i_reduction_conv_2_conv_qi <= redist126_i_reduction_conv_0_conv_q_3_q or i_reduction_conv_1_conv_q;
    i_reduction_conv_2_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_conv_2_conv_qi, xout => i_reduction_conv_2_conv_q, clk => clock, aclr => resetn );

    -- i_syncbuf_n_fin_dim_sync_buffer_conv(BLACKBOX,93)@0
    -- in in_i_dependence@61
    -- in in_valid_in@61
    -- out out_buffer_out@61
    -- out out_valid_out@61
    thei_syncbuf_n_fin_dim_sync_buffer_conv : i_syncbuf_n_fin_dim_sync_buffer_conv281
    PORT MAP (
        in_buffer_in => in_N_Fin_dim,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist142_sync_in_aunroll_x_in_i_valid_60_q,
        out_buffer_out => i_syncbuf_n_fin_dim_sync_buffer_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp54_conv(COMPARE,68)@61 + 1
    i_cmp54_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist158_bgTrunc_i_add33_conv_sel_x_b_1_q(31)) & redist158_bgTrunc_i_add33_conv_sel_x_b_1_q));
    i_cmp54_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_n_fin_dim_sync_buffer_conv_out_buffer_out(31)) & i_syncbuf_n_fin_dim_sync_buffer_conv_out_buffer_out));
    i_cmp54_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp54_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp54_conv_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp54_conv_a) - SIGNED(i_cmp54_conv_b));
        END IF;
    END PROCESS;
    i_cmp54_conv_n(0) <= not (i_cmp54_conv_o(33));

    -- i_reduction_conv_3_conv(LOGICAL,83)@62
    i_reduction_conv_3_conv_q <= i_cmp54_conv_n or i_reduction_conv_2_conv_q;

    -- redist134_sync_in_aunroll_x_in_c0_eni8_6_1(DELAY,961)
    redist134_sync_in_aunroll_x_in_c0_eni8_6_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni8_6, xout => redist134_sync_in_aunroll_x_in_c0_eni8_6_1_q, clk => clock, aclr => resetn );

    -- i_cmp39_conv(COMPARE,64)@2 + 1
    i_cmp39_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist134_sync_in_aunroll_x_in_c0_eni8_6_1_q(31)) & redist134_sync_in_aunroll_x_in_c0_eni8_6_1_q));
    i_cmp39_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist161_bgTrunc_i_add19_conv_sel_x_b_1_q(31)) & redist161_bgTrunc_i_add19_conv_sel_x_b_1_q));
    i_cmp39_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp39_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp39_conv_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp39_conv_a) - SIGNED(i_cmp39_conv_b));
        END IF;
    END PROCESS;
    i_cmp39_conv_c(0) <= i_cmp39_conv_o(33);

    -- redist129_i_cmp39_conv_c_60(DELAY,956)
    redist129_i_cmp39_conv_c_60 : dspba_delay
    GENERIC MAP ( width => 1, depth => 59, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp39_conv_c, xout => redist129_i_cmp39_conv_c_60_q, clk => clock, aclr => resetn );

    -- i_demorgan_conv(LOGICAL,69)@62 + 1
    i_demorgan_conv_qi <= redist129_i_cmp39_conv_c_60_q or i_reduction_conv_3_conv_q;
    i_demorgan_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_demorgan_conv_qi, xout => i_demorgan_conv_q, clk => clock, aclr => resetn );

    -- redist127_i_demorgan_conv_q_3(DELAY,954)
    redist127_i_demorgan_conv_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_demorgan_conv_q, xout => redist127_i_demorgan_conv_q_3_q, clk => clock, aclr => resetn );

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_notEnable(LOGICAL,1237)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_nor(LOGICAL,1238)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_nor_q <= not (redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_notEnable_q or redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_sticky_ena_q);

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_last(CONSTANT,1234)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_last_q <= "011101";

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmp(LOGICAL,1235)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmp_b <= STD_LOGIC_VECTOR("0" & redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_q);
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmp_q <= "1" WHEN redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_last_q = redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmp_b ELSE "0";

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmpReg(REG,1236)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmpReg_q <= STD_LOGIC_VECTOR(redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmp_q);
        END IF;
    END PROCESS;

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_sticky_ena(REG,1239)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_nor_q = "1") THEN
                redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_sticky_ena_q <= STD_LOGIC_VECTOR(redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_enaAnd(LOGICAL,1240)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_enaAnd_q <= redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_sticky_ena_q and VCC_q;

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt(COUNTER,1232)
    -- low=0, high=30, step=1, init=0
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_eq <= '1';
            ELSE
                redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_eq <= '0';
            END IF;
            IF (redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_eq = '1') THEN
                redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_i <= redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_i + 2;
            ELSE
                redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_i <= redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_i, 5)));

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_wraddr(REG,1233)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_wraddr_q <= "11110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_wraddr_q <= STD_LOGIC_VECTOR(redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem(DUALMEM,1231)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni8_8);
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_aa <= redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_wraddr_q;
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_ab <= redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_rdcnt_q;
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_reset0 <= not (resetn);
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 1,
        widthad_a => 5,
        numwords_a => 31,
        width_b => 1,
        widthad_b => 5,
        numwords_b => 31,
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
        clocken1 => redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_reset0,
        clock1 => clock,
        address_a => redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_aa,
        data_a => redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_ab,
        q_b => redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_iq
    );
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_q <= redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_iq(0 downto 0);

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_outputreg(DELAY,1230)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_outputreg : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_mem_q, xout => redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_outputreg_q, clk => clock, aclr => resetn );

    -- redist136_sync_in_aunroll_x_in_c0_eni8_8_61(DELAY,963)
    redist136_sync_in_aunroll_x_in_c0_eni8_8_61 : dspba_delay
    GENERIC MAP ( width => 1, depth => 28, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist136_sync_in_aunroll_x_in_c0_eni8_8_61_split_0_outputreg_q, xout => redist136_sync_in_aunroll_x_in_c0_eni8_8_61_q, clk => clock, aclr => resetn );

    -- i_acl_27_xor_or_conv(LOGICAL,54)@62
    i_acl_27_xor_or_conv_q <= i_reduction_conv_3_conv_q or redist129_i_cmp39_conv_c_60_q;

    -- i_cmp22_or33_conv(LOGICAL,63)@62 + 1
    i_cmp22_or33_conv_qi <= i_acl_27_xor_or_conv_q or redist136_sync_in_aunroll_x_in_c0_eni8_8_61_q;
    i_cmp22_or33_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp22_or33_conv_qi, xout => i_cmp22_or33_conv_q, clk => clock, aclr => resetn );

    -- redist130_i_cmp22_or33_conv_q_3(DELAY,957)
    redist130_i_cmp22_or33_conv_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp22_or33_conv_q, xout => redist130_i_cmp22_or33_conv_q_3_q, clk => clock, aclr => resetn );

    -- i_arrayidx57_conv_conv286_mult_multconst_x(CONSTANT,30)
    i_arrayidx57_conv_conv286_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- redist159_bgTrunc_i_add33_conv_sel_x_b_3(DELAY,986)
    redist159_bgTrunc_i_add33_conv_sel_x_b_3 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist158_bgTrunc_i_add33_conv_sel_x_b_1_q, xout => redist159_bgTrunc_i_add33_conv_sel_x_b_3_q, clk => clock, aclr => resetn );

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_notEnable(LOGICAL,1191)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_nor(LOGICAL,1192)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_nor_q <= not (redist153_bgTrunc_i_mul34_conv_sel_x_b_24_notEnable_q or redist153_bgTrunc_i_mul34_conv_sel_x_b_24_sticky_ena_q);

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_last(CONSTANT,1188)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_last_q <= "010011";

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmp(LOGICAL,1189)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmp_b <= STD_LOGIC_VECTOR("0" & redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_q);
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmp_q <= "1" WHEN redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_last_q = redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmp_b ELSE "0";

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmpReg(REG,1190)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmpReg_q <= STD_LOGIC_VECTOR(redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmp_q);
        END IF;
    END PROCESS;

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_sticky_ena(REG,1193)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist153_bgTrunc_i_mul34_conv_sel_x_b_24_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist153_bgTrunc_i_mul34_conv_sel_x_b_24_nor_q = "1") THEN
                redist153_bgTrunc_i_mul34_conv_sel_x_b_24_sticky_ena_q <= STD_LOGIC_VECTOR(redist153_bgTrunc_i_mul34_conv_sel_x_b_24_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_enaAnd(LOGICAL,1194)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_enaAnd_q <= redist153_bgTrunc_i_mul34_conv_sel_x_b_24_sticky_ena_q and VCC_q;

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt(COUNTER,1186)
    -- low=0, high=20, step=1, init=0
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_i = TO_UNSIGNED(19, 5)) THEN
                redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_eq <= '1';
            ELSE
                redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_eq <= '0';
            END IF;
            IF (redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_eq = '1') THEN
                redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_i <= redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_i + 12;
            ELSE
                redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_i <= redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_i, 5)));

    -- i_syncbuf_n_fin_sq_pad_sync_buffer_conv(BLACKBOX,94)@0
    -- in in_i_dependence@35
    -- in in_valid_in@35
    -- out out_buffer_out@35
    -- out out_valid_out@35
    thei_syncbuf_n_fin_sq_pad_sync_buffer_conv : i_syncbuf_n_fin_sq_pad_sync_buffer_conv271
    PORT MAP (
        in_buffer_in => in_N_Fin_sq_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist138_sync_in_aunroll_x_in_i_valid_34_q,
        out_buffer_out => i_syncbuf_n_fin_sq_pad_sync_buffer_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul34_conv_bs2_merged_bit_select(BITSELECT,808)@35
    i_mul34_conv_bs2_merged_bit_select_b <= i_syncbuf_n_fin_sq_pad_sync_buffer_conv_out_buffer_out(17 downto 0);
    i_mul34_conv_bs2_merged_bit_select_c <= i_syncbuf_n_fin_sq_pad_sync_buffer_conv_out_buffer_out(31 downto 18);

    -- i_mul34_conv_bjB9(BITJOIN,528)@35
    i_mul34_conv_bjB9_q <= GND_q & i_mul34_conv_bs2_merged_bit_select_b;

    -- i_mul34_conv_ma3_cma(CHAINMULTADD,799)@35 + 2
    i_mul34_conv_ma3_cma_reset <= not (resetn);
    i_mul34_conv_ma3_cma_ena0 <= '1';
    i_mul34_conv_ma3_cma_ena1 <= i_mul34_conv_ma3_cma_ena0;
    i_mul34_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul34_conv_ma3_cma_a0(0),15));
    i_mul34_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul34_conv_ma3_cma_a0(1),15));
    i_mul34_conv_ma3_cma_p(0) <= i_mul34_conv_ma3_cma_l(0) * i_mul34_conv_ma3_cma_c0(0);
    i_mul34_conv_ma3_cma_p(1) <= i_mul34_conv_ma3_cma_l(1) * i_mul34_conv_ma3_cma_c0(1);
    i_mul34_conv_ma3_cma_u(0) <= RESIZE(i_mul34_conv_ma3_cma_p(0),35);
    i_mul34_conv_ma3_cma_u(1) <= RESIZE(i_mul34_conv_ma3_cma_p(1),35);
    i_mul34_conv_ma3_cma_w(0) <= i_mul34_conv_ma3_cma_u(0) + i_mul34_conv_ma3_cma_u(1);
    i_mul34_conv_ma3_cma_x(0) <= i_mul34_conv_ma3_cma_w(0);
    i_mul34_conv_ma3_cma_y(0) <= i_mul34_conv_ma3_cma_x(0);
    i_mul34_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul34_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_conv_ma3_cma_ena0 = '1') THEN
                i_mul34_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul20_conv_bs7_b),14);
                i_mul34_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul34_conv_bs2_merged_bit_select_c),14);
                i_mul34_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul34_conv_bjB9_q),19);
                i_mul34_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul20_conv_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_conv_ma3_cma_ena1 = '1') THEN
                i_mul34_conv_ma3_cma_s(0) <= i_mul34_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul34_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul34_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul34_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul34_conv_ma3_cma_qq(33 downto 0));

    -- redist27_i_mul34_conv_ma3_cma_q_1(DELAY,854)
    redist27_i_mul34_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul34_conv_ma3_cma_q, xout => redist27_i_mul34_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul34_conv_align_14(BITSHIFT,533)@38
    i_mul34_conv_align_14_qint <= redist27_i_mul34_conv_ma3_cma_q_1_q & "000000000000000000";
    i_mul34_conv_align_14_q <= i_mul34_conv_align_14_qint(51 downto 0);

    -- i_mul34_conv_im10_cma(CHAINMULTADD,784)@35 + 2
    i_mul34_conv_im10_cma_reset <= not (resetn);
    i_mul34_conv_im10_cma_ena0 <= '1';
    i_mul34_conv_im10_cma_ena1 <= i_mul34_conv_im10_cma_ena0;
    i_mul34_conv_im10_cma_p(0) <= i_mul34_conv_im10_cma_a0(0) * i_mul34_conv_im10_cma_c0(0);
    i_mul34_conv_im10_cma_u(0) <= RESIZE(i_mul34_conv_im10_cma_p(0),28);
    i_mul34_conv_im10_cma_w(0) <= i_mul34_conv_im10_cma_u(0);
    i_mul34_conv_im10_cma_x(0) <= i_mul34_conv_im10_cma_w(0);
    i_mul34_conv_im10_cma_y(0) <= i_mul34_conv_im10_cma_x(0);
    i_mul34_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul34_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_conv_im10_cma_ena0 = '1') THEN
                i_mul34_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul20_conv_bs11_b),14);
                i_mul34_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul34_conv_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_conv_im10_cma_ena1 = '1') THEN
                i_mul34_conv_im10_cma_s(0) <= i_mul34_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul34_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul34_conv_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul34_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul34_conv_im10_cma_qq(27 downto 0));

    -- redist42_i_mul34_conv_im10_cma_q_1(DELAY,869)
    redist42_i_mul34_conv_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul34_conv_im10_cma_q, xout => redist42_i_mul34_conv_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul34_conv_im0_cma(CHAINMULTADD,783)@35 + 2
    i_mul34_conv_im0_cma_reset <= not (resetn);
    i_mul34_conv_im0_cma_ena0 <= '1';
    i_mul34_conv_im0_cma_ena1 <= i_mul34_conv_im0_cma_ena0;
    i_mul34_conv_im0_cma_p(0) <= i_mul34_conv_im0_cma_a0(0) * i_mul34_conv_im0_cma_c0(0);
    i_mul34_conv_im0_cma_u(0) <= RESIZE(i_mul34_conv_im0_cma_p(0),36);
    i_mul34_conv_im0_cma_w(0) <= i_mul34_conv_im0_cma_u(0);
    i_mul34_conv_im0_cma_x(0) <= i_mul34_conv_im0_cma_w(0);
    i_mul34_conv_im0_cma_y(0) <= i_mul34_conv_im0_cma_x(0);
    i_mul34_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul34_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_conv_im0_cma_ena0 = '1') THEN
                i_mul34_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul20_conv_bs1_b),18);
                i_mul34_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul34_conv_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_conv_im0_cma_ena1 = '1') THEN
                i_mul34_conv_im0_cma_s(0) <= i_mul34_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul34_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul34_conv_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul34_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul34_conv_im0_cma_qq(35 downto 0));

    -- redist43_i_mul34_conv_im0_cma_q_1(DELAY,870)
    redist43_i_mul34_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul34_conv_im0_cma_q, xout => redist43_i_mul34_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul34_conv_join_13(BITJOIN,532)@38
    i_mul34_conv_join_13_q <= redist42_i_mul34_conv_im10_cma_q_1_q & redist43_i_mul34_conv_im0_cma_q_1_q;

    -- i_mul34_conv_result_add_0_0(ADD,535)@38
    i_mul34_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul34_conv_join_13_q));
    i_mul34_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul34_conv_align_14_q(51)) & i_mul34_conv_align_14_q));
    i_mul34_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul34_conv_result_add_0_0_a) + SIGNED(i_mul34_conv_result_add_0_0_b));
    i_mul34_conv_result_add_0_0_q <= i_mul34_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul34_conv_rnd_sel(BITSELECT,478)@38
    bgTrunc_i_mul34_conv_rnd_sel_in <= i_mul34_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul34_conv_rnd_sel_b <= bgTrunc_i_mul34_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul34_conv_sel_x(BITSELECT,9)@38
    bgTrunc_i_mul34_conv_sel_x_b <= bgTrunc_i_mul34_conv_rnd_sel_b(31 downto 0);

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_inputreg(DELAY,1183)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul34_conv_sel_x_b, xout => redist153_bgTrunc_i_mul34_conv_sel_x_b_24_inputreg_q, clk => clock, aclr => resetn );

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_wraddr(REG,1187)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist153_bgTrunc_i_mul34_conv_sel_x_b_24_wraddr_q <= "10100";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist153_bgTrunc_i_mul34_conv_sel_x_b_24_wraddr_q <= STD_LOGIC_VECTOR(redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem(DUALMEM,1185)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_ia <= STD_LOGIC_VECTOR(redist153_bgTrunc_i_mul34_conv_sel_x_b_24_inputreg_q);
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_aa <= redist153_bgTrunc_i_mul34_conv_sel_x_b_24_wraddr_q;
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_ab <= redist153_bgTrunc_i_mul34_conv_sel_x_b_24_rdcnt_q;
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_reset0 <= not (resetn);
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 21,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 21,
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
        clocken1 => redist153_bgTrunc_i_mul34_conv_sel_x_b_24_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_reset0,
        clock1 => clock,
        address_a => redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_aa,
        data_a => redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_ab,
        q_b => redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_iq
    );
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_q <= redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_iq(31 downto 0);

    -- redist153_bgTrunc_i_mul34_conv_sel_x_b_24_outputreg(DELAY,1184)
    redist153_bgTrunc_i_mul34_conv_sel_x_b_24_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist153_bgTrunc_i_mul34_conv_sel_x_b_24_mem_q, xout => redist153_bgTrunc_i_mul34_conv_sel_x_b_24_outputreg_q, clk => clock, aclr => resetn );

    -- i_mul35_conv_bs4(BITSELECT,540)@58
    i_mul35_conv_bs4_in <= STD_LOGIC_VECTOR(redist160_bgTrunc_i_add29_conv_sel_x_b_1_q(17 downto 0));
    i_mul35_conv_bs4_b <= STD_LOGIC_VECTOR(i_mul35_conv_bs4_in(17 downto 0));

    -- i_mul35_conv_bjA5(BITJOIN,541)@58
    i_mul35_conv_bjA5_q <= GND_q & i_mul35_conv_bs4_b;

    -- i_syncbuf_n_fin_dim_sync_buffer99_conv(BLACKBOX,92)@0
    -- in in_i_dependence@58
    -- in in_valid_in@58
    -- out out_buffer_out@58
    -- out out_valid_out@58
    thei_syncbuf_n_fin_dim_sync_buffer99_conv : i_syncbuf_n_fin_dim_sync_buffer99_conv273
    PORT MAP (
        in_buffer_in => in_N_Fin_dim,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist141_sync_in_aunroll_x_in_i_valid_57_q,
        out_buffer_out => i_syncbuf_n_fin_dim_sync_buffer99_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul35_conv_bs2_merged_bit_select(BITSELECT,807)@58
    i_mul35_conv_bs2_merged_bit_select_b <= i_syncbuf_n_fin_dim_sync_buffer99_conv_out_buffer_out(17 downto 0);
    i_mul35_conv_bs2_merged_bit_select_c <= i_syncbuf_n_fin_dim_sync_buffer99_conv_out_buffer_out(31 downto 18);

    -- i_mul35_conv_bjB9(BITJOIN,545)@58
    i_mul35_conv_bjB9_q <= GND_q & i_mul35_conv_bs2_merged_bit_select_b;

    -- i_mul35_conv_bs7(BITSELECT,543)@58
    i_mul35_conv_bs7_b <= STD_LOGIC_VECTOR(redist160_bgTrunc_i_add29_conv_sel_x_b_1_q(31 downto 18));

    -- i_mul35_conv_ma3_cma(CHAINMULTADD,800)@58 + 2
    i_mul35_conv_ma3_cma_reset <= not (resetn);
    i_mul35_conv_ma3_cma_ena0 <= '1';
    i_mul35_conv_ma3_cma_ena1 <= i_mul35_conv_ma3_cma_ena0;
    i_mul35_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul35_conv_ma3_cma_a0(0),15));
    i_mul35_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul35_conv_ma3_cma_a0(1),15));
    i_mul35_conv_ma3_cma_p(0) <= i_mul35_conv_ma3_cma_l(0) * i_mul35_conv_ma3_cma_c0(0);
    i_mul35_conv_ma3_cma_p(1) <= i_mul35_conv_ma3_cma_l(1) * i_mul35_conv_ma3_cma_c0(1);
    i_mul35_conv_ma3_cma_u(0) <= RESIZE(i_mul35_conv_ma3_cma_p(0),35);
    i_mul35_conv_ma3_cma_u(1) <= RESIZE(i_mul35_conv_ma3_cma_p(1),35);
    i_mul35_conv_ma3_cma_w(0) <= i_mul35_conv_ma3_cma_u(0) + i_mul35_conv_ma3_cma_u(1);
    i_mul35_conv_ma3_cma_x(0) <= i_mul35_conv_ma3_cma_w(0);
    i_mul35_conv_ma3_cma_y(0) <= i_mul35_conv_ma3_cma_x(0);
    i_mul35_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul35_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul35_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul35_conv_ma3_cma_ena0 = '1') THEN
                i_mul35_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul35_conv_bs7_b),14);
                i_mul35_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul35_conv_bs2_merged_bit_select_c),14);
                i_mul35_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul35_conv_bjB9_q),19);
                i_mul35_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul35_conv_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul35_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul35_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul35_conv_ma3_cma_ena1 = '1') THEN
                i_mul35_conv_ma3_cma_s(0) <= i_mul35_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul35_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul35_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul35_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul35_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul35_conv_ma3_cma_qq(33 downto 0));

    -- redist26_i_mul35_conv_ma3_cma_q_1(DELAY,853)
    redist26_i_mul35_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul35_conv_ma3_cma_q, xout => redist26_i_mul35_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul35_conv_align_14(BITSHIFT,550)@61
    i_mul35_conv_align_14_qint <= redist26_i_mul35_conv_ma3_cma_q_1_q & "000000000000000000";
    i_mul35_conv_align_14_q <= i_mul35_conv_align_14_qint(51 downto 0);

    -- i_mul35_conv_bs11(BITSELECT,547)@58
    i_mul35_conv_bs11_b <= redist160_bgTrunc_i_add29_conv_sel_x_b_1_q(31 downto 18);

    -- i_mul35_conv_im10_cma(CHAINMULTADD,786)@58 + 2
    i_mul35_conv_im10_cma_reset <= not (resetn);
    i_mul35_conv_im10_cma_ena0 <= '1';
    i_mul35_conv_im10_cma_ena1 <= i_mul35_conv_im10_cma_ena0;
    i_mul35_conv_im10_cma_p(0) <= i_mul35_conv_im10_cma_a0(0) * i_mul35_conv_im10_cma_c0(0);
    i_mul35_conv_im10_cma_u(0) <= RESIZE(i_mul35_conv_im10_cma_p(0),28);
    i_mul35_conv_im10_cma_w(0) <= i_mul35_conv_im10_cma_u(0);
    i_mul35_conv_im10_cma_x(0) <= i_mul35_conv_im10_cma_w(0);
    i_mul35_conv_im10_cma_y(0) <= i_mul35_conv_im10_cma_x(0);
    i_mul35_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul35_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul35_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul35_conv_im10_cma_ena0 = '1') THEN
                i_mul35_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul35_conv_bs11_b),14);
                i_mul35_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul35_conv_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul35_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul35_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul35_conv_im10_cma_ena1 = '1') THEN
                i_mul35_conv_im10_cma_s(0) <= i_mul35_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul35_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul35_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul35_conv_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul35_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul35_conv_im10_cma_qq(27 downto 0));

    -- redist40_i_mul35_conv_im10_cma_q_1(DELAY,867)
    redist40_i_mul35_conv_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul35_conv_im10_cma_q, xout => redist40_i_mul35_conv_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul35_conv_bs1(BITSELECT,537)@58
    i_mul35_conv_bs1_in <= redist160_bgTrunc_i_add29_conv_sel_x_b_1_q(17 downto 0);
    i_mul35_conv_bs1_b <= i_mul35_conv_bs1_in(17 downto 0);

    -- i_mul35_conv_im0_cma(CHAINMULTADD,785)@58 + 2
    i_mul35_conv_im0_cma_reset <= not (resetn);
    i_mul35_conv_im0_cma_ena0 <= '1';
    i_mul35_conv_im0_cma_ena1 <= i_mul35_conv_im0_cma_ena0;
    i_mul35_conv_im0_cma_p(0) <= i_mul35_conv_im0_cma_a0(0) * i_mul35_conv_im0_cma_c0(0);
    i_mul35_conv_im0_cma_u(0) <= RESIZE(i_mul35_conv_im0_cma_p(0),36);
    i_mul35_conv_im0_cma_w(0) <= i_mul35_conv_im0_cma_u(0);
    i_mul35_conv_im0_cma_x(0) <= i_mul35_conv_im0_cma_w(0);
    i_mul35_conv_im0_cma_y(0) <= i_mul35_conv_im0_cma_x(0);
    i_mul35_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul35_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul35_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul35_conv_im0_cma_ena0 = '1') THEN
                i_mul35_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul35_conv_bs1_b),18);
                i_mul35_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul35_conv_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul35_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul35_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul35_conv_im0_cma_ena1 = '1') THEN
                i_mul35_conv_im0_cma_s(0) <= i_mul35_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul35_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul35_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul35_conv_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul35_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul35_conv_im0_cma_qq(35 downto 0));

    -- redist41_i_mul35_conv_im0_cma_q_1(DELAY,868)
    redist41_i_mul35_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul35_conv_im0_cma_q, xout => redist41_i_mul35_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul35_conv_join_13(BITJOIN,549)@61
    i_mul35_conv_join_13_q <= redist40_i_mul35_conv_im10_cma_q_1_q & redist41_i_mul35_conv_im0_cma_q_1_q;

    -- i_mul35_conv_result_add_0_0(ADD,552)@61
    i_mul35_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul35_conv_join_13_q));
    i_mul35_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul35_conv_align_14_q(51)) & i_mul35_conv_align_14_q));
    i_mul35_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul35_conv_result_add_0_0_a) + SIGNED(i_mul35_conv_result_add_0_0_b));
    i_mul35_conv_result_add_0_0_q <= i_mul35_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul35_conv_rnd_sel(BITSELECT,479)@61
    bgTrunc_i_mul35_conv_rnd_sel_in <= i_mul35_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul35_conv_rnd_sel_b <= bgTrunc_i_mul35_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul35_conv_sel_x(BITSELECT,10)@61
    bgTrunc_i_mul35_conv_sel_x_b <= bgTrunc_i_mul35_conv_rnd_sel_b(31 downto 0);

    -- redist152_bgTrunc_i_mul35_conv_sel_x_b_1(DELAY,979)
    redist152_bgTrunc_i_mul35_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul35_conv_sel_x_b, xout => redist152_bgTrunc_i_mul35_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add36_conv(ADD,58)@62
    i_add36_conv_a <= STD_LOGIC_VECTOR("0" & redist152_bgTrunc_i_mul35_conv_sel_x_b_1_q);
    i_add36_conv_b <= STD_LOGIC_VECTOR("0" & redist153_bgTrunc_i_mul34_conv_sel_x_b_24_outputreg_q);
    i_add36_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add36_conv_a) + UNSIGNED(i_add36_conv_b));
    i_add36_conv_q <= i_add36_conv_o(32 downto 0);

    -- bgTrunc_i_add36_conv_sel_x(BITSELECT,5)@62
    bgTrunc_i_add36_conv_sel_x_b <= i_add36_conv_q(31 downto 0);

    -- redist157_bgTrunc_i_add36_conv_sel_x_b_1(DELAY,984)
    redist157_bgTrunc_i_add36_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add36_conv_sel_x_b, xout => redist157_bgTrunc_i_add36_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add37_conv(ADD,59)@63
    i_add37_conv_a <= STD_LOGIC_VECTOR("0" & redist157_bgTrunc_i_add36_conv_sel_x_b_1_q);
    i_add37_conv_b <= STD_LOGIC_VECTOR("0" & redist159_bgTrunc_i_add33_conv_sel_x_b_3_q);
    i_add37_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add37_conv_a) + UNSIGNED(i_add37_conv_b));
    i_add37_conv_q <= i_add37_conv_o(32 downto 0);

    -- bgTrunc_i_add37_conv_sel_x(BITSELECT,6)@63
    bgTrunc_i_add37_conv_sel_x_b <= i_add37_conv_q(31 downto 0);

    -- redist156_bgTrunc_i_add37_conv_sel_x_b_1(DELAY,983)
    redist156_bgTrunc_i_add37_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add37_conv_sel_x_b, xout => redist156_bgTrunc_i_add37_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom56_conv_sel_x(BITSELECT,36)@64
    i_idxprom56_conv_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist156_bgTrunc_i_add37_conv_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select(BITSELECT,805)@64
    i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_b <= i_idxprom56_conv_sel_x_b(17 downto 0);
    i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_c <= i_idxprom56_conv_sel_x_b(63 downto 54);
    i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_d <= i_idxprom56_conv_sel_x_b(35 downto 18);
    i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_e <= i_idxprom56_conv_sel_x_b(53 downto 36);

    -- i_arrayidx57_conv_conv286_mult_x_im3_shift0(BITSHIFT,766)@64
    i_arrayidx57_conv_conv286_mult_x_im3_shift0_qint <= i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx57_conv_conv286_mult_x_im3_shift0_q <= i_arrayidx57_conv_conv286_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx57_conv_conv286_mult_x_align_15(BITSHIFT,468)@64
    i_arrayidx57_conv_conv286_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx57_conv_conv286_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx57_conv_conv286_mult_x_align_15_q <= i_arrayidx57_conv_conv286_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx57_conv_conv286_mult_x_im6_shift0(BITSHIFT,767)@64
    i_arrayidx57_conv_conv286_mult_x_im6_shift0_qint <= i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx57_conv_conv286_mult_x_im6_shift0_q <= i_arrayidx57_conv_conv286_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx57_conv_conv286_mult_x_align_14(BITSHIFT,467)@64
    i_arrayidx57_conv_conv286_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx57_conv_conv286_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx57_conv_conv286_mult_x_align_14_q <= i_arrayidx57_conv_conv286_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx57_conv_conv286_mult_x_join_16(BITJOIN,469)@64
    i_arrayidx57_conv_conv286_mult_x_join_16_q <= i_arrayidx57_conv_conv286_mult_x_align_15_q & i_arrayidx57_conv_conv286_mult_x_align_14_q;

    -- i_arrayidx57_conv_conv286_mult_x_im9_shift0(BITSHIFT,768)@64
    i_arrayidx57_conv_conv286_mult_x_im9_shift0_qint <= i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx57_conv_conv286_mult_x_im9_shift0_q <= i_arrayidx57_conv_conv286_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx57_conv_conv286_mult_x_align_12(BITSHIFT,465)@64
    i_arrayidx57_conv_conv286_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx57_conv_conv286_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx57_conv_conv286_mult_x_align_12_q <= i_arrayidx57_conv_conv286_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx57_conv_conv286_mult_x_im0_shift0(BITSHIFT,765)@64
    i_arrayidx57_conv_conv286_mult_x_im0_shift0_qint <= i_arrayidx57_conv_conv286_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx57_conv_conv286_mult_x_im0_shift0_q <= i_arrayidx57_conv_conv286_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx57_conv_conv286_mult_x_join_13(BITJOIN,466)@64
    i_arrayidx57_conv_conv286_mult_x_join_13_q <= i_arrayidx57_conv_conv286_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx57_conv_conv286_mult_x_im0_shift0_q);

    -- i_arrayidx57_conv_conv286_mult_x_result_add_0_0(ADD,470)@64
    i_arrayidx57_conv_conv286_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx57_conv_conv286_mult_x_join_13_q);
    i_arrayidx57_conv_conv286_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx57_conv_conv286_mult_x_join_16_q);
    i_arrayidx57_conv_conv286_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx57_conv_conv286_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx57_conv_conv286_mult_x_result_add_0_0_b));
    i_arrayidx57_conv_conv286_mult_x_result_add_0_0_q <= i_arrayidx57_conv_conv286_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx57_conv_conv286_mult_extender_x(BITJOIN,29)@64
    i_arrayidx57_conv_conv286_mult_extender_x_q <= i_arrayidx57_conv_conv286_mult_multconst_x_q & i_arrayidx57_conv_conv286_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx57_conv_conv286_trunc_sel_x(BITSELECT,31)@64
    i_arrayidx57_conv_conv286_trunc_sel_x_b <= i_arrayidx57_conv_conv286_mult_extender_x_q(63 downto 0);

    -- redist144_i_arrayidx57_conv_conv286_trunc_sel_x_b_1(DELAY,971)
    redist144_i_arrayidx57_conv_conv286_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx57_conv_conv286_trunc_sel_x_b, xout => redist144_i_arrayidx57_conv_conv286_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_in_data_sync_buffer_conv(BLACKBOX,88)@0
    -- in in_i_dependence@65
    -- in in_valid_in@65
    -- out out_buffer_out@65
    -- out out_valid_out@65
    thei_syncbuf_in_data_sync_buffer_conv : i_syncbuf_in_data_sync_buffer_conv284
    PORT MAP (
        in_buffer_in => in_in_data,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist143_sync_in_aunroll_x_in_i_valid_64_q,
        out_buffer_out => i_syncbuf_in_data_sync_buffer_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx57_conv_conv286_add_x(ADD,32)@65
    i_arrayidx57_conv_conv286_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_in_data_sync_buffer_conv_out_buffer_out);
    i_arrayidx57_conv_conv286_add_x_b <= STD_LOGIC_VECTOR("0" & redist144_i_arrayidx57_conv_conv286_trunc_sel_x_b_1_q);
    i_arrayidx57_conv_conv286_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx57_conv_conv286_add_x_a) + UNSIGNED(i_arrayidx57_conv_conv286_add_x_b));
    i_arrayidx57_conv_conv286_add_x_q <= i_arrayidx57_conv_conv286_add_x_o(64 downto 0);

    -- i_arrayidx57_conv_conv286_dupName_0_trunc_sel_x(BITSELECT,26)@65
    i_arrayidx57_conv_conv286_dupName_0_trunc_sel_x_b <= i_arrayidx57_conv_conv286_add_x_q(63 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,38)@65
    out_c0_exi3107_0 <= GND_q;
    out_c0_exi3107_1 <= i_arrayidx57_conv_conv286_dupName_0_trunc_sel_x_b;
    out_c0_exi3107_2 <= redist130_i_cmp22_or33_conv_q_3_q;
    out_c0_exi3107_3 <= redist127_i_demorgan_conv_q_3_q;
    out_o_valid <= redist143_sync_in_aunroll_x_in_i_valid_64_q;

END normal;
