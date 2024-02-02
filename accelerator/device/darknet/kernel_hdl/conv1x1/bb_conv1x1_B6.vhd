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

-- VHDL created from bb_conv1x1_B6
-- VHDL created on Wed Nov 29 11:50:03 2023


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

entity bb_conv1x1_B6 is
    port (
        in_c0_exe116870_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe116870_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe121192_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe121192_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe13_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe13_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe221296_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe221296_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3213100_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3213100_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe358_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe358_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417178_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417178_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4214101_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe4214101_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe517284_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517284_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5215102_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5215102_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6216103_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6216103_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe113_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe113_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe122_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe122_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe130_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe130_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe238_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c3_exe238_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01049_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01049_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_2_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_2_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp_17_2_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_17_2_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_unnamed_conv1x110_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x110_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x110_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x110_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x19_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x19_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116870 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe121192 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe13 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe221296 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3213100 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe358 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417178 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4214101 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe517284 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5215102 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6216103 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe113 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c1_exe1238 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe122 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe130 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe238 : out std_logic_vector(0 downto 0);  -- ufix1
        out_inc_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_j_01049 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x110_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x110_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x110_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x110_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x110_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x110_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x110_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x19_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x19_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x19_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x19_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x19_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x19_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x19_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B6;

architecture normal of bb_conv1x1_B6 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv1x1_B6_stall_region is
        port (
            in_c0_exe116870 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe121192 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe13 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe221296 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3213100 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe358 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417178 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4214101 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe517284 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5215102 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6216103 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe122 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe130 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe238 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01049 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_17_2 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x110_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x110_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x110_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x110_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x19_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x110_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x18 : out std_logic_vector(0 downto 0);  -- Fixed Point
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


    component conv1x1_B6_branch is
        port (
            in_c0_exe116870 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe121192 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe13 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe221296 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3213100 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe358 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417178 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4214101 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe517284 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5215102 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6216103 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe1238 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe122 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe130 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe238 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_inc_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01049 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B6_merge is
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
            in_j_01049_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01049_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_2_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_17_2_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_17_2_1 : in std_logic_vector(31 downto 0);  -- Floating Point
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
            out_c2_exe122 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe130 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe238 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01049 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_k_18_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_17_2 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv1x1_B6_stall_region_out_c0_exe116870 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c0_exe121192 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c0_exe13 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c0_exe221296 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c0_exe3213100 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c0_exe358 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c0_exe417178 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c0_exe4214101 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c0_exe517284 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c0_exe5215102 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c0_exe6216103 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c1_exe113 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c1_exe1238 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c2_exe122 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c3_exe130 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_stall_region_out_c3_exe238 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_inc_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_stall_region_out_j_01049 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x18 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B6_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_c0_exe116870 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_c0_exe121192 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_branch_out_c0_exe13 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B6_branch_out_c0_exe221296 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_c0_exe3213100 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_c0_exe358 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_c0_exe417178 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_c0_exe4214101 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_branch_out_c0_exe517284 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_c0_exe5215102 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_c0_exe6216103 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_c1_exe113 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B6_branch_out_c1_exe1238 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_branch_out_c2_exe122 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_branch_out_c3_exe130 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_branch_out_c3_exe238 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_inc_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_branch_out_j_01049 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_c0_exe116870 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_c0_exe121192 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_merge_out_c0_exe13 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B6_merge_out_c0_exe221296 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_c0_exe3213100 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_c0_exe358 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_c0_exe417178 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_c0_exe4214101 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_merge_out_c0_exe517284 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_c0_exe5215102 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_c0_exe6216103 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_c1_exe113 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B6_merge_out_c2_exe122 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_merge_out_c3_exe130 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_merge_out_c3_exe238 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_j_01049 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_merge_out_k_18_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_merge_out_tmp_17_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B6_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv1x1_B6_merge(BLACKBOX,4)
    theconv1x1_B6_merge : conv1x1_B6_merge
    PORT MAP (
        in_c0_exe116870_0 => in_c0_exe116870_0,
        in_c0_exe116870_1 => in_c0_exe116870_1,
        in_c0_exe121192_0 => in_c0_exe121192_0,
        in_c0_exe121192_1 => in_c0_exe121192_1,
        in_c0_exe13_0 => in_c0_exe13_0,
        in_c0_exe13_1 => in_c0_exe13_1,
        in_c0_exe221296_0 => in_c0_exe221296_0,
        in_c0_exe221296_1 => in_c0_exe221296_1,
        in_c0_exe3213100_0 => in_c0_exe3213100_0,
        in_c0_exe3213100_1 => in_c0_exe3213100_1,
        in_c0_exe358_0 => in_c0_exe358_0,
        in_c0_exe358_1 => in_c0_exe358_1,
        in_c0_exe417178_0 => in_c0_exe417178_0,
        in_c0_exe417178_1 => in_c0_exe417178_1,
        in_c0_exe4214101_0 => in_c0_exe4214101_0,
        in_c0_exe4214101_1 => in_c0_exe4214101_1,
        in_c0_exe517284_0 => in_c0_exe517284_0,
        in_c0_exe517284_1 => in_c0_exe517284_1,
        in_c0_exe5215102_0 => in_c0_exe5215102_0,
        in_c0_exe5215102_1 => in_c0_exe5215102_1,
        in_c0_exe6216103_0 => in_c0_exe6216103_0,
        in_c0_exe6216103_1 => in_c0_exe6216103_1,
        in_c1_exe113_0 => in_c1_exe113_0,
        in_c1_exe113_1 => in_c1_exe113_1,
        in_c2_exe122_0 => in_c2_exe122_0,
        in_c2_exe122_1 => in_c2_exe122_1,
        in_c3_exe130_0 => in_c3_exe130_0,
        in_c3_exe130_1 => in_c3_exe130_1,
        in_c3_exe238_0 => in_c3_exe238_0,
        in_c3_exe238_1 => in_c3_exe238_1,
        in_j_01049_0 => in_j_01049_0,
        in_j_01049_1 => in_j_01049_1,
        in_k_18_2_0 => in_k_18_2_0,
        in_k_18_2_1 => in_k_18_2_1,
        in_stall_in => bb_conv1x1_B6_stall_region_out_stall_out,
        in_tmp_17_2_0 => in_tmp_17_2_0,
        in_tmp_17_2_1 => in_tmp_17_2_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_c0_exe116870 => conv1x1_B6_merge_out_c0_exe116870,
        out_c0_exe121192 => conv1x1_B6_merge_out_c0_exe121192,
        out_c0_exe13 => conv1x1_B6_merge_out_c0_exe13,
        out_c0_exe221296 => conv1x1_B6_merge_out_c0_exe221296,
        out_c0_exe3213100 => conv1x1_B6_merge_out_c0_exe3213100,
        out_c0_exe358 => conv1x1_B6_merge_out_c0_exe358,
        out_c0_exe417178 => conv1x1_B6_merge_out_c0_exe417178,
        out_c0_exe4214101 => conv1x1_B6_merge_out_c0_exe4214101,
        out_c0_exe517284 => conv1x1_B6_merge_out_c0_exe517284,
        out_c0_exe5215102 => conv1x1_B6_merge_out_c0_exe5215102,
        out_c0_exe6216103 => conv1x1_B6_merge_out_c0_exe6216103,
        out_c1_exe113 => conv1x1_B6_merge_out_c1_exe113,
        out_c2_exe122 => conv1x1_B6_merge_out_c2_exe122,
        out_c3_exe130 => conv1x1_B6_merge_out_c3_exe130,
        out_c3_exe238 => conv1x1_B6_merge_out_c3_exe238,
        out_j_01049 => conv1x1_B6_merge_out_j_01049,
        out_k_18_2 => conv1x1_B6_merge_out_k_18_2,
        out_stall_out_0 => conv1x1_B6_merge_out_stall_out_0,
        out_stall_out_1 => conv1x1_B6_merge_out_stall_out_1,
        out_tmp_17_2 => conv1x1_B6_merge_out_tmp_17_2,
        out_valid_out => conv1x1_B6_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B6_stall_region(BLACKBOX,2)
    thebb_conv1x1_B6_stall_region : bb_conv1x1_B6_stall_region
    PORT MAP (
        in_c0_exe116870 => conv1x1_B6_merge_out_c0_exe116870,
        in_c0_exe121192 => conv1x1_B6_merge_out_c0_exe121192,
        in_c0_exe13 => conv1x1_B6_merge_out_c0_exe13,
        in_c0_exe221296 => conv1x1_B6_merge_out_c0_exe221296,
        in_c0_exe3213100 => conv1x1_B6_merge_out_c0_exe3213100,
        in_c0_exe358 => conv1x1_B6_merge_out_c0_exe358,
        in_c0_exe417178 => conv1x1_B6_merge_out_c0_exe417178,
        in_c0_exe4214101 => conv1x1_B6_merge_out_c0_exe4214101,
        in_c0_exe517284 => conv1x1_B6_merge_out_c0_exe517284,
        in_c0_exe5215102 => conv1x1_B6_merge_out_c0_exe5215102,
        in_c0_exe6216103 => conv1x1_B6_merge_out_c0_exe6216103,
        in_c1_exe113 => conv1x1_B6_merge_out_c1_exe113,
        in_c2_exe122 => conv1x1_B6_merge_out_c2_exe122,
        in_c3_exe130 => conv1x1_B6_merge_out_c3_exe130,
        in_c3_exe238 => conv1x1_B6_merge_out_c3_exe238,
        in_filter_weight => in_filter_weight,
        in_flush => in_flush,
        in_input_channels => in_input_channels,
        in_input_im => in_input_im,
        in_input_size => in_input_size,
        in_j_01049 => conv1x1_B6_merge_out_j_01049,
        in_k_18_2 => conv1x1_B6_merge_out_k_18_2,
        in_stall_in => conv1x1_B6_branch_out_stall_out,
        in_tmp_17_2 => conv1x1_B6_merge_out_tmp_17_2,
        in_unnamed_conv1x110_avm_readdata => in_unnamed_conv1x110_avm_readdata,
        in_unnamed_conv1x110_avm_readdatavalid => in_unnamed_conv1x110_avm_readdatavalid,
        in_unnamed_conv1x110_avm_waitrequest => in_unnamed_conv1x110_avm_waitrequest,
        in_unnamed_conv1x110_avm_writeack => in_unnamed_conv1x110_avm_writeack,
        in_unnamed_conv1x19_avm_readdata => in_unnamed_conv1x19_avm_readdata,
        in_unnamed_conv1x19_avm_readdatavalid => in_unnamed_conv1x19_avm_readdatavalid,
        in_unnamed_conv1x19_avm_waitrequest => in_unnamed_conv1x19_avm_waitrequest,
        in_unnamed_conv1x19_avm_writeack => in_unnamed_conv1x19_avm_writeack,
        in_valid_in => conv1x1_B6_merge_out_valid_out,
        out_c0_exe116870 => bb_conv1x1_B6_stall_region_out_c0_exe116870,
        out_c0_exe121192 => bb_conv1x1_B6_stall_region_out_c0_exe121192,
        out_c0_exe13 => bb_conv1x1_B6_stall_region_out_c0_exe13,
        out_c0_exe221296 => bb_conv1x1_B6_stall_region_out_c0_exe221296,
        out_c0_exe3213100 => bb_conv1x1_B6_stall_region_out_c0_exe3213100,
        out_c0_exe358 => bb_conv1x1_B6_stall_region_out_c0_exe358,
        out_c0_exe417178 => bb_conv1x1_B6_stall_region_out_c0_exe417178,
        out_c0_exe4214101 => bb_conv1x1_B6_stall_region_out_c0_exe4214101,
        out_c0_exe517284 => bb_conv1x1_B6_stall_region_out_c0_exe517284,
        out_c0_exe5215102 => bb_conv1x1_B6_stall_region_out_c0_exe5215102,
        out_c0_exe6216103 => bb_conv1x1_B6_stall_region_out_c0_exe6216103,
        out_c1_exe113 => bb_conv1x1_B6_stall_region_out_c1_exe113,
        out_c1_exe1238 => bb_conv1x1_B6_stall_region_out_c1_exe1238,
        out_c2_exe122 => bb_conv1x1_B6_stall_region_out_c2_exe122,
        out_c3_exe130 => bb_conv1x1_B6_stall_region_out_c3_exe130,
        out_c3_exe238 => bb_conv1x1_B6_stall_region_out_c3_exe238,
        out_inc_2 => bb_conv1x1_B6_stall_region_out_inc_2,
        out_j_01049 => bb_conv1x1_B6_stall_region_out_j_01049,
        out_stall_out => bb_conv1x1_B6_stall_region_out_stall_out,
        out_unnamed_conv1x110_avm_address => bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_address,
        out_unnamed_conv1x110_avm_burstcount => bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_burstcount,
        out_unnamed_conv1x110_avm_byteenable => bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_byteenable,
        out_unnamed_conv1x110_avm_enable => bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_enable,
        out_unnamed_conv1x110_avm_read => bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_read,
        out_unnamed_conv1x110_avm_write => bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_write,
        out_unnamed_conv1x110_avm_writedata => bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_writedata,
        out_unnamed_conv1x18 => bb_conv1x1_B6_stall_region_out_unnamed_conv1x18,
        out_unnamed_conv1x19_avm_address => bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_address,
        out_unnamed_conv1x19_avm_burstcount => bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_burstcount,
        out_unnamed_conv1x19_avm_byteenable => bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_byteenable,
        out_unnamed_conv1x19_avm_enable => bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_enable,
        out_unnamed_conv1x19_avm_read => bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_read,
        out_unnamed_conv1x19_avm_write => bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_write,
        out_unnamed_conv1x19_avm_writedata => bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_writedata,
        out_valid_out => bb_conv1x1_B6_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv1x1_B6_branch(BLACKBOX,3)
    theconv1x1_B6_branch : conv1x1_B6_branch
    PORT MAP (
        in_c0_exe116870 => bb_conv1x1_B6_stall_region_out_c0_exe116870,
        in_c0_exe121192 => bb_conv1x1_B6_stall_region_out_c0_exe121192,
        in_c0_exe13 => bb_conv1x1_B6_stall_region_out_c0_exe13,
        in_c0_exe221296 => bb_conv1x1_B6_stall_region_out_c0_exe221296,
        in_c0_exe3213100 => bb_conv1x1_B6_stall_region_out_c0_exe3213100,
        in_c0_exe358 => bb_conv1x1_B6_stall_region_out_c0_exe358,
        in_c0_exe417178 => bb_conv1x1_B6_stall_region_out_c0_exe417178,
        in_c0_exe4214101 => bb_conv1x1_B6_stall_region_out_c0_exe4214101,
        in_c0_exe517284 => bb_conv1x1_B6_stall_region_out_c0_exe517284,
        in_c0_exe5215102 => bb_conv1x1_B6_stall_region_out_c0_exe5215102,
        in_c0_exe6216103 => bb_conv1x1_B6_stall_region_out_c0_exe6216103,
        in_c1_exe113 => bb_conv1x1_B6_stall_region_out_c1_exe113,
        in_c1_exe1238 => bb_conv1x1_B6_stall_region_out_c1_exe1238,
        in_c2_exe122 => bb_conv1x1_B6_stall_region_out_c2_exe122,
        in_c3_exe130 => bb_conv1x1_B6_stall_region_out_c3_exe130,
        in_c3_exe238 => bb_conv1x1_B6_stall_region_out_c3_exe238,
        in_inc_2 => bb_conv1x1_B6_stall_region_out_inc_2,
        in_j_01049 => bb_conv1x1_B6_stall_region_out_j_01049,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_unnamed_conv1x18 => bb_conv1x1_B6_stall_region_out_unnamed_conv1x18,
        in_valid_in => bb_conv1x1_B6_stall_region_out_valid_out,
        out_c0_exe116870 => conv1x1_B6_branch_out_c0_exe116870,
        out_c0_exe121192 => conv1x1_B6_branch_out_c0_exe121192,
        out_c0_exe13 => conv1x1_B6_branch_out_c0_exe13,
        out_c0_exe221296 => conv1x1_B6_branch_out_c0_exe221296,
        out_c0_exe3213100 => conv1x1_B6_branch_out_c0_exe3213100,
        out_c0_exe358 => conv1x1_B6_branch_out_c0_exe358,
        out_c0_exe417178 => conv1x1_B6_branch_out_c0_exe417178,
        out_c0_exe4214101 => conv1x1_B6_branch_out_c0_exe4214101,
        out_c0_exe517284 => conv1x1_B6_branch_out_c0_exe517284,
        out_c0_exe5215102 => conv1x1_B6_branch_out_c0_exe5215102,
        out_c0_exe6216103 => conv1x1_B6_branch_out_c0_exe6216103,
        out_c1_exe113 => conv1x1_B6_branch_out_c1_exe113,
        out_c1_exe1238 => conv1x1_B6_branch_out_c1_exe1238,
        out_c2_exe122 => conv1x1_B6_branch_out_c2_exe122,
        out_c3_exe130 => conv1x1_B6_branch_out_c3_exe130,
        out_c3_exe238 => conv1x1_B6_branch_out_c3_exe238,
        out_inc_2 => conv1x1_B6_branch_out_inc_2,
        out_j_01049 => conv1x1_B6_branch_out_j_01049,
        out_stall_out => conv1x1_B6_branch_out_stall_out,
        out_valid_out_0 => conv1x1_B6_branch_out_valid_out_0,
        out_valid_out_1 => conv1x1_B6_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe116870(GPOUT,62)
    out_c0_exe116870 <= conv1x1_B6_branch_out_c0_exe116870;

    -- out_c0_exe121192(GPOUT,63)
    out_c0_exe121192 <= conv1x1_B6_branch_out_c0_exe121192;

    -- out_c0_exe13(GPOUT,64)
    out_c0_exe13 <= conv1x1_B6_branch_out_c0_exe13;

    -- out_c0_exe221296(GPOUT,65)
    out_c0_exe221296 <= conv1x1_B6_branch_out_c0_exe221296;

    -- out_c0_exe3213100(GPOUT,66)
    out_c0_exe3213100 <= conv1x1_B6_branch_out_c0_exe3213100;

    -- out_c0_exe358(GPOUT,67)
    out_c0_exe358 <= conv1x1_B6_branch_out_c0_exe358;

    -- out_c0_exe417178(GPOUT,68)
    out_c0_exe417178 <= conv1x1_B6_branch_out_c0_exe417178;

    -- out_c0_exe4214101(GPOUT,69)
    out_c0_exe4214101 <= conv1x1_B6_branch_out_c0_exe4214101;

    -- out_c0_exe517284(GPOUT,70)
    out_c0_exe517284 <= conv1x1_B6_branch_out_c0_exe517284;

    -- out_c0_exe5215102(GPOUT,71)
    out_c0_exe5215102 <= conv1x1_B6_branch_out_c0_exe5215102;

    -- out_c0_exe6216103(GPOUT,72)
    out_c0_exe6216103 <= conv1x1_B6_branch_out_c0_exe6216103;

    -- out_c1_exe113(GPOUT,73)
    out_c1_exe113 <= conv1x1_B6_branch_out_c1_exe113;

    -- out_c1_exe1238(GPOUT,74)
    out_c1_exe1238 <= conv1x1_B6_branch_out_c1_exe1238;

    -- out_c2_exe122(GPOUT,75)
    out_c2_exe122 <= conv1x1_B6_branch_out_c2_exe122;

    -- out_c3_exe130(GPOUT,76)
    out_c3_exe130 <= conv1x1_B6_branch_out_c3_exe130;

    -- out_c3_exe238(GPOUT,77)
    out_c3_exe238 <= conv1x1_B6_branch_out_c3_exe238;

    -- out_inc_2(GPOUT,78)
    out_inc_2 <= conv1x1_B6_branch_out_inc_2;

    -- out_j_01049(GPOUT,79)
    out_j_01049 <= conv1x1_B6_branch_out_j_01049;

    -- out_stall_out_0(GPOUT,80)
    out_stall_out_0 <= conv1x1_B6_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,81)
    out_stall_out_1 <= conv1x1_B6_merge_out_stall_out_1;

    -- out_unnamed_conv1x110_avm_address(GPOUT,82)
    out_unnamed_conv1x110_avm_address <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_address;

    -- out_unnamed_conv1x110_avm_burstcount(GPOUT,83)
    out_unnamed_conv1x110_avm_burstcount <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_burstcount;

    -- out_unnamed_conv1x110_avm_byteenable(GPOUT,84)
    out_unnamed_conv1x110_avm_byteenable <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_byteenable;

    -- out_unnamed_conv1x110_avm_enable(GPOUT,85)
    out_unnamed_conv1x110_avm_enable <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_enable;

    -- out_unnamed_conv1x110_avm_read(GPOUT,86)
    out_unnamed_conv1x110_avm_read <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_read;

    -- out_unnamed_conv1x110_avm_write(GPOUT,87)
    out_unnamed_conv1x110_avm_write <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_write;

    -- out_unnamed_conv1x110_avm_writedata(GPOUT,88)
    out_unnamed_conv1x110_avm_writedata <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x110_avm_writedata;

    -- out_unnamed_conv1x19_avm_address(GPOUT,89)
    out_unnamed_conv1x19_avm_address <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_address;

    -- out_unnamed_conv1x19_avm_burstcount(GPOUT,90)
    out_unnamed_conv1x19_avm_burstcount <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_burstcount;

    -- out_unnamed_conv1x19_avm_byteenable(GPOUT,91)
    out_unnamed_conv1x19_avm_byteenable <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_byteenable;

    -- out_unnamed_conv1x19_avm_enable(GPOUT,92)
    out_unnamed_conv1x19_avm_enable <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_enable;

    -- out_unnamed_conv1x19_avm_read(GPOUT,93)
    out_unnamed_conv1x19_avm_read <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_read;

    -- out_unnamed_conv1x19_avm_write(GPOUT,94)
    out_unnamed_conv1x19_avm_write <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_write;

    -- out_unnamed_conv1x19_avm_writedata(GPOUT,95)
    out_unnamed_conv1x19_avm_writedata <= bb_conv1x1_B6_stall_region_out_unnamed_conv1x19_avm_writedata;

    -- out_valid_out_0(GPOUT,96)
    out_valid_out_0 <= conv1x1_B6_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,97)
    out_valid_out_1 <= conv1x1_B6_branch_out_valid_out_1;

END normal;
