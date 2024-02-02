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

-- VHDL created from i_sfc_logic_c1_for_body_conv_c1_enter113_conv304
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

entity i_sfc_logic_c1_for_body_conv_c1_enter113_conv304 is
    port (
        in_wgl_0_exit_exit_valid_out : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_0_exit_exit_stall_out : in std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_0_exit_exit_valid_in : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_0_exit_exit_stall_in : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_02_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_memcoalesce_null_load_02_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_02_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_02_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_02_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_memcoalesce_null_load_02_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_02_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_1_exit_exit_valid_out : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_1_exit_exit_stall_out : in std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_1_exit_exit_valid_in : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_1_exit_exit_stall_in : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv3_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv3_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_conv3_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv3_3 : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_conv3_4 : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv3_5 : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_conv3_6 : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_conv3_7 : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv3_8 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_c1_exi1115_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1115_1 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_memcoalesce_null_load_0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_memcoalesce_null_load_0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_0_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_for_body_conv_c1_enter113_conv304;

architecture normal of i_sfc_logic_c1_for_body_conv_c1_enter113_conv304 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_load_memcoalesce_null_load_02_conv311 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_bitwiseor : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_2 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_3 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_4 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_5 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_6 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_7 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_memcoalesce_null_load_02_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_memcoalesce_null_load_0_conv307 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_bitwiseor : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_2 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_3 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_4 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_5 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_6 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_readdata_7 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_memcoalesce_null_load_0_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_wg_limiter_exit_unnamed_conv4_conv309 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_exit_stall_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_exit_valid_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_exit_stall_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exit_valid_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_wg_limiter_exit_unnamed_conv5_conv313 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_exit_stall_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_exit_valid_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_exit_stall_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exit_valid_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;









    component floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_multBlock_typeSFA0Zp06o303d06o00rf01pzc is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;









    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx71_rm_conv_conv306_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx71_rm_conv_conv306_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_multconst_x_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx71_rm_conv_conv306_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx75_rm_conv_conv310_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx75_rm_conv_conv310_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx75_rm_conv_conv310_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_acl_wg_limiter_exit_unnamed_conv4_conv_out_exit_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_wg_limiter_exit_unnamed_conv4_conv_out_exit_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_wg_limiter_exit_unnamed_conv5_conv_out_exit_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_wg_limiter_exit_unnamed_conv5_conv_out_exit_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add77_1_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add77_2_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add77_3_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add77_4_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add77_5_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add77_6_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add77_7_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add77_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx71_rm_conv_vt_const_4_q : STD_LOGIC_VECTOR (4 downto 0);
    signal i_arrayidx71_rm_conv_vt_const_63_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx71_rm_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx71_rm_conv_vt_select_7_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_arrayidx75_rm_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx75_rm_conv_vt_select_7_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_c1_ene1114_conv_vt_const_63_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_c1_ene1114_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_c1_ene1114_conv_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_memcoalesce_null_bitcast_01_rm_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_null_bitcast_01_rm_conv_vt_select_7_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_memcoalesce_null_bitcast_0_rm_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_null_bitcast_0_rm_conv_vt_select_7_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_mul76_1_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul76_2_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul76_3_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul76_4_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul76_5_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul76_6_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul76_7_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul76_conv_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_join_13_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_align_14_q : STD_LOGIC_VECTOR (41 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_align_14_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_join_16_q : STD_LOGIC_VECTOR (69 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_join_13_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_align_14_q : STD_LOGIC_VECTOR (41 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_align_14_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_join_16_q : STD_LOGIC_VECTOR (69 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_mul76_conv_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_add77_conv_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_i_add77_6_conv_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_add77_5_conv_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_i_add77_4_conv_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_i_add77_3_conv_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_i_add77_2_conv_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_i_add77_1_conv_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_mem_reset0 : std_logic;
    signal redist1_i_mul76_7_conv_out_primWireOut_106_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_mem_aa : STD_LOGIC_VECTOR (6 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_mem_ab : STD_LOGIC_VECTOR (6 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_i : UNSIGNED (6 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_i : signal is true;
    signal redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_eq : std_logic;
    attribute preserve of redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_eq : signal is true;
    signal redist1_i_mul76_7_conv_out_primWireOut_106_wraddr_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_mem_last_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_cmp_b : STD_LOGIC_VECTOR (7 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_mul76_7_conv_out_primWireOut_106_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_mem_reset0 : std_logic;
    signal redist2_i_mul76_6_conv_out_primWireOut_91_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_mem_aa : STD_LOGIC_VECTOR (6 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_mem_ab : STD_LOGIC_VECTOR (6 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_i : UNSIGNED (6 downto 0);
    attribute preserve of redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_i : signal is true;
    signal redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_eq : std_logic;
    attribute preserve of redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_eq : signal is true;
    signal redist2_i_mul76_6_conv_out_primWireOut_91_wraddr_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_mem_last_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_cmp_b : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_mul76_6_conv_out_primWireOut_91_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_mem_reset0 : std_logic;
    signal redist3_i_mul76_5_conv_out_primWireOut_76_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_mem_aa : STD_LOGIC_VECTOR (6 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_mem_ab : STD_LOGIC_VECTOR (6 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_i : UNSIGNED (6 downto 0);
    attribute preserve of redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_i : signal is true;
    signal redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_eq : std_logic;
    attribute preserve of redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_eq : signal is true;
    signal redist3_i_mul76_5_conv_out_primWireOut_76_wraddr_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_mem_last_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_cmp_b : STD_LOGIC_VECTOR (7 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_mul76_5_conv_out_primWireOut_76_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_mem_reset0 : std_logic;
    signal redist4_i_mul76_4_conv_out_primWireOut_61_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_mem_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_mem_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_i : UNSIGNED (5 downto 0);
    attribute preserve of redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_i : signal is true;
    signal redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_eq : std_logic;
    attribute preserve of redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_eq : signal is true;
    signal redist4_i_mul76_4_conv_out_primWireOut_61_wraddr_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_mem_last_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_cmp_b : STD_LOGIC_VECTOR (6 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_mul76_4_conv_out_primWireOut_61_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_mem_reset0 : std_logic;
    signal redist5_i_mul76_3_conv_out_primWireOut_46_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_mem_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_mem_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_i : UNSIGNED (5 downto 0);
    attribute preserve of redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_i : signal is true;
    signal redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_eq : std_logic;
    attribute preserve of redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_eq : signal is true;
    signal redist5_i_mul76_3_conv_out_primWireOut_46_wraddr_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_mem_last_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_cmp_b : STD_LOGIC_VECTOR (6 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_mul76_3_conv_out_primWireOut_46_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_mem_reset0 : std_logic;
    signal redist6_i_mul76_2_conv_out_primWireOut_31_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_i : signal is true;
    signal redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_eq : std_logic;
    attribute preserve of redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_eq : signal is true;
    signal redist6_i_mul76_2_conv_out_primWireOut_31_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_mul76_2_conv_out_primWireOut_31_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist6_i_mul76_2_conv_out_primWireOut_31_sticky_ena_q : signal is true;
    signal redist6_i_mul76_2_conv_out_primWireOut_31_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_mem_reset0 : std_logic;
    signal redist7_i_mul76_1_conv_out_primWireOut_16_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_i : signal is true;
    signal redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_eq : std_logic;
    attribute preserve of redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_eq : signal is true;
    signal redist7_i_mul76_1_conv_out_primWireOut_16_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_mul76_1_conv_out_primWireOut_16_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist7_i_mul76_1_conv_out_primWireOut_16_sticky_ena_q : signal is true;
    signal redist7_i_mul76_1_conv_out_primWireOut_16_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_reset0 : std_logic;
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_i : signal is true;
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_sticky_ena_q : signal is true;
    signal redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_reset0 : std_logic;
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_i : signal is true;
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_sticky_ena_q : signal is true;
    signal redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_reset0 : std_logic;
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_i : signal is true;
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_eq : std_logic;
    attribute preserve of redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_eq : signal is true;
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_sticky_ena_q : signal is true;
    signal redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_outputreg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_reset0 : std_logic;
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_ia : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_iq : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_i : signal is true;
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_eq : std_logic;
    attribute preserve of redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_eq : signal is true;
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist16_sync_in_aunroll_x_in_i_valid_131_split_0_sticky_ena_q : signal is true;
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_0_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_inputreg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_outputreg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_reset0 : std_logic;
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_ia : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_iq : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_i : signal is true;
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_eq : std_logic;
    attribute preserve of redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_eq : signal is true;
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist16_sync_in_aunroll_x_in_i_valid_131_split_1_sticky_ena_q : signal is true;
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_1_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_inputreg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_outputreg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_reset0 : std_logic;
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_ia : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_iq : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist16_sync_in_aunroll_x_in_i_valid_131_split_2_sticky_ena_q : signal is true;
    signal redist16_sync_in_aunroll_x_in_i_valid_131_split_2_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist15_sync_in_aunroll_x_in_i_valid_3(DELAY,140)
    redist15_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist15_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_notEnable(LOGICAL,236)
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_nor(LOGICAL,237)
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_nor_q <= not (redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_notEnable_q or redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_sticky_ena_q);

    -- redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_cmpReg(REG,235)
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_sticky_ena(REG,238)
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_nor_q = "1") THEN
                redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_sticky_ena_q <= STD_LOGIC_VECTOR(redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_enaAnd(LOGICAL,239)
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_enaAnd_q <= redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_sticky_ena_q and VCC_q;

    -- redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt(COUNTER,233)
    -- low=0, high=1, step=1, init=0
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_i <= redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_i, 1)));

    -- redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_wraddr(REG,234)
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_wraddr_q <= STD_LOGIC_VECTOR(redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem(DUALMEM,232)
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_ia <= STD_LOGIC_VECTOR(in_unnamed_conv3_4);
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_aa <= redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_wraddr_q;
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_ab <= redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_rdcnt_q;
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_reset0 <= not (resetn);
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_dmem : altera_syncram
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
        clocken1 => redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_reset0,
        clock1 => clock,
        address_a => redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_aa,
        data_a => redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_ab,
        q_b => redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_iq
    );
    redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_q <= redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_iq(31 downto 0);

    -- i_acl_wg_limiter_exit_unnamed_conv4_conv(BLACKBOX,40)@290
    -- in in_stall_in@20000000
    -- out out_data_out@291
    -- out out_exit_stall_in@291
    -- out out_exit_valid_in@291
    -- out out_stall_out@20000000
    -- out out_valid_out@291
    thei_acl_wg_limiter_exit_unnamed_conv4_conv : i_acl_wg_limiter_exit_unnamed_conv4_conv309
    PORT MAP (
        in_data_in => redist17_sync_in_aunroll_x_in_unnamed_conv3_4_3_mem_q,
        in_exit_stall_out => in_wgl_0_exit_exit_stall_out,
        in_exit_valid_out => in_wgl_0_exit_exit_valid_out,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_3_q,
        out_exit_stall_in => i_acl_wg_limiter_exit_unnamed_conv4_conv_out_exit_stall_in,
        out_exit_valid_in => i_acl_wg_limiter_exit_unnamed_conv4_conv_out_exit_valid_in,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_wgl_0_exit_exit_valid_in <= i_acl_wg_limiter_exit_unnamed_conv4_conv_out_exit_valid_in;
    out_wgl_0_exit_exit_stall_in <= i_acl_wg_limiter_exit_unnamed_conv4_conv_out_exit_stall_in;

    -- i_arrayidx71_rm_conv_vt_const_63(CONSTANT,51)
    i_arrayidx71_rm_conv_vt_const_63_q <= "00000000000000000000000000000000000000000000000000000000";

    -- i_arrayidx71_rm_conv_conv306_mult_multconst_x(CONSTANT,15)
    i_arrayidx71_rm_conv_conv306_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000";

    -- i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select(BITSELECT,123)@287
    i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_b <= in_unnamed_conv3_5(17 downto 0);
    i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_c <= in_unnamed_conv3_5(63 downto 54);
    i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_d <= in_unnamed_conv3_5(35 downto 18);
    i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_e <= in_unnamed_conv3_5(53 downto 36);

    -- i_arrayidx75_rm_conv_conv310_mult_x_im3_shift0(BITSHIFT,120)@287
    i_arrayidx75_rm_conv_conv310_mult_x_im3_shift0_qint <= i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_c & "00000";
    i_arrayidx75_rm_conv_conv310_mult_x_im3_shift0_q <= i_arrayidx75_rm_conv_conv310_mult_x_im3_shift0_qint(14 downto 0);

    -- i_arrayidx75_rm_conv_conv310_mult_x_align_15(BITSHIFT,112)@287
    i_arrayidx75_rm_conv_conv310_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx75_rm_conv_conv310_mult_x_im3_shift0_q) & "000000000000";
    i_arrayidx75_rm_conv_conv310_mult_x_align_15_q <= i_arrayidx75_rm_conv_conv310_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx75_rm_conv_conv310_mult_x_im6_shift0(BITSHIFT,121)@287
    i_arrayidx75_rm_conv_conv310_mult_x_im6_shift0_qint <= i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_d & "00000";
    i_arrayidx75_rm_conv_conv310_mult_x_im6_shift0_q <= i_arrayidx75_rm_conv_conv310_mult_x_im6_shift0_qint(22 downto 0);

    -- i_arrayidx75_rm_conv_conv310_mult_x_align_14(BITSHIFT,111)@287
    i_arrayidx75_rm_conv_conv310_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx75_rm_conv_conv310_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx75_rm_conv_conv310_mult_x_align_14_q <= i_arrayidx75_rm_conv_conv310_mult_x_align_14_qint(41 downto 0);

    -- i_arrayidx75_rm_conv_conv310_mult_x_join_16(BITJOIN,113)@287
    i_arrayidx75_rm_conv_conv310_mult_x_join_16_q <= i_arrayidx75_rm_conv_conv310_mult_x_align_15_q & i_arrayidx75_rm_conv_conv310_mult_x_align_14_q;

    -- i_arrayidx75_rm_conv_conv310_mult_x_im9_shift0(BITSHIFT,122)@287
    i_arrayidx75_rm_conv_conv310_mult_x_im9_shift0_qint <= i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_e & "00000";
    i_arrayidx75_rm_conv_conv310_mult_x_im9_shift0_q <= i_arrayidx75_rm_conv_conv310_mult_x_im9_shift0_qint(22 downto 0);

    -- i_arrayidx75_rm_conv_conv310_mult_x_align_12(BITSHIFT,109)@287
    i_arrayidx75_rm_conv_conv310_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx75_rm_conv_conv310_mult_x_im9_shift0_q) & "000000000000";
    i_arrayidx75_rm_conv_conv310_mult_x_align_12_q <= i_arrayidx75_rm_conv_conv310_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx75_rm_conv_conv310_mult_x_im0_shift0(BITSHIFT,119)@287
    i_arrayidx75_rm_conv_conv310_mult_x_im0_shift0_qint <= i_arrayidx75_rm_conv_conv310_mult_x_bs1_merged_bit_select_b & "00000";
    i_arrayidx75_rm_conv_conv310_mult_x_im0_shift0_q <= i_arrayidx75_rm_conv_conv310_mult_x_im0_shift0_qint(22 downto 0);

    -- i_arrayidx75_rm_conv_conv310_mult_x_join_13(BITJOIN,110)@287
    i_arrayidx75_rm_conv_conv310_mult_x_join_13_q <= i_arrayidx75_rm_conv_conv310_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx75_rm_conv_conv310_mult_x_im0_shift0_q);

    -- i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0(ADD,114)@287
    i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx75_rm_conv_conv310_mult_x_join_13_q);
    i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx75_rm_conv_conv310_mult_x_join_16_q);
    i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_b));
    i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_q <= i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_o(70 downto 0);

    -- i_arrayidx75_rm_conv_conv310_mult_extender_x(BITJOIN,24)@287
    i_arrayidx75_rm_conv_conv310_mult_extender_x_q <= i_arrayidx71_rm_conv_conv306_mult_multconst_x_q & i_arrayidx75_rm_conv_conv310_mult_x_result_add_0_0_q(69 downto 0);

    -- i_arrayidx75_rm_conv_conv310_trunc_sel_x(BITSELECT,26)@287
    i_arrayidx75_rm_conv_conv310_trunc_sel_x_b <= i_arrayidx75_rm_conv_conv310_mult_extender_x_q(63 downto 0);

    -- i_arrayidx75_rm_conv_conv310_dupName_0_trunc_sel_x(BITSELECT,21)@287
    i_arrayidx75_rm_conv_conv310_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx75_rm_conv_conv310_trunc_sel_x_b);
    i_arrayidx75_rm_conv_conv310_dupName_0_trunc_sel_x_b <= i_arrayidx75_rm_conv_conv310_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx75_rm_conv_vt_select_7(BITSELECT,57)@287
    i_arrayidx75_rm_conv_vt_select_7_b <= i_arrayidx75_rm_conv_conv310_dupName_0_trunc_sel_x_b(7 downto 5);

    -- i_arrayidx75_rm_conv_vt_join(BITJOIN,56)@287
    i_arrayidx75_rm_conv_vt_join_q <= i_arrayidx71_rm_conv_vt_const_63_q & i_arrayidx75_rm_conv_vt_select_7_b & i_arrayidx71_rm_conv_vt_const_4_q;

    -- i_memcoalesce_null_bitcast_01_rm_conv_vt_select_7(BITSELECT,65)@287
    i_memcoalesce_null_bitcast_01_rm_conv_vt_select_7_b <= i_arrayidx75_rm_conv_vt_join_q(7 downto 5);

    -- i_arrayidx71_rm_conv_vt_const_4(CONSTANT,50)
    i_arrayidx71_rm_conv_vt_const_4_q <= "00000";

    -- i_memcoalesce_null_bitcast_01_rm_conv_vt_join(BITJOIN,64)@287
    i_memcoalesce_null_bitcast_01_rm_conv_vt_join_q <= i_arrayidx71_rm_conv_vt_const_63_q & i_memcoalesce_null_bitcast_01_rm_conv_vt_select_7_b & i_arrayidx71_rm_conv_vt_const_4_q;

    -- i_load_memcoalesce_null_load_02_conv_aunroll_x(BLACKBOX,31)@287
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@291
    -- out out_o_readdata_1@291
    -- out out_o_readdata_2@291
    -- out out_o_readdata_3@291
    -- out out_o_readdata_4@291
    -- out out_o_readdata_5@291
    -- out out_o_readdata_6@291
    -- out out_o_readdata_7@291
    -- out out_memcoalesce_null_load_02_avm_address@20000000
    -- out out_memcoalesce_null_load_02_avm_burstcount@20000000
    -- out out_memcoalesce_null_load_02_avm_byteenable@20000000
    -- out out_memcoalesce_null_load_02_avm_enable@20000000
    -- out out_memcoalesce_null_load_02_avm_read@20000000
    -- out out_memcoalesce_null_load_02_avm_write@20000000
    -- out out_memcoalesce_null_load_02_avm_writedata@20000000
    -- out out_o_stall@290
    -- out out_o_valid@291
    thei_load_memcoalesce_null_load_02_conv_aunroll_x : i_load_memcoalesce_null_load_02_conv311
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_memcoalesce_null_bitcast_01_rm_conv_vt_join_q,
        in_i_bitwiseor => in_unnamed_conv3_6,
        in_i_predicate => in_unnamed_conv3_2,
        in_i_stall => GND_q,
        in_i_valid => in_i_valid,
        in_memcoalesce_null_load_02_avm_readdata => in_memcoalesce_null_load_02_avm_readdata,
        in_memcoalesce_null_load_02_avm_readdatavalid => in_memcoalesce_null_load_02_avm_readdatavalid,
        in_memcoalesce_null_load_02_avm_waitrequest => in_memcoalesce_null_load_02_avm_waitrequest,
        in_memcoalesce_null_load_02_avm_writeack => in_memcoalesce_null_load_02_avm_writeack,
        out_o_readdata_0 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_0,
        out_o_readdata_1 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_1,
        out_o_readdata_2 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_2,
        out_o_readdata_3 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_3,
        out_o_readdata_4 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_4,
        out_o_readdata_5 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_5,
        out_o_readdata_6 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_6,
        out_o_readdata_7 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_7,
        out_memcoalesce_null_load_02_avm_address => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_address,
        out_memcoalesce_null_load_02_avm_burstcount => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_burstcount,
        out_memcoalesce_null_load_02_avm_byteenable => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_byteenable,
        out_memcoalesce_null_load_02_avm_enable => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_enable,
        out_memcoalesce_null_load_02_avm_read => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_read,
        out_memcoalesce_null_load_02_avm_write => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_write,
        out_memcoalesce_null_load_02_avm_writedata => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,7)
    out_memcoalesce_null_load_02_avm_address <= i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_address;
    out_memcoalesce_null_load_02_avm_enable <= i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_enable;
    out_memcoalesce_null_load_02_avm_read <= i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_read;
    out_memcoalesce_null_load_02_avm_write <= i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_write;
    out_memcoalesce_null_load_02_avm_writedata <= i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_writedata;
    out_memcoalesce_null_load_02_avm_byteenable <= i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_byteenable;
    out_memcoalesce_null_load_02_avm_burstcount <= i_load_memcoalesce_null_load_02_conv_aunroll_x_out_memcoalesce_null_load_02_avm_burstcount;

    -- redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_notEnable(LOGICAL,244)
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_nor(LOGICAL,245)
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_nor_q <= not (redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_notEnable_q or redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_sticky_ena_q);

    -- redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_cmpReg(REG,243)
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_sticky_ena(REG,246)
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_nor_q = "1") THEN
                redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_sticky_ena_q <= STD_LOGIC_VECTOR(redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_enaAnd(LOGICAL,247)
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_enaAnd_q <= redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_sticky_ena_q and VCC_q;

    -- redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt(COUNTER,241)
    -- low=0, high=1, step=1, init=0
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_i <= redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_i, 1)));

    -- redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_wraddr(REG,242)
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_wraddr_q <= STD_LOGIC_VECTOR(redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem(DUALMEM,240)
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_ia <= STD_LOGIC_VECTOR(in_unnamed_conv3_7);
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_aa <= redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_wraddr_q;
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_ab <= redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_rdcnt_q;
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_reset0 <= not (resetn);
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_dmem : altera_syncram
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
        clocken1 => redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_reset0,
        clock1 => clock,
        address_a => redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_aa,
        data_a => redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_ab,
        q_b => redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_iq
    );
    redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_q <= redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_iq(31 downto 0);

    -- i_acl_wg_limiter_exit_unnamed_conv5_conv(BLACKBOX,41)@290
    -- in in_stall_in@20000000
    -- out out_data_out@291
    -- out out_exit_stall_in@291
    -- out out_exit_valid_in@291
    -- out out_stall_out@20000000
    -- out out_valid_out@291
    thei_acl_wg_limiter_exit_unnamed_conv5_conv : i_acl_wg_limiter_exit_unnamed_conv5_conv313
    PORT MAP (
        in_data_in => redist18_sync_in_aunroll_x_in_unnamed_conv3_7_3_mem_q,
        in_exit_stall_out => in_wgl_1_exit_exit_stall_out,
        in_exit_valid_out => in_wgl_1_exit_exit_valid_out,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_3_q,
        out_exit_stall_in => i_acl_wg_limiter_exit_unnamed_conv5_conv_out_exit_stall_in,
        out_exit_valid_in => i_acl_wg_limiter_exit_unnamed_conv5_conv_out_exit_valid_in,
        clock => clock,
        resetn => resetn
    );

    -- dupName_2_ext_sig_sync_out_x(GPOUT,10)
    out_wgl_1_exit_exit_valid_in <= i_acl_wg_limiter_exit_unnamed_conv5_conv_out_exit_valid_in;
    out_wgl_1_exit_exit_stall_in <= i_acl_wg_limiter_exit_unnamed_conv5_conv_out_exit_stall_in;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_notEnable(LOGICAL,266)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_2_nor(LOGICAL,291)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_nor_q <= not (redist16_sync_in_aunroll_x_in_i_valid_131_split_0_notEnable_q or redist16_sync_in_aunroll_x_in_i_valid_131_split_2_sticky_ena_q);

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_last(CONSTANT,275)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_last_q <= "011100";

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmp(LOGICAL,276)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmp_b <= STD_LOGIC_VECTOR("0" & redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_q);
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmp_q <= "1" WHEN redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_last_q = redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmp_b ELSE "0";

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmpReg(REG,277)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmpReg_q <= STD_LOGIC_VECTOR(redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmp_q);
        END IF;
    END PROCESS;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_2_sticky_ena(REG,292)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_2_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist16_sync_in_aunroll_x_in_i_valid_131_split_2_nor_q = "1") THEN
                redist16_sync_in_aunroll_x_in_i_valid_131_split_2_sticky_ena_q <= STD_LOGIC_VECTOR(redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_2_enaAnd(LOGICAL,293)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_enaAnd_q <= redist16_sync_in_aunroll_x_in_i_valid_131_split_2_sticky_ena_q and VCC_q;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt(COUNTER,273)
    -- low=0, high=29, step=1, init=0
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_i = TO_UNSIGNED(28, 5)) THEN
                redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_eq <= '1';
            ELSE
                redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_eq <= '0';
            END IF;
            IF (redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_eq = '1') THEN
                redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_i <= redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_i + 3;
            ELSE
                redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_i <= redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_i, 5)));

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_nor(LOGICAL,279)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_nor_q <= not (redist16_sync_in_aunroll_x_in_i_valid_131_split_0_notEnable_q or redist16_sync_in_aunroll_x_in_i_valid_131_split_1_sticky_ena_q);

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_sticky_ena(REG,280)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_1_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist16_sync_in_aunroll_x_in_i_valid_131_split_1_nor_q = "1") THEN
                redist16_sync_in_aunroll_x_in_i_valid_131_split_1_sticky_ena_q <= STD_LOGIC_VECTOR(redist16_sync_in_aunroll_x_in_i_valid_131_split_1_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_enaAnd(LOGICAL,281)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_enaAnd_q <= redist16_sync_in_aunroll_x_in_i_valid_131_split_1_sticky_ena_q and VCC_q;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_nor(LOGICAL,267)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_nor_q <= not (redist16_sync_in_aunroll_x_in_i_valid_131_split_0_notEnable_q or redist16_sync_in_aunroll_x_in_i_valid_131_split_0_sticky_ena_q);

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_last(CONSTANT,263)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_last_q <= "011101";

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmp(LOGICAL,264)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmp_b <= STD_LOGIC_VECTOR("0" & redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_q);
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmp_q <= "1" WHEN redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_last_q = redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmp_b ELSE "0";

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmpReg(REG,265)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmpReg_q <= STD_LOGIC_VECTOR(redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmp_q);
        END IF;
    END PROCESS;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_sticky_ena(REG,268)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_0_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist16_sync_in_aunroll_x_in_i_valid_131_split_0_nor_q = "1") THEN
                redist16_sync_in_aunroll_x_in_i_valid_131_split_0_sticky_ena_q <= STD_LOGIC_VECTOR(redist16_sync_in_aunroll_x_in_i_valid_131_split_0_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_enaAnd(LOGICAL,269)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_enaAnd_q <= redist16_sync_in_aunroll_x_in_i_valid_131_split_0_sticky_ena_q and VCC_q;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt(COUNTER,261)
    -- low=0, high=30, step=1, init=0
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_eq <= '1';
            ELSE
                redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_eq <= '0';
            END IF;
            IF (redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_eq = '1') THEN
                redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_i <= redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_i + 2;
            ELSE
                redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_i <= redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_i, 5)));

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_wraddr(REG,262)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_0_wraddr_q <= "11110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_0_wraddr_q <= STD_LOGIC_VECTOR(redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem(DUALMEM,260)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_ia <= STD_LOGIC_VECTOR(redist15_sync_in_aunroll_x_in_i_valid_3_q);
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_aa <= redist16_sync_in_aunroll_x_in_i_valid_131_split_0_wraddr_q;
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_ab <= redist16_sync_in_aunroll_x_in_i_valid_131_split_0_rdcnt_q;
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_reset0 <= not (resetn);
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_dmem : altera_syncram
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
        clocken1 => redist16_sync_in_aunroll_x_in_i_valid_131_split_0_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_reset0,
        clock1 => clock,
        address_a => redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_aa,
        data_a => redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_ab,
        q_b => redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_iq
    );
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_q <= redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_iq(0 downto 0);

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_0_outputreg(DELAY,259)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_0_outputreg : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_i_valid_131_split_0_mem_q, xout => redist16_sync_in_aunroll_x_in_i_valid_131_split_0_outputreg_q, clk => clock, aclr => resetn );

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_inputreg(DELAY,270)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_inputreg : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_i_valid_131_split_0_outputreg_q, xout => redist16_sync_in_aunroll_x_in_i_valid_131_split_1_inputreg_q, clk => clock, aclr => resetn );

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem(DUALMEM,272)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_ia <= STD_LOGIC_VECTOR(redist16_sync_in_aunroll_x_in_i_valid_131_split_1_inputreg_q);
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_aa <= redist16_sync_in_aunroll_x_in_i_valid_131_split_1_wraddr_q;
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_ab <= redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_q;
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_reset0 <= not (resetn);
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 1,
        widthad_a => 5,
        numwords_a => 30,
        width_b => 1,
        widthad_b => 5,
        numwords_b => 30,
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
        clocken1 => redist16_sync_in_aunroll_x_in_i_valid_131_split_1_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_reset0,
        clock1 => clock,
        address_a => redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_aa,
        data_a => redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_ab,
        q_b => redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_iq
    );
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_q <= redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_iq(0 downto 0);

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_outputreg(DELAY,271)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_outputreg : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_i_valid_131_split_1_mem_q, xout => redist16_sync_in_aunroll_x_in_i_valid_131_split_1_outputreg_q, clk => clock, aclr => resetn );

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_2_inputreg(DELAY,282)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_inputreg : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_i_valid_131_split_1_outputreg_q, xout => redist16_sync_in_aunroll_x_in_i_valid_131_split_2_inputreg_q, clk => clock, aclr => resetn );

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_1_wraddr(REG,274)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_1_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_1_wraddr_q <= "11101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist16_sync_in_aunroll_x_in_i_valid_131_split_1_wraddr_q <= STD_LOGIC_VECTOR(redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem(DUALMEM,284)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_ia <= STD_LOGIC_VECTOR(redist16_sync_in_aunroll_x_in_i_valid_131_split_2_inputreg_q);
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_aa <= redist16_sync_in_aunroll_x_in_i_valid_131_split_1_wraddr_q;
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_ab <= redist16_sync_in_aunroll_x_in_i_valid_131_split_1_rdcnt_q;
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_reset0 <= not (resetn);
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 1,
        widthad_a => 5,
        numwords_a => 30,
        width_b => 1,
        widthad_b => 5,
        numwords_b => 30,
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
        clocken1 => redist16_sync_in_aunroll_x_in_i_valid_131_split_2_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_reset0,
        clock1 => clock,
        address_a => redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_aa,
        data_a => redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_ab,
        q_b => redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_iq
    );
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_q <= redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_iq(0 downto 0);

    -- redist16_sync_in_aunroll_x_in_i_valid_131_split_2_outputreg(DELAY,283)
    redist16_sync_in_aunroll_x_in_i_valid_131_split_2_outputreg : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_i_valid_131_split_2_mem_q, xout => redist16_sync_in_aunroll_x_in_i_valid_131_split_2_outputreg_q, clk => clock, aclr => resetn );

    -- redist16_sync_in_aunroll_x_in_i_valid_131(DELAY,141)
    redist16_sync_in_aunroll_x_in_i_valid_131 : dspba_delay
    GENERIC MAP ( width => 1, depth => 29, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_i_valid_131_split_2_outputreg_q, xout => redist16_sync_in_aunroll_x_in_i_valid_131_q, clk => clock, aclr => resetn );

    -- redist1_i_mul76_7_conv_out_primWireOut_106_notEnable(LOGICAL,156)
    redist1_i_mul76_7_conv_out_primWireOut_106_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist1_i_mul76_7_conv_out_primWireOut_106_nor(LOGICAL,157)
    redist1_i_mul76_7_conv_out_primWireOut_106_nor_q <= not (redist1_i_mul76_7_conv_out_primWireOut_106_notEnable_q or redist1_i_mul76_7_conv_out_primWireOut_106_sticky_ena_q);

    -- redist1_i_mul76_7_conv_out_primWireOut_106_mem_last(CONSTANT,153)
    redist1_i_mul76_7_conv_out_primWireOut_106_mem_last_q <= "01100101";

    -- redist1_i_mul76_7_conv_out_primWireOut_106_cmp(LOGICAL,154)
    redist1_i_mul76_7_conv_out_primWireOut_106_cmp_b <= STD_LOGIC_VECTOR("0" & redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_q);
    redist1_i_mul76_7_conv_out_primWireOut_106_cmp_q <= "1" WHEN redist1_i_mul76_7_conv_out_primWireOut_106_mem_last_q = redist1_i_mul76_7_conv_out_primWireOut_106_cmp_b ELSE "0";

    -- redist1_i_mul76_7_conv_out_primWireOut_106_cmpReg(REG,155)
    redist1_i_mul76_7_conv_out_primWireOut_106_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_mul76_7_conv_out_primWireOut_106_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_i_mul76_7_conv_out_primWireOut_106_cmpReg_q <= STD_LOGIC_VECTOR(redist1_i_mul76_7_conv_out_primWireOut_106_cmp_q);
        END IF;
    END PROCESS;

    -- redist1_i_mul76_7_conv_out_primWireOut_106_sticky_ena(REG,158)
    redist1_i_mul76_7_conv_out_primWireOut_106_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_mul76_7_conv_out_primWireOut_106_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_i_mul76_7_conv_out_primWireOut_106_nor_q = "1") THEN
                redist1_i_mul76_7_conv_out_primWireOut_106_sticky_ena_q <= STD_LOGIC_VECTOR(redist1_i_mul76_7_conv_out_primWireOut_106_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_i_mul76_7_conv_out_primWireOut_106_enaAnd(LOGICAL,159)
    redist1_i_mul76_7_conv_out_primWireOut_106_enaAnd_q <= redist1_i_mul76_7_conv_out_primWireOut_106_sticky_ena_q and VCC_q;

    -- redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt(COUNTER,151)
    -- low=0, high=102, step=1, init=0
    redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_i <= TO_UNSIGNED(0, 7);
            redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_i = TO_UNSIGNED(101, 7)) THEN
                redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_eq <= '1';
            ELSE
                redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_eq <= '0';
            END IF;
            IF (redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_eq = '1') THEN
                redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_i <= redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_i + 26;
            ELSE
                redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_i <= redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_i, 7)));

    -- i_c1_ene1114_conv_vt_const_63(CONSTANT,58)
    i_c1_ene1114_conv_vt_const_63_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- i_c1_ene1114_conv_vt_select_2(BITSELECT,60)@287
    i_c1_ene1114_conv_vt_select_2_b <= in_unnamed_conv3_1(2 downto 0);

    -- i_c1_ene1114_conv_vt_join(BITJOIN,59)@287
    i_c1_ene1114_conv_vt_join_q <= i_c1_ene1114_conv_vt_const_63_q & i_c1_ene1114_conv_vt_select_2_b;

    -- i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select(BITSELECT,124)@287
    i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_b <= i_c1_ene1114_conv_vt_join_q(17 downto 0);
    i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_c <= i_c1_ene1114_conv_vt_join_q(63 downto 54);
    i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_d <= i_c1_ene1114_conv_vt_join_q(35 downto 18);
    i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_e <= i_c1_ene1114_conv_vt_join_q(53 downto 36);

    -- i_arrayidx71_rm_conv_conv306_mult_x_im3_shift0(BITSHIFT,116)@287
    i_arrayidx71_rm_conv_conv306_mult_x_im3_shift0_qint <= i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_c & "00000";
    i_arrayidx71_rm_conv_conv306_mult_x_im3_shift0_q <= i_arrayidx71_rm_conv_conv306_mult_x_im3_shift0_qint(14 downto 0);

    -- i_arrayidx71_rm_conv_conv306_mult_x_align_15(BITSHIFT,94)@287
    i_arrayidx71_rm_conv_conv306_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx71_rm_conv_conv306_mult_x_im3_shift0_q) & "000000000000";
    i_arrayidx71_rm_conv_conv306_mult_x_align_15_q <= i_arrayidx71_rm_conv_conv306_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx71_rm_conv_conv306_mult_x_im6_shift0(BITSHIFT,117)@287
    i_arrayidx71_rm_conv_conv306_mult_x_im6_shift0_qint <= i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_d & "00000";
    i_arrayidx71_rm_conv_conv306_mult_x_im6_shift0_q <= i_arrayidx71_rm_conv_conv306_mult_x_im6_shift0_qint(22 downto 0);

    -- i_arrayidx71_rm_conv_conv306_mult_x_align_14(BITSHIFT,93)@287
    i_arrayidx71_rm_conv_conv306_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx71_rm_conv_conv306_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx71_rm_conv_conv306_mult_x_align_14_q <= i_arrayidx71_rm_conv_conv306_mult_x_align_14_qint(41 downto 0);

    -- i_arrayidx71_rm_conv_conv306_mult_x_join_16(BITJOIN,95)@287
    i_arrayidx71_rm_conv_conv306_mult_x_join_16_q <= i_arrayidx71_rm_conv_conv306_mult_x_align_15_q & i_arrayidx71_rm_conv_conv306_mult_x_align_14_q;

    -- i_arrayidx71_rm_conv_conv306_mult_x_im9_shift0(BITSHIFT,118)@287
    i_arrayidx71_rm_conv_conv306_mult_x_im9_shift0_qint <= i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_e & "00000";
    i_arrayidx71_rm_conv_conv306_mult_x_im9_shift0_q <= i_arrayidx71_rm_conv_conv306_mult_x_im9_shift0_qint(22 downto 0);

    -- i_arrayidx71_rm_conv_conv306_mult_x_align_12(BITSHIFT,91)@287
    i_arrayidx71_rm_conv_conv306_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx71_rm_conv_conv306_mult_x_im9_shift0_q) & "000000000000";
    i_arrayidx71_rm_conv_conv306_mult_x_align_12_q <= i_arrayidx71_rm_conv_conv306_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx71_rm_conv_conv306_mult_x_im0_shift0(BITSHIFT,115)@287
    i_arrayidx71_rm_conv_conv306_mult_x_im0_shift0_qint <= i_arrayidx71_rm_conv_conv306_mult_x_bs1_merged_bit_select_b & "00000";
    i_arrayidx71_rm_conv_conv306_mult_x_im0_shift0_q <= i_arrayidx71_rm_conv_conv306_mult_x_im0_shift0_qint(22 downto 0);

    -- i_arrayidx71_rm_conv_conv306_mult_x_join_13(BITJOIN,92)@287
    i_arrayidx71_rm_conv_conv306_mult_x_join_13_q <= i_arrayidx71_rm_conv_conv306_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx71_rm_conv_conv306_mult_x_im0_shift0_q);

    -- i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0(ADD,96)@287
    i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx71_rm_conv_conv306_mult_x_join_13_q);
    i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx71_rm_conv_conv306_mult_x_join_16_q);
    i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_b));
    i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_q <= i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_o(70 downto 0);

    -- i_arrayidx71_rm_conv_conv306_mult_extender_x(BITJOIN,14)@287
    i_arrayidx71_rm_conv_conv306_mult_extender_x_q <= i_arrayidx71_rm_conv_conv306_mult_multconst_x_q & i_arrayidx71_rm_conv_conv306_mult_x_result_add_0_0_q(69 downto 0);

    -- i_arrayidx71_rm_conv_conv306_trunc_sel_x(BITSELECT,16)@287
    i_arrayidx71_rm_conv_conv306_trunc_sel_x_b <= i_arrayidx71_rm_conv_conv306_mult_extender_x_q(63 downto 0);

    -- i_arrayidx71_rm_conv_conv306_dupName_0_trunc_sel_x(BITSELECT,11)@287
    i_arrayidx71_rm_conv_conv306_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx71_rm_conv_conv306_trunc_sel_x_b);
    i_arrayidx71_rm_conv_conv306_dupName_0_trunc_sel_x_b <= i_arrayidx71_rm_conv_conv306_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx71_rm_conv_vt_select_7(BITSELECT,53)@287
    i_arrayidx71_rm_conv_vt_select_7_b <= i_arrayidx71_rm_conv_conv306_dupName_0_trunc_sel_x_b(7 downto 5);

    -- i_arrayidx71_rm_conv_vt_join(BITJOIN,52)@287
    i_arrayidx71_rm_conv_vt_join_q <= i_arrayidx71_rm_conv_vt_const_63_q & i_arrayidx71_rm_conv_vt_select_7_b & i_arrayidx71_rm_conv_vt_const_4_q;

    -- i_memcoalesce_null_bitcast_0_rm_conv_vt_select_7(BITSELECT,70)@287
    i_memcoalesce_null_bitcast_0_rm_conv_vt_select_7_b <= i_arrayidx71_rm_conv_vt_join_q(7 downto 5);

    -- i_memcoalesce_null_bitcast_0_rm_conv_vt_join(BITJOIN,69)@287
    i_memcoalesce_null_bitcast_0_rm_conv_vt_join_q <= i_arrayidx71_rm_conv_vt_const_63_q & i_memcoalesce_null_bitcast_0_rm_conv_vt_select_7_b & i_arrayidx71_rm_conv_vt_const_4_q;

    -- i_load_memcoalesce_null_load_0_conv_aunroll_x(BLACKBOX,32)@287
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@291
    -- out out_o_readdata_1@291
    -- out out_o_readdata_2@291
    -- out out_o_readdata_3@291
    -- out out_o_readdata_4@291
    -- out out_o_readdata_5@291
    -- out out_o_readdata_6@291
    -- out out_o_readdata_7@291
    -- out out_memcoalesce_null_load_0_avm_address@20000000
    -- out out_memcoalesce_null_load_0_avm_burstcount@20000000
    -- out out_memcoalesce_null_load_0_avm_byteenable@20000000
    -- out out_memcoalesce_null_load_0_avm_enable@20000000
    -- out out_memcoalesce_null_load_0_avm_read@20000000
    -- out out_memcoalesce_null_load_0_avm_write@20000000
    -- out out_memcoalesce_null_load_0_avm_writedata@20000000
    -- out out_o_stall@290
    -- out out_o_valid@291
    thei_load_memcoalesce_null_load_0_conv_aunroll_x : i_load_memcoalesce_null_load_0_conv307
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_memcoalesce_null_bitcast_0_rm_conv_vt_join_q,
        in_i_bitwiseor => in_unnamed_conv3_3,
        in_i_predicate => in_unnamed_conv3_2,
        in_i_stall => GND_q,
        in_i_valid => in_i_valid,
        in_memcoalesce_null_load_0_avm_readdata => in_memcoalesce_null_load_0_avm_readdata,
        in_memcoalesce_null_load_0_avm_readdatavalid => in_memcoalesce_null_load_0_avm_readdatavalid,
        in_memcoalesce_null_load_0_avm_waitrequest => in_memcoalesce_null_load_0_avm_waitrequest,
        in_memcoalesce_null_load_0_avm_writeack => in_memcoalesce_null_load_0_avm_writeack,
        out_o_readdata_0 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_0,
        out_o_readdata_1 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_1,
        out_o_readdata_2 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_2,
        out_o_readdata_3 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_3,
        out_o_readdata_4 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_4,
        out_o_readdata_5 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_5,
        out_o_readdata_6 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_6,
        out_o_readdata_7 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_7,
        out_memcoalesce_null_load_0_avm_address => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_address,
        out_memcoalesce_null_load_0_avm_burstcount => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_burstcount,
        out_memcoalesce_null_load_0_avm_byteenable => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_byteenable,
        out_memcoalesce_null_load_0_avm_enable => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_enable,
        out_memcoalesce_null_load_0_avm_read => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_read,
        out_memcoalesce_null_load_0_avm_write => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_write,
        out_memcoalesce_null_load_0_avm_writedata => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- i_mul76_7_conv(BLACKBOX,77)@291
    -- out out_primWireOut@298
    thei_mul76_7_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_multBlock_typeSFA0Zp06o303d06o00rf01pzc
    PORT MAP (
        in_0 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_7,
        in_1 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_7,
        out_primWireOut => i_mul76_7_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist1_i_mul76_7_conv_out_primWireOut_106_inputreg(DELAY,148)
    redist1_i_mul76_7_conv_out_primWireOut_106_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul76_7_conv_out_primWireOut, xout => redist1_i_mul76_7_conv_out_primWireOut_106_inputreg_q, clk => clock, aclr => resetn );

    -- redist1_i_mul76_7_conv_out_primWireOut_106_wraddr(REG,152)
    redist1_i_mul76_7_conv_out_primWireOut_106_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_mul76_7_conv_out_primWireOut_106_wraddr_q <= "1100110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_i_mul76_7_conv_out_primWireOut_106_wraddr_q <= STD_LOGIC_VECTOR(redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist1_i_mul76_7_conv_out_primWireOut_106_mem(DUALMEM,150)
    redist1_i_mul76_7_conv_out_primWireOut_106_mem_ia <= STD_LOGIC_VECTOR(redist1_i_mul76_7_conv_out_primWireOut_106_inputreg_q);
    redist1_i_mul76_7_conv_out_primWireOut_106_mem_aa <= redist1_i_mul76_7_conv_out_primWireOut_106_wraddr_q;
    redist1_i_mul76_7_conv_out_primWireOut_106_mem_ab <= redist1_i_mul76_7_conv_out_primWireOut_106_rdcnt_q;
    redist1_i_mul76_7_conv_out_primWireOut_106_mem_reset0 <= not (resetn);
    redist1_i_mul76_7_conv_out_primWireOut_106_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 7,
        numwords_a => 103,
        width_b => 32,
        widthad_b => 7,
        numwords_b => 103,
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
        clocken1 => redist1_i_mul76_7_conv_out_primWireOut_106_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist1_i_mul76_7_conv_out_primWireOut_106_mem_reset0,
        clock1 => clock,
        address_a => redist1_i_mul76_7_conv_out_primWireOut_106_mem_aa,
        data_a => redist1_i_mul76_7_conv_out_primWireOut_106_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist1_i_mul76_7_conv_out_primWireOut_106_mem_ab,
        q_b => redist1_i_mul76_7_conv_out_primWireOut_106_mem_iq
    );
    redist1_i_mul76_7_conv_out_primWireOut_106_mem_q <= redist1_i_mul76_7_conv_out_primWireOut_106_mem_iq(31 downto 0);

    -- redist1_i_mul76_7_conv_out_primWireOut_106_outputreg(DELAY,149)
    redist1_i_mul76_7_conv_out_primWireOut_106_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_mul76_7_conv_out_primWireOut_106_mem_q, xout => redist1_i_mul76_7_conv_out_primWireOut_106_outputreg_q, clk => clock, aclr => resetn );

    -- redist2_i_mul76_6_conv_out_primWireOut_91_notEnable(LOGICAL,168)
    redist2_i_mul76_6_conv_out_primWireOut_91_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_i_mul76_6_conv_out_primWireOut_91_nor(LOGICAL,169)
    redist2_i_mul76_6_conv_out_primWireOut_91_nor_q <= not (redist2_i_mul76_6_conv_out_primWireOut_91_notEnable_q or redist2_i_mul76_6_conv_out_primWireOut_91_sticky_ena_q);

    -- redist2_i_mul76_6_conv_out_primWireOut_91_mem_last(CONSTANT,165)
    redist2_i_mul76_6_conv_out_primWireOut_91_mem_last_q <= "01010110";

    -- redist2_i_mul76_6_conv_out_primWireOut_91_cmp(LOGICAL,166)
    redist2_i_mul76_6_conv_out_primWireOut_91_cmp_b <= STD_LOGIC_VECTOR("0" & redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_q);
    redist2_i_mul76_6_conv_out_primWireOut_91_cmp_q <= "1" WHEN redist2_i_mul76_6_conv_out_primWireOut_91_mem_last_q = redist2_i_mul76_6_conv_out_primWireOut_91_cmp_b ELSE "0";

    -- redist2_i_mul76_6_conv_out_primWireOut_91_cmpReg(REG,167)
    redist2_i_mul76_6_conv_out_primWireOut_91_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_mul76_6_conv_out_primWireOut_91_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_mul76_6_conv_out_primWireOut_91_cmpReg_q <= STD_LOGIC_VECTOR(redist2_i_mul76_6_conv_out_primWireOut_91_cmp_q);
        END IF;
    END PROCESS;

    -- redist2_i_mul76_6_conv_out_primWireOut_91_sticky_ena(REG,170)
    redist2_i_mul76_6_conv_out_primWireOut_91_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_mul76_6_conv_out_primWireOut_91_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_mul76_6_conv_out_primWireOut_91_nor_q = "1") THEN
                redist2_i_mul76_6_conv_out_primWireOut_91_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_i_mul76_6_conv_out_primWireOut_91_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_mul76_6_conv_out_primWireOut_91_enaAnd(LOGICAL,171)
    redist2_i_mul76_6_conv_out_primWireOut_91_enaAnd_q <= redist2_i_mul76_6_conv_out_primWireOut_91_sticky_ena_q and VCC_q;

    -- redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt(COUNTER,163)
    -- low=0, high=87, step=1, init=0
    redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_i <= TO_UNSIGNED(0, 7);
            redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_i = TO_UNSIGNED(86, 7)) THEN
                redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_eq <= '1';
            ELSE
                redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_eq <= '0';
            END IF;
            IF (redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_eq = '1') THEN
                redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_i <= redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_i + 41;
            ELSE
                redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_i <= redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_i, 7)));

    -- i_mul76_6_conv(BLACKBOX,76)@291
    -- out out_primWireOut@298
    thei_mul76_6_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_multBlock_typeSFA0Zp06o303d06o00rf01pzc
    PORT MAP (
        in_0 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_6,
        in_1 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_6,
        out_primWireOut => i_mul76_6_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist2_i_mul76_6_conv_out_primWireOut_91_inputreg(DELAY,160)
    redist2_i_mul76_6_conv_out_primWireOut_91_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul76_6_conv_out_primWireOut, xout => redist2_i_mul76_6_conv_out_primWireOut_91_inputreg_q, clk => clock, aclr => resetn );

    -- redist2_i_mul76_6_conv_out_primWireOut_91_wraddr(REG,164)
    redist2_i_mul76_6_conv_out_primWireOut_91_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_mul76_6_conv_out_primWireOut_91_wraddr_q <= "1010111";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_mul76_6_conv_out_primWireOut_91_wraddr_q <= STD_LOGIC_VECTOR(redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_i_mul76_6_conv_out_primWireOut_91_mem(DUALMEM,162)
    redist2_i_mul76_6_conv_out_primWireOut_91_mem_ia <= STD_LOGIC_VECTOR(redist2_i_mul76_6_conv_out_primWireOut_91_inputreg_q);
    redist2_i_mul76_6_conv_out_primWireOut_91_mem_aa <= redist2_i_mul76_6_conv_out_primWireOut_91_wraddr_q;
    redist2_i_mul76_6_conv_out_primWireOut_91_mem_ab <= redist2_i_mul76_6_conv_out_primWireOut_91_rdcnt_q;
    redist2_i_mul76_6_conv_out_primWireOut_91_mem_reset0 <= not (resetn);
    redist2_i_mul76_6_conv_out_primWireOut_91_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 7,
        numwords_a => 88,
        width_b => 32,
        widthad_b => 7,
        numwords_b => 88,
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
        clocken1 => redist2_i_mul76_6_conv_out_primWireOut_91_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist2_i_mul76_6_conv_out_primWireOut_91_mem_reset0,
        clock1 => clock,
        address_a => redist2_i_mul76_6_conv_out_primWireOut_91_mem_aa,
        data_a => redist2_i_mul76_6_conv_out_primWireOut_91_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_i_mul76_6_conv_out_primWireOut_91_mem_ab,
        q_b => redist2_i_mul76_6_conv_out_primWireOut_91_mem_iq
    );
    redist2_i_mul76_6_conv_out_primWireOut_91_mem_q <= redist2_i_mul76_6_conv_out_primWireOut_91_mem_iq(31 downto 0);

    -- redist2_i_mul76_6_conv_out_primWireOut_91_outputreg(DELAY,161)
    redist2_i_mul76_6_conv_out_primWireOut_91_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_mul76_6_conv_out_primWireOut_91_mem_q, xout => redist2_i_mul76_6_conv_out_primWireOut_91_outputreg_q, clk => clock, aclr => resetn );

    -- redist3_i_mul76_5_conv_out_primWireOut_76_notEnable(LOGICAL,180)
    redist3_i_mul76_5_conv_out_primWireOut_76_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_i_mul76_5_conv_out_primWireOut_76_nor(LOGICAL,181)
    redist3_i_mul76_5_conv_out_primWireOut_76_nor_q <= not (redist3_i_mul76_5_conv_out_primWireOut_76_notEnable_q or redist3_i_mul76_5_conv_out_primWireOut_76_sticky_ena_q);

    -- redist3_i_mul76_5_conv_out_primWireOut_76_mem_last(CONSTANT,177)
    redist3_i_mul76_5_conv_out_primWireOut_76_mem_last_q <= "01000111";

    -- redist3_i_mul76_5_conv_out_primWireOut_76_cmp(LOGICAL,178)
    redist3_i_mul76_5_conv_out_primWireOut_76_cmp_b <= STD_LOGIC_VECTOR("0" & redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_q);
    redist3_i_mul76_5_conv_out_primWireOut_76_cmp_q <= "1" WHEN redist3_i_mul76_5_conv_out_primWireOut_76_mem_last_q = redist3_i_mul76_5_conv_out_primWireOut_76_cmp_b ELSE "0";

    -- redist3_i_mul76_5_conv_out_primWireOut_76_cmpReg(REG,179)
    redist3_i_mul76_5_conv_out_primWireOut_76_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_mul76_5_conv_out_primWireOut_76_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_mul76_5_conv_out_primWireOut_76_cmpReg_q <= STD_LOGIC_VECTOR(redist3_i_mul76_5_conv_out_primWireOut_76_cmp_q);
        END IF;
    END PROCESS;

    -- redist3_i_mul76_5_conv_out_primWireOut_76_sticky_ena(REG,182)
    redist3_i_mul76_5_conv_out_primWireOut_76_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_mul76_5_conv_out_primWireOut_76_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_mul76_5_conv_out_primWireOut_76_nor_q = "1") THEN
                redist3_i_mul76_5_conv_out_primWireOut_76_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_i_mul76_5_conv_out_primWireOut_76_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_mul76_5_conv_out_primWireOut_76_enaAnd(LOGICAL,183)
    redist3_i_mul76_5_conv_out_primWireOut_76_enaAnd_q <= redist3_i_mul76_5_conv_out_primWireOut_76_sticky_ena_q and VCC_q;

    -- redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt(COUNTER,175)
    -- low=0, high=72, step=1, init=0
    redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_i <= TO_UNSIGNED(0, 7);
            redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_i = TO_UNSIGNED(71, 7)) THEN
                redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_eq <= '1';
            ELSE
                redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_eq <= '0';
            END IF;
            IF (redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_eq = '1') THEN
                redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_i <= redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_i + 56;
            ELSE
                redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_i <= redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_i, 7)));

    -- i_mul76_5_conv(BLACKBOX,75)@291
    -- out out_primWireOut@298
    thei_mul76_5_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_multBlock_typeSFA0Zp06o303d06o00rf01pzc
    PORT MAP (
        in_0 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_5,
        in_1 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_5,
        out_primWireOut => i_mul76_5_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_mul76_5_conv_out_primWireOut_76_inputreg(DELAY,172)
    redist3_i_mul76_5_conv_out_primWireOut_76_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul76_5_conv_out_primWireOut, xout => redist3_i_mul76_5_conv_out_primWireOut_76_inputreg_q, clk => clock, aclr => resetn );

    -- redist3_i_mul76_5_conv_out_primWireOut_76_wraddr(REG,176)
    redist3_i_mul76_5_conv_out_primWireOut_76_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_mul76_5_conv_out_primWireOut_76_wraddr_q <= "1001000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_mul76_5_conv_out_primWireOut_76_wraddr_q <= STD_LOGIC_VECTOR(redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_i_mul76_5_conv_out_primWireOut_76_mem(DUALMEM,174)
    redist3_i_mul76_5_conv_out_primWireOut_76_mem_ia <= STD_LOGIC_VECTOR(redist3_i_mul76_5_conv_out_primWireOut_76_inputreg_q);
    redist3_i_mul76_5_conv_out_primWireOut_76_mem_aa <= redist3_i_mul76_5_conv_out_primWireOut_76_wraddr_q;
    redist3_i_mul76_5_conv_out_primWireOut_76_mem_ab <= redist3_i_mul76_5_conv_out_primWireOut_76_rdcnt_q;
    redist3_i_mul76_5_conv_out_primWireOut_76_mem_reset0 <= not (resetn);
    redist3_i_mul76_5_conv_out_primWireOut_76_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 7,
        numwords_a => 73,
        width_b => 32,
        widthad_b => 7,
        numwords_b => 73,
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
        clocken1 => redist3_i_mul76_5_conv_out_primWireOut_76_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist3_i_mul76_5_conv_out_primWireOut_76_mem_reset0,
        clock1 => clock,
        address_a => redist3_i_mul76_5_conv_out_primWireOut_76_mem_aa,
        data_a => redist3_i_mul76_5_conv_out_primWireOut_76_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_i_mul76_5_conv_out_primWireOut_76_mem_ab,
        q_b => redist3_i_mul76_5_conv_out_primWireOut_76_mem_iq
    );
    redist3_i_mul76_5_conv_out_primWireOut_76_mem_q <= redist3_i_mul76_5_conv_out_primWireOut_76_mem_iq(31 downto 0);

    -- redist3_i_mul76_5_conv_out_primWireOut_76_outputreg(DELAY,173)
    redist3_i_mul76_5_conv_out_primWireOut_76_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_mul76_5_conv_out_primWireOut_76_mem_q, xout => redist3_i_mul76_5_conv_out_primWireOut_76_outputreg_q, clk => clock, aclr => resetn );

    -- redist4_i_mul76_4_conv_out_primWireOut_61_notEnable(LOGICAL,192)
    redist4_i_mul76_4_conv_out_primWireOut_61_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist4_i_mul76_4_conv_out_primWireOut_61_nor(LOGICAL,193)
    redist4_i_mul76_4_conv_out_primWireOut_61_nor_q <= not (redist4_i_mul76_4_conv_out_primWireOut_61_notEnable_q or redist4_i_mul76_4_conv_out_primWireOut_61_sticky_ena_q);

    -- redist4_i_mul76_4_conv_out_primWireOut_61_mem_last(CONSTANT,189)
    redist4_i_mul76_4_conv_out_primWireOut_61_mem_last_q <= "0111000";

    -- redist4_i_mul76_4_conv_out_primWireOut_61_cmp(LOGICAL,190)
    redist4_i_mul76_4_conv_out_primWireOut_61_cmp_b <= STD_LOGIC_VECTOR("0" & redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_q);
    redist4_i_mul76_4_conv_out_primWireOut_61_cmp_q <= "1" WHEN redist4_i_mul76_4_conv_out_primWireOut_61_mem_last_q = redist4_i_mul76_4_conv_out_primWireOut_61_cmp_b ELSE "0";

    -- redist4_i_mul76_4_conv_out_primWireOut_61_cmpReg(REG,191)
    redist4_i_mul76_4_conv_out_primWireOut_61_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_mul76_4_conv_out_primWireOut_61_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_mul76_4_conv_out_primWireOut_61_cmpReg_q <= STD_LOGIC_VECTOR(redist4_i_mul76_4_conv_out_primWireOut_61_cmp_q);
        END IF;
    END PROCESS;

    -- redist4_i_mul76_4_conv_out_primWireOut_61_sticky_ena(REG,194)
    redist4_i_mul76_4_conv_out_primWireOut_61_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_mul76_4_conv_out_primWireOut_61_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_mul76_4_conv_out_primWireOut_61_nor_q = "1") THEN
                redist4_i_mul76_4_conv_out_primWireOut_61_sticky_ena_q <= STD_LOGIC_VECTOR(redist4_i_mul76_4_conv_out_primWireOut_61_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_mul76_4_conv_out_primWireOut_61_enaAnd(LOGICAL,195)
    redist4_i_mul76_4_conv_out_primWireOut_61_enaAnd_q <= redist4_i_mul76_4_conv_out_primWireOut_61_sticky_ena_q and VCC_q;

    -- redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt(COUNTER,187)
    -- low=0, high=57, step=1, init=0
    redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_i <= TO_UNSIGNED(0, 6);
            redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_i = TO_UNSIGNED(56, 6)) THEN
                redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_eq <= '1';
            ELSE
                redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_eq <= '0';
            END IF;
            IF (redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_eq = '1') THEN
                redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_i <= redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_i + 7;
            ELSE
                redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_i <= redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_i, 6)));

    -- i_mul76_4_conv(BLACKBOX,74)@291
    -- out out_primWireOut@298
    thei_mul76_4_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_multBlock_typeSFA0Zp06o303d06o00rf01pzc
    PORT MAP (
        in_0 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_4,
        in_1 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_4,
        out_primWireOut => i_mul76_4_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_mul76_4_conv_out_primWireOut_61_inputreg(DELAY,184)
    redist4_i_mul76_4_conv_out_primWireOut_61_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul76_4_conv_out_primWireOut, xout => redist4_i_mul76_4_conv_out_primWireOut_61_inputreg_q, clk => clock, aclr => resetn );

    -- redist4_i_mul76_4_conv_out_primWireOut_61_wraddr(REG,188)
    redist4_i_mul76_4_conv_out_primWireOut_61_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_mul76_4_conv_out_primWireOut_61_wraddr_q <= "111001";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_mul76_4_conv_out_primWireOut_61_wraddr_q <= STD_LOGIC_VECTOR(redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist4_i_mul76_4_conv_out_primWireOut_61_mem(DUALMEM,186)
    redist4_i_mul76_4_conv_out_primWireOut_61_mem_ia <= STD_LOGIC_VECTOR(redist4_i_mul76_4_conv_out_primWireOut_61_inputreg_q);
    redist4_i_mul76_4_conv_out_primWireOut_61_mem_aa <= redist4_i_mul76_4_conv_out_primWireOut_61_wraddr_q;
    redist4_i_mul76_4_conv_out_primWireOut_61_mem_ab <= redist4_i_mul76_4_conv_out_primWireOut_61_rdcnt_q;
    redist4_i_mul76_4_conv_out_primWireOut_61_mem_reset0 <= not (resetn);
    redist4_i_mul76_4_conv_out_primWireOut_61_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 6,
        numwords_a => 58,
        width_b => 32,
        widthad_b => 6,
        numwords_b => 58,
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
        clocken1 => redist4_i_mul76_4_conv_out_primWireOut_61_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist4_i_mul76_4_conv_out_primWireOut_61_mem_reset0,
        clock1 => clock,
        address_a => redist4_i_mul76_4_conv_out_primWireOut_61_mem_aa,
        data_a => redist4_i_mul76_4_conv_out_primWireOut_61_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist4_i_mul76_4_conv_out_primWireOut_61_mem_ab,
        q_b => redist4_i_mul76_4_conv_out_primWireOut_61_mem_iq
    );
    redist4_i_mul76_4_conv_out_primWireOut_61_mem_q <= redist4_i_mul76_4_conv_out_primWireOut_61_mem_iq(31 downto 0);

    -- redist4_i_mul76_4_conv_out_primWireOut_61_outputreg(DELAY,185)
    redist4_i_mul76_4_conv_out_primWireOut_61_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_i_mul76_4_conv_out_primWireOut_61_mem_q, xout => redist4_i_mul76_4_conv_out_primWireOut_61_outputreg_q, clk => clock, aclr => resetn );

    -- redist5_i_mul76_3_conv_out_primWireOut_46_notEnable(LOGICAL,204)
    redist5_i_mul76_3_conv_out_primWireOut_46_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist5_i_mul76_3_conv_out_primWireOut_46_nor(LOGICAL,205)
    redist5_i_mul76_3_conv_out_primWireOut_46_nor_q <= not (redist5_i_mul76_3_conv_out_primWireOut_46_notEnable_q or redist5_i_mul76_3_conv_out_primWireOut_46_sticky_ena_q);

    -- redist5_i_mul76_3_conv_out_primWireOut_46_mem_last(CONSTANT,201)
    redist5_i_mul76_3_conv_out_primWireOut_46_mem_last_q <= "0101001";

    -- redist5_i_mul76_3_conv_out_primWireOut_46_cmp(LOGICAL,202)
    redist5_i_mul76_3_conv_out_primWireOut_46_cmp_b <= STD_LOGIC_VECTOR("0" & redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_q);
    redist5_i_mul76_3_conv_out_primWireOut_46_cmp_q <= "1" WHEN redist5_i_mul76_3_conv_out_primWireOut_46_mem_last_q = redist5_i_mul76_3_conv_out_primWireOut_46_cmp_b ELSE "0";

    -- redist5_i_mul76_3_conv_out_primWireOut_46_cmpReg(REG,203)
    redist5_i_mul76_3_conv_out_primWireOut_46_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_mul76_3_conv_out_primWireOut_46_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_mul76_3_conv_out_primWireOut_46_cmpReg_q <= STD_LOGIC_VECTOR(redist5_i_mul76_3_conv_out_primWireOut_46_cmp_q);
        END IF;
    END PROCESS;

    -- redist5_i_mul76_3_conv_out_primWireOut_46_sticky_ena(REG,206)
    redist5_i_mul76_3_conv_out_primWireOut_46_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_mul76_3_conv_out_primWireOut_46_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist5_i_mul76_3_conv_out_primWireOut_46_nor_q = "1") THEN
                redist5_i_mul76_3_conv_out_primWireOut_46_sticky_ena_q <= STD_LOGIC_VECTOR(redist5_i_mul76_3_conv_out_primWireOut_46_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_i_mul76_3_conv_out_primWireOut_46_enaAnd(LOGICAL,207)
    redist5_i_mul76_3_conv_out_primWireOut_46_enaAnd_q <= redist5_i_mul76_3_conv_out_primWireOut_46_sticky_ena_q and VCC_q;

    -- redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt(COUNTER,199)
    -- low=0, high=42, step=1, init=0
    redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_i <= TO_UNSIGNED(0, 6);
            redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_i = TO_UNSIGNED(41, 6)) THEN
                redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_eq <= '1';
            ELSE
                redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_eq <= '0';
            END IF;
            IF (redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_eq = '1') THEN
                redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_i <= redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_i + 22;
            ELSE
                redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_i <= redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_i, 6)));

    -- i_mul76_3_conv(BLACKBOX,73)@291
    -- out out_primWireOut@298
    thei_mul76_3_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_multBlock_typeSFA0Zp06o303d06o00rf01pzc
    PORT MAP (
        in_0 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_3,
        in_1 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_3,
        out_primWireOut => i_mul76_3_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_mul76_3_conv_out_primWireOut_46_inputreg(DELAY,196)
    redist5_i_mul76_3_conv_out_primWireOut_46_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul76_3_conv_out_primWireOut, xout => redist5_i_mul76_3_conv_out_primWireOut_46_inputreg_q, clk => clock, aclr => resetn );

    -- redist5_i_mul76_3_conv_out_primWireOut_46_wraddr(REG,200)
    redist5_i_mul76_3_conv_out_primWireOut_46_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_mul76_3_conv_out_primWireOut_46_wraddr_q <= "101010";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_mul76_3_conv_out_primWireOut_46_wraddr_q <= STD_LOGIC_VECTOR(redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist5_i_mul76_3_conv_out_primWireOut_46_mem(DUALMEM,198)
    redist5_i_mul76_3_conv_out_primWireOut_46_mem_ia <= STD_LOGIC_VECTOR(redist5_i_mul76_3_conv_out_primWireOut_46_inputreg_q);
    redist5_i_mul76_3_conv_out_primWireOut_46_mem_aa <= redist5_i_mul76_3_conv_out_primWireOut_46_wraddr_q;
    redist5_i_mul76_3_conv_out_primWireOut_46_mem_ab <= redist5_i_mul76_3_conv_out_primWireOut_46_rdcnt_q;
    redist5_i_mul76_3_conv_out_primWireOut_46_mem_reset0 <= not (resetn);
    redist5_i_mul76_3_conv_out_primWireOut_46_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 6,
        numwords_a => 43,
        width_b => 32,
        widthad_b => 6,
        numwords_b => 43,
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
        clocken1 => redist5_i_mul76_3_conv_out_primWireOut_46_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist5_i_mul76_3_conv_out_primWireOut_46_mem_reset0,
        clock1 => clock,
        address_a => redist5_i_mul76_3_conv_out_primWireOut_46_mem_aa,
        data_a => redist5_i_mul76_3_conv_out_primWireOut_46_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist5_i_mul76_3_conv_out_primWireOut_46_mem_ab,
        q_b => redist5_i_mul76_3_conv_out_primWireOut_46_mem_iq
    );
    redist5_i_mul76_3_conv_out_primWireOut_46_mem_q <= redist5_i_mul76_3_conv_out_primWireOut_46_mem_iq(31 downto 0);

    -- redist5_i_mul76_3_conv_out_primWireOut_46_outputreg(DELAY,197)
    redist5_i_mul76_3_conv_out_primWireOut_46_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_i_mul76_3_conv_out_primWireOut_46_mem_q, xout => redist5_i_mul76_3_conv_out_primWireOut_46_outputreg_q, clk => clock, aclr => resetn );

    -- redist6_i_mul76_2_conv_out_primWireOut_31_notEnable(LOGICAL,216)
    redist6_i_mul76_2_conv_out_primWireOut_31_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist6_i_mul76_2_conv_out_primWireOut_31_nor(LOGICAL,217)
    redist6_i_mul76_2_conv_out_primWireOut_31_nor_q <= not (redist6_i_mul76_2_conv_out_primWireOut_31_notEnable_q or redist6_i_mul76_2_conv_out_primWireOut_31_sticky_ena_q);

    -- redist6_i_mul76_2_conv_out_primWireOut_31_mem_last(CONSTANT,213)
    redist6_i_mul76_2_conv_out_primWireOut_31_mem_last_q <= "011010";

    -- redist6_i_mul76_2_conv_out_primWireOut_31_cmp(LOGICAL,214)
    redist6_i_mul76_2_conv_out_primWireOut_31_cmp_b <= STD_LOGIC_VECTOR("0" & redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_q);
    redist6_i_mul76_2_conv_out_primWireOut_31_cmp_q <= "1" WHEN redist6_i_mul76_2_conv_out_primWireOut_31_mem_last_q = redist6_i_mul76_2_conv_out_primWireOut_31_cmp_b ELSE "0";

    -- redist6_i_mul76_2_conv_out_primWireOut_31_cmpReg(REG,215)
    redist6_i_mul76_2_conv_out_primWireOut_31_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_mul76_2_conv_out_primWireOut_31_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist6_i_mul76_2_conv_out_primWireOut_31_cmpReg_q <= STD_LOGIC_VECTOR(redist6_i_mul76_2_conv_out_primWireOut_31_cmp_q);
        END IF;
    END PROCESS;

    -- redist6_i_mul76_2_conv_out_primWireOut_31_sticky_ena(REG,218)
    redist6_i_mul76_2_conv_out_primWireOut_31_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_mul76_2_conv_out_primWireOut_31_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist6_i_mul76_2_conv_out_primWireOut_31_nor_q = "1") THEN
                redist6_i_mul76_2_conv_out_primWireOut_31_sticky_ena_q <= STD_LOGIC_VECTOR(redist6_i_mul76_2_conv_out_primWireOut_31_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_i_mul76_2_conv_out_primWireOut_31_enaAnd(LOGICAL,219)
    redist6_i_mul76_2_conv_out_primWireOut_31_enaAnd_q <= redist6_i_mul76_2_conv_out_primWireOut_31_sticky_ena_q and VCC_q;

    -- redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt(COUNTER,211)
    -- low=0, high=27, step=1, init=0
    redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_i = TO_UNSIGNED(26, 5)) THEN
                redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_eq <= '1';
            ELSE
                redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_eq <= '0';
            END IF;
            IF (redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_eq = '1') THEN
                redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_i <= redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_i + 5;
            ELSE
                redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_i <= redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_i, 5)));

    -- i_mul76_2_conv(BLACKBOX,72)@291
    -- out out_primWireOut@298
    thei_mul76_2_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_multBlock_typeSFA0Zp06o303d06o00rf01pzc
    PORT MAP (
        in_0 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_2,
        in_1 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_2,
        out_primWireOut => i_mul76_2_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist6_i_mul76_2_conv_out_primWireOut_31_inputreg(DELAY,208)
    redist6_i_mul76_2_conv_out_primWireOut_31_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul76_2_conv_out_primWireOut, xout => redist6_i_mul76_2_conv_out_primWireOut_31_inputreg_q, clk => clock, aclr => resetn );

    -- redist6_i_mul76_2_conv_out_primWireOut_31_wraddr(REG,212)
    redist6_i_mul76_2_conv_out_primWireOut_31_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_mul76_2_conv_out_primWireOut_31_wraddr_q <= "11011";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist6_i_mul76_2_conv_out_primWireOut_31_wraddr_q <= STD_LOGIC_VECTOR(redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist6_i_mul76_2_conv_out_primWireOut_31_mem(DUALMEM,210)
    redist6_i_mul76_2_conv_out_primWireOut_31_mem_ia <= STD_LOGIC_VECTOR(redist6_i_mul76_2_conv_out_primWireOut_31_inputreg_q);
    redist6_i_mul76_2_conv_out_primWireOut_31_mem_aa <= redist6_i_mul76_2_conv_out_primWireOut_31_wraddr_q;
    redist6_i_mul76_2_conv_out_primWireOut_31_mem_ab <= redist6_i_mul76_2_conv_out_primWireOut_31_rdcnt_q;
    redist6_i_mul76_2_conv_out_primWireOut_31_mem_reset0 <= not (resetn);
    redist6_i_mul76_2_conv_out_primWireOut_31_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 28,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 28,
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
        clocken1 => redist6_i_mul76_2_conv_out_primWireOut_31_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist6_i_mul76_2_conv_out_primWireOut_31_mem_reset0,
        clock1 => clock,
        address_a => redist6_i_mul76_2_conv_out_primWireOut_31_mem_aa,
        data_a => redist6_i_mul76_2_conv_out_primWireOut_31_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist6_i_mul76_2_conv_out_primWireOut_31_mem_ab,
        q_b => redist6_i_mul76_2_conv_out_primWireOut_31_mem_iq
    );
    redist6_i_mul76_2_conv_out_primWireOut_31_mem_q <= redist6_i_mul76_2_conv_out_primWireOut_31_mem_iq(31 downto 0);

    -- redist6_i_mul76_2_conv_out_primWireOut_31_outputreg(DELAY,209)
    redist6_i_mul76_2_conv_out_primWireOut_31_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_i_mul76_2_conv_out_primWireOut_31_mem_q, xout => redist6_i_mul76_2_conv_out_primWireOut_31_outputreg_q, clk => clock, aclr => resetn );

    -- redist7_i_mul76_1_conv_out_primWireOut_16_notEnable(LOGICAL,228)
    redist7_i_mul76_1_conv_out_primWireOut_16_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist7_i_mul76_1_conv_out_primWireOut_16_nor(LOGICAL,229)
    redist7_i_mul76_1_conv_out_primWireOut_16_nor_q <= not (redist7_i_mul76_1_conv_out_primWireOut_16_notEnable_q or redist7_i_mul76_1_conv_out_primWireOut_16_sticky_ena_q);

    -- redist7_i_mul76_1_conv_out_primWireOut_16_mem_last(CONSTANT,225)
    redist7_i_mul76_1_conv_out_primWireOut_16_mem_last_q <= "01011";

    -- redist7_i_mul76_1_conv_out_primWireOut_16_cmp(LOGICAL,226)
    redist7_i_mul76_1_conv_out_primWireOut_16_cmp_b <= STD_LOGIC_VECTOR("0" & redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_q);
    redist7_i_mul76_1_conv_out_primWireOut_16_cmp_q <= "1" WHEN redist7_i_mul76_1_conv_out_primWireOut_16_mem_last_q = redist7_i_mul76_1_conv_out_primWireOut_16_cmp_b ELSE "0";

    -- redist7_i_mul76_1_conv_out_primWireOut_16_cmpReg(REG,227)
    redist7_i_mul76_1_conv_out_primWireOut_16_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_i_mul76_1_conv_out_primWireOut_16_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist7_i_mul76_1_conv_out_primWireOut_16_cmpReg_q <= STD_LOGIC_VECTOR(redist7_i_mul76_1_conv_out_primWireOut_16_cmp_q);
        END IF;
    END PROCESS;

    -- redist7_i_mul76_1_conv_out_primWireOut_16_sticky_ena(REG,230)
    redist7_i_mul76_1_conv_out_primWireOut_16_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_i_mul76_1_conv_out_primWireOut_16_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist7_i_mul76_1_conv_out_primWireOut_16_nor_q = "1") THEN
                redist7_i_mul76_1_conv_out_primWireOut_16_sticky_ena_q <= STD_LOGIC_VECTOR(redist7_i_mul76_1_conv_out_primWireOut_16_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_i_mul76_1_conv_out_primWireOut_16_enaAnd(LOGICAL,231)
    redist7_i_mul76_1_conv_out_primWireOut_16_enaAnd_q <= redist7_i_mul76_1_conv_out_primWireOut_16_sticky_ena_q and VCC_q;

    -- redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt(COUNTER,223)
    -- low=0, high=12, step=1, init=0
    redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_i = TO_UNSIGNED(11, 4)) THEN
                redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_eq <= '1';
            ELSE
                redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_eq <= '0';
            END IF;
            IF (redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_eq = '1') THEN
                redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_i <= redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_i + 4;
            ELSE
                redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_i <= redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_i, 4)));

    -- i_mul76_1_conv(BLACKBOX,71)@291
    -- out out_primWireOut@298
    thei_mul76_1_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_multBlock_typeSFA0Zp06o303d06o00rf01pzc
    PORT MAP (
        in_0 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_1,
        in_1 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_1,
        out_primWireOut => i_mul76_1_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist7_i_mul76_1_conv_out_primWireOut_16_inputreg(DELAY,220)
    redist7_i_mul76_1_conv_out_primWireOut_16_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul76_1_conv_out_primWireOut, xout => redist7_i_mul76_1_conv_out_primWireOut_16_inputreg_q, clk => clock, aclr => resetn );

    -- redist7_i_mul76_1_conv_out_primWireOut_16_wraddr(REG,224)
    redist7_i_mul76_1_conv_out_primWireOut_16_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_i_mul76_1_conv_out_primWireOut_16_wraddr_q <= "1100";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist7_i_mul76_1_conv_out_primWireOut_16_wraddr_q <= STD_LOGIC_VECTOR(redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist7_i_mul76_1_conv_out_primWireOut_16_mem(DUALMEM,222)
    redist7_i_mul76_1_conv_out_primWireOut_16_mem_ia <= STD_LOGIC_VECTOR(redist7_i_mul76_1_conv_out_primWireOut_16_inputreg_q);
    redist7_i_mul76_1_conv_out_primWireOut_16_mem_aa <= redist7_i_mul76_1_conv_out_primWireOut_16_wraddr_q;
    redist7_i_mul76_1_conv_out_primWireOut_16_mem_ab <= redist7_i_mul76_1_conv_out_primWireOut_16_rdcnt_q;
    redist7_i_mul76_1_conv_out_primWireOut_16_mem_reset0 <= not (resetn);
    redist7_i_mul76_1_conv_out_primWireOut_16_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 13,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 13,
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
        clocken1 => redist7_i_mul76_1_conv_out_primWireOut_16_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist7_i_mul76_1_conv_out_primWireOut_16_mem_reset0,
        clock1 => clock,
        address_a => redist7_i_mul76_1_conv_out_primWireOut_16_mem_aa,
        data_a => redist7_i_mul76_1_conv_out_primWireOut_16_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist7_i_mul76_1_conv_out_primWireOut_16_mem_ab,
        q_b => redist7_i_mul76_1_conv_out_primWireOut_16_mem_iq
    );
    redist7_i_mul76_1_conv_out_primWireOut_16_mem_q <= redist7_i_mul76_1_conv_out_primWireOut_16_mem_iq(31 downto 0);

    -- redist7_i_mul76_1_conv_out_primWireOut_16_outputreg(DELAY,221)
    redist7_i_mul76_1_conv_out_primWireOut_16_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_i_mul76_1_conv_out_primWireOut_16_mem_q, xout => redist7_i_mul76_1_conv_out_primWireOut_16_outputreg_q, clk => clock, aclr => resetn );

    -- i_mul76_conv(BLACKBOX,78)@291
    -- out out_primWireOut@298
    thei_mul76_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_multBlock_typeSFA0Zp06o303d06o00rf01pzc
    PORT MAP (
        in_0 => i_load_memcoalesce_null_load_0_conv_aunroll_x_out_o_readdata_0,
        in_1 => i_load_memcoalesce_null_load_02_conv_aunroll_x_out_o_readdata_0,
        out_primWireOut => i_mul76_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist0_i_mul76_conv_out_primWireOut_1(DELAY,125)
    redist0_i_mul76_conv_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul76_conv_out_primWireOut, xout => redist0_i_mul76_conv_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_notEnable(LOGICAL,255)
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_nor(LOGICAL,256)
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_nor_q <= not (redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_notEnable_q or redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_sticky_ena_q);

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_last(CONSTANT,252)
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_last_q <= "01000";

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmp(LOGICAL,253)
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmp_b <= STD_LOGIC_VECTOR("0" & redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_q);
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmp_q <= "1" WHEN redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_last_q = redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmp_b ELSE "0";

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmpReg(REG,254)
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmpReg_q <= STD_LOGIC_VECTOR(redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmp_q);
        END IF;
    END PROCESS;

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_sticky_ena(REG,257)
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_nor_q = "1") THEN
                redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_sticky_ena_q <= STD_LOGIC_VECTOR(redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_enaAnd(LOGICAL,258)
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_enaAnd_q <= redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_sticky_ena_q and VCC_q;

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt(COUNTER,250)
    -- low=0, high=9, step=1, init=0
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_i = TO_UNSIGNED(8, 4)) THEN
                redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_eq <= '1';
            ELSE
                redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_eq <= '0';
            END IF;
            IF (redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_eq = '1') THEN
                redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_i <= redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_i + 7;
            ELSE
                redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_i <= redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_i, 4)));

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_wraddr(REG,251)
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_wraddr_q <= "1001";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_wraddr_q <= STD_LOGIC_VECTOR(redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem(DUALMEM,249)
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_ia <= STD_LOGIC_VECTOR(in_unnamed_conv3_8);
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_aa <= redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_wraddr_q;
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_ab <= redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_rdcnt_q;
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_reset0 <= not (resetn);
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 10,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 10,
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
        clocken1 => redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_reset0,
        clock1 => clock,
        address_a => redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_aa,
        data_a => redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_ab,
        q_b => redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_iq
    );
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_q <= redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_iq(31 downto 0);

    -- redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_outputreg(DELAY,248)
    redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_mem_q, xout => redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_outputreg_q, clk => clock, aclr => resetn );

    -- i_add77_conv(BLACKBOX,49)@299
    -- out out_primWireOut@313
    thei_add77_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u
    PORT MAP (
        in_0 => redist19_sync_in_aunroll_x_in_unnamed_conv3_8_12_outputreg_q,
        in_1 => redist0_i_mul76_conv_out_primWireOut_1_q,
        out_primWireOut => i_add77_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist8_i_add77_conv_out_primWireOut_1(DELAY,133)
    redist8_i_add77_conv_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add77_conv_out_primWireOut, xout => redist8_i_add77_conv_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_add77_1_conv(BLACKBOX,42)@314
    -- out out_primWireOut@328
    thei_add77_1_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u
    PORT MAP (
        in_0 => redist8_i_add77_conv_out_primWireOut_1_q,
        in_1 => redist7_i_mul76_1_conv_out_primWireOut_16_outputreg_q,
        out_primWireOut => i_add77_1_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist14_i_add77_1_conv_out_primWireOut_1(DELAY,139)
    redist14_i_add77_1_conv_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add77_1_conv_out_primWireOut, xout => redist14_i_add77_1_conv_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_add77_2_conv(BLACKBOX,43)@329
    -- out out_primWireOut@343
    thei_add77_2_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u
    PORT MAP (
        in_0 => redist14_i_add77_1_conv_out_primWireOut_1_q,
        in_1 => redist6_i_mul76_2_conv_out_primWireOut_31_outputreg_q,
        out_primWireOut => i_add77_2_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist13_i_add77_2_conv_out_primWireOut_1(DELAY,138)
    redist13_i_add77_2_conv_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add77_2_conv_out_primWireOut, xout => redist13_i_add77_2_conv_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_add77_3_conv(BLACKBOX,44)@344
    -- out out_primWireOut@358
    thei_add77_3_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u
    PORT MAP (
        in_0 => redist13_i_add77_2_conv_out_primWireOut_1_q,
        in_1 => redist5_i_mul76_3_conv_out_primWireOut_46_outputreg_q,
        out_primWireOut => i_add77_3_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist12_i_add77_3_conv_out_primWireOut_1(DELAY,137)
    redist12_i_add77_3_conv_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add77_3_conv_out_primWireOut, xout => redist12_i_add77_3_conv_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_add77_4_conv(BLACKBOX,45)@359
    -- out out_primWireOut@373
    thei_add77_4_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u
    PORT MAP (
        in_0 => redist12_i_add77_3_conv_out_primWireOut_1_q,
        in_1 => redist4_i_mul76_4_conv_out_primWireOut_61_outputreg_q,
        out_primWireOut => i_add77_4_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist11_i_add77_4_conv_out_primWireOut_1(DELAY,136)
    redist11_i_add77_4_conv_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add77_4_conv_out_primWireOut, xout => redist11_i_add77_4_conv_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_add77_5_conv(BLACKBOX,46)@374
    -- out out_primWireOut@388
    thei_add77_5_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u
    PORT MAP (
        in_0 => redist11_i_add77_4_conv_out_primWireOut_1_q,
        in_1 => redist3_i_mul76_5_conv_out_primWireOut_76_outputreg_q,
        out_primWireOut => i_add77_5_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist10_i_add77_5_conv_out_primWireOut_1(DELAY,135)
    redist10_i_add77_5_conv_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add77_5_conv_out_primWireOut, xout => redist10_i_add77_5_conv_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_add77_6_conv(BLACKBOX,47)@389
    -- out out_primWireOut@403
    thei_add77_6_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u
    PORT MAP (
        in_0 => redist10_i_add77_5_conv_out_primWireOut_1_q,
        in_1 => redist2_i_mul76_6_conv_out_primWireOut_91_outputreg_q,
        out_primWireOut => i_add77_6_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist9_i_add77_6_conv_out_primWireOut_1(DELAY,134)
    redist9_i_add77_6_conv_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add77_6_conv_out_primWireOut, xout => redist9_i_add77_6_conv_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_add77_7_conv(BLACKBOX,48)@404
    -- out out_primWireOut@418
    thei_add77_7_conv : floatComponent_i_sfc_logic_c1_for_body_conv_c1_enter113_conv304_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u
    PORT MAP (
        in_0 => redist9_i_add77_6_conv_out_primWireOut_1_q,
        in_1 => redist1_i_mul76_7_conv_out_primWireOut_106_outputreg_q,
        out_primWireOut => i_add77_7_conv_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- sync_out_aunroll_x(GPOUT,34)@418
    out_c1_exi1115_0 <= GND_q;
    out_c1_exi1115_1 <= i_add77_7_conv_out_primWireOut;
    out_o_valid <= redist16_sync_in_aunroll_x_in_i_valid_131_q;

    -- ext_sig_sync_out(GPOUT,39)
    out_memcoalesce_null_load_0_avm_address <= i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_address;
    out_memcoalesce_null_load_0_avm_enable <= i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_enable;
    out_memcoalesce_null_load_0_avm_read <= i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_read;
    out_memcoalesce_null_load_0_avm_write <= i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_write;
    out_memcoalesce_null_load_0_avm_writedata <= i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_writedata;
    out_memcoalesce_null_load_0_avm_byteenable <= i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_byteenable;
    out_memcoalesce_null_load_0_avm_burstcount <= i_load_memcoalesce_null_load_0_conv_aunroll_x_out_memcoalesce_null_load_0_avm_burstcount;

END normal;
