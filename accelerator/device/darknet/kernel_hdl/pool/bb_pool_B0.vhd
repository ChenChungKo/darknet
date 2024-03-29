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

-- VHDL created from bb_pool_B0
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

entity bb_pool_B0 is
    port (
        in_global_id_0_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_in_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_kernel_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_out_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pool_type : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_2 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_pool_B0;

architecture normal of bb_pool_B0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_pool_B0_stall_region is
        port (
            in_global_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_kernel_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pool_type : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_2 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B0_branch is
        port (
            in_c0_exe1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_2 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_2 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B0_merge is
        port (
            in_global_id_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_global_id_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_pool_B0_stall_region_out_c0_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B0_stall_region_out_c0_exe2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B0_stall_region_out_c0_exe3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B0_stall_region_out_c0_exe4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B0_stall_region_out_c1_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B0_stall_region_out_c2_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B0_stall_region_out_cmp6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B0_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B0_stall_region_out_tmp_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B0_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B0_branch_out_c0_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B0_branch_out_c0_exe2 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B0_branch_out_c0_exe3 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B0_branch_out_c0_exe4 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B0_branch_out_c1_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B0_branch_out_c2_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B0_branch_out_cmp6 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B0_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B0_branch_out_tmp_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B0_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B0_merge_out_global_id_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B0_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B0_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- pool_B0_merge(BLACKBOX,24)
    thepool_B0_merge : pool_B0_merge
    PORT MAP (
        in_global_id_0_0 => in_global_id_0_0,
        in_stall_in => bb_pool_B0_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_global_id_0 => pool_B0_merge_out_global_id_0,
        out_stall_out_0 => pool_B0_merge_out_stall_out_0,
        out_valid_out => pool_B0_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B0_stall_region(BLACKBOX,2)
    thebb_pool_B0_stall_region : bb_pool_B0_stall_region
    PORT MAP (
        in_global_id_0 => pool_B0_merge_out_global_id_0,
        in_in_size => in_in_size,
        in_kernel_size => in_kernel_size,
        in_out_size => in_out_size,
        in_pool_type => in_pool_type,
        in_stall_in => pool_B0_branch_out_stall_out,
        in_valid_in => pool_B0_merge_out_valid_out,
        out_c0_exe1 => bb_pool_B0_stall_region_out_c0_exe1,
        out_c0_exe2 => bb_pool_B0_stall_region_out_c0_exe2,
        out_c0_exe3 => bb_pool_B0_stall_region_out_c0_exe3,
        out_c0_exe4 => bb_pool_B0_stall_region_out_c0_exe4,
        out_c1_exe1 => bb_pool_B0_stall_region_out_c1_exe1,
        out_c2_exe1 => bb_pool_B0_stall_region_out_c2_exe1,
        out_cmp6 => bb_pool_B0_stall_region_out_cmp6,
        out_stall_out => bb_pool_B0_stall_region_out_stall_out,
        out_tmp_2 => bb_pool_B0_stall_region_out_tmp_2,
        out_valid_out => bb_pool_B0_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- pool_B0_branch(BLACKBOX,23)
    thepool_B0_branch : pool_B0_branch
    PORT MAP (
        in_c0_exe1 => bb_pool_B0_stall_region_out_c0_exe1,
        in_c0_exe2 => bb_pool_B0_stall_region_out_c0_exe2,
        in_c0_exe3 => bb_pool_B0_stall_region_out_c0_exe3,
        in_c0_exe4 => bb_pool_B0_stall_region_out_c0_exe4,
        in_c1_exe1 => bb_pool_B0_stall_region_out_c1_exe1,
        in_c2_exe1 => bb_pool_B0_stall_region_out_c2_exe1,
        in_cmp6 => bb_pool_B0_stall_region_out_cmp6,
        in_stall_in_0 => in_stall_in_0,
        in_tmp_2 => bb_pool_B0_stall_region_out_tmp_2,
        in_valid_in => bb_pool_B0_stall_region_out_valid_out,
        out_c0_exe1 => pool_B0_branch_out_c0_exe1,
        out_c0_exe2 => pool_B0_branch_out_c0_exe2,
        out_c0_exe3 => pool_B0_branch_out_c0_exe3,
        out_c0_exe4 => pool_B0_branch_out_c0_exe4,
        out_c1_exe1 => pool_B0_branch_out_c1_exe1,
        out_c2_exe1 => pool_B0_branch_out_c2_exe1,
        out_cmp6 => pool_B0_branch_out_cmp6,
        out_stall_out => pool_B0_branch_out_stall_out,
        out_tmp_2 => pool_B0_branch_out_tmp_2,
        out_valid_out_0 => pool_B0_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe1(GPOUT,13)
    out_c0_exe1 <= pool_B0_branch_out_c0_exe1;

    -- out_c0_exe2(GPOUT,14)
    out_c0_exe2 <= pool_B0_branch_out_c0_exe2;

    -- out_c0_exe3(GPOUT,15)
    out_c0_exe3 <= pool_B0_branch_out_c0_exe3;

    -- out_c0_exe4(GPOUT,16)
    out_c0_exe4 <= pool_B0_branch_out_c0_exe4;

    -- out_c1_exe1(GPOUT,17)
    out_c1_exe1 <= pool_B0_branch_out_c1_exe1;

    -- out_c2_exe1(GPOUT,18)
    out_c2_exe1 <= pool_B0_branch_out_c2_exe1;

    -- out_cmp6(GPOUT,19)
    out_cmp6 <= pool_B0_branch_out_cmp6;

    -- out_stall_out_0(GPOUT,20)
    out_stall_out_0 <= pool_B0_merge_out_stall_out_0;

    -- out_tmp_2(GPOUT,21)
    out_tmp_2 <= pool_B0_branch_out_tmp_2;

    -- out_valid_out_0(GPOUT,22)
    out_valid_out_0 <= pool_B0_branch_out_valid_out_0;

END normal;
