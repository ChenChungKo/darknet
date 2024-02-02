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

-- VHDL created from conv_function
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

entity conv_function is
    port (
        in_arg_K_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_N_Fin : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_N_Fin_dim : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_N_Fin_sq_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_N_Fout_dim : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_N_elem : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_P_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_S_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_acl_hw_wg_id : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_conv_wt : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_global_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_group_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_local_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_out_data : in std_logic_vector(63 downto 0);  -- ufix64
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
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_start : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv7_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv7_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv7_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv7_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_workgroup_size : in std_logic_vector(31 downto 0);  -- ufix32
        out_acl_hw_wg_id17 : out std_logic_vector(31 downto 0);  -- ufix32
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
        out_o_active_unnamed_conv7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_primWireOut : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
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
        out_unnamed_conv7_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv7_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv7_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv7_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_function;

architecture normal of conv_function is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv_B1_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_15 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_15 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_B1_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_15 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_15 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_B2_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_B0 is
        port (
            in_K_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fin : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fin_dim : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fin_sq_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fout_dim : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_elem : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_P_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_S_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_acl_hw_wg_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_conv_wt : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_global_id_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_group_id_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_local_id_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_add13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_global_id_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_global_id_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul38 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_B1 is
        port (
            in_K_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fin_dim : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fin_sq_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_P_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_a_024_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_a_024_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_acl_hw_wg_id18_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_acl_hw_wg_id18_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add138_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add138_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_b_025_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_b_025_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_barrier_unnamed_conv2_wgs_workgroup_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_barrier_unnamed_conv6_wgs_workgroup_size : in std_logic_vector(31 downto 0);  -- Fixed Point
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
            in_conv_wt : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_encoder_conv_B1_merge_priority_encoder_workgroup_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_global_id_012_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_012_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_114_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_114_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_local_id_015_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_015_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_116_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_116_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
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
            in_mul387_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul387_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul6_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul6_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
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


    component bb_conv_B2 is
        port (
            in_acl_hw_wg_id17_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe32_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe111710_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_global_id_011_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_113_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id17 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv7_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component loop_limiter_conv0 is
        port (
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_data_15 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_data_15 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B2_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B2_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B2_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B2_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B0_out_acl_hw_wg_id : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_add13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_c0_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_c0_exe2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_c0_exe3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B0_out_c1_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_c1_exe2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_cmp42 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B0_out_global_id_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_global_id_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_local_id_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_local_id_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_mul : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_mul38 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B0_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_acl_hw_wg_id18 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_add138 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_add81 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_add82 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_c0_exe21 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_c0_exe33 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_c1_exe1117 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_c1_exe14 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_c1_exe25 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_cmp429 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_global_id_012 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_global_id_114 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_local_id_015 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_local_id_116 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_02_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_02_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_02_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_02_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_02_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_02_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_02_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_0_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_0_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memcoalesce_null_load_0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_out_memdep_19_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_memdep_19_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memdep_19_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_memdep_19_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memdep_19_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memdep_19_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memdep_19_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_out_memdep_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_memdep_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_out_mul387 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_mul6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_unnamed_conv0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv_B1_out_unnamed_conv0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv_B1_out_unnamed_conv0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_unnamed_conv0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_unnamed_conv0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_unnamed_conv0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_unnamed_conv0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_out_unnamed_conv1_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv_B1_out_unnamed_conv1_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv_B1_out_unnamed_conv1_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B1_out_unnamed_conv1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_unnamed_conv1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_unnamed_conv1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_unnamed_conv1_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B1_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_wgl_0_enter_exit_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_wgl_0_enter_exit_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_wgl_0_exit_exit_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_wgl_0_exit_exit_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_wgl_1_enter_exit_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_wgl_1_enter_exit_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_wgl_1_exit_exit_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B1_out_wgl_1_exit_exit_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_out_acl_hw_wg_id17 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B2_out_lsu_unnamed_conv7_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_out_unnamed_conv7_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv_B2_out_unnamed_conv7_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv_B2_out_unnamed_conv7_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B2_out_unnamed_conv7_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_out_unnamed_conv7_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_out_unnamed_conv7_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_out_unnamed_conv7_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B2_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_float_0_000000e_00_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal loop_limiter_conv0_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv0_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- loop_limiter_conv0(BLACKBOX,66)
    theloop_limiter_conv0 : loop_limiter_conv0
    PORT MAP (
        in_i_stall => bb_conv_B1_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv_B2_sr_0_aunroll_x_out_o_stall,
        in_i_valid => bb_conv_B0_out_valid_out_0,
        in_i_valid_exit => bb_conv_B1_out_valid_out_0,
        out_o_stall => loop_limiter_conv0_out_o_stall,
        out_o_valid => loop_limiter_conv0_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- c_float_0_000000e_00(FLOATCONSTANT,8)
    c_float_0_000000e_00_q <= "00000000000000000000000000000000";

    -- bb_conv_B0(BLACKBOX,5)
    thebb_conv_B0 : bb_conv_B0
    PORT MAP (
        in_K_conv => in_arg_K_conv,
        in_N_Fin => in_arg_N_Fin,
        in_N_Fin_dim => in_arg_N_Fin_dim,
        in_N_Fin_sq_pad => in_arg_N_Fin_sq_pad,
        in_N_Fout_dim => in_arg_N_Fout_dim,
        in_N_elem => in_arg_N_elem,
        in_P_conv => in_arg_P_conv,
        in_S_conv => in_arg_S_conv,
        in_acl_hw_wg_id_0 => in_arg_acl_hw_wg_id,
        in_conv_wt => in_arg_conv_wt,
        in_global_id_0_0 => in_arg_global_id_0,
        in_global_id_1_0 => in_arg_global_id_1,
        in_global_size_0 => in_arg_global_size_0,
        in_group_id_1_0 => in_arg_group_id_1,
        in_in_data => in_arg_in_data,
        in_local_id_0_0 => in_arg_local_id_0,
        in_local_id_1_0 => in_arg_local_id_1,
        in_out_data => in_arg_out_data,
        in_stall_in_0 => loop_limiter_conv0_out_o_stall,
        in_valid_in_0 => in_valid_in,
        out_acl_hw_wg_id => bb_conv_B0_out_acl_hw_wg_id,
        out_add13 => bb_conv_B0_out_add13,
        out_c0_exe1 => bb_conv_B0_out_c0_exe1,
        out_c0_exe2 => bb_conv_B0_out_c0_exe2,
        out_c0_exe3 => bb_conv_B0_out_c0_exe3,
        out_c1_exe1 => bb_conv_B0_out_c1_exe1,
        out_c1_exe2 => bb_conv_B0_out_c1_exe2,
        out_cmp42 => bb_conv_B0_out_cmp42,
        out_global_id_0 => bb_conv_B0_out_global_id_0,
        out_global_id_1 => bb_conv_B0_out_global_id_1,
        out_local_id_0 => bb_conv_B0_out_local_id_0,
        out_local_id_1 => bb_conv_B0_out_local_id_1,
        out_mul => bb_conv_B0_out_mul,
        out_mul38 => bb_conv_B0_out_mul38,
        out_stall_out_0 => bb_conv_B0_out_stall_out_0,
        out_valid_out_0 => bb_conv_B0_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,9)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- bb_conv_B1_sr_1_aunroll_x(BLACKBOX,3)
    thebb_conv_B1_sr_1_aunroll_x : bb_conv_B1_sr_1
    PORT MAP (
        in_i_data_0 => c_i32_0gr_q,
        in_i_data_1 => bb_conv_B0_out_c0_exe1,
        in_i_data_2 => c_float_0_000000e_00_q,
        in_i_data_3 => bb_conv_B0_out_c0_exe2,
        in_i_data_4 => bb_conv_B0_out_c0_exe3,
        in_i_data_5 => bb_conv_B0_out_c1_exe1,
        in_i_data_6 => bb_conv_B0_out_c1_exe2,
        in_i_data_7 => bb_conv_B0_out_mul,
        in_i_data_8 => bb_conv_B0_out_mul38,
        in_i_data_9 => bb_conv_B0_out_add13,
        in_i_data_10 => bb_conv_B0_out_cmp42,
        in_i_data_11 => bb_conv_B0_out_global_id_0,
        in_i_data_12 => bb_conv_B0_out_global_id_1,
        in_i_data_13 => bb_conv_B0_out_local_id_0,
        in_i_data_14 => bb_conv_B0_out_local_id_1,
        in_i_data_15 => bb_conv_B0_out_acl_hw_wg_id,
        in_i_stall => bb_conv_B1_out_stall_out_1,
        in_i_valid => loop_limiter_conv0_out_o_valid,
        out_o_data_0 => bb_conv_B1_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_B1_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_B1_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_B1_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv_B1_sr_1_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv_B1_sr_1_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv_B1_sr_1_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv_B1_sr_1_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv_B1_sr_1_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv_B1_sr_1_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv_B1_sr_1_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv_B1_sr_1_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv_B1_sr_1_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_conv_B1_sr_1_aunroll_x_out_o_data_14,
        out_o_data_15 => bb_conv_B1_sr_1_aunroll_x_out_o_data_15,
        out_o_stall => bb_conv_B1_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_B1_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_B1_sr_0_aunroll_x(BLACKBOX,2)
    thebb_conv_B1_sr_0_aunroll_x : bb_conv_B1_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv_B1_out_add82,
        in_i_data_1 => bb_conv_B1_out_add81,
        in_i_data_2 => bb_conv_B1_out_c1_exe1117,
        in_i_data_3 => bb_conv_B1_out_c0_exe21,
        in_i_data_4 => bb_conv_B1_out_c0_exe33,
        in_i_data_5 => bb_conv_B1_out_c1_exe14,
        in_i_data_6 => bb_conv_B1_out_c1_exe25,
        in_i_data_7 => bb_conv_B1_out_mul6,
        in_i_data_8 => bb_conv_B1_out_mul387,
        in_i_data_9 => bb_conv_B1_out_add138,
        in_i_data_10 => bb_conv_B1_out_cmp429,
        in_i_data_11 => bb_conv_B1_out_global_id_012,
        in_i_data_12 => bb_conv_B1_out_global_id_114,
        in_i_data_13 => bb_conv_B1_out_local_id_015,
        in_i_data_14 => bb_conv_B1_out_local_id_116,
        in_i_data_15 => bb_conv_B1_out_acl_hw_wg_id18,
        in_i_stall => bb_conv_B1_out_stall_out_0,
        in_i_valid => bb_conv_B1_out_valid_out_1,
        out_o_data_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_B1_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_B1_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_B1_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_B1_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv_B1_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv_B1_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv_B1_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv_B1_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv_B1_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv_B1_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv_B1_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv_B1_sr_0_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv_B1_sr_0_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_conv_B1_sr_0_aunroll_x_out_o_data_14,
        out_o_data_15 => bb_conv_B1_sr_0_aunroll_x_out_o_data_15,
        out_o_stall => bb_conv_B1_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_B1_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_B1(BLACKBOX,6)
    thebb_conv_B1 : bb_conv_B1
    PORT MAP (
        in_K_conv => in_arg_K_conv,
        in_N_Fin_dim => in_arg_N_Fin_dim,
        in_N_Fin_sq_pad => in_arg_N_Fin_sq_pad,
        in_P_conv => in_arg_P_conv,
        in_a_024_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_1,
        in_a_024_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_1,
        in_acl_hw_wg_id18_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_15,
        in_acl_hw_wg_id18_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_15,
        in_add138_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_9,
        in_add138_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_9,
        in_b_025_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_0,
        in_b_025_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_0,
        in_barrier_unnamed_conv2_wgs_workgroup_size => in_workgroup_size,
        in_barrier_unnamed_conv6_wgs_workgroup_size => in_workgroup_size,
        in_c0_exe21_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_3,
        in_c0_exe21_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_3,
        in_c0_exe33_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_4,
        in_c0_exe33_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_4,
        in_c1_exe14_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_5,
        in_c1_exe14_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_5,
        in_c1_exe25_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_6,
        in_c1_exe25_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_6,
        in_cmp429_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_10,
        in_cmp429_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_10,
        in_conv_out_023_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_2,
        in_conv_out_023_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_2,
        in_conv_wt => in_arg_conv_wt,
        in_encoder_conv_B1_merge_priority_encoder_workgroup_size => in_workgroup_size,
        in_flush => in_start,
        in_global_id_012_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_11,
        in_global_id_012_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_11,
        in_global_id_114_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_12,
        in_global_id_114_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_12,
        in_global_size_0 => in_arg_global_size_0,
        in_in_data => in_arg_in_data,
        in_local_id_015_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_13,
        in_local_id_015_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_13,
        in_local_id_116_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_14,
        in_local_id_116_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_14,
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
        in_mul387_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_8,
        in_mul387_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_8,
        in_mul6_0 => bb_conv_B1_sr_0_aunroll_x_out_o_data_7,
        in_mul6_1 => bb_conv_B1_sr_1_aunroll_x_out_o_data_7,
        in_out_data => in_arg_out_data,
        in_stall_in_0 => bb_conv_B2_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => bb_conv_B1_sr_0_aunroll_x_out_o_stall,
        in_unnamed_conv0_avm_readdata => in_unnamed_conv0_avm_readdata,
        in_unnamed_conv0_avm_readdatavalid => in_unnamed_conv0_avm_readdatavalid,
        in_unnamed_conv0_avm_waitrequest => in_unnamed_conv0_avm_waitrequest,
        in_unnamed_conv0_avm_writeack => in_unnamed_conv0_avm_writeack,
        in_unnamed_conv1_avm_readdata => in_unnamed_conv1_avm_readdata,
        in_unnamed_conv1_avm_readdatavalid => in_unnamed_conv1_avm_readdatavalid,
        in_unnamed_conv1_avm_waitrequest => in_unnamed_conv1_avm_waitrequest,
        in_unnamed_conv1_avm_writeack => in_unnamed_conv1_avm_writeack,
        in_valid_in_0 => bb_conv_B1_sr_0_aunroll_x_out_o_valid,
        in_valid_in_1 => bb_conv_B1_sr_1_aunroll_x_out_o_valid,
        in_wgl_0_enter_exit_stall_in => bb_conv_B1_out_wgl_0_exit_exit_stall_in,
        in_wgl_0_enter_exit_valid_in => bb_conv_B1_out_wgl_0_exit_exit_valid_in,
        in_wgl_0_exit_exit_stall_out => bb_conv_B1_out_wgl_0_enter_exit_stall_out,
        in_wgl_0_exit_exit_valid_out => bb_conv_B1_out_wgl_0_enter_exit_valid_out,
        in_wgl_0_wgs_wg_size => in_workgroup_size,
        in_wgl_1_enter_exit_stall_in => bb_conv_B1_out_wgl_1_exit_exit_stall_in,
        in_wgl_1_enter_exit_valid_in => bb_conv_B1_out_wgl_1_exit_exit_valid_in,
        in_wgl_1_exit_exit_stall_out => bb_conv_B1_out_wgl_1_enter_exit_stall_out,
        in_wgl_1_exit_exit_valid_out => bb_conv_B1_out_wgl_1_enter_exit_valid_out,
        in_wgl_1_wgs_wg_size => in_workgroup_size,
        out_acl_hw_wg_id18 => bb_conv_B1_out_acl_hw_wg_id18,
        out_add138 => bb_conv_B1_out_add138,
        out_add81 => bb_conv_B1_out_add81,
        out_add82 => bb_conv_B1_out_add82,
        out_c0_exe21 => bb_conv_B1_out_c0_exe21,
        out_c0_exe33 => bb_conv_B1_out_c0_exe33,
        out_c1_exe1117 => bb_conv_B1_out_c1_exe1117,
        out_c1_exe14 => bb_conv_B1_out_c1_exe14,
        out_c1_exe25 => bb_conv_B1_out_c1_exe25,
        out_cmp429 => bb_conv_B1_out_cmp429,
        out_global_id_012 => bb_conv_B1_out_global_id_012,
        out_global_id_114 => bb_conv_B1_out_global_id_114,
        out_local_id_015 => bb_conv_B1_out_local_id_015,
        out_local_id_116 => bb_conv_B1_out_local_id_116,
        out_memcoalesce_null_load_02_avm_address => bb_conv_B1_out_memcoalesce_null_load_02_avm_address,
        out_memcoalesce_null_load_02_avm_burstcount => bb_conv_B1_out_memcoalesce_null_load_02_avm_burstcount,
        out_memcoalesce_null_load_02_avm_byteenable => bb_conv_B1_out_memcoalesce_null_load_02_avm_byteenable,
        out_memcoalesce_null_load_02_avm_enable => bb_conv_B1_out_memcoalesce_null_load_02_avm_enable,
        out_memcoalesce_null_load_02_avm_read => bb_conv_B1_out_memcoalesce_null_load_02_avm_read,
        out_memcoalesce_null_load_02_avm_write => bb_conv_B1_out_memcoalesce_null_load_02_avm_write,
        out_memcoalesce_null_load_02_avm_writedata => bb_conv_B1_out_memcoalesce_null_load_02_avm_writedata,
        out_memcoalesce_null_load_0_avm_address => bb_conv_B1_out_memcoalesce_null_load_0_avm_address,
        out_memcoalesce_null_load_0_avm_burstcount => bb_conv_B1_out_memcoalesce_null_load_0_avm_burstcount,
        out_memcoalesce_null_load_0_avm_byteenable => bb_conv_B1_out_memcoalesce_null_load_0_avm_byteenable,
        out_memcoalesce_null_load_0_avm_enable => bb_conv_B1_out_memcoalesce_null_load_0_avm_enable,
        out_memcoalesce_null_load_0_avm_read => bb_conv_B1_out_memcoalesce_null_load_0_avm_read,
        out_memcoalesce_null_load_0_avm_write => bb_conv_B1_out_memcoalesce_null_load_0_avm_write,
        out_memcoalesce_null_load_0_avm_writedata => bb_conv_B1_out_memcoalesce_null_load_0_avm_writedata,
        out_memdep_19_avm_address => bb_conv_B1_out_memdep_19_avm_address,
        out_memdep_19_avm_burstcount => bb_conv_B1_out_memdep_19_avm_burstcount,
        out_memdep_19_avm_byteenable => bb_conv_B1_out_memdep_19_avm_byteenable,
        out_memdep_19_avm_enable => bb_conv_B1_out_memdep_19_avm_enable,
        out_memdep_19_avm_read => bb_conv_B1_out_memdep_19_avm_read,
        out_memdep_19_avm_write => bb_conv_B1_out_memdep_19_avm_write,
        out_memdep_19_avm_writedata => bb_conv_B1_out_memdep_19_avm_writedata,
        out_memdep_avm_address => bb_conv_B1_out_memdep_avm_address,
        out_memdep_avm_burstcount => bb_conv_B1_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => bb_conv_B1_out_memdep_avm_byteenable,
        out_memdep_avm_enable => bb_conv_B1_out_memdep_avm_enable,
        out_memdep_avm_read => bb_conv_B1_out_memdep_avm_read,
        out_memdep_avm_write => bb_conv_B1_out_memdep_avm_write,
        out_memdep_avm_writedata => bb_conv_B1_out_memdep_avm_writedata,
        out_mul387 => bb_conv_B1_out_mul387,
        out_mul6 => bb_conv_B1_out_mul6,
        out_stall_out_0 => bb_conv_B1_out_stall_out_0,
        out_stall_out_1 => bb_conv_B1_out_stall_out_1,
        out_unnamed_conv0_avm_address => bb_conv_B1_out_unnamed_conv0_avm_address,
        out_unnamed_conv0_avm_burstcount => bb_conv_B1_out_unnamed_conv0_avm_burstcount,
        out_unnamed_conv0_avm_byteenable => bb_conv_B1_out_unnamed_conv0_avm_byteenable,
        out_unnamed_conv0_avm_enable => bb_conv_B1_out_unnamed_conv0_avm_enable,
        out_unnamed_conv0_avm_read => bb_conv_B1_out_unnamed_conv0_avm_read,
        out_unnamed_conv0_avm_write => bb_conv_B1_out_unnamed_conv0_avm_write,
        out_unnamed_conv0_avm_writedata => bb_conv_B1_out_unnamed_conv0_avm_writedata,
        out_unnamed_conv1_avm_address => bb_conv_B1_out_unnamed_conv1_avm_address,
        out_unnamed_conv1_avm_burstcount => bb_conv_B1_out_unnamed_conv1_avm_burstcount,
        out_unnamed_conv1_avm_byteenable => bb_conv_B1_out_unnamed_conv1_avm_byteenable,
        out_unnamed_conv1_avm_enable => bb_conv_B1_out_unnamed_conv1_avm_enable,
        out_unnamed_conv1_avm_read => bb_conv_B1_out_unnamed_conv1_avm_read,
        out_unnamed_conv1_avm_write => bb_conv_B1_out_unnamed_conv1_avm_write,
        out_unnamed_conv1_avm_writedata => bb_conv_B1_out_unnamed_conv1_avm_writedata,
        out_valid_out_0 => bb_conv_B1_out_valid_out_0,
        out_valid_out_1 => bb_conv_B1_out_valid_out_1,
        out_wgl_0_enter_exit_stall_out => bb_conv_B1_out_wgl_0_enter_exit_stall_out,
        out_wgl_0_enter_exit_valid_out => bb_conv_B1_out_wgl_0_enter_exit_valid_out,
        out_wgl_0_exit_exit_stall_in => bb_conv_B1_out_wgl_0_exit_exit_stall_in,
        out_wgl_0_exit_exit_valid_in => bb_conv_B1_out_wgl_0_exit_exit_valid_in,
        out_wgl_1_enter_exit_stall_out => bb_conv_B1_out_wgl_1_enter_exit_stall_out,
        out_wgl_1_enter_exit_valid_out => bb_conv_B1_out_wgl_1_enter_exit_valid_out,
        out_wgl_1_exit_exit_stall_in => bb_conv_B1_out_wgl_1_exit_exit_stall_in,
        out_wgl_1_exit_exit_valid_in => bb_conv_B1_out_wgl_1_exit_exit_valid_in,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_B2_sr_0_aunroll_x(BLACKBOX,4)
    thebb_conv_B2_sr_0_aunroll_x : bb_conv_B2_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv_B1_out_c0_exe33,
        in_i_data_1 => bb_conv_B1_out_c1_exe1117,
        in_i_data_2 => bb_conv_B1_out_global_id_012,
        in_i_data_3 => bb_conv_B1_out_global_id_114,
        in_i_data_4 => bb_conv_B1_out_acl_hw_wg_id18,
        in_i_stall => bb_conv_B2_out_stall_out_0,
        in_i_valid => bb_conv_B1_out_valid_out_0,
        out_o_data_0 => bb_conv_B2_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_B2_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_B2_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_B2_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_B2_sr_0_aunroll_x_out_o_data_4,
        out_o_stall => bb_conv_B2_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_B2_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_B2(BLACKBOX,7)
    thebb_conv_B2 : bb_conv_B2
    PORT MAP (
        in_acl_hw_wg_id17_0 => bb_conv_B2_sr_0_aunroll_x_out_o_data_4,
        in_c0_exe32_0 => bb_conv_B2_sr_0_aunroll_x_out_o_data_0,
        in_c1_exe111710_0 => bb_conv_B2_sr_0_aunroll_x_out_o_data_1,
        in_flush => in_start,
        in_global_id_011_0 => bb_conv_B2_sr_0_aunroll_x_out_o_data_2,
        in_global_id_113_0 => bb_conv_B2_sr_0_aunroll_x_out_o_data_3,
        in_global_size_0 => in_arg_global_size_0,
        in_out_data => in_arg_out_data,
        in_stall_in_0 => in_stall_in,
        in_unnamed_conv7_avm_readdata => in_unnamed_conv7_avm_readdata,
        in_unnamed_conv7_avm_readdatavalid => in_unnamed_conv7_avm_readdatavalid,
        in_unnamed_conv7_avm_waitrequest => in_unnamed_conv7_avm_waitrequest,
        in_unnamed_conv7_avm_writeack => in_unnamed_conv7_avm_writeack,
        in_valid_in_0 => bb_conv_B2_sr_0_aunroll_x_out_o_valid,
        out_acl_hw_wg_id17 => bb_conv_B2_out_acl_hw_wg_id17,
        out_lsu_unnamed_conv7_o_active => bb_conv_B2_out_lsu_unnamed_conv7_o_active,
        out_stall_out_0 => bb_conv_B2_out_stall_out_0,
        out_unnamed_conv7_avm_address => bb_conv_B2_out_unnamed_conv7_avm_address,
        out_unnamed_conv7_avm_burstcount => bb_conv_B2_out_unnamed_conv7_avm_burstcount,
        out_unnamed_conv7_avm_byteenable => bb_conv_B2_out_unnamed_conv7_avm_byteenable,
        out_unnamed_conv7_avm_enable => bb_conv_B2_out_unnamed_conv7_avm_enable,
        out_unnamed_conv7_avm_read => bb_conv_B2_out_unnamed_conv7_avm_read,
        out_unnamed_conv7_avm_write => bb_conv_B2_out_unnamed_conv7_avm_write,
        out_unnamed_conv7_avm_writedata => bb_conv_B2_out_unnamed_conv7_avm_writedata,
        out_valid_out_0 => bb_conv_B2_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_acl_hw_wg_id17(GPOUT,67)
    out_acl_hw_wg_id17 <= bb_conv_B2_out_acl_hw_wg_id17;

    -- out_memcoalesce_null_load_02_avm_address(GPOUT,68)
    out_memcoalesce_null_load_02_avm_address <= bb_conv_B1_out_memcoalesce_null_load_02_avm_address;

    -- out_memcoalesce_null_load_02_avm_burstcount(GPOUT,69)
    out_memcoalesce_null_load_02_avm_burstcount <= bb_conv_B1_out_memcoalesce_null_load_02_avm_burstcount;

    -- out_memcoalesce_null_load_02_avm_byteenable(GPOUT,70)
    out_memcoalesce_null_load_02_avm_byteenable <= bb_conv_B1_out_memcoalesce_null_load_02_avm_byteenable;

    -- out_memcoalesce_null_load_02_avm_enable(GPOUT,71)
    out_memcoalesce_null_load_02_avm_enable <= bb_conv_B1_out_memcoalesce_null_load_02_avm_enable;

    -- out_memcoalesce_null_load_02_avm_read(GPOUT,72)
    out_memcoalesce_null_load_02_avm_read <= bb_conv_B1_out_memcoalesce_null_load_02_avm_read;

    -- out_memcoalesce_null_load_02_avm_write(GPOUT,73)
    out_memcoalesce_null_load_02_avm_write <= bb_conv_B1_out_memcoalesce_null_load_02_avm_write;

    -- out_memcoalesce_null_load_02_avm_writedata(GPOUT,74)
    out_memcoalesce_null_load_02_avm_writedata <= bb_conv_B1_out_memcoalesce_null_load_02_avm_writedata;

    -- out_memcoalesce_null_load_0_avm_address(GPOUT,75)
    out_memcoalesce_null_load_0_avm_address <= bb_conv_B1_out_memcoalesce_null_load_0_avm_address;

    -- out_memcoalesce_null_load_0_avm_burstcount(GPOUT,76)
    out_memcoalesce_null_load_0_avm_burstcount <= bb_conv_B1_out_memcoalesce_null_load_0_avm_burstcount;

    -- out_memcoalesce_null_load_0_avm_byteenable(GPOUT,77)
    out_memcoalesce_null_load_0_avm_byteenable <= bb_conv_B1_out_memcoalesce_null_load_0_avm_byteenable;

    -- out_memcoalesce_null_load_0_avm_enable(GPOUT,78)
    out_memcoalesce_null_load_0_avm_enable <= bb_conv_B1_out_memcoalesce_null_load_0_avm_enable;

    -- out_memcoalesce_null_load_0_avm_read(GPOUT,79)
    out_memcoalesce_null_load_0_avm_read <= bb_conv_B1_out_memcoalesce_null_load_0_avm_read;

    -- out_memcoalesce_null_load_0_avm_write(GPOUT,80)
    out_memcoalesce_null_load_0_avm_write <= bb_conv_B1_out_memcoalesce_null_load_0_avm_write;

    -- out_memcoalesce_null_load_0_avm_writedata(GPOUT,81)
    out_memcoalesce_null_load_0_avm_writedata <= bb_conv_B1_out_memcoalesce_null_load_0_avm_writedata;

    -- out_memdep_19_avm_address(GPOUT,82)
    out_memdep_19_avm_address <= bb_conv_B1_out_memdep_19_avm_address;

    -- out_memdep_19_avm_burstcount(GPOUT,83)
    out_memdep_19_avm_burstcount <= bb_conv_B1_out_memdep_19_avm_burstcount;

    -- out_memdep_19_avm_byteenable(GPOUT,84)
    out_memdep_19_avm_byteenable <= bb_conv_B1_out_memdep_19_avm_byteenable;

    -- out_memdep_19_avm_enable(GPOUT,85)
    out_memdep_19_avm_enable <= bb_conv_B1_out_memdep_19_avm_enable;

    -- out_memdep_19_avm_read(GPOUT,86)
    out_memdep_19_avm_read <= bb_conv_B1_out_memdep_19_avm_read;

    -- out_memdep_19_avm_write(GPOUT,87)
    out_memdep_19_avm_write <= bb_conv_B1_out_memdep_19_avm_write;

    -- out_memdep_19_avm_writedata(GPOUT,88)
    out_memdep_19_avm_writedata <= bb_conv_B1_out_memdep_19_avm_writedata;

    -- out_memdep_avm_address(GPOUT,89)
    out_memdep_avm_address <= bb_conv_B1_out_memdep_avm_address;

    -- out_memdep_avm_burstcount(GPOUT,90)
    out_memdep_avm_burstcount <= bb_conv_B1_out_memdep_avm_burstcount;

    -- out_memdep_avm_byteenable(GPOUT,91)
    out_memdep_avm_byteenable <= bb_conv_B1_out_memdep_avm_byteenable;

    -- out_memdep_avm_enable(GPOUT,92)
    out_memdep_avm_enable <= bb_conv_B1_out_memdep_avm_enable;

    -- out_memdep_avm_read(GPOUT,93)
    out_memdep_avm_read <= bb_conv_B1_out_memdep_avm_read;

    -- out_memdep_avm_write(GPOUT,94)
    out_memdep_avm_write <= bb_conv_B1_out_memdep_avm_write;

    -- out_memdep_avm_writedata(GPOUT,95)
    out_memdep_avm_writedata <= bb_conv_B1_out_memdep_avm_writedata;

    -- out_o_active_unnamed_conv7(GPOUT,96)
    out_o_active_unnamed_conv7 <= bb_conv_B2_out_lsu_unnamed_conv7_o_active;

    -- out_primWireOut(GPOUT,97)
    out_primWireOut <= c_i32_0gr_q;

    -- out_stall_out(GPOUT,98)
    out_stall_out <= bb_conv_B0_out_stall_out_0;

    -- out_unnamed_conv0_avm_address(GPOUT,99)
    out_unnamed_conv0_avm_address <= bb_conv_B1_out_unnamed_conv0_avm_address;

    -- out_unnamed_conv0_avm_burstcount(GPOUT,100)
    out_unnamed_conv0_avm_burstcount <= bb_conv_B1_out_unnamed_conv0_avm_burstcount;

    -- out_unnamed_conv0_avm_byteenable(GPOUT,101)
    out_unnamed_conv0_avm_byteenable <= bb_conv_B1_out_unnamed_conv0_avm_byteenable;

    -- out_unnamed_conv0_avm_enable(GPOUT,102)
    out_unnamed_conv0_avm_enable <= bb_conv_B1_out_unnamed_conv0_avm_enable;

    -- out_unnamed_conv0_avm_read(GPOUT,103)
    out_unnamed_conv0_avm_read <= bb_conv_B1_out_unnamed_conv0_avm_read;

    -- out_unnamed_conv0_avm_write(GPOUT,104)
    out_unnamed_conv0_avm_write <= bb_conv_B1_out_unnamed_conv0_avm_write;

    -- out_unnamed_conv0_avm_writedata(GPOUT,105)
    out_unnamed_conv0_avm_writedata <= bb_conv_B1_out_unnamed_conv0_avm_writedata;

    -- out_unnamed_conv1_avm_address(GPOUT,106)
    out_unnamed_conv1_avm_address <= bb_conv_B1_out_unnamed_conv1_avm_address;

    -- out_unnamed_conv1_avm_burstcount(GPOUT,107)
    out_unnamed_conv1_avm_burstcount <= bb_conv_B1_out_unnamed_conv1_avm_burstcount;

    -- out_unnamed_conv1_avm_byteenable(GPOUT,108)
    out_unnamed_conv1_avm_byteenable <= bb_conv_B1_out_unnamed_conv1_avm_byteenable;

    -- out_unnamed_conv1_avm_enable(GPOUT,109)
    out_unnamed_conv1_avm_enable <= bb_conv_B1_out_unnamed_conv1_avm_enable;

    -- out_unnamed_conv1_avm_read(GPOUT,110)
    out_unnamed_conv1_avm_read <= bb_conv_B1_out_unnamed_conv1_avm_read;

    -- out_unnamed_conv1_avm_write(GPOUT,111)
    out_unnamed_conv1_avm_write <= bb_conv_B1_out_unnamed_conv1_avm_write;

    -- out_unnamed_conv1_avm_writedata(GPOUT,112)
    out_unnamed_conv1_avm_writedata <= bb_conv_B1_out_unnamed_conv1_avm_writedata;

    -- out_unnamed_conv7_avm_address(GPOUT,113)
    out_unnamed_conv7_avm_address <= bb_conv_B2_out_unnamed_conv7_avm_address;

    -- out_unnamed_conv7_avm_burstcount(GPOUT,114)
    out_unnamed_conv7_avm_burstcount <= bb_conv_B2_out_unnamed_conv7_avm_burstcount;

    -- out_unnamed_conv7_avm_byteenable(GPOUT,115)
    out_unnamed_conv7_avm_byteenable <= bb_conv_B2_out_unnamed_conv7_avm_byteenable;

    -- out_unnamed_conv7_avm_enable(GPOUT,116)
    out_unnamed_conv7_avm_enable <= bb_conv_B2_out_unnamed_conv7_avm_enable;

    -- out_unnamed_conv7_avm_read(GPOUT,117)
    out_unnamed_conv7_avm_read <= bb_conv_B2_out_unnamed_conv7_avm_read;

    -- out_unnamed_conv7_avm_write(GPOUT,118)
    out_unnamed_conv7_avm_write <= bb_conv_B2_out_unnamed_conv7_avm_write;

    -- out_unnamed_conv7_avm_writedata(GPOUT,119)
    out_unnamed_conv7_avm_writedata <= bb_conv_B2_out_unnamed_conv7_avm_writedata;

    -- out_valid_out(GPOUT,120)
    out_valid_out <= bb_conv_B2_out_valid_out_0;

END normal;
