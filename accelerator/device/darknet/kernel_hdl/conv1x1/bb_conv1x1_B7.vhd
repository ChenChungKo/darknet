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

-- VHDL created from bb_conv1x1_B7
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

entity bb_conv1x1_B7 is
    port (
        in_c0_exe116869_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe121191_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe12_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe221295_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321399_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe357_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417177_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517283_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe112_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe1238104_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe121_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe129_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe237_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01048_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv1x111_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x111_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x111_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x111_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116869 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe12 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe1254 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe221295 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2255 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe321399 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3256 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe357 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417177 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4257 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe517283 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5258 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe112 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe121 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe129 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe237 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01048 : out std_logic_vector(31 downto 0);  -- ufix32
        out_lsu_unnamed_conv1x111_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x111_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x111_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x111_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B7;

architecture normal of bb_conv1x1_B7 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv1x1_B7_stall_region is
        port (
            in_c0_exe116869 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe12 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe121191 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe221295 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321399 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe357 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417177 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517283 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe112 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe1238104 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe121 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe129 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe237 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01048 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B7_branch is
        port (
            in_c0_exe116869 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe12 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe1254 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe221295 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2255 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321399 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3256 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe357 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417177 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4257 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517283 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5258 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe112 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe121 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe129 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe237 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_j_01048 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B7_merge is
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
            in_j_01048_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe116869 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe12 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe121191 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe221295 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe321399 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe357 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417177 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe517283 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe112 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exe1238104 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe121 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe129 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe237 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01048 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv1x1_B7_stall_region_out_c0_exe116869 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe12 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe1254 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe221295 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe2255 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe321399 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe3256 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe357 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe417177 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe4257 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe517283 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c0_exe5258 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c1_exe112 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c2_exe121 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c3_exe129 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_stall_region_out_c3_exe237 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_j_01048 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_stall_region_out_lsu_unnamed_conv1x111_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B7_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_c0_exe116869 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_c0_exe12 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B7_branch_out_c0_exe1254 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B7_branch_out_c0_exe221295 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_c0_exe2255 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_c0_exe321399 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_c0_exe3256 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B7_branch_out_c0_exe357 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_c0_exe417177 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_c0_exe4257 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_c0_exe517283 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_c0_exe5258 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_c1_exe112 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B7_branch_out_c2_exe121 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B7_branch_out_c3_exe129 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B7_branch_out_c3_exe237 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_j_01048 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B7_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_merge_out_c0_exe116869 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_merge_out_c0_exe12 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B7_merge_out_c0_exe121191 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B7_merge_out_c0_exe221295 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_merge_out_c0_exe321399 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_merge_out_c0_exe357 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_merge_out_c0_exe417177 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_merge_out_c0_exe517283 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_merge_out_c1_exe112 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B7_merge_out_c1_exe1238104 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B7_merge_out_c2_exe121 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B7_merge_out_c3_exe129 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B7_merge_out_c3_exe237 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_merge_out_j_01048 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B7_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B7_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv1x1_B7_merge(BLACKBOX,4)
    theconv1x1_B7_merge : conv1x1_B7_merge
    PORT MAP (
        in_c0_exe116869_0 => in_c0_exe116869_0,
        in_c0_exe121191_0 => in_c0_exe121191_0,
        in_c0_exe12_0 => in_c0_exe12_0,
        in_c0_exe221295_0 => in_c0_exe221295_0,
        in_c0_exe321399_0 => in_c0_exe321399_0,
        in_c0_exe357_0 => in_c0_exe357_0,
        in_c0_exe417177_0 => in_c0_exe417177_0,
        in_c0_exe517283_0 => in_c0_exe517283_0,
        in_c1_exe112_0 => in_c1_exe112_0,
        in_c1_exe1238104_0 => in_c1_exe1238104_0,
        in_c2_exe121_0 => in_c2_exe121_0,
        in_c3_exe129_0 => in_c3_exe129_0,
        in_c3_exe237_0 => in_c3_exe237_0,
        in_j_01048_0 => in_j_01048_0,
        in_stall_in => bb_conv1x1_B7_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exe116869 => conv1x1_B7_merge_out_c0_exe116869,
        out_c0_exe12 => conv1x1_B7_merge_out_c0_exe12,
        out_c0_exe121191 => conv1x1_B7_merge_out_c0_exe121191,
        out_c0_exe221295 => conv1x1_B7_merge_out_c0_exe221295,
        out_c0_exe321399 => conv1x1_B7_merge_out_c0_exe321399,
        out_c0_exe357 => conv1x1_B7_merge_out_c0_exe357,
        out_c0_exe417177 => conv1x1_B7_merge_out_c0_exe417177,
        out_c0_exe517283 => conv1x1_B7_merge_out_c0_exe517283,
        out_c1_exe112 => conv1x1_B7_merge_out_c1_exe112,
        out_c1_exe1238104 => conv1x1_B7_merge_out_c1_exe1238104,
        out_c2_exe121 => conv1x1_B7_merge_out_c2_exe121,
        out_c3_exe129 => conv1x1_B7_merge_out_c3_exe129,
        out_c3_exe237 => conv1x1_B7_merge_out_c3_exe237,
        out_j_01048 => conv1x1_B7_merge_out_j_01048,
        out_stall_out_0 => conv1x1_B7_merge_out_stall_out_0,
        out_valid_out => conv1x1_B7_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B7_stall_region(BLACKBOX,2)
    thebb_conv1x1_B7_stall_region : bb_conv1x1_B7_stall_region
    PORT MAP (
        in_c0_exe116869 => conv1x1_B7_merge_out_c0_exe116869,
        in_c0_exe12 => conv1x1_B7_merge_out_c0_exe12,
        in_c0_exe121191 => conv1x1_B7_merge_out_c0_exe121191,
        in_c0_exe221295 => conv1x1_B7_merge_out_c0_exe221295,
        in_c0_exe321399 => conv1x1_B7_merge_out_c0_exe321399,
        in_c0_exe357 => conv1x1_B7_merge_out_c0_exe357,
        in_c0_exe417177 => conv1x1_B7_merge_out_c0_exe417177,
        in_c0_exe517283 => conv1x1_B7_merge_out_c0_exe517283,
        in_c1_exe112 => conv1x1_B7_merge_out_c1_exe112,
        in_c1_exe1238104 => conv1x1_B7_merge_out_c1_exe1238104,
        in_c2_exe121 => conv1x1_B7_merge_out_c2_exe121,
        in_c3_exe129 => conv1x1_B7_merge_out_c3_exe129,
        in_c3_exe237 => conv1x1_B7_merge_out_c3_exe237,
        in_flush => in_flush,
        in_input_size => in_input_size,
        in_j_01048 => conv1x1_B7_merge_out_j_01048,
        in_output_im => in_output_im,
        in_output_size => in_output_size,
        in_pad => in_pad,
        in_stall_in => conv1x1_B7_branch_out_stall_out,
        in_stride => in_stride,
        in_unnamed_conv1x111_avm_readdata => in_unnamed_conv1x111_avm_readdata,
        in_unnamed_conv1x111_avm_readdatavalid => in_unnamed_conv1x111_avm_readdatavalid,
        in_unnamed_conv1x111_avm_waitrequest => in_unnamed_conv1x111_avm_waitrequest,
        in_unnamed_conv1x111_avm_writeack => in_unnamed_conv1x111_avm_writeack,
        in_valid_in => conv1x1_B7_merge_out_valid_out,
        out_c0_exe116869 => bb_conv1x1_B7_stall_region_out_c0_exe116869,
        out_c0_exe12 => bb_conv1x1_B7_stall_region_out_c0_exe12,
        out_c0_exe1254 => bb_conv1x1_B7_stall_region_out_c0_exe1254,
        out_c0_exe221295 => bb_conv1x1_B7_stall_region_out_c0_exe221295,
        out_c0_exe2255 => bb_conv1x1_B7_stall_region_out_c0_exe2255,
        out_c0_exe321399 => bb_conv1x1_B7_stall_region_out_c0_exe321399,
        out_c0_exe3256 => bb_conv1x1_B7_stall_region_out_c0_exe3256,
        out_c0_exe357 => bb_conv1x1_B7_stall_region_out_c0_exe357,
        out_c0_exe417177 => bb_conv1x1_B7_stall_region_out_c0_exe417177,
        out_c0_exe4257 => bb_conv1x1_B7_stall_region_out_c0_exe4257,
        out_c0_exe517283 => bb_conv1x1_B7_stall_region_out_c0_exe517283,
        out_c0_exe5258 => bb_conv1x1_B7_stall_region_out_c0_exe5258,
        out_c1_exe112 => bb_conv1x1_B7_stall_region_out_c1_exe112,
        out_c2_exe121 => bb_conv1x1_B7_stall_region_out_c2_exe121,
        out_c3_exe129 => bb_conv1x1_B7_stall_region_out_c3_exe129,
        out_c3_exe237 => bb_conv1x1_B7_stall_region_out_c3_exe237,
        out_j_01048 => bb_conv1x1_B7_stall_region_out_j_01048,
        out_lsu_unnamed_conv1x111_o_active => bb_conv1x1_B7_stall_region_out_lsu_unnamed_conv1x111_o_active,
        out_stall_out => bb_conv1x1_B7_stall_region_out_stall_out,
        out_unnamed_conv1x111_avm_address => bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_address,
        out_unnamed_conv1x111_avm_burstcount => bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_burstcount,
        out_unnamed_conv1x111_avm_byteenable => bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_byteenable,
        out_unnamed_conv1x111_avm_enable => bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_enable,
        out_unnamed_conv1x111_avm_read => bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_read,
        out_unnamed_conv1x111_avm_write => bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_write,
        out_unnamed_conv1x111_avm_writedata => bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_writedata,
        out_valid_out => bb_conv1x1_B7_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv1x1_B7_branch(BLACKBOX,3)
    theconv1x1_B7_branch : conv1x1_B7_branch
    PORT MAP (
        in_c0_exe116869 => bb_conv1x1_B7_stall_region_out_c0_exe116869,
        in_c0_exe12 => bb_conv1x1_B7_stall_region_out_c0_exe12,
        in_c0_exe1254 => bb_conv1x1_B7_stall_region_out_c0_exe1254,
        in_c0_exe221295 => bb_conv1x1_B7_stall_region_out_c0_exe221295,
        in_c0_exe2255 => bb_conv1x1_B7_stall_region_out_c0_exe2255,
        in_c0_exe321399 => bb_conv1x1_B7_stall_region_out_c0_exe321399,
        in_c0_exe3256 => bb_conv1x1_B7_stall_region_out_c0_exe3256,
        in_c0_exe357 => bb_conv1x1_B7_stall_region_out_c0_exe357,
        in_c0_exe417177 => bb_conv1x1_B7_stall_region_out_c0_exe417177,
        in_c0_exe4257 => bb_conv1x1_B7_stall_region_out_c0_exe4257,
        in_c0_exe517283 => bb_conv1x1_B7_stall_region_out_c0_exe517283,
        in_c0_exe5258 => bb_conv1x1_B7_stall_region_out_c0_exe5258,
        in_c1_exe112 => bb_conv1x1_B7_stall_region_out_c1_exe112,
        in_c2_exe121 => bb_conv1x1_B7_stall_region_out_c2_exe121,
        in_c3_exe129 => bb_conv1x1_B7_stall_region_out_c3_exe129,
        in_c3_exe237 => bb_conv1x1_B7_stall_region_out_c3_exe237,
        in_j_01048 => bb_conv1x1_B7_stall_region_out_j_01048,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_conv1x1_B7_stall_region_out_valid_out,
        out_c0_exe116869 => conv1x1_B7_branch_out_c0_exe116869,
        out_c0_exe12 => conv1x1_B7_branch_out_c0_exe12,
        out_c0_exe1254 => conv1x1_B7_branch_out_c0_exe1254,
        out_c0_exe221295 => conv1x1_B7_branch_out_c0_exe221295,
        out_c0_exe2255 => conv1x1_B7_branch_out_c0_exe2255,
        out_c0_exe321399 => conv1x1_B7_branch_out_c0_exe321399,
        out_c0_exe3256 => conv1x1_B7_branch_out_c0_exe3256,
        out_c0_exe357 => conv1x1_B7_branch_out_c0_exe357,
        out_c0_exe417177 => conv1x1_B7_branch_out_c0_exe417177,
        out_c0_exe4257 => conv1x1_B7_branch_out_c0_exe4257,
        out_c0_exe517283 => conv1x1_B7_branch_out_c0_exe517283,
        out_c0_exe5258 => conv1x1_B7_branch_out_c0_exe5258,
        out_c1_exe112 => conv1x1_B7_branch_out_c1_exe112,
        out_c2_exe121 => conv1x1_B7_branch_out_c2_exe121,
        out_c3_exe129 => conv1x1_B7_branch_out_c3_exe129,
        out_c3_exe237 => conv1x1_B7_branch_out_c3_exe237,
        out_j_01048 => conv1x1_B7_branch_out_j_01048,
        out_stall_out => conv1x1_B7_branch_out_stall_out,
        out_valid_out_0 => conv1x1_B7_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe116869(GPOUT,34)
    out_c0_exe116869 <= conv1x1_B7_branch_out_c0_exe116869;

    -- out_c0_exe12(GPOUT,35)
    out_c0_exe12 <= conv1x1_B7_branch_out_c0_exe12;

    -- out_c0_exe1254(GPOUT,36)
    out_c0_exe1254 <= conv1x1_B7_branch_out_c0_exe1254;

    -- out_c0_exe221295(GPOUT,37)
    out_c0_exe221295 <= conv1x1_B7_branch_out_c0_exe221295;

    -- out_c0_exe2255(GPOUT,38)
    out_c0_exe2255 <= conv1x1_B7_branch_out_c0_exe2255;

    -- out_c0_exe321399(GPOUT,39)
    out_c0_exe321399 <= conv1x1_B7_branch_out_c0_exe321399;

    -- out_c0_exe3256(GPOUT,40)
    out_c0_exe3256 <= conv1x1_B7_branch_out_c0_exe3256;

    -- out_c0_exe357(GPOUT,41)
    out_c0_exe357 <= conv1x1_B7_branch_out_c0_exe357;

    -- out_c0_exe417177(GPOUT,42)
    out_c0_exe417177 <= conv1x1_B7_branch_out_c0_exe417177;

    -- out_c0_exe4257(GPOUT,43)
    out_c0_exe4257 <= conv1x1_B7_branch_out_c0_exe4257;

    -- out_c0_exe517283(GPOUT,44)
    out_c0_exe517283 <= conv1x1_B7_branch_out_c0_exe517283;

    -- out_c0_exe5258(GPOUT,45)
    out_c0_exe5258 <= conv1x1_B7_branch_out_c0_exe5258;

    -- out_c1_exe112(GPOUT,46)
    out_c1_exe112 <= conv1x1_B7_branch_out_c1_exe112;

    -- out_c2_exe121(GPOUT,47)
    out_c2_exe121 <= conv1x1_B7_branch_out_c2_exe121;

    -- out_c3_exe129(GPOUT,48)
    out_c3_exe129 <= conv1x1_B7_branch_out_c3_exe129;

    -- out_c3_exe237(GPOUT,49)
    out_c3_exe237 <= conv1x1_B7_branch_out_c3_exe237;

    -- out_j_01048(GPOUT,50)
    out_j_01048 <= conv1x1_B7_branch_out_j_01048;

    -- out_lsu_unnamed_conv1x111_o_active(GPOUT,51)
    out_lsu_unnamed_conv1x111_o_active <= bb_conv1x1_B7_stall_region_out_lsu_unnamed_conv1x111_o_active;

    -- out_stall_out_0(GPOUT,52)
    out_stall_out_0 <= conv1x1_B7_merge_out_stall_out_0;

    -- out_unnamed_conv1x111_avm_address(GPOUT,53)
    out_unnamed_conv1x111_avm_address <= bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_address;

    -- out_unnamed_conv1x111_avm_burstcount(GPOUT,54)
    out_unnamed_conv1x111_avm_burstcount <= bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_burstcount;

    -- out_unnamed_conv1x111_avm_byteenable(GPOUT,55)
    out_unnamed_conv1x111_avm_byteenable <= bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_byteenable;

    -- out_unnamed_conv1x111_avm_enable(GPOUT,56)
    out_unnamed_conv1x111_avm_enable <= bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_enable;

    -- out_unnamed_conv1x111_avm_read(GPOUT,57)
    out_unnamed_conv1x111_avm_read <= bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_read;

    -- out_unnamed_conv1x111_avm_write(GPOUT,58)
    out_unnamed_conv1x111_avm_write <= bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_write;

    -- out_unnamed_conv1x111_avm_writedata(GPOUT,59)
    out_unnamed_conv1x111_avm_writedata <= bb_conv1x1_B7_stall_region_out_unnamed_conv1x111_avm_writedata;

    -- out_valid_out_0(GPOUT,60)
    out_valid_out_0 <= conv1x1_B7_branch_out_valid_out_0;

END normal;
