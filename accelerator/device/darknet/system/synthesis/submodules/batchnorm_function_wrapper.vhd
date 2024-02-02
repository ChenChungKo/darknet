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

-- VHDL created from batchnorm_function_wrapper
-- VHDL created on Wed Nov 29 11:50:02 2023


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

entity batchnorm_function_wrapper is
    port (
        avm_unnamed_batchnorm0_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm0_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm0_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm0_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm1_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm1_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm1_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm1_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm2_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm2_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm2_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm2_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm3_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm3_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm3_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm3_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm4_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm4_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm4_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm4_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm5_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm5_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm5_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm5_writeack : in std_logic_vector(0 downto 0);  -- ufix1
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
        kernel_arguments : in std_logic_vector(479 downto 0);  -- ufix480
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
        avm_unnamed_batchnorm0_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_batchnorm0_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_batchnorm0_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_batchnorm0_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm0_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm0_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm0_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm1_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_batchnorm1_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_batchnorm1_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_batchnorm1_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm1_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm1_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm1_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm2_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_batchnorm2_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_batchnorm2_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_batchnorm2_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm2_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm2_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm2_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm3_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_batchnorm3_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_batchnorm3_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_batchnorm3_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm3_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm3_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm3_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm4_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_batchnorm4_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_batchnorm4_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_batchnorm4_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm4_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm4_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm4_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_batchnorm5_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_batchnorm5_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_batchnorm5_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_batchnorm5_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm5_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm5_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_batchnorm5_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        clock2x_output : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_lsu_active : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_write_pending : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end batchnorm_function_wrapper;

architecture normal of batchnorm_function_wrapper is

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


    component batchnorm_function is
        port (
            in_arg_bn_biases : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_bn_running_mean : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_bn_running_var : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_bn_weights : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_eps : in std_logic_vector(31 downto 0);  -- Floating Point
            in_arg_global_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_id_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_relu_type : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_start : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm1_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm2_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm2_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm3_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm3_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm4_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm4_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm5_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_active_unnamed_batchnorm5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_1_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_2_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_3_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_4_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_5_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_6_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_7_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x_bitsignaltemp : std_logic;
    signal acl_clock2x_dummy_consumer_myout : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_myout_bitsignaltemp : std_logic;
    signal arg_bn_biases_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_bn_running_mean_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_bn_running_var_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_bn_weights_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_eps_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_in_data_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_in_size_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_out_data_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_relu_type_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal batchnorm_function_out_o_active_unnamed_batchnorm5 : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm1_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm1_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm1_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm1_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm2_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm2_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm2_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm2_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm3_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm3_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm3_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm3_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm3_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm3_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm3_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm4_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm4_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm4_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm4_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm4_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm4_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm4_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm5_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm5_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm5_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_function_out_unnamed_batchnorm5_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal batchnorm_function_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal ip_dsdk_adapt_cast_b : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- arg_relu_type_select(BITSELECT,19)
    arg_relu_type_select_b <= kernel_arguments(479 downto 448);

    -- dupName_7_ip_dsdk_adapt_cast_x(BITSELECT,9)
    dupName_7_ip_dsdk_adapt_cast_x_b <= arg_relu_type_select_b(31 downto 0);

    -- arg_out_data_select(BITSELECT,18)
    arg_out_data_select_b <= kernel_arguments(383 downto 320);

    -- dupName_4_ip_dsdk_adapt_cast_x(BITSELECT,6)
    dupName_4_ip_dsdk_adapt_cast_x_b <= arg_out_data_select_b(63 downto 0);

    -- arg_in_size_select(BITSELECT,17)
    arg_in_size_select_b <= kernel_arguments(415 downto 384);

    -- dupName_5_ip_dsdk_adapt_cast_x(BITSELECT,7)
    dupName_5_ip_dsdk_adapt_cast_x_b <= arg_in_size_select_b(31 downto 0);

    -- arg_in_data_select(BITSELECT,16)
    arg_in_data_select_b <= kernel_arguments(63 downto 0);

    -- ip_dsdk_adapt_cast(BITSELECT,77)
    ip_dsdk_adapt_cast_b <= arg_in_data_select_b(63 downto 0);

    -- arg_eps_select(BITSELECT,15)
    arg_eps_select_b <= kernel_arguments(447 downto 416);

    -- dupName_6_ip_dsdk_adapt_cast_x(BITSELECT,8)
    dupName_6_ip_dsdk_adapt_cast_x_b <= arg_eps_select_b(31 downto 0);

    -- arg_bn_weights_select(BITSELECT,14)
    arg_bn_weights_select_b <= kernel_arguments(127 downto 64);

    -- dupName_0_ip_dsdk_adapt_cast_x(BITSELECT,2)
    dupName_0_ip_dsdk_adapt_cast_x_b <= arg_bn_weights_select_b(63 downto 0);

    -- arg_bn_running_var_select(BITSELECT,13)
    arg_bn_running_var_select_b <= kernel_arguments(319 downto 256);

    -- dupName_3_ip_dsdk_adapt_cast_x(BITSELECT,5)
    dupName_3_ip_dsdk_adapt_cast_x_b <= arg_bn_running_var_select_b(63 downto 0);

    -- arg_bn_running_mean_select(BITSELECT,12)
    arg_bn_running_mean_select_b <= kernel_arguments(255 downto 192);

    -- dupName_2_ip_dsdk_adapt_cast_x(BITSELECT,4)
    dupName_2_ip_dsdk_adapt_cast_x_b <= arg_bn_running_mean_select_b(63 downto 0);

    -- arg_bn_biases_select(BITSELECT,11)
    arg_bn_biases_select_b <= kernel_arguments(191 downto 128);

    -- dupName_1_ip_dsdk_adapt_cast_x(BITSELECT,3)
    dupName_1_ip_dsdk_adapt_cast_x_b <= arg_bn_biases_select_b(63 downto 0);

    -- batchnorm_function(BLACKBOX,20)
    thebatchnorm_function : batchnorm_function
    PORT MAP (
        in_arg_bn_biases => dupName_1_ip_dsdk_adapt_cast_x_b,
        in_arg_bn_running_mean => dupName_2_ip_dsdk_adapt_cast_x_b,
        in_arg_bn_running_var => dupName_3_ip_dsdk_adapt_cast_x_b,
        in_arg_bn_weights => dupName_0_ip_dsdk_adapt_cast_x_b,
        in_arg_eps => dupName_6_ip_dsdk_adapt_cast_x_b,
        in_arg_global_id_0 => global_id_0,
        in_arg_global_id_1 => global_id_1,
        in_arg_global_size_0 => global_size_0,
        in_arg_global_size_1 => global_size_1,
        in_arg_global_size_2 => global_size_2,
        in_arg_in_data => ip_dsdk_adapt_cast_b,
        in_arg_in_size => dupName_5_ip_dsdk_adapt_cast_x_b,
        in_arg_local_size_0 => local_size_0,
        in_arg_local_size_1 => local_size_1,
        in_arg_local_size_2 => local_size_2,
        in_arg_out_data => dupName_4_ip_dsdk_adapt_cast_x_b,
        in_arg_relu_type => dupName_7_ip_dsdk_adapt_cast_x_b,
        in_stall_in => GND_q,
        in_start => start,
        in_unnamed_batchnorm0_avm_readdata => avm_unnamed_batchnorm0_readdata,
        in_unnamed_batchnorm0_avm_readdatavalid => avm_unnamed_batchnorm0_readdatavalid,
        in_unnamed_batchnorm0_avm_waitrequest => avm_unnamed_batchnorm0_waitrequest,
        in_unnamed_batchnorm0_avm_writeack => avm_unnamed_batchnorm0_writeack,
        in_unnamed_batchnorm1_avm_readdata => avm_unnamed_batchnorm1_readdata,
        in_unnamed_batchnorm1_avm_readdatavalid => avm_unnamed_batchnorm1_readdatavalid,
        in_unnamed_batchnorm1_avm_waitrequest => avm_unnamed_batchnorm1_waitrequest,
        in_unnamed_batchnorm1_avm_writeack => avm_unnamed_batchnorm1_writeack,
        in_unnamed_batchnorm2_avm_readdata => avm_unnamed_batchnorm2_readdata,
        in_unnamed_batchnorm2_avm_readdatavalid => avm_unnamed_batchnorm2_readdatavalid,
        in_unnamed_batchnorm2_avm_waitrequest => avm_unnamed_batchnorm2_waitrequest,
        in_unnamed_batchnorm2_avm_writeack => avm_unnamed_batchnorm2_writeack,
        in_unnamed_batchnorm3_avm_readdata => avm_unnamed_batchnorm3_readdata,
        in_unnamed_batchnorm3_avm_readdatavalid => avm_unnamed_batchnorm3_readdatavalid,
        in_unnamed_batchnorm3_avm_waitrequest => avm_unnamed_batchnorm3_waitrequest,
        in_unnamed_batchnorm3_avm_writeack => avm_unnamed_batchnorm3_writeack,
        in_unnamed_batchnorm4_avm_readdata => avm_unnamed_batchnorm4_readdata,
        in_unnamed_batchnorm4_avm_readdatavalid => avm_unnamed_batchnorm4_readdatavalid,
        in_unnamed_batchnorm4_avm_waitrequest => avm_unnamed_batchnorm4_waitrequest,
        in_unnamed_batchnorm4_avm_writeack => avm_unnamed_batchnorm4_writeack,
        in_unnamed_batchnorm5_avm_readdata => avm_unnamed_batchnorm5_readdata,
        in_unnamed_batchnorm5_avm_readdatavalid => avm_unnamed_batchnorm5_readdatavalid,
        in_unnamed_batchnorm5_avm_waitrequest => avm_unnamed_batchnorm5_waitrequest,
        in_unnamed_batchnorm5_avm_writeack => avm_unnamed_batchnorm5_writeack,
        in_valid_in => kernel_valid_in,
        out_o_active_unnamed_batchnorm5 => batchnorm_function_out_o_active_unnamed_batchnorm5,
        out_stall_out => batchnorm_function_out_stall_out,
        out_unnamed_batchnorm0_avm_address => batchnorm_function_out_unnamed_batchnorm0_avm_address,
        out_unnamed_batchnorm0_avm_burstcount => batchnorm_function_out_unnamed_batchnorm0_avm_burstcount,
        out_unnamed_batchnorm0_avm_byteenable => batchnorm_function_out_unnamed_batchnorm0_avm_byteenable,
        out_unnamed_batchnorm0_avm_enable => batchnorm_function_out_unnamed_batchnorm0_avm_enable,
        out_unnamed_batchnorm0_avm_read => batchnorm_function_out_unnamed_batchnorm0_avm_read,
        out_unnamed_batchnorm0_avm_write => batchnorm_function_out_unnamed_batchnorm0_avm_write,
        out_unnamed_batchnorm0_avm_writedata => batchnorm_function_out_unnamed_batchnorm0_avm_writedata,
        out_unnamed_batchnorm1_avm_address => batchnorm_function_out_unnamed_batchnorm1_avm_address,
        out_unnamed_batchnorm1_avm_burstcount => batchnorm_function_out_unnamed_batchnorm1_avm_burstcount,
        out_unnamed_batchnorm1_avm_byteenable => batchnorm_function_out_unnamed_batchnorm1_avm_byteenable,
        out_unnamed_batchnorm1_avm_enable => batchnorm_function_out_unnamed_batchnorm1_avm_enable,
        out_unnamed_batchnorm1_avm_read => batchnorm_function_out_unnamed_batchnorm1_avm_read,
        out_unnamed_batchnorm1_avm_write => batchnorm_function_out_unnamed_batchnorm1_avm_write,
        out_unnamed_batchnorm1_avm_writedata => batchnorm_function_out_unnamed_batchnorm1_avm_writedata,
        out_unnamed_batchnorm2_avm_address => batchnorm_function_out_unnamed_batchnorm2_avm_address,
        out_unnamed_batchnorm2_avm_burstcount => batchnorm_function_out_unnamed_batchnorm2_avm_burstcount,
        out_unnamed_batchnorm2_avm_byteenable => batchnorm_function_out_unnamed_batchnorm2_avm_byteenable,
        out_unnamed_batchnorm2_avm_enable => batchnorm_function_out_unnamed_batchnorm2_avm_enable,
        out_unnamed_batchnorm2_avm_read => batchnorm_function_out_unnamed_batchnorm2_avm_read,
        out_unnamed_batchnorm2_avm_write => batchnorm_function_out_unnamed_batchnorm2_avm_write,
        out_unnamed_batchnorm2_avm_writedata => batchnorm_function_out_unnamed_batchnorm2_avm_writedata,
        out_unnamed_batchnorm3_avm_address => batchnorm_function_out_unnamed_batchnorm3_avm_address,
        out_unnamed_batchnorm3_avm_burstcount => batchnorm_function_out_unnamed_batchnorm3_avm_burstcount,
        out_unnamed_batchnorm3_avm_byteenable => batchnorm_function_out_unnamed_batchnorm3_avm_byteenable,
        out_unnamed_batchnorm3_avm_enable => batchnorm_function_out_unnamed_batchnorm3_avm_enable,
        out_unnamed_batchnorm3_avm_read => batchnorm_function_out_unnamed_batchnorm3_avm_read,
        out_unnamed_batchnorm3_avm_write => batchnorm_function_out_unnamed_batchnorm3_avm_write,
        out_unnamed_batchnorm3_avm_writedata => batchnorm_function_out_unnamed_batchnorm3_avm_writedata,
        out_unnamed_batchnorm4_avm_address => batchnorm_function_out_unnamed_batchnorm4_avm_address,
        out_unnamed_batchnorm4_avm_burstcount => batchnorm_function_out_unnamed_batchnorm4_avm_burstcount,
        out_unnamed_batchnorm4_avm_byteenable => batchnorm_function_out_unnamed_batchnorm4_avm_byteenable,
        out_unnamed_batchnorm4_avm_enable => batchnorm_function_out_unnamed_batchnorm4_avm_enable,
        out_unnamed_batchnorm4_avm_read => batchnorm_function_out_unnamed_batchnorm4_avm_read,
        out_unnamed_batchnorm4_avm_write => batchnorm_function_out_unnamed_batchnorm4_avm_write,
        out_unnamed_batchnorm4_avm_writedata => batchnorm_function_out_unnamed_batchnorm4_avm_writedata,
        out_unnamed_batchnorm5_avm_address => batchnorm_function_out_unnamed_batchnorm5_avm_address,
        out_unnamed_batchnorm5_avm_burstcount => batchnorm_function_out_unnamed_batchnorm5_avm_burstcount,
        out_unnamed_batchnorm5_avm_byteenable => batchnorm_function_out_unnamed_batchnorm5_avm_byteenable,
        out_unnamed_batchnorm5_avm_enable => batchnorm_function_out_unnamed_batchnorm5_avm_enable,
        out_unnamed_batchnorm5_avm_read => batchnorm_function_out_unnamed_batchnorm5_avm_read,
        out_unnamed_batchnorm5_avm_write => batchnorm_function_out_unnamed_batchnorm5_avm_write,
        out_unnamed_batchnorm5_avm_writedata => batchnorm_function_out_unnamed_batchnorm5_avm_writedata,
        out_valid_out => batchnorm_function_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- avm_unnamed_batchnorm0_address(GPOUT,78)
    avm_unnamed_batchnorm0_address <= batchnorm_function_out_unnamed_batchnorm0_avm_address;

    -- avm_unnamed_batchnorm0_burstcount(GPOUT,79)
    avm_unnamed_batchnorm0_burstcount <= batchnorm_function_out_unnamed_batchnorm0_avm_burstcount;

    -- avm_unnamed_batchnorm0_byteenable(GPOUT,80)
    avm_unnamed_batchnorm0_byteenable <= batchnorm_function_out_unnamed_batchnorm0_avm_byteenable;

    -- avm_unnamed_batchnorm0_enable(GPOUT,81)
    avm_unnamed_batchnorm0_enable <= batchnorm_function_out_unnamed_batchnorm0_avm_enable;

    -- avm_unnamed_batchnorm0_read(GPOUT,82)
    avm_unnamed_batchnorm0_read <= batchnorm_function_out_unnamed_batchnorm0_avm_read;

    -- avm_unnamed_batchnorm0_write(GPOUT,83)
    avm_unnamed_batchnorm0_write <= batchnorm_function_out_unnamed_batchnorm0_avm_write;

    -- avm_unnamed_batchnorm0_writedata(GPOUT,84)
    avm_unnamed_batchnorm0_writedata <= batchnorm_function_out_unnamed_batchnorm0_avm_writedata;

    -- avm_unnamed_batchnorm1_address(GPOUT,85)
    avm_unnamed_batchnorm1_address <= batchnorm_function_out_unnamed_batchnorm1_avm_address;

    -- avm_unnamed_batchnorm1_burstcount(GPOUT,86)
    avm_unnamed_batchnorm1_burstcount <= batchnorm_function_out_unnamed_batchnorm1_avm_burstcount;

    -- avm_unnamed_batchnorm1_byteenable(GPOUT,87)
    avm_unnamed_batchnorm1_byteenable <= batchnorm_function_out_unnamed_batchnorm1_avm_byteenable;

    -- avm_unnamed_batchnorm1_enable(GPOUT,88)
    avm_unnamed_batchnorm1_enable <= batchnorm_function_out_unnamed_batchnorm1_avm_enable;

    -- avm_unnamed_batchnorm1_read(GPOUT,89)
    avm_unnamed_batchnorm1_read <= batchnorm_function_out_unnamed_batchnorm1_avm_read;

    -- avm_unnamed_batchnorm1_write(GPOUT,90)
    avm_unnamed_batchnorm1_write <= batchnorm_function_out_unnamed_batchnorm1_avm_write;

    -- avm_unnamed_batchnorm1_writedata(GPOUT,91)
    avm_unnamed_batchnorm1_writedata <= batchnorm_function_out_unnamed_batchnorm1_avm_writedata;

    -- avm_unnamed_batchnorm2_address(GPOUT,92)
    avm_unnamed_batchnorm2_address <= batchnorm_function_out_unnamed_batchnorm2_avm_address;

    -- avm_unnamed_batchnorm2_burstcount(GPOUT,93)
    avm_unnamed_batchnorm2_burstcount <= batchnorm_function_out_unnamed_batchnorm2_avm_burstcount;

    -- avm_unnamed_batchnorm2_byteenable(GPOUT,94)
    avm_unnamed_batchnorm2_byteenable <= batchnorm_function_out_unnamed_batchnorm2_avm_byteenable;

    -- avm_unnamed_batchnorm2_enable(GPOUT,95)
    avm_unnamed_batchnorm2_enable <= batchnorm_function_out_unnamed_batchnorm2_avm_enable;

    -- avm_unnamed_batchnorm2_read(GPOUT,96)
    avm_unnamed_batchnorm2_read <= batchnorm_function_out_unnamed_batchnorm2_avm_read;

    -- avm_unnamed_batchnorm2_write(GPOUT,97)
    avm_unnamed_batchnorm2_write <= batchnorm_function_out_unnamed_batchnorm2_avm_write;

    -- avm_unnamed_batchnorm2_writedata(GPOUT,98)
    avm_unnamed_batchnorm2_writedata <= batchnorm_function_out_unnamed_batchnorm2_avm_writedata;

    -- avm_unnamed_batchnorm3_address(GPOUT,99)
    avm_unnamed_batchnorm3_address <= batchnorm_function_out_unnamed_batchnorm3_avm_address;

    -- avm_unnamed_batchnorm3_burstcount(GPOUT,100)
    avm_unnamed_batchnorm3_burstcount <= batchnorm_function_out_unnamed_batchnorm3_avm_burstcount;

    -- avm_unnamed_batchnorm3_byteenable(GPOUT,101)
    avm_unnamed_batchnorm3_byteenable <= batchnorm_function_out_unnamed_batchnorm3_avm_byteenable;

    -- avm_unnamed_batchnorm3_enable(GPOUT,102)
    avm_unnamed_batchnorm3_enable <= batchnorm_function_out_unnamed_batchnorm3_avm_enable;

    -- avm_unnamed_batchnorm3_read(GPOUT,103)
    avm_unnamed_batchnorm3_read <= batchnorm_function_out_unnamed_batchnorm3_avm_read;

    -- avm_unnamed_batchnorm3_write(GPOUT,104)
    avm_unnamed_batchnorm3_write <= batchnorm_function_out_unnamed_batchnorm3_avm_write;

    -- avm_unnamed_batchnorm3_writedata(GPOUT,105)
    avm_unnamed_batchnorm3_writedata <= batchnorm_function_out_unnamed_batchnorm3_avm_writedata;

    -- avm_unnamed_batchnorm4_address(GPOUT,106)
    avm_unnamed_batchnorm4_address <= batchnorm_function_out_unnamed_batchnorm4_avm_address;

    -- avm_unnamed_batchnorm4_burstcount(GPOUT,107)
    avm_unnamed_batchnorm4_burstcount <= batchnorm_function_out_unnamed_batchnorm4_avm_burstcount;

    -- avm_unnamed_batchnorm4_byteenable(GPOUT,108)
    avm_unnamed_batchnorm4_byteenable <= batchnorm_function_out_unnamed_batchnorm4_avm_byteenable;

    -- avm_unnamed_batchnorm4_enable(GPOUT,109)
    avm_unnamed_batchnorm4_enable <= batchnorm_function_out_unnamed_batchnorm4_avm_enable;

    -- avm_unnamed_batchnorm4_read(GPOUT,110)
    avm_unnamed_batchnorm4_read <= batchnorm_function_out_unnamed_batchnorm4_avm_read;

    -- avm_unnamed_batchnorm4_write(GPOUT,111)
    avm_unnamed_batchnorm4_write <= batchnorm_function_out_unnamed_batchnorm4_avm_write;

    -- avm_unnamed_batchnorm4_writedata(GPOUT,112)
    avm_unnamed_batchnorm4_writedata <= batchnorm_function_out_unnamed_batchnorm4_avm_writedata;

    -- avm_unnamed_batchnorm5_address(GPOUT,113)
    avm_unnamed_batchnorm5_address <= batchnorm_function_out_unnamed_batchnorm5_avm_address;

    -- avm_unnamed_batchnorm5_burstcount(GPOUT,114)
    avm_unnamed_batchnorm5_burstcount <= batchnorm_function_out_unnamed_batchnorm5_avm_burstcount;

    -- avm_unnamed_batchnorm5_byteenable(GPOUT,115)
    avm_unnamed_batchnorm5_byteenable <= batchnorm_function_out_unnamed_batchnorm5_avm_byteenable;

    -- avm_unnamed_batchnorm5_enable(GPOUT,116)
    avm_unnamed_batchnorm5_enable <= batchnorm_function_out_unnamed_batchnorm5_avm_enable;

    -- avm_unnamed_batchnorm5_read(GPOUT,117)
    avm_unnamed_batchnorm5_read <= batchnorm_function_out_unnamed_batchnorm5_avm_read;

    -- avm_unnamed_batchnorm5_write(GPOUT,118)
    avm_unnamed_batchnorm5_write <= batchnorm_function_out_unnamed_batchnorm5_avm_write;

    -- avm_unnamed_batchnorm5_writedata(GPOUT,119)
    avm_unnamed_batchnorm5_writedata <= batchnorm_function_out_unnamed_batchnorm5_avm_writedata;

    -- acl_clock2x_dummy_consumer(EXTIFACE,10)
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

    -- clock2x_output(GPOUT,120)
    clock2x_output <= acl_clock2x_dummy_consumer_myout;

    -- has_a_lsu_active(GPOUT,121)
    has_a_lsu_active <= batchnorm_function_out_o_active_unnamed_batchnorm5;

    -- has_a_write_pending(GPOUT,122)
    has_a_write_pending <= batchnorm_function_out_o_active_unnamed_batchnorm5;

    -- kernel_stall_out(GPOUT,123)
    kernel_stall_out <= batchnorm_function_out_stall_out;

    -- kernel_valid_out(GPOUT,124)
    kernel_valid_out <= batchnorm_function_out_valid_out;

END normal;
