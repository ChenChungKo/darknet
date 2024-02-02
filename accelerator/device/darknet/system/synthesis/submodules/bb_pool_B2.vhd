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

-- VHDL created from bb_pool_B2
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

entity bb_pool_B2 is
    port (
        in_c0_exe11330_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe11330_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe11_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe11_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe25_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe25_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe37_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe37_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe410_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe410_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe115_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe115_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe11931_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe11931_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe118_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe118_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe12532_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe12532_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp619_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_cmp619_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_col_1728_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_col_1728_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_25_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_25_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_in_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_kernel_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_out_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_0926_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_0926_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp_223_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_223_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_34_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_34_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_unnamed_pool3_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_pool3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool3_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe11 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe11330 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe25 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe37 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe410 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe115 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe11931 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe141 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe118 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe12532 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp619 : out std_logic_vector(0 downto 0);  -- ufix1
        out_col_1728 : out std_logic_vector(31 downto 0);  -- ufix32
        out_inc : out std_logic_vector(31 downto 0);  -- ufix32
        out_row_0926 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_223 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_unnamed_pool1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_pool3_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_pool3_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_pool3_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_pool_B2;

architecture normal of bb_pool_B2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_pool_B2_stall_region is
        port (
            in_c0_exe11 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe11330 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe25 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe37 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe410 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe115 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe11931 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe118 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe12532 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp619 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_1728 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_25 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_kernel_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_0926 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_223 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_34 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_pool3_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_pool3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool3_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe11330 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe25 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe37 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe410 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe115 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe11931 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe141 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe118 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe12532 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp619 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_1728 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_inc : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_row_0926 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_223 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_unnamed_pool1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B2_branch is
        port (
            in_c0_exe11 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe11330 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe25 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe37 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe410 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe115 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe11931 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe141 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe118 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe12532 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp619 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_1728 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_inc : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_0926 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_223 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_pool1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe11330 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe25 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe37 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe410 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe115 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe11931 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe141 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe118 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe12532 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp619 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_1728 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_inc : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_row_0926 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_223 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_unnamed_pool1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B2_merge is
        port (
            in_c0_exe11330_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe11330_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe11_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe11_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe25_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe25_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe37_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe37_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe410_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe410_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe115_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe115_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe11931_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe11931_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe118_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe118_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe12532_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe12532_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp619_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_cmp619_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_1728_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_col_1728_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_25_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_25_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_0926_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_0926_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_223_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_223_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_34_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_34_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe11330 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe25 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe37 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe410 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe115 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe11931 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe118 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe12532 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp619 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_1728 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_i_25 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_row_0926 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_223 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_tmp_34 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_pool_B2_stall_region_out_c0_exe11 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_c0_exe11330 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_c0_exe25 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_stall_region_out_c0_exe37 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_stall_region_out_c0_exe410 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_stall_region_out_c1_exe115 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_c1_exe11931 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_c1_exe141 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_c2_exe118 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_c2_exe12532 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_cmp619 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_stall_region_out_col_1728 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_inc : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_row_0926 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_stall_region_out_tmp_223 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_unnamed_pool1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_stall_region_out_unnamed_pool2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_stall_region_out_unnamed_pool3_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_pool_B2_stall_region_out_unnamed_pool3_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_pool_B2_stall_region_out_unnamed_pool3_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B2_stall_region_out_unnamed_pool3_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_stall_region_out_unnamed_pool3_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_stall_region_out_unnamed_pool3_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B2_stall_region_out_unnamed_pool3_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_pool_B2_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_branch_out_c0_exe11 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_c0_exe11330 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_c0_exe25 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_branch_out_c0_exe37 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_branch_out_c0_exe410 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_branch_out_c1_exe115 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_c1_exe11931 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_c1_exe141 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_c2_exe118 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_c2_exe12532 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_cmp619 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_branch_out_col_1728 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_inc : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_row_0926 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_branch_out_tmp_223 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_branch_out_unnamed_pool1 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_out_c0_exe11 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_c0_exe11330 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_c0_exe25 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_out_c0_exe37 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_out_c0_exe410 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_out_c1_exe115 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_c1_exe11931 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_c2_exe118 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_c2_exe12532 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_cmp619 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_out_col_1728 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_i_25 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_row_0926 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_out_tmp_223 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_tmp_34 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- pool_B2_merge(BLACKBOX,76)
    thepool_B2_merge : pool_B2_merge
    PORT MAP (
        in_c0_exe11330_0 => in_c0_exe11330_0,
        in_c0_exe11330_1 => in_c0_exe11330_1,
        in_c0_exe11_0 => in_c0_exe11_0,
        in_c0_exe11_1 => in_c0_exe11_1,
        in_c0_exe25_0 => in_c0_exe25_0,
        in_c0_exe25_1 => in_c0_exe25_1,
        in_c0_exe37_0 => in_c0_exe37_0,
        in_c0_exe37_1 => in_c0_exe37_1,
        in_c0_exe410_0 => in_c0_exe410_0,
        in_c0_exe410_1 => in_c0_exe410_1,
        in_c1_exe115_0 => in_c1_exe115_0,
        in_c1_exe115_1 => in_c1_exe115_1,
        in_c1_exe11931_0 => in_c1_exe11931_0,
        in_c1_exe11931_1 => in_c1_exe11931_1,
        in_c2_exe118_0 => in_c2_exe118_0,
        in_c2_exe118_1 => in_c2_exe118_1,
        in_c2_exe12532_0 => in_c2_exe12532_0,
        in_c2_exe12532_1 => in_c2_exe12532_1,
        in_cmp619_0 => in_cmp619_0,
        in_cmp619_1 => in_cmp619_1,
        in_col_1728_0 => in_col_1728_0,
        in_col_1728_1 => in_col_1728_1,
        in_i_25_0 => in_i_25_0,
        in_i_25_1 => in_i_25_1,
        in_row_0926_0 => in_row_0926_0,
        in_row_0926_1 => in_row_0926_1,
        in_stall_in => bb_pool_B2_stall_region_out_stall_out,
        in_tmp_223_0 => in_tmp_223_0,
        in_tmp_223_1 => in_tmp_223_1,
        in_tmp_34_0 => in_tmp_34_0,
        in_tmp_34_1 => in_tmp_34_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_c0_exe11 => pool_B2_merge_out_c0_exe11,
        out_c0_exe11330 => pool_B2_merge_out_c0_exe11330,
        out_c0_exe25 => pool_B2_merge_out_c0_exe25,
        out_c0_exe37 => pool_B2_merge_out_c0_exe37,
        out_c0_exe410 => pool_B2_merge_out_c0_exe410,
        out_c1_exe115 => pool_B2_merge_out_c1_exe115,
        out_c1_exe11931 => pool_B2_merge_out_c1_exe11931,
        out_c2_exe118 => pool_B2_merge_out_c2_exe118,
        out_c2_exe12532 => pool_B2_merge_out_c2_exe12532,
        out_cmp619 => pool_B2_merge_out_cmp619,
        out_col_1728 => pool_B2_merge_out_col_1728,
        out_i_25 => pool_B2_merge_out_i_25,
        out_row_0926 => pool_B2_merge_out_row_0926,
        out_stall_out_0 => pool_B2_merge_out_stall_out_0,
        out_stall_out_1 => pool_B2_merge_out_stall_out_1,
        out_tmp_223 => pool_B2_merge_out_tmp_223,
        out_tmp_34 => pool_B2_merge_out_tmp_34,
        out_valid_out => pool_B2_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B2_stall_region(BLACKBOX,2)
    thebb_pool_B2_stall_region : bb_pool_B2_stall_region
    PORT MAP (
        in_c0_exe11 => pool_B2_merge_out_c0_exe11,
        in_c0_exe11330 => pool_B2_merge_out_c0_exe11330,
        in_c0_exe25 => pool_B2_merge_out_c0_exe25,
        in_c0_exe37 => pool_B2_merge_out_c0_exe37,
        in_c0_exe410 => pool_B2_merge_out_c0_exe410,
        in_c1_exe115 => pool_B2_merge_out_c1_exe115,
        in_c1_exe11931 => pool_B2_merge_out_c1_exe11931,
        in_c2_exe118 => pool_B2_merge_out_c2_exe118,
        in_c2_exe12532 => pool_B2_merge_out_c2_exe12532,
        in_cmp619 => pool_B2_merge_out_cmp619,
        in_col_1728 => pool_B2_merge_out_col_1728,
        in_flush => in_flush,
        in_i_25 => pool_B2_merge_out_i_25,
        in_in_data => in_in_data,
        in_in_size => in_in_size,
        in_kernel_size => in_kernel_size,
        in_out_size => in_out_size,
        in_row_0926 => pool_B2_merge_out_row_0926,
        in_stall_in => pool_B2_branch_out_stall_out,
        in_tmp_223 => pool_B2_merge_out_tmp_223,
        in_tmp_34 => pool_B2_merge_out_tmp_34,
        in_unnamed_pool3_avm_readdata => in_unnamed_pool3_avm_readdata,
        in_unnamed_pool3_avm_readdatavalid => in_unnamed_pool3_avm_readdatavalid,
        in_unnamed_pool3_avm_waitrequest => in_unnamed_pool3_avm_waitrequest,
        in_unnamed_pool3_avm_writeack => in_unnamed_pool3_avm_writeack,
        in_valid_in => pool_B2_merge_out_valid_out,
        out_c0_exe11 => bb_pool_B2_stall_region_out_c0_exe11,
        out_c0_exe11330 => bb_pool_B2_stall_region_out_c0_exe11330,
        out_c0_exe25 => bb_pool_B2_stall_region_out_c0_exe25,
        out_c0_exe37 => bb_pool_B2_stall_region_out_c0_exe37,
        out_c0_exe410 => bb_pool_B2_stall_region_out_c0_exe410,
        out_c1_exe115 => bb_pool_B2_stall_region_out_c1_exe115,
        out_c1_exe11931 => bb_pool_B2_stall_region_out_c1_exe11931,
        out_c1_exe141 => bb_pool_B2_stall_region_out_c1_exe141,
        out_c2_exe118 => bb_pool_B2_stall_region_out_c2_exe118,
        out_c2_exe12532 => bb_pool_B2_stall_region_out_c2_exe12532,
        out_cmp619 => bb_pool_B2_stall_region_out_cmp619,
        out_col_1728 => bb_pool_B2_stall_region_out_col_1728,
        out_inc => bb_pool_B2_stall_region_out_inc,
        out_row_0926 => bb_pool_B2_stall_region_out_row_0926,
        out_stall_out => bb_pool_B2_stall_region_out_stall_out,
        out_tmp_223 => bb_pool_B2_stall_region_out_tmp_223,
        out_unnamed_pool1 => bb_pool_B2_stall_region_out_unnamed_pool1,
        out_unnamed_pool2 => bb_pool_B2_stall_region_out_unnamed_pool2,
        out_unnamed_pool3_avm_address => bb_pool_B2_stall_region_out_unnamed_pool3_avm_address,
        out_unnamed_pool3_avm_burstcount => bb_pool_B2_stall_region_out_unnamed_pool3_avm_burstcount,
        out_unnamed_pool3_avm_byteenable => bb_pool_B2_stall_region_out_unnamed_pool3_avm_byteenable,
        out_unnamed_pool3_avm_enable => bb_pool_B2_stall_region_out_unnamed_pool3_avm_enable,
        out_unnamed_pool3_avm_read => bb_pool_B2_stall_region_out_unnamed_pool3_avm_read,
        out_unnamed_pool3_avm_write => bb_pool_B2_stall_region_out_unnamed_pool3_avm_write,
        out_unnamed_pool3_avm_writedata => bb_pool_B2_stall_region_out_unnamed_pool3_avm_writedata,
        out_valid_out => bb_pool_B2_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- pool_B2_branch(BLACKBOX,75)
    thepool_B2_branch : pool_B2_branch
    PORT MAP (
        in_c0_exe11 => bb_pool_B2_stall_region_out_c0_exe11,
        in_c0_exe11330 => bb_pool_B2_stall_region_out_c0_exe11330,
        in_c0_exe25 => bb_pool_B2_stall_region_out_c0_exe25,
        in_c0_exe37 => bb_pool_B2_stall_region_out_c0_exe37,
        in_c0_exe410 => bb_pool_B2_stall_region_out_c0_exe410,
        in_c1_exe115 => bb_pool_B2_stall_region_out_c1_exe115,
        in_c1_exe11931 => bb_pool_B2_stall_region_out_c1_exe11931,
        in_c1_exe141 => bb_pool_B2_stall_region_out_c1_exe141,
        in_c2_exe118 => bb_pool_B2_stall_region_out_c2_exe118,
        in_c2_exe12532 => bb_pool_B2_stall_region_out_c2_exe12532,
        in_cmp619 => bb_pool_B2_stall_region_out_cmp619,
        in_col_1728 => bb_pool_B2_stall_region_out_col_1728,
        in_inc => bb_pool_B2_stall_region_out_inc,
        in_row_0926 => bb_pool_B2_stall_region_out_row_0926,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_tmp_223 => bb_pool_B2_stall_region_out_tmp_223,
        in_unnamed_pool1 => bb_pool_B2_stall_region_out_unnamed_pool1,
        in_unnamed_pool2 => bb_pool_B2_stall_region_out_unnamed_pool2,
        in_valid_in => bb_pool_B2_stall_region_out_valid_out,
        out_c0_exe11 => pool_B2_branch_out_c0_exe11,
        out_c0_exe11330 => pool_B2_branch_out_c0_exe11330,
        out_c0_exe25 => pool_B2_branch_out_c0_exe25,
        out_c0_exe37 => pool_B2_branch_out_c0_exe37,
        out_c0_exe410 => pool_B2_branch_out_c0_exe410,
        out_c1_exe115 => pool_B2_branch_out_c1_exe115,
        out_c1_exe11931 => pool_B2_branch_out_c1_exe11931,
        out_c1_exe141 => pool_B2_branch_out_c1_exe141,
        out_c2_exe118 => pool_B2_branch_out_c2_exe118,
        out_c2_exe12532 => pool_B2_branch_out_c2_exe12532,
        out_cmp619 => pool_B2_branch_out_cmp619,
        out_col_1728 => pool_B2_branch_out_col_1728,
        out_inc => pool_B2_branch_out_inc,
        out_row_0926 => pool_B2_branch_out_row_0926,
        out_stall_out => pool_B2_branch_out_stall_out,
        out_tmp_223 => pool_B2_branch_out_tmp_223,
        out_unnamed_pool1 => pool_B2_branch_out_unnamed_pool1,
        out_valid_out_0 => pool_B2_branch_out_valid_out_0,
        out_valid_out_1 => pool_B2_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe11(GPOUT,48)
    out_c0_exe11 <= pool_B2_branch_out_c0_exe11;

    -- out_c0_exe11330(GPOUT,49)
    out_c0_exe11330 <= pool_B2_branch_out_c0_exe11330;

    -- out_c0_exe25(GPOUT,50)
    out_c0_exe25 <= pool_B2_branch_out_c0_exe25;

    -- out_c0_exe37(GPOUT,51)
    out_c0_exe37 <= pool_B2_branch_out_c0_exe37;

    -- out_c0_exe410(GPOUT,52)
    out_c0_exe410 <= pool_B2_branch_out_c0_exe410;

    -- out_c1_exe115(GPOUT,53)
    out_c1_exe115 <= pool_B2_branch_out_c1_exe115;

    -- out_c1_exe11931(GPOUT,54)
    out_c1_exe11931 <= pool_B2_branch_out_c1_exe11931;

    -- out_c1_exe141(GPOUT,55)
    out_c1_exe141 <= pool_B2_branch_out_c1_exe141;

    -- out_c2_exe118(GPOUT,56)
    out_c2_exe118 <= pool_B2_branch_out_c2_exe118;

    -- out_c2_exe12532(GPOUT,57)
    out_c2_exe12532 <= pool_B2_branch_out_c2_exe12532;

    -- out_cmp619(GPOUT,58)
    out_cmp619 <= pool_B2_branch_out_cmp619;

    -- out_col_1728(GPOUT,59)
    out_col_1728 <= pool_B2_branch_out_col_1728;

    -- out_inc(GPOUT,60)
    out_inc <= pool_B2_branch_out_inc;

    -- out_row_0926(GPOUT,61)
    out_row_0926 <= pool_B2_branch_out_row_0926;

    -- out_stall_out_0(GPOUT,62)
    out_stall_out_0 <= pool_B2_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,63)
    out_stall_out_1 <= pool_B2_merge_out_stall_out_1;

    -- out_tmp_223(GPOUT,64)
    out_tmp_223 <= pool_B2_branch_out_tmp_223;

    -- out_unnamed_pool1(GPOUT,65)
    out_unnamed_pool1 <= pool_B2_branch_out_unnamed_pool1;

    -- out_unnamed_pool3_avm_address(GPOUT,66)
    out_unnamed_pool3_avm_address <= bb_pool_B2_stall_region_out_unnamed_pool3_avm_address;

    -- out_unnamed_pool3_avm_burstcount(GPOUT,67)
    out_unnamed_pool3_avm_burstcount <= bb_pool_B2_stall_region_out_unnamed_pool3_avm_burstcount;

    -- out_unnamed_pool3_avm_byteenable(GPOUT,68)
    out_unnamed_pool3_avm_byteenable <= bb_pool_B2_stall_region_out_unnamed_pool3_avm_byteenable;

    -- out_unnamed_pool3_avm_enable(GPOUT,69)
    out_unnamed_pool3_avm_enable <= bb_pool_B2_stall_region_out_unnamed_pool3_avm_enable;

    -- out_unnamed_pool3_avm_read(GPOUT,70)
    out_unnamed_pool3_avm_read <= bb_pool_B2_stall_region_out_unnamed_pool3_avm_read;

    -- out_unnamed_pool3_avm_write(GPOUT,71)
    out_unnamed_pool3_avm_write <= bb_pool_B2_stall_region_out_unnamed_pool3_avm_write;

    -- out_unnamed_pool3_avm_writedata(GPOUT,72)
    out_unnamed_pool3_avm_writedata <= bb_pool_B2_stall_region_out_unnamed_pool3_avm_writedata;

    -- out_valid_out_0(GPOUT,73)
    out_valid_out_0 <= pool_B2_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,74)
    out_valid_out_1 <= pool_B2_branch_out_valid_out_1;

END normal;
