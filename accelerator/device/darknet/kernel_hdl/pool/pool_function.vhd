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

-- VHDL created from pool_function
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

entity pool_function is
    port (
        in_arg_global_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_in_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_kernel_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_out_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_pool_type : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_start : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool3_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_pool3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool3_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool5_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_pool5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool5_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_active_unnamed_pool5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_pool3_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_pool3_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_pool3_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_pool5_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_pool5_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_pool5_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_pool5_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool5_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool5_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool5_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end pool_function;

architecture normal of pool_function is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_pool_B1_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_pool_B1_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_pool_B2_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_10 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_pool_B2_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_10 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_pool_B3_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_data_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_data_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_pool_B4_sr_0 is
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


    component bb_pool_B0 is
        port (
            in_global_id_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_kernel_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pool_type : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_2 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_pool_B1 is
        port (
            in_c0_exe12_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe12_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe26_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe26_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe38_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe38_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe411_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe411_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe113_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe116_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe116_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp620_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_cmp620_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_17_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_col_17_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_kernel_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_09_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_09_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp_224_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_224_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe113 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe411 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe113 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe119 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe116 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe125 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp620 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_17 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_row_09 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_224 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_pool_B2 is
        port (
            in_c0_exe11330_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe11330_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe11_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe11_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe25_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe25_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe37_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe37_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe410_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe410_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe115_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe115_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe11931_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe11931_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe118_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe118_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe12532_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe12532_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp619_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_cmp619_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_1728_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_col_1728_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_25_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_25_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_kernel_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_0926_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_0926_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp_223_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_223_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_34_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_34_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_pool3_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_pool3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool3_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe11330 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe25 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe37 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe410 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe115 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe11931 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe141 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe118 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe12532 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp619 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_1728 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_inc : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_row_0926 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_223 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_unnamed_pool1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_pool_B3 is
        port (
            in_c0_exe11329_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe13_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe24_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe39_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe412_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe14133_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe117_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp621_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_1727_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_kernel_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_0925_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp_222_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_pool4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe412 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe114 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe117 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp621 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_17_LC_InnerPHI : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_lsu_unnamed_pool5_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_row_09_LC_OuterPHI : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_222 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_unnamed_pool5_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_pool_B4 is
        port (
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component loop_limiter_pool0 is
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


    component loop_limiter_pool1 is
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
    signal bb_pool_B1_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B4_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B4_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_c_i32_0gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B0_out_c0_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B0_out_c0_exe2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B0_out_c0_exe3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B0_out_c0_exe4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B0_out_c1_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B0_out_c2_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B0_out_cmp6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B0_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B0_out_tmp_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B0_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_out_c0_exe113 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_out_c0_exe12 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_out_c0_exe26 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_out_c0_exe38 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_out_c0_exe411 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_out_c1_exe113 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_out_c1_exe119 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_out_c2_exe116 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_out_c2_exe125 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_out_cmp620 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_out_col_17 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_out_row_09 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B1_out_tmp_224 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B1_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_c0_exe11 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_c0_exe11330 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_c0_exe25 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_c0_exe37 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_c0_exe410 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_c1_exe115 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_c1_exe11931 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_c1_exe141 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_c2_exe118 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_c2_exe12532 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_cmp619 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_col_1728 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_inc : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_row_0926 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_tmp_223 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_unnamed_pool1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_unnamed_pool3_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_pool_B2_out_unnamed_pool3_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_pool_B2_out_unnamed_pool3_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_out_unnamed_pool3_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_unnamed_pool3_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_unnamed_pool3_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_unnamed_pool3_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_pool_B2_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_c0_exe13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_out_c0_exe24 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_c0_exe39 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_c0_exe412 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_c1_exe114 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_out_c2_exe117 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_out_cmp621 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_col_17_LC_InnerPHI : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_out_lsu_unnamed_pool5_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_row_09_LC_OuterPHI : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_tmp_222 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_out_unnamed_pool5_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_pool_B3_out_unnamed_pool5_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_pool_B3_out_unnamed_pool5_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_out_unnamed_pool5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_unnamed_pool5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_unnamed_pool5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_unnamed_pool5_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_pool_B3_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B4_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B4_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_pool0_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_pool0_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_pool1_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_pool1_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- bb_pool_B2_sr_0_aunroll_x(BLACKBOX,4)
    thebb_pool_B2_sr_0_aunroll_x : bb_pool_B2_sr_0
    PORT MAP (
        in_i_data_0 => bb_pool_B2_out_inc,
        in_i_data_1 => bb_pool_B2_out_c1_exe141,
        in_i_data_2 => bb_pool_B2_out_c0_exe11,
        in_i_data_3 => bb_pool_B2_out_c0_exe25,
        in_i_data_4 => bb_pool_B2_out_c0_exe37,
        in_i_data_5 => bb_pool_B2_out_c0_exe410,
        in_i_data_6 => bb_pool_B2_out_c1_exe115,
        in_i_data_7 => bb_pool_B2_out_c2_exe118,
        in_i_data_8 => bb_pool_B2_out_cmp619,
        in_i_data_9 => bb_pool_B2_out_tmp_223,
        in_i_data_10 => bb_pool_B2_out_row_0926,
        in_i_data_11 => bb_pool_B2_out_col_1728,
        in_i_data_12 => bb_pool_B2_out_c0_exe11330,
        in_i_data_13 => bb_pool_B2_out_c1_exe11931,
        in_i_data_14 => bb_pool_B2_out_c2_exe12532,
        in_i_stall => bb_pool_B2_out_stall_out_0,
        in_i_valid => bb_pool_B2_out_valid_out_1,
        out_o_data_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_pool_B2_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_pool_B2_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_pool_B2_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_pool_B2_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_pool_B2_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_pool_B2_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_pool_B2_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_pool_B2_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_pool_B2_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_pool_B2_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_pool_B2_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_pool_B2_sr_0_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_pool_B2_sr_0_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_pool_B2_sr_0_aunroll_x_out_o_data_14,
        out_o_stall => bb_pool_B2_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_pool_B2_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B2(BLACKBOX,12)
    thebb_pool_B2 : bb_pool_B2
    PORT MAP (
        in_c0_exe11330_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_12,
        in_c0_exe11330_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_12,
        in_c0_exe11_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_2,
        in_c0_exe11_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_2,
        in_c0_exe25_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_3,
        in_c0_exe25_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_3,
        in_c0_exe37_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_4,
        in_c0_exe37_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_4,
        in_c0_exe410_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_5,
        in_c0_exe410_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_5,
        in_c1_exe115_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_6,
        in_c1_exe115_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_6,
        in_c1_exe11931_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_13,
        in_c1_exe11931_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_13,
        in_c2_exe118_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_7,
        in_c2_exe118_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_7,
        in_c2_exe12532_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_14,
        in_c2_exe12532_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_14,
        in_cmp619_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_8,
        in_cmp619_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_8,
        in_col_1728_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_11,
        in_col_1728_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_11,
        in_flush => in_start,
        in_i_25_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_0,
        in_i_25_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_0,
        in_in_data => in_arg_in_data,
        in_in_size => in_arg_in_size,
        in_kernel_size => in_arg_kernel_size,
        in_out_data => in_arg_out_data,
        in_out_size => in_arg_out_size,
        in_row_0926_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_10,
        in_row_0926_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_10,
        in_stall_in_0 => bb_pool_B3_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => bb_pool_B2_sr_0_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_tmp_223_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_9,
        in_tmp_223_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_9,
        in_tmp_34_0 => bb_pool_B2_sr_0_aunroll_x_out_o_data_1,
        in_tmp_34_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_pool3_avm_readdata => in_unnamed_pool3_avm_readdata,
        in_unnamed_pool3_avm_readdatavalid => in_unnamed_pool3_avm_readdatavalid,
        in_unnamed_pool3_avm_waitrequest => in_unnamed_pool3_avm_waitrequest,
        in_unnamed_pool3_avm_writeack => in_unnamed_pool3_avm_writeack,
        in_valid_in_0 => bb_pool_B2_sr_0_aunroll_x_out_o_valid,
        in_valid_in_1 => bb_pool_B2_sr_1_aunroll_x_out_o_valid,
        out_c0_exe11 => bb_pool_B2_out_c0_exe11,
        out_c0_exe11330 => bb_pool_B2_out_c0_exe11330,
        out_c0_exe25 => bb_pool_B2_out_c0_exe25,
        out_c0_exe37 => bb_pool_B2_out_c0_exe37,
        out_c0_exe410 => bb_pool_B2_out_c0_exe410,
        out_c1_exe115 => bb_pool_B2_out_c1_exe115,
        out_c1_exe11931 => bb_pool_B2_out_c1_exe11931,
        out_c1_exe141 => bb_pool_B2_out_c1_exe141,
        out_c2_exe118 => bb_pool_B2_out_c2_exe118,
        out_c2_exe12532 => bb_pool_B2_out_c2_exe12532,
        out_cmp619 => bb_pool_B2_out_cmp619,
        out_col_1728 => bb_pool_B2_out_col_1728,
        out_inc => bb_pool_B2_out_inc,
        out_row_0926 => bb_pool_B2_out_row_0926,
        out_stall_out_0 => bb_pool_B2_out_stall_out_0,
        out_stall_out_1 => bb_pool_B2_out_stall_out_1,
        out_tmp_223 => bb_pool_B2_out_tmp_223,
        out_unnamed_pool1 => bb_pool_B2_out_unnamed_pool1,
        out_unnamed_pool3_avm_address => bb_pool_B2_out_unnamed_pool3_avm_address,
        out_unnamed_pool3_avm_burstcount => bb_pool_B2_out_unnamed_pool3_avm_burstcount,
        out_unnamed_pool3_avm_byteenable => bb_pool_B2_out_unnamed_pool3_avm_byteenable,
        out_unnamed_pool3_avm_enable => bb_pool_B2_out_unnamed_pool3_avm_enable,
        out_unnamed_pool3_avm_read => bb_pool_B2_out_unnamed_pool3_avm_read,
        out_unnamed_pool3_avm_write => bb_pool_B2_out_unnamed_pool3_avm_write,
        out_unnamed_pool3_avm_writedata => bb_pool_B2_out_unnamed_pool3_avm_writedata,
        out_valid_out_0 => bb_pool_B2_out_valid_out_0,
        out_valid_out_1 => bb_pool_B2_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_c_i32_0gr_x(CONSTANT,8)
    dupName_0_c_i32_0gr_x_q <= "00000000000000000000000000000000";

    -- bb_pool_B2_sr_1_aunroll_x(BLACKBOX,5)
    thebb_pool_B2_sr_1_aunroll_x : bb_pool_B2_sr_1
    PORT MAP (
        in_i_data_0 => dupName_0_c_i32_0gr_x_q,
        in_i_data_1 => bb_pool_B1_out_tmp_224,
        in_i_data_2 => bb_pool_B1_out_c0_exe12,
        in_i_data_3 => bb_pool_B1_out_c0_exe26,
        in_i_data_4 => bb_pool_B1_out_c0_exe38,
        in_i_data_5 => bb_pool_B1_out_c0_exe411,
        in_i_data_6 => bb_pool_B1_out_c1_exe113,
        in_i_data_7 => bb_pool_B1_out_c2_exe116,
        in_i_data_8 => bb_pool_B1_out_cmp620,
        in_i_data_9 => bb_pool_B1_out_tmp_224,
        in_i_data_10 => bb_pool_B1_out_row_09,
        in_i_data_11 => bb_pool_B1_out_col_17,
        in_i_data_12 => bb_pool_B1_out_c0_exe113,
        in_i_data_13 => bb_pool_B1_out_c1_exe119,
        in_i_data_14 => bb_pool_B1_out_c2_exe125,
        in_i_stall => bb_pool_B2_out_stall_out_1,
        in_i_valid => loop_limiter_pool1_out_o_valid,
        out_o_data_0 => bb_pool_B2_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_pool_B2_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_pool_B2_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_pool_B2_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_pool_B2_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_pool_B2_sr_1_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_pool_B2_sr_1_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_pool_B2_sr_1_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_pool_B2_sr_1_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_pool_B2_sr_1_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_pool_B2_sr_1_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_pool_B2_sr_1_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_pool_B2_sr_1_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_pool_B2_sr_1_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_pool_B2_sr_1_aunroll_x_out_o_data_14,
        out_o_stall => bb_pool_B2_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_pool_B2_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_pool1(BLACKBOX,43)
    theloop_limiter_pool1 : loop_limiter_pool1
    PORT MAP (
        in_i_stall => bb_pool_B2_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_pool_B3_sr_0_aunroll_x_out_o_stall,
        in_i_valid => bb_pool_B1_out_valid_out_0,
        in_i_valid_exit => bb_pool_B2_out_valid_out_0,
        out_o_stall => loop_limiter_pool1_out_o_stall,
        out_o_valid => loop_limiter_pool1_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_pool0(BLACKBOX,42)
    theloop_limiter_pool0 : loop_limiter_pool0
    PORT MAP (
        in_i_stall => bb_pool_B1_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_pool_B4_sr_0_aunroll_x_out_o_stall,
        in_i_valid => bb_pool_B0_out_valid_out_0,
        in_i_valid_exit => bb_pool_B3_out_valid_out_0,
        out_o_stall => loop_limiter_pool0_out_o_stall,
        out_o_valid => loop_limiter_pool0_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B0(BLACKBOX,10)
    thebb_pool_B0 : bb_pool_B0
    PORT MAP (
        in_global_id_0_0 => in_arg_global_id_0,
        in_in_data => in_arg_in_data,
        in_in_size => in_arg_in_size,
        in_kernel_size => in_arg_kernel_size,
        in_out_data => in_arg_out_data,
        in_out_size => in_arg_out_size,
        in_pool_type => in_arg_pool_type,
        in_stall_in_0 => loop_limiter_pool0_out_o_stall,
        in_stride => in_arg_stride,
        in_valid_in_0 => in_valid_in,
        out_c0_exe1 => bb_pool_B0_out_c0_exe1,
        out_c0_exe2 => bb_pool_B0_out_c0_exe2,
        out_c0_exe3 => bb_pool_B0_out_c0_exe3,
        out_c0_exe4 => bb_pool_B0_out_c0_exe4,
        out_c1_exe1 => bb_pool_B0_out_c1_exe1,
        out_c2_exe1 => bb_pool_B0_out_c2_exe1,
        out_cmp6 => bb_pool_B0_out_cmp6,
        out_stall_out_0 => bb_pool_B0_out_stall_out_0,
        out_tmp_2 => bb_pool_B0_out_tmp_2,
        out_valid_out_0 => bb_pool_B0_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B1_sr_1_aunroll_x(BLACKBOX,3)
    thebb_pool_B1_sr_1_aunroll_x : bb_pool_B1_sr_1
    PORT MAP (
        in_i_data_0 => dupName_0_c_i32_0gr_x_q,
        in_i_data_1 => dupName_0_c_i32_0gr_x_q,
        in_i_data_2 => bb_pool_B0_out_c0_exe1,
        in_i_data_3 => bb_pool_B0_out_c0_exe2,
        in_i_data_4 => bb_pool_B0_out_c0_exe3,
        in_i_data_5 => bb_pool_B0_out_c0_exe4,
        in_i_data_6 => bb_pool_B0_out_c1_exe1,
        in_i_data_7 => bb_pool_B0_out_c2_exe1,
        in_i_data_8 => bb_pool_B0_out_cmp6,
        in_i_data_9 => bb_pool_B0_out_tmp_2,
        in_i_stall => bb_pool_B1_out_stall_out_1,
        in_i_valid => loop_limiter_pool0_out_o_valid,
        out_o_data_0 => bb_pool_B1_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_pool_B1_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_pool_B1_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_pool_B1_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_pool_B1_sr_1_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_pool_B1_sr_1_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_pool_B1_sr_1_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_pool_B1_sr_1_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_pool_B1_sr_1_aunroll_x_out_o_data_9,
        out_o_stall => bb_pool_B1_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_pool_B1_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B1(BLACKBOX,11)
    thebb_pool_B1 : bb_pool_B1
    PORT MAP (
        in_c0_exe12_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_2,
        in_c0_exe12_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_2,
        in_c0_exe26_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_3,
        in_c0_exe26_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_3,
        in_c0_exe38_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_4,
        in_c0_exe38_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_4,
        in_c0_exe411_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_5,
        in_c0_exe411_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_5,
        in_c1_exe113_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_6,
        in_c1_exe113_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_6,
        in_c2_exe116_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_7,
        in_c2_exe116_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_7,
        in_cmp620_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_8,
        in_cmp620_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_8,
        in_col_17_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_1,
        in_col_17_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_1,
        in_in_data => in_arg_in_data,
        in_in_size => in_arg_in_size,
        in_kernel_size => in_arg_kernel_size,
        in_out_data => in_arg_out_data,
        in_out_size => in_arg_out_size,
        in_row_09_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_0,
        in_row_09_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_0,
        in_stall_in_0 => loop_limiter_pool1_out_o_stall,
        in_stride => in_arg_stride,
        in_tmp_224_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_9,
        in_tmp_224_1 => bb_pool_B1_sr_1_aunroll_x_out_o_data_9,
        in_valid_in_0 => bb_pool_B1_sr_0_aunroll_x_out_o_valid,
        in_valid_in_1 => bb_pool_B1_sr_1_aunroll_x_out_o_valid,
        out_c0_exe113 => bb_pool_B1_out_c0_exe113,
        out_c0_exe12 => bb_pool_B1_out_c0_exe12,
        out_c0_exe26 => bb_pool_B1_out_c0_exe26,
        out_c0_exe38 => bb_pool_B1_out_c0_exe38,
        out_c0_exe411 => bb_pool_B1_out_c0_exe411,
        out_c1_exe113 => bb_pool_B1_out_c1_exe113,
        out_c1_exe119 => bb_pool_B1_out_c1_exe119,
        out_c2_exe116 => bb_pool_B1_out_c2_exe116,
        out_c2_exe125 => bb_pool_B1_out_c2_exe125,
        out_cmp620 => bb_pool_B1_out_cmp620,
        out_col_17 => bb_pool_B1_out_col_17,
        out_row_09 => bb_pool_B1_out_row_09,
        out_stall_out_0 => bb_pool_B1_out_stall_out_0,
        out_stall_out_1 => bb_pool_B1_out_stall_out_1,
        out_tmp_224 => bb_pool_B1_out_tmp_224,
        out_valid_out_0 => bb_pool_B1_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B1_sr_0_aunroll_x(BLACKBOX,2)
    thebb_pool_B1_sr_0_aunroll_x : bb_pool_B1_sr_0
    PORT MAP (
        in_i_data_0 => bb_pool_B3_out_row_09_LC_OuterPHI,
        in_i_data_1 => bb_pool_B3_out_col_17_LC_InnerPHI,
        in_i_data_2 => bb_pool_B3_out_c0_exe13,
        in_i_data_3 => bb_pool_B3_out_c0_exe24,
        in_i_data_4 => bb_pool_B3_out_c0_exe39,
        in_i_data_5 => bb_pool_B3_out_c0_exe412,
        in_i_data_6 => bb_pool_B3_out_c1_exe114,
        in_i_data_7 => bb_pool_B3_out_c2_exe117,
        in_i_data_8 => bb_pool_B3_out_cmp621,
        in_i_data_9 => bb_pool_B3_out_tmp_222,
        in_i_stall => bb_pool_B1_out_stall_out_0,
        in_i_valid => bb_pool_B3_out_valid_out_1,
        out_o_data_0 => bb_pool_B1_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_pool_B1_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_pool_B1_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_pool_B1_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_pool_B1_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_pool_B1_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_pool_B1_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_pool_B1_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_pool_B1_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_pool_B1_sr_0_aunroll_x_out_o_data_9,
        out_o_stall => bb_pool_B1_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_pool_B1_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B4(BLACKBOX,14)
    thebb_pool_B4 : bb_pool_B4
    PORT MAP (
        in_stall_in_0 => in_stall_in,
        in_valid_in_0 => bb_pool_B4_sr_0_aunroll_x_out_o_valid,
        out_stall_out_0 => bb_pool_B4_out_stall_out_0,
        out_valid_out_0 => bb_pool_B4_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- bb_pool_B4_sr_0_aunroll_x(BLACKBOX,7)
    thebb_pool_B4_sr_0_aunroll_x : bb_pool_B4_sr_0
    PORT MAP (
        in_i_data_0 => GND_q,
        in_i_stall => bb_pool_B4_out_stall_out_0,
        in_i_valid => bb_pool_B3_out_valid_out_0,
        out_o_stall => bb_pool_B4_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_pool_B4_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B3_sr_0_aunroll_x(BLACKBOX,6)
    thebb_pool_B3_sr_0_aunroll_x : bb_pool_B3_sr_0
    PORT MAP (
        in_i_data_0 => bb_pool_B2_out_c0_exe11,
        in_i_data_1 => bb_pool_B2_out_c0_exe25,
        in_i_data_2 => bb_pool_B2_out_c0_exe37,
        in_i_data_3 => bb_pool_B2_out_c0_exe410,
        in_i_data_4 => bb_pool_B2_out_c1_exe115,
        in_i_data_5 => bb_pool_B2_out_c2_exe118,
        in_i_data_6 => bb_pool_B2_out_cmp619,
        in_i_data_7 => bb_pool_B2_out_tmp_223,
        in_i_data_8 => bb_pool_B2_out_row_0926,
        in_i_data_9 => bb_pool_B2_out_col_1728,
        in_i_data_10 => bb_pool_B2_out_c0_exe11330,
        in_i_data_11 => bb_pool_B2_out_unnamed_pool1,
        in_i_data_12 => bb_pool_B2_out_c1_exe141,
        in_i_stall => bb_pool_B3_out_stall_out_0,
        in_i_valid => bb_pool_B2_out_valid_out_0,
        out_o_data_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_pool_B3_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_pool_B3_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_pool_B3_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_pool_B3_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_pool_B3_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_pool_B3_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_pool_B3_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_pool_B3_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_pool_B3_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_pool_B3_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_pool_B3_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_pool_B3_sr_0_aunroll_x_out_o_data_12,
        out_o_stall => bb_pool_B3_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_pool_B3_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B3(BLACKBOX,13)
    thebb_pool_B3 : bb_pool_B3
    PORT MAP (
        in_c0_exe11329_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_10,
        in_c0_exe13_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_0,
        in_c0_exe24_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_1,
        in_c0_exe39_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_2,
        in_c0_exe412_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_3,
        in_c1_exe114_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_4,
        in_c1_exe14133_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_12,
        in_c2_exe117_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_5,
        in_cmp621_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_6,
        in_col_1727_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_9,
        in_flush => in_start,
        in_in_data => in_arg_in_data,
        in_in_size => in_arg_in_size,
        in_kernel_size => in_arg_kernel_size,
        in_out_data => in_arg_out_data,
        in_out_size => in_arg_out_size,
        in_row_0925_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_8,
        in_stall_in_0 => bb_pool_B4_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => bb_pool_B1_sr_0_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_tmp_222_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_7,
        in_unnamed_pool4_0 => bb_pool_B3_sr_0_aunroll_x_out_o_data_11,
        in_unnamed_pool5_avm_readdata => in_unnamed_pool5_avm_readdata,
        in_unnamed_pool5_avm_readdatavalid => in_unnamed_pool5_avm_readdatavalid,
        in_unnamed_pool5_avm_waitrequest => in_unnamed_pool5_avm_waitrequest,
        in_unnamed_pool5_avm_writeack => in_unnamed_pool5_avm_writeack,
        in_valid_in_0 => bb_pool_B3_sr_0_aunroll_x_out_o_valid,
        out_c0_exe13 => bb_pool_B3_out_c0_exe13,
        out_c0_exe24 => bb_pool_B3_out_c0_exe24,
        out_c0_exe39 => bb_pool_B3_out_c0_exe39,
        out_c0_exe412 => bb_pool_B3_out_c0_exe412,
        out_c1_exe114 => bb_pool_B3_out_c1_exe114,
        out_c2_exe117 => bb_pool_B3_out_c2_exe117,
        out_cmp621 => bb_pool_B3_out_cmp621,
        out_col_17_LC_InnerPHI => bb_pool_B3_out_col_17_LC_InnerPHI,
        out_lsu_unnamed_pool5_o_active => bb_pool_B3_out_lsu_unnamed_pool5_o_active,
        out_row_09_LC_OuterPHI => bb_pool_B3_out_row_09_LC_OuterPHI,
        out_stall_out_0 => bb_pool_B3_out_stall_out_0,
        out_tmp_222 => bb_pool_B3_out_tmp_222,
        out_unnamed_pool5_avm_address => bb_pool_B3_out_unnamed_pool5_avm_address,
        out_unnamed_pool5_avm_burstcount => bb_pool_B3_out_unnamed_pool5_avm_burstcount,
        out_unnamed_pool5_avm_byteenable => bb_pool_B3_out_unnamed_pool5_avm_byteenable,
        out_unnamed_pool5_avm_enable => bb_pool_B3_out_unnamed_pool5_avm_enable,
        out_unnamed_pool5_avm_read => bb_pool_B3_out_unnamed_pool5_avm_read,
        out_unnamed_pool5_avm_write => bb_pool_B3_out_unnamed_pool5_avm_write,
        out_unnamed_pool5_avm_writedata => bb_pool_B3_out_unnamed_pool5_avm_writedata,
        out_valid_out_0 => bb_pool_B3_out_valid_out_0,
        out_valid_out_1 => bb_pool_B3_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_o_active_unnamed_pool5(GPOUT,44)
    out_o_active_unnamed_pool5 <= bb_pool_B3_out_lsu_unnamed_pool5_o_active;

    -- out_stall_out(GPOUT,45)
    out_stall_out <= bb_pool_B0_out_stall_out_0;

    -- out_unnamed_pool3_avm_address(GPOUT,46)
    out_unnamed_pool3_avm_address <= bb_pool_B2_out_unnamed_pool3_avm_address;

    -- out_unnamed_pool3_avm_burstcount(GPOUT,47)
    out_unnamed_pool3_avm_burstcount <= bb_pool_B2_out_unnamed_pool3_avm_burstcount;

    -- out_unnamed_pool3_avm_byteenable(GPOUT,48)
    out_unnamed_pool3_avm_byteenable <= bb_pool_B2_out_unnamed_pool3_avm_byteenable;

    -- out_unnamed_pool3_avm_enable(GPOUT,49)
    out_unnamed_pool3_avm_enable <= bb_pool_B2_out_unnamed_pool3_avm_enable;

    -- out_unnamed_pool3_avm_read(GPOUT,50)
    out_unnamed_pool3_avm_read <= bb_pool_B2_out_unnamed_pool3_avm_read;

    -- out_unnamed_pool3_avm_write(GPOUT,51)
    out_unnamed_pool3_avm_write <= bb_pool_B2_out_unnamed_pool3_avm_write;

    -- out_unnamed_pool3_avm_writedata(GPOUT,52)
    out_unnamed_pool3_avm_writedata <= bb_pool_B2_out_unnamed_pool3_avm_writedata;

    -- out_unnamed_pool5_avm_address(GPOUT,53)
    out_unnamed_pool5_avm_address <= bb_pool_B3_out_unnamed_pool5_avm_address;

    -- out_unnamed_pool5_avm_burstcount(GPOUT,54)
    out_unnamed_pool5_avm_burstcount <= bb_pool_B3_out_unnamed_pool5_avm_burstcount;

    -- out_unnamed_pool5_avm_byteenable(GPOUT,55)
    out_unnamed_pool5_avm_byteenable <= bb_pool_B3_out_unnamed_pool5_avm_byteenable;

    -- out_unnamed_pool5_avm_enable(GPOUT,56)
    out_unnamed_pool5_avm_enable <= bb_pool_B3_out_unnamed_pool5_avm_enable;

    -- out_unnamed_pool5_avm_read(GPOUT,57)
    out_unnamed_pool5_avm_read <= bb_pool_B3_out_unnamed_pool5_avm_read;

    -- out_unnamed_pool5_avm_write(GPOUT,58)
    out_unnamed_pool5_avm_write <= bb_pool_B3_out_unnamed_pool5_avm_write;

    -- out_unnamed_pool5_avm_writedata(GPOUT,59)
    out_unnamed_pool5_avm_writedata <= bb_pool_B3_out_unnamed_pool5_avm_writedata;

    -- out_valid_out(GPOUT,60)
    out_valid_out <= bb_pool_B4_out_valid_out_0;

END normal;
