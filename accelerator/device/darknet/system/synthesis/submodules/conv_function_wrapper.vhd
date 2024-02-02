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

-- VHDL created from conv_function_wrapper
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

entity conv_function_wrapper is
    port (
        avm_memcoalesce_null_load_02_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_memcoalesce_null_load_02_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_02_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_02_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_0_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_memcoalesce_null_load_0_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_0_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_0_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_19_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_memdep_19_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_19_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_19_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_memdep_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv0_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv0_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv0_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv0_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv7_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv7_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv7_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv7_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        clock2x : in std_logic_vector(0 downto 0);  -- ufix1
        global_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        global_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        global_id_2 : in std_logic_vector(31 downto 0);  -- ufix32
        global_offset_0 : in std_logic_vector(31 downto 0);  -- ufix32
        global_offset_1 : in std_logic_vector(31 downto 0);  -- ufix32
        global_offset_2 : in std_logic_vector(31 downto 0);  -- ufix32
        global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        global_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        global_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        group_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        group_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        group_id_2 : in std_logic_vector(31 downto 0);  -- ufix32
        kernel_arguments : in std_logic_vector(447 downto 0);  -- ufix448
        kernel_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        kernel_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        local_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        local_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        local_id_2 : in std_logic_vector(31 downto 0);  -- ufix32
        local_router_hang : in std_logic_vector(0 downto 0);  -- ufix1
        local_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        local_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        local_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        num_groups_0 : in std_logic_vector(31 downto 0);  -- ufix32
        num_groups_1 : in std_logic_vector(31 downto 0);  -- ufix32
        num_groups_2 : in std_logic_vector(31 downto 0);  -- ufix32
        stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        start : in std_logic_vector(0 downto 0);  -- ufix1
        valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        work_dim : in std_logic_vector(31 downto 0);  -- ufix32
        workgroup_size : in std_logic_vector(31 downto 0);  -- ufix32
        avm_memcoalesce_null_load_02_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_memcoalesce_null_load_02_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_02_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_memcoalesce_null_load_02_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_02_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_02_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_02_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_memcoalesce_null_load_0_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_memcoalesce_null_load_0_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_0_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_memcoalesce_null_load_0_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_0_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_0_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memcoalesce_null_load_0_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_memdep_19_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_memdep_19_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_19_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_memdep_19_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_19_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_19_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_19_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_memdep_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_memdep_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_memdep_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv0_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv0_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv0_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv0_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv0_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv0_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv0_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv7_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv7_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv7_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv7_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv7_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv7_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv7_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        clock2x_output : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_lsu_active : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_write_pending : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_function_wrapper;

architecture normal of conv_function_wrapper is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_clock2x_holder is
        port (
            clock2x : in std_logic;
            myout : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_function is
        port (
            in_arg_K_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_N_Fin : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_N_Fin_dim : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_N_Fin_sq_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_N_Fout_dim : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_N_elem : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_P_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_S_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_acl_hw_wg_id : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_conv_wt : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_global_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_id_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_group_id_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_local_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_id_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
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
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_start : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_workgroup_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_acl_hw_wg_id17 : out std_logic_vector(31 downto 0);  -- Fixed Point
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
            out_o_active_unnamed_conv7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Fixed Point
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
            out_unnamed_conv7_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_embedded_workgroup_issuer_dspba is
        generic (
            MAX_SIMULTANEOUS_WORKGROUPS : INTEGER := 10;
            MAX_WORKGROUP_SIZE : INTEGER := 64;
            WORKGROUP_EXIT_ORDER : STRING := "noninterleaved"
        );
        port (
            done_hw_wg_id_in : in std_logic_vector(31 downto 0);
            global_id_in_0 : in std_logic_vector(31 downto 0);
            global_id_in_1 : in std_logic_vector(31 downto 0);
            global_id_in_2 : in std_logic_vector(31 downto 0);
            group_id_in_1 : in std_logic_vector(31 downto 0);
            group_id_in_2 : in std_logic_vector(31 downto 0);
            local_id_in_0 : in std_logic_vector(31 downto 0);
            local_id_in_1 : in std_logic_vector(31 downto 0);
            local_id_in_2 : in std_logic_vector(31 downto 0);
            stall_entry : in std_logic;
            stall_exit : in std_logic;
            valid_exit : in std_logic;
            valid_in : in std_logic;
            workgroup_size : in std_logic_vector(31 downto 0);
            global_id_out_0 : out std_logic_vector(31 downto 0);
            global_id_out_1 : out std_logic_vector(31 downto 0);
            group_id_out_1 : out std_logic_vector(31 downto 0);
            hw_wg_id_out : out std_logic_vector(31 downto 0);
            local_id_out_0 : out std_logic_vector(31 downto 0);
            local_id_out_1 : out std_logic_vector(31 downto 0);
            stall_out : out std_logic;
            valid_entry : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_1_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_2_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_3_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_4_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_5_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_6_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_7_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_8_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_9_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x_bitsignaltemp : std_logic;
    signal acl_clock2x_dummy_consumer_myout : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_myout_bitsignaltemp : std_logic;
    signal arg_K_conv_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_N_Fin_dim_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_N_Fin_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_N_Fin_sq_pad_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_N_Fout_dim_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_N_elem_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_P_conv_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_S_conv_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_conv_wt_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_in_data_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_out_data_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_function_out_acl_hw_wg_id17 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_memcoalesce_null_load_02_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_memcoalesce_null_load_02_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memcoalesce_null_load_02_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_memcoalesce_null_load_02_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memcoalesce_null_load_02_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memcoalesce_null_load_02_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memcoalesce_null_load_02_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv_function_out_memcoalesce_null_load_0_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_memcoalesce_null_load_0_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memcoalesce_null_load_0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_memcoalesce_null_load_0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memcoalesce_null_load_0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memcoalesce_null_load_0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memcoalesce_null_load_0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv_function_out_memdep_19_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_memdep_19_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memdep_19_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_memdep_19_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memdep_19_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memdep_19_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memdep_19_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv_function_out_memdep_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_memdep_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv_function_out_o_active_unnamed_conv7 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_unnamed_conv0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv_function_out_unnamed_conv0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv_function_out_unnamed_conv0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_unnamed_conv0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_unnamed_conv0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_unnamed_conv0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_unnamed_conv0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv_function_out_unnamed_conv1_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv_function_out_unnamed_conv1_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv_function_out_unnamed_conv1_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_unnamed_conv1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_unnamed_conv1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_unnamed_conv1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_unnamed_conv1_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv_function_out_unnamed_conv7_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv_function_out_unnamed_conv7_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv_function_out_unnamed_conv7_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_function_out_unnamed_conv7_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_unnamed_conv7_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_unnamed_conv7_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_function_out_unnamed_conv7_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv_function_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal embedded_issuer_done_hw_wg_id_in : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_global_id_in_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_global_id_in_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_global_id_in_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_group_id_in_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_group_id_in_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_local_id_in_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_local_id_in_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_local_id_in_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal embedded_issuer_stall_entry_bitsignaltemp : std_logic;
    signal embedded_issuer_stall_exit : STD_LOGIC_VECTOR (0 downto 0);
    signal embedded_issuer_stall_exit_bitsignaltemp : std_logic;
    signal embedded_issuer_valid_exit : STD_LOGIC_VECTOR (0 downto 0);
    signal embedded_issuer_valid_exit_bitsignaltemp : std_logic;
    signal embedded_issuer_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal embedded_issuer_valid_in_bitsignaltemp : std_logic;
    signal embedded_issuer_workgroup_size : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_global_id_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_global_id_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_group_id_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_hw_wg_id_out : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_local_id_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_local_id_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal embedded_issuer_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal embedded_issuer_stall_out_bitsignaltemp : std_logic;
    signal embedded_issuer_valid_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal embedded_issuer_valid_entry_bitsignaltemp : std_logic;
    signal ip_dsdk_adapt_cast_b : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- arg_out_data_select(BITSELECT,23)
    arg_out_data_select_b <= kernel_arguments(191 downto 128);

    -- dupName_1_ip_dsdk_adapt_cast_x(BITSELECT,3)
    dupName_1_ip_dsdk_adapt_cast_x_b <= arg_out_data_select_b(63 downto 0);

    -- arg_in_data_select(BITSELECT,22)
    arg_in_data_select_b <= kernel_arguments(63 downto 0);

    -- ip_dsdk_adapt_cast(BITSELECT,86)
    ip_dsdk_adapt_cast_b <= arg_in_data_select_b(63 downto 0);

    -- arg_conv_wt_select(BITSELECT,21)
    arg_conv_wt_select_b <= kernel_arguments(127 downto 64);

    -- dupName_0_ip_dsdk_adapt_cast_x(BITSELECT,2)
    dupName_0_ip_dsdk_adapt_cast_x_b <= arg_conv_wt_select_b(63 downto 0);

    -- embedded_issuer(EXTIFACE,26)
    embedded_issuer_done_hw_wg_id_in <= conv_function_out_acl_hw_wg_id17;
    embedded_issuer_global_id_in_0 <= global_id_0;
    embedded_issuer_global_id_in_1 <= global_id_1;
    embedded_issuer_global_id_in_2 <= conv_function_out_primWireOut;
    embedded_issuer_group_id_in_1 <= group_id_1;
    embedded_issuer_group_id_in_2 <= conv_function_out_primWireOut;
    embedded_issuer_local_id_in_0 <= local_id_0;
    embedded_issuer_local_id_in_1 <= local_id_1;
    embedded_issuer_local_id_in_2 <= conv_function_out_primWireOut;
    embedded_issuer_stall_entry <= conv_function_out_stall_out;
    embedded_issuer_stall_exit <= GND_q;
    embedded_issuer_valid_exit <= conv_function_out_valid_out;
    embedded_issuer_valid_in <= kernel_valid_in;
    embedded_issuer_workgroup_size <= workgroup_size;
    embedded_issuer_stall_entry_bitsignaltemp <= embedded_issuer_stall_entry(0);
    embedded_issuer_stall_exit_bitsignaltemp <= embedded_issuer_stall_exit(0);
    embedded_issuer_valid_exit_bitsignaltemp <= embedded_issuer_valid_exit(0);
    embedded_issuer_valid_in_bitsignaltemp <= embedded_issuer_valid_in(0);
    embedded_issuer_stall_out(0) <= embedded_issuer_stall_out_bitsignaltemp;
    embedded_issuer_valid_entry(0) <= embedded_issuer_valid_entry_bitsignaltemp;
    theembedded_issuer : acl_embedded_workgroup_issuer_dspba
    GENERIC MAP (
        MAX_SIMULTANEOUS_WORKGROUPS => 10,
        MAX_WORKGROUP_SIZE => 64,
        WORKGROUP_EXIT_ORDER => "noninterleaved"
    )
    PORT MAP (
        done_hw_wg_id_in => conv_function_out_acl_hw_wg_id17,
        global_id_in_0 => global_id_0,
        global_id_in_1 => global_id_1,
        global_id_in_2 => conv_function_out_primWireOut,
        group_id_in_1 => group_id_1,
        group_id_in_2 => conv_function_out_primWireOut,
        local_id_in_0 => local_id_0,
        local_id_in_1 => local_id_1,
        local_id_in_2 => conv_function_out_primWireOut,
        stall_entry => embedded_issuer_stall_entry_bitsignaltemp,
        stall_exit => embedded_issuer_stall_exit_bitsignaltemp,
        valid_exit => embedded_issuer_valid_exit_bitsignaltemp,
        valid_in => embedded_issuer_valid_in_bitsignaltemp,
        workgroup_size => workgroup_size,
        global_id_out_0 => embedded_issuer_global_id_out_0,
        global_id_out_1 => embedded_issuer_global_id_out_1,
        group_id_out_1 => embedded_issuer_group_id_out_1,
        hw_wg_id_out => embedded_issuer_hw_wg_id_out,
        local_id_out_0 => embedded_issuer_local_id_out_0,
        local_id_out_1 => embedded_issuer_local_id_out_1,
        stall_out => embedded_issuer_stall_out_bitsignaltemp,
        valid_entry => embedded_issuer_valid_entry_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- arg_S_conv_select(BITSELECT,20)
    arg_S_conv_select_b <= kernel_arguments(287 downto 256);

    -- dupName_4_ip_dsdk_adapt_cast_x(BITSELECT,6)
    dupName_4_ip_dsdk_adapt_cast_x_b <= arg_S_conv_select_b(31 downto 0);

    -- arg_P_conv_select(BITSELECT,19)
    arg_P_conv_select_b <= kernel_arguments(319 downto 288);

    -- dupName_5_ip_dsdk_adapt_cast_x(BITSELECT,7)
    dupName_5_ip_dsdk_adapt_cast_x_b <= arg_P_conv_select_b(31 downto 0);

    -- arg_N_elem_select(BITSELECT,18)
    arg_N_elem_select_b <= kernel_arguments(223 downto 192);

    -- dupName_2_ip_dsdk_adapt_cast_x(BITSELECT,4)
    dupName_2_ip_dsdk_adapt_cast_x_b <= arg_N_elem_select_b(31 downto 0);

    -- arg_N_Fout_dim_select(BITSELECT,17)
    arg_N_Fout_dim_select_b <= kernel_arguments(447 downto 416);

    -- dupName_9_ip_dsdk_adapt_cast_x(BITSELECT,11)
    dupName_9_ip_dsdk_adapt_cast_x_b <= arg_N_Fout_dim_select_b(31 downto 0);

    -- arg_N_Fin_sq_pad_select(BITSELECT,16)
    arg_N_Fin_sq_pad_select_b <= kernel_arguments(415 downto 384);

    -- dupName_8_ip_dsdk_adapt_cast_x(BITSELECT,10)
    dupName_8_ip_dsdk_adapt_cast_x_b <= arg_N_Fin_sq_pad_select_b(31 downto 0);

    -- arg_N_Fin_dim_select(BITSELECT,14)
    arg_N_Fin_dim_select_b <= kernel_arguments(383 downto 352);

    -- dupName_7_ip_dsdk_adapt_cast_x(BITSELECT,9)
    dupName_7_ip_dsdk_adapt_cast_x_b <= arg_N_Fin_dim_select_b(31 downto 0);

    -- arg_N_Fin_select(BITSELECT,15)
    arg_N_Fin_select_b <= kernel_arguments(351 downto 320);

    -- dupName_6_ip_dsdk_adapt_cast_x(BITSELECT,8)
    dupName_6_ip_dsdk_adapt_cast_x_b <= arg_N_Fin_select_b(31 downto 0);

    -- arg_K_conv_select(BITSELECT,13)
    arg_K_conv_select_b <= kernel_arguments(255 downto 224);

    -- dupName_3_ip_dsdk_adapt_cast_x(BITSELECT,5)
    dupName_3_ip_dsdk_adapt_cast_x_b <= arg_K_conv_select_b(31 downto 0);

    -- conv_function(BLACKBOX,25)
    theconv_function : conv_function
    PORT MAP (
        in_arg_K_conv => dupName_3_ip_dsdk_adapt_cast_x_b,
        in_arg_N_Fin => dupName_6_ip_dsdk_adapt_cast_x_b,
        in_arg_N_Fin_dim => dupName_7_ip_dsdk_adapt_cast_x_b,
        in_arg_N_Fin_sq_pad => dupName_8_ip_dsdk_adapt_cast_x_b,
        in_arg_N_Fout_dim => dupName_9_ip_dsdk_adapt_cast_x_b,
        in_arg_N_elem => dupName_2_ip_dsdk_adapt_cast_x_b,
        in_arg_P_conv => dupName_5_ip_dsdk_adapt_cast_x_b,
        in_arg_S_conv => dupName_4_ip_dsdk_adapt_cast_x_b,
        in_arg_acl_hw_wg_id => embedded_issuer_hw_wg_id_out,
        in_arg_conv_wt => dupName_0_ip_dsdk_adapt_cast_x_b,
        in_arg_global_id_0 => embedded_issuer_global_id_out_0,
        in_arg_global_id_1 => embedded_issuer_global_id_out_1,
        in_arg_global_size_0 => global_size_0,
        in_arg_global_size_1 => global_size_1,
        in_arg_global_size_2 => global_size_2,
        in_arg_group_id_1 => embedded_issuer_group_id_out_1,
        in_arg_in_data => ip_dsdk_adapt_cast_b,
        in_arg_local_id_0 => embedded_issuer_local_id_out_0,
        in_arg_local_id_1 => embedded_issuer_local_id_out_1,
        in_arg_local_size_0 => local_size_0,
        in_arg_local_size_1 => local_size_1,
        in_arg_local_size_2 => local_size_2,
        in_arg_out_data => dupName_1_ip_dsdk_adapt_cast_x_b,
        in_memcoalesce_null_load_02_avm_readdata => avm_memcoalesce_null_load_02_readdata,
        in_memcoalesce_null_load_02_avm_readdatavalid => avm_memcoalesce_null_load_02_readdatavalid,
        in_memcoalesce_null_load_02_avm_waitrequest => avm_memcoalesce_null_load_02_waitrequest,
        in_memcoalesce_null_load_02_avm_writeack => avm_memcoalesce_null_load_02_writeack,
        in_memcoalesce_null_load_0_avm_readdata => avm_memcoalesce_null_load_0_readdata,
        in_memcoalesce_null_load_0_avm_readdatavalid => avm_memcoalesce_null_load_0_readdatavalid,
        in_memcoalesce_null_load_0_avm_waitrequest => avm_memcoalesce_null_load_0_waitrequest,
        in_memcoalesce_null_load_0_avm_writeack => avm_memcoalesce_null_load_0_writeack,
        in_memdep_19_avm_readdata => avm_memdep_19_readdata,
        in_memdep_19_avm_readdatavalid => avm_memdep_19_readdatavalid,
        in_memdep_19_avm_waitrequest => avm_memdep_19_waitrequest,
        in_memdep_19_avm_writeack => avm_memdep_19_writeack,
        in_memdep_avm_readdata => avm_memdep_readdata,
        in_memdep_avm_readdatavalid => avm_memdep_readdatavalid,
        in_memdep_avm_waitrequest => avm_memdep_waitrequest,
        in_memdep_avm_writeack => avm_memdep_writeack,
        in_stall_in => GND_q,
        in_start => start,
        in_unnamed_conv0_avm_readdata => avm_unnamed_conv0_readdata,
        in_unnamed_conv0_avm_readdatavalid => avm_unnamed_conv0_readdatavalid,
        in_unnamed_conv0_avm_waitrequest => avm_unnamed_conv0_waitrequest,
        in_unnamed_conv0_avm_writeack => avm_unnamed_conv0_writeack,
        in_unnamed_conv1_avm_readdata => avm_unnamed_conv1_readdata,
        in_unnamed_conv1_avm_readdatavalid => avm_unnamed_conv1_readdatavalid,
        in_unnamed_conv1_avm_waitrequest => avm_unnamed_conv1_waitrequest,
        in_unnamed_conv1_avm_writeack => avm_unnamed_conv1_writeack,
        in_unnamed_conv7_avm_readdata => avm_unnamed_conv7_readdata,
        in_unnamed_conv7_avm_readdatavalid => avm_unnamed_conv7_readdatavalid,
        in_unnamed_conv7_avm_waitrequest => avm_unnamed_conv7_waitrequest,
        in_unnamed_conv7_avm_writeack => avm_unnamed_conv7_writeack,
        in_valid_in => embedded_issuer_valid_entry,
        in_workgroup_size => workgroup_size,
        out_acl_hw_wg_id17 => conv_function_out_acl_hw_wg_id17,
        out_memcoalesce_null_load_02_avm_address => conv_function_out_memcoalesce_null_load_02_avm_address,
        out_memcoalesce_null_load_02_avm_burstcount => conv_function_out_memcoalesce_null_load_02_avm_burstcount,
        out_memcoalesce_null_load_02_avm_byteenable => conv_function_out_memcoalesce_null_load_02_avm_byteenable,
        out_memcoalesce_null_load_02_avm_enable => conv_function_out_memcoalesce_null_load_02_avm_enable,
        out_memcoalesce_null_load_02_avm_read => conv_function_out_memcoalesce_null_load_02_avm_read,
        out_memcoalesce_null_load_02_avm_write => conv_function_out_memcoalesce_null_load_02_avm_write,
        out_memcoalesce_null_load_02_avm_writedata => conv_function_out_memcoalesce_null_load_02_avm_writedata,
        out_memcoalesce_null_load_0_avm_address => conv_function_out_memcoalesce_null_load_0_avm_address,
        out_memcoalesce_null_load_0_avm_burstcount => conv_function_out_memcoalesce_null_load_0_avm_burstcount,
        out_memcoalesce_null_load_0_avm_byteenable => conv_function_out_memcoalesce_null_load_0_avm_byteenable,
        out_memcoalesce_null_load_0_avm_enable => conv_function_out_memcoalesce_null_load_0_avm_enable,
        out_memcoalesce_null_load_0_avm_read => conv_function_out_memcoalesce_null_load_0_avm_read,
        out_memcoalesce_null_load_0_avm_write => conv_function_out_memcoalesce_null_load_0_avm_write,
        out_memcoalesce_null_load_0_avm_writedata => conv_function_out_memcoalesce_null_load_0_avm_writedata,
        out_memdep_19_avm_address => conv_function_out_memdep_19_avm_address,
        out_memdep_19_avm_burstcount => conv_function_out_memdep_19_avm_burstcount,
        out_memdep_19_avm_byteenable => conv_function_out_memdep_19_avm_byteenable,
        out_memdep_19_avm_enable => conv_function_out_memdep_19_avm_enable,
        out_memdep_19_avm_read => conv_function_out_memdep_19_avm_read,
        out_memdep_19_avm_write => conv_function_out_memdep_19_avm_write,
        out_memdep_19_avm_writedata => conv_function_out_memdep_19_avm_writedata,
        out_memdep_avm_address => conv_function_out_memdep_avm_address,
        out_memdep_avm_burstcount => conv_function_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => conv_function_out_memdep_avm_byteenable,
        out_memdep_avm_enable => conv_function_out_memdep_avm_enable,
        out_memdep_avm_read => conv_function_out_memdep_avm_read,
        out_memdep_avm_write => conv_function_out_memdep_avm_write,
        out_memdep_avm_writedata => conv_function_out_memdep_avm_writedata,
        out_o_active_unnamed_conv7 => conv_function_out_o_active_unnamed_conv7,
        out_primWireOut => conv_function_out_primWireOut,
        out_stall_out => conv_function_out_stall_out,
        out_unnamed_conv0_avm_address => conv_function_out_unnamed_conv0_avm_address,
        out_unnamed_conv0_avm_burstcount => conv_function_out_unnamed_conv0_avm_burstcount,
        out_unnamed_conv0_avm_byteenable => conv_function_out_unnamed_conv0_avm_byteenable,
        out_unnamed_conv0_avm_enable => conv_function_out_unnamed_conv0_avm_enable,
        out_unnamed_conv0_avm_read => conv_function_out_unnamed_conv0_avm_read,
        out_unnamed_conv0_avm_write => conv_function_out_unnamed_conv0_avm_write,
        out_unnamed_conv0_avm_writedata => conv_function_out_unnamed_conv0_avm_writedata,
        out_unnamed_conv1_avm_address => conv_function_out_unnamed_conv1_avm_address,
        out_unnamed_conv1_avm_burstcount => conv_function_out_unnamed_conv1_avm_burstcount,
        out_unnamed_conv1_avm_byteenable => conv_function_out_unnamed_conv1_avm_byteenable,
        out_unnamed_conv1_avm_enable => conv_function_out_unnamed_conv1_avm_enable,
        out_unnamed_conv1_avm_read => conv_function_out_unnamed_conv1_avm_read,
        out_unnamed_conv1_avm_write => conv_function_out_unnamed_conv1_avm_write,
        out_unnamed_conv1_avm_writedata => conv_function_out_unnamed_conv1_avm_writedata,
        out_unnamed_conv7_avm_address => conv_function_out_unnamed_conv7_avm_address,
        out_unnamed_conv7_avm_burstcount => conv_function_out_unnamed_conv7_avm_burstcount,
        out_unnamed_conv7_avm_byteenable => conv_function_out_unnamed_conv7_avm_byteenable,
        out_unnamed_conv7_avm_enable => conv_function_out_unnamed_conv7_avm_enable,
        out_unnamed_conv7_avm_read => conv_function_out_unnamed_conv7_avm_read,
        out_unnamed_conv7_avm_write => conv_function_out_unnamed_conv7_avm_write,
        out_unnamed_conv7_avm_writedata => conv_function_out_unnamed_conv7_avm_writedata,
        out_valid_out => conv_function_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- avm_memcoalesce_null_load_02_address(GPOUT,87)
    avm_memcoalesce_null_load_02_address <= conv_function_out_memcoalesce_null_load_02_avm_address;

    -- avm_memcoalesce_null_load_02_burstcount(GPOUT,88)
    avm_memcoalesce_null_load_02_burstcount <= conv_function_out_memcoalesce_null_load_02_avm_burstcount;

    -- avm_memcoalesce_null_load_02_byteenable(GPOUT,89)
    avm_memcoalesce_null_load_02_byteenable <= conv_function_out_memcoalesce_null_load_02_avm_byteenable;

    -- avm_memcoalesce_null_load_02_enable(GPOUT,90)
    avm_memcoalesce_null_load_02_enable <= conv_function_out_memcoalesce_null_load_02_avm_enable;

    -- avm_memcoalesce_null_load_02_read(GPOUT,91)
    avm_memcoalesce_null_load_02_read <= conv_function_out_memcoalesce_null_load_02_avm_read;

    -- avm_memcoalesce_null_load_02_write(GPOUT,92)
    avm_memcoalesce_null_load_02_write <= conv_function_out_memcoalesce_null_load_02_avm_write;

    -- avm_memcoalesce_null_load_02_writedata(GPOUT,93)
    avm_memcoalesce_null_load_02_writedata <= conv_function_out_memcoalesce_null_load_02_avm_writedata;

    -- avm_memcoalesce_null_load_0_address(GPOUT,94)
    avm_memcoalesce_null_load_0_address <= conv_function_out_memcoalesce_null_load_0_avm_address;

    -- avm_memcoalesce_null_load_0_burstcount(GPOUT,95)
    avm_memcoalesce_null_load_0_burstcount <= conv_function_out_memcoalesce_null_load_0_avm_burstcount;

    -- avm_memcoalesce_null_load_0_byteenable(GPOUT,96)
    avm_memcoalesce_null_load_0_byteenable <= conv_function_out_memcoalesce_null_load_0_avm_byteenable;

    -- avm_memcoalesce_null_load_0_enable(GPOUT,97)
    avm_memcoalesce_null_load_0_enable <= conv_function_out_memcoalesce_null_load_0_avm_enable;

    -- avm_memcoalesce_null_load_0_read(GPOUT,98)
    avm_memcoalesce_null_load_0_read <= conv_function_out_memcoalesce_null_load_0_avm_read;

    -- avm_memcoalesce_null_load_0_write(GPOUT,99)
    avm_memcoalesce_null_load_0_write <= conv_function_out_memcoalesce_null_load_0_avm_write;

    -- avm_memcoalesce_null_load_0_writedata(GPOUT,100)
    avm_memcoalesce_null_load_0_writedata <= conv_function_out_memcoalesce_null_load_0_avm_writedata;

    -- avm_memdep_19_address(GPOUT,101)
    avm_memdep_19_address <= conv_function_out_memdep_19_avm_address;

    -- avm_memdep_19_burstcount(GPOUT,102)
    avm_memdep_19_burstcount <= conv_function_out_memdep_19_avm_burstcount;

    -- avm_memdep_19_byteenable(GPOUT,103)
    avm_memdep_19_byteenable <= conv_function_out_memdep_19_avm_byteenable;

    -- avm_memdep_19_enable(GPOUT,104)
    avm_memdep_19_enable <= conv_function_out_memdep_19_avm_enable;

    -- avm_memdep_19_read(GPOUT,105)
    avm_memdep_19_read <= conv_function_out_memdep_19_avm_read;

    -- avm_memdep_19_write(GPOUT,106)
    avm_memdep_19_write <= conv_function_out_memdep_19_avm_write;

    -- avm_memdep_19_writedata(GPOUT,107)
    avm_memdep_19_writedata <= conv_function_out_memdep_19_avm_writedata;

    -- avm_memdep_address(GPOUT,108)
    avm_memdep_address <= conv_function_out_memdep_avm_address;

    -- avm_memdep_burstcount(GPOUT,109)
    avm_memdep_burstcount <= conv_function_out_memdep_avm_burstcount;

    -- avm_memdep_byteenable(GPOUT,110)
    avm_memdep_byteenable <= conv_function_out_memdep_avm_byteenable;

    -- avm_memdep_enable(GPOUT,111)
    avm_memdep_enable <= conv_function_out_memdep_avm_enable;

    -- avm_memdep_read(GPOUT,112)
    avm_memdep_read <= conv_function_out_memdep_avm_read;

    -- avm_memdep_write(GPOUT,113)
    avm_memdep_write <= conv_function_out_memdep_avm_write;

    -- avm_memdep_writedata(GPOUT,114)
    avm_memdep_writedata <= conv_function_out_memdep_avm_writedata;

    -- avm_unnamed_conv0_address(GPOUT,115)
    avm_unnamed_conv0_address <= conv_function_out_unnamed_conv0_avm_address;

    -- avm_unnamed_conv0_burstcount(GPOUT,116)
    avm_unnamed_conv0_burstcount <= conv_function_out_unnamed_conv0_avm_burstcount;

    -- avm_unnamed_conv0_byteenable(GPOUT,117)
    avm_unnamed_conv0_byteenable <= conv_function_out_unnamed_conv0_avm_byteenable;

    -- avm_unnamed_conv0_enable(GPOUT,118)
    avm_unnamed_conv0_enable <= conv_function_out_unnamed_conv0_avm_enable;

    -- avm_unnamed_conv0_read(GPOUT,119)
    avm_unnamed_conv0_read <= conv_function_out_unnamed_conv0_avm_read;

    -- avm_unnamed_conv0_write(GPOUT,120)
    avm_unnamed_conv0_write <= conv_function_out_unnamed_conv0_avm_write;

    -- avm_unnamed_conv0_writedata(GPOUT,121)
    avm_unnamed_conv0_writedata <= conv_function_out_unnamed_conv0_avm_writedata;

    -- avm_unnamed_conv1_address(GPOUT,122)
    avm_unnamed_conv1_address <= conv_function_out_unnamed_conv1_avm_address;

    -- avm_unnamed_conv1_burstcount(GPOUT,123)
    avm_unnamed_conv1_burstcount <= conv_function_out_unnamed_conv1_avm_burstcount;

    -- avm_unnamed_conv1_byteenable(GPOUT,124)
    avm_unnamed_conv1_byteenable <= conv_function_out_unnamed_conv1_avm_byteenable;

    -- avm_unnamed_conv1_enable(GPOUT,125)
    avm_unnamed_conv1_enable <= conv_function_out_unnamed_conv1_avm_enable;

    -- avm_unnamed_conv1_read(GPOUT,126)
    avm_unnamed_conv1_read <= conv_function_out_unnamed_conv1_avm_read;

    -- avm_unnamed_conv1_write(GPOUT,127)
    avm_unnamed_conv1_write <= conv_function_out_unnamed_conv1_avm_write;

    -- avm_unnamed_conv1_writedata(GPOUT,128)
    avm_unnamed_conv1_writedata <= conv_function_out_unnamed_conv1_avm_writedata;

    -- avm_unnamed_conv7_address(GPOUT,129)
    avm_unnamed_conv7_address <= conv_function_out_unnamed_conv7_avm_address;

    -- avm_unnamed_conv7_burstcount(GPOUT,130)
    avm_unnamed_conv7_burstcount <= conv_function_out_unnamed_conv7_avm_burstcount;

    -- avm_unnamed_conv7_byteenable(GPOUT,131)
    avm_unnamed_conv7_byteenable <= conv_function_out_unnamed_conv7_avm_byteenable;

    -- avm_unnamed_conv7_enable(GPOUT,132)
    avm_unnamed_conv7_enable <= conv_function_out_unnamed_conv7_avm_enable;

    -- avm_unnamed_conv7_read(GPOUT,133)
    avm_unnamed_conv7_read <= conv_function_out_unnamed_conv7_avm_read;

    -- avm_unnamed_conv7_write(GPOUT,134)
    avm_unnamed_conv7_write <= conv_function_out_unnamed_conv7_avm_write;

    -- avm_unnamed_conv7_writedata(GPOUT,135)
    avm_unnamed_conv7_writedata <= conv_function_out_unnamed_conv7_avm_writedata;

    -- acl_clock2x_dummy_consumer(EXTIFACE,12)
    acl_clock2x_dummy_consumer_clock2x <= clock2x;
    acl_clock2x_dummy_consumer_clock2x_bitsignaltemp <= acl_clock2x_dummy_consumer_clock2x(0);
    acl_clock2x_dummy_consumer_myout(0) <= acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    theacl_clock2x_dummy_consumer : acl_clock2x_holder
    PORT MAP (
        clock2x => acl_clock2x_dummy_consumer_clock2x_bitsignaltemp,
        myout => acl_clock2x_dummy_consumer_myout_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- clock2x_output(GPOUT,136)
    clock2x_output <= acl_clock2x_dummy_consumer_myout;

    -- has_a_lsu_active(GPOUT,137)
    has_a_lsu_active <= conv_function_out_o_active_unnamed_conv7;

    -- has_a_write_pending(GPOUT,138)
    has_a_write_pending <= conv_function_out_o_active_unnamed_conv7;

    -- kernel_stall_out(GPOUT,139)
    kernel_stall_out <= embedded_issuer_stall_out;

    -- kernel_valid_out(GPOUT,140)
    kernel_valid_out <= conv_function_out_valid_out;

END normal;
