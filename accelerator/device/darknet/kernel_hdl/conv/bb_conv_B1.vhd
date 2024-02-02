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

-- VHDL created from bb_conv_B1
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

entity bb_conv_B1 is
    port (
        in_K_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_N_Fin_dim : in std_logic_vector(31 downto 0);  -- ufix32
        in_N_Fin_sq_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_P_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_a_024_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_a_024_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id18_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id18_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_add138_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_add138_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_b_025_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_b_025_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_barrier_unnamed_conv2_wgs_workgroup_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_barrier_unnamed_conv6_wgs_workgroup_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe21_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe21_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe33_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe33_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe14_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe14_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe25_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe25_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp429_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_cmp429_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_conv_out_023_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_conv_out_023_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_conv_wt : in std_logic_vector(63 downto 0);  -- ufix64
        in_encoder_conv_B1_merge_priority_encoder_workgroup_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_global_id_012_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_012_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_114_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_114_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_local_id_015_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_015_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_116_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_116_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_null_load_02_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_memcoalesce_null_load_02_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_02_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_02_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_memcoalesce_null_load_0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_19_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_memdep_19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_19_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_mul387_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul387_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul6_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul6_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_0_enter_exit_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_0_enter_exit_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_0_exit_exit_stall_out : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_0_exit_exit_valid_out : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_0_wgs_wg_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_wgl_1_enter_exit_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_1_enter_exit_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_1_exit_exit_stall_out : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_1_exit_exit_valid_out : in std_logic_vector(0 downto 0);  -- ufix1
        in_wgl_1_wgs_wg_size : in std_logic_vector(31 downto 0);  -- ufix32
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
        out_global_id_012 : out std_logic_vector(31 downto 0);  -- ufix32
        out_global_id_114 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_015 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_116 : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_02_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_02_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_02_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_02_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_memcoalesce_null_load_0_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_0_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_memdep_19_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_19_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_19_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_mul387 : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul6 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv0_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv0_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_0_enter_exit_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_0_enter_exit_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_0_exit_exit_stall_in : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_0_exit_exit_valid_in : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_1_enter_exit_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_1_enter_exit_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_1_exit_exit_stall_in : out std_logic_vector(0 downto 0);  -- ufix1
        out_wgl_1_exit_exit_valid_in : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_B1;

architecture normal of bb_conv_B1 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv_B1_stall_region is
        port (
            in_K_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fin_dim : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fin_sq_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_P_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_a_024 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_acl_hw_wg_id18 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add138 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_b_025 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_barrier_unnamed_conv2_wgs_workgroup_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_barrier_unnamed_conv6_wgs_workgroup_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe21 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe33 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe25 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp429 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_conv_out_023 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_conv_wt : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_global_id_012 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_114 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_local_id_015 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_116 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_02_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_19_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_memdep_19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_19_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_mul387 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_0_enter_exit_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_0_enter_exit_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_0_exit_exit_stall_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_0_exit_exit_valid_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_0_wgs_wg_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_wgl_1_enter_exit_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_1_enter_exit_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_1_exit_exit_stall_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_1_exit_exit_valid_out : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_wgl_1_wgs_wg_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_acl_hw_wg_id18 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_add138 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_add81 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_add82 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe21 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe33 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1117 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c1_exe14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe25 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp429 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_cmp_GUARD : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_global_id_012 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_global_id_114 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_015 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_116 : out std_logic_vector(31 downto 0);  -- Fixed Point
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
            out_memdep_19_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_19_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_19_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_mul387 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_0_enter_exit_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_0_enter_exit_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_0_exit_exit_stall_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_0_exit_exit_valid_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_1_enter_exit_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_1_enter_exit_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_1_exit_exit_stall_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_wgl_1_exit_exit_valid_in : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_B1_branch is
        port (
            in_acl_hw_wg_id18 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add138 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add81 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add82 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe21 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe33 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe1117 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_exe14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe25 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp429 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_cmp_GUARD : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_global_id_012 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_114 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_015 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_116 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul387 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id18 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_add138 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_add81 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_add82 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe21 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe33 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1117 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c1_exe14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe25 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp429 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_global_id_012 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_global_id_114 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_015 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_116 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul387 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_B1_merge is
        port (
            in_a_024_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_a_024_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_acl_hw_wg_id18_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_acl_hw_wg_id18_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add138_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add138_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_b_025_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_b_025_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe21_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe21_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe33_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe33_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe14_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe14_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe25_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe25_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp429_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_cmp429_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_conv_out_023_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_conv_out_023_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_encoder_conv_B1_merge_priority_encoder_workgroup_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_012_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_012_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_114_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_114_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_015_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_015_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_116_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_116_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul387_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul387_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul6_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul6_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_a_024 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_acl_hw_wg_id18 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_add138 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_b_025 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe21 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe33 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe25 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp429 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_conv_out_023 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_global_id_012 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_global_id_114 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_015 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_116 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul387 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component loop_capacity_FIFO is
        port (
            in_data_in : in std_logic_vector(449 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(449 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal dupName_0_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_1_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_2_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_3_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_4_data_out_select_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_6_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_7_data_out_select_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_8_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_9_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_10_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_11_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_12_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_13_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_14_data_out_select_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num0_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num10_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num11_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num12_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num13_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num14_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num15_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num1_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num2_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num3_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num4_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num5_cast_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal num6_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num7_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal num8_cast_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal num9_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal aggregateWireOut_join_q : STD_LOGIC_VECTOR (449 downto 0);
    signal bb_conv_B1_stall_region_out_acl_hw_wg_id18 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_add138 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_add81 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_add82 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_c0_exe21 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_c0_exe33 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_c1_exe1117 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_c1_exe14 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_c1_exe25 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_cmp429 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_cmp_GUARD : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_global_id_012 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_global_id_114 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_local_id_015 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_local_id_116 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_19_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_19_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_19_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_19_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_19_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_19_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_19_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_memdep_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_stall_region_out_mul387 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_mul6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv1_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv1_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv1_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_unnamed_conv1_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_wgl_0_enter_exit_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_wgl_0_enter_exit_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_wgl_0_exit_exit_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_wgl_0_exit_exit_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_wgl_1_enter_exit_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_wgl_1_enter_exit_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_wgl_1_exit_exit_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_stall_region_out_wgl_1_exit_exit_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_branch_out_acl_hw_wg_id18 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_add138 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_add81 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_add82 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_c0_exe21 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_c0_exe33 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_branch_out_c1_exe1117 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_c1_exe14 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_c1_exe25 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_cmp429 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_branch_out_global_id_012 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_global_id_114 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_local_id_015 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_local_id_116 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_mul387 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_mul6 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_merge_out_a_024 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_acl_hw_wg_id18 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_add138 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_b_025 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_c0_exe21 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_c0_exe33 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_merge_out_c1_exe14 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_c1_exe25 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_cmp429 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_merge_out_conv_out_023 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_global_id_012 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_global_id_114 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_local_id_015 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_local_id_116 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_mul387 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_mul6 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B1_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal data_out_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal loop_capacity_FIFO_out_data_out : STD_LOGIC_VECTOR (449 downto 0);
    signal loop_capacity_FIFO_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_capacity_FIFO_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal primWireOut_cast_b : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- conv_B1_merge(BLACKBOX,36)
    theconv_B1_merge : conv_B1_merge
    PORT MAP (
        in_a_024_0 => in_a_024_0,
        in_a_024_1 => in_a_024_1,
        in_acl_hw_wg_id18_0 => in_acl_hw_wg_id18_0,
        in_acl_hw_wg_id18_1 => in_acl_hw_wg_id18_1,
        in_add138_0 => in_add138_0,
        in_add138_1 => in_add138_1,
        in_b_025_0 => in_b_025_0,
        in_b_025_1 => in_b_025_1,
        in_c0_exe21_0 => in_c0_exe21_0,
        in_c0_exe21_1 => in_c0_exe21_1,
        in_c0_exe33_0 => in_c0_exe33_0,
        in_c0_exe33_1 => in_c0_exe33_1,
        in_c1_exe14_0 => in_c1_exe14_0,
        in_c1_exe14_1 => in_c1_exe14_1,
        in_c1_exe25_0 => in_c1_exe25_0,
        in_c1_exe25_1 => in_c1_exe25_1,
        in_cmp429_0 => in_cmp429_0,
        in_cmp429_1 => in_cmp429_1,
        in_conv_out_023_0 => in_conv_out_023_0,
        in_conv_out_023_1 => in_conv_out_023_1,
        in_encoder_conv_B1_merge_priority_encoder_workgroup_size => in_encoder_conv_B1_merge_priority_encoder_workgroup_size,
        in_global_id_012_0 => in_global_id_012_0,
        in_global_id_012_1 => in_global_id_012_1,
        in_global_id_114_0 => in_global_id_114_0,
        in_global_id_114_1 => in_global_id_114_1,
        in_local_id_015_0 => in_local_id_015_0,
        in_local_id_015_1 => in_local_id_015_1,
        in_local_id_116_0 => in_local_id_116_0,
        in_local_id_116_1 => in_local_id_116_1,
        in_mul387_0 => in_mul387_0,
        in_mul387_1 => in_mul387_1,
        in_mul6_0 => in_mul6_0,
        in_mul6_1 => in_mul6_1,
        in_stall_in => loop_capacity_FIFO_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_a_024 => conv_B1_merge_out_a_024,
        out_acl_hw_wg_id18 => conv_B1_merge_out_acl_hw_wg_id18,
        out_add138 => conv_B1_merge_out_add138,
        out_b_025 => conv_B1_merge_out_b_025,
        out_c0_exe21 => conv_B1_merge_out_c0_exe21,
        out_c0_exe33 => conv_B1_merge_out_c0_exe33,
        out_c1_exe14 => conv_B1_merge_out_c1_exe14,
        out_c1_exe25 => conv_B1_merge_out_c1_exe25,
        out_cmp429 => conv_B1_merge_out_cmp429,
        out_conv_out_023 => conv_B1_merge_out_conv_out_023,
        out_global_id_012 => conv_B1_merge_out_global_id_012,
        out_global_id_114 => conv_B1_merge_out_global_id_114,
        out_local_id_015 => conv_B1_merge_out_local_id_015,
        out_local_id_116 => conv_B1_merge_out_local_id_116,
        out_mul387 => conv_B1_merge_out_mul387,
        out_mul6 => conv_B1_merge_out_mul6,
        out_stall_out_0 => conv_B1_merge_out_stall_out_0,
        out_stall_out_1 => conv_B1_merge_out_stall_out_1,
        out_valid_out => conv_B1_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- num15_cast_x(BITSELECT,23)
    num15_cast_x_b <= conv_B1_merge_out_mul6(31 downto 0);

    -- num14_cast_x(BITSELECT,22)
    num14_cast_x_b <= conv_B1_merge_out_mul387(31 downto 0);

    -- num13_cast_x(BITSELECT,21)
    num13_cast_x_b <= conv_B1_merge_out_local_id_116(31 downto 0);

    -- num12_cast_x(BITSELECT,20)
    num12_cast_x_b <= conv_B1_merge_out_local_id_015(31 downto 0);

    -- num11_cast_x(BITSELECT,19)
    num11_cast_x_b <= conv_B1_merge_out_global_id_114(31 downto 0);

    -- num10_cast_x(BITSELECT,18)
    num10_cast_x_b <= conv_B1_merge_out_global_id_012(31 downto 0);

    -- num9_cast_x(BITSELECT,32)
    num9_cast_x_b <= STD_LOGIC_VECTOR(conv_B1_merge_out_conv_out_023(31 downto 0));

    -- num8_cast_x(BITSELECT,31)
    num8_cast_x_b <= conv_B1_merge_out_cmp429(0 downto 0);

    -- num7_cast_x(BITSELECT,30)
    num7_cast_x_b <= conv_B1_merge_out_c1_exe25(31 downto 0);

    -- num6_cast_x(BITSELECT,29)
    num6_cast_x_b <= conv_B1_merge_out_c1_exe14(31 downto 0);

    -- num5_cast_x(BITSELECT,28)
    num5_cast_x_b <= conv_B1_merge_out_c0_exe33(0 downto 0);

    -- num4_cast_x(BITSELECT,27)
    num4_cast_x_b <= conv_B1_merge_out_c0_exe21(31 downto 0);

    -- num3_cast_x(BITSELECT,26)
    num3_cast_x_b <= conv_B1_merge_out_b_025(31 downto 0);

    -- num2_cast_x(BITSELECT,25)
    num2_cast_x_b <= conv_B1_merge_out_add138(31 downto 0);

    -- num1_cast_x(BITSELECT,24)
    num1_cast_x_b <= conv_B1_merge_out_acl_hw_wg_id18(31 downto 0);

    -- num0_cast_x(BITSELECT,17)
    num0_cast_x_b <= conv_B1_merge_out_a_024(31 downto 0);

    -- aggregateWireOut_join(BITJOIN,33)
    aggregateWireOut_join_q <= num15_cast_x_b & num14_cast_x_b & num13_cast_x_b & num12_cast_x_b & num11_cast_x_b & num10_cast_x_b & num9_cast_x_b & num8_cast_x_b & num7_cast_x_b & num6_cast_x_b & num5_cast_x_b & num4_cast_x_b & num3_cast_x_b & num2_cast_x_b & num1_cast_x_b & num0_cast_x_b;

    -- loop_capacity_FIFO(BLACKBOX,120)
    theloop_capacity_FIFO : loop_capacity_FIFO
    PORT MAP (
        in_data_in => aggregateWireOut_join_q,
        in_stall_in => bb_conv_B1_stall_region_out_stall_out,
        in_valid_in => conv_B1_merge_out_valid_out,
        out_data_out => loop_capacity_FIFO_out_data_out,
        out_stall_out => loop_capacity_FIFO_out_stall_out,
        out_valid_out => loop_capacity_FIFO_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_14_data_out_select_x(BITSELECT,16)
    dupName_14_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(449 downto 418);

    -- dupName_13_data_out_select_x(BITSELECT,15)
    dupName_13_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(417 downto 386);

    -- dupName_12_data_out_select_x(BITSELECT,14)
    dupName_12_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(385 downto 354);

    -- dupName_11_data_out_select_x(BITSELECT,13)
    dupName_11_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(353 downto 322);

    -- dupName_10_data_out_select_x(BITSELECT,12)
    dupName_10_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(321 downto 290);

    -- dupName_9_data_out_select_x(BITSELECT,11)
    dupName_9_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(289 downto 258);

    -- dupName_8_data_out_select_x(BITSELECT,10)
    dupName_8_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(257 downto 226);

    -- primWireOut_cast(BITSELECT,191)
    primWireOut_cast_b <= dupName_8_data_out_select_x_b(31 downto 0);

    -- dupName_7_data_out_select_x(BITSELECT,9)
    dupName_7_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(225 downto 225);

    -- dupName_6_data_out_select_x(BITSELECT,8)
    dupName_6_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(224 downto 193);

    -- dupName_5_data_out_select_x(BITSELECT,7)
    dupName_5_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(192 downto 161);

    -- dupName_4_data_out_select_x(BITSELECT,6)
    dupName_4_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(160 downto 160);

    -- dupName_3_data_out_select_x(BITSELECT,5)
    dupName_3_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(159 downto 128);

    -- dupName_2_data_out_select_x(BITSELECT,4)
    dupName_2_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(127 downto 96);

    -- dupName_1_data_out_select_x(BITSELECT,3)
    dupName_1_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(95 downto 64);

    -- dupName_0_data_out_select_x(BITSELECT,2)
    dupName_0_data_out_select_x_b <= loop_capacity_FIFO_out_data_out(63 downto 32);

    -- data_out_select(BITSELECT,37)
    data_out_select_b <= loop_capacity_FIFO_out_data_out(31 downto 0);

    -- bb_conv_B1_stall_region(BLACKBOX,34)
    thebb_conv_B1_stall_region : bb_conv_B1_stall_region
    PORT MAP (
        in_K_conv => in_K_conv,
        in_N_Fin_dim => in_N_Fin_dim,
        in_N_Fin_sq_pad => in_N_Fin_sq_pad,
        in_P_conv => in_P_conv,
        in_a_024 => data_out_select_b,
        in_acl_hw_wg_id18 => dupName_0_data_out_select_x_b,
        in_add138 => dupName_1_data_out_select_x_b,
        in_b_025 => dupName_2_data_out_select_x_b,
        in_barrier_unnamed_conv2_wgs_workgroup_size => in_barrier_unnamed_conv2_wgs_workgroup_size,
        in_barrier_unnamed_conv6_wgs_workgroup_size => in_barrier_unnamed_conv6_wgs_workgroup_size,
        in_c0_exe21 => dupName_3_data_out_select_x_b,
        in_c0_exe33 => dupName_4_data_out_select_x_b,
        in_c1_exe14 => dupName_5_data_out_select_x_b,
        in_c1_exe25 => dupName_6_data_out_select_x_b,
        in_cmp429 => dupName_7_data_out_select_x_b,
        in_conv_out_023 => primWireOut_cast_b,
        in_conv_wt => in_conv_wt,
        in_flush => in_flush,
        in_global_id_012 => dupName_9_data_out_select_x_b,
        in_global_id_114 => dupName_10_data_out_select_x_b,
        in_in_data => in_in_data,
        in_local_id_015 => dupName_11_data_out_select_x_b,
        in_local_id_116 => dupName_12_data_out_select_x_b,
        in_memcoalesce_null_load_02_avm_readdata => in_memcoalesce_null_load_02_avm_readdata,
        in_memcoalesce_null_load_02_avm_readdatavalid => in_memcoalesce_null_load_02_avm_readdatavalid,
        in_memcoalesce_null_load_02_avm_waitrequest => in_memcoalesce_null_load_02_avm_waitrequest,
        in_memcoalesce_null_load_02_avm_writeack => in_memcoalesce_null_load_02_avm_writeack,
        in_memcoalesce_null_load_0_avm_readdata => in_memcoalesce_null_load_0_avm_readdata,
        in_memcoalesce_null_load_0_avm_readdatavalid => in_memcoalesce_null_load_0_avm_readdatavalid,
        in_memcoalesce_null_load_0_avm_waitrequest => in_memcoalesce_null_load_0_avm_waitrequest,
        in_memcoalesce_null_load_0_avm_writeack => in_memcoalesce_null_load_0_avm_writeack,
        in_memdep_19_avm_readdata => in_memdep_19_avm_readdata,
        in_memdep_19_avm_readdatavalid => in_memdep_19_avm_readdatavalid,
        in_memdep_19_avm_waitrequest => in_memdep_19_avm_waitrequest,
        in_memdep_19_avm_writeack => in_memdep_19_avm_writeack,
        in_memdep_avm_readdata => in_memdep_avm_readdata,
        in_memdep_avm_readdatavalid => in_memdep_avm_readdatavalid,
        in_memdep_avm_waitrequest => in_memdep_avm_waitrequest,
        in_memdep_avm_writeack => in_memdep_avm_writeack,
        in_mul387 => dupName_13_data_out_select_x_b,
        in_mul6 => dupName_14_data_out_select_x_b,
        in_stall_in => conv_B1_branch_out_stall_out,
        in_unnamed_conv0_avm_readdata => in_unnamed_conv0_avm_readdata,
        in_unnamed_conv0_avm_readdatavalid => in_unnamed_conv0_avm_readdatavalid,
        in_unnamed_conv0_avm_waitrequest => in_unnamed_conv0_avm_waitrequest,
        in_unnamed_conv0_avm_writeack => in_unnamed_conv0_avm_writeack,
        in_unnamed_conv1_avm_readdata => in_unnamed_conv1_avm_readdata,
        in_unnamed_conv1_avm_readdatavalid => in_unnamed_conv1_avm_readdatavalid,
        in_unnamed_conv1_avm_waitrequest => in_unnamed_conv1_avm_waitrequest,
        in_unnamed_conv1_avm_writeack => in_unnamed_conv1_avm_writeack,
        in_valid_in => loop_capacity_FIFO_out_valid_out,
        in_wgl_0_enter_exit_stall_in => in_wgl_0_enter_exit_stall_in,
        in_wgl_0_enter_exit_valid_in => in_wgl_0_enter_exit_valid_in,
        in_wgl_0_exit_exit_stall_out => in_wgl_0_exit_exit_stall_out,
        in_wgl_0_exit_exit_valid_out => in_wgl_0_exit_exit_valid_out,
        in_wgl_0_wgs_wg_size => in_wgl_0_wgs_wg_size,
        in_wgl_1_enter_exit_stall_in => in_wgl_1_enter_exit_stall_in,
        in_wgl_1_enter_exit_valid_in => in_wgl_1_enter_exit_valid_in,
        in_wgl_1_exit_exit_stall_out => in_wgl_1_exit_exit_stall_out,
        in_wgl_1_exit_exit_valid_out => in_wgl_1_exit_exit_valid_out,
        in_wgl_1_wgs_wg_size => in_wgl_1_wgs_wg_size,
        out_acl_hw_wg_id18 => bb_conv_B1_stall_region_out_acl_hw_wg_id18,
        out_add138 => bb_conv_B1_stall_region_out_add138,
        out_add81 => bb_conv_B1_stall_region_out_add81,
        out_add82 => bb_conv_B1_stall_region_out_add82,
        out_c0_exe21 => bb_conv_B1_stall_region_out_c0_exe21,
        out_c0_exe33 => bb_conv_B1_stall_region_out_c0_exe33,
        out_c1_exe1117 => bb_conv_B1_stall_region_out_c1_exe1117,
        out_c1_exe14 => bb_conv_B1_stall_region_out_c1_exe14,
        out_c1_exe25 => bb_conv_B1_stall_region_out_c1_exe25,
        out_cmp429 => bb_conv_B1_stall_region_out_cmp429,
        out_cmp_GUARD => bb_conv_B1_stall_region_out_cmp_GUARD,
        out_global_id_012 => bb_conv_B1_stall_region_out_global_id_012,
        out_global_id_114 => bb_conv_B1_stall_region_out_global_id_114,
        out_local_id_015 => bb_conv_B1_stall_region_out_local_id_015,
        out_local_id_116 => bb_conv_B1_stall_region_out_local_id_116,
        out_memcoalesce_null_load_02_avm_address => bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_address,
        out_memcoalesce_null_load_02_avm_burstcount => bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_burstcount,
        out_memcoalesce_null_load_02_avm_byteenable => bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_byteenable,
        out_memcoalesce_null_load_02_avm_enable => bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_enable,
        out_memcoalesce_null_load_02_avm_read => bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_read,
        out_memcoalesce_null_load_02_avm_write => bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_write,
        out_memcoalesce_null_load_02_avm_writedata => bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_writedata,
        out_memcoalesce_null_load_0_avm_address => bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_address,
        out_memcoalesce_null_load_0_avm_burstcount => bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_burstcount,
        out_memcoalesce_null_load_0_avm_byteenable => bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_byteenable,
        out_memcoalesce_null_load_0_avm_enable => bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_enable,
        out_memcoalesce_null_load_0_avm_read => bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_read,
        out_memcoalesce_null_load_0_avm_write => bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_write,
        out_memcoalesce_null_load_0_avm_writedata => bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_writedata,
        out_memdep_19_avm_address => bb_conv_B1_stall_region_out_memdep_19_avm_address,
        out_memdep_19_avm_burstcount => bb_conv_B1_stall_region_out_memdep_19_avm_burstcount,
        out_memdep_19_avm_byteenable => bb_conv_B1_stall_region_out_memdep_19_avm_byteenable,
        out_memdep_19_avm_enable => bb_conv_B1_stall_region_out_memdep_19_avm_enable,
        out_memdep_19_avm_read => bb_conv_B1_stall_region_out_memdep_19_avm_read,
        out_memdep_19_avm_write => bb_conv_B1_stall_region_out_memdep_19_avm_write,
        out_memdep_19_avm_writedata => bb_conv_B1_stall_region_out_memdep_19_avm_writedata,
        out_memdep_avm_address => bb_conv_B1_stall_region_out_memdep_avm_address,
        out_memdep_avm_burstcount => bb_conv_B1_stall_region_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => bb_conv_B1_stall_region_out_memdep_avm_byteenable,
        out_memdep_avm_enable => bb_conv_B1_stall_region_out_memdep_avm_enable,
        out_memdep_avm_read => bb_conv_B1_stall_region_out_memdep_avm_read,
        out_memdep_avm_write => bb_conv_B1_stall_region_out_memdep_avm_write,
        out_memdep_avm_writedata => bb_conv_B1_stall_region_out_memdep_avm_writedata,
        out_mul387 => bb_conv_B1_stall_region_out_mul387,
        out_mul6 => bb_conv_B1_stall_region_out_mul6,
        out_stall_out => bb_conv_B1_stall_region_out_stall_out,
        out_unnamed_conv0_avm_address => bb_conv_B1_stall_region_out_unnamed_conv0_avm_address,
        out_unnamed_conv0_avm_burstcount => bb_conv_B1_stall_region_out_unnamed_conv0_avm_burstcount,
        out_unnamed_conv0_avm_byteenable => bb_conv_B1_stall_region_out_unnamed_conv0_avm_byteenable,
        out_unnamed_conv0_avm_enable => bb_conv_B1_stall_region_out_unnamed_conv0_avm_enable,
        out_unnamed_conv0_avm_read => bb_conv_B1_stall_region_out_unnamed_conv0_avm_read,
        out_unnamed_conv0_avm_write => bb_conv_B1_stall_region_out_unnamed_conv0_avm_write,
        out_unnamed_conv0_avm_writedata => bb_conv_B1_stall_region_out_unnamed_conv0_avm_writedata,
        out_unnamed_conv1_avm_address => bb_conv_B1_stall_region_out_unnamed_conv1_avm_address,
        out_unnamed_conv1_avm_burstcount => bb_conv_B1_stall_region_out_unnamed_conv1_avm_burstcount,
        out_unnamed_conv1_avm_byteenable => bb_conv_B1_stall_region_out_unnamed_conv1_avm_byteenable,
        out_unnamed_conv1_avm_enable => bb_conv_B1_stall_region_out_unnamed_conv1_avm_enable,
        out_unnamed_conv1_avm_read => bb_conv_B1_stall_region_out_unnamed_conv1_avm_read,
        out_unnamed_conv1_avm_write => bb_conv_B1_stall_region_out_unnamed_conv1_avm_write,
        out_unnamed_conv1_avm_writedata => bb_conv_B1_stall_region_out_unnamed_conv1_avm_writedata,
        out_valid_out => bb_conv_B1_stall_region_out_valid_out,
        out_wgl_0_enter_exit_stall_out => bb_conv_B1_stall_region_out_wgl_0_enter_exit_stall_out,
        out_wgl_0_enter_exit_valid_out => bb_conv_B1_stall_region_out_wgl_0_enter_exit_valid_out,
        out_wgl_0_exit_exit_stall_in => bb_conv_B1_stall_region_out_wgl_0_exit_exit_stall_in,
        out_wgl_0_exit_exit_valid_in => bb_conv_B1_stall_region_out_wgl_0_exit_exit_valid_in,
        out_wgl_1_enter_exit_stall_out => bb_conv_B1_stall_region_out_wgl_1_enter_exit_stall_out,
        out_wgl_1_enter_exit_valid_out => bb_conv_B1_stall_region_out_wgl_1_enter_exit_valid_out,
        out_wgl_1_exit_exit_stall_in => bb_conv_B1_stall_region_out_wgl_1_exit_exit_stall_in,
        out_wgl_1_exit_exit_valid_in => bb_conv_B1_stall_region_out_wgl_1_exit_exit_valid_in,
        clock => clock,
        resetn => resetn
    );

    -- conv_B1_branch(BLACKBOX,35)
    theconv_B1_branch : conv_B1_branch
    PORT MAP (
        in_acl_hw_wg_id18 => bb_conv_B1_stall_region_out_acl_hw_wg_id18,
        in_add138 => bb_conv_B1_stall_region_out_add138,
        in_add81 => bb_conv_B1_stall_region_out_add81,
        in_add82 => bb_conv_B1_stall_region_out_add82,
        in_c0_exe21 => bb_conv_B1_stall_region_out_c0_exe21,
        in_c0_exe33 => bb_conv_B1_stall_region_out_c0_exe33,
        in_c1_exe1117 => bb_conv_B1_stall_region_out_c1_exe1117,
        in_c1_exe14 => bb_conv_B1_stall_region_out_c1_exe14,
        in_c1_exe25 => bb_conv_B1_stall_region_out_c1_exe25,
        in_cmp429 => bb_conv_B1_stall_region_out_cmp429,
        in_cmp_GUARD => bb_conv_B1_stall_region_out_cmp_GUARD,
        in_global_id_012 => bb_conv_B1_stall_region_out_global_id_012,
        in_global_id_114 => bb_conv_B1_stall_region_out_global_id_114,
        in_local_id_015 => bb_conv_B1_stall_region_out_local_id_015,
        in_local_id_116 => bb_conv_B1_stall_region_out_local_id_116,
        in_mul387 => bb_conv_B1_stall_region_out_mul387,
        in_mul6 => bb_conv_B1_stall_region_out_mul6,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_conv_B1_stall_region_out_valid_out,
        out_acl_hw_wg_id18 => conv_B1_branch_out_acl_hw_wg_id18,
        out_add138 => conv_B1_branch_out_add138,
        out_add81 => conv_B1_branch_out_add81,
        out_add82 => conv_B1_branch_out_add82,
        out_c0_exe21 => conv_B1_branch_out_c0_exe21,
        out_c0_exe33 => conv_B1_branch_out_c0_exe33,
        out_c1_exe1117 => conv_B1_branch_out_c1_exe1117,
        out_c1_exe14 => conv_B1_branch_out_c1_exe14,
        out_c1_exe25 => conv_B1_branch_out_c1_exe25,
        out_cmp429 => conv_B1_branch_out_cmp429,
        out_global_id_012 => conv_B1_branch_out_global_id_012,
        out_global_id_114 => conv_B1_branch_out_global_id_114,
        out_local_id_015 => conv_B1_branch_out_local_id_015,
        out_local_id_116 => conv_B1_branch_out_local_id_116,
        out_mul387 => conv_B1_branch_out_mul387,
        out_mul6 => conv_B1_branch_out_mul6,
        out_stall_out => conv_B1_branch_out_stall_out,
        out_valid_out_0 => conv_B1_branch_out_valid_out_0,
        out_valid_out_1 => conv_B1_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_acl_hw_wg_id18(GPOUT,121)
    out_acl_hw_wg_id18 <= conv_B1_branch_out_acl_hw_wg_id18;

    -- out_add138(GPOUT,122)
    out_add138 <= conv_B1_branch_out_add138;

    -- out_add81(GPOUT,123)
    out_add81 <= conv_B1_branch_out_add81;

    -- out_add82(GPOUT,124)
    out_add82 <= conv_B1_branch_out_add82;

    -- out_c0_exe21(GPOUT,125)
    out_c0_exe21 <= conv_B1_branch_out_c0_exe21;

    -- out_c0_exe33(GPOUT,126)
    out_c0_exe33 <= conv_B1_branch_out_c0_exe33;

    -- out_c1_exe1117(GPOUT,127)
    out_c1_exe1117 <= conv_B1_branch_out_c1_exe1117;

    -- out_c1_exe14(GPOUT,128)
    out_c1_exe14 <= conv_B1_branch_out_c1_exe14;

    -- out_c1_exe25(GPOUT,129)
    out_c1_exe25 <= conv_B1_branch_out_c1_exe25;

    -- out_cmp429(GPOUT,130)
    out_cmp429 <= conv_B1_branch_out_cmp429;

    -- out_global_id_012(GPOUT,131)
    out_global_id_012 <= conv_B1_branch_out_global_id_012;

    -- out_global_id_114(GPOUT,132)
    out_global_id_114 <= conv_B1_branch_out_global_id_114;

    -- out_local_id_015(GPOUT,133)
    out_local_id_015 <= conv_B1_branch_out_local_id_015;

    -- out_local_id_116(GPOUT,134)
    out_local_id_116 <= conv_B1_branch_out_local_id_116;

    -- out_memcoalesce_null_load_02_avm_address(GPOUT,135)
    out_memcoalesce_null_load_02_avm_address <= bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_address;

    -- out_memcoalesce_null_load_02_avm_burstcount(GPOUT,136)
    out_memcoalesce_null_load_02_avm_burstcount <= bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_burstcount;

    -- out_memcoalesce_null_load_02_avm_byteenable(GPOUT,137)
    out_memcoalesce_null_load_02_avm_byteenable <= bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_byteenable;

    -- out_memcoalesce_null_load_02_avm_enable(GPOUT,138)
    out_memcoalesce_null_load_02_avm_enable <= bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_enable;

    -- out_memcoalesce_null_load_02_avm_read(GPOUT,139)
    out_memcoalesce_null_load_02_avm_read <= bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_read;

    -- out_memcoalesce_null_load_02_avm_write(GPOUT,140)
    out_memcoalesce_null_load_02_avm_write <= bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_write;

    -- out_memcoalesce_null_load_02_avm_writedata(GPOUT,141)
    out_memcoalesce_null_load_02_avm_writedata <= bb_conv_B1_stall_region_out_memcoalesce_null_load_02_avm_writedata;

    -- out_memcoalesce_null_load_0_avm_address(GPOUT,142)
    out_memcoalesce_null_load_0_avm_address <= bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_address;

    -- out_memcoalesce_null_load_0_avm_burstcount(GPOUT,143)
    out_memcoalesce_null_load_0_avm_burstcount <= bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_burstcount;

    -- out_memcoalesce_null_load_0_avm_byteenable(GPOUT,144)
    out_memcoalesce_null_load_0_avm_byteenable <= bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_byteenable;

    -- out_memcoalesce_null_load_0_avm_enable(GPOUT,145)
    out_memcoalesce_null_load_0_avm_enable <= bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_enable;

    -- out_memcoalesce_null_load_0_avm_read(GPOUT,146)
    out_memcoalesce_null_load_0_avm_read <= bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_read;

    -- out_memcoalesce_null_load_0_avm_write(GPOUT,147)
    out_memcoalesce_null_load_0_avm_write <= bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_write;

    -- out_memcoalesce_null_load_0_avm_writedata(GPOUT,148)
    out_memcoalesce_null_load_0_avm_writedata <= bb_conv_B1_stall_region_out_memcoalesce_null_load_0_avm_writedata;

    -- out_memdep_19_avm_address(GPOUT,149)
    out_memdep_19_avm_address <= bb_conv_B1_stall_region_out_memdep_19_avm_address;

    -- out_memdep_19_avm_burstcount(GPOUT,150)
    out_memdep_19_avm_burstcount <= bb_conv_B1_stall_region_out_memdep_19_avm_burstcount;

    -- out_memdep_19_avm_byteenable(GPOUT,151)
    out_memdep_19_avm_byteenable <= bb_conv_B1_stall_region_out_memdep_19_avm_byteenable;

    -- out_memdep_19_avm_enable(GPOUT,152)
    out_memdep_19_avm_enable <= bb_conv_B1_stall_region_out_memdep_19_avm_enable;

    -- out_memdep_19_avm_read(GPOUT,153)
    out_memdep_19_avm_read <= bb_conv_B1_stall_region_out_memdep_19_avm_read;

    -- out_memdep_19_avm_write(GPOUT,154)
    out_memdep_19_avm_write <= bb_conv_B1_stall_region_out_memdep_19_avm_write;

    -- out_memdep_19_avm_writedata(GPOUT,155)
    out_memdep_19_avm_writedata <= bb_conv_B1_stall_region_out_memdep_19_avm_writedata;

    -- out_memdep_avm_address(GPOUT,156)
    out_memdep_avm_address <= bb_conv_B1_stall_region_out_memdep_avm_address;

    -- out_memdep_avm_burstcount(GPOUT,157)
    out_memdep_avm_burstcount <= bb_conv_B1_stall_region_out_memdep_avm_burstcount;

    -- out_memdep_avm_byteenable(GPOUT,158)
    out_memdep_avm_byteenable <= bb_conv_B1_stall_region_out_memdep_avm_byteenable;

    -- out_memdep_avm_enable(GPOUT,159)
    out_memdep_avm_enable <= bb_conv_B1_stall_region_out_memdep_avm_enable;

    -- out_memdep_avm_read(GPOUT,160)
    out_memdep_avm_read <= bb_conv_B1_stall_region_out_memdep_avm_read;

    -- out_memdep_avm_write(GPOUT,161)
    out_memdep_avm_write <= bb_conv_B1_stall_region_out_memdep_avm_write;

    -- out_memdep_avm_writedata(GPOUT,162)
    out_memdep_avm_writedata <= bb_conv_B1_stall_region_out_memdep_avm_writedata;

    -- out_mul387(GPOUT,163)
    out_mul387 <= conv_B1_branch_out_mul387;

    -- out_mul6(GPOUT,164)
    out_mul6 <= conv_B1_branch_out_mul6;

    -- out_stall_out_0(GPOUT,165)
    out_stall_out_0 <= conv_B1_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,166)
    out_stall_out_1 <= conv_B1_merge_out_stall_out_1;

    -- out_unnamed_conv0_avm_address(GPOUT,167)
    out_unnamed_conv0_avm_address <= bb_conv_B1_stall_region_out_unnamed_conv0_avm_address;

    -- out_unnamed_conv0_avm_burstcount(GPOUT,168)
    out_unnamed_conv0_avm_burstcount <= bb_conv_B1_stall_region_out_unnamed_conv0_avm_burstcount;

    -- out_unnamed_conv0_avm_byteenable(GPOUT,169)
    out_unnamed_conv0_avm_byteenable <= bb_conv_B1_stall_region_out_unnamed_conv0_avm_byteenable;

    -- out_unnamed_conv0_avm_enable(GPOUT,170)
    out_unnamed_conv0_avm_enable <= bb_conv_B1_stall_region_out_unnamed_conv0_avm_enable;

    -- out_unnamed_conv0_avm_read(GPOUT,171)
    out_unnamed_conv0_avm_read <= bb_conv_B1_stall_region_out_unnamed_conv0_avm_read;

    -- out_unnamed_conv0_avm_write(GPOUT,172)
    out_unnamed_conv0_avm_write <= bb_conv_B1_stall_region_out_unnamed_conv0_avm_write;

    -- out_unnamed_conv0_avm_writedata(GPOUT,173)
    out_unnamed_conv0_avm_writedata <= bb_conv_B1_stall_region_out_unnamed_conv0_avm_writedata;

    -- out_unnamed_conv1_avm_address(GPOUT,174)
    out_unnamed_conv1_avm_address <= bb_conv_B1_stall_region_out_unnamed_conv1_avm_address;

    -- out_unnamed_conv1_avm_burstcount(GPOUT,175)
    out_unnamed_conv1_avm_burstcount <= bb_conv_B1_stall_region_out_unnamed_conv1_avm_burstcount;

    -- out_unnamed_conv1_avm_byteenable(GPOUT,176)
    out_unnamed_conv1_avm_byteenable <= bb_conv_B1_stall_region_out_unnamed_conv1_avm_byteenable;

    -- out_unnamed_conv1_avm_enable(GPOUT,177)
    out_unnamed_conv1_avm_enable <= bb_conv_B1_stall_region_out_unnamed_conv1_avm_enable;

    -- out_unnamed_conv1_avm_read(GPOUT,178)
    out_unnamed_conv1_avm_read <= bb_conv_B1_stall_region_out_unnamed_conv1_avm_read;

    -- out_unnamed_conv1_avm_write(GPOUT,179)
    out_unnamed_conv1_avm_write <= bb_conv_B1_stall_region_out_unnamed_conv1_avm_write;

    -- out_unnamed_conv1_avm_writedata(GPOUT,180)
    out_unnamed_conv1_avm_writedata <= bb_conv_B1_stall_region_out_unnamed_conv1_avm_writedata;

    -- out_valid_out_0(GPOUT,181)
    out_valid_out_0 <= conv_B1_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,182)
    out_valid_out_1 <= conv_B1_branch_out_valid_out_1;

    -- out_wgl_0_enter_exit_stall_out(GPOUT,183)
    out_wgl_0_enter_exit_stall_out <= bb_conv_B1_stall_region_out_wgl_0_enter_exit_stall_out;

    -- out_wgl_0_enter_exit_valid_out(GPOUT,184)
    out_wgl_0_enter_exit_valid_out <= bb_conv_B1_stall_region_out_wgl_0_enter_exit_valid_out;

    -- out_wgl_0_exit_exit_stall_in(GPOUT,185)
    out_wgl_0_exit_exit_stall_in <= bb_conv_B1_stall_region_out_wgl_0_exit_exit_stall_in;

    -- out_wgl_0_exit_exit_valid_in(GPOUT,186)
    out_wgl_0_exit_exit_valid_in <= bb_conv_B1_stall_region_out_wgl_0_exit_exit_valid_in;

    -- out_wgl_1_enter_exit_stall_out(GPOUT,187)
    out_wgl_1_enter_exit_stall_out <= bb_conv_B1_stall_region_out_wgl_1_enter_exit_stall_out;

    -- out_wgl_1_enter_exit_valid_out(GPOUT,188)
    out_wgl_1_enter_exit_valid_out <= bb_conv_B1_stall_region_out_wgl_1_enter_exit_valid_out;

    -- out_wgl_1_exit_exit_stall_in(GPOUT,189)
    out_wgl_1_exit_exit_stall_in <= bb_conv_B1_stall_region_out_wgl_1_exit_exit_stall_in;

    -- out_wgl_1_exit_exit_valid_in(GPOUT,190)
    out_wgl_1_exit_exit_valid_in <= bb_conv_B1_stall_region_out_wgl_1_exit_exit_valid_in;

END normal;
