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

-- VHDL created from bb_batchnorm_B0_stall_region
-- VHDL created on Wed Nov 29 11:50:01 2023


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

entity bb_batchnorm_B0_stall_region is
    port (
        in_lsu_unnamed_batchnorm1_sts_stream_size : in std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm1_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm1_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm1_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm1_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_bn_running_mean : in std_logic_vector(63 downto 0);  -- ufix64
        in_global_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_lsu_unnamed_batchnorm1_streset_stream_reset : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm2_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm2_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm2_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm2_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm2_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm2_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm2_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_bn_running_var : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_batchnorm1_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm3_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm3_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm3_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm3_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm3_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm3_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm3_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_bn_weights : in std_logic_vector(63 downto 0);  -- ufix64
        in_lsu_unnamed_batchnorm2_sts_stream_size : in std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm4_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm4_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm4_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm4_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm4_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm4_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm4_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_eps : in std_logic_vector(31 downto 0);  -- float32_m23
        in_lsu_unnamed_batchnorm2_streset_stream_reset : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm5_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm5_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm5_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm5_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm5_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm5_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm5_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm2_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm2_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_lsu_unnamed_batchnorm5_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_lsu_unnamed_batchnorm3_sts_stream_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_lsu_unnamed_batchnorm3_streset_stream_reset : in std_logic_vector(0 downto 0);  -- ufix1
        in_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_batchnorm3_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm3_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_relu_type : in std_logic_vector(31 downto 0);  -- ufix32
        in_lsu_unnamed_batchnorm4_sts_stream_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_lsu_unnamed_batchnorm4_streset_stream_reset : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm4_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm4_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm5_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm5_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_batchnorm0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_batchnorm0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm0_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_batchnorm0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_batchnorm0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_batchnorm0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_batchnorm0_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_bn_biases : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_batchnorm_B0_stall_region;

architecture normal of bb_batchnorm_B0_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component batchnorm_B0_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_entry_batchnorm_c0_enter_batchnorm is
        port (
            in_c0_eni2_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni2_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_entry_batchnorm_c1_enter_batchnorm is
        port (
            in_c1_eni5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni5_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_eni5_2 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_eni5_3 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_eni5_4 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_eni5_5 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_eps : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_relu_type : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_batchnorm0_batchnorm23 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_batchnorm1_batchnorm25 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm1_streset_stream_reset : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm1_sts_stream_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stream_base_addr : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_batchnorm1_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm1_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_batchnorm2_batchnorm27 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm2_streset_stream_reset : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm2_sts_stream_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stream_base_addr : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_batchnorm2_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm2_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm2_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_batchnorm3_batchnorm29 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm3_streset_stream_reset : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm3_sts_stream_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stream_base_addr : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_batchnorm3_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm3_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm3_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_batchnorm4_batchnorm31 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm4_streset_stream_reset : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_lsu_unnamed_batchnorm4_sts_stream_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stream_base_addr : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_batchnorm4_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm4_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm4_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_unnamed_batchnorm5_batchnorm42 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_batchnorm5_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_batchnorm5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_batchnorm5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_batchnorm5_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_batchnorm5_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_bn_biases_sync_buffer_batchnorm6 is
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


    component i_syncbuf_bn_running_mean_sync_buffer_batchnorm2 is
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


    component i_syncbuf_bn_running_var_sync_buffer_batchnorm4 is
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


    component i_syncbuf_bn_weights_sync_buffer_batchnorm0 is
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
    signal batchnorm_B0_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal batchnorm_B0_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal batchnorm_B0_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal batchnorm_B0_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom_batchnorm_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_out_c1_exit_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm0_batchnorm_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_batchnorm0_batchnorm_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm0_batchnorm_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_load_unnamed_batchnorm1_batchnorm_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_batchnorm1_batchnorm_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm1_batchnorm_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_load_unnamed_batchnorm2_batchnorm_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_batchnorm2_batchnorm_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm2_batchnorm_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_load_unnamed_batchnorm3_batchnorm_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_batchnorm3_batchnorm_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm3_batchnorm_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_load_unnamed_batchnorm4_batchnorm_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_batchnorm4_batchnorm_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm4_batchnorm_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_store_unnamed_batchnorm5_batchnorm_out_lsu_unnamed_batchnorm5_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_batchnorm5_batchnorm_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_batchnorm5_batchnorm_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_syncbuf_bn_biases_sync_buffer_batchnorm_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_bn_biases_sync_buffer_batchnorm_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_bn_biases_sync_buffer_batchnorm_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_bn_running_mean_sync_buffer_batchnorm_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_bn_running_mean_sync_buffer_batchnorm_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_bn_running_mean_sync_buffer_batchnorm_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_bn_running_var_sync_buffer_batchnorm_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_bn_running_var_sync_buffer_batchnorm_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_bn_running_var_sync_buffer_batchnorm_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_bn_weights_sync_buffer_batchnorm_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_bn_weights_sync_buffer_batchnorm_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_bn_weights_sync_buffer_batchnorm_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx6_batchnorm_batchnorm20_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx8_batchnorm_batchnorm21_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_batchnorm_batchnorm19_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist2_i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist3_i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_batchnorm_B0_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_batchnorm_B0_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_batchnorm_B0_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal bubble_select_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_c : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_batchnorm0_batchnorm_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_batchnorm0_batchnorm_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_batchnorm1_batchnorm_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_batchnorm1_batchnorm_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_batchnorm2_batchnorm_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_batchnorm2_batchnorm_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_batchnorm3_batchnorm_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_batchnorm3_batchnorm_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_batchnorm4_batchnorm_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_batchnorm4_batchnorm_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_bn_biases_sync_buffer_batchnorm_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_bn_biases_sync_buffer_batchnorm_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_syncbuf_bn_running_var_sync_buffer_batchnorm_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_bn_running_var_sync_buffer_batchnorm_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_syncbuf_bn_weights_sync_buffer_batchnorm_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_bn_weights_sync_buffer_batchnorm_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_batchnorm_B0_merge_reg_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_batchnorm4_batchnorm_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_batchnorm4_batchnorm_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_batchnorm4_batchnorm_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_batchnorm4_batchnorm_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_batchnorm4_batchnorm_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_batchnorm4_batchnorm_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_batchnorm4_batchnorm_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_unnamed_batchnorm5_batchnorm_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_unnamed_batchnorm5_batchnorm_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_unnamed_batchnorm5_batchnorm_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp : std_logic;
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data1 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data2 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data3 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D1 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D2 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D3 : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- redist4_i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x_b_1_0(REG,225)
    redist4_i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist4_i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D3);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_syncbuf_bn_biases_sync_buffer_batchnorm(BITJOIN,257)
    bubble_join_i_syncbuf_bn_biases_sync_buffer_batchnorm_q <= i_syncbuf_bn_biases_sync_buffer_batchnorm_out_buffer_out;

    -- bubble_select_i_syncbuf_bn_biases_sync_buffer_batchnorm(BITSELECT,258)
    bubble_select_i_syncbuf_bn_biases_sync_buffer_batchnorm_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_bn_biases_sync_buffer_batchnorm_q(63 downto 0));

    -- i_arrayidx13_batchnorm_batchnorm22_add_x(ADD,63)@208
    i_arrayidx13_batchnorm_batchnorm22_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_bn_biases_sync_buffer_batchnorm_b);
    i_arrayidx13_batchnorm_batchnorm22_add_x_b <= STD_LOGIC_VECTOR("0" & redist4_i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x_b_1_0_q);
    i_arrayidx13_batchnorm_batchnorm22_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx13_batchnorm_batchnorm22_add_x_a) + UNSIGNED(i_arrayidx13_batchnorm_batchnorm22_add_x_b));
    i_arrayidx13_batchnorm_batchnorm22_add_x_q <= i_arrayidx13_batchnorm_batchnorm22_add_x_o(64 downto 0);

    -- i_arrayidx13_batchnorm_batchnorm22_dupName_0_trunc_sel_x(BITSELECT,57)@208
    i_arrayidx13_batchnorm_batchnorm22_dupName_0_trunc_sel_x_b <= i_arrayidx13_batchnorm_batchnorm22_add_x_q(63 downto 0);

    -- i_load_unnamed_batchnorm4_batchnorm(BLACKBOX,111)@208
    -- in in_i_stall@20000000
    -- out out_o_readdata@210
    -- out out_o_stall@20000000
    -- out out_o_valid@210
    -- out out_unnamed_batchnorm4_avm_address@20000000
    -- out out_unnamed_batchnorm4_avm_burstcount@20000000
    -- out out_unnamed_batchnorm4_avm_byteenable@20000000
    -- out out_unnamed_batchnorm4_avm_enable@20000000
    -- out out_unnamed_batchnorm4_avm_read@20000000
    -- out out_unnamed_batchnorm4_avm_write@20000000
    -- out out_unnamed_batchnorm4_avm_writedata@20000000
    thei_load_unnamed_batchnorm4_batchnorm : i_load_unnamed_batchnorm4_batchnorm31
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx13_batchnorm_batchnorm22_dupName_0_trunc_sel_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_batchnorm4_batchnorm_backStall,
        in_i_valid => SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_V0,
        in_lsu_unnamed_batchnorm4_streset_stream_reset => in_lsu_unnamed_batchnorm4_streset_stream_reset,
        in_lsu_unnamed_batchnorm4_sts_stream_size => in_lsu_unnamed_batchnorm4_sts_stream_size,
        in_stream_base_addr => i_arrayidx13_batchnorm_batchnorm22_dupName_0_trunc_sel_x_b,
        in_unnamed_batchnorm4_avm_readdata => in_unnamed_batchnorm4_avm_readdata,
        in_unnamed_batchnorm4_avm_readdatavalid => in_unnamed_batchnorm4_avm_readdatavalid,
        in_unnamed_batchnorm4_avm_waitrequest => in_unnamed_batchnorm4_avm_waitrequest,
        in_unnamed_batchnorm4_avm_writeack => in_unnamed_batchnorm4_avm_writeack,
        out_o_readdata => i_load_unnamed_batchnorm4_batchnorm_out_o_readdata,
        out_o_stall => i_load_unnamed_batchnorm4_batchnorm_out_o_stall,
        out_o_valid => i_load_unnamed_batchnorm4_batchnorm_out_o_valid,
        out_unnamed_batchnorm4_avm_address => i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_address,
        out_unnamed_batchnorm4_avm_burstcount => i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_burstcount,
        out_unnamed_batchnorm4_avm_byteenable => i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_byteenable,
        out_unnamed_batchnorm4_avm_enable => i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_enable,
        out_unnamed_batchnorm4_avm_read => i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_read,
        out_unnamed_batchnorm4_avm_write => i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_write,
        out_unnamed_batchnorm4_avm_writedata => i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_batchnorm_B0_merge_reg_aunroll_x(BITJOIN,228)
    bubble_join_batchnorm_B0_merge_reg_aunroll_x_q <= batchnorm_B0_merge_reg_aunroll_x_out_data_out_1 & batchnorm_B0_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_batchnorm_B0_merge_reg_aunroll_x(BITSELECT,229)
    bubble_select_batchnorm_B0_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_batchnorm_B0_merge_reg_aunroll_x_q(31 downto 0));
    bubble_select_batchnorm_B0_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_batchnorm_B0_merge_reg_aunroll_x_q(63 downto 32));

    -- SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo(STALLENABLE,371)
    -- Valid signal propagation
    SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_V0 <= SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_backStall <= SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backStall or not (SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_wireValid <= redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_out;

    -- redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo(STALLFIFO,226)
    redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_in <= SE_out_batchnorm_B0_merge_reg_aunroll_x_V5;
    redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_in <= SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_backStall;
    redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_data_in <= bubble_select_batchnorm_B0_merge_reg_aunroll_x_b;
    redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_in_bitsignaltemp <= redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_in(0);
    redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_in_bitsignaltemp <= redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_in(0);
    redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_out(0) <= redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_out_bitsignaltemp;
    redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_out(0) <= redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_out_bitsignaltemp;
    theredist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 207,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_in_bitsignaltemp,
        stall_in => redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_batchnorm_B0_merge_reg_aunroll_x_b,
        valid_out => redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_valid_out_bitsignaltemp,
        stall_out => redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_out_bitsignaltemp,
        data_out => redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x(BITJOIN,235)
    bubble_join_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_q <= i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2 & i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_1;

    -- bubble_select_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x(BITSELECT,236)
    bubble_select_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_q(63 downto 0));
    bubble_select_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_q(127 downto 64));

    -- bubble_join_i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x(BITJOIN,238)
    bubble_join_i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_q <= i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_out_c1_exit_1;

    -- bubble_select_i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x(BITSELECT,239)
    bubble_select_i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_q(31 downto 0));

    -- SE_out_i_store_unnamed_batchnorm5_batchnorm(STALLENABLE,312)
    -- Valid signal propagation
    SE_out_i_store_unnamed_batchnorm5_batchnorm_V0 <= SE_out_i_store_unnamed_batchnorm5_batchnorm_wireValid;
    -- Backward Stall generation
    SE_out_i_store_unnamed_batchnorm5_batchnorm_backStall <= in_stall_in or not (SE_out_i_store_unnamed_batchnorm5_batchnorm_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_store_unnamed_batchnorm5_batchnorm_wireValid <= i_store_unnamed_batchnorm5_batchnorm_out_o_valid;

    -- bubble_join_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo(BITJOIN,273)
    bubble_join_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_q <= redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_data_out;

    -- bubble_select_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo(BITSELECT,274)
    bubble_select_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_q(63 downto 0));

    -- i_store_unnamed_batchnorm5_batchnorm(BLACKBOX,112)@302
    -- in in_i_stall@20000000
    -- out out_lsu_unnamed_batchnorm5_o_active@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@304
    -- out out_unnamed_batchnorm5_avm_address@20000000
    -- out out_unnamed_batchnorm5_avm_burstcount@20000000
    -- out out_unnamed_batchnorm5_avm_byteenable@20000000
    -- out out_unnamed_batchnorm5_avm_enable@20000000
    -- out out_unnamed_batchnorm5_avm_read@20000000
    -- out out_unnamed_batchnorm5_avm_write@20000000
    -- out out_unnamed_batchnorm5_avm_writedata@20000000
    thei_store_unnamed_batchnorm5_batchnorm : i_store_unnamed_batchnorm5_batchnorm42
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_store_unnamed_batchnorm5_batchnorm_backStall,
        in_i_valid => SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_V0,
        in_i_writedata => bubble_select_i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_b,
        in_unnamed_batchnorm5_avm_readdata => in_unnamed_batchnorm5_avm_readdata,
        in_unnamed_batchnorm5_avm_readdatavalid => in_unnamed_batchnorm5_avm_readdatavalid,
        in_unnamed_batchnorm5_avm_waitrequest => in_unnamed_batchnorm5_avm_waitrequest,
        in_unnamed_batchnorm5_avm_writeack => in_unnamed_batchnorm5_avm_writeack,
        out_lsu_unnamed_batchnorm5_o_active => i_store_unnamed_batchnorm5_batchnorm_out_lsu_unnamed_batchnorm5_o_active,
        out_o_stall => i_store_unnamed_batchnorm5_batchnorm_out_o_stall,
        out_o_valid => i_store_unnamed_batchnorm5_batchnorm_out_o_valid,
        out_unnamed_batchnorm5_avm_address => i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_address,
        out_unnamed_batchnorm5_avm_burstcount => i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_burstcount,
        out_unnamed_batchnorm5_avm_byteenable => i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_byteenable,
        out_unnamed_batchnorm5_avm_enable => i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_enable,
        out_unnamed_batchnorm5_avm_read => i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_read,
        out_unnamed_batchnorm5_avm_write => i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_write,
        out_unnamed_batchnorm5_avm_writedata => i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_load_unnamed_batchnorm4_batchnorm(BITJOIN,253)
    bubble_join_i_load_unnamed_batchnorm4_batchnorm_q <= i_load_unnamed_batchnorm4_batchnorm_out_o_readdata;

    -- bubble_select_i_load_unnamed_batchnorm4_batchnorm(BITSELECT,254)
    bubble_select_i_load_unnamed_batchnorm4_batchnorm_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_batchnorm4_batchnorm_q(31 downto 0));

    -- bubble_join_i_load_unnamed_batchnorm1_batchnorm(BITJOIN,244)
    bubble_join_i_load_unnamed_batchnorm1_batchnorm_q <= i_load_unnamed_batchnorm1_batchnorm_out_o_readdata;

    -- bubble_select_i_load_unnamed_batchnorm1_batchnorm(BITSELECT,245)
    bubble_select_i_load_unnamed_batchnorm1_batchnorm_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_batchnorm1_batchnorm_q(31 downto 0));

    -- redist2_i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x_b_1_0(REG,223)
    redist2_i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist2_i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D1);
            END IF;
        END IF;
    END PROCESS;

    -- SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3(STALLENABLE,381)
    -- Valid signal propagation
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_V0 <= SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_backStall <= i_syncbuf_bn_running_var_sync_buffer_batchnorm_out_stall_out or not (SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_wireValid <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_out;

    -- i_syncbuf_bn_running_var_sync_buffer_batchnorm(BLACKBOX,115)@208
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_bn_running_var_sync_buffer_batchnorm : i_syncbuf_bn_running_var_sync_buffer_batchnorm4
    PORT MAP (
        in_buffer_in => in_bn_running_var,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_backStall,
        in_valid_in => SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_V0,
        out_buffer_out => i_syncbuf_bn_running_var_sync_buffer_batchnorm_out_buffer_out,
        out_stall_out => i_syncbuf_bn_running_var_sync_buffer_batchnorm_out_stall_out,
        out_valid_out => i_syncbuf_bn_running_var_sync_buffer_batchnorm_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_syncbuf_bn_running_var_sync_buffer_batchnorm(BITJOIN,263)
    bubble_join_i_syncbuf_bn_running_var_sync_buffer_batchnorm_q <= i_syncbuf_bn_running_var_sync_buffer_batchnorm_out_buffer_out;

    -- bubble_select_i_syncbuf_bn_running_var_sync_buffer_batchnorm(BITSELECT,264)
    bubble_select_i_syncbuf_bn_running_var_sync_buffer_batchnorm_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_bn_running_var_sync_buffer_batchnorm_q(63 downto 0));

    -- i_arrayidx8_batchnorm_batchnorm21_add_x(ADD,83)@208
    i_arrayidx8_batchnorm_batchnorm21_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_bn_running_var_sync_buffer_batchnorm_b);
    i_arrayidx8_batchnorm_batchnorm21_add_x_b <= STD_LOGIC_VECTOR("0" & redist2_i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x_b_1_0_q);
    i_arrayidx8_batchnorm_batchnorm21_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx8_batchnorm_batchnorm21_add_x_a) + UNSIGNED(i_arrayidx8_batchnorm_batchnorm21_add_x_b));
    i_arrayidx8_batchnorm_batchnorm21_add_x_q <= i_arrayidx8_batchnorm_batchnorm21_add_x_o(64 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_dupName_0_trunc_sel_x(BITSELECT,77)@208
    i_arrayidx8_batchnorm_batchnorm21_dupName_0_trunc_sel_x_b <= i_arrayidx8_batchnorm_batchnorm21_add_x_q(63 downto 0);

    -- i_load_unnamed_batchnorm3_batchnorm(BLACKBOX,110)@208
    -- in in_i_stall@20000000
    -- out out_o_readdata@210
    -- out out_o_stall@20000000
    -- out out_o_valid@210
    -- out out_unnamed_batchnorm3_avm_address@20000000
    -- out out_unnamed_batchnorm3_avm_burstcount@20000000
    -- out out_unnamed_batchnorm3_avm_byteenable@20000000
    -- out out_unnamed_batchnorm3_avm_enable@20000000
    -- out out_unnamed_batchnorm3_avm_read@20000000
    -- out out_unnamed_batchnorm3_avm_write@20000000
    -- out out_unnamed_batchnorm3_avm_writedata@20000000
    thei_load_unnamed_batchnorm3_batchnorm : i_load_unnamed_batchnorm3_batchnorm29
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx8_batchnorm_batchnorm21_dupName_0_trunc_sel_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_batchnorm4_batchnorm_backStall,
        in_i_valid => SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_V0,
        in_lsu_unnamed_batchnorm3_streset_stream_reset => in_lsu_unnamed_batchnorm3_streset_stream_reset,
        in_lsu_unnamed_batchnorm3_sts_stream_size => in_lsu_unnamed_batchnorm3_sts_stream_size,
        in_stream_base_addr => i_arrayidx8_batchnorm_batchnorm21_dupName_0_trunc_sel_x_b,
        in_unnamed_batchnorm3_avm_readdata => in_unnamed_batchnorm3_avm_readdata,
        in_unnamed_batchnorm3_avm_readdatavalid => in_unnamed_batchnorm3_avm_readdatavalid,
        in_unnamed_batchnorm3_avm_waitrequest => in_unnamed_batchnorm3_avm_waitrequest,
        in_unnamed_batchnorm3_avm_writeack => in_unnamed_batchnorm3_avm_writeack,
        out_o_readdata => i_load_unnamed_batchnorm3_batchnorm_out_o_readdata,
        out_o_stall => i_load_unnamed_batchnorm3_batchnorm_out_o_stall,
        out_o_valid => i_load_unnamed_batchnorm3_batchnorm_out_o_valid,
        out_unnamed_batchnorm3_avm_address => i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_address,
        out_unnamed_batchnorm3_avm_burstcount => i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_burstcount,
        out_unnamed_batchnorm3_avm_byteenable => i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_byteenable,
        out_unnamed_batchnorm3_avm_enable => i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_enable,
        out_unnamed_batchnorm3_avm_read => i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_read,
        out_unnamed_batchnorm3_avm_write => i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_write,
        out_unnamed_batchnorm3_avm_writedata => i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_load_unnamed_batchnorm3_batchnorm(BITJOIN,250)
    bubble_join_i_load_unnamed_batchnorm3_batchnorm_q <= i_load_unnamed_batchnorm3_batchnorm_out_o_readdata;

    -- bubble_select_i_load_unnamed_batchnorm3_batchnorm(BITSELECT,251)
    bubble_select_i_load_unnamed_batchnorm3_batchnorm_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_batchnorm3_batchnorm_q(31 downto 0));

    -- redist3_i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x_b_1_0(REG,224)
    redist3_i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist3_i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D2);
            END IF;
        END IF;
    END PROCESS;

    -- SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2(STALLENABLE,379)
    -- Valid signal propagation
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_V0 <= SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_backStall <= i_syncbuf_bn_running_mean_sync_buffer_batchnorm_out_stall_out or not (SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_wireValid <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_out;

    -- i_syncbuf_bn_running_mean_sync_buffer_batchnorm(BLACKBOX,114)@208
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_bn_running_mean_sync_buffer_batchnorm : i_syncbuf_bn_running_mean_sync_buffer_batchnorm2
    PORT MAP (
        in_buffer_in => in_bn_running_mean,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_backStall,
        in_valid_in => SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_V0,
        out_buffer_out => i_syncbuf_bn_running_mean_sync_buffer_batchnorm_out_buffer_out,
        out_stall_out => i_syncbuf_bn_running_mean_sync_buffer_batchnorm_out_stall_out,
        out_valid_out => i_syncbuf_bn_running_mean_sync_buffer_batchnorm_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_syncbuf_bn_running_mean_sync_buffer_batchnorm(BITJOIN,260)
    bubble_join_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_q <= i_syncbuf_bn_running_mean_sync_buffer_batchnorm_out_buffer_out;

    -- bubble_select_i_syncbuf_bn_running_mean_sync_buffer_batchnorm(BITSELECT,261)
    bubble_select_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_q(63 downto 0));

    -- i_arrayidx6_batchnorm_batchnorm20_add_x(ADD,73)@208
    i_arrayidx6_batchnorm_batchnorm20_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_b);
    i_arrayidx6_batchnorm_batchnorm20_add_x_b <= STD_LOGIC_VECTOR("0" & redist3_i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x_b_1_0_q);
    i_arrayidx6_batchnorm_batchnorm20_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx6_batchnorm_batchnorm20_add_x_a) + UNSIGNED(i_arrayidx6_batchnorm_batchnorm20_add_x_b));
    i_arrayidx6_batchnorm_batchnorm20_add_x_q <= i_arrayidx6_batchnorm_batchnorm20_add_x_o(64 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_dupName_0_trunc_sel_x(BITSELECT,67)@208
    i_arrayidx6_batchnorm_batchnorm20_dupName_0_trunc_sel_x_b <= i_arrayidx6_batchnorm_batchnorm20_add_x_q(63 downto 0);

    -- i_load_unnamed_batchnorm2_batchnorm(BLACKBOX,109)@208
    -- in in_i_stall@20000000
    -- out out_o_readdata@210
    -- out out_o_stall@20000000
    -- out out_o_valid@210
    -- out out_unnamed_batchnorm2_avm_address@20000000
    -- out out_unnamed_batchnorm2_avm_burstcount@20000000
    -- out out_unnamed_batchnorm2_avm_byteenable@20000000
    -- out out_unnamed_batchnorm2_avm_enable@20000000
    -- out out_unnamed_batchnorm2_avm_read@20000000
    -- out out_unnamed_batchnorm2_avm_write@20000000
    -- out out_unnamed_batchnorm2_avm_writedata@20000000
    thei_load_unnamed_batchnorm2_batchnorm : i_load_unnamed_batchnorm2_batchnorm27
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx6_batchnorm_batchnorm20_dupName_0_trunc_sel_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_batchnorm4_batchnorm_backStall,
        in_i_valid => SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_V0,
        in_lsu_unnamed_batchnorm2_streset_stream_reset => in_lsu_unnamed_batchnorm2_streset_stream_reset,
        in_lsu_unnamed_batchnorm2_sts_stream_size => in_lsu_unnamed_batchnorm2_sts_stream_size,
        in_stream_base_addr => i_arrayidx6_batchnorm_batchnorm20_dupName_0_trunc_sel_x_b,
        in_unnamed_batchnorm2_avm_readdata => in_unnamed_batchnorm2_avm_readdata,
        in_unnamed_batchnorm2_avm_readdatavalid => in_unnamed_batchnorm2_avm_readdatavalid,
        in_unnamed_batchnorm2_avm_waitrequest => in_unnamed_batchnorm2_avm_waitrequest,
        in_unnamed_batchnorm2_avm_writeack => in_unnamed_batchnorm2_avm_writeack,
        out_o_readdata => i_load_unnamed_batchnorm2_batchnorm_out_o_readdata,
        out_o_stall => i_load_unnamed_batchnorm2_batchnorm_out_o_stall,
        out_o_valid => i_load_unnamed_batchnorm2_batchnorm_out_o_valid,
        out_unnamed_batchnorm2_avm_address => i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_address,
        out_unnamed_batchnorm2_avm_burstcount => i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_burstcount,
        out_unnamed_batchnorm2_avm_byteenable => i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_byteenable,
        out_unnamed_batchnorm2_avm_enable => i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_enable,
        out_unnamed_batchnorm2_avm_read => i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_read,
        out_unnamed_batchnorm2_avm_write => i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_write,
        out_unnamed_batchnorm2_avm_writedata => i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_load_unnamed_batchnorm2_batchnorm(BITJOIN,247)
    bubble_join_i_load_unnamed_batchnorm2_batchnorm_q <= i_load_unnamed_batchnorm2_batchnorm_out_o_readdata;

    -- bubble_select_i_load_unnamed_batchnorm2_batchnorm(BITSELECT,248)
    bubble_select_i_load_unnamed_batchnorm2_batchnorm_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_batchnorm2_batchnorm_q(31 downto 0));

    -- bubble_join_i_load_unnamed_batchnorm0_batchnorm(BITJOIN,241)
    bubble_join_i_load_unnamed_batchnorm0_batchnorm_q <= i_load_unnamed_batchnorm0_batchnorm_out_o_readdata;

    -- bubble_select_i_load_unnamed_batchnorm0_batchnorm(BITSELECT,242)
    bubble_select_i_load_unnamed_batchnorm0_batchnorm_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_batchnorm0_batchnorm_q(31 downto 0));

    -- i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x(BLACKBOX,99)@210
    -- in in_i_stall@20000000
    -- out out_c1_exit_0@302
    -- out out_c1_exit_1@302
    -- out out_o_stall@20000000
    -- out out_o_valid@302
    thei_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x : i_sfc_c1_entry_batchnorm_c1_enter_batchnorm
    PORT MAP (
        in_c1_eni5_0 => GND_q,
        in_c1_eni5_1 => bubble_select_i_load_unnamed_batchnorm0_batchnorm_b,
        in_c1_eni5_2 => bubble_select_i_load_unnamed_batchnorm2_batchnorm_b,
        in_c1_eni5_3 => bubble_select_i_load_unnamed_batchnorm3_batchnorm_b,
        in_c1_eni5_4 => bubble_select_i_load_unnamed_batchnorm1_batchnorm_b,
        in_c1_eni5_5 => bubble_select_i_load_unnamed_batchnorm4_batchnorm_b,
        in_eps => in_eps,
        in_i_stall => SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_backStall,
        in_i_valid => SE_out_i_load_unnamed_batchnorm4_batchnorm_V0,
        in_relu_type => in_relu_type,
        out_c1_exit_1 => i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_out_c1_exit_1,
        out_o_stall => i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo(STALLENABLE,365)
    -- Valid signal propagation
    SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_V0 <= SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_backStall <= i_store_unnamed_batchnorm5_batchnorm_out_o_stall or not (SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_and0 <= redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_out;
    SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_wireValid <= i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_out_o_valid and SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_and0;

    -- redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo(STALLFIFO,221)
    redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_in <= SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_V1;
    redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_in <= SE_out_redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_backStall;
    redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_data_in <= bubble_select_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_c;
    redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_in_bitsignaltemp <= redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_in(0);
    redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_in_bitsignaltemp <= redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_in(0);
    redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_out(0) <= redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_out_bitsignaltemp;
    redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_out(0) <= redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_out_bitsignaltemp;
    theredist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 293,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_c,
        valid_out => redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_out_bitsignaltemp,
        data_out => redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_load_unnamed_batchnorm0_batchnorm(BLACKBOX,107)@10
    -- in in_i_stall@20000000
    -- out out_o_readdata@210
    -- out out_o_stall@20000000
    -- out out_o_valid@210
    -- out out_unnamed_batchnorm0_avm_address@20000000
    -- out out_unnamed_batchnorm0_avm_burstcount@20000000
    -- out out_unnamed_batchnorm0_avm_byteenable@20000000
    -- out out_unnamed_batchnorm0_avm_enable@20000000
    -- out out_unnamed_batchnorm0_avm_read@20000000
    -- out out_unnamed_batchnorm0_avm_write@20000000
    -- out out_unnamed_batchnorm0_avm_writedata@20000000
    thei_load_unnamed_batchnorm0_batchnorm : i_load_unnamed_batchnorm0_batchnorm23
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_batchnorm4_batchnorm_backStall,
        in_i_valid => SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_V0,
        in_unnamed_batchnorm0_avm_readdata => in_unnamed_batchnorm0_avm_readdata,
        in_unnamed_batchnorm0_avm_readdatavalid => in_unnamed_batchnorm0_avm_readdatavalid,
        in_unnamed_batchnorm0_avm_waitrequest => in_unnamed_batchnorm0_avm_waitrequest,
        in_unnamed_batchnorm0_avm_writeack => in_unnamed_batchnorm0_avm_writeack,
        out_o_readdata => i_load_unnamed_batchnorm0_batchnorm_out_o_readdata,
        out_o_stall => i_load_unnamed_batchnorm0_batchnorm_out_o_stall,
        out_o_valid => i_load_unnamed_batchnorm0_batchnorm_out_o_valid,
        out_unnamed_batchnorm0_avm_address => i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_address,
        out_unnamed_batchnorm0_avm_burstcount => i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_burstcount,
        out_unnamed_batchnorm0_avm_byteenable => i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_byteenable,
        out_unnamed_batchnorm0_avm_enable => i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_enable,
        out_unnamed_batchnorm0_avm_read => i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_read,
        out_unnamed_batchnorm0_avm_write => i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_write,
        out_unnamed_batchnorm0_avm_writedata => i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x(STALLENABLE,298)
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_fromReg0 <= SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_fromReg1 <= SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_consumed0 <= (not (i_load_unnamed_batchnorm0_batchnorm_out_o_stall) and SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_wireValid) or SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_fromReg0;
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_consumed1 <= (not (redist0_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2_292_fifo_stall_out) and SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_wireValid) or SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_fromReg1;
    -- Consuming
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_StallValid <= SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_backStall and SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_wireValid;
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_toReg0 <= SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_StallValid and SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_consumed0;
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_toReg1 <= SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_StallValid and SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_consumed1;
    -- Backward Stall generation
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_or0 <= SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_consumed0;
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_wireStall <= not (SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_consumed1 and SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_or0);
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_backStall <= SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_V0 <= SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_wireValid and not (SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_fromReg0);
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_V1 <= SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_wireValid and not (SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_wireValid <= i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_o_valid;

    -- i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x(BLACKBOX,98)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit_0@10
    -- out out_c0_exit_1@10
    -- out out_c0_exit_2@10
    -- out out_o_stall@20000000
    -- out out_o_valid@10
    thei_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x : i_sfc_c0_entry_batchnorm_c0_enter_batchnorm
    PORT MAP (
        in_c0_eni2_0 => GND_q,
        in_c0_eni2_1 => bubble_select_batchnorm_B0_merge_reg_aunroll_x_b,
        in_c0_eni2_2 => bubble_select_batchnorm_B0_merge_reg_aunroll_x_c,
        in_i_stall => SE_out_i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_backStall,
        in_i_valid => SE_out_batchnorm_B0_merge_reg_aunroll_x_V4,
        in_in_data => in_in_data,
        in_in_size => in_in_size,
        in_out_data => in_out_data,
        out_c0_exit_1 => i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_1,
        out_c0_exit_2 => i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_c0_exit_2,
        out_o_stall => i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg(STALLFIFO,446)
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_in <= SE_out_batchnorm_B0_merge_reg_aunroll_x_V2;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_in <= SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_backStall;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_in(0);
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_in(0);
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_out(0) <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_out(0) <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    thebubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 208,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg(STALLFIFO,445)
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_in <= SE_out_batchnorm_B0_merge_reg_aunroll_x_V1;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_in <= SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_backStall;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_in(0);
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_in(0);
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_out(0) <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_out(0) <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    thebubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 208,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1(STALLENABLE,377)
    -- Valid signal propagation
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_V0 <= SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_backStall <= i_syncbuf_bn_weights_sync_buffer_batchnorm_out_stall_out or not (SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_wireValid <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_out;

    -- bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg(STALLFIFO,444)
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_in <= SE_out_batchnorm_B0_merge_reg_aunroll_x_V0;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_in <= SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_backStall;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_in(0);
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_in(0);
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_out(0) <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_out(0) <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    thebubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 208,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,321)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= batchnorm_B0_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,269)
    bubble_join_stall_entry_q <= in_global_id_1 & in_global_id_0;

    -- bubble_select_stall_entry(BITSELECT,270)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(63 downto 32));

    -- batchnorm_B0_merge_reg_aunroll_x(BLACKBOX,2)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    thebatchnorm_B0_merge_reg_aunroll_x : batchnorm_B0_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_data_in_1 => bubble_select_stall_entry_c,
        in_stall_in => SE_out_batchnorm_B0_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => batchnorm_B0_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => batchnorm_B0_merge_reg_aunroll_x_out_data_out_1,
        out_stall_out => batchnorm_B0_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => batchnorm_B0_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_batchnorm_B0_merge_reg_aunroll_x(STALLENABLE,279)
    SE_out_batchnorm_B0_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg2 <= (others => '0');
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg3 <= (others => '0');
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg4 <= (others => '0');
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg5 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg0 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg1 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg2 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg3 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg4 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg5 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg5;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed0 <= (not (bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_reg_stall_out) and SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid) or SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg0;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed1 <= (not (bubble_out_batchnorm_B0_merge_reg_aunroll_x_2_reg_stall_out) and SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid) or SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg1;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed2 <= (not (bubble_out_batchnorm_B0_merge_reg_aunroll_x_3_reg_stall_out) and SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid) or SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg2;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed3 <= (not (bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_out) and SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid) or SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg3;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed4 <= (not (i_sfc_c0_entry_batchnorm_c0_enter_batchnorm_aunroll_x_out_o_stall) and SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid) or SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg4;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed5 <= (not (redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_stall_out) and SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid) or SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg5;
    -- Consuming
    SE_out_batchnorm_B0_merge_reg_aunroll_x_StallValid <= SE_out_batchnorm_B0_merge_reg_aunroll_x_backStall and SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg0 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_StallValid and SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed0;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg1 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_StallValid and SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed1;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg2 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_StallValid and SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed2;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg3 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_StallValid and SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed3;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg4 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_StallValid and SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed4;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_toReg5 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_StallValid and SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed5;
    -- Backward Stall generation
    SE_out_batchnorm_B0_merge_reg_aunroll_x_or0 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed0;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_or1 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed1 and SE_out_batchnorm_B0_merge_reg_aunroll_x_or0;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_or2 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed2 and SE_out_batchnorm_B0_merge_reg_aunroll_x_or1;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_or3 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed3 and SE_out_batchnorm_B0_merge_reg_aunroll_x_or2;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_or4 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed4 and SE_out_batchnorm_B0_merge_reg_aunroll_x_or3;
    SE_out_batchnorm_B0_merge_reg_aunroll_x_wireStall <= not (SE_out_batchnorm_B0_merge_reg_aunroll_x_consumed5 and SE_out_batchnorm_B0_merge_reg_aunroll_x_or4);
    SE_out_batchnorm_B0_merge_reg_aunroll_x_backStall <= SE_out_batchnorm_B0_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_batchnorm_B0_merge_reg_aunroll_x_V0 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid and not (SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg0);
    SE_out_batchnorm_B0_merge_reg_aunroll_x_V1 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid and not (SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg1);
    SE_out_batchnorm_B0_merge_reg_aunroll_x_V2 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid and not (SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg2);
    SE_out_batchnorm_B0_merge_reg_aunroll_x_V3 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid and not (SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg3);
    SE_out_batchnorm_B0_merge_reg_aunroll_x_V4 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid and not (SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg4);
    SE_out_batchnorm_B0_merge_reg_aunroll_x_V5 <= SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid and not (SE_out_batchnorm_B0_merge_reg_aunroll_x_fromReg5);
    -- Computing multiple Valid(s)
    SE_out_batchnorm_B0_merge_reg_aunroll_x_wireValid <= batchnorm_B0_merge_reg_aunroll_x_out_valid_out;

    -- bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg(STALLFIFO,447)
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_in <= SE_out_batchnorm_B0_merge_reg_aunroll_x_V3;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_in <= SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_backStall;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_in(0);
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_in(0);
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_out(0) <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_out(0) <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    thebubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 208,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4(STALLENABLE,383)
    -- Valid signal propagation
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_V0 <= SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_backStall <= i_syncbuf_bn_biases_sync_buffer_batchnorm_out_stall_out or not (SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_wireValid <= bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_reg_valid_out;

    -- i_syncbuf_bn_biases_sync_buffer_batchnorm(BLACKBOX,113)@208
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_bn_biases_sync_buffer_batchnorm : i_syncbuf_bn_biases_sync_buffer_batchnorm6
    PORT MAP (
        in_buffer_in => in_bn_biases,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_backStall,
        in_valid_in => SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_4_V0,
        out_buffer_out => i_syncbuf_bn_biases_sync_buffer_batchnorm_out_buffer_out,
        out_stall_out => i_syncbuf_bn_biases_sync_buffer_batchnorm_out_stall_out,
        out_valid_out => i_syncbuf_bn_biases_sync_buffer_batchnorm_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm(STALLENABLE,314)
    -- Valid signal propagation
    SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_V0 <= SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_backStall <= i_load_unnamed_batchnorm4_batchnorm_out_o_stall or not (SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_and0 <= i_syncbuf_bn_biases_sync_buffer_batchnorm_out_valid_out;
    SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_wireValid <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V3 and SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_and0;

    -- SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm(STALLENABLE,316)
    -- Valid signal propagation
    SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_V0 <= SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_backStall <= i_load_unnamed_batchnorm2_batchnorm_out_o_stall or not (SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_and0 <= i_syncbuf_bn_running_mean_sync_buffer_batchnorm_out_valid_out;
    SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_wireValid <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V2 and SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_and0;

    -- SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm(STALLENABLE,318)
    -- Valid signal propagation
    SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_V0 <= SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_backStall <= i_load_unnamed_batchnorm3_batchnorm_out_o_stall or not (SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_and0 <= i_syncbuf_bn_running_var_sync_buffer_batchnorm_out_valid_out;
    SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_wireValid <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V1 and SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_and0;

    -- i_arrayidx13_batchnorm_batchnorm22_mult_multconst_x(CONSTANT,61)
    i_arrayidx13_batchnorm_batchnorm22_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- bubble_join_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo(BITJOIN,276)
    bubble_join_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_q <= redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_data_out;

    -- bubble_select_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo(BITSELECT,277)
    bubble_select_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_q(31 downto 0));

    -- i_idxprom_batchnorm_sel_x(BITSELECT,97)@207
    i_idxprom_batchnorm_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(bubble_select_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_b(31 downto 0)), 64)));

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select(BITSELECT,214)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_b <= i_idxprom_batchnorm_sel_x_b(17 downto 0);
    i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_c <= i_idxprom_batchnorm_sel_x_b(63 downto 54);
    i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_d <= i_idxprom_batchnorm_sel_x_b(35 downto 18);
    i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_e <= i_idxprom_batchnorm_sel_x_b(53 downto 36);

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_im3_shift0(BITSHIFT,199)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_im3_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx13_batchnorm_batchnorm22_mult_x_im3_shift0_q <= i_arrayidx13_batchnorm_batchnorm22_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_align_15(BITSHIFT,140)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx13_batchnorm_batchnorm22_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx13_batchnorm_batchnorm22_mult_x_align_15_q <= i_arrayidx13_batchnorm_batchnorm22_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_im6_shift0(BITSHIFT,200)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_im6_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx13_batchnorm_batchnorm22_mult_x_im6_shift0_q <= i_arrayidx13_batchnorm_batchnorm22_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_align_14(BITSHIFT,139)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx13_batchnorm_batchnorm22_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx13_batchnorm_batchnorm22_mult_x_align_14_q <= i_arrayidx13_batchnorm_batchnorm22_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_join_16(BITJOIN,141)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_join_16_q <= i_arrayidx13_batchnorm_batchnorm22_mult_x_align_15_q & i_arrayidx13_batchnorm_batchnorm22_mult_x_align_14_q;

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_im9_shift0(BITSHIFT,201)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_im9_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx13_batchnorm_batchnorm22_mult_x_im9_shift0_q <= i_arrayidx13_batchnorm_batchnorm22_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_align_12(BITSHIFT,137)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx13_batchnorm_batchnorm22_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx13_batchnorm_batchnorm22_mult_x_align_12_q <= i_arrayidx13_batchnorm_batchnorm22_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_im0_shift0(BITSHIFT,198)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_im0_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx13_batchnorm_batchnorm22_mult_x_im0_shift0_q <= i_arrayidx13_batchnorm_batchnorm22_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_join_13(BITJOIN,138)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_join_13_q <= i_arrayidx13_batchnorm_batchnorm22_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx13_batchnorm_batchnorm22_mult_x_im0_shift0_q);

    -- i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0(ADD,142)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx13_batchnorm_batchnorm22_mult_x_join_13_q);
    i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx13_batchnorm_batchnorm22_mult_x_join_16_q);
    i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_b));
    i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_q <= i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx13_batchnorm_batchnorm22_mult_extender_x(BITJOIN,60)@207
    i_arrayidx13_batchnorm_batchnorm22_mult_extender_x_q <= i_arrayidx13_batchnorm_batchnorm22_mult_multconst_x_q & i_arrayidx13_batchnorm_batchnorm22_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x(BITSELECT,62)@207
    i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x_b <= i_arrayidx13_batchnorm_batchnorm22_mult_extender_x_q(63 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_mult_x_im3_shift0(BITSHIFT,203)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_x_im3_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx6_batchnorm_batchnorm20_mult_x_im3_shift0_q <= i_arrayidx6_batchnorm_batchnorm20_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_mult_x_align_15(BITSHIFT,158)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx6_batchnorm_batchnorm20_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx6_batchnorm_batchnorm20_mult_x_align_15_q <= i_arrayidx6_batchnorm_batchnorm20_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_mult_x_im6_shift0(BITSHIFT,204)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_x_im6_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx6_batchnorm_batchnorm20_mult_x_im6_shift0_q <= i_arrayidx6_batchnorm_batchnorm20_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_mult_x_align_14(BITSHIFT,157)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx6_batchnorm_batchnorm20_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx6_batchnorm_batchnorm20_mult_x_align_14_q <= i_arrayidx6_batchnorm_batchnorm20_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_mult_x_join_16(BITJOIN,159)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_x_join_16_q <= i_arrayidx6_batchnorm_batchnorm20_mult_x_align_15_q & i_arrayidx6_batchnorm_batchnorm20_mult_x_align_14_q;

    -- i_arrayidx6_batchnorm_batchnorm20_mult_x_im9_shift0(BITSHIFT,205)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_x_im9_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx6_batchnorm_batchnorm20_mult_x_im9_shift0_q <= i_arrayidx6_batchnorm_batchnorm20_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_mult_x_align_12(BITSHIFT,155)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx6_batchnorm_batchnorm20_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx6_batchnorm_batchnorm20_mult_x_align_12_q <= i_arrayidx6_batchnorm_batchnorm20_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_mult_x_im0_shift0(BITSHIFT,202)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_x_im0_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx6_batchnorm_batchnorm20_mult_x_im0_shift0_q <= i_arrayidx6_batchnorm_batchnorm20_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_mult_x_join_13(BITJOIN,156)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_x_join_13_q <= i_arrayidx6_batchnorm_batchnorm20_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx6_batchnorm_batchnorm20_mult_x_im0_shift0_q);

    -- i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0(ADD,160)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx6_batchnorm_batchnorm20_mult_x_join_13_q);
    i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx6_batchnorm_batchnorm20_mult_x_join_16_q);
    i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_b));
    i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_q <= i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_mult_extender_x(BITJOIN,70)@207
    i_arrayidx6_batchnorm_batchnorm20_mult_extender_x_q <= i_arrayidx13_batchnorm_batchnorm22_mult_multconst_x_q & i_arrayidx6_batchnorm_batchnorm20_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x(BITSELECT,72)@207
    i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x_b <= i_arrayidx6_batchnorm_batchnorm20_mult_extender_x_q(63 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_mult_x_im3_shift0(BITSHIFT,207)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_x_im3_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx8_batchnorm_batchnorm21_mult_x_im3_shift0_q <= i_arrayidx8_batchnorm_batchnorm21_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_mult_x_align_15(BITSHIFT,176)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx8_batchnorm_batchnorm21_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx8_batchnorm_batchnorm21_mult_x_align_15_q <= i_arrayidx8_batchnorm_batchnorm21_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_mult_x_im6_shift0(BITSHIFT,208)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_x_im6_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx8_batchnorm_batchnorm21_mult_x_im6_shift0_q <= i_arrayidx8_batchnorm_batchnorm21_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_mult_x_align_14(BITSHIFT,175)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx8_batchnorm_batchnorm21_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx8_batchnorm_batchnorm21_mult_x_align_14_q <= i_arrayidx8_batchnorm_batchnorm21_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_mult_x_join_16(BITJOIN,177)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_x_join_16_q <= i_arrayidx8_batchnorm_batchnorm21_mult_x_align_15_q & i_arrayidx8_batchnorm_batchnorm21_mult_x_align_14_q;

    -- i_arrayidx8_batchnorm_batchnorm21_mult_x_im9_shift0(BITSHIFT,209)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_x_im9_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx8_batchnorm_batchnorm21_mult_x_im9_shift0_q <= i_arrayidx8_batchnorm_batchnorm21_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_mult_x_align_12(BITSHIFT,173)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx8_batchnorm_batchnorm21_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx8_batchnorm_batchnorm21_mult_x_align_12_q <= i_arrayidx8_batchnorm_batchnorm21_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_mult_x_im0_shift0(BITSHIFT,206)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_x_im0_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx8_batchnorm_batchnorm21_mult_x_im0_shift0_q <= i_arrayidx8_batchnorm_batchnorm21_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_mult_x_join_13(BITJOIN,174)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_x_join_13_q <= i_arrayidx8_batchnorm_batchnorm21_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx8_batchnorm_batchnorm21_mult_x_im0_shift0_q);

    -- i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0(ADD,178)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx8_batchnorm_batchnorm21_mult_x_join_13_q);
    i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx8_batchnorm_batchnorm21_mult_x_join_16_q);
    i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_b));
    i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_q <= i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_mult_extender_x(BITJOIN,80)@207
    i_arrayidx8_batchnorm_batchnorm21_mult_extender_x_q <= i_arrayidx13_batchnorm_batchnorm22_mult_multconst_x_q & i_arrayidx8_batchnorm_batchnorm21_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x(BITSELECT,82)@207
    i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x_b <= i_arrayidx8_batchnorm_batchnorm21_mult_extender_x_q(63 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_mult_x_im3_shift0(BITSHIFT,211)@207
    i_arrayidx_batchnorm_batchnorm19_mult_x_im3_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx_batchnorm_batchnorm19_mult_x_im3_shift0_q <= i_arrayidx_batchnorm_batchnorm19_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_mult_x_align_15(BITSHIFT,194)@207
    i_arrayidx_batchnorm_batchnorm19_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_batchnorm_batchnorm19_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx_batchnorm_batchnorm19_mult_x_align_15_q <= i_arrayidx_batchnorm_batchnorm19_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_mult_x_im6_shift0(BITSHIFT,212)@207
    i_arrayidx_batchnorm_batchnorm19_mult_x_im6_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx_batchnorm_batchnorm19_mult_x_im6_shift0_q <= i_arrayidx_batchnorm_batchnorm19_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_mult_x_align_14(BITSHIFT,193)@207
    i_arrayidx_batchnorm_batchnorm19_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_batchnorm_batchnorm19_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx_batchnorm_batchnorm19_mult_x_align_14_q <= i_arrayidx_batchnorm_batchnorm19_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_mult_x_join_16(BITJOIN,195)@207
    i_arrayidx_batchnorm_batchnorm19_mult_x_join_16_q <= i_arrayidx_batchnorm_batchnorm19_mult_x_align_15_q & i_arrayidx_batchnorm_batchnorm19_mult_x_align_14_q;

    -- i_arrayidx_batchnorm_batchnorm19_mult_x_im9_shift0(BITSHIFT,213)@207
    i_arrayidx_batchnorm_batchnorm19_mult_x_im9_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx_batchnorm_batchnorm19_mult_x_im9_shift0_q <= i_arrayidx_batchnorm_batchnorm19_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_mult_x_align_12(BITSHIFT,191)@207
    i_arrayidx_batchnorm_batchnorm19_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_batchnorm_batchnorm19_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx_batchnorm_batchnorm19_mult_x_align_12_q <= i_arrayidx_batchnorm_batchnorm19_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_mult_x_im0_shift0(BITSHIFT,210)@207
    i_arrayidx_batchnorm_batchnorm19_mult_x_im0_shift0_qint <= i_arrayidx13_batchnorm_batchnorm22_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx_batchnorm_batchnorm19_mult_x_im0_shift0_q <= i_arrayidx_batchnorm_batchnorm19_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_mult_x_join_13(BITJOIN,192)@207
    i_arrayidx_batchnorm_batchnorm19_mult_x_join_13_q <= i_arrayidx_batchnorm_batchnorm19_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx_batchnorm_batchnorm19_mult_x_im0_shift0_q);

    -- i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0(ADD,196)@207
    i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx_batchnorm_batchnorm19_mult_x_join_13_q);
    i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_batchnorm_batchnorm19_mult_x_join_16_q);
    i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_b));
    i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_q <= i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_mult_extender_x(BITJOIN,90)@207
    i_arrayidx_batchnorm_batchnorm19_mult_extender_x_q <= i_arrayidx13_batchnorm_batchnorm22_mult_multconst_x_q & i_arrayidx_batchnorm_batchnorm19_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_trunc_sel_x(BITSELECT,92)@207
    i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b <= i_arrayidx_batchnorm_batchnorm19_mult_extender_x_q(63 downto 0);

    -- SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0(STALLREG,448)
    SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid <= (others => '0');
            SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data0 <= (others => '-');
            SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data1 <= (others => '-');
            SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data2 <= (others => '-');
            SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data3 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backStall and (SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid or SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_i_valid);

            IF (SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data0 <= STD_LOGIC_VECTOR(i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b);
                SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data1 <= STD_LOGIC_VECTOR(i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x_b);
                SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data2 <= STD_LOGIC_VECTOR(i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x_b);
                SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data3 <= STD_LOGIC_VECTOR(i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_i_valid <= SE_out_redist5_batchnorm_B0_merge_reg_aunroll_x_out_data_out_0_206_fifo_V0;
    -- Stall signal propagation
    SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backStall <= SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid or not (SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_i_valid);

    -- Valid
    SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V <= SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid WHEN SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid = "1" ELSE SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_i_valid;

    -- Data0
    SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D0 <= SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data0 WHEN SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid = "1" ELSE i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b;
    -- Data1
    SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D1 <= SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data1 WHEN SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid = "1" ELSE i_arrayidx8_batchnorm_batchnorm21_trunc_sel_x_b;
    -- Data2
    SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D2 <= SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data2 WHEN SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid = "1" ELSE i_arrayidx6_batchnorm_batchnorm20_trunc_sel_x_b;
    -- Data3
    SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D3 <= SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_data3 WHEN SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_r_valid = "1" ELSE i_arrayidx13_batchnorm_batchnorm22_trunc_sel_x_b;

    -- SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0(STALLENABLE,366)
    -- Valid signal propagation
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V0 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_0;
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V1 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_1;
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V2 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_2;
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V3 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_3;
    -- Stall signal propagation
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_0 <= SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_backStall and SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_0;
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_1 <= SE_out_i_syncbuf_bn_running_var_sync_buffer_batchnorm_backStall and SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_1;
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_2 <= SE_out_i_syncbuf_bn_running_mean_sync_buffer_batchnorm_backStall and SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_2;
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_3 <= SE_out_i_syncbuf_bn_biases_sync_buffer_batchnorm_backStall and SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_3;
    -- Backward Enable generation
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_or0 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_0;
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_or1 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_1 or SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_or0;
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_or2 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_2 or SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_or1;
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN <= not (SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_3 or SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_or2);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_v_s_0 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN and SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V;
    -- Backward Stall generation
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backStall <= not (SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN);
    SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_0 <= (others => '0');
            SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_1 <= (others => '0');
            SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_2 <= (others => '0');
            SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_3 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_0 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_0 and SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_0 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_v_s_0;
            END IF;

            IF (SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_1 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_1 and SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_1;
            ELSE
                SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_1 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_v_s_0;
            END IF;

            IF (SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_2 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_2 and SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_2;
            ELSE
                SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_2 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_v_s_0;
            END IF;

            IF (SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_3 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_3 and SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_s_tv_3;
            ELSE
                SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_R_v_3 <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- i_syncbuf_bn_weights_sync_buffer_batchnorm(BLACKBOX,116)@208
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_bn_weights_sync_buffer_batchnorm : i_syncbuf_bn_weights_sync_buffer_batchnorm0
    PORT MAP (
        in_buffer_in => in_bn_weights,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_backStall,
        in_valid_in => SE_out_bubble_out_batchnorm_B0_merge_reg_aunroll_x_1_V0,
        out_buffer_out => i_syncbuf_bn_weights_sync_buffer_batchnorm_out_buffer_out,
        out_stall_out => i_syncbuf_bn_weights_sync_buffer_batchnorm_out_stall_out,
        out_valid_out => i_syncbuf_bn_weights_sync_buffer_batchnorm_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm(STALLENABLE,320)
    -- Valid signal propagation
    SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_V0 <= SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_backStall <= i_load_unnamed_batchnorm1_batchnorm_out_o_stall or not (SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_and0 <= i_syncbuf_bn_weights_sync_buffer_batchnorm_out_valid_out;
    SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_wireValid <= SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_V0 and SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_and0;

    -- SE_out_i_load_unnamed_batchnorm4_batchnorm(STALLENABLE,310)
    -- Valid signal propagation
    SE_out_i_load_unnamed_batchnorm4_batchnorm_V0 <= SE_out_i_load_unnamed_batchnorm4_batchnorm_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_batchnorm4_batchnorm_backStall <= i_sfc_c1_entry_batchnorm_c1_enter_batchnorm_aunroll_x_out_o_stall or not (SE_out_i_load_unnamed_batchnorm4_batchnorm_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_batchnorm4_batchnorm_and0 <= i_load_unnamed_batchnorm4_batchnorm_out_o_valid;
    SE_out_i_load_unnamed_batchnorm4_batchnorm_and1 <= i_load_unnamed_batchnorm3_batchnorm_out_o_valid and SE_out_i_load_unnamed_batchnorm4_batchnorm_and0;
    SE_out_i_load_unnamed_batchnorm4_batchnorm_and2 <= i_load_unnamed_batchnorm2_batchnorm_out_o_valid and SE_out_i_load_unnamed_batchnorm4_batchnorm_and1;
    SE_out_i_load_unnamed_batchnorm4_batchnorm_and3 <= i_load_unnamed_batchnorm1_batchnorm_out_o_valid and SE_out_i_load_unnamed_batchnorm4_batchnorm_and2;
    SE_out_i_load_unnamed_batchnorm4_batchnorm_wireValid <= i_load_unnamed_batchnorm0_batchnorm_out_o_valid and SE_out_i_load_unnamed_batchnorm4_batchnorm_and3;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0(REG,222)
    redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_syncbuf_bn_weights_sync_buffer_batchnorm(BITJOIN,266)
    bubble_join_i_syncbuf_bn_weights_sync_buffer_batchnorm_q <= i_syncbuf_bn_weights_sync_buffer_batchnorm_out_buffer_out;

    -- bubble_select_i_syncbuf_bn_weights_sync_buffer_batchnorm(BITSELECT,267)
    bubble_select_i_syncbuf_bn_weights_sync_buffer_batchnorm_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_bn_weights_sync_buffer_batchnorm_q(63 downto 0));

    -- i_arrayidx_batchnorm_batchnorm19_add_x(ADD,93)@208
    i_arrayidx_batchnorm_batchnorm19_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_bn_weights_sync_buffer_batchnorm_b);
    i_arrayidx_batchnorm_batchnorm19_add_x_b <= STD_LOGIC_VECTOR("0" & redist1_i_arrayidx_batchnorm_batchnorm19_trunc_sel_x_b_1_0_q);
    i_arrayidx_batchnorm_batchnorm19_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_batchnorm_batchnorm19_add_x_a) + UNSIGNED(i_arrayidx_batchnorm_batchnorm19_add_x_b));
    i_arrayidx_batchnorm_batchnorm19_add_x_q <= i_arrayidx_batchnorm_batchnorm19_add_x_o(64 downto 0);

    -- i_arrayidx_batchnorm_batchnorm19_dupName_0_trunc_sel_x(BITSELECT,87)@208
    i_arrayidx_batchnorm_batchnorm19_dupName_0_trunc_sel_x_b <= i_arrayidx_batchnorm_batchnorm19_add_x_q(63 downto 0);

    -- i_load_unnamed_batchnorm1_batchnorm(BLACKBOX,108)@208
    -- in in_i_stall@20000000
    -- out out_o_readdata@210
    -- out out_o_stall@20000000
    -- out out_o_valid@210
    -- out out_unnamed_batchnorm1_avm_address@20000000
    -- out out_unnamed_batchnorm1_avm_burstcount@20000000
    -- out out_unnamed_batchnorm1_avm_byteenable@20000000
    -- out out_unnamed_batchnorm1_avm_enable@20000000
    -- out out_unnamed_batchnorm1_avm_read@20000000
    -- out out_unnamed_batchnorm1_avm_write@20000000
    -- out out_unnamed_batchnorm1_avm_writedata@20000000
    thei_load_unnamed_batchnorm1_batchnorm : i_load_unnamed_batchnorm1_batchnorm25
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx_batchnorm_batchnorm19_dupName_0_trunc_sel_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_batchnorm4_batchnorm_backStall,
        in_i_valid => SE_out_i_syncbuf_bn_weights_sync_buffer_batchnorm_V0,
        in_lsu_unnamed_batchnorm1_streset_stream_reset => in_lsu_unnamed_batchnorm1_streset_stream_reset,
        in_lsu_unnamed_batchnorm1_sts_stream_size => in_lsu_unnamed_batchnorm1_sts_stream_size,
        in_stream_base_addr => i_arrayidx_batchnorm_batchnorm19_dupName_0_trunc_sel_x_b,
        in_unnamed_batchnorm1_avm_readdata => in_unnamed_batchnorm1_avm_readdata,
        in_unnamed_batchnorm1_avm_readdatavalid => in_unnamed_batchnorm1_avm_readdatavalid,
        in_unnamed_batchnorm1_avm_waitrequest => in_unnamed_batchnorm1_avm_waitrequest,
        in_unnamed_batchnorm1_avm_writeack => in_unnamed_batchnorm1_avm_writeack,
        out_o_readdata => i_load_unnamed_batchnorm1_batchnorm_out_o_readdata,
        out_o_stall => i_load_unnamed_batchnorm1_batchnorm_out_o_stall,
        out_o_valid => i_load_unnamed_batchnorm1_batchnorm_out_o_valid,
        out_unnamed_batchnorm1_avm_address => i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_address,
        out_unnamed_batchnorm1_avm_burstcount => i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_burstcount,
        out_unnamed_batchnorm1_avm_byteenable => i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_byteenable,
        out_unnamed_batchnorm1_avm_enable => i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_enable,
        out_unnamed_batchnorm1_avm_read => i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_read,
        out_unnamed_batchnorm1_avm_write => i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_write,
        out_unnamed_batchnorm1_avm_writedata => i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_unnamed_batchnorm1_avm_address <= i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_address;
    out_unnamed_batchnorm1_avm_enable <= i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_enable;
    out_unnamed_batchnorm1_avm_read <= i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_read;
    out_unnamed_batchnorm1_avm_write <= i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_write;
    out_unnamed_batchnorm1_avm_writedata <= i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_writedata;
    out_unnamed_batchnorm1_avm_byteenable <= i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_byteenable;
    out_unnamed_batchnorm1_avm_burstcount <= i_load_unnamed_batchnorm1_batchnorm_out_unnamed_batchnorm1_avm_burstcount;

    -- dupName_0_sync_out_x(GPOUT,9)@304
    out_valid_out <= SE_out_i_store_unnamed_batchnorm5_batchnorm_V0;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,11)
    out_unnamed_batchnorm2_avm_address <= i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_address;
    out_unnamed_batchnorm2_avm_enable <= i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_enable;
    out_unnamed_batchnorm2_avm_read <= i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_read;
    out_unnamed_batchnorm2_avm_write <= i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_write;
    out_unnamed_batchnorm2_avm_writedata <= i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_writedata;
    out_unnamed_batchnorm2_avm_byteenable <= i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_byteenable;
    out_unnamed_batchnorm2_avm_burstcount <= i_load_unnamed_batchnorm2_batchnorm_out_unnamed_batchnorm2_avm_burstcount;

    -- dupName_2_ext_sig_sync_out_x(GPOUT,16)
    out_unnamed_batchnorm3_avm_address <= i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_address;
    out_unnamed_batchnorm3_avm_enable <= i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_enable;
    out_unnamed_batchnorm3_avm_read <= i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_read;
    out_unnamed_batchnorm3_avm_write <= i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_write;
    out_unnamed_batchnorm3_avm_writedata <= i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_writedata;
    out_unnamed_batchnorm3_avm_byteenable <= i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_byteenable;
    out_unnamed_batchnorm3_avm_burstcount <= i_load_unnamed_batchnorm3_batchnorm_out_unnamed_batchnorm3_avm_burstcount;

    -- dupName_3_ext_sig_sync_out_x(GPOUT,21)
    out_unnamed_batchnorm4_avm_address <= i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_address;
    out_unnamed_batchnorm4_avm_enable <= i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_enable;
    out_unnamed_batchnorm4_avm_read <= i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_read;
    out_unnamed_batchnorm4_avm_write <= i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_write;
    out_unnamed_batchnorm4_avm_writedata <= i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_writedata;
    out_unnamed_batchnorm4_avm_byteenable <= i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_byteenable;
    out_unnamed_batchnorm4_avm_burstcount <= i_load_unnamed_batchnorm4_batchnorm_out_unnamed_batchnorm4_avm_burstcount;

    -- dupName_4_ext_sig_sync_out_x(GPOUT,26)
    out_unnamed_batchnorm5_avm_address <= i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_address;
    out_unnamed_batchnorm5_avm_enable <= i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_enable;
    out_unnamed_batchnorm5_avm_read <= i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_read;
    out_unnamed_batchnorm5_avm_write <= i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_write;
    out_unnamed_batchnorm5_avm_writedata <= i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_writedata;
    out_unnamed_batchnorm5_avm_byteenable <= i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_byteenable;
    out_unnamed_batchnorm5_avm_burstcount <= i_store_unnamed_batchnorm5_batchnorm_out_unnamed_batchnorm5_avm_burstcount;

    -- dupName_5_ext_sig_sync_out_x(GPOUT,31)
    out_lsu_unnamed_batchnorm5_o_active <= i_store_unnamed_batchnorm5_batchnorm_out_lsu_unnamed_batchnorm5_o_active;

    -- ext_sig_sync_out(GPOUT,104)
    out_unnamed_batchnorm0_avm_address <= i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_address;
    out_unnamed_batchnorm0_avm_enable <= i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_enable;
    out_unnamed_batchnorm0_avm_read <= i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_read;
    out_unnamed_batchnorm0_avm_write <= i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_write;
    out_unnamed_batchnorm0_avm_writedata <= i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_writedata;
    out_unnamed_batchnorm0_avm_byteenable <= i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_byteenable;
    out_unnamed_batchnorm0_avm_burstcount <= i_load_unnamed_batchnorm0_batchnorm_out_unnamed_batchnorm0_avm_burstcount;

    -- sync_out(GPOUT,124)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
