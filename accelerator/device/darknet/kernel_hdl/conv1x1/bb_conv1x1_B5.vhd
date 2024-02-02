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

-- VHDL created from bb_conv1x1_B5
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

entity bb_conv1x1_B5 is
    port (
        in_c0_exe116871_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe14_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe317073_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe359_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417179_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517285_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe114_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe119490_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe123_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe131_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe239_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01050_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv1x17_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x17_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116871 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1211 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe14 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe2212 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3213 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe359 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417179 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4214 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe517285 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5215 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6216 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe114 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe123 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe131 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe239 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01050 : out std_logic_vector(31 downto 0);  -- ufix32
        out_lsu_unnamed_conv1x17_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x17_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x17_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x17_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x17_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x17_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x17_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x17_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B5;

architecture normal of bb_conv1x1_B5 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv1x1_B5_stall_region is
        port (
            in_c0_exe116871 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe14 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe317073 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe359 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417179 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517285 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe119490 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe123 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe131 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe239 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01050 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x17_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x17_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B5_branch is
        port (
            in_c0_exe116871 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe1211 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe14 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe2212 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3213 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe359 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417179 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4214 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe517285 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5215 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6216 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe123 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe131 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe239 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_j_01050 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B5_merge is
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
            in_j_01050_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe116871 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe14 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe317073 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe359 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417179 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe517285 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe114 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exe119490 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe123 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe131 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe239 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01050 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv1x1_B5_stall_region_out_c0_exe116871 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c0_exe1211 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c0_exe14 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c0_exe2212 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c0_exe3213 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c0_exe359 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c0_exe417179 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c0_exe4214 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c0_exe517285 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c0_exe5215 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c0_exe6216 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c1_exe114 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c2_exe123 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c3_exe131 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_stall_region_out_c3_exe239 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_j_01050 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_stall_region_out_lsu_unnamed_conv1x17_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B5_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_c0_exe116871 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_c0_exe1211 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B5_branch_out_c0_exe14 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B5_branch_out_c0_exe2212 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_c0_exe3213 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_c0_exe359 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_c0_exe417179 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_c0_exe4214 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B5_branch_out_c0_exe517285 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_c0_exe5215 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_c0_exe6216 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_c1_exe114 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B5_branch_out_c2_exe123 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B5_branch_out_c3_exe131 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B5_branch_out_c3_exe239 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_j_01050 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B5_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_merge_out_c0_exe116871 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_merge_out_c0_exe14 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B5_merge_out_c0_exe317073 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B5_merge_out_c0_exe359 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_merge_out_c0_exe417179 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_merge_out_c0_exe517285 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_merge_out_c1_exe114 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B5_merge_out_c1_exe119490 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B5_merge_out_c2_exe123 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B5_merge_out_c3_exe131 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B5_merge_out_c3_exe239 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_merge_out_j_01050 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B5_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B5_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv1x1_B5_merge(BLACKBOX,4)
    theconv1x1_B5_merge : conv1x1_B5_merge
    PORT MAP (
        in_c0_exe116871_0 => in_c0_exe116871_0,
        in_c0_exe14_0 => in_c0_exe14_0,
        in_c0_exe317073_0 => in_c0_exe317073_0,
        in_c0_exe359_0 => in_c0_exe359_0,
        in_c0_exe417179_0 => in_c0_exe417179_0,
        in_c0_exe517285_0 => in_c0_exe517285_0,
        in_c1_exe114_0 => in_c1_exe114_0,
        in_c1_exe119490_0 => in_c1_exe119490_0,
        in_c2_exe123_0 => in_c2_exe123_0,
        in_c3_exe131_0 => in_c3_exe131_0,
        in_c3_exe239_0 => in_c3_exe239_0,
        in_j_01050_0 => in_j_01050_0,
        in_stall_in => bb_conv1x1_B5_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exe116871 => conv1x1_B5_merge_out_c0_exe116871,
        out_c0_exe14 => conv1x1_B5_merge_out_c0_exe14,
        out_c0_exe317073 => conv1x1_B5_merge_out_c0_exe317073,
        out_c0_exe359 => conv1x1_B5_merge_out_c0_exe359,
        out_c0_exe417179 => conv1x1_B5_merge_out_c0_exe417179,
        out_c0_exe517285 => conv1x1_B5_merge_out_c0_exe517285,
        out_c1_exe114 => conv1x1_B5_merge_out_c1_exe114,
        out_c1_exe119490 => conv1x1_B5_merge_out_c1_exe119490,
        out_c2_exe123 => conv1x1_B5_merge_out_c2_exe123,
        out_c3_exe131 => conv1x1_B5_merge_out_c3_exe131,
        out_c3_exe239 => conv1x1_B5_merge_out_c3_exe239,
        out_j_01050 => conv1x1_B5_merge_out_j_01050,
        out_stall_out_0 => conv1x1_B5_merge_out_stall_out_0,
        out_valid_out => conv1x1_B5_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B5_stall_region(BLACKBOX,2)
    thebb_conv1x1_B5_stall_region : bb_conv1x1_B5_stall_region
    PORT MAP (
        in_c0_exe116871 => conv1x1_B5_merge_out_c0_exe116871,
        in_c0_exe14 => conv1x1_B5_merge_out_c0_exe14,
        in_c0_exe317073 => conv1x1_B5_merge_out_c0_exe317073,
        in_c0_exe359 => conv1x1_B5_merge_out_c0_exe359,
        in_c0_exe417179 => conv1x1_B5_merge_out_c0_exe417179,
        in_c0_exe517285 => conv1x1_B5_merge_out_c0_exe517285,
        in_c1_exe114 => conv1x1_B5_merge_out_c1_exe114,
        in_c1_exe119490 => conv1x1_B5_merge_out_c1_exe119490,
        in_c2_exe123 => conv1x1_B5_merge_out_c2_exe123,
        in_c3_exe131 => conv1x1_B5_merge_out_c3_exe131,
        in_c3_exe239 => conv1x1_B5_merge_out_c3_exe239,
        in_flush => in_flush,
        in_input_size => in_input_size,
        in_j_01050 => conv1x1_B5_merge_out_j_01050,
        in_output_im => in_output_im,
        in_output_size => in_output_size,
        in_pad => in_pad,
        in_stall_in => conv1x1_B5_branch_out_stall_out,
        in_stride => in_stride,
        in_unnamed_conv1x17_avm_readdata => in_unnamed_conv1x17_avm_readdata,
        in_unnamed_conv1x17_avm_readdatavalid => in_unnamed_conv1x17_avm_readdatavalid,
        in_unnamed_conv1x17_avm_waitrequest => in_unnamed_conv1x17_avm_waitrequest,
        in_unnamed_conv1x17_avm_writeack => in_unnamed_conv1x17_avm_writeack,
        in_valid_in => conv1x1_B5_merge_out_valid_out,
        out_c0_exe116871 => bb_conv1x1_B5_stall_region_out_c0_exe116871,
        out_c0_exe1211 => bb_conv1x1_B5_stall_region_out_c0_exe1211,
        out_c0_exe14 => bb_conv1x1_B5_stall_region_out_c0_exe14,
        out_c0_exe2212 => bb_conv1x1_B5_stall_region_out_c0_exe2212,
        out_c0_exe3213 => bb_conv1x1_B5_stall_region_out_c0_exe3213,
        out_c0_exe359 => bb_conv1x1_B5_stall_region_out_c0_exe359,
        out_c0_exe417179 => bb_conv1x1_B5_stall_region_out_c0_exe417179,
        out_c0_exe4214 => bb_conv1x1_B5_stall_region_out_c0_exe4214,
        out_c0_exe517285 => bb_conv1x1_B5_stall_region_out_c0_exe517285,
        out_c0_exe5215 => bb_conv1x1_B5_stall_region_out_c0_exe5215,
        out_c0_exe6216 => bb_conv1x1_B5_stall_region_out_c0_exe6216,
        out_c1_exe114 => bb_conv1x1_B5_stall_region_out_c1_exe114,
        out_c2_exe123 => bb_conv1x1_B5_stall_region_out_c2_exe123,
        out_c3_exe131 => bb_conv1x1_B5_stall_region_out_c3_exe131,
        out_c3_exe239 => bb_conv1x1_B5_stall_region_out_c3_exe239,
        out_j_01050 => bb_conv1x1_B5_stall_region_out_j_01050,
        out_lsu_unnamed_conv1x17_o_active => bb_conv1x1_B5_stall_region_out_lsu_unnamed_conv1x17_o_active,
        out_stall_out => bb_conv1x1_B5_stall_region_out_stall_out,
        out_unnamed_conv1x17_avm_address => bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_address,
        out_unnamed_conv1x17_avm_burstcount => bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_burstcount,
        out_unnamed_conv1x17_avm_byteenable => bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_byteenable,
        out_unnamed_conv1x17_avm_enable => bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_enable,
        out_unnamed_conv1x17_avm_read => bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_read,
        out_unnamed_conv1x17_avm_write => bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_write,
        out_unnamed_conv1x17_avm_writedata => bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_writedata,
        out_valid_out => bb_conv1x1_B5_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv1x1_B5_branch(BLACKBOX,3)
    theconv1x1_B5_branch : conv1x1_B5_branch
    PORT MAP (
        in_c0_exe116871 => bb_conv1x1_B5_stall_region_out_c0_exe116871,
        in_c0_exe1211 => bb_conv1x1_B5_stall_region_out_c0_exe1211,
        in_c0_exe14 => bb_conv1x1_B5_stall_region_out_c0_exe14,
        in_c0_exe2212 => bb_conv1x1_B5_stall_region_out_c0_exe2212,
        in_c0_exe3213 => bb_conv1x1_B5_stall_region_out_c0_exe3213,
        in_c0_exe359 => bb_conv1x1_B5_stall_region_out_c0_exe359,
        in_c0_exe417179 => bb_conv1x1_B5_stall_region_out_c0_exe417179,
        in_c0_exe4214 => bb_conv1x1_B5_stall_region_out_c0_exe4214,
        in_c0_exe517285 => bb_conv1x1_B5_stall_region_out_c0_exe517285,
        in_c0_exe5215 => bb_conv1x1_B5_stall_region_out_c0_exe5215,
        in_c0_exe6216 => bb_conv1x1_B5_stall_region_out_c0_exe6216,
        in_c1_exe114 => bb_conv1x1_B5_stall_region_out_c1_exe114,
        in_c2_exe123 => bb_conv1x1_B5_stall_region_out_c2_exe123,
        in_c3_exe131 => bb_conv1x1_B5_stall_region_out_c3_exe131,
        in_c3_exe239 => bb_conv1x1_B5_stall_region_out_c3_exe239,
        in_j_01050 => bb_conv1x1_B5_stall_region_out_j_01050,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_conv1x1_B5_stall_region_out_valid_out,
        out_c0_exe116871 => conv1x1_B5_branch_out_c0_exe116871,
        out_c0_exe1211 => conv1x1_B5_branch_out_c0_exe1211,
        out_c0_exe14 => conv1x1_B5_branch_out_c0_exe14,
        out_c0_exe2212 => conv1x1_B5_branch_out_c0_exe2212,
        out_c0_exe3213 => conv1x1_B5_branch_out_c0_exe3213,
        out_c0_exe359 => conv1x1_B5_branch_out_c0_exe359,
        out_c0_exe417179 => conv1x1_B5_branch_out_c0_exe417179,
        out_c0_exe4214 => conv1x1_B5_branch_out_c0_exe4214,
        out_c0_exe517285 => conv1x1_B5_branch_out_c0_exe517285,
        out_c0_exe5215 => conv1x1_B5_branch_out_c0_exe5215,
        out_c0_exe6216 => conv1x1_B5_branch_out_c0_exe6216,
        out_c1_exe114 => conv1x1_B5_branch_out_c1_exe114,
        out_c2_exe123 => conv1x1_B5_branch_out_c2_exe123,
        out_c3_exe131 => conv1x1_B5_branch_out_c3_exe131,
        out_c3_exe239 => conv1x1_B5_branch_out_c3_exe239,
        out_j_01050 => conv1x1_B5_branch_out_j_01050,
        out_stall_out => conv1x1_B5_branch_out_stall_out,
        out_valid_out_0 => conv1x1_B5_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe116871(GPOUT,32)
    out_c0_exe116871 <= conv1x1_B5_branch_out_c0_exe116871;

    -- out_c0_exe1211(GPOUT,33)
    out_c0_exe1211 <= conv1x1_B5_branch_out_c0_exe1211;

    -- out_c0_exe14(GPOUT,34)
    out_c0_exe14 <= conv1x1_B5_branch_out_c0_exe14;

    -- out_c0_exe2212(GPOUT,35)
    out_c0_exe2212 <= conv1x1_B5_branch_out_c0_exe2212;

    -- out_c0_exe3213(GPOUT,36)
    out_c0_exe3213 <= conv1x1_B5_branch_out_c0_exe3213;

    -- out_c0_exe359(GPOUT,37)
    out_c0_exe359 <= conv1x1_B5_branch_out_c0_exe359;

    -- out_c0_exe417179(GPOUT,38)
    out_c0_exe417179 <= conv1x1_B5_branch_out_c0_exe417179;

    -- out_c0_exe4214(GPOUT,39)
    out_c0_exe4214 <= conv1x1_B5_branch_out_c0_exe4214;

    -- out_c0_exe517285(GPOUT,40)
    out_c0_exe517285 <= conv1x1_B5_branch_out_c0_exe517285;

    -- out_c0_exe5215(GPOUT,41)
    out_c0_exe5215 <= conv1x1_B5_branch_out_c0_exe5215;

    -- out_c0_exe6216(GPOUT,42)
    out_c0_exe6216 <= conv1x1_B5_branch_out_c0_exe6216;

    -- out_c1_exe114(GPOUT,43)
    out_c1_exe114 <= conv1x1_B5_branch_out_c1_exe114;

    -- out_c2_exe123(GPOUT,44)
    out_c2_exe123 <= conv1x1_B5_branch_out_c2_exe123;

    -- out_c3_exe131(GPOUT,45)
    out_c3_exe131 <= conv1x1_B5_branch_out_c3_exe131;

    -- out_c3_exe239(GPOUT,46)
    out_c3_exe239 <= conv1x1_B5_branch_out_c3_exe239;

    -- out_j_01050(GPOUT,47)
    out_j_01050 <= conv1x1_B5_branch_out_j_01050;

    -- out_lsu_unnamed_conv1x17_o_active(GPOUT,48)
    out_lsu_unnamed_conv1x17_o_active <= bb_conv1x1_B5_stall_region_out_lsu_unnamed_conv1x17_o_active;

    -- out_stall_out_0(GPOUT,49)
    out_stall_out_0 <= conv1x1_B5_merge_out_stall_out_0;

    -- out_unnamed_conv1x17_avm_address(GPOUT,50)
    out_unnamed_conv1x17_avm_address <= bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_address;

    -- out_unnamed_conv1x17_avm_burstcount(GPOUT,51)
    out_unnamed_conv1x17_avm_burstcount <= bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_burstcount;

    -- out_unnamed_conv1x17_avm_byteenable(GPOUT,52)
    out_unnamed_conv1x17_avm_byteenable <= bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_byteenable;

    -- out_unnamed_conv1x17_avm_enable(GPOUT,53)
    out_unnamed_conv1x17_avm_enable <= bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_enable;

    -- out_unnamed_conv1x17_avm_read(GPOUT,54)
    out_unnamed_conv1x17_avm_read <= bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_read;

    -- out_unnamed_conv1x17_avm_write(GPOUT,55)
    out_unnamed_conv1x17_avm_write <= bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_write;

    -- out_unnamed_conv1x17_avm_writedata(GPOUT,56)
    out_unnamed_conv1x17_avm_writedata <= bb_conv1x1_B5_stall_region_out_unnamed_conv1x17_avm_writedata;

    -- out_valid_out_0(GPOUT,57)
    out_valid_out_0 <= conv1x1_B5_branch_out_valid_out_0;

END normal;
