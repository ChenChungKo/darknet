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

-- VHDL created from bb_conv1x1_B3
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

entity bb_conv1x1_B3 is
    port (
        in_c0_exe16_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe361_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe463_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe115466_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_exe116_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe125_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe133_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe241_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01052_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv1x13_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x13_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x13_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x13_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1168 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe16 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe3170 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe361 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4171 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5172 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe116 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe125 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe133 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe241 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01052 : out std_logic_vector(31 downto 0);  -- ufix32
        out_lsu_unnamed_conv1x13_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x13_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x13_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x13_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B3;

architecture normal of bb_conv1x1_B3 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv1x1_B3_stall_region is
        port (
            in_c0_exe16 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe361 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe463 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe115466 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_exe116 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe125 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe133 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe241 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01052 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B3_branch is
        port (
            in_c0_exe1168 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe16 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe3170 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe361 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4171 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5172 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe116 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe125 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe133 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe241 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_j_01052 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B3_merge is
        port (
            in_c0_exe16_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe361_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe463_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe115466_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_exe116_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe125_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe133_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe241_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_j_01052_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe16 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe361 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe463 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe115466 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c1_exe116 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe125 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe133 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe241 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01052 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv1x1_B3_stall_region_out_c0_exe1168 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c0_exe16 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c0_exe3170 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c0_exe361 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c0_exe4171 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c0_exe5172 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c0_exe6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c0_exe7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c0_exe8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c1_exe116 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c2_exe125 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c3_exe133 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_stall_region_out_c3_exe241 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_j_01052 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_stall_region_out_lsu_unnamed_conv1x13_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B3_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_branch_out_c0_exe1168 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_branch_out_c0_exe16 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B3_branch_out_c0_exe3170 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B3_branch_out_c0_exe361 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_branch_out_c0_exe4171 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_branch_out_c0_exe5172 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_branch_out_c0_exe6 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B3_branch_out_c0_exe7 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_branch_out_c0_exe8 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_branch_out_c1_exe116 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B3_branch_out_c2_exe125 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B3_branch_out_c3_exe133 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B3_branch_out_c3_exe241 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_branch_out_j_01052 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B3_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_merge_out_c0_exe16 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B3_merge_out_c0_exe361 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_merge_out_c0_exe463 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_merge_out_c1_exe115466 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B3_merge_out_c1_exe116 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B3_merge_out_c2_exe125 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B3_merge_out_c3_exe133 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B3_merge_out_c3_exe241 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_merge_out_j_01052 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B3_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B3_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv1x1_B3_merge(BLACKBOX,4)
    theconv1x1_B3_merge : conv1x1_B3_merge
    PORT MAP (
        in_c0_exe16_0 => in_c0_exe16_0,
        in_c0_exe361_0 => in_c0_exe361_0,
        in_c0_exe463_0 => in_c0_exe463_0,
        in_c1_exe115466_0 => in_c1_exe115466_0,
        in_c1_exe116_0 => in_c1_exe116_0,
        in_c2_exe125_0 => in_c2_exe125_0,
        in_c3_exe133_0 => in_c3_exe133_0,
        in_c3_exe241_0 => in_c3_exe241_0,
        in_j_01052_0 => in_j_01052_0,
        in_stall_in => bb_conv1x1_B3_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exe16 => conv1x1_B3_merge_out_c0_exe16,
        out_c0_exe361 => conv1x1_B3_merge_out_c0_exe361,
        out_c0_exe463 => conv1x1_B3_merge_out_c0_exe463,
        out_c1_exe115466 => conv1x1_B3_merge_out_c1_exe115466,
        out_c1_exe116 => conv1x1_B3_merge_out_c1_exe116,
        out_c2_exe125 => conv1x1_B3_merge_out_c2_exe125,
        out_c3_exe133 => conv1x1_B3_merge_out_c3_exe133,
        out_c3_exe241 => conv1x1_B3_merge_out_c3_exe241,
        out_j_01052 => conv1x1_B3_merge_out_j_01052,
        out_stall_out_0 => conv1x1_B3_merge_out_stall_out_0,
        out_valid_out => conv1x1_B3_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B3_stall_region(BLACKBOX,2)
    thebb_conv1x1_B3_stall_region : bb_conv1x1_B3_stall_region
    PORT MAP (
        in_c0_exe16 => conv1x1_B3_merge_out_c0_exe16,
        in_c0_exe361 => conv1x1_B3_merge_out_c0_exe361,
        in_c0_exe463 => conv1x1_B3_merge_out_c0_exe463,
        in_c1_exe115466 => conv1x1_B3_merge_out_c1_exe115466,
        in_c1_exe116 => conv1x1_B3_merge_out_c1_exe116,
        in_c2_exe125 => conv1x1_B3_merge_out_c2_exe125,
        in_c3_exe133 => conv1x1_B3_merge_out_c3_exe133,
        in_c3_exe241 => conv1x1_B3_merge_out_c3_exe241,
        in_flush => in_flush,
        in_input_channels => in_input_channels,
        in_input_size => in_input_size,
        in_j_01052 => conv1x1_B3_merge_out_j_01052,
        in_output_im => in_output_im,
        in_output_size => in_output_size,
        in_pad => in_pad,
        in_stall_in => conv1x1_B3_branch_out_stall_out,
        in_stride => in_stride,
        in_unnamed_conv1x13_avm_readdata => in_unnamed_conv1x13_avm_readdata,
        in_unnamed_conv1x13_avm_readdatavalid => in_unnamed_conv1x13_avm_readdatavalid,
        in_unnamed_conv1x13_avm_waitrequest => in_unnamed_conv1x13_avm_waitrequest,
        in_unnamed_conv1x13_avm_writeack => in_unnamed_conv1x13_avm_writeack,
        in_valid_in => conv1x1_B3_merge_out_valid_out,
        out_c0_exe1168 => bb_conv1x1_B3_stall_region_out_c0_exe1168,
        out_c0_exe16 => bb_conv1x1_B3_stall_region_out_c0_exe16,
        out_c0_exe3170 => bb_conv1x1_B3_stall_region_out_c0_exe3170,
        out_c0_exe361 => bb_conv1x1_B3_stall_region_out_c0_exe361,
        out_c0_exe4171 => bb_conv1x1_B3_stall_region_out_c0_exe4171,
        out_c0_exe5172 => bb_conv1x1_B3_stall_region_out_c0_exe5172,
        out_c0_exe6 => bb_conv1x1_B3_stall_region_out_c0_exe6,
        out_c0_exe7 => bb_conv1x1_B3_stall_region_out_c0_exe7,
        out_c0_exe8 => bb_conv1x1_B3_stall_region_out_c0_exe8,
        out_c1_exe116 => bb_conv1x1_B3_stall_region_out_c1_exe116,
        out_c2_exe125 => bb_conv1x1_B3_stall_region_out_c2_exe125,
        out_c3_exe133 => bb_conv1x1_B3_stall_region_out_c3_exe133,
        out_c3_exe241 => bb_conv1x1_B3_stall_region_out_c3_exe241,
        out_j_01052 => bb_conv1x1_B3_stall_region_out_j_01052,
        out_lsu_unnamed_conv1x13_o_active => bb_conv1x1_B3_stall_region_out_lsu_unnamed_conv1x13_o_active,
        out_stall_out => bb_conv1x1_B3_stall_region_out_stall_out,
        out_unnamed_conv1x13_avm_address => bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_address,
        out_unnamed_conv1x13_avm_burstcount => bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_burstcount,
        out_unnamed_conv1x13_avm_byteenable => bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_byteenable,
        out_unnamed_conv1x13_avm_enable => bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_enable,
        out_unnamed_conv1x13_avm_read => bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_read,
        out_unnamed_conv1x13_avm_write => bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_write,
        out_unnamed_conv1x13_avm_writedata => bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_writedata,
        out_valid_out => bb_conv1x1_B3_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv1x1_B3_branch(BLACKBOX,3)
    theconv1x1_B3_branch : conv1x1_B3_branch
    PORT MAP (
        in_c0_exe1168 => bb_conv1x1_B3_stall_region_out_c0_exe1168,
        in_c0_exe16 => bb_conv1x1_B3_stall_region_out_c0_exe16,
        in_c0_exe3170 => bb_conv1x1_B3_stall_region_out_c0_exe3170,
        in_c0_exe361 => bb_conv1x1_B3_stall_region_out_c0_exe361,
        in_c0_exe4171 => bb_conv1x1_B3_stall_region_out_c0_exe4171,
        in_c0_exe5172 => bb_conv1x1_B3_stall_region_out_c0_exe5172,
        in_c0_exe6 => bb_conv1x1_B3_stall_region_out_c0_exe6,
        in_c0_exe7 => bb_conv1x1_B3_stall_region_out_c0_exe7,
        in_c0_exe8 => bb_conv1x1_B3_stall_region_out_c0_exe8,
        in_c1_exe116 => bb_conv1x1_B3_stall_region_out_c1_exe116,
        in_c2_exe125 => bb_conv1x1_B3_stall_region_out_c2_exe125,
        in_c3_exe133 => bb_conv1x1_B3_stall_region_out_c3_exe133,
        in_c3_exe241 => bb_conv1x1_B3_stall_region_out_c3_exe241,
        in_j_01052 => bb_conv1x1_B3_stall_region_out_j_01052,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_conv1x1_B3_stall_region_out_valid_out,
        out_c0_exe1168 => conv1x1_B3_branch_out_c0_exe1168,
        out_c0_exe16 => conv1x1_B3_branch_out_c0_exe16,
        out_c0_exe3170 => conv1x1_B3_branch_out_c0_exe3170,
        out_c0_exe361 => conv1x1_B3_branch_out_c0_exe361,
        out_c0_exe4171 => conv1x1_B3_branch_out_c0_exe4171,
        out_c0_exe5172 => conv1x1_B3_branch_out_c0_exe5172,
        out_c0_exe6 => conv1x1_B3_branch_out_c0_exe6,
        out_c0_exe7 => conv1x1_B3_branch_out_c0_exe7,
        out_c0_exe8 => conv1x1_B3_branch_out_c0_exe8,
        out_c1_exe116 => conv1x1_B3_branch_out_c1_exe116,
        out_c2_exe125 => conv1x1_B3_branch_out_c2_exe125,
        out_c3_exe133 => conv1x1_B3_branch_out_c3_exe133,
        out_c3_exe241 => conv1x1_B3_branch_out_c3_exe241,
        out_j_01052 => conv1x1_B3_branch_out_j_01052,
        out_stall_out => conv1x1_B3_branch_out_stall_out,
        out_valid_out_0 => conv1x1_B3_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe1168(GPOUT,29)
    out_c0_exe1168 <= conv1x1_B3_branch_out_c0_exe1168;

    -- out_c0_exe16(GPOUT,30)
    out_c0_exe16 <= conv1x1_B3_branch_out_c0_exe16;

    -- out_c0_exe3170(GPOUT,31)
    out_c0_exe3170 <= conv1x1_B3_branch_out_c0_exe3170;

    -- out_c0_exe361(GPOUT,32)
    out_c0_exe361 <= conv1x1_B3_branch_out_c0_exe361;

    -- out_c0_exe4171(GPOUT,33)
    out_c0_exe4171 <= conv1x1_B3_branch_out_c0_exe4171;

    -- out_c0_exe5172(GPOUT,34)
    out_c0_exe5172 <= conv1x1_B3_branch_out_c0_exe5172;

    -- out_c0_exe6(GPOUT,35)
    out_c0_exe6 <= conv1x1_B3_branch_out_c0_exe6;

    -- out_c0_exe7(GPOUT,36)
    out_c0_exe7 <= conv1x1_B3_branch_out_c0_exe7;

    -- out_c0_exe8(GPOUT,37)
    out_c0_exe8 <= conv1x1_B3_branch_out_c0_exe8;

    -- out_c1_exe116(GPOUT,38)
    out_c1_exe116 <= conv1x1_B3_branch_out_c1_exe116;

    -- out_c2_exe125(GPOUT,39)
    out_c2_exe125 <= conv1x1_B3_branch_out_c2_exe125;

    -- out_c3_exe133(GPOUT,40)
    out_c3_exe133 <= conv1x1_B3_branch_out_c3_exe133;

    -- out_c3_exe241(GPOUT,41)
    out_c3_exe241 <= conv1x1_B3_branch_out_c3_exe241;

    -- out_j_01052(GPOUT,42)
    out_j_01052 <= conv1x1_B3_branch_out_j_01052;

    -- out_lsu_unnamed_conv1x13_o_active(GPOUT,43)
    out_lsu_unnamed_conv1x13_o_active <= bb_conv1x1_B3_stall_region_out_lsu_unnamed_conv1x13_o_active;

    -- out_stall_out_0(GPOUT,44)
    out_stall_out_0 <= conv1x1_B3_merge_out_stall_out_0;

    -- out_unnamed_conv1x13_avm_address(GPOUT,45)
    out_unnamed_conv1x13_avm_address <= bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_address;

    -- out_unnamed_conv1x13_avm_burstcount(GPOUT,46)
    out_unnamed_conv1x13_avm_burstcount <= bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_burstcount;

    -- out_unnamed_conv1x13_avm_byteenable(GPOUT,47)
    out_unnamed_conv1x13_avm_byteenable <= bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_byteenable;

    -- out_unnamed_conv1x13_avm_enable(GPOUT,48)
    out_unnamed_conv1x13_avm_enable <= bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_enable;

    -- out_unnamed_conv1x13_avm_read(GPOUT,49)
    out_unnamed_conv1x13_avm_read <= bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_read;

    -- out_unnamed_conv1x13_avm_write(GPOUT,50)
    out_unnamed_conv1x13_avm_write <= bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_write;

    -- out_unnamed_conv1x13_avm_writedata(GPOUT,51)
    out_unnamed_conv1x13_avm_writedata <= bb_conv1x1_B3_stall_region_out_unnamed_conv1x13_avm_writedata;

    -- out_valid_out_0(GPOUT,52)
    out_valid_out_0 <= conv1x1_B3_branch_out_valid_out_0;

END normal;
