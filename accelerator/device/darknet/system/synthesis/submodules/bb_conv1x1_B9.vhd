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

-- VHDL created from bb_conv1x1_B9
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

entity bb_conv1x1_B9 is
    port (
        in_c0_exe116867_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe1254105_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe19_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe221293_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2255107_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321397_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417175_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517281_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe110_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe1280112_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe119_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe136_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe244_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01046_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv1x115_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x115_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x115_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x115_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe19 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe2295 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe110 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe119 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe136 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe244 : out std_logic_vector(0 downto 0);  -- ufix1
        out_lsu_unnamed_conv1x115_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x115_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x115_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x115_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B9;

architecture normal of bb_conv1x1_B9 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv1x1_B9_stall_region is
        port (
            in_c0_exe116867 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe1254105 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe19 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe221293 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2255107 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321397 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417175 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517281 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe110 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe1280112 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe119 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe136 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe244 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_j_01046 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe19 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe2295 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe3296 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe110 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe119 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe136 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe244 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv1x115_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B9_branch is
        port (
            in_c0_exe19 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe2295 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe3296 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe110 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe119 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe136 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe244 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe19 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe2295 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe110 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe119 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe136 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe244 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B9_merge is
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
            in_j_01046_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe116867 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1254105 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe19 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe221293 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2255107 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe321397 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417175 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe517281 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe110 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exe1280112 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe119 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe136 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe244 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01046 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv1x1_B9_stall_region_out_c0_exe19 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B9_stall_region_out_c0_exe2295 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_stall_region_out_c0_exe3296 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_stall_region_out_c1_exe110 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B9_stall_region_out_c2_exe119 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_stall_region_out_c3_exe136 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_stall_region_out_c3_exe244 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_stall_region_out_lsu_unnamed_conv1x115_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B9_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_branch_out_c0_exe19 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B9_branch_out_c0_exe2295 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B9_branch_out_c1_exe110 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B9_branch_out_c2_exe119 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B9_branch_out_c3_exe136 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B9_branch_out_c3_exe244 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_merge_out_c0_exe116867 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_merge_out_c0_exe1254105 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B9_merge_out_c0_exe19 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B9_merge_out_c0_exe221293 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_merge_out_c0_exe2255107 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_merge_out_c0_exe321397 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_merge_out_c0_exe417175 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_merge_out_c0_exe517281 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_merge_out_c1_exe110 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B9_merge_out_c1_exe1280112 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B9_merge_out_c2_exe119 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B9_merge_out_c3_exe136 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B9_merge_out_c3_exe244 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_merge_out_j_01046 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B9_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B9_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv1x1_B9_merge(BLACKBOX,4)
    theconv1x1_B9_merge : conv1x1_B9_merge
    PORT MAP (
        in_c0_exe116867_0 => in_c0_exe116867_0,
        in_c0_exe1254105_0 => in_c0_exe1254105_0,
        in_c0_exe19_0 => in_c0_exe19_0,
        in_c0_exe221293_0 => in_c0_exe221293_0,
        in_c0_exe2255107_0 => in_c0_exe2255107_0,
        in_c0_exe321397_0 => in_c0_exe321397_0,
        in_c0_exe417175_0 => in_c0_exe417175_0,
        in_c0_exe517281_0 => in_c0_exe517281_0,
        in_c1_exe110_0 => in_c1_exe110_0,
        in_c1_exe1280112_0 => in_c1_exe1280112_0,
        in_c2_exe119_0 => in_c2_exe119_0,
        in_c3_exe136_0 => in_c3_exe136_0,
        in_c3_exe244_0 => in_c3_exe244_0,
        in_j_01046_0 => in_j_01046_0,
        in_stall_in => bb_conv1x1_B9_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exe116867 => conv1x1_B9_merge_out_c0_exe116867,
        out_c0_exe1254105 => conv1x1_B9_merge_out_c0_exe1254105,
        out_c0_exe19 => conv1x1_B9_merge_out_c0_exe19,
        out_c0_exe221293 => conv1x1_B9_merge_out_c0_exe221293,
        out_c0_exe2255107 => conv1x1_B9_merge_out_c0_exe2255107,
        out_c0_exe321397 => conv1x1_B9_merge_out_c0_exe321397,
        out_c0_exe417175 => conv1x1_B9_merge_out_c0_exe417175,
        out_c0_exe517281 => conv1x1_B9_merge_out_c0_exe517281,
        out_c1_exe110 => conv1x1_B9_merge_out_c1_exe110,
        out_c1_exe1280112 => conv1x1_B9_merge_out_c1_exe1280112,
        out_c2_exe119 => conv1x1_B9_merge_out_c2_exe119,
        out_c3_exe136 => conv1x1_B9_merge_out_c3_exe136,
        out_c3_exe244 => conv1x1_B9_merge_out_c3_exe244,
        out_j_01046 => conv1x1_B9_merge_out_j_01046,
        out_stall_out_0 => conv1x1_B9_merge_out_stall_out_0,
        out_valid_out => conv1x1_B9_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B9_stall_region(BLACKBOX,2)
    thebb_conv1x1_B9_stall_region : bb_conv1x1_B9_stall_region
    PORT MAP (
        in_c0_exe116867 => conv1x1_B9_merge_out_c0_exe116867,
        in_c0_exe1254105 => conv1x1_B9_merge_out_c0_exe1254105,
        in_c0_exe19 => conv1x1_B9_merge_out_c0_exe19,
        in_c0_exe221293 => conv1x1_B9_merge_out_c0_exe221293,
        in_c0_exe2255107 => conv1x1_B9_merge_out_c0_exe2255107,
        in_c0_exe321397 => conv1x1_B9_merge_out_c0_exe321397,
        in_c0_exe417175 => conv1x1_B9_merge_out_c0_exe417175,
        in_c0_exe517281 => conv1x1_B9_merge_out_c0_exe517281,
        in_c1_exe110 => conv1x1_B9_merge_out_c1_exe110,
        in_c1_exe1280112 => conv1x1_B9_merge_out_c1_exe1280112,
        in_c2_exe119 => conv1x1_B9_merge_out_c2_exe119,
        in_c3_exe136 => conv1x1_B9_merge_out_c3_exe136,
        in_c3_exe244 => conv1x1_B9_merge_out_c3_exe244,
        in_flush => in_flush,
        in_j_01046 => conv1x1_B9_merge_out_j_01046,
        in_output_im => in_output_im,
        in_output_size => in_output_size,
        in_stall_in => conv1x1_B9_branch_out_stall_out,
        in_unnamed_conv1x115_avm_readdata => in_unnamed_conv1x115_avm_readdata,
        in_unnamed_conv1x115_avm_readdatavalid => in_unnamed_conv1x115_avm_readdatavalid,
        in_unnamed_conv1x115_avm_waitrequest => in_unnamed_conv1x115_avm_waitrequest,
        in_unnamed_conv1x115_avm_writeack => in_unnamed_conv1x115_avm_writeack,
        in_valid_in => conv1x1_B9_merge_out_valid_out,
        out_c0_exe19 => bb_conv1x1_B9_stall_region_out_c0_exe19,
        out_c0_exe2295 => bb_conv1x1_B9_stall_region_out_c0_exe2295,
        out_c0_exe3296 => bb_conv1x1_B9_stall_region_out_c0_exe3296,
        out_c1_exe110 => bb_conv1x1_B9_stall_region_out_c1_exe110,
        out_c2_exe119 => bb_conv1x1_B9_stall_region_out_c2_exe119,
        out_c3_exe136 => bb_conv1x1_B9_stall_region_out_c3_exe136,
        out_c3_exe244 => bb_conv1x1_B9_stall_region_out_c3_exe244,
        out_lsu_unnamed_conv1x115_o_active => bb_conv1x1_B9_stall_region_out_lsu_unnamed_conv1x115_o_active,
        out_stall_out => bb_conv1x1_B9_stall_region_out_stall_out,
        out_unnamed_conv1x115_avm_address => bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_address,
        out_unnamed_conv1x115_avm_burstcount => bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_burstcount,
        out_unnamed_conv1x115_avm_byteenable => bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_byteenable,
        out_unnamed_conv1x115_avm_enable => bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_enable,
        out_unnamed_conv1x115_avm_read => bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_read,
        out_unnamed_conv1x115_avm_write => bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_write,
        out_unnamed_conv1x115_avm_writedata => bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_writedata,
        out_valid_out => bb_conv1x1_B9_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv1x1_B9_branch(BLACKBOX,3)
    theconv1x1_B9_branch : conv1x1_B9_branch
    PORT MAP (
        in_c0_exe19 => bb_conv1x1_B9_stall_region_out_c0_exe19,
        in_c0_exe2295 => bb_conv1x1_B9_stall_region_out_c0_exe2295,
        in_c0_exe3296 => bb_conv1x1_B9_stall_region_out_c0_exe3296,
        in_c1_exe110 => bb_conv1x1_B9_stall_region_out_c1_exe110,
        in_c2_exe119 => bb_conv1x1_B9_stall_region_out_c2_exe119,
        in_c3_exe136 => bb_conv1x1_B9_stall_region_out_c3_exe136,
        in_c3_exe244 => bb_conv1x1_B9_stall_region_out_c3_exe244,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_conv1x1_B9_stall_region_out_valid_out,
        out_c0_exe19 => conv1x1_B9_branch_out_c0_exe19,
        out_c0_exe2295 => conv1x1_B9_branch_out_c0_exe2295,
        out_c1_exe110 => conv1x1_B9_branch_out_c1_exe110,
        out_c2_exe119 => conv1x1_B9_branch_out_c2_exe119,
        out_c3_exe136 => conv1x1_B9_branch_out_c3_exe136,
        out_c3_exe244 => conv1x1_B9_branch_out_c3_exe244,
        out_stall_out => conv1x1_B9_branch_out_stall_out,
        out_valid_out_0 => conv1x1_B9_branch_out_valid_out_0,
        out_valid_out_1 => conv1x1_B9_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe19(GPOUT,35)
    out_c0_exe19 <= conv1x1_B9_branch_out_c0_exe19;

    -- out_c0_exe2295(GPOUT,36)
    out_c0_exe2295 <= conv1x1_B9_branch_out_c0_exe2295;

    -- out_c1_exe110(GPOUT,37)
    out_c1_exe110 <= conv1x1_B9_branch_out_c1_exe110;

    -- out_c2_exe119(GPOUT,38)
    out_c2_exe119 <= conv1x1_B9_branch_out_c2_exe119;

    -- out_c3_exe136(GPOUT,39)
    out_c3_exe136 <= conv1x1_B9_branch_out_c3_exe136;

    -- out_c3_exe244(GPOUT,40)
    out_c3_exe244 <= conv1x1_B9_branch_out_c3_exe244;

    -- out_lsu_unnamed_conv1x115_o_active(GPOUT,41)
    out_lsu_unnamed_conv1x115_o_active <= bb_conv1x1_B9_stall_region_out_lsu_unnamed_conv1x115_o_active;

    -- out_stall_out_0(GPOUT,42)
    out_stall_out_0 <= conv1x1_B9_merge_out_stall_out_0;

    -- out_unnamed_conv1x115_avm_address(GPOUT,43)
    out_unnamed_conv1x115_avm_address <= bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_address;

    -- out_unnamed_conv1x115_avm_burstcount(GPOUT,44)
    out_unnamed_conv1x115_avm_burstcount <= bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_burstcount;

    -- out_unnamed_conv1x115_avm_byteenable(GPOUT,45)
    out_unnamed_conv1x115_avm_byteenable <= bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_byteenable;

    -- out_unnamed_conv1x115_avm_enable(GPOUT,46)
    out_unnamed_conv1x115_avm_enable <= bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_enable;

    -- out_unnamed_conv1x115_avm_read(GPOUT,47)
    out_unnamed_conv1x115_avm_read <= bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_read;

    -- out_unnamed_conv1x115_avm_write(GPOUT,48)
    out_unnamed_conv1x115_avm_write <= bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_write;

    -- out_unnamed_conv1x115_avm_writedata(GPOUT,49)
    out_unnamed_conv1x115_avm_writedata <= bb_conv1x1_B9_stall_region_out_unnamed_conv1x115_avm_writedata;

    -- out_valid_out_0(GPOUT,50)
    out_valid_out_0 <= conv1x1_B9_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,51)
    out_valid_out_1 <= conv1x1_B9_branch_out_valid_out_1;

END normal;
