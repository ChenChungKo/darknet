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

-- VHDL created from bb_conv_B2
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

entity bb_conv_B2 is
    port (
        in_acl_hw_wg_id17_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe32_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe111710_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_global_id_011_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_113_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv7_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv7_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv7_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv7_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_acl_hw_wg_id17 : out std_logic_vector(31 downto 0);  -- ufix32
        out_lsu_unnamed_conv7_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv7_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv7_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv7_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_B2;

architecture normal of bb_conv_B2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv_B2_stall_region is
        port (
            in_acl_hw_wg_id17 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe32 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe111710 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_global_id_011 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_113 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id17 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv7_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_B2_branch is
        port (
            in_acl_hw_wg_id17 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id17 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_B2_merge is
        port (
            in_acl_hw_wg_id17_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe32_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe111710_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_global_id_011_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_id_113_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id17 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe32 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe111710 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_global_id_011 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_global_id_113 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv_B2_stall_region_out_acl_hw_wg_id17 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B2_stall_region_out_lsu_unnamed_conv7_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_stall_region_out_unnamed_conv7_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv_B2_stall_region_out_unnamed_conv7_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv_B2_stall_region_out_unnamed_conv7_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_B2_stall_region_out_unnamed_conv7_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_stall_region_out_unnamed_conv7_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_stall_region_out_unnamed_conv7_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_B2_stall_region_out_unnamed_conv7_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_B2_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B2_branch_out_acl_hw_wg_id17 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B2_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B2_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B2_merge_out_acl_hw_wg_id17 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B2_merge_out_c0_exe32 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B2_merge_out_c1_exe111710 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B2_merge_out_global_id_011 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B2_merge_out_global_id_113 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_B2_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B2_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv_B2_merge(BLACKBOX,4)
    theconv_B2_merge : conv_B2_merge
    PORT MAP (
        in_acl_hw_wg_id17_0 => in_acl_hw_wg_id17_0,
        in_c0_exe32_0 => in_c0_exe32_0,
        in_c1_exe111710_0 => in_c1_exe111710_0,
        in_global_id_011_0 => in_global_id_011_0,
        in_global_id_113_0 => in_global_id_113_0,
        in_stall_in => bb_conv_B2_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_acl_hw_wg_id17 => conv_B2_merge_out_acl_hw_wg_id17,
        out_c0_exe32 => conv_B2_merge_out_c0_exe32,
        out_c1_exe111710 => conv_B2_merge_out_c1_exe111710,
        out_global_id_011 => conv_B2_merge_out_global_id_011,
        out_global_id_113 => conv_B2_merge_out_global_id_113,
        out_stall_out_0 => conv_B2_merge_out_stall_out_0,
        out_valid_out => conv_B2_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_B2_stall_region(BLACKBOX,2)
    thebb_conv_B2_stall_region : bb_conv_B2_stall_region
    PORT MAP (
        in_acl_hw_wg_id17 => conv_B2_merge_out_acl_hw_wg_id17,
        in_c0_exe32 => conv_B2_merge_out_c0_exe32,
        in_c1_exe111710 => conv_B2_merge_out_c1_exe111710,
        in_flush => in_flush,
        in_global_id_011 => conv_B2_merge_out_global_id_011,
        in_global_id_113 => conv_B2_merge_out_global_id_113,
        in_global_size_0 => in_global_size_0,
        in_out_data => in_out_data,
        in_stall_in => conv_B2_branch_out_stall_out,
        in_unnamed_conv7_avm_readdata => in_unnamed_conv7_avm_readdata,
        in_unnamed_conv7_avm_readdatavalid => in_unnamed_conv7_avm_readdatavalid,
        in_unnamed_conv7_avm_waitrequest => in_unnamed_conv7_avm_waitrequest,
        in_unnamed_conv7_avm_writeack => in_unnamed_conv7_avm_writeack,
        in_valid_in => conv_B2_merge_out_valid_out,
        out_acl_hw_wg_id17 => bb_conv_B2_stall_region_out_acl_hw_wg_id17,
        out_lsu_unnamed_conv7_o_active => bb_conv_B2_stall_region_out_lsu_unnamed_conv7_o_active,
        out_stall_out => bb_conv_B2_stall_region_out_stall_out,
        out_unnamed_conv7_avm_address => bb_conv_B2_stall_region_out_unnamed_conv7_avm_address,
        out_unnamed_conv7_avm_burstcount => bb_conv_B2_stall_region_out_unnamed_conv7_avm_burstcount,
        out_unnamed_conv7_avm_byteenable => bb_conv_B2_stall_region_out_unnamed_conv7_avm_byteenable,
        out_unnamed_conv7_avm_enable => bb_conv_B2_stall_region_out_unnamed_conv7_avm_enable,
        out_unnamed_conv7_avm_read => bb_conv_B2_stall_region_out_unnamed_conv7_avm_read,
        out_unnamed_conv7_avm_write => bb_conv_B2_stall_region_out_unnamed_conv7_avm_write,
        out_unnamed_conv7_avm_writedata => bb_conv_B2_stall_region_out_unnamed_conv7_avm_writedata,
        out_valid_out => bb_conv_B2_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv_B2_branch(BLACKBOX,3)
    theconv_B2_branch : conv_B2_branch
    PORT MAP (
        in_acl_hw_wg_id17 => bb_conv_B2_stall_region_out_acl_hw_wg_id17,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_conv_B2_stall_region_out_valid_out,
        out_acl_hw_wg_id17 => conv_B2_branch_out_acl_hw_wg_id17,
        out_stall_out => conv_B2_branch_out_stall_out,
        out_valid_out_0 => conv_B2_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_acl_hw_wg_id17(GPOUT,19)
    out_acl_hw_wg_id17 <= conv_B2_branch_out_acl_hw_wg_id17;

    -- out_lsu_unnamed_conv7_o_active(GPOUT,20)
    out_lsu_unnamed_conv7_o_active <= bb_conv_B2_stall_region_out_lsu_unnamed_conv7_o_active;

    -- out_stall_out_0(GPOUT,21)
    out_stall_out_0 <= conv_B2_merge_out_stall_out_0;

    -- out_unnamed_conv7_avm_address(GPOUT,22)
    out_unnamed_conv7_avm_address <= bb_conv_B2_stall_region_out_unnamed_conv7_avm_address;

    -- out_unnamed_conv7_avm_burstcount(GPOUT,23)
    out_unnamed_conv7_avm_burstcount <= bb_conv_B2_stall_region_out_unnamed_conv7_avm_burstcount;

    -- out_unnamed_conv7_avm_byteenable(GPOUT,24)
    out_unnamed_conv7_avm_byteenable <= bb_conv_B2_stall_region_out_unnamed_conv7_avm_byteenable;

    -- out_unnamed_conv7_avm_enable(GPOUT,25)
    out_unnamed_conv7_avm_enable <= bb_conv_B2_stall_region_out_unnamed_conv7_avm_enable;

    -- out_unnamed_conv7_avm_read(GPOUT,26)
    out_unnamed_conv7_avm_read <= bb_conv_B2_stall_region_out_unnamed_conv7_avm_read;

    -- out_unnamed_conv7_avm_write(GPOUT,27)
    out_unnamed_conv7_avm_write <= bb_conv_B2_stall_region_out_unnamed_conv7_avm_write;

    -- out_unnamed_conv7_avm_writedata(GPOUT,28)
    out_unnamed_conv7_avm_writedata <= bb_conv_B2_stall_region_out_unnamed_conv7_avm_writedata;

    -- out_valid_out_0(GPOUT,29)
    out_valid_out_0 <= conv_B2_branch_out_valid_out_0;

END normal;
