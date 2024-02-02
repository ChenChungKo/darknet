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

-- VHDL created from bb_conv1x1_B2
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

entity bb_conv1x1_B2 is
    port (
        in_c0_exe114054_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe114054_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe17_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe17_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe255_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe255_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe362_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe362_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe464_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe464_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe565_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe565_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe117_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe117_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe126_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe126_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe134_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe134_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe242_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c3_exe242_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01053_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01053_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp_17_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_17_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_unnamed_conv1x11_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x11_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x12_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x12_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x12_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x12_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe114054 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe17 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe255 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe362 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe464 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe565 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe1154 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c1_exe117 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe126 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe134 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe242 : out std_logic_vector(0 downto 0);  -- ufix1
        out_inc : out std_logic_vector(31 downto 0);  -- ufix32
        out_j_01053 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x11_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x11_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x11_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x12_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x12_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x12_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x12_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x12_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x12_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x12_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B2;

architecture normal of bb_conv1x1_B2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv1x1_B2_stall_region is
        port (
            in_c0_exe114054 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe17 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe255 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe362 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe464 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe565 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe117 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe126 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe134 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe242 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01053 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_17 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x11_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe114054 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe17 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe255 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe362 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe464 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe565 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1154 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c1_exe117 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe126 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe134 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe242 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_inc : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_j_01053 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B2_branch is
        port (
            in_c0_exe114054 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe17 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe255 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe362 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe464 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe565 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe1154 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_exe117 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe126 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe134 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe242 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_inc : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01053 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe114054 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe17 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe255 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe362 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe464 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe565 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1154 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c1_exe117 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe126 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe134 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe242 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_inc : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_j_01053 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B2_merge is
        port (
            in_c0_exe114054_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe114054_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe17_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe17_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe255_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe255_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe362_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe362_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe464_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe464_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe565_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe565_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe117_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe117_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe126_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe126_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe134_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe134_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe242_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c3_exe242_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_j_01053_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01053_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_17_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_17_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe114054 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe17 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe255 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe362 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe464 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe565 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe117 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe126 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe134 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe242 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01053 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_k_18 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_17 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv1x1_B2_stall_region_out_c0_exe114054 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_stall_region_out_c0_exe17 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B2_stall_region_out_c0_exe255 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_c0_exe362 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_c0_exe464 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_c0_exe565 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_c1_exe1154 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_stall_region_out_c1_exe117 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B2_stall_region_out_c2_exe126 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_stall_region_out_c3_exe134 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_stall_region_out_c3_exe242 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_inc : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_stall_region_out_j_01053 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B2_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_branch_out_c0_exe114054 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_branch_out_c0_exe17 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B2_branch_out_c0_exe255 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_branch_out_c0_exe362 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_branch_out_c0_exe464 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_branch_out_c0_exe565 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_branch_out_c1_exe1154 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_branch_out_c1_exe117 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B2_branch_out_c2_exe126 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_branch_out_c3_exe134 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_branch_out_c3_exe242 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_branch_out_inc : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_branch_out_j_01053 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_out_c0_exe114054 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_out_c0_exe17 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B2_merge_out_c0_exe255 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_out_c0_exe362 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_out_c0_exe464 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_out_c0_exe565 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_out_c1_exe117 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B2_merge_out_c2_exe126 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_out_c3_exe134 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_out_c3_exe242 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_out_j_01053 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_out_k_18 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_out_tmp_17 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv1x1_B2_merge(BLACKBOX,4)
    theconv1x1_B2_merge : conv1x1_B2_merge
    PORT MAP (
        in_c0_exe114054_0 => in_c0_exe114054_0,
        in_c0_exe114054_1 => in_c0_exe114054_1,
        in_c0_exe17_0 => in_c0_exe17_0,
        in_c0_exe17_1 => in_c0_exe17_1,
        in_c0_exe255_0 => in_c0_exe255_0,
        in_c0_exe255_1 => in_c0_exe255_1,
        in_c0_exe362_0 => in_c0_exe362_0,
        in_c0_exe362_1 => in_c0_exe362_1,
        in_c0_exe464_0 => in_c0_exe464_0,
        in_c0_exe464_1 => in_c0_exe464_1,
        in_c0_exe565_0 => in_c0_exe565_0,
        in_c0_exe565_1 => in_c0_exe565_1,
        in_c1_exe117_0 => in_c1_exe117_0,
        in_c1_exe117_1 => in_c1_exe117_1,
        in_c2_exe126_0 => in_c2_exe126_0,
        in_c2_exe126_1 => in_c2_exe126_1,
        in_c3_exe134_0 => in_c3_exe134_0,
        in_c3_exe134_1 => in_c3_exe134_1,
        in_c3_exe242_0 => in_c3_exe242_0,
        in_c3_exe242_1 => in_c3_exe242_1,
        in_j_01053_0 => in_j_01053_0,
        in_j_01053_1 => in_j_01053_1,
        in_k_18_0 => in_k_18_0,
        in_k_18_1 => in_k_18_1,
        in_stall_in => bb_conv1x1_B2_stall_region_out_stall_out,
        in_tmp_17_0 => in_tmp_17_0,
        in_tmp_17_1 => in_tmp_17_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_c0_exe114054 => conv1x1_B2_merge_out_c0_exe114054,
        out_c0_exe17 => conv1x1_B2_merge_out_c0_exe17,
        out_c0_exe255 => conv1x1_B2_merge_out_c0_exe255,
        out_c0_exe362 => conv1x1_B2_merge_out_c0_exe362,
        out_c0_exe464 => conv1x1_B2_merge_out_c0_exe464,
        out_c0_exe565 => conv1x1_B2_merge_out_c0_exe565,
        out_c1_exe117 => conv1x1_B2_merge_out_c1_exe117,
        out_c2_exe126 => conv1x1_B2_merge_out_c2_exe126,
        out_c3_exe134 => conv1x1_B2_merge_out_c3_exe134,
        out_c3_exe242 => conv1x1_B2_merge_out_c3_exe242,
        out_j_01053 => conv1x1_B2_merge_out_j_01053,
        out_k_18 => conv1x1_B2_merge_out_k_18,
        out_stall_out_0 => conv1x1_B2_merge_out_stall_out_0,
        out_stall_out_1 => conv1x1_B2_merge_out_stall_out_1,
        out_tmp_17 => conv1x1_B2_merge_out_tmp_17,
        out_valid_out => conv1x1_B2_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B2_stall_region(BLACKBOX,2)
    thebb_conv1x1_B2_stall_region : bb_conv1x1_B2_stall_region
    PORT MAP (
        in_c0_exe114054 => conv1x1_B2_merge_out_c0_exe114054,
        in_c0_exe17 => conv1x1_B2_merge_out_c0_exe17,
        in_c0_exe255 => conv1x1_B2_merge_out_c0_exe255,
        in_c0_exe362 => conv1x1_B2_merge_out_c0_exe362,
        in_c0_exe464 => conv1x1_B2_merge_out_c0_exe464,
        in_c0_exe565 => conv1x1_B2_merge_out_c0_exe565,
        in_c1_exe117 => conv1x1_B2_merge_out_c1_exe117,
        in_c2_exe126 => conv1x1_B2_merge_out_c2_exe126,
        in_c3_exe134 => conv1x1_B2_merge_out_c3_exe134,
        in_c3_exe242 => conv1x1_B2_merge_out_c3_exe242,
        in_filter_weight => in_filter_weight,
        in_flush => in_flush,
        in_input_channels => in_input_channels,
        in_input_im => in_input_im,
        in_input_size => in_input_size,
        in_j_01053 => conv1x1_B2_merge_out_j_01053,
        in_k_18 => conv1x1_B2_merge_out_k_18,
        in_stall_in => conv1x1_B2_branch_out_stall_out,
        in_tmp_17 => conv1x1_B2_merge_out_tmp_17,
        in_unnamed_conv1x11_avm_readdata => in_unnamed_conv1x11_avm_readdata,
        in_unnamed_conv1x11_avm_readdatavalid => in_unnamed_conv1x11_avm_readdatavalid,
        in_unnamed_conv1x11_avm_waitrequest => in_unnamed_conv1x11_avm_waitrequest,
        in_unnamed_conv1x11_avm_writeack => in_unnamed_conv1x11_avm_writeack,
        in_unnamed_conv1x12_avm_readdata => in_unnamed_conv1x12_avm_readdata,
        in_unnamed_conv1x12_avm_readdatavalid => in_unnamed_conv1x12_avm_readdatavalid,
        in_unnamed_conv1x12_avm_waitrequest => in_unnamed_conv1x12_avm_waitrequest,
        in_unnamed_conv1x12_avm_writeack => in_unnamed_conv1x12_avm_writeack,
        in_valid_in => conv1x1_B2_merge_out_valid_out,
        out_c0_exe114054 => bb_conv1x1_B2_stall_region_out_c0_exe114054,
        out_c0_exe17 => bb_conv1x1_B2_stall_region_out_c0_exe17,
        out_c0_exe255 => bb_conv1x1_B2_stall_region_out_c0_exe255,
        out_c0_exe362 => bb_conv1x1_B2_stall_region_out_c0_exe362,
        out_c0_exe464 => bb_conv1x1_B2_stall_region_out_c0_exe464,
        out_c0_exe565 => bb_conv1x1_B2_stall_region_out_c0_exe565,
        out_c1_exe1154 => bb_conv1x1_B2_stall_region_out_c1_exe1154,
        out_c1_exe117 => bb_conv1x1_B2_stall_region_out_c1_exe117,
        out_c2_exe126 => bb_conv1x1_B2_stall_region_out_c2_exe126,
        out_c3_exe134 => bb_conv1x1_B2_stall_region_out_c3_exe134,
        out_c3_exe242 => bb_conv1x1_B2_stall_region_out_c3_exe242,
        out_inc => bb_conv1x1_B2_stall_region_out_inc,
        out_j_01053 => bb_conv1x1_B2_stall_region_out_j_01053,
        out_stall_out => bb_conv1x1_B2_stall_region_out_stall_out,
        out_unnamed_conv1x10 => bb_conv1x1_B2_stall_region_out_unnamed_conv1x10,
        out_unnamed_conv1x11_avm_address => bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_address,
        out_unnamed_conv1x11_avm_burstcount => bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_burstcount,
        out_unnamed_conv1x11_avm_byteenable => bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_byteenable,
        out_unnamed_conv1x11_avm_enable => bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_enable,
        out_unnamed_conv1x11_avm_read => bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_read,
        out_unnamed_conv1x11_avm_write => bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_write,
        out_unnamed_conv1x11_avm_writedata => bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_writedata,
        out_unnamed_conv1x12_avm_address => bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_address,
        out_unnamed_conv1x12_avm_burstcount => bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_burstcount,
        out_unnamed_conv1x12_avm_byteenable => bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_byteenable,
        out_unnamed_conv1x12_avm_enable => bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_enable,
        out_unnamed_conv1x12_avm_read => bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_read,
        out_unnamed_conv1x12_avm_write => bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_write,
        out_unnamed_conv1x12_avm_writedata => bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_writedata,
        out_valid_out => bb_conv1x1_B2_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv1x1_B2_branch(BLACKBOX,3)
    theconv1x1_B2_branch : conv1x1_B2_branch
    PORT MAP (
        in_c0_exe114054 => bb_conv1x1_B2_stall_region_out_c0_exe114054,
        in_c0_exe17 => bb_conv1x1_B2_stall_region_out_c0_exe17,
        in_c0_exe255 => bb_conv1x1_B2_stall_region_out_c0_exe255,
        in_c0_exe362 => bb_conv1x1_B2_stall_region_out_c0_exe362,
        in_c0_exe464 => bb_conv1x1_B2_stall_region_out_c0_exe464,
        in_c0_exe565 => bb_conv1x1_B2_stall_region_out_c0_exe565,
        in_c1_exe1154 => bb_conv1x1_B2_stall_region_out_c1_exe1154,
        in_c1_exe117 => bb_conv1x1_B2_stall_region_out_c1_exe117,
        in_c2_exe126 => bb_conv1x1_B2_stall_region_out_c2_exe126,
        in_c3_exe134 => bb_conv1x1_B2_stall_region_out_c3_exe134,
        in_c3_exe242 => bb_conv1x1_B2_stall_region_out_c3_exe242,
        in_inc => bb_conv1x1_B2_stall_region_out_inc,
        in_j_01053 => bb_conv1x1_B2_stall_region_out_j_01053,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_unnamed_conv1x10 => bb_conv1x1_B2_stall_region_out_unnamed_conv1x10,
        in_valid_in => bb_conv1x1_B2_stall_region_out_valid_out,
        out_c0_exe114054 => conv1x1_B2_branch_out_c0_exe114054,
        out_c0_exe17 => conv1x1_B2_branch_out_c0_exe17,
        out_c0_exe255 => conv1x1_B2_branch_out_c0_exe255,
        out_c0_exe362 => conv1x1_B2_branch_out_c0_exe362,
        out_c0_exe464 => conv1x1_B2_branch_out_c0_exe464,
        out_c0_exe565 => conv1x1_B2_branch_out_c0_exe565,
        out_c1_exe1154 => conv1x1_B2_branch_out_c1_exe1154,
        out_c1_exe117 => conv1x1_B2_branch_out_c1_exe117,
        out_c2_exe126 => conv1x1_B2_branch_out_c2_exe126,
        out_c3_exe134 => conv1x1_B2_branch_out_c3_exe134,
        out_c3_exe242 => conv1x1_B2_branch_out_c3_exe242,
        out_inc => conv1x1_B2_branch_out_inc,
        out_j_01053 => conv1x1_B2_branch_out_j_01053,
        out_stall_out => conv1x1_B2_branch_out_stall_out,
        out_valid_out_0 => conv1x1_B2_branch_out_valid_out_0,
        out_valid_out_1 => conv1x1_B2_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe114054(GPOUT,52)
    out_c0_exe114054 <= conv1x1_B2_branch_out_c0_exe114054;

    -- out_c0_exe17(GPOUT,53)
    out_c0_exe17 <= conv1x1_B2_branch_out_c0_exe17;

    -- out_c0_exe255(GPOUT,54)
    out_c0_exe255 <= conv1x1_B2_branch_out_c0_exe255;

    -- out_c0_exe362(GPOUT,55)
    out_c0_exe362 <= conv1x1_B2_branch_out_c0_exe362;

    -- out_c0_exe464(GPOUT,56)
    out_c0_exe464 <= conv1x1_B2_branch_out_c0_exe464;

    -- out_c0_exe565(GPOUT,57)
    out_c0_exe565 <= conv1x1_B2_branch_out_c0_exe565;

    -- out_c1_exe1154(GPOUT,58)
    out_c1_exe1154 <= conv1x1_B2_branch_out_c1_exe1154;

    -- out_c1_exe117(GPOUT,59)
    out_c1_exe117 <= conv1x1_B2_branch_out_c1_exe117;

    -- out_c2_exe126(GPOUT,60)
    out_c2_exe126 <= conv1x1_B2_branch_out_c2_exe126;

    -- out_c3_exe134(GPOUT,61)
    out_c3_exe134 <= conv1x1_B2_branch_out_c3_exe134;

    -- out_c3_exe242(GPOUT,62)
    out_c3_exe242 <= conv1x1_B2_branch_out_c3_exe242;

    -- out_inc(GPOUT,63)
    out_inc <= conv1x1_B2_branch_out_inc;

    -- out_j_01053(GPOUT,64)
    out_j_01053 <= conv1x1_B2_branch_out_j_01053;

    -- out_stall_out_0(GPOUT,65)
    out_stall_out_0 <= conv1x1_B2_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,66)
    out_stall_out_1 <= conv1x1_B2_merge_out_stall_out_1;

    -- out_unnamed_conv1x11_avm_address(GPOUT,67)
    out_unnamed_conv1x11_avm_address <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_address;

    -- out_unnamed_conv1x11_avm_burstcount(GPOUT,68)
    out_unnamed_conv1x11_avm_burstcount <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_burstcount;

    -- out_unnamed_conv1x11_avm_byteenable(GPOUT,69)
    out_unnamed_conv1x11_avm_byteenable <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_byteenable;

    -- out_unnamed_conv1x11_avm_enable(GPOUT,70)
    out_unnamed_conv1x11_avm_enable <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_enable;

    -- out_unnamed_conv1x11_avm_read(GPOUT,71)
    out_unnamed_conv1x11_avm_read <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_read;

    -- out_unnamed_conv1x11_avm_write(GPOUT,72)
    out_unnamed_conv1x11_avm_write <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_write;

    -- out_unnamed_conv1x11_avm_writedata(GPOUT,73)
    out_unnamed_conv1x11_avm_writedata <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x11_avm_writedata;

    -- out_unnamed_conv1x12_avm_address(GPOUT,74)
    out_unnamed_conv1x12_avm_address <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_address;

    -- out_unnamed_conv1x12_avm_burstcount(GPOUT,75)
    out_unnamed_conv1x12_avm_burstcount <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_burstcount;

    -- out_unnamed_conv1x12_avm_byteenable(GPOUT,76)
    out_unnamed_conv1x12_avm_byteenable <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_byteenable;

    -- out_unnamed_conv1x12_avm_enable(GPOUT,77)
    out_unnamed_conv1x12_avm_enable <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_enable;

    -- out_unnamed_conv1x12_avm_read(GPOUT,78)
    out_unnamed_conv1x12_avm_read <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_read;

    -- out_unnamed_conv1x12_avm_write(GPOUT,79)
    out_unnamed_conv1x12_avm_write <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_write;

    -- out_unnamed_conv1x12_avm_writedata(GPOUT,80)
    out_unnamed_conv1x12_avm_writedata <= bb_conv1x1_B2_stall_region_out_unnamed_conv1x12_avm_writedata;

    -- out_valid_out_0(GPOUT,81)
    out_valid_out_0 <= conv1x1_B2_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,82)
    out_valid_out_1 <= conv1x1_B2_branch_out_valid_out_1;

END normal;
