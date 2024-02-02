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

-- VHDL created from batchnorm_function
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

entity batchnorm_function is
    port (
        in_arg_bn_biases : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_bn_running_mean : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_bn_running_var : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_bn_weights : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_eps : in std_logic_vector(31 downto 0);  -- float32_m23
        in_arg_global_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_in_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_relu_type : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_start : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm1_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm2_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm2_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm3_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm3_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm4_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm4_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm5_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm5_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_active_unnamed_batchnorm5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm0_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm0_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_batchnorm0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm1_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm1_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_batchnorm1_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm1_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm2_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm2_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_batchnorm2_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm2_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm2_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm2_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm2_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm3_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm3_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_batchnorm3_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm3_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm3_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm3_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm3_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm4_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm4_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_batchnorm4_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm4_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm4_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm4_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm4_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm5_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm5_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_batchnorm5_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm5_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm5_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm5_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm5_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end batchnorm_function;

architecture normal of batchnorm_function is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_batchnorm_B0 is
        port (
            in_bn_biases : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_bn_running_mean : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_bn_running_var : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_bn_weights : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_eps : in std_logic_vector(31 downto 0);  -- Floating Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_global_id_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm1_sts_stream_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm2_sts_stream_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm3_sts_stream_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm4_sts_stream_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_relu_type : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stream_reset : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_batchnorm5_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_batchnorm_B0_out_lsu_unnamed_batchnorm5_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm1_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm1_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm1_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm1_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm2_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm2_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm2_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm2_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm3_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm3_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm3_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm3_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm3_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm3_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm3_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm4_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm4_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm4_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm4_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm4_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm4_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm4_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm5_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm5_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm5_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_batchnorm_B0_out_unnamed_batchnorm5_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_batchnorm_B0_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- bb_batchnorm_B0(BLACKBOX,2)
    thebb_batchnorm_B0 : bb_batchnorm_B0
    PORT MAP (
        in_bn_biases => in_arg_bn_biases,
        in_bn_running_mean => in_arg_bn_running_mean,
        in_bn_running_var => in_arg_bn_running_var,
        in_bn_weights => in_arg_bn_weights,
        in_eps => in_arg_eps,
        in_flush => in_start,
        in_global_id_0_0 => in_arg_global_id_0,
        in_global_id_1_0 => in_arg_global_id_1,
        in_in_data => in_arg_in_data,
        in_in_size => in_arg_in_size,
        in_lsu_unnamed_batchnorm1_sts_stream_size => in_arg_local_size_0,
        in_lsu_unnamed_batchnorm2_sts_stream_size => in_arg_local_size_0,
        in_lsu_unnamed_batchnorm3_sts_stream_size => in_arg_local_size_0,
        in_lsu_unnamed_batchnorm4_sts_stream_size => in_arg_local_size_0,
        in_out_data => in_arg_out_data,
        in_relu_type => in_arg_relu_type,
        in_stall_in_0 => in_stall_in,
        in_stream_reset => in_valid_in,
        in_unnamed_batchnorm0_avm_readdata => in_unnamed_batchnorm0_avm_readdata,
        in_unnamed_batchnorm0_avm_readdatavalid => in_unnamed_batchnorm0_avm_readdatavalid,
        in_unnamed_batchnorm0_avm_waitrequest => in_unnamed_batchnorm0_avm_waitrequest,
        in_unnamed_batchnorm0_avm_writeack => in_unnamed_batchnorm0_avm_writeack,
        in_unnamed_batchnorm1_avm_readdata => in_unnamed_batchnorm1_avm_readdata,
        in_unnamed_batchnorm1_avm_readdatavalid => in_unnamed_batchnorm1_avm_readdatavalid,
        in_unnamed_batchnorm1_avm_waitrequest => in_unnamed_batchnorm1_avm_waitrequest,
        in_unnamed_batchnorm1_avm_writeack => in_unnamed_batchnorm1_avm_writeack,
        in_unnamed_batchnorm2_avm_readdata => in_unnamed_batchnorm2_avm_readdata,
        in_unnamed_batchnorm2_avm_readdatavalid => in_unnamed_batchnorm2_avm_readdatavalid,
        in_unnamed_batchnorm2_avm_waitrequest => in_unnamed_batchnorm2_avm_waitrequest,
        in_unnamed_batchnorm2_avm_writeack => in_unnamed_batchnorm2_avm_writeack,
        in_unnamed_batchnorm3_avm_readdata => in_unnamed_batchnorm3_avm_readdata,
        in_unnamed_batchnorm3_avm_readdatavalid => in_unnamed_batchnorm3_avm_readdatavalid,
        in_unnamed_batchnorm3_avm_waitrequest => in_unnamed_batchnorm3_avm_waitrequest,
        in_unnamed_batchnorm3_avm_writeack => in_unnamed_batchnorm3_avm_writeack,
        in_unnamed_batchnorm4_avm_readdata => in_unnamed_batchnorm4_avm_readdata,
        in_unnamed_batchnorm4_avm_readdatavalid => in_unnamed_batchnorm4_avm_readdatavalid,
        in_unnamed_batchnorm4_avm_waitrequest => in_unnamed_batchnorm4_avm_waitrequest,
        in_unnamed_batchnorm4_avm_writeack => in_unnamed_batchnorm4_avm_writeack,
        in_unnamed_batchnorm5_avm_readdata => in_unnamed_batchnorm5_avm_readdata,
        in_unnamed_batchnorm5_avm_readdatavalid => in_unnamed_batchnorm5_avm_readdatavalid,
        in_unnamed_batchnorm5_avm_waitrequest => in_unnamed_batchnorm5_avm_waitrequest,
        in_unnamed_batchnorm5_avm_writeack => in_unnamed_batchnorm5_avm_writeack,
        in_valid_in_0 => in_valid_in,
        out_lsu_unnamed_batchnorm5_o_active => bb_batchnorm_B0_out_lsu_unnamed_batchnorm5_o_active,
        out_stall_out_0 => bb_batchnorm_B0_out_stall_out_0,
        out_unnamed_batchnorm0_avm_address => bb_batchnorm_B0_out_unnamed_batchnorm0_avm_address,
        out_unnamed_batchnorm0_avm_burstcount => bb_batchnorm_B0_out_unnamed_batchnorm0_avm_burstcount,
        out_unnamed_batchnorm0_avm_byteenable => bb_batchnorm_B0_out_unnamed_batchnorm0_avm_byteenable,
        out_unnamed_batchnorm0_avm_enable => bb_batchnorm_B0_out_unnamed_batchnorm0_avm_enable,
        out_unnamed_batchnorm0_avm_read => bb_batchnorm_B0_out_unnamed_batchnorm0_avm_read,
        out_unnamed_batchnorm0_avm_write => bb_batchnorm_B0_out_unnamed_batchnorm0_avm_write,
        out_unnamed_batchnorm0_avm_writedata => bb_batchnorm_B0_out_unnamed_batchnorm0_avm_writedata,
        out_unnamed_batchnorm1_avm_address => bb_batchnorm_B0_out_unnamed_batchnorm1_avm_address,
        out_unnamed_batchnorm1_avm_burstcount => bb_batchnorm_B0_out_unnamed_batchnorm1_avm_burstcount,
        out_unnamed_batchnorm1_avm_byteenable => bb_batchnorm_B0_out_unnamed_batchnorm1_avm_byteenable,
        out_unnamed_batchnorm1_avm_enable => bb_batchnorm_B0_out_unnamed_batchnorm1_avm_enable,
        out_unnamed_batchnorm1_avm_read => bb_batchnorm_B0_out_unnamed_batchnorm1_avm_read,
        out_unnamed_batchnorm1_avm_write => bb_batchnorm_B0_out_unnamed_batchnorm1_avm_write,
        out_unnamed_batchnorm1_avm_writedata => bb_batchnorm_B0_out_unnamed_batchnorm1_avm_writedata,
        out_unnamed_batchnorm2_avm_address => bb_batchnorm_B0_out_unnamed_batchnorm2_avm_address,
        out_unnamed_batchnorm2_avm_burstcount => bb_batchnorm_B0_out_unnamed_batchnorm2_avm_burstcount,
        out_unnamed_batchnorm2_avm_byteenable => bb_batchnorm_B0_out_unnamed_batchnorm2_avm_byteenable,
        out_unnamed_batchnorm2_avm_enable => bb_batchnorm_B0_out_unnamed_batchnorm2_avm_enable,
        out_unnamed_batchnorm2_avm_read => bb_batchnorm_B0_out_unnamed_batchnorm2_avm_read,
        out_unnamed_batchnorm2_avm_write => bb_batchnorm_B0_out_unnamed_batchnorm2_avm_write,
        out_unnamed_batchnorm2_avm_writedata => bb_batchnorm_B0_out_unnamed_batchnorm2_avm_writedata,
        out_unnamed_batchnorm3_avm_address => bb_batchnorm_B0_out_unnamed_batchnorm3_avm_address,
        out_unnamed_batchnorm3_avm_burstcount => bb_batchnorm_B0_out_unnamed_batchnorm3_avm_burstcount,
        out_unnamed_batchnorm3_avm_byteenable => bb_batchnorm_B0_out_unnamed_batchnorm3_avm_byteenable,
        out_unnamed_batchnorm3_avm_enable => bb_batchnorm_B0_out_unnamed_batchnorm3_avm_enable,
        out_unnamed_batchnorm3_avm_read => bb_batchnorm_B0_out_unnamed_batchnorm3_avm_read,
        out_unnamed_batchnorm3_avm_write => bb_batchnorm_B0_out_unnamed_batchnorm3_avm_write,
        out_unnamed_batchnorm3_avm_writedata => bb_batchnorm_B0_out_unnamed_batchnorm3_avm_writedata,
        out_unnamed_batchnorm4_avm_address => bb_batchnorm_B0_out_unnamed_batchnorm4_avm_address,
        out_unnamed_batchnorm4_avm_burstcount => bb_batchnorm_B0_out_unnamed_batchnorm4_avm_burstcount,
        out_unnamed_batchnorm4_avm_byteenable => bb_batchnorm_B0_out_unnamed_batchnorm4_avm_byteenable,
        out_unnamed_batchnorm4_avm_enable => bb_batchnorm_B0_out_unnamed_batchnorm4_avm_enable,
        out_unnamed_batchnorm4_avm_read => bb_batchnorm_B0_out_unnamed_batchnorm4_avm_read,
        out_unnamed_batchnorm4_avm_write => bb_batchnorm_B0_out_unnamed_batchnorm4_avm_write,
        out_unnamed_batchnorm4_avm_writedata => bb_batchnorm_B0_out_unnamed_batchnorm4_avm_writedata,
        out_unnamed_batchnorm5_avm_address => bb_batchnorm_B0_out_unnamed_batchnorm5_avm_address,
        out_unnamed_batchnorm5_avm_burstcount => bb_batchnorm_B0_out_unnamed_batchnorm5_avm_burstcount,
        out_unnamed_batchnorm5_avm_byteenable => bb_batchnorm_B0_out_unnamed_batchnorm5_avm_byteenable,
        out_unnamed_batchnorm5_avm_enable => bb_batchnorm_B0_out_unnamed_batchnorm5_avm_enable,
        out_unnamed_batchnorm5_avm_read => bb_batchnorm_B0_out_unnamed_batchnorm5_avm_read,
        out_unnamed_batchnorm5_avm_write => bb_batchnorm_B0_out_unnamed_batchnorm5_avm_write,
        out_unnamed_batchnorm5_avm_writedata => bb_batchnorm_B0_out_unnamed_batchnorm5_avm_writedata,
        out_valid_out_0 => bb_batchnorm_B0_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_o_active_unnamed_batchnorm5(GPOUT,47)
    out_o_active_unnamed_batchnorm5 <= bb_batchnorm_B0_out_lsu_unnamed_batchnorm5_o_active;

    -- out_stall_out(GPOUT,48)
    out_stall_out <= bb_batchnorm_B0_out_stall_out_0;

    -- out_unnamed_batchnorm0_avm_address(GPOUT,49)
    out_unnamed_batchnorm0_avm_address <= bb_batchnorm_B0_out_unnamed_batchnorm0_avm_address;

    -- out_unnamed_batchnorm0_avm_burstcount(GPOUT,50)
    out_unnamed_batchnorm0_avm_burstcount <= bb_batchnorm_B0_out_unnamed_batchnorm0_avm_burstcount;

    -- out_unnamed_batchnorm0_avm_byteenable(GPOUT,51)
    out_unnamed_batchnorm0_avm_byteenable <= bb_batchnorm_B0_out_unnamed_batchnorm0_avm_byteenable;

    -- out_unnamed_batchnorm0_avm_enable(GPOUT,52)
    out_unnamed_batchnorm0_avm_enable <= bb_batchnorm_B0_out_unnamed_batchnorm0_avm_enable;

    -- out_unnamed_batchnorm0_avm_read(GPOUT,53)
    out_unnamed_batchnorm0_avm_read <= bb_batchnorm_B0_out_unnamed_batchnorm0_avm_read;

    -- out_unnamed_batchnorm0_avm_write(GPOUT,54)
    out_unnamed_batchnorm0_avm_write <= bb_batchnorm_B0_out_unnamed_batchnorm0_avm_write;

    -- out_unnamed_batchnorm0_avm_writedata(GPOUT,55)
    out_unnamed_batchnorm0_avm_writedata <= bb_batchnorm_B0_out_unnamed_batchnorm0_avm_writedata;

    -- out_unnamed_batchnorm1_avm_address(GPOUT,56)
    out_unnamed_batchnorm1_avm_address <= bb_batchnorm_B0_out_unnamed_batchnorm1_avm_address;

    -- out_unnamed_batchnorm1_avm_burstcount(GPOUT,57)
    out_unnamed_batchnorm1_avm_burstcount <= bb_batchnorm_B0_out_unnamed_batchnorm1_avm_burstcount;

    -- out_unnamed_batchnorm1_avm_byteenable(GPOUT,58)
    out_unnamed_batchnorm1_avm_byteenable <= bb_batchnorm_B0_out_unnamed_batchnorm1_avm_byteenable;

    -- out_unnamed_batchnorm1_avm_enable(GPOUT,59)
    out_unnamed_batchnorm1_avm_enable <= bb_batchnorm_B0_out_unnamed_batchnorm1_avm_enable;

    -- out_unnamed_batchnorm1_avm_read(GPOUT,60)
    out_unnamed_batchnorm1_avm_read <= bb_batchnorm_B0_out_unnamed_batchnorm1_avm_read;

    -- out_unnamed_batchnorm1_avm_write(GPOUT,61)
    out_unnamed_batchnorm1_avm_write <= bb_batchnorm_B0_out_unnamed_batchnorm1_avm_write;

    -- out_unnamed_batchnorm1_avm_writedata(GPOUT,62)
    out_unnamed_batchnorm1_avm_writedata <= bb_batchnorm_B0_out_unnamed_batchnorm1_avm_writedata;

    -- out_unnamed_batchnorm2_avm_address(GPOUT,63)
    out_unnamed_batchnorm2_avm_address <= bb_batchnorm_B0_out_unnamed_batchnorm2_avm_address;

    -- out_unnamed_batchnorm2_avm_burstcount(GPOUT,64)
    out_unnamed_batchnorm2_avm_burstcount <= bb_batchnorm_B0_out_unnamed_batchnorm2_avm_burstcount;

    -- out_unnamed_batchnorm2_avm_byteenable(GPOUT,65)
    out_unnamed_batchnorm2_avm_byteenable <= bb_batchnorm_B0_out_unnamed_batchnorm2_avm_byteenable;

    -- out_unnamed_batchnorm2_avm_enable(GPOUT,66)
    out_unnamed_batchnorm2_avm_enable <= bb_batchnorm_B0_out_unnamed_batchnorm2_avm_enable;

    -- out_unnamed_batchnorm2_avm_read(GPOUT,67)
    out_unnamed_batchnorm2_avm_read <= bb_batchnorm_B0_out_unnamed_batchnorm2_avm_read;

    -- out_unnamed_batchnorm2_avm_write(GPOUT,68)
    out_unnamed_batchnorm2_avm_write <= bb_batchnorm_B0_out_unnamed_batchnorm2_avm_write;

    -- out_unnamed_batchnorm2_avm_writedata(GPOUT,69)
    out_unnamed_batchnorm2_avm_writedata <= bb_batchnorm_B0_out_unnamed_batchnorm2_avm_writedata;

    -- out_unnamed_batchnorm3_avm_address(GPOUT,70)
    out_unnamed_batchnorm3_avm_address <= bb_batchnorm_B0_out_unnamed_batchnorm3_avm_address;

    -- out_unnamed_batchnorm3_avm_burstcount(GPOUT,71)
    out_unnamed_batchnorm3_avm_burstcount <= bb_batchnorm_B0_out_unnamed_batchnorm3_avm_burstcount;

    -- out_unnamed_batchnorm3_avm_byteenable(GPOUT,72)
    out_unnamed_batchnorm3_avm_byteenable <= bb_batchnorm_B0_out_unnamed_batchnorm3_avm_byteenable;

    -- out_unnamed_batchnorm3_avm_enable(GPOUT,73)
    out_unnamed_batchnorm3_avm_enable <= bb_batchnorm_B0_out_unnamed_batchnorm3_avm_enable;

    -- out_unnamed_batchnorm3_avm_read(GPOUT,74)
    out_unnamed_batchnorm3_avm_read <= bb_batchnorm_B0_out_unnamed_batchnorm3_avm_read;

    -- out_unnamed_batchnorm3_avm_write(GPOUT,75)
    out_unnamed_batchnorm3_avm_write <= bb_batchnorm_B0_out_unnamed_batchnorm3_avm_write;

    -- out_unnamed_batchnorm3_avm_writedata(GPOUT,76)
    out_unnamed_batchnorm3_avm_writedata <= bb_batchnorm_B0_out_unnamed_batchnorm3_avm_writedata;

    -- out_unnamed_batchnorm4_avm_address(GPOUT,77)
    out_unnamed_batchnorm4_avm_address <= bb_batchnorm_B0_out_unnamed_batchnorm4_avm_address;

    -- out_unnamed_batchnorm4_avm_burstcount(GPOUT,78)
    out_unnamed_batchnorm4_avm_burstcount <= bb_batchnorm_B0_out_unnamed_batchnorm4_avm_burstcount;

    -- out_unnamed_batchnorm4_avm_byteenable(GPOUT,79)
    out_unnamed_batchnorm4_avm_byteenable <= bb_batchnorm_B0_out_unnamed_batchnorm4_avm_byteenable;

    -- out_unnamed_batchnorm4_avm_enable(GPOUT,80)
    out_unnamed_batchnorm4_avm_enable <= bb_batchnorm_B0_out_unnamed_batchnorm4_avm_enable;

    -- out_unnamed_batchnorm4_avm_read(GPOUT,81)
    out_unnamed_batchnorm4_avm_read <= bb_batchnorm_B0_out_unnamed_batchnorm4_avm_read;

    -- out_unnamed_batchnorm4_avm_write(GPOUT,82)
    out_unnamed_batchnorm4_avm_write <= bb_batchnorm_B0_out_unnamed_batchnorm4_avm_write;

    -- out_unnamed_batchnorm4_avm_writedata(GPOUT,83)
    out_unnamed_batchnorm4_avm_writedata <= bb_batchnorm_B0_out_unnamed_batchnorm4_avm_writedata;

    -- out_unnamed_batchnorm5_avm_address(GPOUT,84)
    out_unnamed_batchnorm5_avm_address <= bb_batchnorm_B0_out_unnamed_batchnorm5_avm_address;

    -- out_unnamed_batchnorm5_avm_burstcount(GPOUT,85)
    out_unnamed_batchnorm5_avm_burstcount <= bb_batchnorm_B0_out_unnamed_batchnorm5_avm_burstcount;

    -- out_unnamed_batchnorm5_avm_byteenable(GPOUT,86)
    out_unnamed_batchnorm5_avm_byteenable <= bb_batchnorm_B0_out_unnamed_batchnorm5_avm_byteenable;

    -- out_unnamed_batchnorm5_avm_enable(GPOUT,87)
    out_unnamed_batchnorm5_avm_enable <= bb_batchnorm_B0_out_unnamed_batchnorm5_avm_enable;

    -- out_unnamed_batchnorm5_avm_read(GPOUT,88)
    out_unnamed_batchnorm5_avm_read <= bb_batchnorm_B0_out_unnamed_batchnorm5_avm_read;

    -- out_unnamed_batchnorm5_avm_write(GPOUT,89)
    out_unnamed_batchnorm5_avm_write <= bb_batchnorm_B0_out_unnamed_batchnorm5_avm_write;

    -- out_unnamed_batchnorm5_avm_writedata(GPOUT,90)
    out_unnamed_batchnorm5_avm_writedata <= bb_batchnorm_B0_out_unnamed_batchnorm5_avm_writedata;

    -- out_valid_out(GPOUT,91)
    out_valid_out <= bb_batchnorm_B0_out_valid_out_0;

END normal;
