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

-- VHDL created from conv1x1_function
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

entity conv1x1_function is
    port (
        in_arg_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_global_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_start : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x110_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x110_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x110_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x110_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x111_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x111_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x111_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x111_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x113_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x113_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x113_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x113_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x114_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x114_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x114_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x114_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x115_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x115_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x115_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x115_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x11_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x11_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x12_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x12_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x12_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x12_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x13_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x13_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x13_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x13_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x15_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x15_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x15_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x15_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x16_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x16_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x16_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x16_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x17_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x17_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x19_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x19_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_active_unnamed_conv1x111 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_active_unnamed_conv1x115 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_active_unnamed_conv1x13 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_active_unnamed_conv1x17 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x110_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x110_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x110_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x110_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x110_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x110_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x110_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x111_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x111_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x111_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x111_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x113_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x113_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x113_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x113_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x113_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x113_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x113_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x114_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x114_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x114_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x114_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x114_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x114_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x114_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x115_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x115_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x115_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x115_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x11_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x11_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x11_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x11_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x12_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x12_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x12_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x12_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x12_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x12_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x12_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x13_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x13_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x13_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x13_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x15_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x15_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x15_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x15_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x15_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x15_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x15_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x16_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x16_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x16_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x16_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x16_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x16_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x16_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x17_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x17_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x17_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x17_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x17_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x17_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x17_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x19_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x19_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x19_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x19_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x19_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x19_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x19_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_function;

architecture normal of conv1x1_function is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv1x1_B10_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B1_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B1_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B2_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B2_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B3_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B4_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B4_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B5_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B6_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_15 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_16 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_15 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_16 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B6_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_15 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_16 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_15 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_16 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B7_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B8_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_16 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_16 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B8_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_16 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_16 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B9_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B0 is
        port (
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_global_id_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exe1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B1 is
        port (
            in_c0_exe18_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe18_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe118_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe118_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe127_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe127_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe135_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe135_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe243_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c3_exe243_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_010_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_010_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1140 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe18 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe118 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe127 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe135 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe243 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_010 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B10 is
        port (
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B2 is
        port (
            in_c0_exe114054_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe114054_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe17_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe17_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe255_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe255_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe362_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe362_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe464_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe464_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe565_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe565_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe117_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe117_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe126_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe126_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe134_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe134_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe242_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c3_exe242_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01053_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01053_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp_17_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_17_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x11_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe114054 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe17 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe255 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe362 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe464 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe565 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1154 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c1_exe117 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe126 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe134 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe242 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_inc : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_j_01053 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B3 is
        port (
            in_c0_exe16_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe361_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe463_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe115466_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_exe116_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe125_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe133_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe241_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01052_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1168 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe16 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe3170 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe361 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4171 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5172 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe116 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe125 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe133 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe241 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01052 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv1x13_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B4 is
        port (
            in_c0_exe116872_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe116872_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe15_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe15_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe317074_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe317074_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe360_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe360_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417180_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417180_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517286_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517286_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe687_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe687_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe788_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe788_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe889_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe889_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe115_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe115_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe124_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe124_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe132_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe132_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe240_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c3_exe240_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01051_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01051_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_1_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp_17_1_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_17_1_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x15_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x15_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x15_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x15_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe116872 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe15 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe317074 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe360 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417180 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe517286 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe687 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe788 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe889 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe115 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exe1194 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe124 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe132 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe240 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_inc_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_j_01051 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B5 is
        port (
            in_c0_exe116871_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe14_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe317073_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe359_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417179_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517285_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe119490_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe123_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe131_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe239_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01050_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe116871 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1211 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe14 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe2212 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3213 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe359 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417179 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4214 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe517285 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5215 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6216 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe114 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe123 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe131 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe239 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01050 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv1x17_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B6 is
        port (
            in_c0_exe116870_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe116870_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe121192_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe121192_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe13_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe13_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe221296_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe221296_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3213100_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3213100_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe358_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe358_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417178_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417178_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4214101_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe4214101_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe517284_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517284_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5215102_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5215102_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6216103_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6216103_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe113_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe122_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe122_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe130_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe130_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe238_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c3_exe238_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01049_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01049_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_2_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp_17_2_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_17_2_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x110_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x110_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x110_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x110_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe116870 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe121192 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe13 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe221296 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3213100 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe358 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417178 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4214101 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe517284 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5215102 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6216103 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe113 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exe1238 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe122 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe130 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe238 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_inc_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_j_01049 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x19_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B7 is
        port (
            in_c0_exe116869_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe121191_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe12_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe221295_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321399_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe357_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417177_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517283_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe112_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe1238104_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe121_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe129_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe237_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01048_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe116869 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe12 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe1254 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe221295 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2255 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe321399 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3256 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe357 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417177 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4257 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe517283 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5258 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe112 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe121 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe129 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe237 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01048 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv1x111_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B8 is
        port (
            in_c0_exe116868_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe116868_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe11_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe11_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe1254106_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe1254106_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe221294_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe221294_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2255108_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2255108_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321398_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321398_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3256109_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe3256109_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe356_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe356_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417176_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417176_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4257110_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4257110_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517282_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517282_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5258111_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5258111_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe111_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe111_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe120_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe120_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe128_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe128_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe245_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c3_exe245_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01047_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01047_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_3_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp_17_3_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_17_3_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x113_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x113_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x113_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x113_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe116868 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1254106 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe221294 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2255108 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe321398 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3256109 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe356 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417176 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4257110 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe517282 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5258111 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe111 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exe1280 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe120 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe128 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe245 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_inc_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_j_01047 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv1x1_B9 is
        port (
            in_c0_exe116867_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe1254105_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe19_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe221293_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2255107_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321397_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417175_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517281_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe110_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe1280112_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe119_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe136_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe244_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01046_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe19 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe2295 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe110 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe119 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe136 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe244 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv1x115_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component loop_limiter_conv1x10 is
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


    component loop_limiter_conv1x11 is
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


    component loop_limiter_conv1x12 is
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


    component loop_limiter_conv1x13 is
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


    component loop_limiter_conv1x14 is
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


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B10_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B10_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_15 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_16 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_15 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_16 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_16 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_16 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_c_float_0_000000e_00_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_0gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B0_out_c0_exe1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B0_out_c1_exe1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B0_out_c2_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B0_out_c3_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B0_out_c3_exe2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B0_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B0_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_out_c0_exe1140 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_out_c0_exe18 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B1_out_c0_exe2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_out_c0_exe3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_out_c0_exe4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_out_c0_exe5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_out_c1_exe118 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B1_out_c2_exe127 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_out_c3_exe135 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_out_c3_exe243 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_out_j_010 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B10_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B10_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_c0_exe114054 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_out_c0_exe17 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B2_out_c0_exe255 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_c0_exe362 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_c0_exe464 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_c0_exe565 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_c1_exe1154 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_out_c1_exe117 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B2_out_c2_exe126 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_out_c3_exe134 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_out_c3_exe242 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_inc : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_out_j_01053 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x11_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x11_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x11_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x11_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x11_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x11_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x11_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x12_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x12_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x12_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x12_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x12_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x12_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_unnamed_conv1x12_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B2_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_c0_exe1168 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_c0_exe16 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B3_out_c0_exe3170 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_out_c0_exe361 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_c0_exe4171 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_c0_exe5172 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_c0_exe6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_out_c0_exe7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_c0_exe8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_c1_exe116 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B3_out_c2_exe125 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_out_c3_exe133 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_out_c3_exe241 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_j_01052 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_out_lsu_unnamed_conv1x13_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_unnamed_conv1x13_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B3_out_unnamed_conv1x13_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B3_out_unnamed_conv1x13_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_out_unnamed_conv1x13_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_unnamed_conv1x13_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_unnamed_conv1x13_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_out_unnamed_conv1x13_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B3_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_c0_exe116872 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_c0_exe15 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B4_out_c0_exe317074 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_out_c0_exe360 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_c0_exe417180 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_c0_exe517286 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_c0_exe687 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_out_c0_exe788 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_c0_exe889 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_c1_exe115 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B4_out_c1_exe1194 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_out_c2_exe124 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_out_c3_exe132 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_out_c3_exe240 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_inc_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_out_j_01051 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x15_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x15_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x15_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x15_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x15_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x15_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x15_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x16_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x16_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x16_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x16_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x16_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x16_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_unnamed_conv1x16_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B4_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_c0_exe116871 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_c0_exe1211 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_out_c0_exe14 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B5_out_c0_exe2212 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_c0_exe3213 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_c0_exe359 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_c0_exe417179 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_c0_exe4214 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_out_c0_exe517285 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_c0_exe5215 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_c0_exe6216 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_c1_exe114 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B5_out_c2_exe123 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_out_c3_exe131 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_out_c3_exe239 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_j_01050 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_out_lsu_unnamed_conv1x17_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_unnamed_conv1x17_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B5_out_unnamed_conv1x17_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B5_out_unnamed_conv1x17_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_out_unnamed_conv1x17_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_unnamed_conv1x17_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_unnamed_conv1x17_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_out_unnamed_conv1x17_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B5_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_c0_exe116870 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_c0_exe121192 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_out_c0_exe13 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B6_out_c0_exe221296 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_c0_exe3213100 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_c0_exe358 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_c0_exe417178 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_c0_exe4214101 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_out_c0_exe517284 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_c0_exe5215102 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_c0_exe6216103 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_c1_exe113 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B6_out_c1_exe1238 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_out_c2_exe122 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_out_c3_exe130 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_out_c3_exe238 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_inc_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_out_j_01049 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x110_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x110_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x110_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x110_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x110_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x110_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x110_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x19_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x19_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x19_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x19_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x19_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x19_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_unnamed_conv1x19_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B6_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_c0_exe116869 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_c0_exe12 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B7_out_c0_exe1254 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_out_c0_exe221295 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_c0_exe2255 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_c0_exe321399 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_c0_exe3256 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_out_c0_exe357 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_c0_exe417177 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_c0_exe4257 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_c0_exe517283 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_c0_exe5258 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_c1_exe112 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B7_out_c2_exe121 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_out_c3_exe129 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_out_c3_exe237 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_j_01048 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_out_lsu_unnamed_conv1x111_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_unnamed_conv1x111_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B7_out_unnamed_conv1x111_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B7_out_unnamed_conv1x111_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_out_unnamed_conv1x111_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_unnamed_conv1x111_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_unnamed_conv1x111_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_out_unnamed_conv1x111_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B7_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_c0_exe11 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B8_out_c0_exe116868 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_c0_exe1254106 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_out_c0_exe221294 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_c0_exe2255108 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_c0_exe321398 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_c0_exe3256109 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_out_c0_exe356 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_c0_exe417176 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_c0_exe4257110 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_c0_exe517282 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_c0_exe5258111 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_c1_exe111 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B8_out_c1_exe1280 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_out_c2_exe120 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_out_c3_exe128 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_out_c3_exe245 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_inc_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_out_j_01047 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x113_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x113_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x113_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x113_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x113_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x113_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x113_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x114_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x114_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x114_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x114_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x114_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x114_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_unnamed_conv1x114_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B8_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_out_c0_exe19 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B9_out_c0_exe2295 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_out_c1_exe110 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B9_out_c2_exe119 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_out_c3_exe136 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_out_c3_exe244 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_out_lsu_unnamed_conv1x115_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_out_unnamed_conv1x115_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B9_out_unnamed_conv1x115_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B9_out_unnamed_conv1x115_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_out_unnamed_conv1x115_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_out_unnamed_conv1x115_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_out_unnamed_conv1x115_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_out_unnamed_conv1x115_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B9_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv1x10_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv1x10_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv1x11_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv1x11_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv1x12_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv1x12_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv1x13_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv1x13_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv1x14_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv1x14_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- bb_conv1x1_B8_sr_0_aunroll_x(BLACKBOX,14)
    thebb_conv1x1_B8_sr_0_aunroll_x : bb_conv1x1_B8_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv1x1_B8_out_inc_3,
        in_i_data_1 => bb_conv1x1_B8_out_c1_exe1280,
        in_i_data_2 => bb_conv1x1_B8_out_c0_exe11,
        in_i_data_3 => bb_conv1x1_B8_out_c1_exe111,
        in_i_data_4 => bb_conv1x1_B8_out_c2_exe120,
        in_i_data_5 => bb_conv1x1_B8_out_c3_exe128,
        in_i_data_6 => bb_conv1x1_B8_out_c3_exe245,
        in_i_data_7 => bb_conv1x1_B8_out_j_01047,
        in_i_data_8 => bb_conv1x1_B8_out_c0_exe356,
        in_i_data_9 => bb_conv1x1_B8_out_c0_exe116868,
        in_i_data_10 => bb_conv1x1_B8_out_c0_exe417176,
        in_i_data_11 => bb_conv1x1_B8_out_c0_exe517282,
        in_i_data_12 => bb_conv1x1_B8_out_c0_exe221294,
        in_i_data_13 => bb_conv1x1_B8_out_c0_exe321398,
        in_i_data_14 => bb_conv1x1_B8_out_c0_exe1254106,
        in_i_data_15 => bb_conv1x1_B8_out_c0_exe2255108,
        in_i_data_16 => bb_conv1x1_B8_out_c0_exe3256109,
        in_i_data_17 => bb_conv1x1_B8_out_c0_exe4257110,
        in_i_data_18 => bb_conv1x1_B8_out_c0_exe5258111,
        in_i_stall => bb_conv1x1_B8_out_stall_out_0,
        in_i_valid => bb_conv1x1_B8_out_valid_out_1,
        out_o_data_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_14,
        out_o_data_15 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_15,
        out_o_data_16 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_16,
        out_o_data_17 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_17,
        out_o_data_18 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_18,
        out_o_stall => bb_conv1x1_B8_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B8_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B8(BLACKBOX,33)
    thebb_conv1x1_B8 : bb_conv1x1_B8
    PORT MAP (
        in_c0_exe116868_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_9,
        in_c0_exe116868_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_9,
        in_c0_exe11_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_2,
        in_c0_exe11_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_2,
        in_c0_exe1254106_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_14,
        in_c0_exe1254106_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_14,
        in_c0_exe221294_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_12,
        in_c0_exe221294_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_12,
        in_c0_exe2255108_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_15,
        in_c0_exe2255108_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_15,
        in_c0_exe321398_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_13,
        in_c0_exe321398_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_13,
        in_c0_exe3256109_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_16,
        in_c0_exe3256109_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_16,
        in_c0_exe356_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_8,
        in_c0_exe356_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_8,
        in_c0_exe417176_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_10,
        in_c0_exe417176_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_10,
        in_c0_exe4257110_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_17,
        in_c0_exe4257110_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_17,
        in_c0_exe517282_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_11,
        in_c0_exe517282_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_11,
        in_c0_exe5258111_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_18,
        in_c0_exe5258111_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_18,
        in_c1_exe111_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_3,
        in_c1_exe111_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_3,
        in_c2_exe120_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_4,
        in_c2_exe120_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_4,
        in_c3_exe128_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_5,
        in_c3_exe128_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_5,
        in_c3_exe245_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_6,
        in_c3_exe245_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_6,
        in_filter_weight => in_arg_filter_weight,
        in_flush => in_start,
        in_input_channels => in_arg_input_channels,
        in_input_im => in_arg_input_im,
        in_input_size => in_arg_input_size,
        in_j_01047_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_7,
        in_j_01047_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_7,
        in_k_18_3_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_0,
        in_k_18_3_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_0,
        in_output_im => in_arg_output_im,
        in_output_size => in_arg_output_size,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_tmp_17_3_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_data_1,
        in_tmp_17_3_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_conv1x113_avm_readdata => in_unnamed_conv1x113_avm_readdata,
        in_unnamed_conv1x113_avm_readdatavalid => in_unnamed_conv1x113_avm_readdatavalid,
        in_unnamed_conv1x113_avm_waitrequest => in_unnamed_conv1x113_avm_waitrequest,
        in_unnamed_conv1x113_avm_writeack => in_unnamed_conv1x113_avm_writeack,
        in_unnamed_conv1x114_avm_readdata => in_unnamed_conv1x114_avm_readdata,
        in_unnamed_conv1x114_avm_readdatavalid => in_unnamed_conv1x114_avm_readdatavalid,
        in_unnamed_conv1x114_avm_waitrequest => in_unnamed_conv1x114_avm_waitrequest,
        in_unnamed_conv1x114_avm_writeack => in_unnamed_conv1x114_avm_writeack,
        in_valid_in_0 => bb_conv1x1_B8_sr_0_aunroll_x_out_o_valid,
        in_valid_in_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_valid,
        out_c0_exe11 => bb_conv1x1_B8_out_c0_exe11,
        out_c0_exe116868 => bb_conv1x1_B8_out_c0_exe116868,
        out_c0_exe1254106 => bb_conv1x1_B8_out_c0_exe1254106,
        out_c0_exe221294 => bb_conv1x1_B8_out_c0_exe221294,
        out_c0_exe2255108 => bb_conv1x1_B8_out_c0_exe2255108,
        out_c0_exe321398 => bb_conv1x1_B8_out_c0_exe321398,
        out_c0_exe3256109 => bb_conv1x1_B8_out_c0_exe3256109,
        out_c0_exe356 => bb_conv1x1_B8_out_c0_exe356,
        out_c0_exe417176 => bb_conv1x1_B8_out_c0_exe417176,
        out_c0_exe4257110 => bb_conv1x1_B8_out_c0_exe4257110,
        out_c0_exe517282 => bb_conv1x1_B8_out_c0_exe517282,
        out_c0_exe5258111 => bb_conv1x1_B8_out_c0_exe5258111,
        out_c1_exe111 => bb_conv1x1_B8_out_c1_exe111,
        out_c1_exe1280 => bb_conv1x1_B8_out_c1_exe1280,
        out_c2_exe120 => bb_conv1x1_B8_out_c2_exe120,
        out_c3_exe128 => bb_conv1x1_B8_out_c3_exe128,
        out_c3_exe245 => bb_conv1x1_B8_out_c3_exe245,
        out_inc_3 => bb_conv1x1_B8_out_inc_3,
        out_j_01047 => bb_conv1x1_B8_out_j_01047,
        out_stall_out_0 => bb_conv1x1_B8_out_stall_out_0,
        out_stall_out_1 => bb_conv1x1_B8_out_stall_out_1,
        out_unnamed_conv1x113_avm_address => bb_conv1x1_B8_out_unnamed_conv1x113_avm_address,
        out_unnamed_conv1x113_avm_burstcount => bb_conv1x1_B8_out_unnamed_conv1x113_avm_burstcount,
        out_unnamed_conv1x113_avm_byteenable => bb_conv1x1_B8_out_unnamed_conv1x113_avm_byteenable,
        out_unnamed_conv1x113_avm_enable => bb_conv1x1_B8_out_unnamed_conv1x113_avm_enable,
        out_unnamed_conv1x113_avm_read => bb_conv1x1_B8_out_unnamed_conv1x113_avm_read,
        out_unnamed_conv1x113_avm_write => bb_conv1x1_B8_out_unnamed_conv1x113_avm_write,
        out_unnamed_conv1x113_avm_writedata => bb_conv1x1_B8_out_unnamed_conv1x113_avm_writedata,
        out_unnamed_conv1x114_avm_address => bb_conv1x1_B8_out_unnamed_conv1x114_avm_address,
        out_unnamed_conv1x114_avm_burstcount => bb_conv1x1_B8_out_unnamed_conv1x114_avm_burstcount,
        out_unnamed_conv1x114_avm_byteenable => bb_conv1x1_B8_out_unnamed_conv1x114_avm_byteenable,
        out_unnamed_conv1x114_avm_enable => bb_conv1x1_B8_out_unnamed_conv1x114_avm_enable,
        out_unnamed_conv1x114_avm_read => bb_conv1x1_B8_out_unnamed_conv1x114_avm_read,
        out_unnamed_conv1x114_avm_write => bb_conv1x1_B8_out_unnamed_conv1x114_avm_write,
        out_unnamed_conv1x114_avm_writedata => bb_conv1x1_B8_out_unnamed_conv1x114_avm_writedata,
        out_valid_out_0 => bb_conv1x1_B8_out_valid_out_0,
        out_valid_out_1 => bb_conv1x1_B8_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B10(BLACKBOX,26)
    thebb_conv1x1_B10 : bb_conv1x1_B10
    PORT MAP (
        in_stall_in_0 => in_stall_in,
        in_valid_in_0 => bb_conv1x1_B10_sr_0_aunroll_x_out_o_valid,
        out_stall_out_0 => bb_conv1x1_B10_out_stall_out_0,
        out_valid_out_0 => bb_conv1x1_B10_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- bb_conv1x1_B10_sr_0_aunroll_x(BLACKBOX,2)
    thebb_conv1x1_B10_sr_0_aunroll_x : bb_conv1x1_B10_sr_0
    PORT MAP (
        in_i_data_0 => GND_q,
        in_i_stall => bb_conv1x1_B10_out_stall_out_0,
        in_i_valid => bb_conv1x1_B9_out_valid_out_1,
        out_o_stall => bb_conv1x1_B10_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B10_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B2_sr_0_aunroll_x(BLACKBOX,5)
    thebb_conv1x1_B2_sr_0_aunroll_x : bb_conv1x1_B2_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv1x1_B2_out_inc,
        in_i_data_1 => bb_conv1x1_B2_out_c1_exe1154,
        in_i_data_2 => bb_conv1x1_B2_out_c0_exe17,
        in_i_data_3 => bb_conv1x1_B2_out_c1_exe117,
        in_i_data_4 => bb_conv1x1_B2_out_c2_exe126,
        in_i_data_5 => bb_conv1x1_B2_out_c3_exe134,
        in_i_data_6 => bb_conv1x1_B2_out_c3_exe242,
        in_i_data_7 => bb_conv1x1_B2_out_j_01053,
        in_i_data_8 => bb_conv1x1_B2_out_c0_exe114054,
        in_i_data_9 => bb_conv1x1_B2_out_c0_exe255,
        in_i_data_10 => bb_conv1x1_B2_out_c0_exe362,
        in_i_data_11 => bb_conv1x1_B2_out_c0_exe464,
        in_i_data_12 => bb_conv1x1_B2_out_c0_exe565,
        in_i_stall => bb_conv1x1_B2_out_stall_out_0,
        in_i_valid => bb_conv1x1_B2_out_valid_out_1,
        out_o_data_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_12,
        out_o_stall => bb_conv1x1_B2_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B2_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B2(BLACKBOX,27)
    thebb_conv1x1_B2 : bb_conv1x1_B2
    PORT MAP (
        in_c0_exe114054_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_8,
        in_c0_exe114054_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_8,
        in_c0_exe17_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_2,
        in_c0_exe17_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_2,
        in_c0_exe255_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_9,
        in_c0_exe255_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_9,
        in_c0_exe362_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_10,
        in_c0_exe362_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_10,
        in_c0_exe464_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_11,
        in_c0_exe464_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_11,
        in_c0_exe565_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_12,
        in_c0_exe565_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_12,
        in_c1_exe117_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_3,
        in_c1_exe117_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_3,
        in_c2_exe126_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_4,
        in_c2_exe126_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_4,
        in_c3_exe134_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_5,
        in_c3_exe134_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_5,
        in_c3_exe242_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_6,
        in_c3_exe242_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_6,
        in_filter_weight => in_arg_filter_weight,
        in_flush => in_start,
        in_input_channels => in_arg_input_channels,
        in_input_im => in_arg_input_im,
        in_input_size => in_arg_input_size,
        in_j_01053_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_7,
        in_j_01053_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_7,
        in_k_18_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_0,
        in_k_18_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_0,
        in_output_im => in_arg_output_im,
        in_output_size => in_arg_output_size,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_tmp_17_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_data_1,
        in_tmp_17_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_conv1x11_avm_readdata => in_unnamed_conv1x11_avm_readdata,
        in_unnamed_conv1x11_avm_readdatavalid => in_unnamed_conv1x11_avm_readdatavalid,
        in_unnamed_conv1x11_avm_waitrequest => in_unnamed_conv1x11_avm_waitrequest,
        in_unnamed_conv1x11_avm_writeack => in_unnamed_conv1x11_avm_writeack,
        in_unnamed_conv1x12_avm_readdata => in_unnamed_conv1x12_avm_readdata,
        in_unnamed_conv1x12_avm_readdatavalid => in_unnamed_conv1x12_avm_readdatavalid,
        in_unnamed_conv1x12_avm_waitrequest => in_unnamed_conv1x12_avm_waitrequest,
        in_unnamed_conv1x12_avm_writeack => in_unnamed_conv1x12_avm_writeack,
        in_valid_in_0 => bb_conv1x1_B2_sr_0_aunroll_x_out_o_valid,
        in_valid_in_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_valid,
        out_c0_exe114054 => bb_conv1x1_B2_out_c0_exe114054,
        out_c0_exe17 => bb_conv1x1_B2_out_c0_exe17,
        out_c0_exe255 => bb_conv1x1_B2_out_c0_exe255,
        out_c0_exe362 => bb_conv1x1_B2_out_c0_exe362,
        out_c0_exe464 => bb_conv1x1_B2_out_c0_exe464,
        out_c0_exe565 => bb_conv1x1_B2_out_c0_exe565,
        out_c1_exe1154 => bb_conv1x1_B2_out_c1_exe1154,
        out_c1_exe117 => bb_conv1x1_B2_out_c1_exe117,
        out_c2_exe126 => bb_conv1x1_B2_out_c2_exe126,
        out_c3_exe134 => bb_conv1x1_B2_out_c3_exe134,
        out_c3_exe242 => bb_conv1x1_B2_out_c3_exe242,
        out_inc => bb_conv1x1_B2_out_inc,
        out_j_01053 => bb_conv1x1_B2_out_j_01053,
        out_stall_out_0 => bb_conv1x1_B2_out_stall_out_0,
        out_stall_out_1 => bb_conv1x1_B2_out_stall_out_1,
        out_unnamed_conv1x11_avm_address => bb_conv1x1_B2_out_unnamed_conv1x11_avm_address,
        out_unnamed_conv1x11_avm_burstcount => bb_conv1x1_B2_out_unnamed_conv1x11_avm_burstcount,
        out_unnamed_conv1x11_avm_byteenable => bb_conv1x1_B2_out_unnamed_conv1x11_avm_byteenable,
        out_unnamed_conv1x11_avm_enable => bb_conv1x1_B2_out_unnamed_conv1x11_avm_enable,
        out_unnamed_conv1x11_avm_read => bb_conv1x1_B2_out_unnamed_conv1x11_avm_read,
        out_unnamed_conv1x11_avm_write => bb_conv1x1_B2_out_unnamed_conv1x11_avm_write,
        out_unnamed_conv1x11_avm_writedata => bb_conv1x1_B2_out_unnamed_conv1x11_avm_writedata,
        out_unnamed_conv1x12_avm_address => bb_conv1x1_B2_out_unnamed_conv1x12_avm_address,
        out_unnamed_conv1x12_avm_burstcount => bb_conv1x1_B2_out_unnamed_conv1x12_avm_burstcount,
        out_unnamed_conv1x12_avm_byteenable => bb_conv1x1_B2_out_unnamed_conv1x12_avm_byteenable,
        out_unnamed_conv1x12_avm_enable => bb_conv1x1_B2_out_unnamed_conv1x12_avm_enable,
        out_unnamed_conv1x12_avm_read => bb_conv1x1_B2_out_unnamed_conv1x12_avm_read,
        out_unnamed_conv1x12_avm_write => bb_conv1x1_B2_out_unnamed_conv1x12_avm_write,
        out_unnamed_conv1x12_avm_writedata => bb_conv1x1_B2_out_unnamed_conv1x12_avm_writedata,
        out_valid_out_0 => bb_conv1x1_B2_out_valid_out_0,
        out_valid_out_1 => bb_conv1x1_B2_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B4_sr_0_aunroll_x(BLACKBOX,8)
    thebb_conv1x1_B4_sr_0_aunroll_x : bb_conv1x1_B4_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv1x1_B4_out_inc_1,
        in_i_data_1 => bb_conv1x1_B4_out_c1_exe1194,
        in_i_data_2 => bb_conv1x1_B4_out_c0_exe15,
        in_i_data_3 => bb_conv1x1_B4_out_c1_exe115,
        in_i_data_4 => bb_conv1x1_B4_out_c2_exe124,
        in_i_data_5 => bb_conv1x1_B4_out_c3_exe132,
        in_i_data_6 => bb_conv1x1_B4_out_c3_exe240,
        in_i_data_7 => bb_conv1x1_B4_out_j_01051,
        in_i_data_8 => bb_conv1x1_B4_out_c0_exe360,
        in_i_data_9 => bb_conv1x1_B4_out_c0_exe116872,
        in_i_data_10 => bb_conv1x1_B4_out_c0_exe317074,
        in_i_data_11 => bb_conv1x1_B4_out_c0_exe417180,
        in_i_data_12 => bb_conv1x1_B4_out_c0_exe517286,
        in_i_data_13 => bb_conv1x1_B4_out_c0_exe687,
        in_i_data_14 => bb_conv1x1_B4_out_c0_exe788,
        in_i_data_15 => bb_conv1x1_B4_out_c0_exe889,
        in_i_stall => bb_conv1x1_B4_out_stall_out_0,
        in_i_valid => bb_conv1x1_B4_out_valid_out_1,
        out_o_data_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_14,
        out_o_data_15 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_15,
        out_o_stall => bb_conv1x1_B4_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B4_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B4(BLACKBOX,29)
    thebb_conv1x1_B4 : bb_conv1x1_B4
    PORT MAP (
        in_c0_exe116872_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_9,
        in_c0_exe116872_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_9,
        in_c0_exe15_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_2,
        in_c0_exe15_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_2,
        in_c0_exe317074_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_10,
        in_c0_exe317074_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_10,
        in_c0_exe360_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_8,
        in_c0_exe360_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_8,
        in_c0_exe417180_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_11,
        in_c0_exe417180_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_11,
        in_c0_exe517286_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_12,
        in_c0_exe517286_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_12,
        in_c0_exe687_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_13,
        in_c0_exe687_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_13,
        in_c0_exe788_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_14,
        in_c0_exe788_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_14,
        in_c0_exe889_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_15,
        in_c0_exe889_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_15,
        in_c1_exe115_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_3,
        in_c1_exe115_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_3,
        in_c2_exe124_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_4,
        in_c2_exe124_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_4,
        in_c3_exe132_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_5,
        in_c3_exe132_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_5,
        in_c3_exe240_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_6,
        in_c3_exe240_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_6,
        in_filter_weight => in_arg_filter_weight,
        in_flush => in_start,
        in_input_channels => in_arg_input_channels,
        in_input_im => in_arg_input_im,
        in_input_size => in_arg_input_size,
        in_j_01051_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_7,
        in_j_01051_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_7,
        in_k_18_1_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_0,
        in_k_18_1_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_0,
        in_output_im => in_arg_output_im,
        in_output_size => in_arg_output_size,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_tmp_17_1_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_data_1,
        in_tmp_17_1_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_conv1x15_avm_readdata => in_unnamed_conv1x15_avm_readdata,
        in_unnamed_conv1x15_avm_readdatavalid => in_unnamed_conv1x15_avm_readdatavalid,
        in_unnamed_conv1x15_avm_waitrequest => in_unnamed_conv1x15_avm_waitrequest,
        in_unnamed_conv1x15_avm_writeack => in_unnamed_conv1x15_avm_writeack,
        in_unnamed_conv1x16_avm_readdata => in_unnamed_conv1x16_avm_readdata,
        in_unnamed_conv1x16_avm_readdatavalid => in_unnamed_conv1x16_avm_readdatavalid,
        in_unnamed_conv1x16_avm_waitrequest => in_unnamed_conv1x16_avm_waitrequest,
        in_unnamed_conv1x16_avm_writeack => in_unnamed_conv1x16_avm_writeack,
        in_valid_in_0 => bb_conv1x1_B4_sr_0_aunroll_x_out_o_valid,
        in_valid_in_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_valid,
        out_c0_exe116872 => bb_conv1x1_B4_out_c0_exe116872,
        out_c0_exe15 => bb_conv1x1_B4_out_c0_exe15,
        out_c0_exe317074 => bb_conv1x1_B4_out_c0_exe317074,
        out_c0_exe360 => bb_conv1x1_B4_out_c0_exe360,
        out_c0_exe417180 => bb_conv1x1_B4_out_c0_exe417180,
        out_c0_exe517286 => bb_conv1x1_B4_out_c0_exe517286,
        out_c0_exe687 => bb_conv1x1_B4_out_c0_exe687,
        out_c0_exe788 => bb_conv1x1_B4_out_c0_exe788,
        out_c0_exe889 => bb_conv1x1_B4_out_c0_exe889,
        out_c1_exe115 => bb_conv1x1_B4_out_c1_exe115,
        out_c1_exe1194 => bb_conv1x1_B4_out_c1_exe1194,
        out_c2_exe124 => bb_conv1x1_B4_out_c2_exe124,
        out_c3_exe132 => bb_conv1x1_B4_out_c3_exe132,
        out_c3_exe240 => bb_conv1x1_B4_out_c3_exe240,
        out_inc_1 => bb_conv1x1_B4_out_inc_1,
        out_j_01051 => bb_conv1x1_B4_out_j_01051,
        out_stall_out_0 => bb_conv1x1_B4_out_stall_out_0,
        out_stall_out_1 => bb_conv1x1_B4_out_stall_out_1,
        out_unnamed_conv1x15_avm_address => bb_conv1x1_B4_out_unnamed_conv1x15_avm_address,
        out_unnamed_conv1x15_avm_burstcount => bb_conv1x1_B4_out_unnamed_conv1x15_avm_burstcount,
        out_unnamed_conv1x15_avm_byteenable => bb_conv1x1_B4_out_unnamed_conv1x15_avm_byteenable,
        out_unnamed_conv1x15_avm_enable => bb_conv1x1_B4_out_unnamed_conv1x15_avm_enable,
        out_unnamed_conv1x15_avm_read => bb_conv1x1_B4_out_unnamed_conv1x15_avm_read,
        out_unnamed_conv1x15_avm_write => bb_conv1x1_B4_out_unnamed_conv1x15_avm_write,
        out_unnamed_conv1x15_avm_writedata => bb_conv1x1_B4_out_unnamed_conv1x15_avm_writedata,
        out_unnamed_conv1x16_avm_address => bb_conv1x1_B4_out_unnamed_conv1x16_avm_address,
        out_unnamed_conv1x16_avm_burstcount => bb_conv1x1_B4_out_unnamed_conv1x16_avm_burstcount,
        out_unnamed_conv1x16_avm_byteenable => bb_conv1x1_B4_out_unnamed_conv1x16_avm_byteenable,
        out_unnamed_conv1x16_avm_enable => bb_conv1x1_B4_out_unnamed_conv1x16_avm_enable,
        out_unnamed_conv1x16_avm_read => bb_conv1x1_B4_out_unnamed_conv1x16_avm_read,
        out_unnamed_conv1x16_avm_write => bb_conv1x1_B4_out_unnamed_conv1x16_avm_write,
        out_unnamed_conv1x16_avm_writedata => bb_conv1x1_B4_out_unnamed_conv1x16_avm_writedata,
        out_valid_out_0 => bb_conv1x1_B4_out_valid_out_0,
        out_valid_out_1 => bb_conv1x1_B4_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B6_sr_0_aunroll_x(BLACKBOX,11)
    thebb_conv1x1_B6_sr_0_aunroll_x : bb_conv1x1_B6_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv1x1_B6_out_inc_2,
        in_i_data_1 => bb_conv1x1_B6_out_c1_exe1238,
        in_i_data_2 => bb_conv1x1_B6_out_c0_exe13,
        in_i_data_3 => bb_conv1x1_B6_out_c1_exe113,
        in_i_data_4 => bb_conv1x1_B6_out_c2_exe122,
        in_i_data_5 => bb_conv1x1_B6_out_c3_exe130,
        in_i_data_6 => bb_conv1x1_B6_out_c3_exe238,
        in_i_data_7 => bb_conv1x1_B6_out_j_01049,
        in_i_data_8 => bb_conv1x1_B6_out_c0_exe358,
        in_i_data_9 => bb_conv1x1_B6_out_c0_exe116870,
        in_i_data_10 => bb_conv1x1_B6_out_c0_exe417178,
        in_i_data_11 => bb_conv1x1_B6_out_c0_exe517284,
        in_i_data_12 => bb_conv1x1_B6_out_c0_exe121192,
        in_i_data_13 => bb_conv1x1_B6_out_c0_exe221296,
        in_i_data_14 => bb_conv1x1_B6_out_c0_exe3213100,
        in_i_data_15 => bb_conv1x1_B6_out_c0_exe4214101,
        in_i_data_16 => bb_conv1x1_B6_out_c0_exe5215102,
        in_i_data_17 => bb_conv1x1_B6_out_c0_exe6216103,
        in_i_stall => bb_conv1x1_B6_out_stall_out_0,
        in_i_valid => bb_conv1x1_B6_out_valid_out_1,
        out_o_data_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_14,
        out_o_data_15 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_15,
        out_o_data_16 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_16,
        out_o_data_17 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_17,
        out_o_stall => bb_conv1x1_B6_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B6_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B6(BLACKBOX,31)
    thebb_conv1x1_B6 : bb_conv1x1_B6
    PORT MAP (
        in_c0_exe116870_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_9,
        in_c0_exe116870_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_9,
        in_c0_exe121192_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_12,
        in_c0_exe121192_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_12,
        in_c0_exe13_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_2,
        in_c0_exe13_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_2,
        in_c0_exe221296_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_13,
        in_c0_exe221296_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_13,
        in_c0_exe3213100_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_14,
        in_c0_exe3213100_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_14,
        in_c0_exe358_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_8,
        in_c0_exe358_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_8,
        in_c0_exe417178_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_10,
        in_c0_exe417178_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_10,
        in_c0_exe4214101_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_15,
        in_c0_exe4214101_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_15,
        in_c0_exe517284_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_11,
        in_c0_exe517284_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_11,
        in_c0_exe5215102_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_16,
        in_c0_exe5215102_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_16,
        in_c0_exe6216103_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_17,
        in_c0_exe6216103_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_17,
        in_c1_exe113_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_3,
        in_c1_exe113_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_3,
        in_c2_exe122_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_4,
        in_c2_exe122_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_4,
        in_c3_exe130_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_5,
        in_c3_exe130_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_5,
        in_c3_exe238_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_6,
        in_c3_exe238_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_6,
        in_filter_weight => in_arg_filter_weight,
        in_flush => in_start,
        in_input_channels => in_arg_input_channels,
        in_input_im => in_arg_input_im,
        in_input_size => in_arg_input_size,
        in_j_01049_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_7,
        in_j_01049_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_7,
        in_k_18_2_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_0,
        in_k_18_2_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_0,
        in_output_im => in_arg_output_im,
        in_output_size => in_arg_output_size,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_tmp_17_2_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_data_1,
        in_tmp_17_2_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_conv1x110_avm_readdata => in_unnamed_conv1x110_avm_readdata,
        in_unnamed_conv1x110_avm_readdatavalid => in_unnamed_conv1x110_avm_readdatavalid,
        in_unnamed_conv1x110_avm_waitrequest => in_unnamed_conv1x110_avm_waitrequest,
        in_unnamed_conv1x110_avm_writeack => in_unnamed_conv1x110_avm_writeack,
        in_unnamed_conv1x19_avm_readdata => in_unnamed_conv1x19_avm_readdata,
        in_unnamed_conv1x19_avm_readdatavalid => in_unnamed_conv1x19_avm_readdatavalid,
        in_unnamed_conv1x19_avm_waitrequest => in_unnamed_conv1x19_avm_waitrequest,
        in_unnamed_conv1x19_avm_writeack => in_unnamed_conv1x19_avm_writeack,
        in_valid_in_0 => bb_conv1x1_B6_sr_0_aunroll_x_out_o_valid,
        in_valid_in_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_valid,
        out_c0_exe116870 => bb_conv1x1_B6_out_c0_exe116870,
        out_c0_exe121192 => bb_conv1x1_B6_out_c0_exe121192,
        out_c0_exe13 => bb_conv1x1_B6_out_c0_exe13,
        out_c0_exe221296 => bb_conv1x1_B6_out_c0_exe221296,
        out_c0_exe3213100 => bb_conv1x1_B6_out_c0_exe3213100,
        out_c0_exe358 => bb_conv1x1_B6_out_c0_exe358,
        out_c0_exe417178 => bb_conv1x1_B6_out_c0_exe417178,
        out_c0_exe4214101 => bb_conv1x1_B6_out_c0_exe4214101,
        out_c0_exe517284 => bb_conv1x1_B6_out_c0_exe517284,
        out_c0_exe5215102 => bb_conv1x1_B6_out_c0_exe5215102,
        out_c0_exe6216103 => bb_conv1x1_B6_out_c0_exe6216103,
        out_c1_exe113 => bb_conv1x1_B6_out_c1_exe113,
        out_c1_exe1238 => bb_conv1x1_B6_out_c1_exe1238,
        out_c2_exe122 => bb_conv1x1_B6_out_c2_exe122,
        out_c3_exe130 => bb_conv1x1_B6_out_c3_exe130,
        out_c3_exe238 => bb_conv1x1_B6_out_c3_exe238,
        out_inc_2 => bb_conv1x1_B6_out_inc_2,
        out_j_01049 => bb_conv1x1_B6_out_j_01049,
        out_stall_out_0 => bb_conv1x1_B6_out_stall_out_0,
        out_stall_out_1 => bb_conv1x1_B6_out_stall_out_1,
        out_unnamed_conv1x110_avm_address => bb_conv1x1_B6_out_unnamed_conv1x110_avm_address,
        out_unnamed_conv1x110_avm_burstcount => bb_conv1x1_B6_out_unnamed_conv1x110_avm_burstcount,
        out_unnamed_conv1x110_avm_byteenable => bb_conv1x1_B6_out_unnamed_conv1x110_avm_byteenable,
        out_unnamed_conv1x110_avm_enable => bb_conv1x1_B6_out_unnamed_conv1x110_avm_enable,
        out_unnamed_conv1x110_avm_read => bb_conv1x1_B6_out_unnamed_conv1x110_avm_read,
        out_unnamed_conv1x110_avm_write => bb_conv1x1_B6_out_unnamed_conv1x110_avm_write,
        out_unnamed_conv1x110_avm_writedata => bb_conv1x1_B6_out_unnamed_conv1x110_avm_writedata,
        out_unnamed_conv1x19_avm_address => bb_conv1x1_B6_out_unnamed_conv1x19_avm_address,
        out_unnamed_conv1x19_avm_burstcount => bb_conv1x1_B6_out_unnamed_conv1x19_avm_burstcount,
        out_unnamed_conv1x19_avm_byteenable => bb_conv1x1_B6_out_unnamed_conv1x19_avm_byteenable,
        out_unnamed_conv1x19_avm_enable => bb_conv1x1_B6_out_unnamed_conv1x19_avm_enable,
        out_unnamed_conv1x19_avm_read => bb_conv1x1_B6_out_unnamed_conv1x19_avm_read,
        out_unnamed_conv1x19_avm_write => bb_conv1x1_B6_out_unnamed_conv1x19_avm_write,
        out_unnamed_conv1x19_avm_writedata => bb_conv1x1_B6_out_unnamed_conv1x19_avm_writedata,
        out_valid_out_0 => bb_conv1x1_B6_out_valid_out_0,
        out_valid_out_1 => bb_conv1x1_B6_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_c_float_0_000000e_00_x(FLOATCONSTANT,17)
    dupName_0_c_float_0_000000e_00_x_q <= "00000000000000000000000000000000";

    -- dupName_0_c_i32_0gr_x(CONSTANT,18)
    dupName_0_c_i32_0gr_x_q <= "00000000000000000000000000000000";

    -- bb_conv1x1_B6_sr_1_aunroll_x(BLACKBOX,12)
    thebb_conv1x1_B6_sr_1_aunroll_x : bb_conv1x1_B6_sr_1
    PORT MAP (
        in_i_data_0 => dupName_0_c_i32_0gr_x_q,
        in_i_data_1 => dupName_0_c_float_0_000000e_00_x_q,
        in_i_data_2 => bb_conv1x1_B5_out_c0_exe14,
        in_i_data_3 => bb_conv1x1_B5_out_c1_exe114,
        in_i_data_4 => bb_conv1x1_B5_out_c2_exe123,
        in_i_data_5 => bb_conv1x1_B5_out_c3_exe131,
        in_i_data_6 => bb_conv1x1_B5_out_c3_exe239,
        in_i_data_7 => bb_conv1x1_B5_out_j_01050,
        in_i_data_8 => bb_conv1x1_B5_out_c0_exe359,
        in_i_data_9 => bb_conv1x1_B5_out_c0_exe116871,
        in_i_data_10 => bb_conv1x1_B5_out_c0_exe417179,
        in_i_data_11 => bb_conv1x1_B5_out_c0_exe517285,
        in_i_data_12 => bb_conv1x1_B5_out_c0_exe1211,
        in_i_data_13 => bb_conv1x1_B5_out_c0_exe2212,
        in_i_data_14 => bb_conv1x1_B5_out_c0_exe3213,
        in_i_data_15 => bb_conv1x1_B5_out_c0_exe4214,
        in_i_data_16 => bb_conv1x1_B5_out_c0_exe5215,
        in_i_data_17 => bb_conv1x1_B5_out_c0_exe6216,
        in_i_stall => bb_conv1x1_B6_out_stall_out_1,
        in_i_valid => loop_limiter_conv1x12_out_o_valid,
        out_o_data_0 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_14,
        out_o_data_15 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_15,
        out_o_data_16 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_16,
        out_o_data_17 => bb_conv1x1_B6_sr_1_aunroll_x_out_o_data_17,
        out_o_stall => bb_conv1x1_B6_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B6_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv1x12(BLACKBOX,107)
    theloop_limiter_conv1x12 : loop_limiter_conv1x12
    PORT MAP (
        in_i_stall => bb_conv1x1_B6_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv1x1_B7_sr_0_aunroll_x_out_o_stall,
        in_i_valid => bb_conv1x1_B5_out_valid_out_0,
        in_i_valid_exit => bb_conv1x1_B6_out_valid_out_0,
        out_o_stall => loop_limiter_conv1x12_out_o_stall,
        out_o_valid => loop_limiter_conv1x12_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B5(BLACKBOX,30)
    thebb_conv1x1_B5 : bb_conv1x1_B5
    PORT MAP (
        in_c0_exe116871_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_7,
        in_c0_exe14_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_0,
        in_c0_exe317073_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_8,
        in_c0_exe359_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_6,
        in_c0_exe417179_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_9,
        in_c0_exe517285_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_10,
        in_c1_exe114_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_1,
        in_c1_exe119490_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_11,
        in_c2_exe123_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_2,
        in_c3_exe131_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_3,
        in_c3_exe239_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_4,
        in_filter_weight => in_arg_filter_weight,
        in_flush => in_start,
        in_input_channels => in_arg_input_channels,
        in_input_im => in_arg_input_im,
        in_input_size => in_arg_input_size,
        in_j_01050_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_5,
        in_output_im => in_arg_output_im,
        in_output_size => in_arg_output_size,
        in_pad => in_arg_pad,
        in_stall_in_0 => loop_limiter_conv1x12_out_o_stall,
        in_stride => in_arg_stride,
        in_unnamed_conv1x17_avm_readdata => in_unnamed_conv1x17_avm_readdata,
        in_unnamed_conv1x17_avm_readdatavalid => in_unnamed_conv1x17_avm_readdatavalid,
        in_unnamed_conv1x17_avm_waitrequest => in_unnamed_conv1x17_avm_waitrequest,
        in_unnamed_conv1x17_avm_writeack => in_unnamed_conv1x17_avm_writeack,
        in_valid_in_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_valid,
        out_c0_exe116871 => bb_conv1x1_B5_out_c0_exe116871,
        out_c0_exe1211 => bb_conv1x1_B5_out_c0_exe1211,
        out_c0_exe14 => bb_conv1x1_B5_out_c0_exe14,
        out_c0_exe2212 => bb_conv1x1_B5_out_c0_exe2212,
        out_c0_exe3213 => bb_conv1x1_B5_out_c0_exe3213,
        out_c0_exe359 => bb_conv1x1_B5_out_c0_exe359,
        out_c0_exe417179 => bb_conv1x1_B5_out_c0_exe417179,
        out_c0_exe4214 => bb_conv1x1_B5_out_c0_exe4214,
        out_c0_exe517285 => bb_conv1x1_B5_out_c0_exe517285,
        out_c0_exe5215 => bb_conv1x1_B5_out_c0_exe5215,
        out_c0_exe6216 => bb_conv1x1_B5_out_c0_exe6216,
        out_c1_exe114 => bb_conv1x1_B5_out_c1_exe114,
        out_c2_exe123 => bb_conv1x1_B5_out_c2_exe123,
        out_c3_exe131 => bb_conv1x1_B5_out_c3_exe131,
        out_c3_exe239 => bb_conv1x1_B5_out_c3_exe239,
        out_j_01050 => bb_conv1x1_B5_out_j_01050,
        out_lsu_unnamed_conv1x17_o_active => bb_conv1x1_B5_out_lsu_unnamed_conv1x17_o_active,
        out_stall_out_0 => bb_conv1x1_B5_out_stall_out_0,
        out_unnamed_conv1x17_avm_address => bb_conv1x1_B5_out_unnamed_conv1x17_avm_address,
        out_unnamed_conv1x17_avm_burstcount => bb_conv1x1_B5_out_unnamed_conv1x17_avm_burstcount,
        out_unnamed_conv1x17_avm_byteenable => bb_conv1x1_B5_out_unnamed_conv1x17_avm_byteenable,
        out_unnamed_conv1x17_avm_enable => bb_conv1x1_B5_out_unnamed_conv1x17_avm_enable,
        out_unnamed_conv1x17_avm_read => bb_conv1x1_B5_out_unnamed_conv1x17_avm_read,
        out_unnamed_conv1x17_avm_write => bb_conv1x1_B5_out_unnamed_conv1x17_avm_write,
        out_unnamed_conv1x17_avm_writedata => bb_conv1x1_B5_out_unnamed_conv1x17_avm_writedata,
        out_valid_out_0 => bb_conv1x1_B5_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B5_sr_0_aunroll_x(BLACKBOX,10)
    thebb_conv1x1_B5_sr_0_aunroll_x : bb_conv1x1_B5_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv1x1_B4_out_c0_exe15,
        in_i_data_1 => bb_conv1x1_B4_out_c1_exe115,
        in_i_data_2 => bb_conv1x1_B4_out_c2_exe124,
        in_i_data_3 => bb_conv1x1_B4_out_c3_exe132,
        in_i_data_4 => bb_conv1x1_B4_out_c3_exe240,
        in_i_data_5 => bb_conv1x1_B4_out_j_01051,
        in_i_data_6 => bb_conv1x1_B4_out_c0_exe360,
        in_i_data_7 => bb_conv1x1_B4_out_c0_exe116872,
        in_i_data_8 => bb_conv1x1_B4_out_c0_exe317074,
        in_i_data_9 => bb_conv1x1_B4_out_c0_exe417180,
        in_i_data_10 => bb_conv1x1_B4_out_c0_exe517286,
        in_i_data_11 => bb_conv1x1_B4_out_c1_exe1194,
        in_i_stall => bb_conv1x1_B5_out_stall_out_0,
        in_i_valid => bb_conv1x1_B4_out_valid_out_0,
        out_o_data_0 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B5_sr_0_aunroll_x_out_o_data_11,
        out_o_stall => bb_conv1x1_B5_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B5_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B4_sr_1_aunroll_x(BLACKBOX,9)
    thebb_conv1x1_B4_sr_1_aunroll_x : bb_conv1x1_B4_sr_1
    PORT MAP (
        in_i_data_0 => dupName_0_c_i32_0gr_x_q,
        in_i_data_1 => dupName_0_c_float_0_000000e_00_x_q,
        in_i_data_2 => bb_conv1x1_B3_out_c0_exe16,
        in_i_data_3 => bb_conv1x1_B3_out_c1_exe116,
        in_i_data_4 => bb_conv1x1_B3_out_c2_exe125,
        in_i_data_5 => bb_conv1x1_B3_out_c3_exe133,
        in_i_data_6 => bb_conv1x1_B3_out_c3_exe241,
        in_i_data_7 => bb_conv1x1_B3_out_j_01052,
        in_i_data_8 => bb_conv1x1_B3_out_c0_exe361,
        in_i_data_9 => bb_conv1x1_B3_out_c0_exe1168,
        in_i_data_10 => bb_conv1x1_B3_out_c0_exe3170,
        in_i_data_11 => bb_conv1x1_B3_out_c0_exe4171,
        in_i_data_12 => bb_conv1x1_B3_out_c0_exe5172,
        in_i_data_13 => bb_conv1x1_B3_out_c0_exe6,
        in_i_data_14 => bb_conv1x1_B3_out_c0_exe7,
        in_i_data_15 => bb_conv1x1_B3_out_c0_exe8,
        in_i_stall => bb_conv1x1_B4_out_stall_out_1,
        in_i_valid => loop_limiter_conv1x13_out_o_valid,
        out_o_data_0 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_14,
        out_o_data_15 => bb_conv1x1_B4_sr_1_aunroll_x_out_o_data_15,
        out_o_stall => bb_conv1x1_B4_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B4_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv1x13(BLACKBOX,108)
    theloop_limiter_conv1x13 : loop_limiter_conv1x13
    PORT MAP (
        in_i_stall => bb_conv1x1_B4_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv1x1_B5_sr_0_aunroll_x_out_o_stall,
        in_i_valid => bb_conv1x1_B3_out_valid_out_0,
        in_i_valid_exit => bb_conv1x1_B4_out_valid_out_0,
        out_o_stall => loop_limiter_conv1x13_out_o_stall,
        out_o_valid => loop_limiter_conv1x13_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B3(BLACKBOX,28)
    thebb_conv1x1_B3 : bb_conv1x1_B3
    PORT MAP (
        in_c0_exe16_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_0,
        in_c0_exe361_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_6,
        in_c0_exe463_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_7,
        in_c1_exe115466_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_8,
        in_c1_exe116_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_1,
        in_c2_exe125_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_2,
        in_c3_exe133_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_3,
        in_c3_exe241_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_4,
        in_filter_weight => in_arg_filter_weight,
        in_flush => in_start,
        in_input_channels => in_arg_input_channels,
        in_input_im => in_arg_input_im,
        in_input_size => in_arg_input_size,
        in_j_01052_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_5,
        in_output_im => in_arg_output_im,
        in_output_size => in_arg_output_size,
        in_pad => in_arg_pad,
        in_stall_in_0 => loop_limiter_conv1x13_out_o_stall,
        in_stride => in_arg_stride,
        in_unnamed_conv1x13_avm_readdata => in_unnamed_conv1x13_avm_readdata,
        in_unnamed_conv1x13_avm_readdatavalid => in_unnamed_conv1x13_avm_readdatavalid,
        in_unnamed_conv1x13_avm_waitrequest => in_unnamed_conv1x13_avm_waitrequest,
        in_unnamed_conv1x13_avm_writeack => in_unnamed_conv1x13_avm_writeack,
        in_valid_in_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_valid,
        out_c0_exe1168 => bb_conv1x1_B3_out_c0_exe1168,
        out_c0_exe16 => bb_conv1x1_B3_out_c0_exe16,
        out_c0_exe3170 => bb_conv1x1_B3_out_c0_exe3170,
        out_c0_exe361 => bb_conv1x1_B3_out_c0_exe361,
        out_c0_exe4171 => bb_conv1x1_B3_out_c0_exe4171,
        out_c0_exe5172 => bb_conv1x1_B3_out_c0_exe5172,
        out_c0_exe6 => bb_conv1x1_B3_out_c0_exe6,
        out_c0_exe7 => bb_conv1x1_B3_out_c0_exe7,
        out_c0_exe8 => bb_conv1x1_B3_out_c0_exe8,
        out_c1_exe116 => bb_conv1x1_B3_out_c1_exe116,
        out_c2_exe125 => bb_conv1x1_B3_out_c2_exe125,
        out_c3_exe133 => bb_conv1x1_B3_out_c3_exe133,
        out_c3_exe241 => bb_conv1x1_B3_out_c3_exe241,
        out_j_01052 => bb_conv1x1_B3_out_j_01052,
        out_lsu_unnamed_conv1x13_o_active => bb_conv1x1_B3_out_lsu_unnamed_conv1x13_o_active,
        out_stall_out_0 => bb_conv1x1_B3_out_stall_out_0,
        out_unnamed_conv1x13_avm_address => bb_conv1x1_B3_out_unnamed_conv1x13_avm_address,
        out_unnamed_conv1x13_avm_burstcount => bb_conv1x1_B3_out_unnamed_conv1x13_avm_burstcount,
        out_unnamed_conv1x13_avm_byteenable => bb_conv1x1_B3_out_unnamed_conv1x13_avm_byteenable,
        out_unnamed_conv1x13_avm_enable => bb_conv1x1_B3_out_unnamed_conv1x13_avm_enable,
        out_unnamed_conv1x13_avm_read => bb_conv1x1_B3_out_unnamed_conv1x13_avm_read,
        out_unnamed_conv1x13_avm_write => bb_conv1x1_B3_out_unnamed_conv1x13_avm_write,
        out_unnamed_conv1x13_avm_writedata => bb_conv1x1_B3_out_unnamed_conv1x13_avm_writedata,
        out_valid_out_0 => bb_conv1x1_B3_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B3_sr_0_aunroll_x(BLACKBOX,7)
    thebb_conv1x1_B3_sr_0_aunroll_x : bb_conv1x1_B3_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv1x1_B2_out_c0_exe17,
        in_i_data_1 => bb_conv1x1_B2_out_c1_exe117,
        in_i_data_2 => bb_conv1x1_B2_out_c2_exe126,
        in_i_data_3 => bb_conv1x1_B2_out_c3_exe134,
        in_i_data_4 => bb_conv1x1_B2_out_c3_exe242,
        in_i_data_5 => bb_conv1x1_B2_out_j_01053,
        in_i_data_6 => bb_conv1x1_B2_out_c0_exe362,
        in_i_data_7 => bb_conv1x1_B2_out_c0_exe464,
        in_i_data_8 => bb_conv1x1_B2_out_c1_exe1154,
        in_i_stall => bb_conv1x1_B3_out_stall_out_0,
        in_i_valid => bb_conv1x1_B2_out_valid_out_0,
        out_o_data_0 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B3_sr_0_aunroll_x_out_o_data_8,
        out_o_stall => bb_conv1x1_B3_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B3_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B2_sr_1_aunroll_x(BLACKBOX,6)
    thebb_conv1x1_B2_sr_1_aunroll_x : bb_conv1x1_B2_sr_1
    PORT MAP (
        in_i_data_0 => dupName_0_c_i32_0gr_x_q,
        in_i_data_1 => dupName_0_c_float_0_000000e_00_x_q,
        in_i_data_2 => bb_conv1x1_B1_out_c0_exe18,
        in_i_data_3 => bb_conv1x1_B1_out_c1_exe118,
        in_i_data_4 => bb_conv1x1_B1_out_c2_exe127,
        in_i_data_5 => bb_conv1x1_B1_out_c3_exe135,
        in_i_data_6 => bb_conv1x1_B1_out_c3_exe243,
        in_i_data_7 => bb_conv1x1_B1_out_j_010,
        in_i_data_8 => bb_conv1x1_B1_out_c0_exe1140,
        in_i_data_9 => bb_conv1x1_B1_out_c0_exe2,
        in_i_data_10 => bb_conv1x1_B1_out_c0_exe3,
        in_i_data_11 => bb_conv1x1_B1_out_c0_exe4,
        in_i_data_12 => bb_conv1x1_B1_out_c0_exe5,
        in_i_stall => bb_conv1x1_B2_out_stall_out_1,
        in_i_valid => loop_limiter_conv1x14_out_o_valid,
        out_o_data_0 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv1x1_B2_sr_1_aunroll_x_out_o_data_12,
        out_o_stall => bb_conv1x1_B2_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B2_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv1x14(BLACKBOX,109)
    theloop_limiter_conv1x14 : loop_limiter_conv1x14
    PORT MAP (
        in_i_stall => bb_conv1x1_B2_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv1x1_B3_sr_0_aunroll_x_out_o_stall,
        in_i_valid => bb_conv1x1_B1_out_valid_out_0,
        in_i_valid_exit => bb_conv1x1_B2_out_valid_out_0,
        out_o_stall => loop_limiter_conv1x14_out_o_stall,
        out_o_valid => loop_limiter_conv1x14_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv1x10(BLACKBOX,105)
    theloop_limiter_conv1x10 : loop_limiter_conv1x10
    PORT MAP (
        in_i_stall => bb_conv1x1_B1_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv1x1_B10_sr_0_aunroll_x_out_o_stall,
        in_i_valid => bb_conv1x1_B0_out_valid_out_0,
        in_i_valid_exit => bb_conv1x1_B9_out_valid_out_1,
        out_o_stall => loop_limiter_conv1x10_out_o_stall,
        out_o_valid => loop_limiter_conv1x10_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B0(BLACKBOX,24)
    thebb_conv1x1_B0 : bb_conv1x1_B0
    PORT MAP (
        in_filter_weight => in_arg_filter_weight,
        in_global_id_0_0 => in_arg_global_id_0,
        in_global_id_1_0 => in_arg_global_id_1,
        in_input_channels => in_arg_input_channels,
        in_input_im => in_arg_input_im,
        in_input_size => in_arg_input_size,
        in_output_im => in_arg_output_im,
        in_output_size => in_arg_output_size,
        in_pad => in_arg_pad,
        in_stall_in_0 => loop_limiter_conv1x10_out_o_stall,
        in_stride => in_arg_stride,
        in_valid_in_0 => in_valid_in,
        out_c0_exe1 => bb_conv1x1_B0_out_c0_exe1,
        out_c1_exe1 => bb_conv1x1_B0_out_c1_exe1,
        out_c2_exe1 => bb_conv1x1_B0_out_c2_exe1,
        out_c3_exe1 => bb_conv1x1_B0_out_c3_exe1,
        out_c3_exe2 => bb_conv1x1_B0_out_c3_exe2,
        out_stall_out_0 => bb_conv1x1_B0_out_stall_out_0,
        out_valid_out_0 => bb_conv1x1_B0_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B1_sr_1_aunroll_x(BLACKBOX,4)
    thebb_conv1x1_B1_sr_1_aunroll_x : bb_conv1x1_B1_sr_1
    PORT MAP (
        in_i_data_0 => dupName_0_c_i32_0gr_x_q,
        in_i_data_1 => bb_conv1x1_B0_out_c0_exe1,
        in_i_data_2 => bb_conv1x1_B0_out_c1_exe1,
        in_i_data_3 => bb_conv1x1_B0_out_c2_exe1,
        in_i_data_4 => bb_conv1x1_B0_out_c3_exe1,
        in_i_data_5 => bb_conv1x1_B0_out_c3_exe2,
        in_i_stall => bb_conv1x1_B1_out_stall_out_1,
        in_i_valid => loop_limiter_conv1x10_out_o_valid,
        out_o_data_0 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_5,
        out_o_stall => bb_conv1x1_B1_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B1_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B1(BLACKBOX,25)
    thebb_conv1x1_B1 : bb_conv1x1_B1
    PORT MAP (
        in_c0_exe18_0 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_1,
        in_c0_exe18_1 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_1,
        in_c1_exe118_0 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_2,
        in_c1_exe118_1 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_2,
        in_c2_exe127_0 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_3,
        in_c2_exe127_1 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_3,
        in_c3_exe135_0 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_4,
        in_c3_exe135_1 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_4,
        in_c3_exe243_0 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_5,
        in_c3_exe243_1 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_5,
        in_filter_weight => in_arg_filter_weight,
        in_input_channels => in_arg_input_channels,
        in_input_im => in_arg_input_im,
        in_input_size => in_arg_input_size,
        in_j_010_0 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_0,
        in_j_010_1 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_data_0,
        in_output_im => in_arg_output_im,
        in_output_size => in_arg_output_size,
        in_pad => in_arg_pad,
        in_stall_in_0 => loop_limiter_conv1x14_out_o_stall,
        in_stride => in_arg_stride,
        in_valid_in_0 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_valid,
        in_valid_in_1 => bb_conv1x1_B1_sr_1_aunroll_x_out_o_valid,
        out_c0_exe1140 => bb_conv1x1_B1_out_c0_exe1140,
        out_c0_exe18 => bb_conv1x1_B1_out_c0_exe18,
        out_c0_exe2 => bb_conv1x1_B1_out_c0_exe2,
        out_c0_exe3 => bb_conv1x1_B1_out_c0_exe3,
        out_c0_exe4 => bb_conv1x1_B1_out_c0_exe4,
        out_c0_exe5 => bb_conv1x1_B1_out_c0_exe5,
        out_c1_exe118 => bb_conv1x1_B1_out_c1_exe118,
        out_c2_exe127 => bb_conv1x1_B1_out_c2_exe127,
        out_c3_exe135 => bb_conv1x1_B1_out_c3_exe135,
        out_c3_exe243 => bb_conv1x1_B1_out_c3_exe243,
        out_j_010 => bb_conv1x1_B1_out_j_010,
        out_stall_out_0 => bb_conv1x1_B1_out_stall_out_0,
        out_stall_out_1 => bb_conv1x1_B1_out_stall_out_1,
        out_valid_out_0 => bb_conv1x1_B1_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B1_sr_0_aunroll_x(BLACKBOX,3)
    thebb_conv1x1_B1_sr_0_aunroll_x : bb_conv1x1_B1_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv1x1_B9_out_c0_exe2295,
        in_i_data_1 => bb_conv1x1_B9_out_c0_exe19,
        in_i_data_2 => bb_conv1x1_B9_out_c1_exe110,
        in_i_data_3 => bb_conv1x1_B9_out_c2_exe119,
        in_i_data_4 => bb_conv1x1_B9_out_c3_exe136,
        in_i_data_5 => bb_conv1x1_B9_out_c3_exe244,
        in_i_stall => bb_conv1x1_B1_out_stall_out_0,
        in_i_valid => bb_conv1x1_B9_out_valid_out_0,
        out_o_data_0 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_data_5,
        out_o_stall => bb_conv1x1_B1_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B1_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B9(BLACKBOX,34)
    thebb_conv1x1_B9 : bb_conv1x1_B9
    PORT MAP (
        in_c0_exe116867_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_6,
        in_c0_exe1254105_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_11,
        in_c0_exe19_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_0,
        in_c0_exe221293_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_9,
        in_c0_exe2255107_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_12,
        in_c0_exe321397_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_10,
        in_c0_exe417175_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_7,
        in_c0_exe517281_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_8,
        in_c1_exe110_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_1,
        in_c1_exe1280112_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_13,
        in_c2_exe119_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_2,
        in_c3_exe136_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_3,
        in_c3_exe244_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_4,
        in_filter_weight => in_arg_filter_weight,
        in_flush => in_start,
        in_input_channels => in_arg_input_channels,
        in_input_im => in_arg_input_im,
        in_input_size => in_arg_input_size,
        in_j_01046_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_5,
        in_output_im => in_arg_output_im,
        in_output_size => in_arg_output_size,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv1x1_B1_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => bb_conv1x1_B10_sr_0_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_unnamed_conv1x115_avm_readdata => in_unnamed_conv1x115_avm_readdata,
        in_unnamed_conv1x115_avm_readdatavalid => in_unnamed_conv1x115_avm_readdatavalid,
        in_unnamed_conv1x115_avm_waitrequest => in_unnamed_conv1x115_avm_waitrequest,
        in_unnamed_conv1x115_avm_writeack => in_unnamed_conv1x115_avm_writeack,
        in_valid_in_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_valid,
        out_c0_exe19 => bb_conv1x1_B9_out_c0_exe19,
        out_c0_exe2295 => bb_conv1x1_B9_out_c0_exe2295,
        out_c1_exe110 => bb_conv1x1_B9_out_c1_exe110,
        out_c2_exe119 => bb_conv1x1_B9_out_c2_exe119,
        out_c3_exe136 => bb_conv1x1_B9_out_c3_exe136,
        out_c3_exe244 => bb_conv1x1_B9_out_c3_exe244,
        out_lsu_unnamed_conv1x115_o_active => bb_conv1x1_B9_out_lsu_unnamed_conv1x115_o_active,
        out_stall_out_0 => bb_conv1x1_B9_out_stall_out_0,
        out_unnamed_conv1x115_avm_address => bb_conv1x1_B9_out_unnamed_conv1x115_avm_address,
        out_unnamed_conv1x115_avm_burstcount => bb_conv1x1_B9_out_unnamed_conv1x115_avm_burstcount,
        out_unnamed_conv1x115_avm_byteenable => bb_conv1x1_B9_out_unnamed_conv1x115_avm_byteenable,
        out_unnamed_conv1x115_avm_enable => bb_conv1x1_B9_out_unnamed_conv1x115_avm_enable,
        out_unnamed_conv1x115_avm_read => bb_conv1x1_B9_out_unnamed_conv1x115_avm_read,
        out_unnamed_conv1x115_avm_write => bb_conv1x1_B9_out_unnamed_conv1x115_avm_write,
        out_unnamed_conv1x115_avm_writedata => bb_conv1x1_B9_out_unnamed_conv1x115_avm_writedata,
        out_valid_out_0 => bb_conv1x1_B9_out_valid_out_0,
        out_valid_out_1 => bb_conv1x1_B9_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B9_sr_0_aunroll_x(BLACKBOX,16)
    thebb_conv1x1_B9_sr_0_aunroll_x : bb_conv1x1_B9_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv1x1_B8_out_c0_exe11,
        in_i_data_1 => bb_conv1x1_B8_out_c1_exe111,
        in_i_data_2 => bb_conv1x1_B8_out_c2_exe120,
        in_i_data_3 => bb_conv1x1_B8_out_c3_exe128,
        in_i_data_4 => bb_conv1x1_B8_out_c3_exe245,
        in_i_data_5 => bb_conv1x1_B8_out_j_01047,
        in_i_data_6 => bb_conv1x1_B8_out_c0_exe116868,
        in_i_data_7 => bb_conv1x1_B8_out_c0_exe417176,
        in_i_data_8 => bb_conv1x1_B8_out_c0_exe517282,
        in_i_data_9 => bb_conv1x1_B8_out_c0_exe221294,
        in_i_data_10 => bb_conv1x1_B8_out_c0_exe321398,
        in_i_data_11 => bb_conv1x1_B8_out_c0_exe1254106,
        in_i_data_12 => bb_conv1x1_B8_out_c0_exe2255108,
        in_i_data_13 => bb_conv1x1_B8_out_c1_exe1280,
        in_i_stall => bb_conv1x1_B9_out_stall_out_0,
        in_i_valid => bb_conv1x1_B8_out_valid_out_0,
        out_o_data_0 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv1x1_B9_sr_0_aunroll_x_out_o_data_13,
        out_o_stall => bb_conv1x1_B9_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B9_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B8_sr_1_aunroll_x(BLACKBOX,15)
    thebb_conv1x1_B8_sr_1_aunroll_x : bb_conv1x1_B8_sr_1
    PORT MAP (
        in_i_data_0 => dupName_0_c_i32_0gr_x_q,
        in_i_data_1 => dupName_0_c_float_0_000000e_00_x_q,
        in_i_data_2 => bb_conv1x1_B7_out_c0_exe12,
        in_i_data_3 => bb_conv1x1_B7_out_c1_exe112,
        in_i_data_4 => bb_conv1x1_B7_out_c2_exe121,
        in_i_data_5 => bb_conv1x1_B7_out_c3_exe129,
        in_i_data_6 => bb_conv1x1_B7_out_c3_exe237,
        in_i_data_7 => bb_conv1x1_B7_out_j_01048,
        in_i_data_8 => bb_conv1x1_B7_out_c0_exe357,
        in_i_data_9 => bb_conv1x1_B7_out_c0_exe116869,
        in_i_data_10 => bb_conv1x1_B7_out_c0_exe417177,
        in_i_data_11 => bb_conv1x1_B7_out_c0_exe517283,
        in_i_data_12 => bb_conv1x1_B7_out_c0_exe221295,
        in_i_data_13 => bb_conv1x1_B7_out_c0_exe321399,
        in_i_data_14 => bb_conv1x1_B7_out_c0_exe1254,
        in_i_data_15 => bb_conv1x1_B7_out_c0_exe2255,
        in_i_data_16 => bb_conv1x1_B7_out_c0_exe3256,
        in_i_data_17 => bb_conv1x1_B7_out_c0_exe4257,
        in_i_data_18 => bb_conv1x1_B7_out_c0_exe5258,
        in_i_stall => bb_conv1x1_B8_out_stall_out_1,
        in_i_valid => loop_limiter_conv1x11_out_o_valid,
        out_o_data_0 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_14,
        out_o_data_15 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_15,
        out_o_data_16 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_16,
        out_o_data_17 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_17,
        out_o_data_18 => bb_conv1x1_B8_sr_1_aunroll_x_out_o_data_18,
        out_o_stall => bb_conv1x1_B8_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B8_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv1x11(BLACKBOX,106)
    theloop_limiter_conv1x11 : loop_limiter_conv1x11
    PORT MAP (
        in_i_stall => bb_conv1x1_B8_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv1x1_B9_sr_0_aunroll_x_out_o_stall,
        in_i_valid => bb_conv1x1_B7_out_valid_out_0,
        in_i_valid_exit => bb_conv1x1_B8_out_valid_out_0,
        out_o_stall => loop_limiter_conv1x11_out_o_stall,
        out_o_valid => loop_limiter_conv1x11_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B7_sr_0_aunroll_x(BLACKBOX,13)
    thebb_conv1x1_B7_sr_0_aunroll_x : bb_conv1x1_B7_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv1x1_B6_out_c0_exe13,
        in_i_data_1 => bb_conv1x1_B6_out_c1_exe113,
        in_i_data_2 => bb_conv1x1_B6_out_c2_exe122,
        in_i_data_3 => bb_conv1x1_B6_out_c3_exe130,
        in_i_data_4 => bb_conv1x1_B6_out_c3_exe238,
        in_i_data_5 => bb_conv1x1_B6_out_j_01049,
        in_i_data_6 => bb_conv1x1_B6_out_c0_exe358,
        in_i_data_7 => bb_conv1x1_B6_out_c0_exe116870,
        in_i_data_8 => bb_conv1x1_B6_out_c0_exe417178,
        in_i_data_9 => bb_conv1x1_B6_out_c0_exe517284,
        in_i_data_10 => bb_conv1x1_B6_out_c0_exe121192,
        in_i_data_11 => bb_conv1x1_B6_out_c0_exe221296,
        in_i_data_12 => bb_conv1x1_B6_out_c0_exe3213100,
        in_i_data_13 => bb_conv1x1_B6_out_c1_exe1238,
        in_i_stall => bb_conv1x1_B7_out_stall_out_0,
        in_i_valid => bb_conv1x1_B6_out_valid_out_0,
        out_o_data_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_13,
        out_o_stall => bb_conv1x1_B7_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv1x1_B7_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B7(BLACKBOX,32)
    thebb_conv1x1_B7 : bb_conv1x1_B7
    PORT MAP (
        in_c0_exe116869_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_7,
        in_c0_exe121191_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_10,
        in_c0_exe12_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_0,
        in_c0_exe221295_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_11,
        in_c0_exe321399_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_12,
        in_c0_exe357_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_6,
        in_c0_exe417177_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_8,
        in_c0_exe517283_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_9,
        in_c1_exe112_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_1,
        in_c1_exe1238104_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_13,
        in_c2_exe121_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_2,
        in_c3_exe129_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_3,
        in_c3_exe237_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_4,
        in_filter_weight => in_arg_filter_weight,
        in_flush => in_start,
        in_input_channels => in_arg_input_channels,
        in_input_im => in_arg_input_im,
        in_input_size => in_arg_input_size,
        in_j_01048_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_data_5,
        in_output_im => in_arg_output_im,
        in_output_size => in_arg_output_size,
        in_pad => in_arg_pad,
        in_stall_in_0 => loop_limiter_conv1x11_out_o_stall,
        in_stride => in_arg_stride,
        in_unnamed_conv1x111_avm_readdata => in_unnamed_conv1x111_avm_readdata,
        in_unnamed_conv1x111_avm_readdatavalid => in_unnamed_conv1x111_avm_readdatavalid,
        in_unnamed_conv1x111_avm_waitrequest => in_unnamed_conv1x111_avm_waitrequest,
        in_unnamed_conv1x111_avm_writeack => in_unnamed_conv1x111_avm_writeack,
        in_valid_in_0 => bb_conv1x1_B7_sr_0_aunroll_x_out_o_valid,
        out_c0_exe116869 => bb_conv1x1_B7_out_c0_exe116869,
        out_c0_exe12 => bb_conv1x1_B7_out_c0_exe12,
        out_c0_exe1254 => bb_conv1x1_B7_out_c0_exe1254,
        out_c0_exe221295 => bb_conv1x1_B7_out_c0_exe221295,
        out_c0_exe2255 => bb_conv1x1_B7_out_c0_exe2255,
        out_c0_exe321399 => bb_conv1x1_B7_out_c0_exe321399,
        out_c0_exe3256 => bb_conv1x1_B7_out_c0_exe3256,
        out_c0_exe357 => bb_conv1x1_B7_out_c0_exe357,
        out_c0_exe417177 => bb_conv1x1_B7_out_c0_exe417177,
        out_c0_exe4257 => bb_conv1x1_B7_out_c0_exe4257,
        out_c0_exe517283 => bb_conv1x1_B7_out_c0_exe517283,
        out_c0_exe5258 => bb_conv1x1_B7_out_c0_exe5258,
        out_c1_exe112 => bb_conv1x1_B7_out_c1_exe112,
        out_c2_exe121 => bb_conv1x1_B7_out_c2_exe121,
        out_c3_exe129 => bb_conv1x1_B7_out_c3_exe129,
        out_c3_exe237 => bb_conv1x1_B7_out_c3_exe237,
        out_j_01048 => bb_conv1x1_B7_out_j_01048,
        out_lsu_unnamed_conv1x111_o_active => bb_conv1x1_B7_out_lsu_unnamed_conv1x111_o_active,
        out_stall_out_0 => bb_conv1x1_B7_out_stall_out_0,
        out_unnamed_conv1x111_avm_address => bb_conv1x1_B7_out_unnamed_conv1x111_avm_address,
        out_unnamed_conv1x111_avm_burstcount => bb_conv1x1_B7_out_unnamed_conv1x111_avm_burstcount,
        out_unnamed_conv1x111_avm_byteenable => bb_conv1x1_B7_out_unnamed_conv1x111_avm_byteenable,
        out_unnamed_conv1x111_avm_enable => bb_conv1x1_B7_out_unnamed_conv1x111_avm_enable,
        out_unnamed_conv1x111_avm_read => bb_conv1x1_B7_out_unnamed_conv1x111_avm_read,
        out_unnamed_conv1x111_avm_write => bb_conv1x1_B7_out_unnamed_conv1x111_avm_write,
        out_unnamed_conv1x111_avm_writedata => bb_conv1x1_B7_out_unnamed_conv1x111_avm_writedata,
        out_valid_out_0 => bb_conv1x1_B7_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_o_active_unnamed_conv1x111(GPOUT,110)
    out_o_active_unnamed_conv1x111 <= bb_conv1x1_B7_out_lsu_unnamed_conv1x111_o_active;

    -- out_o_active_unnamed_conv1x115(GPOUT,111)
    out_o_active_unnamed_conv1x115 <= bb_conv1x1_B9_out_lsu_unnamed_conv1x115_o_active;

    -- out_o_active_unnamed_conv1x13(GPOUT,112)
    out_o_active_unnamed_conv1x13 <= bb_conv1x1_B3_out_lsu_unnamed_conv1x13_o_active;

    -- out_o_active_unnamed_conv1x17(GPOUT,113)
    out_o_active_unnamed_conv1x17 <= bb_conv1x1_B5_out_lsu_unnamed_conv1x17_o_active;

    -- out_stall_out(GPOUT,114)
    out_stall_out <= bb_conv1x1_B0_out_stall_out_0;

    -- out_unnamed_conv1x110_avm_address(GPOUT,115)
    out_unnamed_conv1x110_avm_address <= bb_conv1x1_B6_out_unnamed_conv1x110_avm_address;

    -- out_unnamed_conv1x110_avm_burstcount(GPOUT,116)
    out_unnamed_conv1x110_avm_burstcount <= bb_conv1x1_B6_out_unnamed_conv1x110_avm_burstcount;

    -- out_unnamed_conv1x110_avm_byteenable(GPOUT,117)
    out_unnamed_conv1x110_avm_byteenable <= bb_conv1x1_B6_out_unnamed_conv1x110_avm_byteenable;

    -- out_unnamed_conv1x110_avm_enable(GPOUT,118)
    out_unnamed_conv1x110_avm_enable <= bb_conv1x1_B6_out_unnamed_conv1x110_avm_enable;

    -- out_unnamed_conv1x110_avm_read(GPOUT,119)
    out_unnamed_conv1x110_avm_read <= bb_conv1x1_B6_out_unnamed_conv1x110_avm_read;

    -- out_unnamed_conv1x110_avm_write(GPOUT,120)
    out_unnamed_conv1x110_avm_write <= bb_conv1x1_B6_out_unnamed_conv1x110_avm_write;

    -- out_unnamed_conv1x110_avm_writedata(GPOUT,121)
    out_unnamed_conv1x110_avm_writedata <= bb_conv1x1_B6_out_unnamed_conv1x110_avm_writedata;

    -- out_unnamed_conv1x111_avm_address(GPOUT,122)
    out_unnamed_conv1x111_avm_address <= bb_conv1x1_B7_out_unnamed_conv1x111_avm_address;

    -- out_unnamed_conv1x111_avm_burstcount(GPOUT,123)
    out_unnamed_conv1x111_avm_burstcount <= bb_conv1x1_B7_out_unnamed_conv1x111_avm_burstcount;

    -- out_unnamed_conv1x111_avm_byteenable(GPOUT,124)
    out_unnamed_conv1x111_avm_byteenable <= bb_conv1x1_B7_out_unnamed_conv1x111_avm_byteenable;

    -- out_unnamed_conv1x111_avm_enable(GPOUT,125)
    out_unnamed_conv1x111_avm_enable <= bb_conv1x1_B7_out_unnamed_conv1x111_avm_enable;

    -- out_unnamed_conv1x111_avm_read(GPOUT,126)
    out_unnamed_conv1x111_avm_read <= bb_conv1x1_B7_out_unnamed_conv1x111_avm_read;

    -- out_unnamed_conv1x111_avm_write(GPOUT,127)
    out_unnamed_conv1x111_avm_write <= bb_conv1x1_B7_out_unnamed_conv1x111_avm_write;

    -- out_unnamed_conv1x111_avm_writedata(GPOUT,128)
    out_unnamed_conv1x111_avm_writedata <= bb_conv1x1_B7_out_unnamed_conv1x111_avm_writedata;

    -- out_unnamed_conv1x113_avm_address(GPOUT,129)
    out_unnamed_conv1x113_avm_address <= bb_conv1x1_B8_out_unnamed_conv1x113_avm_address;

    -- out_unnamed_conv1x113_avm_burstcount(GPOUT,130)
    out_unnamed_conv1x113_avm_burstcount <= bb_conv1x1_B8_out_unnamed_conv1x113_avm_burstcount;

    -- out_unnamed_conv1x113_avm_byteenable(GPOUT,131)
    out_unnamed_conv1x113_avm_byteenable <= bb_conv1x1_B8_out_unnamed_conv1x113_avm_byteenable;

    -- out_unnamed_conv1x113_avm_enable(GPOUT,132)
    out_unnamed_conv1x113_avm_enable <= bb_conv1x1_B8_out_unnamed_conv1x113_avm_enable;

    -- out_unnamed_conv1x113_avm_read(GPOUT,133)
    out_unnamed_conv1x113_avm_read <= bb_conv1x1_B8_out_unnamed_conv1x113_avm_read;

    -- out_unnamed_conv1x113_avm_write(GPOUT,134)
    out_unnamed_conv1x113_avm_write <= bb_conv1x1_B8_out_unnamed_conv1x113_avm_write;

    -- out_unnamed_conv1x113_avm_writedata(GPOUT,135)
    out_unnamed_conv1x113_avm_writedata <= bb_conv1x1_B8_out_unnamed_conv1x113_avm_writedata;

    -- out_unnamed_conv1x114_avm_address(GPOUT,136)
    out_unnamed_conv1x114_avm_address <= bb_conv1x1_B8_out_unnamed_conv1x114_avm_address;

    -- out_unnamed_conv1x114_avm_burstcount(GPOUT,137)
    out_unnamed_conv1x114_avm_burstcount <= bb_conv1x1_B8_out_unnamed_conv1x114_avm_burstcount;

    -- out_unnamed_conv1x114_avm_byteenable(GPOUT,138)
    out_unnamed_conv1x114_avm_byteenable <= bb_conv1x1_B8_out_unnamed_conv1x114_avm_byteenable;

    -- out_unnamed_conv1x114_avm_enable(GPOUT,139)
    out_unnamed_conv1x114_avm_enable <= bb_conv1x1_B8_out_unnamed_conv1x114_avm_enable;

    -- out_unnamed_conv1x114_avm_read(GPOUT,140)
    out_unnamed_conv1x114_avm_read <= bb_conv1x1_B8_out_unnamed_conv1x114_avm_read;

    -- out_unnamed_conv1x114_avm_write(GPOUT,141)
    out_unnamed_conv1x114_avm_write <= bb_conv1x1_B8_out_unnamed_conv1x114_avm_write;

    -- out_unnamed_conv1x114_avm_writedata(GPOUT,142)
    out_unnamed_conv1x114_avm_writedata <= bb_conv1x1_B8_out_unnamed_conv1x114_avm_writedata;

    -- out_unnamed_conv1x115_avm_address(GPOUT,143)
    out_unnamed_conv1x115_avm_address <= bb_conv1x1_B9_out_unnamed_conv1x115_avm_address;

    -- out_unnamed_conv1x115_avm_burstcount(GPOUT,144)
    out_unnamed_conv1x115_avm_burstcount <= bb_conv1x1_B9_out_unnamed_conv1x115_avm_burstcount;

    -- out_unnamed_conv1x115_avm_byteenable(GPOUT,145)
    out_unnamed_conv1x115_avm_byteenable <= bb_conv1x1_B9_out_unnamed_conv1x115_avm_byteenable;

    -- out_unnamed_conv1x115_avm_enable(GPOUT,146)
    out_unnamed_conv1x115_avm_enable <= bb_conv1x1_B9_out_unnamed_conv1x115_avm_enable;

    -- out_unnamed_conv1x115_avm_read(GPOUT,147)
    out_unnamed_conv1x115_avm_read <= bb_conv1x1_B9_out_unnamed_conv1x115_avm_read;

    -- out_unnamed_conv1x115_avm_write(GPOUT,148)
    out_unnamed_conv1x115_avm_write <= bb_conv1x1_B9_out_unnamed_conv1x115_avm_write;

    -- out_unnamed_conv1x115_avm_writedata(GPOUT,149)
    out_unnamed_conv1x115_avm_writedata <= bb_conv1x1_B9_out_unnamed_conv1x115_avm_writedata;

    -- out_unnamed_conv1x11_avm_address(GPOUT,150)
    out_unnamed_conv1x11_avm_address <= bb_conv1x1_B2_out_unnamed_conv1x11_avm_address;

    -- out_unnamed_conv1x11_avm_burstcount(GPOUT,151)
    out_unnamed_conv1x11_avm_burstcount <= bb_conv1x1_B2_out_unnamed_conv1x11_avm_burstcount;

    -- out_unnamed_conv1x11_avm_byteenable(GPOUT,152)
    out_unnamed_conv1x11_avm_byteenable <= bb_conv1x1_B2_out_unnamed_conv1x11_avm_byteenable;

    -- out_unnamed_conv1x11_avm_enable(GPOUT,153)
    out_unnamed_conv1x11_avm_enable <= bb_conv1x1_B2_out_unnamed_conv1x11_avm_enable;

    -- out_unnamed_conv1x11_avm_read(GPOUT,154)
    out_unnamed_conv1x11_avm_read <= bb_conv1x1_B2_out_unnamed_conv1x11_avm_read;

    -- out_unnamed_conv1x11_avm_write(GPOUT,155)
    out_unnamed_conv1x11_avm_write <= bb_conv1x1_B2_out_unnamed_conv1x11_avm_write;

    -- out_unnamed_conv1x11_avm_writedata(GPOUT,156)
    out_unnamed_conv1x11_avm_writedata <= bb_conv1x1_B2_out_unnamed_conv1x11_avm_writedata;

    -- out_unnamed_conv1x12_avm_address(GPOUT,157)
    out_unnamed_conv1x12_avm_address <= bb_conv1x1_B2_out_unnamed_conv1x12_avm_address;

    -- out_unnamed_conv1x12_avm_burstcount(GPOUT,158)
    out_unnamed_conv1x12_avm_burstcount <= bb_conv1x1_B2_out_unnamed_conv1x12_avm_burstcount;

    -- out_unnamed_conv1x12_avm_byteenable(GPOUT,159)
    out_unnamed_conv1x12_avm_byteenable <= bb_conv1x1_B2_out_unnamed_conv1x12_avm_byteenable;

    -- out_unnamed_conv1x12_avm_enable(GPOUT,160)
    out_unnamed_conv1x12_avm_enable <= bb_conv1x1_B2_out_unnamed_conv1x12_avm_enable;

    -- out_unnamed_conv1x12_avm_read(GPOUT,161)
    out_unnamed_conv1x12_avm_read <= bb_conv1x1_B2_out_unnamed_conv1x12_avm_read;

    -- out_unnamed_conv1x12_avm_write(GPOUT,162)
    out_unnamed_conv1x12_avm_write <= bb_conv1x1_B2_out_unnamed_conv1x12_avm_write;

    -- out_unnamed_conv1x12_avm_writedata(GPOUT,163)
    out_unnamed_conv1x12_avm_writedata <= bb_conv1x1_B2_out_unnamed_conv1x12_avm_writedata;

    -- out_unnamed_conv1x13_avm_address(GPOUT,164)
    out_unnamed_conv1x13_avm_address <= bb_conv1x1_B3_out_unnamed_conv1x13_avm_address;

    -- out_unnamed_conv1x13_avm_burstcount(GPOUT,165)
    out_unnamed_conv1x13_avm_burstcount <= bb_conv1x1_B3_out_unnamed_conv1x13_avm_burstcount;

    -- out_unnamed_conv1x13_avm_byteenable(GPOUT,166)
    out_unnamed_conv1x13_avm_byteenable <= bb_conv1x1_B3_out_unnamed_conv1x13_avm_byteenable;

    -- out_unnamed_conv1x13_avm_enable(GPOUT,167)
    out_unnamed_conv1x13_avm_enable <= bb_conv1x1_B3_out_unnamed_conv1x13_avm_enable;

    -- out_unnamed_conv1x13_avm_read(GPOUT,168)
    out_unnamed_conv1x13_avm_read <= bb_conv1x1_B3_out_unnamed_conv1x13_avm_read;

    -- out_unnamed_conv1x13_avm_write(GPOUT,169)
    out_unnamed_conv1x13_avm_write <= bb_conv1x1_B3_out_unnamed_conv1x13_avm_write;

    -- out_unnamed_conv1x13_avm_writedata(GPOUT,170)
    out_unnamed_conv1x13_avm_writedata <= bb_conv1x1_B3_out_unnamed_conv1x13_avm_writedata;

    -- out_unnamed_conv1x15_avm_address(GPOUT,171)
    out_unnamed_conv1x15_avm_address <= bb_conv1x1_B4_out_unnamed_conv1x15_avm_address;

    -- out_unnamed_conv1x15_avm_burstcount(GPOUT,172)
    out_unnamed_conv1x15_avm_burstcount <= bb_conv1x1_B4_out_unnamed_conv1x15_avm_burstcount;

    -- out_unnamed_conv1x15_avm_byteenable(GPOUT,173)
    out_unnamed_conv1x15_avm_byteenable <= bb_conv1x1_B4_out_unnamed_conv1x15_avm_byteenable;

    -- out_unnamed_conv1x15_avm_enable(GPOUT,174)
    out_unnamed_conv1x15_avm_enable <= bb_conv1x1_B4_out_unnamed_conv1x15_avm_enable;

    -- out_unnamed_conv1x15_avm_read(GPOUT,175)
    out_unnamed_conv1x15_avm_read <= bb_conv1x1_B4_out_unnamed_conv1x15_avm_read;

    -- out_unnamed_conv1x15_avm_write(GPOUT,176)
    out_unnamed_conv1x15_avm_write <= bb_conv1x1_B4_out_unnamed_conv1x15_avm_write;

    -- out_unnamed_conv1x15_avm_writedata(GPOUT,177)
    out_unnamed_conv1x15_avm_writedata <= bb_conv1x1_B4_out_unnamed_conv1x15_avm_writedata;

    -- out_unnamed_conv1x16_avm_address(GPOUT,178)
    out_unnamed_conv1x16_avm_address <= bb_conv1x1_B4_out_unnamed_conv1x16_avm_address;

    -- out_unnamed_conv1x16_avm_burstcount(GPOUT,179)
    out_unnamed_conv1x16_avm_burstcount <= bb_conv1x1_B4_out_unnamed_conv1x16_avm_burstcount;

    -- out_unnamed_conv1x16_avm_byteenable(GPOUT,180)
    out_unnamed_conv1x16_avm_byteenable <= bb_conv1x1_B4_out_unnamed_conv1x16_avm_byteenable;

    -- out_unnamed_conv1x16_avm_enable(GPOUT,181)
    out_unnamed_conv1x16_avm_enable <= bb_conv1x1_B4_out_unnamed_conv1x16_avm_enable;

    -- out_unnamed_conv1x16_avm_read(GPOUT,182)
    out_unnamed_conv1x16_avm_read <= bb_conv1x1_B4_out_unnamed_conv1x16_avm_read;

    -- out_unnamed_conv1x16_avm_write(GPOUT,183)
    out_unnamed_conv1x16_avm_write <= bb_conv1x1_B4_out_unnamed_conv1x16_avm_write;

    -- out_unnamed_conv1x16_avm_writedata(GPOUT,184)
    out_unnamed_conv1x16_avm_writedata <= bb_conv1x1_B4_out_unnamed_conv1x16_avm_writedata;

    -- out_unnamed_conv1x17_avm_address(GPOUT,185)
    out_unnamed_conv1x17_avm_address <= bb_conv1x1_B5_out_unnamed_conv1x17_avm_address;

    -- out_unnamed_conv1x17_avm_burstcount(GPOUT,186)
    out_unnamed_conv1x17_avm_burstcount <= bb_conv1x1_B5_out_unnamed_conv1x17_avm_burstcount;

    -- out_unnamed_conv1x17_avm_byteenable(GPOUT,187)
    out_unnamed_conv1x17_avm_byteenable <= bb_conv1x1_B5_out_unnamed_conv1x17_avm_byteenable;

    -- out_unnamed_conv1x17_avm_enable(GPOUT,188)
    out_unnamed_conv1x17_avm_enable <= bb_conv1x1_B5_out_unnamed_conv1x17_avm_enable;

    -- out_unnamed_conv1x17_avm_read(GPOUT,189)
    out_unnamed_conv1x17_avm_read <= bb_conv1x1_B5_out_unnamed_conv1x17_avm_read;

    -- out_unnamed_conv1x17_avm_write(GPOUT,190)
    out_unnamed_conv1x17_avm_write <= bb_conv1x1_B5_out_unnamed_conv1x17_avm_write;

    -- out_unnamed_conv1x17_avm_writedata(GPOUT,191)
    out_unnamed_conv1x17_avm_writedata <= bb_conv1x1_B5_out_unnamed_conv1x17_avm_writedata;

    -- out_unnamed_conv1x19_avm_address(GPOUT,192)
    out_unnamed_conv1x19_avm_address <= bb_conv1x1_B6_out_unnamed_conv1x19_avm_address;

    -- out_unnamed_conv1x19_avm_burstcount(GPOUT,193)
    out_unnamed_conv1x19_avm_burstcount <= bb_conv1x1_B6_out_unnamed_conv1x19_avm_burstcount;

    -- out_unnamed_conv1x19_avm_byteenable(GPOUT,194)
    out_unnamed_conv1x19_avm_byteenable <= bb_conv1x1_B6_out_unnamed_conv1x19_avm_byteenable;

    -- out_unnamed_conv1x19_avm_enable(GPOUT,195)
    out_unnamed_conv1x19_avm_enable <= bb_conv1x1_B6_out_unnamed_conv1x19_avm_enable;

    -- out_unnamed_conv1x19_avm_read(GPOUT,196)
    out_unnamed_conv1x19_avm_read <= bb_conv1x1_B6_out_unnamed_conv1x19_avm_read;

    -- out_unnamed_conv1x19_avm_write(GPOUT,197)
    out_unnamed_conv1x19_avm_write <= bb_conv1x1_B6_out_unnamed_conv1x19_avm_write;

    -- out_unnamed_conv1x19_avm_writedata(GPOUT,198)
    out_unnamed_conv1x19_avm_writedata <= bb_conv1x1_B6_out_unnamed_conv1x19_avm_writedata;

    -- out_valid_out(GPOUT,199)
    out_valid_out <= bb_conv1x1_B10_out_valid_out_0;

END normal;
