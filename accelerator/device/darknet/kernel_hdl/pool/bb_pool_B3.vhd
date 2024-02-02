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

-- VHDL created from bb_pool_B3
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

entity bb_pool_B3 is
    port (
        in_c0_exe11329_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe13_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe24_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe39_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe412_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe114_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe14133_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe117_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp621_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_col_1727_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_in_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_kernel_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_out_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_0925_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp_222_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_unnamed_pool4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool5_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_pool5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool5_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe13 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe24 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe39 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe412 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe114 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe117 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp621 : out std_logic_vector(0 downto 0);  -- ufix1
        out_col_17_LC_InnerPHI : out std_logic_vector(31 downto 0);  -- ufix32
        out_lsu_unnamed_pool5_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_row_09_LC_OuterPHI : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_222 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_unnamed_pool5_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_pool5_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_pool5_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_pool5_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool5_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool5_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool5_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_pool_B3;

architecture normal of bb_pool_B3 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_pool_B3_stall_region is
        port (
            in_c0_exe11329 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe39 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe412 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe14133 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe117 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp621 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_1727 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_0925 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_222 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_pool4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe412 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe114 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe117 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp621 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_17_LC_InnerPHI : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_for_end47_loopexit_loopexit_LC_COND : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_pool5_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_row_09_LC_OuterPHI : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_222 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_unnamed_pool5_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B3_branch is
        port (
            in_c0_exe13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe39 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe412 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe117 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp621 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_17_LC_InnerPHI : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_for_end47_loopexit_loopexit_LC_COND : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_row_09_LC_OuterPHI : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_222 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe412 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe114 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exe117 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp621 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_17_LC_InnerPHI : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_row_09_LC_OuterPHI : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_222 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B3_merge is
        port (
            in_c0_exe11329_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe13_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe24_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe39_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe412_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe14133_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe117_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp621_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_col_1727_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_row_0925_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_222_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_pool4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe11329 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe412 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe114 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exe14133 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe117 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_cmp621 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_col_1727 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_row_0925 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_222 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_unnamed_pool4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_pool_B3_stall_region_out_c0_exe13 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_stall_region_out_c0_exe24 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_stall_region_out_c0_exe39 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_stall_region_out_c0_exe412 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_stall_region_out_c1_exe114 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_stall_region_out_c2_exe117 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_stall_region_out_cmp621 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_stall_region_out_col_17_LC_InnerPHI : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_stall_region_out_for_end47_loopexit_loopexit_LC_COND : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_stall_region_out_lsu_unnamed_pool5_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_stall_region_out_row_09_LC_OuterPHI : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_stall_region_out_tmp_222 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_stall_region_out_unnamed_pool5_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_pool_B3_stall_region_out_unnamed_pool5_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_pool_B3_stall_region_out_unnamed_pool5_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_pool_B3_stall_region_out_unnamed_pool5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_stall_region_out_unnamed_pool5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_stall_region_out_unnamed_pool5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_pool_B3_stall_region_out_unnamed_pool5_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_pool_B3_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_branch_out_c0_exe13 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_branch_out_c0_exe24 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_branch_out_c0_exe39 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_branch_out_c0_exe412 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_branch_out_c1_exe114 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_branch_out_c2_exe117 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_branch_out_cmp621 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_branch_out_col_17_LC_InnerPHI : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_branch_out_row_09_LC_OuterPHI : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_branch_out_tmp_222 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_merge_out_c0_exe11329 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_merge_out_c0_exe13 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_merge_out_c0_exe24 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_merge_out_c0_exe39 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_merge_out_c0_exe412 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_merge_out_c1_exe114 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_merge_out_c1_exe14133 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_merge_out_c2_exe117 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_merge_out_cmp621 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_merge_out_col_1727 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_merge_out_row_0925 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_merge_out_tmp_222 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B3_merge_out_unnamed_pool4 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B3_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- pool_B3_merge(BLACKBOX,52)
    thepool_B3_merge : pool_B3_merge
    PORT MAP (
        in_c0_exe11329_0 => in_c0_exe11329_0,
        in_c0_exe13_0 => in_c0_exe13_0,
        in_c0_exe24_0 => in_c0_exe24_0,
        in_c0_exe39_0 => in_c0_exe39_0,
        in_c0_exe412_0 => in_c0_exe412_0,
        in_c1_exe114_0 => in_c1_exe114_0,
        in_c1_exe14133_0 => in_c1_exe14133_0,
        in_c2_exe117_0 => in_c2_exe117_0,
        in_cmp621_0 => in_cmp621_0,
        in_col_1727_0 => in_col_1727_0,
        in_row_0925_0 => in_row_0925_0,
        in_stall_in => bb_pool_B3_stall_region_out_stall_out,
        in_tmp_222_0 => in_tmp_222_0,
        in_unnamed_pool4_0 => in_unnamed_pool4_0,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exe11329 => pool_B3_merge_out_c0_exe11329,
        out_c0_exe13 => pool_B3_merge_out_c0_exe13,
        out_c0_exe24 => pool_B3_merge_out_c0_exe24,
        out_c0_exe39 => pool_B3_merge_out_c0_exe39,
        out_c0_exe412 => pool_B3_merge_out_c0_exe412,
        out_c1_exe114 => pool_B3_merge_out_c1_exe114,
        out_c1_exe14133 => pool_B3_merge_out_c1_exe14133,
        out_c2_exe117 => pool_B3_merge_out_c2_exe117,
        out_cmp621 => pool_B3_merge_out_cmp621,
        out_col_1727 => pool_B3_merge_out_col_1727,
        out_row_0925 => pool_B3_merge_out_row_0925,
        out_stall_out_0 => pool_B3_merge_out_stall_out_0,
        out_tmp_222 => pool_B3_merge_out_tmp_222,
        out_unnamed_pool4 => pool_B3_merge_out_unnamed_pool4,
        out_valid_out => pool_B3_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_pool_B3_stall_region(BLACKBOX,2)
    thebb_pool_B3_stall_region : bb_pool_B3_stall_region
    PORT MAP (
        in_c0_exe11329 => pool_B3_merge_out_c0_exe11329,
        in_c0_exe13 => pool_B3_merge_out_c0_exe13,
        in_c0_exe24 => pool_B3_merge_out_c0_exe24,
        in_c0_exe39 => pool_B3_merge_out_c0_exe39,
        in_c0_exe412 => pool_B3_merge_out_c0_exe412,
        in_c1_exe114 => pool_B3_merge_out_c1_exe114,
        in_c1_exe14133 => pool_B3_merge_out_c1_exe14133,
        in_c2_exe117 => pool_B3_merge_out_c2_exe117,
        in_cmp621 => pool_B3_merge_out_cmp621,
        in_col_1727 => pool_B3_merge_out_col_1727,
        in_flush => in_flush,
        in_out_data => in_out_data,
        in_out_size => in_out_size,
        in_row_0925 => pool_B3_merge_out_row_0925,
        in_stall_in => pool_B3_branch_out_stall_out,
        in_tmp_222 => pool_B3_merge_out_tmp_222,
        in_unnamed_pool4 => pool_B3_merge_out_unnamed_pool4,
        in_unnamed_pool5_avm_readdata => in_unnamed_pool5_avm_readdata,
        in_unnamed_pool5_avm_readdatavalid => in_unnamed_pool5_avm_readdatavalid,
        in_unnamed_pool5_avm_waitrequest => in_unnamed_pool5_avm_waitrequest,
        in_unnamed_pool5_avm_writeack => in_unnamed_pool5_avm_writeack,
        in_valid_in => pool_B3_merge_out_valid_out,
        out_c0_exe13 => bb_pool_B3_stall_region_out_c0_exe13,
        out_c0_exe24 => bb_pool_B3_stall_region_out_c0_exe24,
        out_c0_exe39 => bb_pool_B3_stall_region_out_c0_exe39,
        out_c0_exe412 => bb_pool_B3_stall_region_out_c0_exe412,
        out_c1_exe114 => bb_pool_B3_stall_region_out_c1_exe114,
        out_c2_exe117 => bb_pool_B3_stall_region_out_c2_exe117,
        out_cmp621 => bb_pool_B3_stall_region_out_cmp621,
        out_col_17_LC_InnerPHI => bb_pool_B3_stall_region_out_col_17_LC_InnerPHI,
        out_for_end47_loopexit_loopexit_LC_COND => bb_pool_B3_stall_region_out_for_end47_loopexit_loopexit_LC_COND,
        out_lsu_unnamed_pool5_o_active => bb_pool_B3_stall_region_out_lsu_unnamed_pool5_o_active,
        out_row_09_LC_OuterPHI => bb_pool_B3_stall_region_out_row_09_LC_OuterPHI,
        out_stall_out => bb_pool_B3_stall_region_out_stall_out,
        out_tmp_222 => bb_pool_B3_stall_region_out_tmp_222,
        out_unnamed_pool5_avm_address => bb_pool_B3_stall_region_out_unnamed_pool5_avm_address,
        out_unnamed_pool5_avm_burstcount => bb_pool_B3_stall_region_out_unnamed_pool5_avm_burstcount,
        out_unnamed_pool5_avm_byteenable => bb_pool_B3_stall_region_out_unnamed_pool5_avm_byteenable,
        out_unnamed_pool5_avm_enable => bb_pool_B3_stall_region_out_unnamed_pool5_avm_enable,
        out_unnamed_pool5_avm_read => bb_pool_B3_stall_region_out_unnamed_pool5_avm_read,
        out_unnamed_pool5_avm_write => bb_pool_B3_stall_region_out_unnamed_pool5_avm_write,
        out_unnamed_pool5_avm_writedata => bb_pool_B3_stall_region_out_unnamed_pool5_avm_writedata,
        out_valid_out => bb_pool_B3_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- pool_B3_branch(BLACKBOX,51)
    thepool_B3_branch : pool_B3_branch
    PORT MAP (
        in_c0_exe13 => bb_pool_B3_stall_region_out_c0_exe13,
        in_c0_exe24 => bb_pool_B3_stall_region_out_c0_exe24,
        in_c0_exe39 => bb_pool_B3_stall_region_out_c0_exe39,
        in_c0_exe412 => bb_pool_B3_stall_region_out_c0_exe412,
        in_c1_exe114 => bb_pool_B3_stall_region_out_c1_exe114,
        in_c2_exe117 => bb_pool_B3_stall_region_out_c2_exe117,
        in_cmp621 => bb_pool_B3_stall_region_out_cmp621,
        in_col_17_LC_InnerPHI => bb_pool_B3_stall_region_out_col_17_LC_InnerPHI,
        in_for_end47_loopexit_loopexit_LC_COND => bb_pool_B3_stall_region_out_for_end47_loopexit_loopexit_LC_COND,
        in_row_09_LC_OuterPHI => bb_pool_B3_stall_region_out_row_09_LC_OuterPHI,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_tmp_222 => bb_pool_B3_stall_region_out_tmp_222,
        in_valid_in => bb_pool_B3_stall_region_out_valid_out,
        out_c0_exe13 => pool_B3_branch_out_c0_exe13,
        out_c0_exe24 => pool_B3_branch_out_c0_exe24,
        out_c0_exe39 => pool_B3_branch_out_c0_exe39,
        out_c0_exe412 => pool_B3_branch_out_c0_exe412,
        out_c1_exe114 => pool_B3_branch_out_c1_exe114,
        out_c2_exe117 => pool_B3_branch_out_c2_exe117,
        out_cmp621 => pool_B3_branch_out_cmp621,
        out_col_17_LC_InnerPHI => pool_B3_branch_out_col_17_LC_InnerPHI,
        out_row_09_LC_OuterPHI => pool_B3_branch_out_row_09_LC_OuterPHI,
        out_stall_out => pool_B3_branch_out_stall_out,
        out_tmp_222 => pool_B3_branch_out_tmp_222,
        out_valid_out_0 => pool_B3_branch_out_valid_out_0,
        out_valid_out_1 => pool_B3_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe13(GPOUT,30)
    out_c0_exe13 <= pool_B3_branch_out_c0_exe13;

    -- out_c0_exe24(GPOUT,31)
    out_c0_exe24 <= pool_B3_branch_out_c0_exe24;

    -- out_c0_exe39(GPOUT,32)
    out_c0_exe39 <= pool_B3_branch_out_c0_exe39;

    -- out_c0_exe412(GPOUT,33)
    out_c0_exe412 <= pool_B3_branch_out_c0_exe412;

    -- out_c1_exe114(GPOUT,34)
    out_c1_exe114 <= pool_B3_branch_out_c1_exe114;

    -- out_c2_exe117(GPOUT,35)
    out_c2_exe117 <= pool_B3_branch_out_c2_exe117;

    -- out_cmp621(GPOUT,36)
    out_cmp621 <= pool_B3_branch_out_cmp621;

    -- out_col_17_LC_InnerPHI(GPOUT,37)
    out_col_17_LC_InnerPHI <= pool_B3_branch_out_col_17_LC_InnerPHI;

    -- out_lsu_unnamed_pool5_o_active(GPOUT,38)
    out_lsu_unnamed_pool5_o_active <= bb_pool_B3_stall_region_out_lsu_unnamed_pool5_o_active;

    -- out_row_09_LC_OuterPHI(GPOUT,39)
    out_row_09_LC_OuterPHI <= pool_B3_branch_out_row_09_LC_OuterPHI;

    -- out_stall_out_0(GPOUT,40)
    out_stall_out_0 <= pool_B3_merge_out_stall_out_0;

    -- out_tmp_222(GPOUT,41)
    out_tmp_222 <= pool_B3_branch_out_tmp_222;

    -- out_unnamed_pool5_avm_address(GPOUT,42)
    out_unnamed_pool5_avm_address <= bb_pool_B3_stall_region_out_unnamed_pool5_avm_address;

    -- out_unnamed_pool5_avm_burstcount(GPOUT,43)
    out_unnamed_pool5_avm_burstcount <= bb_pool_B3_stall_region_out_unnamed_pool5_avm_burstcount;

    -- out_unnamed_pool5_avm_byteenable(GPOUT,44)
    out_unnamed_pool5_avm_byteenable <= bb_pool_B3_stall_region_out_unnamed_pool5_avm_byteenable;

    -- out_unnamed_pool5_avm_enable(GPOUT,45)
    out_unnamed_pool5_avm_enable <= bb_pool_B3_stall_region_out_unnamed_pool5_avm_enable;

    -- out_unnamed_pool5_avm_read(GPOUT,46)
    out_unnamed_pool5_avm_read <= bb_pool_B3_stall_region_out_unnamed_pool5_avm_read;

    -- out_unnamed_pool5_avm_write(GPOUT,47)
    out_unnamed_pool5_avm_write <= bb_pool_B3_stall_region_out_unnamed_pool5_avm_write;

    -- out_unnamed_pool5_avm_writedata(GPOUT,48)
    out_unnamed_pool5_avm_writedata <= bb_pool_B3_stall_region_out_unnamed_pool5_avm_writedata;

    -- out_valid_out_0(GPOUT,49)
    out_valid_out_0 <= pool_B3_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,50)
    out_valid_out_1 <= pool_B3_branch_out_valid_out_1;

END normal;
