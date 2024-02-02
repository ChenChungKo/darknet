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

-- VHDL created from bb_conv1x1_B1
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

entity bb_conv1x1_B1 is
    port (
        in_c0_exe18_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe18_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe118_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe118_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe127_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe127_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe135_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe135_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe243_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c3_exe243_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_010_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_010_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1140 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe18 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe118 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe127 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe135 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe243 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_010 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B1;

architecture normal of bb_conv1x1_B1 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv1x1_B1_stall_region is
        port (
            in_c0_exe18 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe118 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe127 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe135 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe243 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_010 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B1_branch is
        port (
            in_c0_exe1140 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe18 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe118 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe127 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe135 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe243 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_j_010 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B1_merge is
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
            in_j_010_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_010_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe18 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exe118 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe127 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe135 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe243 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_010 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv1x1_B1_stall_region_out_c0_exe1140 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_stall_region_out_c0_exe18 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B1_stall_region_out_c0_exe2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_stall_region_out_c0_exe3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_stall_region_out_c0_exe4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_stall_region_out_c0_exe5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_stall_region_out_c1_exe118 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B1_stall_region_out_c2_exe127 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_stall_region_out_c3_exe135 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_stall_region_out_c3_exe243 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_stall_region_out_j_010 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B1_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B1_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_branch_out_c0_exe1140 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B1_branch_out_c0_exe18 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B1_branch_out_c0_exe2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_branch_out_c0_exe3 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_branch_out_c0_exe4 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_branch_out_c0_exe5 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_branch_out_c1_exe118 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B1_branch_out_c2_exe127 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B1_branch_out_c3_exe135 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B1_branch_out_c3_exe243 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_branch_out_j_010 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B1_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_merge_out_c0_exe18 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B1_merge_out_c1_exe118 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B1_merge_out_c2_exe127 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B1_merge_out_c3_exe135 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B1_merge_out_c3_exe243 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_merge_out_j_010 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B1_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B1_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv1x1_B1_merge(BLACKBOX,4)
    theconv1x1_B1_merge : conv1x1_B1_merge
    PORT MAP (
        in_c0_exe18_0 => in_c0_exe18_0,
        in_c0_exe18_1 => in_c0_exe18_1,
        in_c1_exe118_0 => in_c1_exe118_0,
        in_c1_exe118_1 => in_c1_exe118_1,
        in_c2_exe127_0 => in_c2_exe127_0,
        in_c2_exe127_1 => in_c2_exe127_1,
        in_c3_exe135_0 => in_c3_exe135_0,
        in_c3_exe135_1 => in_c3_exe135_1,
        in_c3_exe243_0 => in_c3_exe243_0,
        in_c3_exe243_1 => in_c3_exe243_1,
        in_j_010_0 => in_j_010_0,
        in_j_010_1 => in_j_010_1,
        in_stall_in => bb_conv1x1_B1_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_c0_exe18 => conv1x1_B1_merge_out_c0_exe18,
        out_c1_exe118 => conv1x1_B1_merge_out_c1_exe118,
        out_c2_exe127 => conv1x1_B1_merge_out_c2_exe127,
        out_c3_exe135 => conv1x1_B1_merge_out_c3_exe135,
        out_c3_exe243 => conv1x1_B1_merge_out_c3_exe243,
        out_j_010 => conv1x1_B1_merge_out_j_010,
        out_stall_out_0 => conv1x1_B1_merge_out_stall_out_0,
        out_stall_out_1 => conv1x1_B1_merge_out_stall_out_1,
        out_valid_out => conv1x1_B1_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B1_stall_region(BLACKBOX,2)
    thebb_conv1x1_B1_stall_region : bb_conv1x1_B1_stall_region
    PORT MAP (
        in_c0_exe18 => conv1x1_B1_merge_out_c0_exe18,
        in_c1_exe118 => conv1x1_B1_merge_out_c1_exe118,
        in_c2_exe127 => conv1x1_B1_merge_out_c2_exe127,
        in_c3_exe135 => conv1x1_B1_merge_out_c3_exe135,
        in_c3_exe243 => conv1x1_B1_merge_out_c3_exe243,
        in_input_channels => in_input_channels,
        in_input_size => in_input_size,
        in_j_010 => conv1x1_B1_merge_out_j_010,
        in_output_size => in_output_size,
        in_pad => in_pad,
        in_stall_in => conv1x1_B1_branch_out_stall_out,
        in_stride => in_stride,
        in_valid_in => conv1x1_B1_merge_out_valid_out,
        out_c0_exe1140 => bb_conv1x1_B1_stall_region_out_c0_exe1140,
        out_c0_exe18 => bb_conv1x1_B1_stall_region_out_c0_exe18,
        out_c0_exe2 => bb_conv1x1_B1_stall_region_out_c0_exe2,
        out_c0_exe3 => bb_conv1x1_B1_stall_region_out_c0_exe3,
        out_c0_exe4 => bb_conv1x1_B1_stall_region_out_c0_exe4,
        out_c0_exe5 => bb_conv1x1_B1_stall_region_out_c0_exe5,
        out_c1_exe118 => bb_conv1x1_B1_stall_region_out_c1_exe118,
        out_c2_exe127 => bb_conv1x1_B1_stall_region_out_c2_exe127,
        out_c3_exe135 => bb_conv1x1_B1_stall_region_out_c3_exe135,
        out_c3_exe243 => bb_conv1x1_B1_stall_region_out_c3_exe243,
        out_j_010 => bb_conv1x1_B1_stall_region_out_j_010,
        out_stall_out => bb_conv1x1_B1_stall_region_out_stall_out,
        out_valid_out => bb_conv1x1_B1_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv1x1_B1_branch(BLACKBOX,3)
    theconv1x1_B1_branch : conv1x1_B1_branch
    PORT MAP (
        in_c0_exe1140 => bb_conv1x1_B1_stall_region_out_c0_exe1140,
        in_c0_exe18 => bb_conv1x1_B1_stall_region_out_c0_exe18,
        in_c0_exe2 => bb_conv1x1_B1_stall_region_out_c0_exe2,
        in_c0_exe3 => bb_conv1x1_B1_stall_region_out_c0_exe3,
        in_c0_exe4 => bb_conv1x1_B1_stall_region_out_c0_exe4,
        in_c0_exe5 => bb_conv1x1_B1_stall_region_out_c0_exe5,
        in_c1_exe118 => bb_conv1x1_B1_stall_region_out_c1_exe118,
        in_c2_exe127 => bb_conv1x1_B1_stall_region_out_c2_exe127,
        in_c3_exe135 => bb_conv1x1_B1_stall_region_out_c3_exe135,
        in_c3_exe243 => bb_conv1x1_B1_stall_region_out_c3_exe243,
        in_j_010 => bb_conv1x1_B1_stall_region_out_j_010,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_conv1x1_B1_stall_region_out_valid_out,
        out_c0_exe1140 => conv1x1_B1_branch_out_c0_exe1140,
        out_c0_exe18 => conv1x1_B1_branch_out_c0_exe18,
        out_c0_exe2 => conv1x1_B1_branch_out_c0_exe2,
        out_c0_exe3 => conv1x1_B1_branch_out_c0_exe3,
        out_c0_exe4 => conv1x1_B1_branch_out_c0_exe4,
        out_c0_exe5 => conv1x1_B1_branch_out_c0_exe5,
        out_c1_exe118 => conv1x1_B1_branch_out_c1_exe118,
        out_c2_exe127 => conv1x1_B1_branch_out_c2_exe127,
        out_c3_exe135 => conv1x1_B1_branch_out_c3_exe135,
        out_c3_exe243 => conv1x1_B1_branch_out_c3_exe243,
        out_j_010 => conv1x1_B1_branch_out_j_010,
        out_stall_out => conv1x1_B1_branch_out_stall_out,
        out_valid_out_0 => conv1x1_B1_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe1140(GPOUT,28)
    out_c0_exe1140 <= conv1x1_B1_branch_out_c0_exe1140;

    -- out_c0_exe18(GPOUT,29)
    out_c0_exe18 <= conv1x1_B1_branch_out_c0_exe18;

    -- out_c0_exe2(GPOUT,30)
    out_c0_exe2 <= conv1x1_B1_branch_out_c0_exe2;

    -- out_c0_exe3(GPOUT,31)
    out_c0_exe3 <= conv1x1_B1_branch_out_c0_exe3;

    -- out_c0_exe4(GPOUT,32)
    out_c0_exe4 <= conv1x1_B1_branch_out_c0_exe4;

    -- out_c0_exe5(GPOUT,33)
    out_c0_exe5 <= conv1x1_B1_branch_out_c0_exe5;

    -- out_c1_exe118(GPOUT,34)
    out_c1_exe118 <= conv1x1_B1_branch_out_c1_exe118;

    -- out_c2_exe127(GPOUT,35)
    out_c2_exe127 <= conv1x1_B1_branch_out_c2_exe127;

    -- out_c3_exe135(GPOUT,36)
    out_c3_exe135 <= conv1x1_B1_branch_out_c3_exe135;

    -- out_c3_exe243(GPOUT,37)
    out_c3_exe243 <= conv1x1_B1_branch_out_c3_exe243;

    -- out_j_010(GPOUT,38)
    out_j_010 <= conv1x1_B1_branch_out_j_010;

    -- out_stall_out_0(GPOUT,39)
    out_stall_out_0 <= conv1x1_B1_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,40)
    out_stall_out_1 <= conv1x1_B1_merge_out_stall_out_1;

    -- out_valid_out_0(GPOUT,41)
    out_valid_out_0 <= conv1x1_B1_branch_out_valid_out_0;

END normal;
