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

-- VHDL created from bb_conv1x1_B4
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

entity bb_conv1x1_B4 is
    port (
        in_c0_exe116872_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe116872_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe15_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe15_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe317074_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe317074_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe360_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe360_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417180_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417180_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517286_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517286_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe687_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe687_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe788_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe788_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe889_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe889_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe115_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe115_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe124_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe124_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe132_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe132_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe240_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c3_exe240_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01051_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01051_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_1_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp_17_1_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_17_1_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_unnamed_conv1x15_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x15_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x15_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x15_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x16_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x16_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x16_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x16_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116872 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe15 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe317074 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe360 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417180 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe517286 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe687 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe788 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe889 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe115 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c1_exe1194 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe124 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe132 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe240 : out std_logic_vector(0 downto 0);  -- ufix1
        out_inc_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_j_01051 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
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
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B4;

architecture normal of bb_conv1x1_B4 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv1x1_B4_stall_region is
        port (
            in_c0_exe116872 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe15 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe317074 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe360 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417180 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517286 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe687 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe788 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe889 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe115 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe124 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe132 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe240 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01051 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_17_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x15_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x15_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x15_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x15_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x16_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x14 : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B4_branch is
        port (
            in_c0_exe116872 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe15 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe317074 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe360 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417180 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517286 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe687 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe788 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe889 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe115 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe1194 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe124 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe132 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe240 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_inc_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01051 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B4_merge is
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
            in_j_01051_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01051_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_1_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_17_1_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_17_1_1 : in std_logic_vector(31 downto 0);  -- Floating Point
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
            out_c2_exe124 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe132 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe240 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01051 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_k_18_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_17_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv1x1_B4_stall_region_out_c0_exe116872 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c0_exe15 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c0_exe317074 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c0_exe360 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c0_exe417180 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c0_exe517286 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c0_exe687 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c0_exe788 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c0_exe889 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c1_exe115 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c1_exe1194 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c2_exe124 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c3_exe132 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_stall_region_out_c3_exe240 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_inc_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_stall_region_out_j_01051 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x14 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B4_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_out_c0_exe116872 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_out_c0_exe15 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B4_branch_out_c0_exe317074 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_branch_out_c0_exe360 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_out_c0_exe417180 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_out_c0_exe517286 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_out_c0_exe687 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_branch_out_c0_exe788 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_out_c0_exe889 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_out_c1_exe115 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B4_branch_out_c1_exe1194 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_branch_out_c2_exe124 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_branch_out_c3_exe132 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_branch_out_c3_exe240 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_out_inc_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_branch_out_j_01051 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_merge_out_c0_exe116872 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_merge_out_c0_exe15 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B4_merge_out_c0_exe317074 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_merge_out_c0_exe360 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_merge_out_c0_exe417180 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_merge_out_c0_exe517286 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_merge_out_c0_exe687 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_merge_out_c0_exe788 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_merge_out_c0_exe889 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_merge_out_c1_exe115 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B4_merge_out_c2_exe124 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_merge_out_c3_exe132 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_merge_out_c3_exe240 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_merge_out_j_01051 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_merge_out_k_18_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_merge_out_tmp_17_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B4_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv1x1_B4_merge(BLACKBOX,4)
    theconv1x1_B4_merge : conv1x1_B4_merge
    PORT MAP (
        in_c0_exe116872_0 => in_c0_exe116872_0,
        in_c0_exe116872_1 => in_c0_exe116872_1,
        in_c0_exe15_0 => in_c0_exe15_0,
        in_c0_exe15_1 => in_c0_exe15_1,
        in_c0_exe317074_0 => in_c0_exe317074_0,
        in_c0_exe317074_1 => in_c0_exe317074_1,
        in_c0_exe360_0 => in_c0_exe360_0,
        in_c0_exe360_1 => in_c0_exe360_1,
        in_c0_exe417180_0 => in_c0_exe417180_0,
        in_c0_exe417180_1 => in_c0_exe417180_1,
        in_c0_exe517286_0 => in_c0_exe517286_0,
        in_c0_exe517286_1 => in_c0_exe517286_1,
        in_c0_exe687_0 => in_c0_exe687_0,
        in_c0_exe687_1 => in_c0_exe687_1,
        in_c0_exe788_0 => in_c0_exe788_0,
        in_c0_exe788_1 => in_c0_exe788_1,
        in_c0_exe889_0 => in_c0_exe889_0,
        in_c0_exe889_1 => in_c0_exe889_1,
        in_c1_exe115_0 => in_c1_exe115_0,
        in_c1_exe115_1 => in_c1_exe115_1,
        in_c2_exe124_0 => in_c2_exe124_0,
        in_c2_exe124_1 => in_c2_exe124_1,
        in_c3_exe132_0 => in_c3_exe132_0,
        in_c3_exe132_1 => in_c3_exe132_1,
        in_c3_exe240_0 => in_c3_exe240_0,
        in_c3_exe240_1 => in_c3_exe240_1,
        in_j_01051_0 => in_j_01051_0,
        in_j_01051_1 => in_j_01051_1,
        in_k_18_1_0 => in_k_18_1_0,
        in_k_18_1_1 => in_k_18_1_1,
        in_stall_in => bb_conv1x1_B4_stall_region_out_stall_out,
        in_tmp_17_1_0 => in_tmp_17_1_0,
        in_tmp_17_1_1 => in_tmp_17_1_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_c0_exe116872 => conv1x1_B4_merge_out_c0_exe116872,
        out_c0_exe15 => conv1x1_B4_merge_out_c0_exe15,
        out_c0_exe317074 => conv1x1_B4_merge_out_c0_exe317074,
        out_c0_exe360 => conv1x1_B4_merge_out_c0_exe360,
        out_c0_exe417180 => conv1x1_B4_merge_out_c0_exe417180,
        out_c0_exe517286 => conv1x1_B4_merge_out_c0_exe517286,
        out_c0_exe687 => conv1x1_B4_merge_out_c0_exe687,
        out_c0_exe788 => conv1x1_B4_merge_out_c0_exe788,
        out_c0_exe889 => conv1x1_B4_merge_out_c0_exe889,
        out_c1_exe115 => conv1x1_B4_merge_out_c1_exe115,
        out_c2_exe124 => conv1x1_B4_merge_out_c2_exe124,
        out_c3_exe132 => conv1x1_B4_merge_out_c3_exe132,
        out_c3_exe240 => conv1x1_B4_merge_out_c3_exe240,
        out_j_01051 => conv1x1_B4_merge_out_j_01051,
        out_k_18_1 => conv1x1_B4_merge_out_k_18_1,
        out_stall_out_0 => conv1x1_B4_merge_out_stall_out_0,
        out_stall_out_1 => conv1x1_B4_merge_out_stall_out_1,
        out_tmp_17_1 => conv1x1_B4_merge_out_tmp_17_1,
        out_valid_out => conv1x1_B4_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B4_stall_region(BLACKBOX,2)
    thebb_conv1x1_B4_stall_region : bb_conv1x1_B4_stall_region
    PORT MAP (
        in_c0_exe116872 => conv1x1_B4_merge_out_c0_exe116872,
        in_c0_exe15 => conv1x1_B4_merge_out_c0_exe15,
        in_c0_exe317074 => conv1x1_B4_merge_out_c0_exe317074,
        in_c0_exe360 => conv1x1_B4_merge_out_c0_exe360,
        in_c0_exe417180 => conv1x1_B4_merge_out_c0_exe417180,
        in_c0_exe517286 => conv1x1_B4_merge_out_c0_exe517286,
        in_c0_exe687 => conv1x1_B4_merge_out_c0_exe687,
        in_c0_exe788 => conv1x1_B4_merge_out_c0_exe788,
        in_c0_exe889 => conv1x1_B4_merge_out_c0_exe889,
        in_c1_exe115 => conv1x1_B4_merge_out_c1_exe115,
        in_c2_exe124 => conv1x1_B4_merge_out_c2_exe124,
        in_c3_exe132 => conv1x1_B4_merge_out_c3_exe132,
        in_c3_exe240 => conv1x1_B4_merge_out_c3_exe240,
        in_filter_weight => in_filter_weight,
        in_flush => in_flush,
        in_input_channels => in_input_channels,
        in_input_im => in_input_im,
        in_input_size => in_input_size,
        in_j_01051 => conv1x1_B4_merge_out_j_01051,
        in_k_18_1 => conv1x1_B4_merge_out_k_18_1,
        in_stall_in => conv1x1_B4_branch_out_stall_out,
        in_tmp_17_1 => conv1x1_B4_merge_out_tmp_17_1,
        in_unnamed_conv1x15_avm_readdata => in_unnamed_conv1x15_avm_readdata,
        in_unnamed_conv1x15_avm_readdatavalid => in_unnamed_conv1x15_avm_readdatavalid,
        in_unnamed_conv1x15_avm_waitrequest => in_unnamed_conv1x15_avm_waitrequest,
        in_unnamed_conv1x15_avm_writeack => in_unnamed_conv1x15_avm_writeack,
        in_unnamed_conv1x16_avm_readdata => in_unnamed_conv1x16_avm_readdata,
        in_unnamed_conv1x16_avm_readdatavalid => in_unnamed_conv1x16_avm_readdatavalid,
        in_unnamed_conv1x16_avm_waitrequest => in_unnamed_conv1x16_avm_waitrequest,
        in_unnamed_conv1x16_avm_writeack => in_unnamed_conv1x16_avm_writeack,
        in_valid_in => conv1x1_B4_merge_out_valid_out,
        out_c0_exe116872 => bb_conv1x1_B4_stall_region_out_c0_exe116872,
        out_c0_exe15 => bb_conv1x1_B4_stall_region_out_c0_exe15,
        out_c0_exe317074 => bb_conv1x1_B4_stall_region_out_c0_exe317074,
        out_c0_exe360 => bb_conv1x1_B4_stall_region_out_c0_exe360,
        out_c0_exe417180 => bb_conv1x1_B4_stall_region_out_c0_exe417180,
        out_c0_exe517286 => bb_conv1x1_B4_stall_region_out_c0_exe517286,
        out_c0_exe687 => bb_conv1x1_B4_stall_region_out_c0_exe687,
        out_c0_exe788 => bb_conv1x1_B4_stall_region_out_c0_exe788,
        out_c0_exe889 => bb_conv1x1_B4_stall_region_out_c0_exe889,
        out_c1_exe115 => bb_conv1x1_B4_stall_region_out_c1_exe115,
        out_c1_exe1194 => bb_conv1x1_B4_stall_region_out_c1_exe1194,
        out_c2_exe124 => bb_conv1x1_B4_stall_region_out_c2_exe124,
        out_c3_exe132 => bb_conv1x1_B4_stall_region_out_c3_exe132,
        out_c3_exe240 => bb_conv1x1_B4_stall_region_out_c3_exe240,
        out_inc_1 => bb_conv1x1_B4_stall_region_out_inc_1,
        out_j_01051 => bb_conv1x1_B4_stall_region_out_j_01051,
        out_stall_out => bb_conv1x1_B4_stall_region_out_stall_out,
        out_unnamed_conv1x14 => bb_conv1x1_B4_stall_region_out_unnamed_conv1x14,
        out_unnamed_conv1x15_avm_address => bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_address,
        out_unnamed_conv1x15_avm_burstcount => bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_burstcount,
        out_unnamed_conv1x15_avm_byteenable => bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_byteenable,
        out_unnamed_conv1x15_avm_enable => bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_enable,
        out_unnamed_conv1x15_avm_read => bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_read,
        out_unnamed_conv1x15_avm_write => bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_write,
        out_unnamed_conv1x15_avm_writedata => bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_writedata,
        out_unnamed_conv1x16_avm_address => bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_address,
        out_unnamed_conv1x16_avm_burstcount => bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_burstcount,
        out_unnamed_conv1x16_avm_byteenable => bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_byteenable,
        out_unnamed_conv1x16_avm_enable => bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_enable,
        out_unnamed_conv1x16_avm_read => bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_read,
        out_unnamed_conv1x16_avm_write => bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_write,
        out_unnamed_conv1x16_avm_writedata => bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_writedata,
        out_valid_out => bb_conv1x1_B4_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv1x1_B4_branch(BLACKBOX,3)
    theconv1x1_B4_branch : conv1x1_B4_branch
    PORT MAP (
        in_c0_exe116872 => bb_conv1x1_B4_stall_region_out_c0_exe116872,
        in_c0_exe15 => bb_conv1x1_B4_stall_region_out_c0_exe15,
        in_c0_exe317074 => bb_conv1x1_B4_stall_region_out_c0_exe317074,
        in_c0_exe360 => bb_conv1x1_B4_stall_region_out_c0_exe360,
        in_c0_exe417180 => bb_conv1x1_B4_stall_region_out_c0_exe417180,
        in_c0_exe517286 => bb_conv1x1_B4_stall_region_out_c0_exe517286,
        in_c0_exe687 => bb_conv1x1_B4_stall_region_out_c0_exe687,
        in_c0_exe788 => bb_conv1x1_B4_stall_region_out_c0_exe788,
        in_c0_exe889 => bb_conv1x1_B4_stall_region_out_c0_exe889,
        in_c1_exe115 => bb_conv1x1_B4_stall_region_out_c1_exe115,
        in_c1_exe1194 => bb_conv1x1_B4_stall_region_out_c1_exe1194,
        in_c2_exe124 => bb_conv1x1_B4_stall_region_out_c2_exe124,
        in_c3_exe132 => bb_conv1x1_B4_stall_region_out_c3_exe132,
        in_c3_exe240 => bb_conv1x1_B4_stall_region_out_c3_exe240,
        in_inc_1 => bb_conv1x1_B4_stall_region_out_inc_1,
        in_j_01051 => bb_conv1x1_B4_stall_region_out_j_01051,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_unnamed_conv1x14 => bb_conv1x1_B4_stall_region_out_unnamed_conv1x14,
        in_valid_in => bb_conv1x1_B4_stall_region_out_valid_out,
        out_c0_exe116872 => conv1x1_B4_branch_out_c0_exe116872,
        out_c0_exe15 => conv1x1_B4_branch_out_c0_exe15,
        out_c0_exe317074 => conv1x1_B4_branch_out_c0_exe317074,
        out_c0_exe360 => conv1x1_B4_branch_out_c0_exe360,
        out_c0_exe417180 => conv1x1_B4_branch_out_c0_exe417180,
        out_c0_exe517286 => conv1x1_B4_branch_out_c0_exe517286,
        out_c0_exe687 => conv1x1_B4_branch_out_c0_exe687,
        out_c0_exe788 => conv1x1_B4_branch_out_c0_exe788,
        out_c0_exe889 => conv1x1_B4_branch_out_c0_exe889,
        out_c1_exe115 => conv1x1_B4_branch_out_c1_exe115,
        out_c1_exe1194 => conv1x1_B4_branch_out_c1_exe1194,
        out_c2_exe124 => conv1x1_B4_branch_out_c2_exe124,
        out_c3_exe132 => conv1x1_B4_branch_out_c3_exe132,
        out_c3_exe240 => conv1x1_B4_branch_out_c3_exe240,
        out_inc_1 => conv1x1_B4_branch_out_inc_1,
        out_j_01051 => conv1x1_B4_branch_out_j_01051,
        out_stall_out => conv1x1_B4_branch_out_stall_out,
        out_valid_out_0 => conv1x1_B4_branch_out_valid_out_0,
        out_valid_out_1 => conv1x1_B4_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe116872(GPOUT,58)
    out_c0_exe116872 <= conv1x1_B4_branch_out_c0_exe116872;

    -- out_c0_exe15(GPOUT,59)
    out_c0_exe15 <= conv1x1_B4_branch_out_c0_exe15;

    -- out_c0_exe317074(GPOUT,60)
    out_c0_exe317074 <= conv1x1_B4_branch_out_c0_exe317074;

    -- out_c0_exe360(GPOUT,61)
    out_c0_exe360 <= conv1x1_B4_branch_out_c0_exe360;

    -- out_c0_exe417180(GPOUT,62)
    out_c0_exe417180 <= conv1x1_B4_branch_out_c0_exe417180;

    -- out_c0_exe517286(GPOUT,63)
    out_c0_exe517286 <= conv1x1_B4_branch_out_c0_exe517286;

    -- out_c0_exe687(GPOUT,64)
    out_c0_exe687 <= conv1x1_B4_branch_out_c0_exe687;

    -- out_c0_exe788(GPOUT,65)
    out_c0_exe788 <= conv1x1_B4_branch_out_c0_exe788;

    -- out_c0_exe889(GPOUT,66)
    out_c0_exe889 <= conv1x1_B4_branch_out_c0_exe889;

    -- out_c1_exe115(GPOUT,67)
    out_c1_exe115 <= conv1x1_B4_branch_out_c1_exe115;

    -- out_c1_exe1194(GPOUT,68)
    out_c1_exe1194 <= conv1x1_B4_branch_out_c1_exe1194;

    -- out_c2_exe124(GPOUT,69)
    out_c2_exe124 <= conv1x1_B4_branch_out_c2_exe124;

    -- out_c3_exe132(GPOUT,70)
    out_c3_exe132 <= conv1x1_B4_branch_out_c3_exe132;

    -- out_c3_exe240(GPOUT,71)
    out_c3_exe240 <= conv1x1_B4_branch_out_c3_exe240;

    -- out_inc_1(GPOUT,72)
    out_inc_1 <= conv1x1_B4_branch_out_inc_1;

    -- out_j_01051(GPOUT,73)
    out_j_01051 <= conv1x1_B4_branch_out_j_01051;

    -- out_stall_out_0(GPOUT,74)
    out_stall_out_0 <= conv1x1_B4_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,75)
    out_stall_out_1 <= conv1x1_B4_merge_out_stall_out_1;

    -- out_unnamed_conv1x15_avm_address(GPOUT,76)
    out_unnamed_conv1x15_avm_address <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_address;

    -- out_unnamed_conv1x15_avm_burstcount(GPOUT,77)
    out_unnamed_conv1x15_avm_burstcount <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_burstcount;

    -- out_unnamed_conv1x15_avm_byteenable(GPOUT,78)
    out_unnamed_conv1x15_avm_byteenable <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_byteenable;

    -- out_unnamed_conv1x15_avm_enable(GPOUT,79)
    out_unnamed_conv1x15_avm_enable <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_enable;

    -- out_unnamed_conv1x15_avm_read(GPOUT,80)
    out_unnamed_conv1x15_avm_read <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_read;

    -- out_unnamed_conv1x15_avm_write(GPOUT,81)
    out_unnamed_conv1x15_avm_write <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_write;

    -- out_unnamed_conv1x15_avm_writedata(GPOUT,82)
    out_unnamed_conv1x15_avm_writedata <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x15_avm_writedata;

    -- out_unnamed_conv1x16_avm_address(GPOUT,83)
    out_unnamed_conv1x16_avm_address <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_address;

    -- out_unnamed_conv1x16_avm_burstcount(GPOUT,84)
    out_unnamed_conv1x16_avm_burstcount <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_burstcount;

    -- out_unnamed_conv1x16_avm_byteenable(GPOUT,85)
    out_unnamed_conv1x16_avm_byteenable <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_byteenable;

    -- out_unnamed_conv1x16_avm_enable(GPOUT,86)
    out_unnamed_conv1x16_avm_enable <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_enable;

    -- out_unnamed_conv1x16_avm_read(GPOUT,87)
    out_unnamed_conv1x16_avm_read <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_read;

    -- out_unnamed_conv1x16_avm_write(GPOUT,88)
    out_unnamed_conv1x16_avm_write <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_write;

    -- out_unnamed_conv1x16_avm_writedata(GPOUT,89)
    out_unnamed_conv1x16_avm_writedata <= bb_conv1x1_B4_stall_region_out_unnamed_conv1x16_avm_writedata;

    -- out_valid_out_0(GPOUT,90)
    out_valid_out_0 <= conv1x1_B4_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,91)
    out_valid_out_1 <= conv1x1_B4_branch_out_valid_out_1;

END normal;
