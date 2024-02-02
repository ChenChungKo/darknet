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

-- VHDL created from bb_conv_B0
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

entity bb_conv_B0 is
    port (
        in_K_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_N_Fin : in std_logic_vector(31 downto 0);  -- ufix32
        in_N_Fin_dim : in std_logic_vector(31 downto 0);  -- ufix32
        in_N_Fin_sq_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_N_Fout_dim : in std_logic_vector(31 downto 0);  -- ufix32
        in_N_elem : in std_logic_vector(31 downto 0);  -- ufix32
        in_P_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_S_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_conv_wt : in std_logic_vector(63 downto 0);  -- ufix64
        in_global_id_0_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_group_id_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_local_id_0_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_acl_hw_wg_id : out std_logic_vector(31 downto 0);  -- ufix32
        out_add13 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp42 : out std_logic_vector(0 downto 0);  -- ufix1
        out_global_id_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_global_id_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul38 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_B0;

architecture normal of bb_conv_B0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv_B0_stall_region is
        port (
            in_K_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fin : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_Fout_dim : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_N_elem : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_S_conv : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_acl_hw_wg_id : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_group_id_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_add13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_global_id_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_global_id_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul38 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_B0_branch is
        port (
            in_acl_hw_wg_id : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp42 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_global_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul38 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_add13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_global_id_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_global_id_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_mul38 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_B0_merge is
        port (
            in_acl_hw_wg_id_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_group_id_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_local_id_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_global_id_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_global_id_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_group_id_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_local_id_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv_B0_stall_region_out_acl_hw_wg_id : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_add13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_c0_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_c0_exe2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_c0_exe3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B0_stall_region_out_c1_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_c1_exe2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_cmp42 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B0_stall_region_out_global_id_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_global_id_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_local_id_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_local_id_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_mul : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_mul38 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B0_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B0_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B0_branch_out_acl_hw_wg_id : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_add13 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_c0_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_c0_exe2 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_c0_exe3 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B0_branch_out_c1_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_c1_exe2 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_cmp42 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B0_branch_out_global_id_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_global_id_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_local_id_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_local_id_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_mul : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_mul38 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B0_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B0_merge_out_acl_hw_wg_id : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_out_global_id_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_out_global_id_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_out_group_id_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_out_local_id_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_out_local_id_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B0_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B0_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv_B0_merge(BLACKBOX,4)
    theconv_B0_merge : conv_B0_merge
    PORT MAP (
        in_acl_hw_wg_id_0 => in_acl_hw_wg_id_0,
        in_global_id_0_0 => in_global_id_0_0,
        in_global_id_1_0 => in_global_id_1_0,
        in_group_id_1_0 => in_group_id_1_0,
        in_local_id_0_0 => in_local_id_0_0,
        in_local_id_1_0 => in_local_id_1_0,
        in_stall_in => bb_conv_B0_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_acl_hw_wg_id => conv_B0_merge_out_acl_hw_wg_id,
        out_global_id_0 => conv_B0_merge_out_global_id_0,
        out_global_id_1 => conv_B0_merge_out_global_id_1,
        out_group_id_1 => conv_B0_merge_out_group_id_1,
        out_local_id_0 => conv_B0_merge_out_local_id_0,
        out_local_id_1 => conv_B0_merge_out_local_id_1,
        out_stall_out_0 => conv_B0_merge_out_stall_out_0,
        out_valid_out => conv_B0_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_B0_stall_region(BLACKBOX,2)
    thebb_conv_B0_stall_region : bb_conv_B0_stall_region
    PORT MAP (
        in_K_conv => in_K_conv,
        in_N_Fin => in_N_Fin,
        in_N_Fout_dim => in_N_Fout_dim,
        in_N_elem => in_N_elem,
        in_S_conv => in_S_conv,
        in_acl_hw_wg_id => conv_B0_merge_out_acl_hw_wg_id,
        in_global_id_0 => conv_B0_merge_out_global_id_0,
        in_global_id_1 => conv_B0_merge_out_global_id_1,
        in_group_id_1 => conv_B0_merge_out_group_id_1,
        in_local_id_0 => conv_B0_merge_out_local_id_0,
        in_local_id_1 => conv_B0_merge_out_local_id_1,
        in_stall_in => conv_B0_branch_out_stall_out,
        in_valid_in => conv_B0_merge_out_valid_out,
        out_acl_hw_wg_id => bb_conv_B0_stall_region_out_acl_hw_wg_id,
        out_add13 => bb_conv_B0_stall_region_out_add13,
        out_c0_exe1 => bb_conv_B0_stall_region_out_c0_exe1,
        out_c0_exe2 => bb_conv_B0_stall_region_out_c0_exe2,
        out_c0_exe3 => bb_conv_B0_stall_region_out_c0_exe3,
        out_c1_exe1 => bb_conv_B0_stall_region_out_c1_exe1,
        out_c1_exe2 => bb_conv_B0_stall_region_out_c1_exe2,
        out_cmp42 => bb_conv_B0_stall_region_out_cmp42,
        out_global_id_0 => bb_conv_B0_stall_region_out_global_id_0,
        out_global_id_1 => bb_conv_B0_stall_region_out_global_id_1,
        out_local_id_0 => bb_conv_B0_stall_region_out_local_id_0,
        out_local_id_1 => bb_conv_B0_stall_region_out_local_id_1,
        out_mul => bb_conv_B0_stall_region_out_mul,
        out_mul38 => bb_conv_B0_stall_region_out_mul38,
        out_stall_out => bb_conv_B0_stall_region_out_stall_out,
        out_valid_out => bb_conv_B0_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv_B0_branch(BLACKBOX,3)
    theconv_B0_branch : conv_B0_branch
    PORT MAP (
        in_acl_hw_wg_id => bb_conv_B0_stall_region_out_acl_hw_wg_id,
        in_add13 => bb_conv_B0_stall_region_out_add13,
        in_c0_exe1 => bb_conv_B0_stall_region_out_c0_exe1,
        in_c0_exe2 => bb_conv_B0_stall_region_out_c0_exe2,
        in_c0_exe3 => bb_conv_B0_stall_region_out_c0_exe3,
        in_c1_exe1 => bb_conv_B0_stall_region_out_c1_exe1,
        in_c1_exe2 => bb_conv_B0_stall_region_out_c1_exe2,
        in_cmp42 => bb_conv_B0_stall_region_out_cmp42,
        in_global_id_0 => bb_conv_B0_stall_region_out_global_id_0,
        in_global_id_1 => bb_conv_B0_stall_region_out_global_id_1,
        in_local_id_0 => bb_conv_B0_stall_region_out_local_id_0,
        in_local_id_1 => bb_conv_B0_stall_region_out_local_id_1,
        in_mul => bb_conv_B0_stall_region_out_mul,
        in_mul38 => bb_conv_B0_stall_region_out_mul38,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_conv_B0_stall_region_out_valid_out,
        out_acl_hw_wg_id => conv_B0_branch_out_acl_hw_wg_id,
        out_add13 => conv_B0_branch_out_add13,
        out_c0_exe1 => conv_B0_branch_out_c0_exe1,
        out_c0_exe2 => conv_B0_branch_out_c0_exe2,
        out_c0_exe3 => conv_B0_branch_out_c0_exe3,
        out_c1_exe1 => conv_B0_branch_out_c1_exe1,
        out_c1_exe2 => conv_B0_branch_out_c1_exe2,
        out_cmp42 => conv_B0_branch_out_cmp42,
        out_global_id_0 => conv_B0_branch_out_global_id_0,
        out_global_id_1 => conv_B0_branch_out_global_id_1,
        out_local_id_0 => conv_B0_branch_out_local_id_0,
        out_local_id_1 => conv_B0_branch_out_local_id_1,
        out_mul => conv_B0_branch_out_mul,
        out_mul38 => conv_B0_branch_out_mul38,
        out_stall_out => conv_B0_branch_out_stall_out,
        out_valid_out_0 => conv_B0_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_acl_hw_wg_id(GPOUT,25)
    out_acl_hw_wg_id <= conv_B0_branch_out_acl_hw_wg_id;

    -- out_add13(GPOUT,26)
    out_add13 <= conv_B0_branch_out_add13;

    -- out_c0_exe1(GPOUT,27)
    out_c0_exe1 <= conv_B0_branch_out_c0_exe1;

    -- out_c0_exe2(GPOUT,28)
    out_c0_exe2 <= conv_B0_branch_out_c0_exe2;

    -- out_c0_exe3(GPOUT,29)
    out_c0_exe3 <= conv_B0_branch_out_c0_exe3;

    -- out_c1_exe1(GPOUT,30)
    out_c1_exe1 <= conv_B0_branch_out_c1_exe1;

    -- out_c1_exe2(GPOUT,31)
    out_c1_exe2 <= conv_B0_branch_out_c1_exe2;

    -- out_cmp42(GPOUT,32)
    out_cmp42 <= conv_B0_branch_out_cmp42;

    -- out_global_id_0(GPOUT,33)
    out_global_id_0 <= conv_B0_branch_out_global_id_0;

    -- out_global_id_1(GPOUT,34)
    out_global_id_1 <= conv_B0_branch_out_global_id_1;

    -- out_local_id_0(GPOUT,35)
    out_local_id_0 <= conv_B0_branch_out_local_id_0;

    -- out_local_id_1(GPOUT,36)
    out_local_id_1 <= conv_B0_branch_out_local_id_1;

    -- out_mul(GPOUT,37)
    out_mul <= conv_B0_branch_out_mul;

    -- out_mul38(GPOUT,38)
    out_mul38 <= conv_B0_branch_out_mul38;

    -- out_stall_out_0(GPOUT,39)
    out_stall_out_0 <= conv_B0_merge_out_stall_out_0;

    -- out_valid_out_0(GPOUT,40)
    out_valid_out_0 <= conv_B0_branch_out_valid_out_0;

END normal;
