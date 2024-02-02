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

-- VHDL created from bb_conv_B1_stall_region
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

entity bb_conv_B1_stall_region is
    port (
        in_wgl_0_wgs_wg_size : in std_logic_vector(31 downto 0);  -- ufix32
        out_wgl_1_enter_exit_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_1_enter_exit_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_N_Fin_dim : in std_logic_vector(31 downto 0);  -- ufix32
        in_a_024 : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id18 : in std_logic_vector(31 downto 0);  -- ufix32
        in_add138 : in std_logic_vector(31 downto 0);  -- ufix32
        in_b_025 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe21 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe33 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe14 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe25 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp429 : in std_logic_vector(0 downto 0);  -- ufix1
        in_conv_out_023 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_global_id_012 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_114 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_015 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_116 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul387 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul6 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_acl_hw_wg_id18 : out std_logic_vector(31 downto 0);  -- ufix32
        out_add138 : out std_logic_vector(31 downto 0);  -- ufix32
        out_add81 : out std_logic_vector(31 downto 0);  -- ufix32
        out_add82 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe21 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe33 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe1117 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c1_exe14 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe25 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp429 : out std_logic_vector(0 downto 0);  -- ufix1
        out_cmp_GUARD : out std_logic_vector(0 downto 0);  -- ufix1
        out_global_id_012 : out std_logic_vector(31 downto 0);  -- ufix32
        out_global_id_114 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_015 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_116 : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul387 : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul6 : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_1_enter_exit_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_1_enter_exit_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv0_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv0_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_N_Fin_sq_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_wgl_1_wgs_wg_size : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_19_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_19_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_memdep_19_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_19_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_P_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_conv_wt : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_19_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_memdep_19_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_memdep_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_memcoalesce_null_load_0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_0_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_0_exit_exit_valid_in : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_0_exit_exit_stall_in : out std_logic_vector(0 downto 0);  -- ufix1
        in_barrier_unnamed_conv2_wgs_workgroup_size : in std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_02_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_02_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_memcoalesce_null_load_02_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_02_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_memcoalesce_null_load_0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_1_exit_exit_valid_in : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_1_exit_exit_stall_in : out std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_0_exit_exit_valid_out : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_0_exit_exit_stall_out : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_02_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_memcoalesce_null_load_02_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_02_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_02_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_1_exit_exit_valid_out : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_1_exit_exit_stall_out : in std_logic_vector(0 downto 0);  -- ufix1
        in_barrier_unnamed_conv6_wgs_workgroup_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_wgl_0_enter_exit_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_0_enter_exit_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_0_enter_exit_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_0_enter_exit_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_K_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_B1_stall_region;

architecture normal of bb_conv_B1_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv_B1_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_data_in_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_9 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_11 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_15 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_data_out_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_9 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_15 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_for_body_conv_c0_enter103_conv is
        port (
            in_c0_eni8_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni8_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni8_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni8_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni8_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni8_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni8_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni8_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni8_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_K_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fin_dim : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fin_sq_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_P_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit108_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit108_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit108_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit108_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_for_body_conv_c1_enter113_conv is
        port (
            in_unnamed_conv3_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv3_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_conv3_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv3_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_conv3_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv3_5 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_conv3_6 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_conv3_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv3_8 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_0_exit_exit_stall_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_0_exit_exit_valid_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_1_exit_exit_stall_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_1_exit_exit_valid_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit116_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit116_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_memcoalesce_null_load_02_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_02_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_0_exit_exit_stall_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_0_exit_exit_valid_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_1_exit_exit_stall_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_1_exit_exit_valid_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_wg_limiter_enter_l_grpid_0_conv257 is
        port (
            in_i_data : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_0_enter_exit_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_0_enter_exit_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_0_wgs_wg_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_0_enter_exit_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_0_enter_exit_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_wg_limiter_enter_l_grpid_1_conv259 is
        port (
            in_i_data : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_1_enter_exit_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_1_enter_exit_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_1_wgs_wg_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_1_enter_exit_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_1_enter_exit_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_conv0_conv292 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_conv1_conv298 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sbar_unnamed_conv2_conv302 is
        port (
            in_data_entry : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_entry : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_workgroup_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_exit : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_entry : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_exit : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sbar_unnamed_conv6_conv315 is
        port (
            in_data_entry : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_entry : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_workgroup_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_exit : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_entry : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_exit : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_19_conv296 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_bitwiseor : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Floating Point
            in_memdep_19_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_memdep_19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_19_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_19_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_19_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_conv300 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_bitwiseor : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Floating Point
            in_memdep_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_conv_wt_sync_buffer_conv255 is
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
    signal bgTrunc_i_add14_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add81_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add82_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_11 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_14 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_data_out_15 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_2_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_multconst_x_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx18_rm_conv_conv289_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_2_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx61_rm_conv_conv290_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_conv_conv295_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_conv_conv295_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx_conv_conv295_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_conv_conv295_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_conv_conv295_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_conv_conv295_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_conv_conv295_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom15_rm_conv_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom16_rm_conv_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_conv_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_l_grpid_0_addr_zext_conv_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_l_grpid_1_addr_zext_conv_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_0_exit_exit_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_0_exit_exit_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_1_exit_exit_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_1_exit_exit_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal c_float_0_000000e_00_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_8gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_undef_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_26_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_26_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_wg_limiter_enter_l_grpid_0_conv_out_wgl_0_enter_exit_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_wg_limiter_enter_l_grpid_0_conv_out_wgl_0_enter_exit_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_wg_limiter_enter_l_grpid_1_conv_out_wgl_1_enter_exit_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_wg_limiter_enter_l_grpid_1_conv_out_wgl_1_enter_exit_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add14_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add14_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add14_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add14_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add81_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add81_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add81_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add81_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add82_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add82_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add82_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add82_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add82_conv_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_add82_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add82_conv_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_arrayidx18_rm_conv_vt_const_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_arrayidx18_rm_conv_vt_const_63_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx18_rm_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx18_rm_conv_vt_select_7_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_arrayidx61_rm_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx61_rm_conv_vt_select_7_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_barrier_dep_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_conv_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp_conv_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp_conv_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp_conv_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_guard_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_idxprom15_rm_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom15_rm_conv_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_idxprom16_rm_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom16_rm_conv_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_l_grpid_0_addr_conv_vt_const_7_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_l_grpid_0_addr_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_l_grpid_0_addr_conv_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_l_grpid_0_addr_zext_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_l_grpid_0_addr_zext_conv_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_l_grpid_1_addr_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_l_grpid_1_addr_conv_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_l_grpid_1_addr_zext_conv_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_l_grpid_1_addr_zext_conv_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_load_unnamed_conv0_conv_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_conv0_conv_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv0_conv_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_load_unnamed_conv1_conv_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_conv1_conv_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1_conv_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_sbar_unnamed_conv2_conv_out_data_exit : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sbar_unnamed_conv2_conv_out_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sbar_unnamed_conv2_conv_out_valid_exit : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sbar_unnamed_conv6_conv_out_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sbar_unnamed_conv6_conv_out_valid_exit : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_conv_out_memdep_19_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_19_conv_out_memdep_19_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_conv_out_memdep_19_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_19_conv_out_memdep_19_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_conv_out_memdep_19_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_conv_out_memdep_19_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_conv_out_memdep_19_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_store_memdep_19_conv_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_conv_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_conv_out_o_writeack : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_conv_out_memdep_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_conv_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_conv_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_conv_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_conv_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_conv_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_conv_out_memdep_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_store_memdep_conv_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_conv_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_conv_out_o_writeack : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_conv_wt_sync_buffer_conv_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_conv_wt_sync_buffer_conv_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_conv_wt_sync_buffer_conv_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_join_13_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_align_14_q : STD_LOGIC_VECTOR (41 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_align_14_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_join_16_q : STD_LOGIC_VECTOR (69 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_join_13_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_align_14_q : STD_LOGIC_VECTOR (41 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_align_14_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_join_16_q : STD_LOGIC_VECTOR (69 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (70 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx1Rng8_uid298_i_l_grpid_0_addr_conv_conv288_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid298_i_l_grpid_0_addr_conv_conv288_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid299_i_l_grpid_0_addr_conv_conv288_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid307_i_l_grpid_1_addr_conv_conv291_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid307_i_l_grpid_1_addr_conv_conv291_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid308_i_l_grpid_1_addr_conv_conv291_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx61_rm_conv_conv290_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist4_i_add82_conv_vt_select_31_b_486_fifo_data_in : STD_LOGIC_VECTOR (28 downto 0);
    signal redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist4_i_add82_conv_vt_select_31_b_486_fifo_data_out : STD_LOGIC_VECTOR (28 downto 0);
    signal redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist12_i_arrayidx18_rm_conv_conv289_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_conv_B1_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (449 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_h : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_i : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_j : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_k : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_l : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_m : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_n : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_o : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_p : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_B1_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_q : STD_LOGIC_VECTOR (65 downto 0);
    signal bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_q : STD_LOGIC_VECTOR (32 downto 0);
    signal bubble_select_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_acl_wg_limiter_enter_l_grpid_0_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_acl_wg_limiter_enter_l_grpid_0_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_acl_wg_limiter_enter_l_grpid_1_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_acl_wg_limiter_enter_l_grpid_1_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_conv0_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_conv0_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_conv1_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_conv1_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sbar_unnamed_conv2_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sbar_unnamed_conv2_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_store_memdep_19_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_store_memdep_19_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_store_memdep_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_store_memdep_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_syncbuf_conv_wt_sync_buffer_conv_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_conv_wt_sync_buffer_conv_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (449 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_h : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_i : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_j : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_k : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_l : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_m : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_n : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_o : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_p : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist4_i_add82_conv_vt_select_31_b_486_fifo_q : STD_LOGIC_VECTOR (28 downto 0);
    signal bubble_select_redist4_i_add82_conv_vt_select_31_b_486_fifo_b : STD_LOGIC_VECTOR (28 downto 0);
    signal bubble_join_redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg16 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg16 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed16 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg17 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg17 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed17 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg18 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg18 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed18 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_toReg19 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_fromReg19 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_consumed19 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or16 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or17 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_or18 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V16 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V17 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V18 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_B1_merge_reg_aunroll_x_V19 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add14_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add14_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add14_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp_conv_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp_conv_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp_conv_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp_conv_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv1_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv1_conv_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv1_conv_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv1_conv_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv1_conv_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv1_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv1_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sbar_unnamed_conv2_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sbar_unnamed_conv2_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sbar_unnamed_conv2_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_conv_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_conv_wt_sync_buffer_conv_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_conv_wt_sync_buffer_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_conv_wt_sync_buffer_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and16 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_sbar_unnamed_conv2_conv_data_reg_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_sbar_unnamed_conv2_conv_data_reg_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data1 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data2 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data3 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D1 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D2 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D3 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data1 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data2 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data3 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D1 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D2 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D3 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_i_add14_conv_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_add14_conv_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_add14_conv_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_add14_conv_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_add14_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_add14_conv_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_add14_conv_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_data0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_D0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp_conv_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp_conv_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp_conv_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp_conv_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp_conv_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp_conv_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp_conv_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp_conv_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_D0 : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- c_i32_8gr(CONSTANT,132)
    c_i32_8gr_q <= "00000000000000000000000000001000";

    -- bubble_join_conv_B1_merge_reg_aunroll_x(BITJOIN,423)
    bubble_join_conv_B1_merge_reg_aunroll_x_q <= conv_B1_merge_reg_aunroll_x_out_data_out_15 & conv_B1_merge_reg_aunroll_x_out_data_out_14 & conv_B1_merge_reg_aunroll_x_out_data_out_13 & conv_B1_merge_reg_aunroll_x_out_data_out_12 & conv_B1_merge_reg_aunroll_x_out_data_out_11 & conv_B1_merge_reg_aunroll_x_out_data_out_10 & conv_B1_merge_reg_aunroll_x_out_data_out_9 & conv_B1_merge_reg_aunroll_x_out_data_out_8 & conv_B1_merge_reg_aunroll_x_out_data_out_7 & conv_B1_merge_reg_aunroll_x_out_data_out_6 & conv_B1_merge_reg_aunroll_x_out_data_out_5 & conv_B1_merge_reg_aunroll_x_out_data_out_4 & conv_B1_merge_reg_aunroll_x_out_data_out_3 & conv_B1_merge_reg_aunroll_x_out_data_out_2 & conv_B1_merge_reg_aunroll_x_out_data_out_1 & conv_B1_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_conv_B1_merge_reg_aunroll_x(BITSELECT,424)
    bubble_select_conv_B1_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(31 downto 0));
    bubble_select_conv_B1_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(63 downto 32));
    bubble_select_conv_B1_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(95 downto 64));
    bubble_select_conv_B1_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(127 downto 96));
    bubble_select_conv_B1_merge_reg_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(128 downto 128));
    bubble_select_conv_B1_merge_reg_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(160 downto 129));
    bubble_select_conv_B1_merge_reg_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(192 downto 161));
    bubble_select_conv_B1_merge_reg_aunroll_x_i <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(224 downto 193));
    bubble_select_conv_B1_merge_reg_aunroll_x_j <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(256 downto 225));
    bubble_select_conv_B1_merge_reg_aunroll_x_k <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(288 downto 257));
    bubble_select_conv_B1_merge_reg_aunroll_x_l <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(289 downto 289));
    bubble_select_conv_B1_merge_reg_aunroll_x_m <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(321 downto 290));
    bubble_select_conv_B1_merge_reg_aunroll_x_n <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(353 downto 322));
    bubble_select_conv_B1_merge_reg_aunroll_x_o <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(385 downto 354));
    bubble_select_conv_B1_merge_reg_aunroll_x_p <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(417 downto 386));
    bubble_select_conv_B1_merge_reg_aunroll_x_q <= STD_LOGIC_VECTOR(bubble_join_conv_B1_merge_reg_aunroll_x_q(449 downto 418));

    -- i_add82_conv(ADD,143)@1
    i_add82_conv_a <= STD_LOGIC_VECTOR("0" & bubble_select_conv_B1_merge_reg_aunroll_x_b);
    i_add82_conv_b <= STD_LOGIC_VECTOR("0" & c_i32_8gr_q);
    i_add82_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add82_conv_a) + UNSIGNED(i_add82_conv_b));
    i_add82_conv_q <= i_add82_conv_o(32 downto 0);

    -- bgTrunc_i_add82_conv_sel_x(BITSELECT,4)@1
    bgTrunc_i_add82_conv_sel_x_b <= i_add82_conv_q(31 downto 0);

    -- i_add82_conv_vt_select_31(BITSELECT,146)@1
    i_add82_conv_vt_select_31_b <= bgTrunc_i_add82_conv_sel_x_b(31 downto 3);

    -- bubble_join_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo(BITJOIN,500)
    bubble_join_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_q <= redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_data_out;

    -- bubble_select_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo(BITSELECT,501)
    bubble_select_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_q(31 downto 0));

    -- bubble_join_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo(BITJOIN,491)
    bubble_join_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_q <= redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_data_out;

    -- bubble_select_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo(BITSELECT,492)
    bubble_select_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_q(31 downto 0));

    -- SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo(STALLENABLE,719)
    -- Valid signal propagation
    SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_V0 <= SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_backStall <= SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_backStall or not (SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_wireValid <= redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_out;

    -- bubble_join_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo(BITJOIN,527)
    bubble_join_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_q <= redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_data_out;

    -- bubble_select_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo(BITSELECT,528)
    bubble_select_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_q(31 downto 0));

    -- i_add14_conv(ADD,141)@66
    i_add14_conv_a <= STD_LOGIC_VECTOR("0" & bubble_select_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_b);
    i_add14_conv_b <= STD_LOGIC_VECTOR("0" & bubble_select_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_b);
    i_add14_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add14_conv_a) + UNSIGNED(i_add14_conv_b));
    i_add14_conv_q <= i_add14_conv_o(32 downto 0);

    -- bgTrunc_i_add14_conv_sel_x(BITSELECT,2)@66
    bgTrunc_i_add14_conv_sel_x_b <= i_add14_conv_q(31 downto 0);

    -- SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo(STALLENABLE,742)
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_fromReg0 <= (others => '0');
            SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_fromReg0 <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_toReg0;
            -- Succesor 1
            SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_fromReg1 <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_consumed0 <= (not (SR_SE_i_add14_conv_backStall) and SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_wireValid) or SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_fromReg0;
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_consumed1 <= (not (redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_out) and SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_wireValid) or SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_fromReg1;
    -- Consuming
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_StallValid <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_backStall and SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_wireValid;
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_toReg0 <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_StallValid and SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_consumed0;
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_toReg1 <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_StallValid and SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_or0 <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_consumed0;
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_wireStall <= not (SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_consumed1 and SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_or0);
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_backStall <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_V0 <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_wireValid and not (SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_fromReg0);
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_V1 <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_wireValid and not (SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_wireValid <= redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_out;

    -- bubble_join_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo(BITJOIN,503)
    bubble_join_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_q <= redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_data_out;

    -- bubble_select_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo(BITSELECT,504)
    bubble_select_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_q(0 downto 0));

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_multconst_x(CONSTANT,61)
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist39_bgTrunc_i_add14_conv_sel_x_b_1_0(REG,421)
    redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_backEN = "1") THEN
                redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_i_add14_conv_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_idxprom_conv_sel_x(BITSELECT,112)@67
    i_idxprom_conv_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_q(31 downto 0)), 64)));

    -- i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select(BITSELECT,339)@67
    i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_b <= i_idxprom_conv_sel_x_b(17 downto 0);
    i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_c <= i_idxprom_conv_sel_x_b(63 downto 54);
    i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_d <= i_idxprom_conv_sel_x_b(35 downto 18);
    i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_e <= i_idxprom_conv_sel_x_b(53 downto 36);

    -- i_arrayidx_conv_conv295_mult_x_im3_shift0(BITSHIFT,336)@67
    i_arrayidx_conv_conv295_mult_x_im3_shift0_qint <= i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx_conv_conv295_mult_x_im3_shift0_q <= i_arrayidx_conv_conv295_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx_conv_conv295_mult_x_align_15(BITSHIFT,290)@67
    i_arrayidx_conv_conv295_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_conv_conv295_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx_conv_conv295_mult_x_align_15_q <= i_arrayidx_conv_conv295_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx_conv_conv295_mult_x_im6_shift0(BITSHIFT,337)@67
    i_arrayidx_conv_conv295_mult_x_im6_shift0_qint <= i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx_conv_conv295_mult_x_im6_shift0_q <= i_arrayidx_conv_conv295_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx_conv_conv295_mult_x_align_14(BITSHIFT,289)@67
    i_arrayidx_conv_conv295_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_conv_conv295_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx_conv_conv295_mult_x_align_14_q <= i_arrayidx_conv_conv295_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx_conv_conv295_mult_x_join_16(BITJOIN,291)@67
    i_arrayidx_conv_conv295_mult_x_join_16_q <= i_arrayidx_conv_conv295_mult_x_align_15_q & i_arrayidx_conv_conv295_mult_x_align_14_q;

    -- i_arrayidx_conv_conv295_mult_x_im9_shift0(BITSHIFT,338)@67
    i_arrayidx_conv_conv295_mult_x_im9_shift0_qint <= i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx_conv_conv295_mult_x_im9_shift0_q <= i_arrayidx_conv_conv295_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx_conv_conv295_mult_x_align_12(BITSHIFT,287)@67
    i_arrayidx_conv_conv295_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_conv_conv295_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx_conv_conv295_mult_x_align_12_q <= i_arrayidx_conv_conv295_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx_conv_conv295_mult_x_im0_shift0(BITSHIFT,335)@67
    i_arrayidx_conv_conv295_mult_x_im0_shift0_qint <= i_arrayidx_conv_conv295_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx_conv_conv295_mult_x_im0_shift0_q <= i_arrayidx_conv_conv295_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx_conv_conv295_mult_x_join_13(BITJOIN,288)@67
    i_arrayidx_conv_conv295_mult_x_join_13_q <= i_arrayidx_conv_conv295_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx_conv_conv295_mult_x_im0_shift0_q);

    -- i_arrayidx_conv_conv295_mult_x_result_add_0_0(ADD,292)@67
    i_arrayidx_conv_conv295_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx_conv_conv295_mult_x_join_13_q);
    i_arrayidx_conv_conv295_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_conv_conv295_mult_x_join_16_q);
    i_arrayidx_conv_conv295_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_conv_conv295_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx_conv_conv295_mult_x_result_add_0_0_b));
    i_arrayidx_conv_conv295_mult_x_result_add_0_0_q <= i_arrayidx_conv_conv295_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx_conv_conv295_mult_extender_x(BITJOIN,103)@67
    i_arrayidx_conv_conv295_mult_extender_x_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_multconst_x_q & i_arrayidx_conv_conv295_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx_conv_conv295_trunc_sel_x(BITSELECT,105)@67
    i_arrayidx_conv_conv295_trunc_sel_x_b <= i_arrayidx_conv_conv295_mult_extender_x_q(63 downto 0);

    -- redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0(REG,391)
    redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(i_arrayidx_conv_conv295_trunc_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_syncbuf_conv_wt_sync_buffer_conv(BITJOIN,457)
    bubble_join_i_syncbuf_conv_wt_sync_buffer_conv_q <= i_syncbuf_conv_wt_sync_buffer_conv_out_buffer_out;

    -- bubble_select_i_syncbuf_conv_wt_sync_buffer_conv(BITSELECT,458)
    bubble_select_i_syncbuf_conv_wt_sync_buffer_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_conv_wt_sync_buffer_conv_q(63 downto 0));

    -- i_arrayidx_conv_conv295_add_x(ADD,106)@68
    i_arrayidx_conv_conv295_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_conv_wt_sync_buffer_conv_b);
    i_arrayidx_conv_conv295_add_x_b <= STD_LOGIC_VECTOR("0" & redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_q);
    i_arrayidx_conv_conv295_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_conv_conv295_add_x_a) + UNSIGNED(i_arrayidx_conv_conv295_add_x_b));
    i_arrayidx_conv_conv295_add_x_q <= i_arrayidx_conv_conv295_add_x_o(64 downto 0);

    -- i_arrayidx_conv_conv295_dupName_0_trunc_sel_x(BITSELECT,100)@68
    i_arrayidx_conv_conv295_dupName_0_trunc_sel_x_b <= i_arrayidx_conv_conv295_add_x_q(63 downto 0);

    -- bubble_join_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo(BITJOIN,506)
    bubble_join_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_q <= redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_data_out;

    -- bubble_select_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo(BITSELECT,507)
    bubble_select_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_q(0 downto 0));

    -- SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x(STALLENABLE,587)
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_fromReg0 <= SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_fromReg1 <= SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_consumed0 <= (not (i_sbar_unnamed_conv6_conv_out_stall_entry) and SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_wireValid) or SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_fromReg0;
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_consumed1 <= (not (redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_out) and SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_wireValid) or SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_fromReg1;
    -- Consuming
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_StallValid <= SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_backStall and SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_wireValid;
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_toReg0 <= SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_StallValid and SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_consumed0;
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_toReg1 <= SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_StallValid and SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_consumed1;
    -- Backward Stall generation
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_or0 <= SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_consumed0;
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_wireStall <= not (SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_consumed1 and SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_or0);
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_backStall <= SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_V0 <= SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_wireValid and not (SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_fromReg0);
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_V1 <= SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_wireValid and not (SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_wireValid <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_o_valid;

    -- bubble_join_redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo(BITJOIN,497)
    bubble_join_redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_q <= redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_data_out;

    -- bubble_select_redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo(BITSELECT,498)
    bubble_select_redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_q(31 downto 0));

    -- bubble_join_redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo(BITJOIN,479)
    bubble_join_redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_q <= redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_data_out;

    -- bubble_select_redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo(BITSELECT,480)
    bubble_select_redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_q(31 downto 0));

    -- bubble_join_redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo(BITJOIN,464)
    bubble_join_redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_q <= redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_data_out;

    -- bubble_select_redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo(BITSELECT,465)
    bubble_select_redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_q(63 downto 0));

    -- bubble_join_redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo(BITJOIN,473)
    bubble_join_redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_q <= redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_data_out;

    -- bubble_select_redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo(BITSELECT,474)
    bubble_select_redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_q(63 downto 0));

    -- bubble_join_redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo(BITJOIN,482)
    bubble_join_redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_q <= redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_data_out;

    -- bubble_select_redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo(BITSELECT,483)
    bubble_select_redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_q(31 downto 0));

    -- bubble_join_redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo(BITJOIN,467)
    bubble_join_redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_q <= redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_data_out;

    -- bubble_select_redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo(BITSELECT,468)
    bubble_select_redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_q(63 downto 0));

    -- bubble_join_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo(BITJOIN,509)
    bubble_join_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_q <= redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_data_out;

    -- bubble_select_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo(BITSELECT,510)
    bubble_select_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_q(0 downto 0));

    -- bubble_join_redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo(BITJOIN,470)
    bubble_join_redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_q <= redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_data_out;

    -- bubble_select_redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo(BITSELECT,471)
    bubble_select_redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_q(63 downto 0));

    -- bubble_select_i_sbar_unnamed_conv2_conv(BITSELECT,448)
    bubble_select_i_sbar_unnamed_conv2_conv_b <= STD_LOGIC_VECTOR(bubble_out_i_sbar_unnamed_conv2_conv_data_reg_data_out(0 downto 0));

    -- i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x(BLACKBOX,124)@287
    -- in in_i_stall@20000000
    -- out out_c1_exit116_0@421
    -- out out_c1_exit116_1@421
    -- out out_memcoalesce_null_load_02_avm_address@20000000
    -- out out_memcoalesce_null_load_02_avm_burstcount@20000000
    -- out out_memcoalesce_null_load_02_avm_byteenable@20000000
    -- out out_memcoalesce_null_load_02_avm_enable@20000000
    -- out out_memcoalesce_null_load_02_avm_read@20000000
    -- out out_memcoalesce_null_load_02_avm_write@20000000
    -- out out_memcoalesce_null_load_02_avm_writedata@20000000
    -- out out_memcoalesce_null_load_0_avm_address@20000000
    -- out out_memcoalesce_null_load_0_avm_burstcount@20000000
    -- out out_memcoalesce_null_load_0_avm_byteenable@20000000
    -- out out_memcoalesce_null_load_0_avm_enable@20000000
    -- out out_memcoalesce_null_load_0_avm_read@20000000
    -- out out_memcoalesce_null_load_0_avm_write@20000000
    -- out out_memcoalesce_null_load_0_avm_writedata@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@421
    -- out out_wgl_0_exit_exit_stall_in@20000000
    -- out out_wgl_0_exit_exit_valid_in@20000000
    -- out out_wgl_1_exit_exit_stall_in@20000000
    -- out out_wgl_1_exit_exit_valid_in@20000000
    thei_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x : i_sfc_c1_for_body_conv_c1_enter113_conv
    PORT MAP (
        in_unnamed_conv3_0 => bubble_select_i_sbar_unnamed_conv2_conv_b,
        in_unnamed_conv3_1 => bubble_select_redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_b,
        in_unnamed_conv3_2 => bubble_select_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_b,
        in_unnamed_conv3_3 => bubble_select_redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_b,
        in_unnamed_conv3_4 => bubble_select_redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_b,
        in_unnamed_conv3_5 => bubble_select_redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_b,
        in_unnamed_conv3_6 => bubble_select_redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_b,
        in_unnamed_conv3_7 => bubble_select_redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_b,
        in_unnamed_conv3_8 => bubble_select_redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_b,
        in_flush => in_flush,
        in_i_stall => SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_backStall,
        in_i_valid => SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_V0,
        in_memcoalesce_null_load_02_avm_readdata => in_memcoalesce_null_load_02_avm_readdata,
        in_memcoalesce_null_load_02_avm_readdatavalid => in_memcoalesce_null_load_02_avm_readdatavalid,
        in_memcoalesce_null_load_02_avm_waitrequest => in_memcoalesce_null_load_02_avm_waitrequest,
        in_memcoalesce_null_load_02_avm_writeack => in_memcoalesce_null_load_02_avm_writeack,
        in_memcoalesce_null_load_0_avm_readdata => in_memcoalesce_null_load_0_avm_readdata,
        in_memcoalesce_null_load_0_avm_readdatavalid => in_memcoalesce_null_load_0_avm_readdatavalid,
        in_memcoalesce_null_load_0_avm_waitrequest => in_memcoalesce_null_load_0_avm_waitrequest,
        in_memcoalesce_null_load_0_avm_writeack => in_memcoalesce_null_load_0_avm_writeack,
        in_wgl_0_exit_exit_stall_out => in_wgl_0_exit_exit_stall_out,
        in_wgl_0_exit_exit_valid_out => in_wgl_0_exit_exit_valid_out,
        in_wgl_1_exit_exit_stall_out => in_wgl_1_exit_exit_stall_out,
        in_wgl_1_exit_exit_valid_out => in_wgl_1_exit_exit_valid_out,
        out_c1_exit116_0 => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_0,
        out_c1_exit116_1 => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1,
        out_memcoalesce_null_load_02_avm_address => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_address,
        out_memcoalesce_null_load_02_avm_burstcount => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_burstcount,
        out_memcoalesce_null_load_02_avm_byteenable => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_byteenable,
        out_memcoalesce_null_load_02_avm_enable => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_enable,
        out_memcoalesce_null_load_02_avm_read => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_read,
        out_memcoalesce_null_load_02_avm_write => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_write,
        out_memcoalesce_null_load_02_avm_writedata => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_writedata,
        out_memcoalesce_null_load_0_avm_address => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_address,
        out_memcoalesce_null_load_0_avm_burstcount => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_burstcount,
        out_memcoalesce_null_load_0_avm_byteenable => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_byteenable,
        out_memcoalesce_null_load_0_avm_enable => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_enable,
        out_memcoalesce_null_load_0_avm_read => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_read,
        out_memcoalesce_null_load_0_avm_write => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_write,
        out_memcoalesce_null_load_0_avm_writedata => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_writedata,
        out_o_stall => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_o_valid,
        out_wgl_0_exit_exit_stall_in => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_0_exit_exit_stall_in,
        out_wgl_0_exit_exit_valid_in => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_0_exit_exit_valid_in,
        out_wgl_1_exit_exit_stall_in => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_1_exit_exit_stall_in,
        out_wgl_1_exit_exit_valid_in => i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_1_exit_exit_valid_in,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0Idx1Rng8_uid307_i_l_grpid_1_addr_conv_conv291_shift_x(BITSELECT,306)@220
    leftShiftStage0Idx1Rng8_uid307_i_l_grpid_1_addr_conv_conv291_shift_x_in <= bubble_select_i_acl_wg_limiter_enter_l_grpid_1_conv_b(23 downto 0);
    leftShiftStage0Idx1Rng8_uid307_i_l_grpid_1_addr_conv_conv291_shift_x_b <= leftShiftStage0Idx1Rng8_uid307_i_l_grpid_1_addr_conv_conv291_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid308_i_l_grpid_1_addr_conv_conv291_shift_x(BITJOIN,307)@220
    leftShiftStage0Idx1_uid308_i_l_grpid_1_addr_conv_conv291_shift_x_q <= leftShiftStage0Idx1Rng8_uid307_i_l_grpid_1_addr_conv_conv291_shift_x_b & i_l_grpid_0_addr_conv_vt_const_7_q;

    -- bubble_join_i_acl_wg_limiter_enter_l_grpid_1_conv(BITJOIN,438)
    bubble_join_i_acl_wg_limiter_enter_l_grpid_1_conv_q <= i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data;

    -- bubble_select_i_acl_wg_limiter_enter_l_grpid_1_conv(BITSELECT,439)
    bubble_select_i_acl_wg_limiter_enter_l_grpid_1_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_acl_wg_limiter_enter_l_grpid_1_conv_q(31 downto 0));

    -- leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x(MUX,309)@220
    leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x_s <= VCC_q;
    leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x_combproc: PROCESS (leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x_s, bubble_select_i_acl_wg_limiter_enter_l_grpid_1_conv_b, leftShiftStage0Idx1_uid308_i_l_grpid_1_addr_conv_conv291_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x_q <= bubble_select_i_acl_wg_limiter_enter_l_grpid_1_conv_b;
            WHEN "1" => leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x_q <= leftShiftStage0Idx1_uid308_i_l_grpid_1_addr_conv_conv291_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_l_grpid_1_addr_conv_vt_select_31(BITSELECT,180)@220
    i_l_grpid_1_addr_conv_vt_select_31_b <= leftShiftStage0_uid310_i_l_grpid_1_addr_conv_conv291_shift_x_q(31 downto 8);

    -- i_l_grpid_1_addr_conv_vt_join(BITJOIN,179)@220
    i_l_grpid_1_addr_conv_vt_join_q <= i_l_grpid_1_addr_conv_vt_select_31_b & i_l_grpid_0_addr_conv_vt_const_7_q;

    -- i_l_grpid_1_addr_zext_conv_sel_x(BITSELECT,122)@220
    i_l_grpid_1_addr_zext_conv_sel_x_b <= std_logic_vector(resize(unsigned(i_l_grpid_1_addr_conv_vt_join_q(31 downto 0)), 64));

    -- i_l_grpid_1_addr_zext_conv_vt_select_31(BITSELECT,185)@220
    i_l_grpid_1_addr_zext_conv_vt_select_31_b <= i_l_grpid_1_addr_zext_conv_sel_x_b(31 downto 8);

    -- i_l_grpid_0_addr_conv_vt_const_7(CONSTANT,170)
    i_l_grpid_0_addr_conv_vt_const_7_q <= "00000000";

    -- i_l_grpid_1_addr_zext_conv_vt_join(BITJOIN,184)@220
    i_l_grpid_1_addr_zext_conv_vt_join_q <= c_i32_undef_q & i_l_grpid_1_addr_zext_conv_vt_select_31_b & i_l_grpid_0_addr_conv_vt_const_7_q;

    -- redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo(STALLFIFO,382)
    redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_in <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_V2;
    redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_in <= SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall;
    redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_data_in <= i_l_grpid_1_addr_zext_conv_vt_join_q;
    redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_in_bitsignaltemp <= redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_in(0);
    redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_in_bitsignaltemp <= redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_in(0);
    redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_out(0) <= redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_out_bitsignaltemp;
    redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_out(0) <= redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_out_bitsignaltemp;
    theredist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 68,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_in_bitsignaltemp,
        data_in => i_l_grpid_1_addr_zext_conv_vt_join_q,
        valid_out => redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_out_bitsignaltemp,
        data_out => redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0Idx1Rng8_uid298_i_l_grpid_0_addr_conv_conv288_shift_x(BITSELECT,297)@220
    leftShiftStage0Idx1Rng8_uid298_i_l_grpid_0_addr_conv_conv288_shift_x_in <= bubble_select_i_acl_wg_limiter_enter_l_grpid_0_conv_b(23 downto 0);
    leftShiftStage0Idx1Rng8_uid298_i_l_grpid_0_addr_conv_conv288_shift_x_b <= leftShiftStage0Idx1Rng8_uid298_i_l_grpid_0_addr_conv_conv288_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid299_i_l_grpid_0_addr_conv_conv288_shift_x(BITJOIN,298)@220
    leftShiftStage0Idx1_uid299_i_l_grpid_0_addr_conv_conv288_shift_x_q <= leftShiftStage0Idx1Rng8_uid298_i_l_grpid_0_addr_conv_conv288_shift_x_b & i_l_grpid_0_addr_conv_vt_const_7_q;

    -- SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2(STALLENABLE,771)
    -- Valid signal propagation
    SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2_V0 <= SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2_backStall <= i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_stall or not (SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2_wireValid <= bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_out;

    -- i_acl_wg_limiter_enter_l_grpid_0_conv(BLACKBOX,139)@219
    -- in in_i_stall@20000000
    -- out out_o_data@220
    -- out out_o_stall@20000000
    -- out out_o_valid@220
    -- out out_wgl_0_enter_exit_stall_out@20000000
    -- out out_wgl_0_enter_exit_valid_out@20000000
    thei_acl_wg_limiter_enter_l_grpid_0_conv : i_acl_wg_limiter_enter_l_grpid_0_conv257
    PORT MAP (
        in_i_data => c_i32_undef_q,
        in_i_stall => SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_backStall,
        in_i_valid => SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2_V0,
        in_wgl_0_enter_exit_stall_in => in_wgl_0_enter_exit_stall_in,
        in_wgl_0_enter_exit_valid_in => in_wgl_0_enter_exit_valid_in,
        in_wgl_0_wgs_wg_size => in_wgl_0_wgs_wg_size,
        out_o_data => i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data,
        out_o_stall => i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_stall,
        out_o_valid => i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_valid,
        out_wgl_0_enter_exit_stall_out => i_acl_wg_limiter_enter_l_grpid_0_conv_out_wgl_0_enter_exit_stall_out,
        out_wgl_0_enter_exit_valid_out => i_acl_wg_limiter_enter_l_grpid_0_conv_out_wgl_0_enter_exit_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_acl_wg_limiter_enter_l_grpid_0_conv(BITJOIN,435)
    bubble_join_i_acl_wg_limiter_enter_l_grpid_0_conv_q <= i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data;

    -- bubble_select_i_acl_wg_limiter_enter_l_grpid_0_conv(BITSELECT,436)
    bubble_select_i_acl_wg_limiter_enter_l_grpid_0_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_acl_wg_limiter_enter_l_grpid_0_conv_q(31 downto 0));

    -- leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x(MUX,300)@220
    leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x_s <= VCC_q;
    leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x_combproc: PROCESS (leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x_s, bubble_select_i_acl_wg_limiter_enter_l_grpid_0_conv_b, leftShiftStage0Idx1_uid299_i_l_grpid_0_addr_conv_conv288_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x_q <= bubble_select_i_acl_wg_limiter_enter_l_grpid_0_conv_b;
            WHEN "1" => leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x_q <= leftShiftStage0Idx1_uid299_i_l_grpid_0_addr_conv_conv288_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_l_grpid_0_addr_conv_vt_select_31(BITSELECT,172)@220
    i_l_grpid_0_addr_conv_vt_select_31_b <= leftShiftStage0_uid301_i_l_grpid_0_addr_conv_conv288_shift_x_q(31 downto 8);

    -- i_l_grpid_0_addr_conv_vt_join(BITJOIN,171)@220
    i_l_grpid_0_addr_conv_vt_join_q <= i_l_grpid_0_addr_conv_vt_select_31_b & i_l_grpid_0_addr_conv_vt_const_7_q;

    -- i_l_grpid_0_addr_zext_conv_sel_x(BITSELECT,117)@220
    i_l_grpid_0_addr_zext_conv_sel_x_b <= std_logic_vector(resize(unsigned(i_l_grpid_0_addr_conv_vt_join_q(31 downto 0)), 64));

    -- i_l_grpid_0_addr_zext_conv_vt_select_31(BITSELECT,177)@220
    i_l_grpid_0_addr_zext_conv_vt_select_31_b <= i_l_grpid_0_addr_zext_conv_sel_x_b(31 downto 8);

    -- i_l_grpid_0_addr_zext_conv_vt_join(BITJOIN,176)@220
    i_l_grpid_0_addr_zext_conv_vt_join_q <= c_i32_undef_q & i_l_grpid_0_addr_zext_conv_vt_select_31_b & i_l_grpid_0_addr_conv_vt_const_7_q;

    -- SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv(STALLENABLE,591)
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg0 <= (others => '0');
            SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg1 <= (others => '0');
            SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg0 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_toReg0;
            -- Succesor 1
            SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg1 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_toReg1;
            -- Succesor 2
            SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg2 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed0 <= (not (redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_out) and SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireValid) or SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg0;
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed1 <= (not (SE_out_i_load_unnamed_conv1_conv_backStall) and SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireValid) or SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg1;
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed2 <= (not (redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_out) and SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireValid) or SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg2;
    -- Consuming
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_StallValid <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_backStall and SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireValid;
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_toReg0 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_StallValid and SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed0;
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_toReg1 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_StallValid and SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed1;
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_toReg2 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_StallValid and SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed2;
    -- Backward Stall generation
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_or0 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed0;
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_or1 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed1 and SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_or0;
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireStall <= not (SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_consumed2 and SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_or1);
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_backStall <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireStall;
    -- Valid signal propagation
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_V0 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireValid and not (SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg0);
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_V1 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireValid and not (SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg1);
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_V2 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireValid and not (SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_wireValid <= i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_valid;

    -- redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo(STALLFIFO,383)
    redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_in <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_V2;
    redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_in <= SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall;
    redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_data_in <= i_l_grpid_0_addr_zext_conv_vt_join_q;
    redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_in_bitsignaltemp <= redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_in(0);
    redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_in_bitsignaltemp <= redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_in(0);
    redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_out(0) <= redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_out_bitsignaltemp;
    redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_out(0) <= redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_out_bitsignaltemp;
    theredist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 68,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_in_bitsignaltemp,
        data_in => i_l_grpid_0_addr_zext_conv_vt_join_q,
        valid_out => redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_stall_out_bitsignaltemp,
        data_out => redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx18_rm_conv_conv289_mult_multconst_x(CONSTANT,73)
    i_arrayidx18_rm_conv_conv289_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000";

    -- i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select(BITSELECT,341)@219
    i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_b <= i_idxprom16_rm_conv_vt_join_q(17 downto 0);
    i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_c <= i_idxprom16_rm_conv_vt_join_q(63 downto 54);
    i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_d <= i_idxprom16_rm_conv_vt_join_q(35 downto 18);
    i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_e <= i_idxprom16_rm_conv_vt_join_q(53 downto 36);

    -- i_arrayidx18_rm_conv_conv289_mult_x_im3_shift0(BITSHIFT,324)@219
    i_arrayidx18_rm_conv_conv289_mult_x_im3_shift0_qint <= i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_c & "00000";
    i_arrayidx18_rm_conv_conv289_mult_x_im3_shift0_q <= i_arrayidx18_rm_conv_conv289_mult_x_im3_shift0_qint(14 downto 0);

    -- i_arrayidx18_rm_conv_conv289_mult_x_align_15(BITSHIFT,236)@219
    i_arrayidx18_rm_conv_conv289_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_mult_x_im3_shift0_q) & "000000000000";
    i_arrayidx18_rm_conv_conv289_mult_x_align_15_q <= i_arrayidx18_rm_conv_conv289_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx18_rm_conv_conv289_mult_x_im6_shift0(BITSHIFT,325)@219
    i_arrayidx18_rm_conv_conv289_mult_x_im6_shift0_qint <= i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_d & "00000";
    i_arrayidx18_rm_conv_conv289_mult_x_im6_shift0_q <= i_arrayidx18_rm_conv_conv289_mult_x_im6_shift0_qint(22 downto 0);

    -- i_arrayidx18_rm_conv_conv289_mult_x_align_14(BITSHIFT,235)@219
    i_arrayidx18_rm_conv_conv289_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx18_rm_conv_conv289_mult_x_align_14_q <= i_arrayidx18_rm_conv_conv289_mult_x_align_14_qint(41 downto 0);

    -- i_arrayidx18_rm_conv_conv289_mult_x_join_16(BITJOIN,237)@219
    i_arrayidx18_rm_conv_conv289_mult_x_join_16_q <= i_arrayidx18_rm_conv_conv289_mult_x_align_15_q & i_arrayidx18_rm_conv_conv289_mult_x_align_14_q;

    -- i_arrayidx18_rm_conv_conv289_mult_x_im9_shift0(BITSHIFT,326)@219
    i_arrayidx18_rm_conv_conv289_mult_x_im9_shift0_qint <= i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_e & "00000";
    i_arrayidx18_rm_conv_conv289_mult_x_im9_shift0_q <= i_arrayidx18_rm_conv_conv289_mult_x_im9_shift0_qint(22 downto 0);

    -- i_arrayidx18_rm_conv_conv289_mult_x_align_12(BITSHIFT,233)@219
    i_arrayidx18_rm_conv_conv289_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_mult_x_im9_shift0_q) & "000000000000";
    i_arrayidx18_rm_conv_conv289_mult_x_align_12_q <= i_arrayidx18_rm_conv_conv289_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx18_rm_conv_conv289_mult_x_im0_shift0(BITSHIFT,323)@219
    i_arrayidx18_rm_conv_conv289_mult_x_im0_shift0_qint <= i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_b & "00000";
    i_arrayidx18_rm_conv_conv289_mult_x_im0_shift0_q <= i_arrayidx18_rm_conv_conv289_mult_x_im0_shift0_qint(22 downto 0);

    -- i_arrayidx18_rm_conv_conv289_mult_x_join_13(BITJOIN,234)@219
    i_arrayidx18_rm_conv_conv289_mult_x_join_13_q <= i_arrayidx18_rm_conv_conv289_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_mult_x_im0_shift0_q);

    -- i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0(ADD,238)@219
    i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx18_rm_conv_conv289_mult_x_join_13_q);
    i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_mult_x_join_16_q);
    i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_b));
    i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_q <= i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_o(70 downto 0);

    -- i_arrayidx18_rm_conv_conv289_mult_extender_x(BITJOIN,72)@219
    i_arrayidx18_rm_conv_conv289_mult_extender_x_q <= i_arrayidx18_rm_conv_conv289_mult_multconst_x_q & i_arrayidx18_rm_conv_conv289_mult_x_result_add_0_0_q(69 downto 0);

    -- i_arrayidx18_rm_conv_conv289_trunc_sel_x(BITSELECT,74)@219
    i_arrayidx18_rm_conv_conv289_trunc_sel_x_b <= i_arrayidx18_rm_conv_conv289_mult_extender_x_q(63 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im3_shift0(BITSHIFT,328)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im3_shift0_qint <= i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im3_shift0_q <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_15(BITSHIFT,254)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_15_q <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im6_shift0(BITSHIFT,329)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im6_shift0_qint <= i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im6_shift0_q <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_14(BITSHIFT,253)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_14_q <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_join_16(BITJOIN,255)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_join_16_q <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_15_q & i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_14_q;

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im9_shift0(BITSHIFT,330)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im9_shift0_qint <= i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im9_shift0_q <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_12(BITSHIFT,251)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_12_q <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im0_shift0(BITSHIFT,327)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im0_shift0_qint <= i_arrayidx18_rm_conv_conv289_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im0_shift0_q <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_join_13(BITJOIN,252)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_join_13_q <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_im0_shift0_q);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0(ADD,256)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_join_13_q);
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_join_16_q);
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_b));
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_q <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_mult_extender_x(BITJOIN,80)@219
    i_arrayidx61_rm_conv_conv290_dupName_0_mult_extender_x_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_multconst_x_q & i_arrayidx61_rm_conv_conv290_dupName_0_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x(BITSELECT,83)@219
    i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b <= i_arrayidx61_rm_conv_conv290_dupName_0_mult_extender_x_q(63 downto 0);

    -- i_idxprom16_rm_conv_sel_x(BITSELECT,111)@219
    i_idxprom16_rm_conv_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(bubble_select_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_b(31 downto 0)), 64)));

    -- i_idxprom16_rm_conv_vt_select_2(BITSELECT,167)@219
    i_idxprom16_rm_conv_vt_select_2_b <= STD_LOGIC_VECTOR(i_idxprom16_rm_conv_sel_x_b(2 downto 0));

    -- i_idxprom16_rm_conv_vt_join(BITJOIN,166)@219
    i_idxprom16_rm_conv_vt_join_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_multconst_x_q & i_idxprom16_rm_conv_vt_select_2_b;

    -- bubble_join_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo(BITJOIN,548)
    bubble_join_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_q <= redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_data_out;

    -- bubble_select_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo(BITSELECT,549)
    bubble_select_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_q(31 downto 0));

    -- SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo(STALLREG,950)
    SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid <= (others => '0');
            SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data0 <= (others => '-');
            SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data1 <= (others => '-');
            SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data2 <= (others => '-');
            SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data3 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_backStall and (SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid or SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_i_valid);

            IF (SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid = "0") THEN
                -- Data(s)
                SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_b);
                SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data1 <= STD_LOGIC_VECTOR(i_idxprom16_rm_conv_vt_join_q);
                SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data2 <= STD_LOGIC_VECTOR(i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b);
                SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data3 <= STD_LOGIC_VECTOR(i_arrayidx18_rm_conv_conv289_trunc_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_i_valid <= redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_out;
    -- Stall signal propagation
    SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_backStall <= SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid or not (SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_i_valid);

    -- Valid
    SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V <= SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid WHEN SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid = "1" ELSE SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_i_valid;

    -- Data0
    SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D0 <= SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data0 WHEN SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid = "1" ELSE bubble_select_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_b;
    -- Data1
    SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D1 <= SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data1 WHEN SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid = "1" ELSE i_idxprom16_rm_conv_vt_join_q;
    -- Data2
    SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D2 <= SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data2 WHEN SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid = "1" ELSE i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b;
    -- Data3
    SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D3 <= SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_data3 WHEN SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_r_valid = "1" ELSE i_arrayidx18_rm_conv_conv289_trunc_sel_x_b;

    -- SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0(STALLENABLE,713)
    -- Valid signal propagation
    SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_V0 <= SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_0;
    SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_V1 <= SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_s_tv_0 <= SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_backStall and SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_0;
    SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_s_tv_1 <= SE_out_i_load_unnamed_conv1_conv_backStall and SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_or0 <= SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_s_tv_0;
    SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_backEN <= not (SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_s_tv_1 or SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_v_s_0 <= SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_backEN and SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V2;
    -- Backward Stall generation
    SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_backStall <= not (SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_v_s_0);
    SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_0 <= (others => '0');
            SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_0 <= SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_0 and SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_0 <= SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_v_s_0;
            END IF;

            IF (SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_1 <= SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_1 and SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_s_tv_1;
            ELSE
                SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_R_v_1 <= SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo(STALLENABLE,756)
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg0 <= (others => '0');
            SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg1 <= (others => '0');
            SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg0 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_toReg0;
            -- Succesor 1
            SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg1 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_toReg1;
            -- Succesor 2
            SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg2 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed0 <= (not (redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_out) and SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireValid) or SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg0;
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed1 <= (not (redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_out) and SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireValid) or SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg1;
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed2 <= (not (SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_backStall) and SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireValid) or SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg2;
    -- Consuming
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_StallValid <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_backStall and SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireValid;
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_toReg0 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_StallValid and SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed0;
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_toReg1 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_StallValid and SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed1;
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_toReg2 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_StallValid and SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed2;
    -- Backward Stall generation
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_or0 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed0;
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_or1 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed1 and SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_or0;
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireStall <= not (SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_consumed2 and SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_or1);
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_backStall <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V0 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireValid and not (SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg0);
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V1 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireValid and not (SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg1);
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V2 <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireValid and not (SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_wireValid <= SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V;

    -- redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo(STALLFIFO,384)
    redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_in <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V1;
    redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_in <= SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall;
    redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_data_in <= SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D1;
    redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_in_bitsignaltemp <= redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_in(0);
    redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_in_bitsignaltemp <= redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_in(0);
    redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_out(0) <= redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_out_bitsignaltemp;
    redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_out(0) <= redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_out_bitsignaltemp;
    theredist2_i_idxprom16_rm_conv_vt_join_q_68_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 69,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_in_bitsignaltemp,
        stall_in => redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_in_bitsignaltemp,
        data_in => SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D1,
        valid_out => redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_out_bitsignaltemp,
        stall_out => redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_stall_out_bitsignaltemp,
        data_out => redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,340)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_b <= i_idxprom15_rm_conv_vt_join_q(17 downto 0);
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_c <= i_idxprom15_rm_conv_vt_join_q(63 downto 54);
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_d <= i_idxprom15_rm_conv_vt_join_q(35 downto 18);
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_e <= i_idxprom15_rm_conv_vt_join_q(53 downto 36);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im3_shift0(BITSHIFT,320)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im3_shift0_qint <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im3_shift0_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_15(BITSHIFT,218)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_15_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im6_shift0(BITSHIFT,321)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im6_shift0_qint <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im6_shift0_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_14(BITSHIFT,217)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_14_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_join_16(BITJOIN,219)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_join_16_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_15_q & i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_14_q;

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im9_shift0(BITSHIFT,322)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im9_shift0_qint <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im9_shift0_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_12(BITSHIFT,215)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_12_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im0_shift0(BITSHIFT,319)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im0_shift0_qint <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im0_shift0_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_join_13(BITJOIN,216)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_join_13_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_im0_shift0_q);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0(ADD,220)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_join_13_q);
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_join_16_q);
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_b));
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_mult_extender_x(BITJOIN,60)@219
    i_arrayidx18_rm_conv_conv289_dupName_0_mult_extender_x_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_multconst_x_q & i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x(BITSELECT,63)@219
    i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x_b <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_extender_x_q(63 downto 0);

    -- i_arrayidx61_rm_conv_conv290_mult_x_im3_shift0(BITSHIFT,332)@219
    i_arrayidx61_rm_conv_conv290_mult_x_im3_shift0_qint <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_c & "00000";
    i_arrayidx61_rm_conv_conv290_mult_x_im3_shift0_q <= i_arrayidx61_rm_conv_conv290_mult_x_im3_shift0_qint(14 downto 0);

    -- i_arrayidx61_rm_conv_conv290_mult_x_align_15(BITSHIFT,272)@219
    i_arrayidx61_rm_conv_conv290_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_mult_x_im3_shift0_q) & "000000000000";
    i_arrayidx61_rm_conv_conv290_mult_x_align_15_q <= i_arrayidx61_rm_conv_conv290_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx61_rm_conv_conv290_mult_x_im6_shift0(BITSHIFT,333)@219
    i_arrayidx61_rm_conv_conv290_mult_x_im6_shift0_qint <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_d & "00000";
    i_arrayidx61_rm_conv_conv290_mult_x_im6_shift0_q <= i_arrayidx61_rm_conv_conv290_mult_x_im6_shift0_qint(22 downto 0);

    -- i_arrayidx61_rm_conv_conv290_mult_x_align_14(BITSHIFT,271)@219
    i_arrayidx61_rm_conv_conv290_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx61_rm_conv_conv290_mult_x_align_14_q <= i_arrayidx61_rm_conv_conv290_mult_x_align_14_qint(41 downto 0);

    -- i_arrayidx61_rm_conv_conv290_mult_x_join_16(BITJOIN,273)@219
    i_arrayidx61_rm_conv_conv290_mult_x_join_16_q <= i_arrayidx61_rm_conv_conv290_mult_x_align_15_q & i_arrayidx61_rm_conv_conv290_mult_x_align_14_q;

    -- i_arrayidx61_rm_conv_conv290_mult_x_im9_shift0(BITSHIFT,334)@219
    i_arrayidx61_rm_conv_conv290_mult_x_im9_shift0_qint <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_e & "00000";
    i_arrayidx61_rm_conv_conv290_mult_x_im9_shift0_q <= i_arrayidx61_rm_conv_conv290_mult_x_im9_shift0_qint(22 downto 0);

    -- i_arrayidx61_rm_conv_conv290_mult_x_align_12(BITSHIFT,269)@219
    i_arrayidx61_rm_conv_conv290_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_mult_x_im9_shift0_q) & "000000000000";
    i_arrayidx61_rm_conv_conv290_mult_x_align_12_q <= i_arrayidx61_rm_conv_conv290_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx61_rm_conv_conv290_mult_x_im0_shift0(BITSHIFT,331)@219
    i_arrayidx61_rm_conv_conv290_mult_x_im0_shift0_qint <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_x_bs1_merged_bit_select_b & "00000";
    i_arrayidx61_rm_conv_conv290_mult_x_im0_shift0_q <= i_arrayidx61_rm_conv_conv290_mult_x_im0_shift0_qint(22 downto 0);

    -- i_arrayidx61_rm_conv_conv290_mult_x_join_13(BITJOIN,270)@219
    i_arrayidx61_rm_conv_conv290_mult_x_join_13_q <= i_arrayidx61_rm_conv_conv290_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_mult_x_im0_shift0_q);

    -- i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0(ADD,274)@219
    i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx61_rm_conv_conv290_mult_x_join_13_q);
    i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_mult_x_join_16_q);
    i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_b));
    i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_q <= i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_o(70 downto 0);

    -- i_arrayidx61_rm_conv_conv290_mult_extender_x(BITJOIN,92)@219
    i_arrayidx61_rm_conv_conv290_mult_extender_x_q <= i_arrayidx18_rm_conv_conv289_mult_multconst_x_q & i_arrayidx61_rm_conv_conv290_mult_x_result_add_0_0_q(69 downto 0);

    -- i_arrayidx61_rm_conv_conv290_trunc_sel_x(BITSELECT,94)@219
    i_arrayidx61_rm_conv_conv290_trunc_sel_x_b <= i_arrayidx61_rm_conv_conv290_mult_extender_x_q(63 downto 0);

    -- i_idxprom15_rm_conv_sel_x(BITSELECT,110)@219
    i_idxprom15_rm_conv_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(bubble_select_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_b(31 downto 0)), 64)));

    -- i_idxprom15_rm_conv_vt_select_2(BITSELECT,162)@219
    i_idxprom15_rm_conv_vt_select_2_b <= STD_LOGIC_VECTOR(i_idxprom15_rm_conv_sel_x_b(2 downto 0));

    -- i_idxprom15_rm_conv_vt_join(BITJOIN,161)@219
    i_idxprom15_rm_conv_vt_join_q <= i_arrayidx18_rm_conv_conv289_dupName_0_mult_multconst_x_q & i_idxprom15_rm_conv_vt_select_2_b;

    -- bubble_join_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo(BITJOIN,542)
    bubble_join_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_q <= redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_data_out;

    -- bubble_select_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo(BITSELECT,543)
    bubble_select_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_q(31 downto 0));

    -- SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo(STALLREG,951)
    SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid <= (others => '0');
            SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data0 <= (others => '-');
            SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data1 <= (others => '-');
            SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data2 <= (others => '-');
            SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data3 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_backStall and (SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid or SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_i_valid);

            IF (SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid = "0") THEN
                -- Data(s)
                SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_b);
                SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data1 <= STD_LOGIC_VECTOR(i_idxprom15_rm_conv_vt_join_q);
                SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data2 <= STD_LOGIC_VECTOR(i_arrayidx61_rm_conv_conv290_trunc_sel_x_b);
                SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data3 <= STD_LOGIC_VECTOR(i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_i_valid <= redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_out;
    -- Stall signal propagation
    SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_backStall <= SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid or not (SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_i_valid);

    -- Valid
    SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V <= SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid WHEN SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid = "1" ELSE SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_i_valid;

    -- Data0
    SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D0 <= SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data0 WHEN SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid = "1" ELSE bubble_select_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_b;
    -- Data1
    SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D1 <= SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data1 WHEN SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid = "1" ELSE i_idxprom15_rm_conv_vt_join_q;
    -- Data2
    SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D2 <= SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data2 WHEN SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid = "1" ELSE i_arrayidx61_rm_conv_conv290_trunc_sel_x_b;
    -- Data3
    SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D3 <= SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_data3 WHEN SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_r_valid = "1" ELSE i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x_b;

    -- SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0(STALLENABLE,712)
    -- Valid signal propagation
    SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_V0 <= SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_0;
    SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_V1 <= SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_s_tv_0 <= SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_backStall and SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_0;
    SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_s_tv_1 <= SE_out_i_load_unnamed_conv1_conv_backStall and SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_or0 <= SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_s_tv_0;
    SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_backEN <= not (SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_s_tv_1 or SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_v_s_0 <= SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_backEN and SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V2;
    -- Backward Stall generation
    SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_backStall <= not (SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_v_s_0);
    SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_0 <= (others => '0');
            SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_0 <= SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_0 and SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_0 <= SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_v_s_0;
            END IF;

            IF (SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_1 <= SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_1 and SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_s_tv_1;
            ELSE
                SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_R_v_1 <= SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo(STALLENABLE,752)
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg0 <= (others => '0');
            SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg1 <= (others => '0');
            SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg0 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_toReg0;
            -- Succesor 1
            SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg1 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_toReg1;
            -- Succesor 2
            SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg2 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed0 <= (not (redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_out) and SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireValid) or SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg0;
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed1 <= (not (redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_out) and SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireValid) or SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg1;
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed2 <= (not (SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_backStall) and SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireValid) or SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg2;
    -- Consuming
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_StallValid <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_backStall and SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireValid;
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_toReg0 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_StallValid and SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed0;
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_toReg1 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_StallValid and SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed1;
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_toReg2 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_StallValid and SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed2;
    -- Backward Stall generation
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_or0 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed0;
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_or1 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed1 and SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_or0;
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireStall <= not (SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_consumed2 and SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_or1);
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_backStall <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V0 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireValid and not (SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg0);
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V1 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireValid and not (SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg1);
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V2 <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireValid and not (SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_wireValid <= SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V;

    -- redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo(STALLFIFO,385)
    redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_in <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V1;
    redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_in <= SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall;
    redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_data_in <= SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D1;
    redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_in_bitsignaltemp <= redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_in(0);
    redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_in_bitsignaltemp <= redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_in(0);
    redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_out(0) <= redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_out_bitsignaltemp;
    redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_out(0) <= redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_out_bitsignaltemp;
    theredist3_i_idxprom15_rm_conv_vt_join_q_68_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 69,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_in_bitsignaltemp,
        stall_in => redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_in_bitsignaltemp,
        data_in => SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D1,
        valid_out => redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_out_bitsignaltemp,
        stall_out => redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_stall_out_bitsignaltemp,
        data_out => redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo(STALLFIFO,387)
    redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_in <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_V0;
    redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_in <= SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall;
    redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_data_in <= bubble_select_i_acl_wg_limiter_enter_l_grpid_1_conv_b;
    redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_in_bitsignaltemp <= redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_in(0);
    redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_in_bitsignaltemp <= redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_in(0);
    redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_out(0) <= redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_out_bitsignaltemp;
    redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_out(0) <= redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_out_bitsignaltemp;
    theredist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 68,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_in_bitsignaltemp,
        stall_in => redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_acl_wg_limiter_enter_l_grpid_1_conv_b,
        valid_out => redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_out_bitsignaltemp,
        stall_out => redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_out_bitsignaltemp,
        data_out => redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo(STALLFIFO,388)
    redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_in <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_V0;
    redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_in <= SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall;
    redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_data_in <= bubble_select_i_acl_wg_limiter_enter_l_grpid_0_conv_b;
    redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_in_bitsignaltemp <= redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_in(0);
    redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_in_bitsignaltemp <= redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_in(0);
    redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_out(0) <= redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_out_bitsignaltemp;
    redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_out(0) <= redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_out_bitsignaltemp;
    theredist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 68,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_in_bitsignaltemp,
        stall_in => redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_acl_wg_limiter_enter_l_grpid_0_conv_b,
        valid_out => redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_out_bitsignaltemp,
        stall_out => redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_stall_out_bitsignaltemp,
        data_out => redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- c_float_0_000000e_00(FLOATCONSTANT,130)
    c_float_0_000000e_00_q <= "00000000000000000000000000000000";

    -- redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo(STALLFIFO,390)
    redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_in <= SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_V1;
    redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_in <= SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_backStall;
    redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_data_in <= bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_d;
    redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_in_bitsignaltemp <= redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_in(0);
    redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_in_bitsignaltemp <= redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_in(0);
    redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_out(0) <= redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_out_bitsignaltemp;
    redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_out(0) <= redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_out_bitsignaltemp;
    theredist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 153,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_in_bitsignaltemp,
        stall_in => redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_d,
        valid_out => redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_out_bitsignaltemp,
        stall_out => redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_out_bitsignaltemp,
        data_out => redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x(STALLENABLE,585)
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_fromReg0 <= SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_fromReg1 <= SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_consumed0 <= (not (i_load_unnamed_conv0_conv_out_o_stall) and SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_fromReg0;
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_consumed1 <= (not (redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_stall_out) and SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_fromReg1;
    -- Consuming
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_StallValid <= SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_backStall and SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_wireValid;
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_toReg0 <= SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_toReg1 <= SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_consumed1;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_or0 <= SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_wireStall <= not (SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_consumed1 and SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_or0);
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_backStall <= SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_V0 <= SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_fromReg0);
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_V1 <= SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_wireValid <= i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_o_valid;

    -- bubble_join_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x(BITJOIN,429)
    bubble_join_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_q <= i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3 & i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_2 & i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_1;

    -- bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x(BITSELECT,430)
    bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_q(63 downto 0));
    bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_q(64 downto 64));
    bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_q(65 downto 65));

    -- i_load_unnamed_conv0_conv(BLACKBOX,186)@68
    -- in in_i_stall@20000000
    -- out out_o_readdata@220
    -- out out_o_stall@20000000
    -- out out_o_valid@220
    -- out out_unnamed_conv0_avm_address@20000000
    -- out out_unnamed_conv0_avm_burstcount@20000000
    -- out out_unnamed_conv0_avm_byteenable@20000000
    -- out out_unnamed_conv0_avm_enable@20000000
    -- out out_unnamed_conv0_avm_read@20000000
    -- out out_unnamed_conv0_avm_write@20000000
    -- out out_unnamed_conv0_avm_writedata@20000000
    thei_load_unnamed_conv0_conv : i_load_unnamed_conv0_conv292
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_b,
        in_i_predicate => bubble_select_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_c,
        in_i_stall => SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_backStall,
        in_i_valid => SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_V0,
        in_unnamed_conv0_avm_readdata => in_unnamed_conv0_avm_readdata,
        in_unnamed_conv0_avm_readdatavalid => in_unnamed_conv0_avm_readdatavalid,
        in_unnamed_conv0_avm_waitrequest => in_unnamed_conv0_avm_waitrequest,
        in_unnamed_conv0_avm_writeack => in_unnamed_conv0_avm_writeack,
        out_o_readdata => i_load_unnamed_conv0_conv_out_o_readdata,
        out_o_stall => i_load_unnamed_conv0_conv_out_o_stall,
        out_o_valid => i_load_unnamed_conv0_conv_out_o_valid,
        out_unnamed_conv0_avm_address => i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_address,
        out_unnamed_conv0_avm_burstcount => i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_burstcount,
        out_unnamed_conv0_avm_byteenable => i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_byteenable,
        out_unnamed_conv0_avm_enable => i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_enable,
        out_unnamed_conv0_avm_read => i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_read,
        out_unnamed_conv0_avm_write => i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_write,
        out_unnamed_conv0_avm_writedata => i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_load_unnamed_conv0_conv(BITJOIN,441)
    bubble_join_i_load_unnamed_conv0_conv_q <= i_load_unnamed_conv0_conv_out_o_readdata;

    -- bubble_select_i_load_unnamed_conv0_conv(BITSELECT,442)
    bubble_select_i_load_unnamed_conv0_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_conv0_conv_q(31 downto 0));

    -- bubble_join_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo(BITJOIN,488)
    bubble_join_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_q <= redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_data_out;

    -- bubble_select_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo(BITSELECT,489)
    bubble_select_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_q(0 downto 0));

    -- i_acl_26_conv(MUX,138)@220
    i_acl_26_conv_s <= bubble_select_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_b;
    i_acl_26_conv_combproc: PROCESS (i_acl_26_conv_s, bubble_select_i_load_unnamed_conv0_conv_b, c_float_0_000000e_00_q)
    BEGIN
        CASE (i_acl_26_conv_s) IS
            WHEN "0" => i_acl_26_conv_q <= bubble_select_i_load_unnamed_conv0_conv_b;
            WHEN "1" => i_acl_26_conv_q <= c_float_0_000000e_00_q;
            WHEN OTHERS => i_acl_26_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_arrayidx18_rm_conv_vt_const_63(CONSTANT,148)
    i_arrayidx18_rm_conv_vt_const_63_q <= "00000000000000000000000000000000000000000000000000000000";

    -- redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0(REG,393)
    redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D2);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0(REG,392)
    redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D2);
            END IF;
        END IF;
    END PROCESS;

    -- i_arrayidx61_rm_conv_conv290_dupName_0_trunc_sel_x(BITSELECT,82)@220
    i_arrayidx61_rm_conv_conv290_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_q);
    i_arrayidx61_rm_conv_conv290_dupName_0_trunc_sel_x_b <= i_arrayidx61_rm_conv_conv290_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_0_add_x(ADD,87)@220
    i_arrayidx61_rm_conv_conv290_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx61_rm_conv_conv290_dupName_0_trunc_sel_x_b);
    i_arrayidx61_rm_conv_conv290_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_q);
    i_arrayidx61_rm_conv_conv290_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx61_rm_conv_conv290_dupName_0_add_x_a) + UNSIGNED(i_arrayidx61_rm_conv_conv290_dupName_0_add_x_b));
    i_arrayidx61_rm_conv_conv290_dupName_0_add_x_q <= i_arrayidx61_rm_conv_conv290_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx61_rm_conv_conv290_dupName_2_trunc_sel_x(BITSELECT,84)@220
    i_arrayidx61_rm_conv_conv290_dupName_2_trunc_sel_x_b <= i_arrayidx61_rm_conv_conv290_dupName_0_add_x_q(63 downto 0);

    -- i_arrayidx61_rm_conv_vt_select_7(BITSELECT,154)@220
    i_arrayidx61_rm_conv_vt_select_7_b <= i_arrayidx61_rm_conv_conv290_dupName_2_trunc_sel_x_b(7 downto 2);

    -- i_arrayidx18_rm_conv_vt_const_1(CONSTANT,147)
    i_arrayidx18_rm_conv_vt_const_1_q <= "00";

    -- i_arrayidx61_rm_conv_vt_join(BITJOIN,153)@220
    i_arrayidx61_rm_conv_vt_join_q <= i_arrayidx18_rm_conv_vt_const_63_q & i_arrayidx61_rm_conv_vt_select_7_b & i_arrayidx18_rm_conv_vt_const_1_q;

    -- i_store_memdep_19_conv(BLACKBOX,190)@220
    -- in in_i_stall@20000000
    -- out out_memdep_19_avm_address@20000000
    -- out out_memdep_19_avm_burstcount@20000000
    -- out out_memdep_19_avm_byteenable@20000000
    -- out out_memdep_19_avm_enable@20000000
    -- out out_memdep_19_avm_read@20000000
    -- out out_memdep_19_avm_write@20000000
    -- out out_memdep_19_avm_writedata@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@221
    -- out out_o_writeack@221
    thei_store_memdep_19_conv : i_store_memdep_19_conv296
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx61_rm_conv_vt_join_q,
        in_i_bitwiseor => i_l_grpid_1_addr_zext_conv_vt_join_q,
        in_i_predicate => bubble_select_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_b,
        in_i_stall => SE_out_i_store_memdep_conv_backStall,
        in_i_valid => SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_V0,
        in_i_writedata => i_acl_26_conv_q,
        in_memdep_19_avm_readdata => in_memdep_19_avm_readdata,
        in_memdep_19_avm_readdatavalid => in_memdep_19_avm_readdatavalid,
        in_memdep_19_avm_waitrequest => in_memdep_19_avm_waitrequest,
        in_memdep_19_avm_writeack => in_memdep_19_avm_writeack,
        out_memdep_19_avm_address => i_store_memdep_19_conv_out_memdep_19_avm_address,
        out_memdep_19_avm_burstcount => i_store_memdep_19_conv_out_memdep_19_avm_burstcount,
        out_memdep_19_avm_byteenable => i_store_memdep_19_conv_out_memdep_19_avm_byteenable,
        out_memdep_19_avm_enable => i_store_memdep_19_conv_out_memdep_19_avm_enable,
        out_memdep_19_avm_read => i_store_memdep_19_conv_out_memdep_19_avm_read,
        out_memdep_19_avm_write => i_store_memdep_19_conv_out_memdep_19_avm_write,
        out_memdep_19_avm_writedata => i_store_memdep_19_conv_out_memdep_19_avm_writedata,
        out_o_stall => i_store_memdep_19_conv_out_o_stall,
        out_o_valid => i_store_memdep_19_conv_out_o_valid,
        out_o_writeack => i_store_memdep_19_conv_out_o_writeack,
        clock => clock,
        resetn => resetn
    );

    -- i_load_unnamed_conv1_conv(BLACKBOX,187)@68
    -- in in_i_stall@20000000
    -- out out_o_readdata@220
    -- out out_o_stall@20000000
    -- out out_o_valid@220
    -- out out_unnamed_conv1_avm_address@20000000
    -- out out_unnamed_conv1_avm_burstcount@20000000
    -- out out_unnamed_conv1_avm_byteenable@20000000
    -- out out_unnamed_conv1_avm_enable@20000000
    -- out out_unnamed_conv1_avm_read@20000000
    -- out out_unnamed_conv1_avm_write@20000000
    -- out out_unnamed_conv1_avm_writedata@20000000
    thei_load_unnamed_conv1_conv : i_load_unnamed_conv1_conv298
    PORT MAP (
        in_flush => in_flush,
        in_i_address => SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_D0,
        in_i_predicate => SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_D1,
        in_i_stall => SE_out_i_load_unnamed_conv1_conv_backStall,
        in_i_valid => SE_out_i_syncbuf_conv_wt_sync_buffer_conv_V0,
        in_unnamed_conv1_avm_readdata => in_unnamed_conv1_avm_readdata,
        in_unnamed_conv1_avm_readdatavalid => in_unnamed_conv1_avm_readdatavalid,
        in_unnamed_conv1_avm_waitrequest => in_unnamed_conv1_avm_waitrequest,
        in_unnamed_conv1_avm_writeack => in_unnamed_conv1_avm_writeack,
        out_o_readdata => i_load_unnamed_conv1_conv_out_o_readdata,
        out_o_stall => i_load_unnamed_conv1_conv_out_o_stall,
        out_o_valid => i_load_unnamed_conv1_conv_out_o_valid,
        out_unnamed_conv1_avm_address => i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_address,
        out_unnamed_conv1_avm_burstcount => i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_burstcount,
        out_unnamed_conv1_avm_byteenable => i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_byteenable,
        out_unnamed_conv1_avm_enable => i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_enable,
        out_unnamed_conv1_avm_read => i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_read,
        out_unnamed_conv1_avm_write => i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_write,
        out_unnamed_conv1_avm_writedata => i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_load_unnamed_conv1_conv(BITJOIN,444)
    bubble_join_i_load_unnamed_conv1_conv_q <= i_load_unnamed_conv1_conv_out_o_readdata;

    -- bubble_select_i_load_unnamed_conv1_conv(BITSELECT,445)
    bubble_select_i_load_unnamed_conv1_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_conv1_conv_q(31 downto 0));

    -- redist13_i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x_b_1_0(REG,395)
    redist13_i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist13_i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D3);
            END IF;
        END IF;
    END PROCESS;

    -- redist12_i_arrayidx18_rm_conv_conv289_trunc_sel_x_b_1_0(REG,394)
    redist12_i_arrayidx18_rm_conv_conv289_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_i_arrayidx18_rm_conv_conv289_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist12_i_arrayidx18_rm_conv_conv289_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D3);
            END IF;
        END IF;
    END PROCESS;

    -- i_arrayidx18_rm_conv_conv289_dupName_0_trunc_sel_x(BITSELECT,62)@220
    i_arrayidx18_rm_conv_conv289_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & redist12_i_arrayidx18_rm_conv_conv289_trunc_sel_x_b_1_0_q);
    i_arrayidx18_rm_conv_conv289_dupName_0_trunc_sel_x_b <= i_arrayidx18_rm_conv_conv289_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_0_add_x(ADD,67)@220
    i_arrayidx18_rm_conv_conv289_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx18_rm_conv_conv289_dupName_0_trunc_sel_x_b);
    i_arrayidx18_rm_conv_conv289_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & redist13_i_arrayidx18_rm_conv_conv289_dupName_1_trunc_sel_x_b_1_0_q);
    i_arrayidx18_rm_conv_conv289_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx18_rm_conv_conv289_dupName_0_add_x_a) + UNSIGNED(i_arrayidx18_rm_conv_conv289_dupName_0_add_x_b));
    i_arrayidx18_rm_conv_conv289_dupName_0_add_x_q <= i_arrayidx18_rm_conv_conv289_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx18_rm_conv_conv289_dupName_2_trunc_sel_x(BITSELECT,64)@220
    i_arrayidx18_rm_conv_conv289_dupName_2_trunc_sel_x_b <= i_arrayidx18_rm_conv_conv289_dupName_0_add_x_q(63 downto 0);

    -- i_arrayidx18_rm_conv_vt_select_7(BITSELECT,150)@220
    i_arrayidx18_rm_conv_vt_select_7_b <= i_arrayidx18_rm_conv_conv289_dupName_2_trunc_sel_x_b(7 downto 2);

    -- i_arrayidx18_rm_conv_vt_join(BITJOIN,149)@220
    i_arrayidx18_rm_conv_vt_join_q <= i_arrayidx18_rm_conv_vt_const_63_q & i_arrayidx18_rm_conv_vt_select_7_b & i_arrayidx18_rm_conv_vt_const_1_q;

    -- i_store_memdep_conv(BLACKBOX,191)@220
    -- in in_i_stall@20000000
    -- out out_memdep_avm_address@20000000
    -- out out_memdep_avm_burstcount@20000000
    -- out out_memdep_avm_byteenable@20000000
    -- out out_memdep_avm_enable@20000000
    -- out out_memdep_avm_read@20000000
    -- out out_memdep_avm_write@20000000
    -- out out_memdep_avm_writedata@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@221
    -- out out_o_writeack@221
    thei_store_memdep_conv : i_store_memdep_conv300
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx18_rm_conv_vt_join_q,
        in_i_bitwiseor => i_l_grpid_0_addr_zext_conv_vt_join_q,
        in_i_predicate => bubble_select_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_b,
        in_i_stall => SE_out_i_store_memdep_conv_backStall,
        in_i_valid => SE_out_i_load_unnamed_conv1_conv_V0,
        in_i_writedata => bubble_select_i_load_unnamed_conv1_conv_b,
        in_memdep_avm_readdata => in_memdep_avm_readdata,
        in_memdep_avm_readdatavalid => in_memdep_avm_readdatavalid,
        in_memdep_avm_waitrequest => in_memdep_avm_waitrequest,
        in_memdep_avm_writeack => in_memdep_avm_writeack,
        out_memdep_avm_address => i_store_memdep_conv_out_memdep_avm_address,
        out_memdep_avm_burstcount => i_store_memdep_conv_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => i_store_memdep_conv_out_memdep_avm_byteenable,
        out_memdep_avm_enable => i_store_memdep_conv_out_memdep_avm_enable,
        out_memdep_avm_read => i_store_memdep_conv_out_memdep_avm_read,
        out_memdep_avm_write => i_store_memdep_conv_out_memdep_avm_write,
        out_memdep_avm_writedata => i_store_memdep_conv_out_memdep_avm_writedata,
        out_o_stall => i_store_memdep_conv_out_o_stall,
        out_o_valid => i_store_memdep_conv_out_o_valid,
        out_o_writeack => i_store_memdep_conv_out_o_writeack,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_store_memdep_conv(STALLENABLE,629)
    -- Valid signal propagation
    SE_out_i_store_memdep_conv_V0 <= SE_out_i_store_memdep_conv_wireValid;
    -- Backward Stall generation
    SE_out_i_store_memdep_conv_backStall <= i_sbar_unnamed_conv2_conv_out_stall_entry or not (SE_out_i_store_memdep_conv_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_store_memdep_conv_and0 <= i_store_memdep_conv_out_o_valid;
    SE_out_i_store_memdep_conv_wireValid <= i_store_memdep_19_conv_out_o_valid and SE_out_i_store_memdep_conv_and0;

    -- bubble_join_i_store_memdep_19_conv(BITJOIN,451)
    bubble_join_i_store_memdep_19_conv_q <= i_store_memdep_19_conv_out_o_writeack;

    -- bubble_select_i_store_memdep_19_conv(BITSELECT,452)
    bubble_select_i_store_memdep_19_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_store_memdep_19_conv_q(0 downto 0));

    -- bubble_join_i_store_memdep_conv(BITJOIN,454)
    bubble_join_i_store_memdep_conv_q <= i_store_memdep_conv_out_o_writeack;

    -- bubble_select_i_store_memdep_conv(BITSELECT,455)
    bubble_select_i_store_memdep_conv_b <= STD_LOGIC_VECTOR(bubble_join_i_store_memdep_conv_q(0 downto 0));

    -- i_barrier_dep_conv(LOGICAL,155)@221
    i_barrier_dep_conv_q <= bubble_select_i_store_memdep_conv_b or bubble_select_i_store_memdep_19_conv_b;

    -- i_sbar_unnamed_conv2_conv(BLACKBOX,188)@221
    -- in in_stall_exit@20000000
    -- out out_data_exit@287
    -- out out_stall_entry@20000000
    -- out out_valid_exit@287
    thei_sbar_unnamed_conv2_conv : i_sbar_unnamed_conv2_conv302
    PORT MAP (
        in_data_entry => i_barrier_dep_conv_q,
        in_stall_exit => SE_out_i_sbar_unnamed_conv2_conv_backStall,
        in_valid_entry => SE_out_i_store_memdep_conv_V0,
        in_workgroup_size => in_barrier_unnamed_conv2_wgs_workgroup_size,
        out_data_exit => i_sbar_unnamed_conv2_conv_out_data_exit,
        out_stall_entry => i_sbar_unnamed_conv2_conv_out_stall_entry,
        out_valid_exit => i_sbar_unnamed_conv2_conv_out_valid_exit,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_sbar_unnamed_conv2_conv(BITJOIN,447)
    bubble_join_i_sbar_unnamed_conv2_conv_q <= i_sbar_unnamed_conv2_conv_out_data_exit;

    -- SE_out_i_sbar_unnamed_conv2_conv(STALLENABLE,623)
    -- Valid signal propagation
    SE_out_i_sbar_unnamed_conv2_conv_V0 <= SE_out_i_sbar_unnamed_conv2_conv_wireValid;
    -- Backward Stall generation
    SE_out_i_sbar_unnamed_conv2_conv_backStall <= bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_out or not (SE_out_i_sbar_unnamed_conv2_conv_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sbar_unnamed_conv2_conv_wireValid <= i_sbar_unnamed_conv2_conv_out_valid_exit;

    -- bubble_out_i_sbar_unnamed_conv2_conv_data_reg(STALLFIFO,949)
    bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_in <= SE_out_i_sbar_unnamed_conv2_conv_V0;
    bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_in <= SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall;
    bubble_out_i_sbar_unnamed_conv2_conv_data_reg_data_in <= bubble_join_i_sbar_unnamed_conv2_conv_q;
    bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_in_bitsignaltemp <= bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_in(0);
    bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_in_bitsignaltemp <= bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_in(0);
    bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_out(0) <= bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_out_bitsignaltemp;
    bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_out(0) <= bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_out_bitsignaltemp;
    thebubble_out_i_sbar_unnamed_conv2_conv_data_reg : acl_data_fifo
    GENERIC MAP (
        DEPTH => 3,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "zl_reg"
    )
    PORT MAP (
        valid_in => bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_in_bitsignaltemp,
        data_in => bubble_join_i_sbar_unnamed_conv2_conv_q,
        valid_out => bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_sbar_unnamed_conv2_conv_data_reg_stall_out_bitsignaltemp,
        data_out => bubble_out_i_sbar_unnamed_conv2_conv_data_reg_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data(STALLENABLE,799)
    -- Valid signal propagation
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_V0 <= SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_o_stall or not (SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and0 <= bubble_out_i_sbar_unnamed_conv2_conv_data_reg_valid_out;
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and1 <= redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_out and SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and0;
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and2 <= redist6_i_acl_wg_limiter_enter_l_grpid_0_conv_out_o_data_67_fifo_valid_out and SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and1;
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and3 <= redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_valid_out and SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and2;
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and4 <= redist3_i_idxprom15_rm_conv_vt_join_q_68_fifo_valid_out and SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and3;
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and5 <= redist2_i_idxprom16_rm_conv_vt_join_q_68_fifo_valid_out and SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and4;
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and6 <= redist1_i_l_grpid_0_addr_zext_conv_vt_join_q_67_fifo_valid_out and SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and5;
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and7 <= redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_valid_out and SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and6;
    SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_wireValid <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_V0 and SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_and7;

    -- SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo(STALLENABLE,730)
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_fromReg0 <= (others => '0');
            SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_fromReg0 <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_toReg0;
            -- Succesor 1
            SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_fromReg1 <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_consumed0 <= (not (SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall) and SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_wireValid) or SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_fromReg0;
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_consumed1 <= (not (redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_out) and SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_wireValid) or SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_fromReg1;
    -- Consuming
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_StallValid <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_backStall and SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_wireValid;
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_toReg0 <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_StallValid and SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_consumed0;
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_toReg1 <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_StallValid and SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_or0 <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_consumed0;
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_wireStall <= not (SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_consumed1 and SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_or0);
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_backStall <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_V0 <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_wireValid and not (SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_fromReg0);
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_V1 <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_wireValid and not (SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_wireValid <= redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_out;

    -- redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo(STALLFIFO,403)
    redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_in <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_V2;
    redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_in <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_backStall;
    redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_data_in <= bubble_select_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_b;
    redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_in_bitsignaltemp <= redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_in(0);
    redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_in_bitsignaltemp <= redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_in(0);
    redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_out(0) <= redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_out_bitsignaltemp;
    redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_out(0) <= redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_out_bitsignaltemp;
    theredist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 68,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_in_bitsignaltemp,
        stall_in => redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_b,
        valid_out => redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_valid_out_bitsignaltemp,
        stall_out => redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_out_bitsignaltemp,
        data_out => redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_load_unnamed_conv1_conv(STALLENABLE,621)
    -- Valid signal propagation
    SE_out_i_load_unnamed_conv1_conv_V0 <= SE_out_i_load_unnamed_conv1_conv_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_conv1_conv_backStall <= i_store_memdep_conv_out_o_stall or not (SE_out_i_load_unnamed_conv1_conv_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_conv1_conv_and0 <= i_load_unnamed_conv1_conv_out_o_valid;
    SE_out_i_load_unnamed_conv1_conv_and1 <= SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_V1 and SE_out_i_load_unnamed_conv1_conv_and0;
    SE_out_i_load_unnamed_conv1_conv_and2 <= SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_V1 and SE_out_i_load_unnamed_conv1_conv_and1;
    SE_out_i_load_unnamed_conv1_conv_and3 <= SE_out_i_acl_wg_limiter_enter_l_grpid_0_conv_V1 and SE_out_i_load_unnamed_conv1_conv_and2;
    SE_out_i_load_unnamed_conv1_conv_wireValid <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_V1 and SE_out_i_load_unnamed_conv1_conv_and3;

    -- SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo(STALLENABLE,710)
    -- Valid signal propagation
    SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_V0 <= SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_backStall <= i_store_memdep_19_conv_out_o_stall or not (SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and0 <= redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_valid_out;
    SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and1 <= i_load_unnamed_conv0_conv_out_o_valid and SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and0;
    SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and2 <= SE_redist10_i_arrayidx61_rm_conv_conv290_trunc_sel_x_b_1_0_V0 and SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and1;
    SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and3 <= SE_redist11_i_arrayidx61_rm_conv_conv290_dupName_1_trunc_sel_x_b_1_0_V0 and SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and2;
    SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and4 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_V1 and SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and3;
    SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_wireValid <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_V0 and SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_and4;

    -- SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo(STALLENABLE,728)
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg0 <= (others => '0');
            SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg1 <= (others => '0');
            SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg0 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_toReg0;
            -- Succesor 1
            SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg1 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_toReg1;
            -- Succesor 2
            SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg2 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed0 <= (not (SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_backStall) and SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireValid) or SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg0;
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed1 <= (not (SE_out_i_load_unnamed_conv1_conv_backStall) and SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireValid) or SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg1;
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed2 <= (not (redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_stall_out) and SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireValid) or SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg2;
    -- Consuming
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_StallValid <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_backStall and SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireValid;
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_toReg0 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_StallValid and SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed0;
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_toReg1 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_StallValid and SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed1;
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_toReg2 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_StallValid and SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed2;
    -- Backward Stall generation
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_or0 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed0;
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_or1 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed1 and SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_or0;
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireStall <= not (SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_consumed2 and SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_or1);
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_backStall <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_V0 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireValid and not (SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg0);
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_V1 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireValid and not (SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg1);
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_V2 <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireValid and not (SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_wireValid <= redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_out;

    -- redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo(STALLFIFO,402)
    redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_in <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_V1;
    redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_in <= SE_out_redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_backStall;
    redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_data_in <= bubble_select_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_b;
    redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_in_bitsignaltemp <= redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_in(0);
    redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_in_bitsignaltemp <= redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_in(0);
    redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_out(0) <= redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_out_bitsignaltemp;
    redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_out(0) <= redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_out_bitsignaltemp;
    theredist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 153,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_in_bitsignaltemp,
        stall_in => redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_b,
        valid_out => redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_valid_out_bitsignaltemp,
        stall_out => redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_out_bitsignaltemp,
        data_out => redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo(STALLENABLE,726)
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_fromReg0 <= (others => '0');
            SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_fromReg0 <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_toReg0;
            -- Succesor 1
            SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_fromReg1 <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_consumed0 <= (not (SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_backStall) and SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_wireValid) or SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_fromReg0;
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_consumed1 <= (not (redist20_conv_B1_merge_reg_aunroll_x_out_data_out_4_219_fifo_stall_out) and SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_wireValid) or SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_fromReg1;
    -- Consuming
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_StallValid <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_backStall and SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_wireValid;
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_toReg0 <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_StallValid and SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_consumed0;
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_toReg1 <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_StallValid and SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_or0 <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_consumed0;
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_wireStall <= not (SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_consumed1 and SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_or0);
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_backStall <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_V0 <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_wireValid and not (SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_fromReg0);
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_V1 <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_wireValid and not (SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_wireValid <= redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_out;

    -- SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1(STALLENABLE,769)
    -- Valid signal propagation
    SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1_V0 <= SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1_backStall <= i_syncbuf_conv_wt_sync_buffer_conv_out_stall_out or not (SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1_wireValid <= bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_out;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_syncbuf_conv_wt_sync_buffer_conv(BLACKBOX,192)@68
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_conv_wt_sync_buffer_conv : i_syncbuf_conv_wt_sync_buffer_conv255
    PORT MAP (
        in_buffer_in => in_conv_wt,
        in_i_dependence => GND_q,
        in_stall_in => SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_backStall,
        in_valid_in => SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1_V0,
        out_buffer_out => i_syncbuf_conv_wt_sync_buffer_conv_out_buffer_out,
        out_stall_out => i_syncbuf_conv_wt_sync_buffer_conv_out_stall_out,
        out_valid_out => i_syncbuf_conv_wt_sync_buffer_conv_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_syncbuf_conv_wt_sync_buffer_conv(STALLENABLE,631)
    -- Valid signal propagation
    SE_out_i_syncbuf_conv_wt_sync_buffer_conv_V0 <= SE_out_i_syncbuf_conv_wt_sync_buffer_conv_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_conv_wt_sync_buffer_conv_backStall <= i_load_unnamed_conv1_conv_out_o_stall or not (SE_out_i_syncbuf_conv_wt_sync_buffer_conv_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_conv_wt_sync_buffer_conv_wireValid <= SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_V;

    -- SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv(STALLREG,953)
    SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_valid <= (others => '0');
            SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_data0 <= (others => '-');
            SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_valid <= SE_out_i_syncbuf_conv_wt_sync_buffer_conv_backStall and (SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_valid or SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_i_valid);

            IF (SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_valid = "0") THEN
                -- Data(s)
                SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_data0 <= i_arrayidx_conv_conv295_dupName_0_trunc_sel_x_b;
                SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_data1 <= bubble_select_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_b;
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_and0 <= i_syncbuf_conv_wt_sync_buffer_conv_out_valid_out;
    SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_and1 <= SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_V0 and SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_and0;
    SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_i_valid <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_V0 and SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_and1;
    -- Stall signal propagation
    SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_backStall <= SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_valid or not (SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_i_valid);

    -- Valid
    SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_V <= SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_valid WHEN SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_valid = "1" ELSE SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_i_valid;

    -- Data0
    SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_D0 <= SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_data0 WHEN SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_valid = "1" ELSE i_arrayidx_conv_conv295_dupName_0_trunc_sel_x_b;
    -- Data1
    SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_D1 <= SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_data1 WHEN SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_r_valid = "1" ELSE bubble_select_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_b;

    -- SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0(STALLENABLE,711)
    -- Valid signal propagation
    SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_V0 <= SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_s_tv_0 <= SR_SE_out_i_syncbuf_conv_wt_sync_buffer_conv_backStall and SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_backEN <= not (SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_v_s_0 <= SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_backEN and SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_V0;
    -- Backward Stall generation
    SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_backStall <= not (SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_v_s_0);
    SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_R_v_0 <= SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_R_v_0 and SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_R_v_0 <= SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0(STALLENABLE,763)
    -- Valid signal propagation
    SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_V0 <= SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_s_tv_0 <= SE_redist9_i_arrayidx_conv_conv295_trunc_sel_x_b_1_0_backStall and SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_backEN <= not (SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_v_s_0 <= SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_backEN and SE_i_add14_conv_V0;
    -- Backward Stall generation
    SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_backStall <= not (SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_v_s_0);
    SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_backEN = "0") THEN
                SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_R_v_0 <= SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_R_v_0 and SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_R_v_0 <= SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_add14_conv(STALLENABLE,594)
    -- Valid signal propagation
    SE_i_add14_conv_V0 <= SE_i_add14_conv_wireValid;
    -- Backward Stall generation
    SE_i_add14_conv_backStall <= SE_redist39_bgTrunc_i_add14_conv_sel_x_b_1_0_backStall or not (SE_i_add14_conv_wireValid);
    -- Computing multiple Valid(s)
    SE_i_add14_conv_wireValid <= SR_SE_i_add14_conv_V;

    -- SR_SE_i_add14_conv(STALLREG,952)
    SR_SE_i_add14_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_add14_conv_r_valid <= (others => '0');
            SR_SE_i_add14_conv_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_add14_conv_r_valid <= SE_i_add14_conv_backStall and (SR_SE_i_add14_conv_r_valid or SR_SE_i_add14_conv_i_valid);

            IF (SR_SE_i_add14_conv_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_add14_conv_r_data0 <= STD_LOGIC_VECTOR(bgTrunc_i_add14_conv_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_add14_conv_and0 <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_V0;
    SR_SE_i_add14_conv_i_valid <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_V0 and SR_SE_i_add14_conv_and0;
    -- Stall signal propagation
    SR_SE_i_add14_conv_backStall <= SR_SE_i_add14_conv_r_valid or not (SR_SE_i_add14_conv_i_valid);

    -- Valid
    SR_SE_i_add14_conv_V <= SR_SE_i_add14_conv_r_valid WHEN SR_SE_i_add14_conv_r_valid = "1" ELSE SR_SE_i_add14_conv_i_valid;

    SR_SE_i_add14_conv_D0 <= SR_SE_i_add14_conv_r_data0 WHEN SR_SE_i_add14_conv_r_valid = "1" ELSE bgTrunc_i_add14_conv_sel_x_b;

    -- SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo(STALLENABLE,717)
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_fromReg0 <= (others => '0');
            SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_fromReg0 <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_toReg0;
            -- Succesor 1
            SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_fromReg1 <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_consumed0 <= (not (SR_SE_i_add14_conv_backStall) and SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_wireValid) or SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_fromReg0;
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_consumed1 <= (not (redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_out) and SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_wireValid) or SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_fromReg1;
    -- Consuming
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_StallValid <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_backStall and SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_wireValid;
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_toReg0 <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_StallValid and SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_consumed0;
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_toReg1 <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_StallValid and SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_or0 <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_consumed0;
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_wireStall <= not (SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_consumed1 and SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_or0);
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_backStall <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_V0 <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_wireValid and not (SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_fromReg0);
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_V1 <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_wireValid and not (SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_wireValid <= redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_out;

    -- redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo(STALLFIFO,397)
    redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_in <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_V1;
    redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_in <= SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_backStall;
    redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_data_in <= bubble_select_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_b;
    redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_in_bitsignaltemp <= redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_in(0);
    redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_in_bitsignaltemp <= redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_in(0);
    redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_out(0) <= redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_out_bitsignaltemp;
    redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_out(0) <= redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_out_bitsignaltemp;
    theredist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 420,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_in_bitsignaltemp,
        stall_in => redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_b,
        valid_out => redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_valid_out_bitsignaltemp,
        stall_out => redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_stall_out_bitsignaltemp,
        data_out => redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo(BITJOIN,494)
    bubble_join_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_q <= redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_data_out;

    -- bubble_select_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo(BITSELECT,495)
    bubble_select_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_q(31 downto 0));

    -- i_add81_conv(ADD,142)@485
    i_add81_conv_a <= STD_LOGIC_VECTOR("0" & bubble_select_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_b);
    i_add81_conv_b <= STD_LOGIC_VECTOR("0" & c_i32_8gr_q);
    i_add81_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add81_conv_a) + UNSIGNED(i_add81_conv_b));
    i_add81_conv_q <= i_add81_conv_o(32 downto 0);

    -- bgTrunc_i_add81_conv_sel_x(BITSELECT,3)@485
    bgTrunc_i_add81_conv_sel_x_b <= i_add81_conv_q(31 downto 0);

    -- redist37_bgTrunc_i_add81_conv_sel_x_b_1_0(REG,419)
    redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_backEN = "1") THEN
                redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(bgTrunc_i_add81_conv_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0(STALLENABLE,761)
    -- Valid signal propagation
    SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_V0 <= SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_0;
    SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_V1 <= SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_s_tv_0 <= SR_SE_i_cmp_conv_backStall and SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_0;
    SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_s_tv_1 <= SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_backStall and SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_or0 <= SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_s_tv_0;
    SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_backEN <= not (SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_s_tv_1 or SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_v_s_0 <= SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_backEN and SE_out_redist15_conv_B1_merge_reg_aunroll_x_out_data_out_1_484_fifo_V0;
    -- Backward Stall generation
    SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_backStall <= not (SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_v_s_0);
    SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_0 <= (others => '0');
            SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_backEN = "0") THEN
                SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_0 <= SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_0 and SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_0 <= SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_v_s_0;
            END IF;

            IF (SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_backEN = "0") THEN
                SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_1 <= SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_1 and SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_s_tv_1;
            ELSE
                SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_R_v_1 <= SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_cmp_conv(STALLREG,954)
    SR_SE_i_cmp_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_cmp_conv_r_valid <= (others => '0');
            SR_SE_i_cmp_conv_r_data0 <= (others => '-');
            SR_SE_i_cmp_conv_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_cmp_conv_r_valid <= SE_i_cmp_conv_backStall and (SR_SE_i_cmp_conv_r_valid or SR_SE_i_cmp_conv_i_valid);

            IF (SR_SE_i_cmp_conv_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_cmp_conv_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_b);
                SR_SE_i_cmp_conv_r_data1 <= STD_LOGIC_VECTOR(redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_cmp_conv_and0 <= SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_V0;
    SR_SE_i_cmp_conv_i_valid <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_V0 and SR_SE_i_cmp_conv_and0;
    -- Stall signal propagation
    SR_SE_i_cmp_conv_backStall <= SR_SE_i_cmp_conv_r_valid or not (SR_SE_i_cmp_conv_i_valid);

    -- Valid
    SR_SE_i_cmp_conv_V <= SR_SE_i_cmp_conv_r_valid WHEN SR_SE_i_cmp_conv_r_valid = "1" ELSE SR_SE_i_cmp_conv_i_valid;

    -- Data0
    SR_SE_i_cmp_conv_D0 <= SR_SE_i_cmp_conv_r_data0 WHEN SR_SE_i_cmp_conv_r_valid = "1" ELSE bubble_select_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_b;
    -- Data1
    SR_SE_i_cmp_conv_D1 <= SR_SE_i_cmp_conv_r_data1 WHEN SR_SE_i_cmp_conv_r_valid = "1" ELSE redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_q;

    -- SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo(STALLENABLE,723)
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_fromReg0 <= (others => '0');
            SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_fromReg0 <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_toReg0;
            -- Succesor 1
            SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_fromReg1 <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_consumed0 <= (not (SR_SE_i_cmp_conv_backStall) and SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_wireValid) or SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_fromReg0;
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_consumed1 <= (not (SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backStall) and SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_wireValid) or SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_fromReg1;
    -- Consuming
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_StallValid <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_backStall and SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_wireValid;
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_toReg0 <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_StallValid and SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_consumed0;
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_toReg1 <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_StallValid and SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_or0 <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_consumed0;
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_wireStall <= not (SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_consumed1 and SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_or0);
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_backStall <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_V0 <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_wireValid and not (SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_fromReg0);
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_V1 <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_wireValid and not (SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_wireValid <= redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_out;

    -- SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0(STALLREG,955)
    SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_valid <= (others => '0');
            SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_valid <= SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backStall and (SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_valid or SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_i_valid);

            IF (SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_i_valid <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_V1;
    -- Stall signal propagation
    SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backStall <= SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_valid or not (SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_i_valid);

    -- Valid
    SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_V <= SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_valid WHEN SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_valid = "1" ELSE SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_i_valid;

    SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_D0 <= SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_data0 WHEN SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_r_valid = "1" ELSE bubble_select_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_b;

    -- SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0(STALLENABLE,724)
    -- Valid signal propagation
    SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_V0 <= SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_R_v_0;
    -- Stall signal propagation
    SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_s_tv_0 <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall and SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_R_v_0;
    -- Backward Enable generation
    SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backEN <= not (SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_v_s_0 <= SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backEN and SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_V;
    -- Backward Stall generation
    SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backStall <= not (SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backEN);
    SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backEN = "0") THEN
                SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_R_v_0 <= SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_R_v_0 and SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_s_tv_0;
            ELSE
                SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_R_v_0 <= SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0(STALLENABLE,762)
    -- Valid signal propagation
    SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_V0 <= SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_R_v_0;
    -- Stall signal propagation
    SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_s_tv_0 <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall and SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_R_v_0;
    -- Backward Enable generation
    SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_backEN <= not (SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_v_s_0 <= SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_backEN and SE_redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_V1;
    -- Backward Stall generation
    SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_backStall <= not (SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_v_s_0);
    SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_backEN = "0") THEN
                SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_R_v_0 <= SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_R_v_0 and SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_s_tv_0;
            ELSE
                SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_R_v_0 <= SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_cmp_conv(STALLENABLE,604)
    -- Valid signal propagation
    SE_i_cmp_conv_V0 <= SE_i_cmp_conv_R_v_0;
    -- Stall signal propagation
    SE_i_cmp_conv_s_tv_0 <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall and SE_i_cmp_conv_R_v_0;
    -- Backward Enable generation
    SE_i_cmp_conv_backEN <= not (SE_i_cmp_conv_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_cmp_conv_v_s_0 <= SE_i_cmp_conv_backEN and SR_SE_i_cmp_conv_V;
    -- Backward Stall generation
    SE_i_cmp_conv_backStall <= not (SE_i_cmp_conv_backEN);
    SE_i_cmp_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_cmp_conv_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp_conv_backEN = "0") THEN
                SE_i_cmp_conv_R_v_0 <= SE_i_cmp_conv_R_v_0 and SE_i_cmp_conv_s_tv_0;
            ELSE
                SE_i_cmp_conv_R_v_0 <= SE_i_cmp_conv_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x(BITJOIN,432)
    bubble_join_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_q <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1 & i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_0;

    -- bubble_select_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x(BITSELECT,433)
    bubble_select_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_q(0 downto 0));
    bubble_select_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_q(32 downto 1));

    -- i_sbar_unnamed_conv6_conv(BLACKBOX,189)@421
    -- in in_stall_exit@20000000
    -- out out_data_exit@487
    -- out out_stall_entry@20000000
    -- out out_valid_exit@487
    thei_sbar_unnamed_conv6_conv : i_sbar_unnamed_conv6_conv315
    PORT MAP (
        in_data_entry => bubble_select_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_b,
        in_stall_exit => SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall,
        in_valid_entry => SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_V0,
        in_workgroup_size => in_barrier_unnamed_conv6_wgs_workgroup_size,
        out_stall_entry => i_sbar_unnamed_conv6_conv_out_stall_entry,
        out_valid_exit => i_sbar_unnamed_conv6_conv_out_valid_exit,
        clock => clock,
        resetn => resetn
    );

    -- redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo(STALLFIFO,389)
    redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_in <= SE_out_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_V1;
    redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_data_in <= bubble_select_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_c;
    redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_in_bitsignaltemp <= redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_in(0);
    redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_in_bitsignaltemp <= redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_in(0);
    redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_out(0) <= redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_out_bitsignaltemp;
    redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_out(0) <= redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_out_bitsignaltemp;
    theredist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 67,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_in_bitsignaltemp,
        stall_in => redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_c,
        valid_out => redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_out_bitsignaltemp,
        stall_out => redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_stall_out_bitsignaltemp,
        data_out => redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo(STALLFIFO,404)
    redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_in <= SE_out_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_V1;
    redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_data_in <= bubble_select_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_b;
    redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_in_bitsignaltemp <= redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_in(0);
    redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_in_bitsignaltemp <= redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_in(0);
    redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_out(0) <= redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_out_bitsignaltemp;
    redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_out(0) <= redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_out_bitsignaltemp;
    theredist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 201,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist21_conv_B1_merge_reg_aunroll_x_out_data_out_4_286_fifo_b,
        valid_out => redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_stall_out_bitsignaltemp,
        data_out => redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo(STALLFIFO,410)
    redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_in <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_V1;
    redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_data_in <= bubble_select_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_b;
    redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_in_bitsignaltemp <= redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_in(0);
    redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_in_bitsignaltemp <= redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_in(0);
    redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_out(0) <= redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_out_bitsignaltemp;
    redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_out(0) <= redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_out_bitsignaltemp;
    theredist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 422,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_b,
        valid_out => redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_stall_out_bitsignaltemp,
        data_out => redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo(STALLFIFO,415)
    redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_in <= SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_V0;
    redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_data_in <= SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D0;
    redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_in_bitsignaltemp <= redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_in(0);
    redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_in_bitsignaltemp <= redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_in(0);
    redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_out(0) <= redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_out_bitsignaltemp;
    redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_out(0) <= redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_out_bitsignaltemp;
    theredist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 269,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_in_bitsignaltemp,
        data_in => SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_D0,
        valid_out => redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_stall_out_bitsignaltemp,
        data_out => redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo(STALLFIFO,417)
    redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_in <= SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_V0;
    redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_data_in <= SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D0;
    redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_in_bitsignaltemp <= redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_in(0);
    redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_in_bitsignaltemp <= redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_in(0);
    redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_out(0) <= redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_out_bitsignaltemp;
    redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_out(0) <= redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_out_bitsignaltemp;
    theredist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 269,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_in_bitsignaltemp,
        data_in => SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_D0,
        valid_out => redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_stall_out_bitsignaltemp,
        data_out => redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo(STALLENABLE,760)
    -- Valid signal propagation
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_V0 <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall <= in_stall_in or not (SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and0 <= redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_out;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and1 <= redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and0;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and2 <= redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and1;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and3 <= redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and2;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and4 <= redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and3;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and5 <= redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and4;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and6 <= redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and5;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and7 <= redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and6;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and8 <= redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and7;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and9 <= redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and8;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and10 <= redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and9;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and11 <= redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and10;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and12 <= redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and11;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and13 <= redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_out and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and12;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and14 <= i_sbar_unnamed_conv6_conv_out_valid_exit and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and13;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and15 <= SE_i_cmp_conv_V0 and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and14;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and16 <= SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_V0 and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and15;
    SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_wireValid <= SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_V0 and SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_and16;

    -- redist4_i_add82_conv_vt_select_31_b_486_fifo(STALLFIFO,386)
    redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V19;
    redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist4_i_add82_conv_vt_select_31_b_486_fifo_data_in <= i_add82_conv_vt_select_31_b;
    redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_in_bitsignaltemp <= redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_in(0);
    redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_in_bitsignaltemp <= redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_in(0);
    redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_out(0) <= redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_out_bitsignaltemp;
    redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_out(0) <= redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_out_bitsignaltemp;
    theredist4_i_add82_conv_vt_select_31_b_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 487,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 29,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_in_bitsignaltemp,
        data_in => i_add82_conv_vt_select_31_b,
        valid_out => redist4_i_add82_conv_vt_select_31_b_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_out_bitsignaltemp,
        data_out => redist4_i_add82_conv_vt_select_31_b_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo(STALLFIFO,418)
    redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V18;
    redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_q;
    redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_in_bitsignaltemp <= redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_in(0);
    redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_in_bitsignaltemp <= redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_in(0);
    redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_out(0) <= redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_out_bitsignaltemp;
    redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_out(0) <= redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_out_bitsignaltemp;
    theredist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 487,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_q,
        valid_out => redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_out_bitsignaltemp,
        data_out => redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo(STALLFIFO,416)
    redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V17;
    redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_in <= SR_SE_out_redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_backStall;
    redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_p;
    redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_in_bitsignaltemp <= redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_in(0);
    redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_in_bitsignaltemp <= redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_in(0);
    redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_out(0) <= redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_out_bitsignaltemp;
    redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_out(0) <= redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_out_bitsignaltemp;
    theredist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 219,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_in_bitsignaltemp,
        stall_in => redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_p,
        valid_out => redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_valid_out_bitsignaltemp,
        stall_out => redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_out_bitsignaltemp,
        data_out => redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo(STALLFIFO,414)
    redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V16;
    redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_in <= SR_SE_out_redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_backStall;
    redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_o;
    redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_in_bitsignaltemp <= redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_in(0);
    redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_in_bitsignaltemp <= redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_in(0);
    redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_out(0) <= redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_out_bitsignaltemp;
    redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_out(0) <= redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_out_bitsignaltemp;
    theredist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 219,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_in_bitsignaltemp,
        stall_in => redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_o,
        valid_out => redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_valid_out_bitsignaltemp,
        stall_out => redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_out_bitsignaltemp,
        data_out => redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo(STALLFIFO,413)
    redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V15;
    redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_n;
    redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_in_bitsignaltemp <= redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_in(0);
    redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_in_bitsignaltemp <= redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_in(0);
    redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_out(0) <= redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_out_bitsignaltemp;
    redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_out(0) <= redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_out_bitsignaltemp;
    theredist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 487,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_n,
        valid_out => redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_out_bitsignaltemp,
        data_out => redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo(STALLFIFO,412)
    redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V14;
    redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_m;
    redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_in_bitsignaltemp <= redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_in(0);
    redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_in_bitsignaltemp <= redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_in(0);
    redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_out(0) <= redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_out_bitsignaltemp;
    redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_out(0) <= redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_out_bitsignaltemp;
    theredist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 487,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_m,
        valid_out => redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_out_bitsignaltemp,
        data_out => redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo(STALLFIFO,411)
    redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V13;
    redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_l;
    redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_in_bitsignaltemp <= redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_in(0);
    redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_in_bitsignaltemp <= redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_in(0);
    redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_out(0) <= redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_out_bitsignaltemp;
    redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_out(0) <= redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_out_bitsignaltemp;
    theredist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 487,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_l,
        valid_out => redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_out_bitsignaltemp,
        data_out => redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo(STALLFIFO,409)
    redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V12;
    redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_in <= SE_out_redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_backStall;
    redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_k;
    redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_in_bitsignaltemp <= redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_in(0);
    redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_in_bitsignaltemp <= redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_in(0);
    redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_out(0) <= redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_out_bitsignaltemp;
    redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_out(0) <= redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_out_bitsignaltemp;
    theredist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 66,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_in_bitsignaltemp,
        stall_in => redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_k,
        valid_out => redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_valid_out_bitsignaltemp,
        stall_out => redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_out_bitsignaltemp,
        data_out => redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo(STALLFIFO,408)
    redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V11;
    redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_j;
    redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_in_bitsignaltemp <= redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_in(0);
    redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_in_bitsignaltemp <= redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_in(0);
    redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_out(0) <= redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_out_bitsignaltemp;
    redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_out(0) <= redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_out_bitsignaltemp;
    theredist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 487,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_j,
        valid_out => redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_out_bitsignaltemp,
        data_out => redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo(STALLFIFO,407)
    redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V10;
    redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_i;
    redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_in_bitsignaltemp <= redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_in(0);
    redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_in_bitsignaltemp <= redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_in(0);
    redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_out(0) <= redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_out_bitsignaltemp;
    redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_out(0) <= redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_out_bitsignaltemp;
    theredist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 487,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_i,
        valid_out => redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_out_bitsignaltemp,
        data_out => redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo(STALLFIFO,406)
    redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V9;
    redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_h;
    redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_in_bitsignaltemp <= redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_in(0);
    redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_in_bitsignaltemp <= redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_in(0);
    redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_out(0) <= redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_out_bitsignaltemp;
    redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_out(0) <= redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_out_bitsignaltemp;
    theredist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 487,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_h,
        valid_out => redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_out_bitsignaltemp,
        data_out => redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo(STALLFIFO,405)
    redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V8;
    redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_in <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_backStall;
    redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_g;
    redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_in_bitsignaltemp <= redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_in(0);
    redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_in_bitsignaltemp <= redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_in(0);
    redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_out(0) <= redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_out_bitsignaltemp;
    redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_out(0) <= redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_out_bitsignaltemp;
    theredist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 487,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_in_bitsignaltemp,
        stall_in => redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_g,
        valid_out => redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_valid_out_bitsignaltemp,
        stall_out => redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_out_bitsignaltemp,
        data_out => redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo(STALLFIFO,401)
    redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V7;
    redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_in <= SE_out_redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_backStall;
    redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_f;
    redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_in_bitsignaltemp <= redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_in(0);
    redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_in_bitsignaltemp <= redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_in(0);
    redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_out(0) <= redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_out_bitsignaltemp;
    redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_out(0) <= redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_out_bitsignaltemp;
    theredist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 68,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_in_bitsignaltemp,
        stall_in => redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_f,
        valid_out => redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_valid_out_bitsignaltemp,
        stall_out => redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_out_bitsignaltemp,
        data_out => redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo(STALLFIFO,399)
    redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V6;
    redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_in <= SE_out_redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_backStall;
    redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_e;
    redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_in_bitsignaltemp <= redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_in(0);
    redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_in_bitsignaltemp <= redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_in(0);
    redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_out(0) <= redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_out_bitsignaltemp;
    redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_out(0) <= redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_out_bitsignaltemp;
    theredist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 486,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_in_bitsignaltemp,
        stall_in => redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_e,
        valid_out => redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_valid_out_bitsignaltemp,
        stall_out => redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_out_bitsignaltemp,
        data_out => redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo(STALLFIFO,398)
    redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V5;
    redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_in <= SE_out_bubble_out_i_sbar_unnamed_conv2_conv_data_backStall;
    redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_d;
    redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_in_bitsignaltemp <= redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_in(0);
    redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_in_bitsignaltemp <= redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_in(0);
    redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_out(0) <= redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_out_bitsignaltemp;
    redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_out(0) <= redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_out_bitsignaltemp;
    theredist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 287,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_in_bitsignaltemp,
        stall_in => redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_d,
        valid_out => redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_valid_out_bitsignaltemp,
        stall_out => redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_out_bitsignaltemp,
        data_out => redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo(STALLFIFO,396)
    redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V4;
    redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_in <= SE_out_redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_backStall;
    redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_data_in <= bubble_select_conv_B1_merge_reg_aunroll_x_c;
    redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_in_bitsignaltemp <= redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_in(0);
    redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_in_bitsignaltemp <= redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_in(0);
    redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_out(0) <= redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_out_bitsignaltemp;
    redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_out(0) <= redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_out_bitsignaltemp;
    theredist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 66,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_in_bitsignaltemp,
        stall_in => redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_B1_merge_reg_aunroll_x_c,
        valid_out => redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_valid_out_bitsignaltemp,
        stall_out => redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_out_bitsignaltemp,
        data_out => redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x(BLACKBOX,123)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit108_0@68
    -- out out_c0_exit108_1@68
    -- out out_c0_exit108_2@68
    -- out out_c0_exit108_3@68
    -- out out_o_stall@20000000
    -- out out_o_valid@68
    thei_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x : i_sfc_c0_for_body_conv_c0_enter103_conv
    PORT MAP (
        in_c0_eni8_0 => GND_q,
        in_c0_eni8_1 => bubble_select_conv_B1_merge_reg_aunroll_x_b,
        in_c0_eni8_2 => bubble_select_conv_B1_merge_reg_aunroll_x_p,
        in_c0_eni8_3 => bubble_select_conv_B1_merge_reg_aunroll_x_i,
        in_c0_eni8_4 => bubble_select_conv_B1_merge_reg_aunroll_x_g,
        in_c0_eni8_5 => bubble_select_conv_B1_merge_reg_aunroll_x_h,
        in_c0_eni8_6 => bubble_select_conv_B1_merge_reg_aunroll_x_j,
        in_c0_eni8_7 => bubble_select_conv_B1_merge_reg_aunroll_x_l,
        in_c0_eni8_8 => bubble_select_conv_B1_merge_reg_aunroll_x_f,
        in_K_conv => in_K_conv,
        in_N_Fin_dim => in_N_Fin_dim,
        in_N_Fin_sq_pad => in_N_Fin_sq_pad,
        in_P_conv => in_P_conv,
        in_i_stall => SE_out_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_backStall,
        in_i_valid => SE_out_conv_B1_merge_reg_aunroll_x_V3,
        in_in_data => in_in_data,
        out_c0_exit108_1 => i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_1,
        out_c0_exit108_2 => i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_2,
        out_c0_exit108_3 => i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3,
        out_o_stall => i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_conv_B1_merge_reg_aunroll_x_2_reg(STALLFIFO,947)
    bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V1;
    bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_in <= SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_2_backStall;
    bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp <= bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_in(0);
    bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp <= bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_in(0);
    bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_out(0) <= bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_out(0) <= bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    thebubble_out_conv_B1_merge_reg_aunroll_x_2_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 219,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_conv_B1_merge_reg_aunroll_x_1_reg(STALLFIFO,946)
    bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V0;
    bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_in <= SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_1_backStall;
    bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp <= bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_in(0);
    bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp <= bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_in(0);
    bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_out(0) <= bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_out(0) <= bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    thebubble_out_conv_B1_merge_reg_aunroll_x_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 68,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,632)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= conv_B1_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,460)
    bubble_join_stall_entry_q <= in_mul6 & in_mul387 & in_local_id_116 & in_local_id_015 & in_global_id_114 & in_global_id_012 & in_conv_out_023 & in_cmp429 & in_c1_exe25 & in_c1_exe14 & in_c0_exe33 & in_c0_exe21 & in_b_025 & in_add138 & in_acl_hw_wg_id18 & in_a_024;

    -- bubble_select_stall_entry(BITSELECT,461)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(63 downto 32));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(95 downto 64));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(127 downto 96));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(159 downto 128));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(160 downto 160));
    bubble_select_stall_entry_h <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(192 downto 161));
    bubble_select_stall_entry_i <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(224 downto 193));
    bubble_select_stall_entry_j <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(225 downto 225));
    bubble_select_stall_entry_k <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(257 downto 226));
    bubble_select_stall_entry_l <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(289 downto 258));
    bubble_select_stall_entry_m <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(321 downto 290));
    bubble_select_stall_entry_n <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(353 downto 322));
    bubble_select_stall_entry_o <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(385 downto 354));
    bubble_select_stall_entry_p <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(417 downto 386));
    bubble_select_stall_entry_q <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(449 downto 418));

    -- conv_B1_merge_reg_aunroll_x(BLACKBOX,5)@0
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
    -- out out_data_out_10@1
    -- out out_data_out_11@1
    -- out out_data_out_12@1
    -- out out_data_out_13@1
    -- out out_data_out_14@1
    -- out out_data_out_15@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theconv_B1_merge_reg_aunroll_x : conv_B1_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_e,
        in_data_in_1 => bubble_select_stall_entry_b,
        in_data_in_2 => bubble_select_stall_entry_k,
        in_data_in_3 => bubble_select_stall_entry_f,
        in_data_in_4 => bubble_select_stall_entry_g,
        in_data_in_5 => bubble_select_stall_entry_h,
        in_data_in_6 => bubble_select_stall_entry_i,
        in_data_in_7 => bubble_select_stall_entry_q,
        in_data_in_8 => bubble_select_stall_entry_p,
        in_data_in_9 => bubble_select_stall_entry_d,
        in_data_in_10 => bubble_select_stall_entry_j,
        in_data_in_11 => bubble_select_stall_entry_l,
        in_data_in_12 => bubble_select_stall_entry_m,
        in_data_in_13 => bubble_select_stall_entry_n,
        in_data_in_14 => bubble_select_stall_entry_o,
        in_data_in_15 => bubble_select_stall_entry_c,
        in_stall_in => SE_out_conv_B1_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => conv_B1_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => conv_B1_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => conv_B1_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => conv_B1_merge_reg_aunroll_x_out_data_out_3,
        out_data_out_4 => conv_B1_merge_reg_aunroll_x_out_data_out_4,
        out_data_out_5 => conv_B1_merge_reg_aunroll_x_out_data_out_5,
        out_data_out_6 => conv_B1_merge_reg_aunroll_x_out_data_out_6,
        out_data_out_7 => conv_B1_merge_reg_aunroll_x_out_data_out_7,
        out_data_out_8 => conv_B1_merge_reg_aunroll_x_out_data_out_8,
        out_data_out_9 => conv_B1_merge_reg_aunroll_x_out_data_out_9,
        out_data_out_10 => conv_B1_merge_reg_aunroll_x_out_data_out_10,
        out_data_out_11 => conv_B1_merge_reg_aunroll_x_out_data_out_11,
        out_data_out_12 => conv_B1_merge_reg_aunroll_x_out_data_out_12,
        out_data_out_13 => conv_B1_merge_reg_aunroll_x_out_data_out_13,
        out_data_out_14 => conv_B1_merge_reg_aunroll_x_out_data_out_14,
        out_data_out_15 => conv_B1_merge_reg_aunroll_x_out_data_out_15,
        out_stall_out => conv_B1_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => conv_B1_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_conv_B1_merge_reg_aunroll_x(STALLENABLE,560)
    SE_out_conv_B1_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg2 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg3 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg4 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg5 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg6 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg7 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg8 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg9 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg10 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg11 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg12 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg13 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg14 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg15 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg16 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg17 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg18 <= (others => '0');
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg19 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg0 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg1 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg2 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg3 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg4 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg5 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg5;
            -- Succesor 6
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg6 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg6;
            -- Succesor 7
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg7 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg7;
            -- Succesor 8
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg8 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg8;
            -- Succesor 9
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg9 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg9;
            -- Succesor 10
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg10 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg10;
            -- Succesor 11
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg11 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg11;
            -- Succesor 12
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg12 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg12;
            -- Succesor 13
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg13 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg13;
            -- Succesor 14
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg14 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg14;
            -- Succesor 15
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg15 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg15;
            -- Succesor 16
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg16 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg16;
            -- Succesor 17
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg17 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg17;
            -- Succesor 18
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg18 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg18;
            -- Succesor 19
            SE_out_conv_B1_merge_reg_aunroll_x_fromReg19 <= SE_out_conv_B1_merge_reg_aunroll_x_toReg19;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_conv_B1_merge_reg_aunroll_x_consumed0 <= (not (bubble_out_conv_B1_merge_reg_aunroll_x_1_reg_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg0;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed1 <= (not (bubble_out_conv_B1_merge_reg_aunroll_x_2_reg_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg1;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed2 <= (not (bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg2;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed3 <= (not (i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_o_stall) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg3;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed4 <= (not (redist14_conv_B1_merge_reg_aunroll_x_out_data_out_1_65_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg4;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed5 <= (not (redist16_conv_B1_merge_reg_aunroll_x_out_data_out_2_286_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg5;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed6 <= (not (redist17_conv_B1_merge_reg_aunroll_x_out_data_out_3_485_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg6;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed7 <= (not (redist19_conv_B1_merge_reg_aunroll_x_out_data_out_4_67_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg7;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed8 <= (not (redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg8;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed9 <= (not (redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg9;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed10 <= (not (redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg10;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed11 <= (not (redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg11;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed12 <= (not (redist27_conv_B1_merge_reg_aunroll_x_out_data_out_9_65_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg12;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed13 <= (not (redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg13;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed14 <= (not (redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg14;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed15 <= (not (redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg15;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed16 <= (not (redist32_conv_B1_merge_reg_aunroll_x_out_data_out_13_218_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg16;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed17 <= (not (redist34_conv_B1_merge_reg_aunroll_x_out_data_out_14_218_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg17;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed18 <= (not (redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg18;
    SE_out_conv_B1_merge_reg_aunroll_x_consumed19 <= (not (redist4_i_add82_conv_vt_select_31_b_486_fifo_stall_out) and SE_out_conv_B1_merge_reg_aunroll_x_wireValid) or SE_out_conv_B1_merge_reg_aunroll_x_fromReg19;
    -- Consuming
    SE_out_conv_B1_merge_reg_aunroll_x_StallValid <= SE_out_conv_B1_merge_reg_aunroll_x_backStall and SE_out_conv_B1_merge_reg_aunroll_x_wireValid;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg0 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed0;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg1 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed1;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg2 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed2;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg3 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed3;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg4 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed4;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg5 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed5;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg6 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed6;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg7 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed7;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg8 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed8;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg9 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed9;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg10 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed10;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg11 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed11;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg12 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed12;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg13 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed13;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg14 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed14;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg15 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed15;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg16 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed16;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg17 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed17;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg18 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed18;
    SE_out_conv_B1_merge_reg_aunroll_x_toReg19 <= SE_out_conv_B1_merge_reg_aunroll_x_StallValid and SE_out_conv_B1_merge_reg_aunroll_x_consumed19;
    -- Backward Stall generation
    SE_out_conv_B1_merge_reg_aunroll_x_or0 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed0;
    SE_out_conv_B1_merge_reg_aunroll_x_or1 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed1 and SE_out_conv_B1_merge_reg_aunroll_x_or0;
    SE_out_conv_B1_merge_reg_aunroll_x_or2 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed2 and SE_out_conv_B1_merge_reg_aunroll_x_or1;
    SE_out_conv_B1_merge_reg_aunroll_x_or3 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed3 and SE_out_conv_B1_merge_reg_aunroll_x_or2;
    SE_out_conv_B1_merge_reg_aunroll_x_or4 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed4 and SE_out_conv_B1_merge_reg_aunroll_x_or3;
    SE_out_conv_B1_merge_reg_aunroll_x_or5 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed5 and SE_out_conv_B1_merge_reg_aunroll_x_or4;
    SE_out_conv_B1_merge_reg_aunroll_x_or6 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed6 and SE_out_conv_B1_merge_reg_aunroll_x_or5;
    SE_out_conv_B1_merge_reg_aunroll_x_or7 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed7 and SE_out_conv_B1_merge_reg_aunroll_x_or6;
    SE_out_conv_B1_merge_reg_aunroll_x_or8 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed8 and SE_out_conv_B1_merge_reg_aunroll_x_or7;
    SE_out_conv_B1_merge_reg_aunroll_x_or9 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed9 and SE_out_conv_B1_merge_reg_aunroll_x_or8;
    SE_out_conv_B1_merge_reg_aunroll_x_or10 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed10 and SE_out_conv_B1_merge_reg_aunroll_x_or9;
    SE_out_conv_B1_merge_reg_aunroll_x_or11 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed11 and SE_out_conv_B1_merge_reg_aunroll_x_or10;
    SE_out_conv_B1_merge_reg_aunroll_x_or12 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed12 and SE_out_conv_B1_merge_reg_aunroll_x_or11;
    SE_out_conv_B1_merge_reg_aunroll_x_or13 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed13 and SE_out_conv_B1_merge_reg_aunroll_x_or12;
    SE_out_conv_B1_merge_reg_aunroll_x_or14 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed14 and SE_out_conv_B1_merge_reg_aunroll_x_or13;
    SE_out_conv_B1_merge_reg_aunroll_x_or15 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed15 and SE_out_conv_B1_merge_reg_aunroll_x_or14;
    SE_out_conv_B1_merge_reg_aunroll_x_or16 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed16 and SE_out_conv_B1_merge_reg_aunroll_x_or15;
    SE_out_conv_B1_merge_reg_aunroll_x_or17 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed17 and SE_out_conv_B1_merge_reg_aunroll_x_or16;
    SE_out_conv_B1_merge_reg_aunroll_x_or18 <= SE_out_conv_B1_merge_reg_aunroll_x_consumed18 and SE_out_conv_B1_merge_reg_aunroll_x_or17;
    SE_out_conv_B1_merge_reg_aunroll_x_wireStall <= not (SE_out_conv_B1_merge_reg_aunroll_x_consumed19 and SE_out_conv_B1_merge_reg_aunroll_x_or18);
    SE_out_conv_B1_merge_reg_aunroll_x_backStall <= SE_out_conv_B1_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_conv_B1_merge_reg_aunroll_x_V0 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg0);
    SE_out_conv_B1_merge_reg_aunroll_x_V1 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg1);
    SE_out_conv_B1_merge_reg_aunroll_x_V2 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg2);
    SE_out_conv_B1_merge_reg_aunroll_x_V3 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg3);
    SE_out_conv_B1_merge_reg_aunroll_x_V4 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg4);
    SE_out_conv_B1_merge_reg_aunroll_x_V5 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg5);
    SE_out_conv_B1_merge_reg_aunroll_x_V6 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg6);
    SE_out_conv_B1_merge_reg_aunroll_x_V7 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg7);
    SE_out_conv_B1_merge_reg_aunroll_x_V8 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg8);
    SE_out_conv_B1_merge_reg_aunroll_x_V9 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg9);
    SE_out_conv_B1_merge_reg_aunroll_x_V10 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg10);
    SE_out_conv_B1_merge_reg_aunroll_x_V11 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg11);
    SE_out_conv_B1_merge_reg_aunroll_x_V12 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg12);
    SE_out_conv_B1_merge_reg_aunroll_x_V13 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg13);
    SE_out_conv_B1_merge_reg_aunroll_x_V14 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg14);
    SE_out_conv_B1_merge_reg_aunroll_x_V15 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg15);
    SE_out_conv_B1_merge_reg_aunroll_x_V16 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg16);
    SE_out_conv_B1_merge_reg_aunroll_x_V17 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg17);
    SE_out_conv_B1_merge_reg_aunroll_x_V18 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg18);
    SE_out_conv_B1_merge_reg_aunroll_x_V19 <= SE_out_conv_B1_merge_reg_aunroll_x_wireValid and not (SE_out_conv_B1_merge_reg_aunroll_x_fromReg19);
    -- Computing multiple Valid(s)
    SE_out_conv_B1_merge_reg_aunroll_x_wireValid <= conv_B1_merge_reg_aunroll_x_out_valid_out;

    -- bubble_out_conv_B1_merge_reg_aunroll_x_3_reg(STALLFIFO,948)
    bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_in <= SE_out_conv_B1_merge_reg_aunroll_x_V2;
    bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_in <= SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3_backStall;
    bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp <= bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_in(0);
    bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp <= bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_in(0);
    bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_out(0) <= bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_out(0) <= bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    thebubble_out_conv_B1_merge_reg_aunroll_x_3_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 219,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3(STALLENABLE,773)
    -- Valid signal propagation
    SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3_V0 <= SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3_backStall <= i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_stall or not (SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3_wireValid <= bubble_out_conv_B1_merge_reg_aunroll_x_3_reg_valid_out;

    -- SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv(STALLENABLE,593)
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg0 <= (others => '0');
            SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg1 <= (others => '0');
            SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg0 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_toReg0;
            -- Succesor 1
            SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg1 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_toReg1;
            -- Succesor 2
            SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg2 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed0 <= (not (redist5_i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data_67_fifo_stall_out) and SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireValid) or SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg0;
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed1 <= (not (SE_out_redist8_i_sfc_c0_for_body_conv_c0_enter103_conv_aunroll_x_out_c0_exit108_3_152_fifo_backStall) and SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireValid) or SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg1;
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed2 <= (not (redist0_i_l_grpid_1_addr_zext_conv_vt_join_q_67_fifo_stall_out) and SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireValid) or SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg2;
    -- Consuming
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_StallValid <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_backStall and SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireValid;
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_toReg0 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_StallValid and SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed0;
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_toReg1 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_StallValid and SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed1;
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_toReg2 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_StallValid and SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed2;
    -- Backward Stall generation
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_or0 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed0;
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_or1 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed1 and SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_or0;
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireStall <= not (SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_consumed2 and SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_or1);
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_backStall <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireStall;
    -- Valid signal propagation
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_V0 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireValid and not (SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg0);
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_V1 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireValid and not (SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg1);
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_V2 <= SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireValid and not (SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_wireValid <= i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_valid;

    -- c_i32_undef(CONSTANT,133)
    c_i32_undef_q <= "00000000000000000000000000000000";

    -- i_acl_wg_limiter_enter_l_grpid_1_conv(BLACKBOX,140)@219
    -- in in_i_stall@20000000
    -- out out_o_data@220
    -- out out_o_stall@20000000
    -- out out_o_valid@220
    -- out out_wgl_1_enter_exit_stall_out@20000000
    -- out out_wgl_1_enter_exit_valid_out@20000000
    thei_acl_wg_limiter_enter_l_grpid_1_conv : i_acl_wg_limiter_enter_l_grpid_1_conv259
    PORT MAP (
        in_i_data => c_i32_undef_q,
        in_i_stall => SE_out_i_acl_wg_limiter_enter_l_grpid_1_conv_backStall,
        in_i_valid => SE_out_bubble_out_conv_B1_merge_reg_aunroll_x_3_V0,
        in_wgl_1_enter_exit_stall_in => in_wgl_1_enter_exit_stall_in,
        in_wgl_1_enter_exit_valid_in => in_wgl_1_enter_exit_valid_in,
        in_wgl_1_wgs_wg_size => in_wgl_1_wgs_wg_size,
        out_o_data => i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_data,
        out_o_stall => i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_stall,
        out_o_valid => i_acl_wg_limiter_enter_l_grpid_1_conv_out_o_valid,
        out_wgl_1_enter_exit_stall_out => i_acl_wg_limiter_enter_l_grpid_1_conv_out_wgl_1_enter_exit_stall_out,
        out_wgl_1_enter_exit_valid_out => i_acl_wg_limiter_enter_l_grpid_1_conv_out_wgl_1_enter_exit_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,7)
    out_wgl_1_enter_exit_valid_out <= i_acl_wg_limiter_enter_l_grpid_1_conv_out_wgl_1_enter_exit_valid_out;
    out_wgl_1_enter_exit_stall_out <= i_acl_wg_limiter_enter_l_grpid_1_conv_out_wgl_1_enter_exit_stall_out;

    -- bubble_join_redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo(BITJOIN,521)
    bubble_join_redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_q <= redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_data_out;

    -- bubble_select_redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo(BITSELECT,522)
    bubble_select_redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_q(31 downto 0));

    -- bubble_join_redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo(BITJOIN,524)
    bubble_join_redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_q <= redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_data_out;

    -- bubble_select_redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo(BITSELECT,525)
    bubble_select_redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_q(31 downto 0));

    -- bubble_join_redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo(BITJOIN,551)
    bubble_join_redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_q <= redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_data_out;

    -- bubble_select_redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo(BITSELECT,552)
    bubble_select_redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_q(31 downto 0));

    -- bubble_join_redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo(BITJOIN,545)
    bubble_join_redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_q <= redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_data_out;

    -- bubble_select_redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo(BITSELECT,546)
    bubble_select_redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_q(31 downto 0));

    -- bubble_join_redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo(BITJOIN,539)
    bubble_join_redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_q <= redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_data_out;

    -- bubble_select_redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo(BITSELECT,540)
    bubble_select_redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_q(31 downto 0));

    -- bubble_join_redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo(BITJOIN,536)
    bubble_join_redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_q <= redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_data_out;

    -- bubble_select_redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo(BITSELECT,537)
    bubble_select_redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_q(31 downto 0));

    -- i_cmp_conv(COMPARE,156)@486 + 1
    i_cmp_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => SR_SE_i_cmp_conv_D0(31)) & SR_SE_i_cmp_conv_D0));
    i_cmp_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => SR_SE_i_cmp_conv_D1(31)) & SR_SE_i_cmp_conv_D1));
    i_cmp_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp_conv_backEN = "1") THEN
                i_cmp_conv_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp_conv_a) - SIGNED(i_cmp_conv_b));
            END IF;
        END IF;
    END PROCESS;
    i_cmp_conv_c(0) <= i_cmp_conv_o(33);

    -- i_cmp_guard_conv(LOGICAL,157)@487
    i_cmp_guard_conv_q <= i_cmp_conv_c or bubble_select_redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_b;

    -- bubble_join_redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo(BITJOIN,533)
    bubble_join_redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_q <= redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_data_out;

    -- bubble_select_redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo(BITSELECT,534)
    bubble_select_redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_q(0 downto 0));

    -- bubble_join_redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo(BITJOIN,518)
    bubble_join_redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_q <= redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_data_out;

    -- bubble_select_redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo(BITSELECT,519)
    bubble_select_redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_q(31 downto 0));

    -- bubble_join_redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo(BITJOIN,515)
    bubble_join_redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_q <= redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_data_out;

    -- bubble_select_redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo(BITSELECT,516)
    bubble_select_redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_q(31 downto 0));

    -- bubble_join_redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo(BITJOIN,485)
    bubble_join_redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_q <= redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_data_out;

    -- bubble_select_redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo(BITSELECT,486)
    bubble_select_redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_q(31 downto 0));

    -- bubble_join_redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo(BITJOIN,512)
    bubble_join_redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_q <= redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_data_out;

    -- bubble_select_redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo(BITSELECT,513)
    bubble_select_redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_q(0 downto 0));

    -- redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0(REG,400)
    redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_backEN = "1") THEN
                redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_q <= STD_LOGIC_VECTOR(SR_SE_redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_redist4_i_add82_conv_vt_select_31_b_486_fifo(BITJOIN,476)
    bubble_join_redist4_i_add82_conv_vt_select_31_b_486_fifo_q <= redist4_i_add82_conv_vt_select_31_b_486_fifo_data_out;

    -- bubble_select_redist4_i_add82_conv_vt_select_31_b_486_fifo(BITSELECT,477)
    bubble_select_redist4_i_add82_conv_vt_select_31_b_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist4_i_add82_conv_vt_select_31_b_486_fifo_q(28 downto 0));

    -- i_add82_conv_vt_const_2(CONSTANT,144)
    i_add82_conv_vt_const_2_q <= "000";

    -- i_add82_conv_vt_join(BITJOIN,145)@487
    i_add82_conv_vt_join_q <= bubble_select_redist4_i_add82_conv_vt_select_31_b_486_fifo_b & i_add82_conv_vt_const_2_q;

    -- redist38_bgTrunc_i_add81_conv_sel_x_b_2_0(REG,420)
    redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_backEN = "1") THEN
                redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_q <= STD_LOGIC_VECTOR(redist37_bgTrunc_i_add81_conv_sel_x_b_1_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo(BITJOIN,530)
    bubble_join_redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_q <= redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_data_out;

    -- bubble_select_redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo(BITSELECT,531)
    bubble_select_redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_q(31 downto 0));

    -- bubble_join_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo(BITJOIN,554)
    bubble_join_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_q <= redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_data_out;

    -- bubble_select_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo(BITSELECT,555)
    bubble_select_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_q(31 downto 0));

    -- dupName_0_sync_out_x(GPOUT,13)@487
    out_acl_hw_wg_id18 <= bubble_select_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_b;
    out_add138 <= bubble_select_redist28_conv_B1_merge_reg_aunroll_x_out_data_out_9_486_fifo_b;
    out_add81 <= redist38_bgTrunc_i_add81_conv_sel_x_b_2_0_q;
    out_add82 <= i_add82_conv_vt_join_q;
    out_c0_exe21 <= redist18_conv_B1_merge_reg_aunroll_x_out_data_out_3_486_0_q;
    out_c0_exe33 <= bubble_select_redist22_conv_B1_merge_reg_aunroll_x_out_data_out_4_486_fifo_b;
    out_c1_exe1117 <= bubble_select_redist7_i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_c1_exit116_1_66_fifo_b;
    out_c1_exe14 <= bubble_select_redist23_conv_B1_merge_reg_aunroll_x_out_data_out_5_486_fifo_b;
    out_c1_exe25 <= bubble_select_redist24_conv_B1_merge_reg_aunroll_x_out_data_out_6_486_fifo_b;
    out_cmp429 <= bubble_select_redist29_conv_B1_merge_reg_aunroll_x_out_data_out_10_486_fifo_b;
    out_cmp_GUARD <= i_cmp_guard_conv_q;
    out_global_id_012 <= bubble_select_redist30_conv_B1_merge_reg_aunroll_x_out_data_out_11_486_fifo_b;
    out_global_id_114 <= bubble_select_redist31_conv_B1_merge_reg_aunroll_x_out_data_out_12_486_fifo_b;
    out_local_id_015 <= bubble_select_redist33_conv_B1_merge_reg_aunroll_x_out_data_out_13_486_fifo_b;
    out_local_id_116 <= bubble_select_redist35_conv_B1_merge_reg_aunroll_x_out_data_out_14_486_fifo_b;
    out_mul387 <= bubble_select_redist26_conv_B1_merge_reg_aunroll_x_out_data_out_8_486_fifo_b;
    out_mul6 <= bubble_select_redist25_conv_B1_merge_reg_aunroll_x_out_data_out_7_486_fifo_b;
    out_valid_out <= SE_out_redist36_conv_B1_merge_reg_aunroll_x_out_data_out_15_486_fifo_V0;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,15)
    out_unnamed_conv0_avm_address <= i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_address;
    out_unnamed_conv0_avm_enable <= i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_enable;
    out_unnamed_conv0_avm_read <= i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_read;
    out_unnamed_conv0_avm_write <= i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_write;
    out_unnamed_conv0_avm_writedata <= i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_writedata;
    out_unnamed_conv0_avm_byteenable <= i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_byteenable;
    out_unnamed_conv0_avm_burstcount <= i_load_unnamed_conv0_conv_out_unnamed_conv0_avm_burstcount;

    -- dupName_2_ext_sig_sync_out_x(GPOUT,21)
    out_memdep_19_avm_address <= i_store_memdep_19_conv_out_memdep_19_avm_address;
    out_memdep_19_avm_enable <= i_store_memdep_19_conv_out_memdep_19_avm_enable;
    out_memdep_19_avm_read <= i_store_memdep_19_conv_out_memdep_19_avm_read;
    out_memdep_19_avm_write <= i_store_memdep_19_conv_out_memdep_19_avm_write;
    out_memdep_19_avm_writedata <= i_store_memdep_19_conv_out_memdep_19_avm_writedata;
    out_memdep_19_avm_byteenable <= i_store_memdep_19_conv_out_memdep_19_avm_byteenable;
    out_memdep_19_avm_burstcount <= i_store_memdep_19_conv_out_memdep_19_avm_burstcount;

    -- dupName_3_ext_sig_sync_out_x(GPOUT,26)
    out_unnamed_conv1_avm_address <= i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_address;
    out_unnamed_conv1_avm_enable <= i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_enable;
    out_unnamed_conv1_avm_read <= i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_read;
    out_unnamed_conv1_avm_write <= i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_write;
    out_unnamed_conv1_avm_writedata <= i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_writedata;
    out_unnamed_conv1_avm_byteenable <= i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_byteenable;
    out_unnamed_conv1_avm_burstcount <= i_load_unnamed_conv1_conv_out_unnamed_conv1_avm_burstcount;

    -- dupName_4_ext_sig_sync_out_x(GPOUT,31)
    out_memdep_avm_address <= i_store_memdep_conv_out_memdep_avm_address;
    out_memdep_avm_enable <= i_store_memdep_conv_out_memdep_avm_enable;
    out_memdep_avm_read <= i_store_memdep_conv_out_memdep_avm_read;
    out_memdep_avm_write <= i_store_memdep_conv_out_memdep_avm_write;
    out_memdep_avm_writedata <= i_store_memdep_conv_out_memdep_avm_writedata;
    out_memdep_avm_byteenable <= i_store_memdep_conv_out_memdep_avm_byteenable;
    out_memdep_avm_burstcount <= i_store_memdep_conv_out_memdep_avm_burstcount;

    -- dupName_5_ext_sig_sync_out_x(GPOUT,36)
    out_memcoalesce_null_load_0_avm_address <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_address;
    out_memcoalesce_null_load_0_avm_enable <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_enable;
    out_memcoalesce_null_load_0_avm_read <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_read;
    out_memcoalesce_null_load_0_avm_write <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_write;
    out_memcoalesce_null_load_0_avm_writedata <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_writedata;
    out_memcoalesce_null_load_0_avm_byteenable <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_byteenable;
    out_memcoalesce_null_load_0_avm_burstcount <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_0_avm_burstcount;

    -- dupName_6_ext_sig_sync_out_x(GPOUT,41)
    out_wgl_0_exit_exit_valid_in <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_0_exit_exit_valid_in;
    out_wgl_0_exit_exit_stall_in <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_0_exit_exit_stall_in;

    -- dupName_7_ext_sig_sync_out_x(GPOUT,45)
    out_memcoalesce_null_load_02_avm_address <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_address;
    out_memcoalesce_null_load_02_avm_enable <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_enable;
    out_memcoalesce_null_load_02_avm_read <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_read;
    out_memcoalesce_null_load_02_avm_write <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_write;
    out_memcoalesce_null_load_02_avm_writedata <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_writedata;
    out_memcoalesce_null_load_02_avm_byteenable <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_byteenable;
    out_memcoalesce_null_load_02_avm_burstcount <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_memcoalesce_null_load_02_avm_burstcount;

    -- dupName_8_ext_sig_sync_out_x(GPOUT,49)
    out_wgl_1_exit_exit_valid_in <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_1_exit_exit_valid_in;
    out_wgl_1_exit_exit_stall_in <= i_sfc_c1_for_body_conv_c1_enter113_conv_aunroll_x_out_wgl_1_exit_exit_stall_in;

    -- ext_sig_sync_out(GPOUT,137)
    out_wgl_0_enter_exit_valid_out <= i_acl_wg_limiter_enter_l_grpid_0_conv_out_wgl_0_enter_exit_valid_out;
    out_wgl_0_enter_exit_stall_out <= i_acl_wg_limiter_enter_l_grpid_0_conv_out_wgl_0_enter_exit_stall_out;

    -- sync_out(GPOUT,202)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
