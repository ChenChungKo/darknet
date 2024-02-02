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

-- VHDL created from conv1x1_function_wrapper
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

entity conv1x1_function_wrapper is
    port (
        avm_unnamed_conv1x110_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x110_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x110_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x110_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x111_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x111_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x111_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x111_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x113_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x113_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x113_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x113_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x114_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x114_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x114_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x114_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x115_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x115_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x115_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x115_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x11_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x11_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x11_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x11_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x12_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x12_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x12_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x12_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x13_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x13_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x13_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x13_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x15_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x15_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x15_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x15_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x16_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x16_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x16_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x16_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x17_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x17_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x17_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x17_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x19_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x19_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x19_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x19_writeack : in std_logic_vector(0 downto 0);  -- ufix1
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
        kernel_arguments : in std_logic_vector(351 downto 0);  -- ufix352
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
        avm_unnamed_conv1x110_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x110_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x110_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x110_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x110_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x110_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x110_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x111_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x111_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x111_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x111_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x111_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x111_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x111_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x113_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x113_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x113_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x113_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x113_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x113_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x113_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x114_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x114_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x114_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x114_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x114_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x114_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x114_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x115_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x115_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x115_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x115_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x115_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x115_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x115_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x11_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x11_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x11_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x11_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x11_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x11_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x11_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x12_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x12_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x12_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x12_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x12_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x12_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x12_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x13_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x13_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x13_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x13_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x13_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x13_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x13_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x15_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x15_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x15_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x15_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x15_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x15_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x15_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x16_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x16_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x16_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x16_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x16_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x16_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x16_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x17_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x17_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x17_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x17_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x17_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x17_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x17_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv1x19_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv1x19_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv1x19_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv1x19_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x19_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x19_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv1x19_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        clock2x_output : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_lsu_active : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_write_pending : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_function_wrapper;

architecture normal of conv1x1_function_wrapper is

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


    component conv1x1_function is
        port (
            in_arg_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_global_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_id_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_start : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x110_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x110_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x110_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x110_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x113_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x113_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x113_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x113_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x15_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x15_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x15_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x15_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_active_unnamed_conv1x111 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_active_unnamed_conv1x115 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_active_unnamed_conv1x13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_active_unnamed_conv1x17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x15_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x15_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x15_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x15_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x15_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x15_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x15_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x16_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x16_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x16_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x16_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x16_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x16_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x16_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
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
    signal acl_clock2x_dummy_consumer_clock2x : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x_bitsignaltemp : std_logic;
    signal acl_clock2x_dummy_consumer_myout : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_myout_bitsignaltemp : std_logic;
    signal arg_filter_weight_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_input_channels_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_input_im_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_input_size_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_output_im_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_output_size_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_pad_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_stride_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_o_active_unnamed_conv1x111 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_o_active_unnamed_conv1x115 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_o_active_unnamed_conv1x13 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_o_active_unnamed_conv1x17 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x110_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x110_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x110_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x110_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x110_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x110_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x110_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x111_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x111_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x111_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x111_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x111_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x111_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x111_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x113_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x113_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x113_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x113_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x113_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x113_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x113_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x114_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x114_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x114_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x114_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x114_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x114_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x114_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x115_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x115_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x115_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x115_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x115_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x115_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x115_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x11_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x11_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x11_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x11_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x11_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x11_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x11_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x12_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x12_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x12_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x12_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x12_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x12_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x12_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x13_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x13_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x13_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x13_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x13_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x13_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x13_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x15_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x15_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x15_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x15_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x15_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x15_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x15_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x16_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x16_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x16_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x16_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x16_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x16_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x16_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x17_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x17_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x17_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x17_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x17_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x17_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x17_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_unnamed_conv1x19_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv1x1_function_out_unnamed_conv1x19_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv1x1_function_out_unnamed_conv1x19_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_function_out_unnamed_conv1x19_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x19_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x19_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_function_out_unnamed_conv1x19_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv1x1_function_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal ip_dsdk_adapt_cast_b : STD_LOGIC_VECTOR (63 downto 0);
    signal is_any_lsu_active_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- arg_stride_select(BITSELECT,17)
    arg_stride_select_b <= kernel_arguments(319 downto 288);

    -- dupName_5_ip_dsdk_adapt_cast_x(BITSELECT,7)
    dupName_5_ip_dsdk_adapt_cast_x_b <= arg_stride_select_b(31 downto 0);

    -- arg_pad_select(BITSELECT,16)
    arg_pad_select_b <= kernel_arguments(287 downto 256);

    -- dupName_4_ip_dsdk_adapt_cast_x(BITSELECT,6)
    dupName_4_ip_dsdk_adapt_cast_x_b <= arg_pad_select_b(31 downto 0);

    -- arg_output_size_select(BITSELECT,15)
    arg_output_size_select_b <= kernel_arguments(351 downto 320);

    -- dupName_6_ip_dsdk_adapt_cast_x(BITSELECT,8)
    dupName_6_ip_dsdk_adapt_cast_x_b <= arg_output_size_select_b(31 downto 0);

    -- arg_output_im_select(BITSELECT,14)
    arg_output_im_select_b <= kernel_arguments(191 downto 128);

    -- dupName_1_ip_dsdk_adapt_cast_x(BITSELECT,3)
    dupName_1_ip_dsdk_adapt_cast_x_b <= arg_output_im_select_b(63 downto 0);

    -- arg_input_size_select(BITSELECT,13)
    arg_input_size_select_b <= kernel_arguments(255 downto 224);

    -- dupName_3_ip_dsdk_adapt_cast_x(BITSELECT,5)
    dupName_3_ip_dsdk_adapt_cast_x_b <= arg_input_size_select_b(31 downto 0);

    -- arg_input_im_select(BITSELECT,12)
    arg_input_im_select_b <= kernel_arguments(63 downto 0);

    -- ip_dsdk_adapt_cast(BITSELECT,99)
    ip_dsdk_adapt_cast_b <= arg_input_im_select_b(63 downto 0);

    -- arg_input_channels_select(BITSELECT,11)
    arg_input_channels_select_b <= kernel_arguments(223 downto 192);

    -- dupName_2_ip_dsdk_adapt_cast_x(BITSELECT,4)
    dupName_2_ip_dsdk_adapt_cast_x_b <= arg_input_channels_select_b(31 downto 0);

    -- arg_filter_weight_select(BITSELECT,10)
    arg_filter_weight_select_b <= kernel_arguments(127 downto 64);

    -- dupName_0_ip_dsdk_adapt_cast_x(BITSELECT,2)
    dupName_0_ip_dsdk_adapt_cast_x_b <= arg_filter_weight_select_b(63 downto 0);

    -- conv1x1_function(BLACKBOX,19)
    theconv1x1_function : conv1x1_function
    PORT MAP (
        in_arg_filter_weight => dupName_0_ip_dsdk_adapt_cast_x_b,
        in_arg_global_id_0 => global_id_0,
        in_arg_global_id_1 => global_id_1,
        in_arg_global_size_0 => global_size_0,
        in_arg_global_size_1 => global_size_1,
        in_arg_global_size_2 => global_size_2,
        in_arg_input_channels => dupName_2_ip_dsdk_adapt_cast_x_b,
        in_arg_input_im => ip_dsdk_adapt_cast_b,
        in_arg_input_size => dupName_3_ip_dsdk_adapt_cast_x_b,
        in_arg_local_size_0 => local_size_0,
        in_arg_local_size_1 => local_size_1,
        in_arg_local_size_2 => local_size_2,
        in_arg_output_im => dupName_1_ip_dsdk_adapt_cast_x_b,
        in_arg_output_size => dupName_6_ip_dsdk_adapt_cast_x_b,
        in_arg_pad => dupName_4_ip_dsdk_adapt_cast_x_b,
        in_arg_stride => dupName_5_ip_dsdk_adapt_cast_x_b,
        in_stall_in => GND_q,
        in_start => start,
        in_unnamed_conv1x110_avm_readdata => avm_unnamed_conv1x110_readdata,
        in_unnamed_conv1x110_avm_readdatavalid => avm_unnamed_conv1x110_readdatavalid,
        in_unnamed_conv1x110_avm_waitrequest => avm_unnamed_conv1x110_waitrequest,
        in_unnamed_conv1x110_avm_writeack => avm_unnamed_conv1x110_writeack,
        in_unnamed_conv1x111_avm_readdata => avm_unnamed_conv1x111_readdata,
        in_unnamed_conv1x111_avm_readdatavalid => avm_unnamed_conv1x111_readdatavalid,
        in_unnamed_conv1x111_avm_waitrequest => avm_unnamed_conv1x111_waitrequest,
        in_unnamed_conv1x111_avm_writeack => avm_unnamed_conv1x111_writeack,
        in_unnamed_conv1x113_avm_readdata => avm_unnamed_conv1x113_readdata,
        in_unnamed_conv1x113_avm_readdatavalid => avm_unnamed_conv1x113_readdatavalid,
        in_unnamed_conv1x113_avm_waitrequest => avm_unnamed_conv1x113_waitrequest,
        in_unnamed_conv1x113_avm_writeack => avm_unnamed_conv1x113_writeack,
        in_unnamed_conv1x114_avm_readdata => avm_unnamed_conv1x114_readdata,
        in_unnamed_conv1x114_avm_readdatavalid => avm_unnamed_conv1x114_readdatavalid,
        in_unnamed_conv1x114_avm_waitrequest => avm_unnamed_conv1x114_waitrequest,
        in_unnamed_conv1x114_avm_writeack => avm_unnamed_conv1x114_writeack,
        in_unnamed_conv1x115_avm_readdata => avm_unnamed_conv1x115_readdata,
        in_unnamed_conv1x115_avm_readdatavalid => avm_unnamed_conv1x115_readdatavalid,
        in_unnamed_conv1x115_avm_waitrequest => avm_unnamed_conv1x115_waitrequest,
        in_unnamed_conv1x115_avm_writeack => avm_unnamed_conv1x115_writeack,
        in_unnamed_conv1x11_avm_readdata => avm_unnamed_conv1x11_readdata,
        in_unnamed_conv1x11_avm_readdatavalid => avm_unnamed_conv1x11_readdatavalid,
        in_unnamed_conv1x11_avm_waitrequest => avm_unnamed_conv1x11_waitrequest,
        in_unnamed_conv1x11_avm_writeack => avm_unnamed_conv1x11_writeack,
        in_unnamed_conv1x12_avm_readdata => avm_unnamed_conv1x12_readdata,
        in_unnamed_conv1x12_avm_readdatavalid => avm_unnamed_conv1x12_readdatavalid,
        in_unnamed_conv1x12_avm_waitrequest => avm_unnamed_conv1x12_waitrequest,
        in_unnamed_conv1x12_avm_writeack => avm_unnamed_conv1x12_writeack,
        in_unnamed_conv1x13_avm_readdata => avm_unnamed_conv1x13_readdata,
        in_unnamed_conv1x13_avm_readdatavalid => avm_unnamed_conv1x13_readdatavalid,
        in_unnamed_conv1x13_avm_waitrequest => avm_unnamed_conv1x13_waitrequest,
        in_unnamed_conv1x13_avm_writeack => avm_unnamed_conv1x13_writeack,
        in_unnamed_conv1x15_avm_readdata => avm_unnamed_conv1x15_readdata,
        in_unnamed_conv1x15_avm_readdatavalid => avm_unnamed_conv1x15_readdatavalid,
        in_unnamed_conv1x15_avm_waitrequest => avm_unnamed_conv1x15_waitrequest,
        in_unnamed_conv1x15_avm_writeack => avm_unnamed_conv1x15_writeack,
        in_unnamed_conv1x16_avm_readdata => avm_unnamed_conv1x16_readdata,
        in_unnamed_conv1x16_avm_readdatavalid => avm_unnamed_conv1x16_readdatavalid,
        in_unnamed_conv1x16_avm_waitrequest => avm_unnamed_conv1x16_waitrequest,
        in_unnamed_conv1x16_avm_writeack => avm_unnamed_conv1x16_writeack,
        in_unnamed_conv1x17_avm_readdata => avm_unnamed_conv1x17_readdata,
        in_unnamed_conv1x17_avm_readdatavalid => avm_unnamed_conv1x17_readdatavalid,
        in_unnamed_conv1x17_avm_waitrequest => avm_unnamed_conv1x17_waitrequest,
        in_unnamed_conv1x17_avm_writeack => avm_unnamed_conv1x17_writeack,
        in_unnamed_conv1x19_avm_readdata => avm_unnamed_conv1x19_readdata,
        in_unnamed_conv1x19_avm_readdatavalid => avm_unnamed_conv1x19_readdatavalid,
        in_unnamed_conv1x19_avm_waitrequest => avm_unnamed_conv1x19_waitrequest,
        in_unnamed_conv1x19_avm_writeack => avm_unnamed_conv1x19_writeack,
        in_valid_in => kernel_valid_in,
        out_o_active_unnamed_conv1x111 => conv1x1_function_out_o_active_unnamed_conv1x111,
        out_o_active_unnamed_conv1x115 => conv1x1_function_out_o_active_unnamed_conv1x115,
        out_o_active_unnamed_conv1x13 => conv1x1_function_out_o_active_unnamed_conv1x13,
        out_o_active_unnamed_conv1x17 => conv1x1_function_out_o_active_unnamed_conv1x17,
        out_stall_out => conv1x1_function_out_stall_out,
        out_unnamed_conv1x110_avm_address => conv1x1_function_out_unnamed_conv1x110_avm_address,
        out_unnamed_conv1x110_avm_burstcount => conv1x1_function_out_unnamed_conv1x110_avm_burstcount,
        out_unnamed_conv1x110_avm_byteenable => conv1x1_function_out_unnamed_conv1x110_avm_byteenable,
        out_unnamed_conv1x110_avm_enable => conv1x1_function_out_unnamed_conv1x110_avm_enable,
        out_unnamed_conv1x110_avm_read => conv1x1_function_out_unnamed_conv1x110_avm_read,
        out_unnamed_conv1x110_avm_write => conv1x1_function_out_unnamed_conv1x110_avm_write,
        out_unnamed_conv1x110_avm_writedata => conv1x1_function_out_unnamed_conv1x110_avm_writedata,
        out_unnamed_conv1x111_avm_address => conv1x1_function_out_unnamed_conv1x111_avm_address,
        out_unnamed_conv1x111_avm_burstcount => conv1x1_function_out_unnamed_conv1x111_avm_burstcount,
        out_unnamed_conv1x111_avm_byteenable => conv1x1_function_out_unnamed_conv1x111_avm_byteenable,
        out_unnamed_conv1x111_avm_enable => conv1x1_function_out_unnamed_conv1x111_avm_enable,
        out_unnamed_conv1x111_avm_read => conv1x1_function_out_unnamed_conv1x111_avm_read,
        out_unnamed_conv1x111_avm_write => conv1x1_function_out_unnamed_conv1x111_avm_write,
        out_unnamed_conv1x111_avm_writedata => conv1x1_function_out_unnamed_conv1x111_avm_writedata,
        out_unnamed_conv1x113_avm_address => conv1x1_function_out_unnamed_conv1x113_avm_address,
        out_unnamed_conv1x113_avm_burstcount => conv1x1_function_out_unnamed_conv1x113_avm_burstcount,
        out_unnamed_conv1x113_avm_byteenable => conv1x1_function_out_unnamed_conv1x113_avm_byteenable,
        out_unnamed_conv1x113_avm_enable => conv1x1_function_out_unnamed_conv1x113_avm_enable,
        out_unnamed_conv1x113_avm_read => conv1x1_function_out_unnamed_conv1x113_avm_read,
        out_unnamed_conv1x113_avm_write => conv1x1_function_out_unnamed_conv1x113_avm_write,
        out_unnamed_conv1x113_avm_writedata => conv1x1_function_out_unnamed_conv1x113_avm_writedata,
        out_unnamed_conv1x114_avm_address => conv1x1_function_out_unnamed_conv1x114_avm_address,
        out_unnamed_conv1x114_avm_burstcount => conv1x1_function_out_unnamed_conv1x114_avm_burstcount,
        out_unnamed_conv1x114_avm_byteenable => conv1x1_function_out_unnamed_conv1x114_avm_byteenable,
        out_unnamed_conv1x114_avm_enable => conv1x1_function_out_unnamed_conv1x114_avm_enable,
        out_unnamed_conv1x114_avm_read => conv1x1_function_out_unnamed_conv1x114_avm_read,
        out_unnamed_conv1x114_avm_write => conv1x1_function_out_unnamed_conv1x114_avm_write,
        out_unnamed_conv1x114_avm_writedata => conv1x1_function_out_unnamed_conv1x114_avm_writedata,
        out_unnamed_conv1x115_avm_address => conv1x1_function_out_unnamed_conv1x115_avm_address,
        out_unnamed_conv1x115_avm_burstcount => conv1x1_function_out_unnamed_conv1x115_avm_burstcount,
        out_unnamed_conv1x115_avm_byteenable => conv1x1_function_out_unnamed_conv1x115_avm_byteenable,
        out_unnamed_conv1x115_avm_enable => conv1x1_function_out_unnamed_conv1x115_avm_enable,
        out_unnamed_conv1x115_avm_read => conv1x1_function_out_unnamed_conv1x115_avm_read,
        out_unnamed_conv1x115_avm_write => conv1x1_function_out_unnamed_conv1x115_avm_write,
        out_unnamed_conv1x115_avm_writedata => conv1x1_function_out_unnamed_conv1x115_avm_writedata,
        out_unnamed_conv1x11_avm_address => conv1x1_function_out_unnamed_conv1x11_avm_address,
        out_unnamed_conv1x11_avm_burstcount => conv1x1_function_out_unnamed_conv1x11_avm_burstcount,
        out_unnamed_conv1x11_avm_byteenable => conv1x1_function_out_unnamed_conv1x11_avm_byteenable,
        out_unnamed_conv1x11_avm_enable => conv1x1_function_out_unnamed_conv1x11_avm_enable,
        out_unnamed_conv1x11_avm_read => conv1x1_function_out_unnamed_conv1x11_avm_read,
        out_unnamed_conv1x11_avm_write => conv1x1_function_out_unnamed_conv1x11_avm_write,
        out_unnamed_conv1x11_avm_writedata => conv1x1_function_out_unnamed_conv1x11_avm_writedata,
        out_unnamed_conv1x12_avm_address => conv1x1_function_out_unnamed_conv1x12_avm_address,
        out_unnamed_conv1x12_avm_burstcount => conv1x1_function_out_unnamed_conv1x12_avm_burstcount,
        out_unnamed_conv1x12_avm_byteenable => conv1x1_function_out_unnamed_conv1x12_avm_byteenable,
        out_unnamed_conv1x12_avm_enable => conv1x1_function_out_unnamed_conv1x12_avm_enable,
        out_unnamed_conv1x12_avm_read => conv1x1_function_out_unnamed_conv1x12_avm_read,
        out_unnamed_conv1x12_avm_write => conv1x1_function_out_unnamed_conv1x12_avm_write,
        out_unnamed_conv1x12_avm_writedata => conv1x1_function_out_unnamed_conv1x12_avm_writedata,
        out_unnamed_conv1x13_avm_address => conv1x1_function_out_unnamed_conv1x13_avm_address,
        out_unnamed_conv1x13_avm_burstcount => conv1x1_function_out_unnamed_conv1x13_avm_burstcount,
        out_unnamed_conv1x13_avm_byteenable => conv1x1_function_out_unnamed_conv1x13_avm_byteenable,
        out_unnamed_conv1x13_avm_enable => conv1x1_function_out_unnamed_conv1x13_avm_enable,
        out_unnamed_conv1x13_avm_read => conv1x1_function_out_unnamed_conv1x13_avm_read,
        out_unnamed_conv1x13_avm_write => conv1x1_function_out_unnamed_conv1x13_avm_write,
        out_unnamed_conv1x13_avm_writedata => conv1x1_function_out_unnamed_conv1x13_avm_writedata,
        out_unnamed_conv1x15_avm_address => conv1x1_function_out_unnamed_conv1x15_avm_address,
        out_unnamed_conv1x15_avm_burstcount => conv1x1_function_out_unnamed_conv1x15_avm_burstcount,
        out_unnamed_conv1x15_avm_byteenable => conv1x1_function_out_unnamed_conv1x15_avm_byteenable,
        out_unnamed_conv1x15_avm_enable => conv1x1_function_out_unnamed_conv1x15_avm_enable,
        out_unnamed_conv1x15_avm_read => conv1x1_function_out_unnamed_conv1x15_avm_read,
        out_unnamed_conv1x15_avm_write => conv1x1_function_out_unnamed_conv1x15_avm_write,
        out_unnamed_conv1x15_avm_writedata => conv1x1_function_out_unnamed_conv1x15_avm_writedata,
        out_unnamed_conv1x16_avm_address => conv1x1_function_out_unnamed_conv1x16_avm_address,
        out_unnamed_conv1x16_avm_burstcount => conv1x1_function_out_unnamed_conv1x16_avm_burstcount,
        out_unnamed_conv1x16_avm_byteenable => conv1x1_function_out_unnamed_conv1x16_avm_byteenable,
        out_unnamed_conv1x16_avm_enable => conv1x1_function_out_unnamed_conv1x16_avm_enable,
        out_unnamed_conv1x16_avm_read => conv1x1_function_out_unnamed_conv1x16_avm_read,
        out_unnamed_conv1x16_avm_write => conv1x1_function_out_unnamed_conv1x16_avm_write,
        out_unnamed_conv1x16_avm_writedata => conv1x1_function_out_unnamed_conv1x16_avm_writedata,
        out_unnamed_conv1x17_avm_address => conv1x1_function_out_unnamed_conv1x17_avm_address,
        out_unnamed_conv1x17_avm_burstcount => conv1x1_function_out_unnamed_conv1x17_avm_burstcount,
        out_unnamed_conv1x17_avm_byteenable => conv1x1_function_out_unnamed_conv1x17_avm_byteenable,
        out_unnamed_conv1x17_avm_enable => conv1x1_function_out_unnamed_conv1x17_avm_enable,
        out_unnamed_conv1x17_avm_read => conv1x1_function_out_unnamed_conv1x17_avm_read,
        out_unnamed_conv1x17_avm_write => conv1x1_function_out_unnamed_conv1x17_avm_write,
        out_unnamed_conv1x17_avm_writedata => conv1x1_function_out_unnamed_conv1x17_avm_writedata,
        out_unnamed_conv1x19_avm_address => conv1x1_function_out_unnamed_conv1x19_avm_address,
        out_unnamed_conv1x19_avm_burstcount => conv1x1_function_out_unnamed_conv1x19_avm_burstcount,
        out_unnamed_conv1x19_avm_byteenable => conv1x1_function_out_unnamed_conv1x19_avm_byteenable,
        out_unnamed_conv1x19_avm_enable => conv1x1_function_out_unnamed_conv1x19_avm_enable,
        out_unnamed_conv1x19_avm_read => conv1x1_function_out_unnamed_conv1x19_avm_read,
        out_unnamed_conv1x19_avm_write => conv1x1_function_out_unnamed_conv1x19_avm_write,
        out_unnamed_conv1x19_avm_writedata => conv1x1_function_out_unnamed_conv1x19_avm_writedata,
        out_valid_out => conv1x1_function_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- avm_unnamed_conv1x110_address(GPOUT,101)
    avm_unnamed_conv1x110_address <= conv1x1_function_out_unnamed_conv1x110_avm_address;

    -- avm_unnamed_conv1x110_burstcount(GPOUT,102)
    avm_unnamed_conv1x110_burstcount <= conv1x1_function_out_unnamed_conv1x110_avm_burstcount;

    -- avm_unnamed_conv1x110_byteenable(GPOUT,103)
    avm_unnamed_conv1x110_byteenable <= conv1x1_function_out_unnamed_conv1x110_avm_byteenable;

    -- avm_unnamed_conv1x110_enable(GPOUT,104)
    avm_unnamed_conv1x110_enable <= conv1x1_function_out_unnamed_conv1x110_avm_enable;

    -- avm_unnamed_conv1x110_read(GPOUT,105)
    avm_unnamed_conv1x110_read <= conv1x1_function_out_unnamed_conv1x110_avm_read;

    -- avm_unnamed_conv1x110_write(GPOUT,106)
    avm_unnamed_conv1x110_write <= conv1x1_function_out_unnamed_conv1x110_avm_write;

    -- avm_unnamed_conv1x110_writedata(GPOUT,107)
    avm_unnamed_conv1x110_writedata <= conv1x1_function_out_unnamed_conv1x110_avm_writedata;

    -- avm_unnamed_conv1x111_address(GPOUT,108)
    avm_unnamed_conv1x111_address <= conv1x1_function_out_unnamed_conv1x111_avm_address;

    -- avm_unnamed_conv1x111_burstcount(GPOUT,109)
    avm_unnamed_conv1x111_burstcount <= conv1x1_function_out_unnamed_conv1x111_avm_burstcount;

    -- avm_unnamed_conv1x111_byteenable(GPOUT,110)
    avm_unnamed_conv1x111_byteenable <= conv1x1_function_out_unnamed_conv1x111_avm_byteenable;

    -- avm_unnamed_conv1x111_enable(GPOUT,111)
    avm_unnamed_conv1x111_enable <= conv1x1_function_out_unnamed_conv1x111_avm_enable;

    -- avm_unnamed_conv1x111_read(GPOUT,112)
    avm_unnamed_conv1x111_read <= conv1x1_function_out_unnamed_conv1x111_avm_read;

    -- avm_unnamed_conv1x111_write(GPOUT,113)
    avm_unnamed_conv1x111_write <= conv1x1_function_out_unnamed_conv1x111_avm_write;

    -- avm_unnamed_conv1x111_writedata(GPOUT,114)
    avm_unnamed_conv1x111_writedata <= conv1x1_function_out_unnamed_conv1x111_avm_writedata;

    -- avm_unnamed_conv1x113_address(GPOUT,115)
    avm_unnamed_conv1x113_address <= conv1x1_function_out_unnamed_conv1x113_avm_address;

    -- avm_unnamed_conv1x113_burstcount(GPOUT,116)
    avm_unnamed_conv1x113_burstcount <= conv1x1_function_out_unnamed_conv1x113_avm_burstcount;

    -- avm_unnamed_conv1x113_byteenable(GPOUT,117)
    avm_unnamed_conv1x113_byteenable <= conv1x1_function_out_unnamed_conv1x113_avm_byteenable;

    -- avm_unnamed_conv1x113_enable(GPOUT,118)
    avm_unnamed_conv1x113_enable <= conv1x1_function_out_unnamed_conv1x113_avm_enable;

    -- avm_unnamed_conv1x113_read(GPOUT,119)
    avm_unnamed_conv1x113_read <= conv1x1_function_out_unnamed_conv1x113_avm_read;

    -- avm_unnamed_conv1x113_write(GPOUT,120)
    avm_unnamed_conv1x113_write <= conv1x1_function_out_unnamed_conv1x113_avm_write;

    -- avm_unnamed_conv1x113_writedata(GPOUT,121)
    avm_unnamed_conv1x113_writedata <= conv1x1_function_out_unnamed_conv1x113_avm_writedata;

    -- avm_unnamed_conv1x114_address(GPOUT,122)
    avm_unnamed_conv1x114_address <= conv1x1_function_out_unnamed_conv1x114_avm_address;

    -- avm_unnamed_conv1x114_burstcount(GPOUT,123)
    avm_unnamed_conv1x114_burstcount <= conv1x1_function_out_unnamed_conv1x114_avm_burstcount;

    -- avm_unnamed_conv1x114_byteenable(GPOUT,124)
    avm_unnamed_conv1x114_byteenable <= conv1x1_function_out_unnamed_conv1x114_avm_byteenable;

    -- avm_unnamed_conv1x114_enable(GPOUT,125)
    avm_unnamed_conv1x114_enable <= conv1x1_function_out_unnamed_conv1x114_avm_enable;

    -- avm_unnamed_conv1x114_read(GPOUT,126)
    avm_unnamed_conv1x114_read <= conv1x1_function_out_unnamed_conv1x114_avm_read;

    -- avm_unnamed_conv1x114_write(GPOUT,127)
    avm_unnamed_conv1x114_write <= conv1x1_function_out_unnamed_conv1x114_avm_write;

    -- avm_unnamed_conv1x114_writedata(GPOUT,128)
    avm_unnamed_conv1x114_writedata <= conv1x1_function_out_unnamed_conv1x114_avm_writedata;

    -- avm_unnamed_conv1x115_address(GPOUT,129)
    avm_unnamed_conv1x115_address <= conv1x1_function_out_unnamed_conv1x115_avm_address;

    -- avm_unnamed_conv1x115_burstcount(GPOUT,130)
    avm_unnamed_conv1x115_burstcount <= conv1x1_function_out_unnamed_conv1x115_avm_burstcount;

    -- avm_unnamed_conv1x115_byteenable(GPOUT,131)
    avm_unnamed_conv1x115_byteenable <= conv1x1_function_out_unnamed_conv1x115_avm_byteenable;

    -- avm_unnamed_conv1x115_enable(GPOUT,132)
    avm_unnamed_conv1x115_enable <= conv1x1_function_out_unnamed_conv1x115_avm_enable;

    -- avm_unnamed_conv1x115_read(GPOUT,133)
    avm_unnamed_conv1x115_read <= conv1x1_function_out_unnamed_conv1x115_avm_read;

    -- avm_unnamed_conv1x115_write(GPOUT,134)
    avm_unnamed_conv1x115_write <= conv1x1_function_out_unnamed_conv1x115_avm_write;

    -- avm_unnamed_conv1x115_writedata(GPOUT,135)
    avm_unnamed_conv1x115_writedata <= conv1x1_function_out_unnamed_conv1x115_avm_writedata;

    -- avm_unnamed_conv1x11_address(GPOUT,136)
    avm_unnamed_conv1x11_address <= conv1x1_function_out_unnamed_conv1x11_avm_address;

    -- avm_unnamed_conv1x11_burstcount(GPOUT,137)
    avm_unnamed_conv1x11_burstcount <= conv1x1_function_out_unnamed_conv1x11_avm_burstcount;

    -- avm_unnamed_conv1x11_byteenable(GPOUT,138)
    avm_unnamed_conv1x11_byteenable <= conv1x1_function_out_unnamed_conv1x11_avm_byteenable;

    -- avm_unnamed_conv1x11_enable(GPOUT,139)
    avm_unnamed_conv1x11_enable <= conv1x1_function_out_unnamed_conv1x11_avm_enable;

    -- avm_unnamed_conv1x11_read(GPOUT,140)
    avm_unnamed_conv1x11_read <= conv1x1_function_out_unnamed_conv1x11_avm_read;

    -- avm_unnamed_conv1x11_write(GPOUT,141)
    avm_unnamed_conv1x11_write <= conv1x1_function_out_unnamed_conv1x11_avm_write;

    -- avm_unnamed_conv1x11_writedata(GPOUT,142)
    avm_unnamed_conv1x11_writedata <= conv1x1_function_out_unnamed_conv1x11_avm_writedata;

    -- avm_unnamed_conv1x12_address(GPOUT,143)
    avm_unnamed_conv1x12_address <= conv1x1_function_out_unnamed_conv1x12_avm_address;

    -- avm_unnamed_conv1x12_burstcount(GPOUT,144)
    avm_unnamed_conv1x12_burstcount <= conv1x1_function_out_unnamed_conv1x12_avm_burstcount;

    -- avm_unnamed_conv1x12_byteenable(GPOUT,145)
    avm_unnamed_conv1x12_byteenable <= conv1x1_function_out_unnamed_conv1x12_avm_byteenable;

    -- avm_unnamed_conv1x12_enable(GPOUT,146)
    avm_unnamed_conv1x12_enable <= conv1x1_function_out_unnamed_conv1x12_avm_enable;

    -- avm_unnamed_conv1x12_read(GPOUT,147)
    avm_unnamed_conv1x12_read <= conv1x1_function_out_unnamed_conv1x12_avm_read;

    -- avm_unnamed_conv1x12_write(GPOUT,148)
    avm_unnamed_conv1x12_write <= conv1x1_function_out_unnamed_conv1x12_avm_write;

    -- avm_unnamed_conv1x12_writedata(GPOUT,149)
    avm_unnamed_conv1x12_writedata <= conv1x1_function_out_unnamed_conv1x12_avm_writedata;

    -- avm_unnamed_conv1x13_address(GPOUT,150)
    avm_unnamed_conv1x13_address <= conv1x1_function_out_unnamed_conv1x13_avm_address;

    -- avm_unnamed_conv1x13_burstcount(GPOUT,151)
    avm_unnamed_conv1x13_burstcount <= conv1x1_function_out_unnamed_conv1x13_avm_burstcount;

    -- avm_unnamed_conv1x13_byteenable(GPOUT,152)
    avm_unnamed_conv1x13_byteenable <= conv1x1_function_out_unnamed_conv1x13_avm_byteenable;

    -- avm_unnamed_conv1x13_enable(GPOUT,153)
    avm_unnamed_conv1x13_enable <= conv1x1_function_out_unnamed_conv1x13_avm_enable;

    -- avm_unnamed_conv1x13_read(GPOUT,154)
    avm_unnamed_conv1x13_read <= conv1x1_function_out_unnamed_conv1x13_avm_read;

    -- avm_unnamed_conv1x13_write(GPOUT,155)
    avm_unnamed_conv1x13_write <= conv1x1_function_out_unnamed_conv1x13_avm_write;

    -- avm_unnamed_conv1x13_writedata(GPOUT,156)
    avm_unnamed_conv1x13_writedata <= conv1x1_function_out_unnamed_conv1x13_avm_writedata;

    -- avm_unnamed_conv1x15_address(GPOUT,157)
    avm_unnamed_conv1x15_address <= conv1x1_function_out_unnamed_conv1x15_avm_address;

    -- avm_unnamed_conv1x15_burstcount(GPOUT,158)
    avm_unnamed_conv1x15_burstcount <= conv1x1_function_out_unnamed_conv1x15_avm_burstcount;

    -- avm_unnamed_conv1x15_byteenable(GPOUT,159)
    avm_unnamed_conv1x15_byteenable <= conv1x1_function_out_unnamed_conv1x15_avm_byteenable;

    -- avm_unnamed_conv1x15_enable(GPOUT,160)
    avm_unnamed_conv1x15_enable <= conv1x1_function_out_unnamed_conv1x15_avm_enable;

    -- avm_unnamed_conv1x15_read(GPOUT,161)
    avm_unnamed_conv1x15_read <= conv1x1_function_out_unnamed_conv1x15_avm_read;

    -- avm_unnamed_conv1x15_write(GPOUT,162)
    avm_unnamed_conv1x15_write <= conv1x1_function_out_unnamed_conv1x15_avm_write;

    -- avm_unnamed_conv1x15_writedata(GPOUT,163)
    avm_unnamed_conv1x15_writedata <= conv1x1_function_out_unnamed_conv1x15_avm_writedata;

    -- avm_unnamed_conv1x16_address(GPOUT,164)
    avm_unnamed_conv1x16_address <= conv1x1_function_out_unnamed_conv1x16_avm_address;

    -- avm_unnamed_conv1x16_burstcount(GPOUT,165)
    avm_unnamed_conv1x16_burstcount <= conv1x1_function_out_unnamed_conv1x16_avm_burstcount;

    -- avm_unnamed_conv1x16_byteenable(GPOUT,166)
    avm_unnamed_conv1x16_byteenable <= conv1x1_function_out_unnamed_conv1x16_avm_byteenable;

    -- avm_unnamed_conv1x16_enable(GPOUT,167)
    avm_unnamed_conv1x16_enable <= conv1x1_function_out_unnamed_conv1x16_avm_enable;

    -- avm_unnamed_conv1x16_read(GPOUT,168)
    avm_unnamed_conv1x16_read <= conv1x1_function_out_unnamed_conv1x16_avm_read;

    -- avm_unnamed_conv1x16_write(GPOUT,169)
    avm_unnamed_conv1x16_write <= conv1x1_function_out_unnamed_conv1x16_avm_write;

    -- avm_unnamed_conv1x16_writedata(GPOUT,170)
    avm_unnamed_conv1x16_writedata <= conv1x1_function_out_unnamed_conv1x16_avm_writedata;

    -- avm_unnamed_conv1x17_address(GPOUT,171)
    avm_unnamed_conv1x17_address <= conv1x1_function_out_unnamed_conv1x17_avm_address;

    -- avm_unnamed_conv1x17_burstcount(GPOUT,172)
    avm_unnamed_conv1x17_burstcount <= conv1x1_function_out_unnamed_conv1x17_avm_burstcount;

    -- avm_unnamed_conv1x17_byteenable(GPOUT,173)
    avm_unnamed_conv1x17_byteenable <= conv1x1_function_out_unnamed_conv1x17_avm_byteenable;

    -- avm_unnamed_conv1x17_enable(GPOUT,174)
    avm_unnamed_conv1x17_enable <= conv1x1_function_out_unnamed_conv1x17_avm_enable;

    -- avm_unnamed_conv1x17_read(GPOUT,175)
    avm_unnamed_conv1x17_read <= conv1x1_function_out_unnamed_conv1x17_avm_read;

    -- avm_unnamed_conv1x17_write(GPOUT,176)
    avm_unnamed_conv1x17_write <= conv1x1_function_out_unnamed_conv1x17_avm_write;

    -- avm_unnamed_conv1x17_writedata(GPOUT,177)
    avm_unnamed_conv1x17_writedata <= conv1x1_function_out_unnamed_conv1x17_avm_writedata;

    -- avm_unnamed_conv1x19_address(GPOUT,178)
    avm_unnamed_conv1x19_address <= conv1x1_function_out_unnamed_conv1x19_avm_address;

    -- avm_unnamed_conv1x19_burstcount(GPOUT,179)
    avm_unnamed_conv1x19_burstcount <= conv1x1_function_out_unnamed_conv1x19_avm_burstcount;

    -- avm_unnamed_conv1x19_byteenable(GPOUT,180)
    avm_unnamed_conv1x19_byteenable <= conv1x1_function_out_unnamed_conv1x19_avm_byteenable;

    -- avm_unnamed_conv1x19_enable(GPOUT,181)
    avm_unnamed_conv1x19_enable <= conv1x1_function_out_unnamed_conv1x19_avm_enable;

    -- avm_unnamed_conv1x19_read(GPOUT,182)
    avm_unnamed_conv1x19_read <= conv1x1_function_out_unnamed_conv1x19_avm_read;

    -- avm_unnamed_conv1x19_write(GPOUT,183)
    avm_unnamed_conv1x19_write <= conv1x1_function_out_unnamed_conv1x19_avm_write;

    -- avm_unnamed_conv1x19_writedata(GPOUT,184)
    avm_unnamed_conv1x19_writedata <= conv1x1_function_out_unnamed_conv1x19_avm_writedata;

    -- acl_clock2x_dummy_consumer(EXTIFACE,9)
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

    -- clock2x_output(GPOUT,185)
    clock2x_output <= acl_clock2x_dummy_consumer_myout;

    -- is_any_lsu_active(LOGICAL,100)
    is_any_lsu_active_q <= conv1x1_function_out_o_active_unnamed_conv1x111 or conv1x1_function_out_o_active_unnamed_conv1x115 or conv1x1_function_out_o_active_unnamed_conv1x13 or conv1x1_function_out_o_active_unnamed_conv1x17;

    -- has_a_lsu_active(GPOUT,186)
    has_a_lsu_active <= is_any_lsu_active_q;

    -- has_a_write_pending(GPOUT,187)
    has_a_write_pending <= is_any_lsu_active_q;

    -- kernel_stall_out(GPOUT,188)
    kernel_stall_out <= conv1x1_function_out_stall_out;

    -- kernel_valid_out(GPOUT,189)
    kernel_valid_out <= conv1x1_function_out_valid_out;

END normal;
