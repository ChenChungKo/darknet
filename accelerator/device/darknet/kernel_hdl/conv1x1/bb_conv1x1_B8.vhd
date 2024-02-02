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

-- VHDL created from bb_conv1x1_B8
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

entity bb_conv1x1_B8 is
    port (
        in_c0_exe116868_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe116868_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe11_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe11_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe1254106_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe1254106_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe221294_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe221294_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2255108_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2255108_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321398_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321398_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3256109_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe3256109_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe356_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe356_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417176_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417176_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4257110_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4257110_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517282_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517282_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5258111_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5258111_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe111_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe111_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe120_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe120_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe128_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe128_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe245_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c3_exe245_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01047_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01047_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_3_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp_17_3_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_17_3_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_unnamed_conv1x113_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x113_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x113_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x113_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x114_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x114_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x114_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x114_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe11 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe116868 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1254106 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe221294 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2255108 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe321398 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3256109 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe356 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417176 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4257110 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe517282 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5258111 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe111 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c1_exe1280 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe120 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe128 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe245 : out std_logic_vector(0 downto 0);  -- ufix1
        out_inc_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_j_01047 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x113_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x113_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x113_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x113_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x113_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x113_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x113_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x114_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x114_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv1x114_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x114_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x114_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x114_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x114_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B8;

architecture normal of bb_conv1x1_B8 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv1x1_B8_stall_region is
        port (
            in_c0_exe11 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe116868 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe1254106 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe221294 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2255108 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321398 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3256109 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe356 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417176 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4257110 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517282 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5258111 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe111 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe120 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe128 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe245 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_filter_weight : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01047 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_17_3 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x113_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x113_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x113_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x113_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x114_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe116868 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1254106 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe221294 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2255108 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe321398 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3256109 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe356 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417176 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4257110 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe517282 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5258111 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe111 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exe1280 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe120 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe128 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe245 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_inc_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_j_01047 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x112 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x113_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x114_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B8_branch is
        port (
            in_c0_exe11 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe116868 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe1254106 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe221294 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2255108 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321398 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3256109 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe356 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417176 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4257110 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517282 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5258111 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe111 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe1280 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c2_exe120 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe128 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe245 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_inc_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01047 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x112 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe116868 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1254106 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe221294 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2255108 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe321398 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3256109 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe356 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417176 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4257110 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe517282 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5258111 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe111 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exe1280 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c2_exe120 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe128 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe245 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_inc_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_j_01047 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv1x1_B8_merge is
        port (
            in_c0_exe116868_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe116868_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe11_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe11_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exe1254106_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe1254106_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe221294_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe221294_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2255108_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2255108_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321398_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe321398_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3256109_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe3256109_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe356_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe356_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417176_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe417176_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4257110_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4257110_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517282_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe517282_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5258111_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5258111_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe111_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c1_exe111_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c2_exe120_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c2_exe120_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe128_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe128_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c3_exe245_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c3_exe245_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_j_01047_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_j_01047_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_k_18_3_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp_17_3_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_tmp_17_3_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exe116868 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1254106 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe221294 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2255108 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe321398 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3256109 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe356 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe417176 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4257110 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe517282 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5258111 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe111 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c2_exe120 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe128 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c3_exe245 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_j_01047 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_k_18_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp_17_3 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv1x1_B8_stall_region_out_c0_exe11 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe116868 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe1254106 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe221294 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe2255108 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe321398 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe3256109 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe356 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe417176 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe4257110 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe517282 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c0_exe5258111 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c1_exe111 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c1_exe1280 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c2_exe120 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c3_exe128 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_stall_region_out_c3_exe245 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_inc_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_stall_region_out_j_01047 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x112 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv1x1_B8_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_c0_exe11 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B8_branch_out_c0_exe116868 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_c0_exe1254106 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_branch_out_c0_exe221294 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_c0_exe2255108 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_c0_exe321398 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_c0_exe3256109 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_branch_out_c0_exe356 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_c0_exe417176 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_c0_exe4257110 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_c0_exe517282 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_c0_exe5258111 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_c1_exe111 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B8_branch_out_c1_exe1280 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_branch_out_c2_exe120 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_branch_out_c3_exe128 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_branch_out_c3_exe245 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_inc_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_branch_out_j_01047 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_c0_exe11 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B8_merge_out_c0_exe116868 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_c0_exe1254106 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_merge_out_c0_exe221294 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_c0_exe2255108 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_c0_exe321398 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_c0_exe3256109 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_merge_out_c0_exe356 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_c0_exe417176 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_c0_exe4257110 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_c0_exe517282 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_c0_exe5258111 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_c1_exe111 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B8_merge_out_c2_exe120 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_merge_out_c3_exe128 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_merge_out_c3_exe245 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_j_01047 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_merge_out_k_18_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_merge_out_tmp_17_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B8_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv1x1_B8_merge(BLACKBOX,4)
    theconv1x1_B8_merge : conv1x1_B8_merge
    PORT MAP (
        in_c0_exe116868_0 => in_c0_exe116868_0,
        in_c0_exe116868_1 => in_c0_exe116868_1,
        in_c0_exe11_0 => in_c0_exe11_0,
        in_c0_exe11_1 => in_c0_exe11_1,
        in_c0_exe1254106_0 => in_c0_exe1254106_0,
        in_c0_exe1254106_1 => in_c0_exe1254106_1,
        in_c0_exe221294_0 => in_c0_exe221294_0,
        in_c0_exe221294_1 => in_c0_exe221294_1,
        in_c0_exe2255108_0 => in_c0_exe2255108_0,
        in_c0_exe2255108_1 => in_c0_exe2255108_1,
        in_c0_exe321398_0 => in_c0_exe321398_0,
        in_c0_exe321398_1 => in_c0_exe321398_1,
        in_c0_exe3256109_0 => in_c0_exe3256109_0,
        in_c0_exe3256109_1 => in_c0_exe3256109_1,
        in_c0_exe356_0 => in_c0_exe356_0,
        in_c0_exe356_1 => in_c0_exe356_1,
        in_c0_exe417176_0 => in_c0_exe417176_0,
        in_c0_exe417176_1 => in_c0_exe417176_1,
        in_c0_exe4257110_0 => in_c0_exe4257110_0,
        in_c0_exe4257110_1 => in_c0_exe4257110_1,
        in_c0_exe517282_0 => in_c0_exe517282_0,
        in_c0_exe517282_1 => in_c0_exe517282_1,
        in_c0_exe5258111_0 => in_c0_exe5258111_0,
        in_c0_exe5258111_1 => in_c0_exe5258111_1,
        in_c1_exe111_0 => in_c1_exe111_0,
        in_c1_exe111_1 => in_c1_exe111_1,
        in_c2_exe120_0 => in_c2_exe120_0,
        in_c2_exe120_1 => in_c2_exe120_1,
        in_c3_exe128_0 => in_c3_exe128_0,
        in_c3_exe128_1 => in_c3_exe128_1,
        in_c3_exe245_0 => in_c3_exe245_0,
        in_c3_exe245_1 => in_c3_exe245_1,
        in_j_01047_0 => in_j_01047_0,
        in_j_01047_1 => in_j_01047_1,
        in_k_18_3_0 => in_k_18_3_0,
        in_k_18_3_1 => in_k_18_3_1,
        in_stall_in => bb_conv1x1_B8_stall_region_out_stall_out,
        in_tmp_17_3_0 => in_tmp_17_3_0,
        in_tmp_17_3_1 => in_tmp_17_3_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_c0_exe11 => conv1x1_B8_merge_out_c0_exe11,
        out_c0_exe116868 => conv1x1_B8_merge_out_c0_exe116868,
        out_c0_exe1254106 => conv1x1_B8_merge_out_c0_exe1254106,
        out_c0_exe221294 => conv1x1_B8_merge_out_c0_exe221294,
        out_c0_exe2255108 => conv1x1_B8_merge_out_c0_exe2255108,
        out_c0_exe321398 => conv1x1_B8_merge_out_c0_exe321398,
        out_c0_exe3256109 => conv1x1_B8_merge_out_c0_exe3256109,
        out_c0_exe356 => conv1x1_B8_merge_out_c0_exe356,
        out_c0_exe417176 => conv1x1_B8_merge_out_c0_exe417176,
        out_c0_exe4257110 => conv1x1_B8_merge_out_c0_exe4257110,
        out_c0_exe517282 => conv1x1_B8_merge_out_c0_exe517282,
        out_c0_exe5258111 => conv1x1_B8_merge_out_c0_exe5258111,
        out_c1_exe111 => conv1x1_B8_merge_out_c1_exe111,
        out_c2_exe120 => conv1x1_B8_merge_out_c2_exe120,
        out_c3_exe128 => conv1x1_B8_merge_out_c3_exe128,
        out_c3_exe245 => conv1x1_B8_merge_out_c3_exe245,
        out_j_01047 => conv1x1_B8_merge_out_j_01047,
        out_k_18_3 => conv1x1_B8_merge_out_k_18_3,
        out_stall_out_0 => conv1x1_B8_merge_out_stall_out_0,
        out_stall_out_1 => conv1x1_B8_merge_out_stall_out_1,
        out_tmp_17_3 => conv1x1_B8_merge_out_tmp_17_3,
        out_valid_out => conv1x1_B8_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv1x1_B8_stall_region(BLACKBOX,2)
    thebb_conv1x1_B8_stall_region : bb_conv1x1_B8_stall_region
    PORT MAP (
        in_c0_exe11 => conv1x1_B8_merge_out_c0_exe11,
        in_c0_exe116868 => conv1x1_B8_merge_out_c0_exe116868,
        in_c0_exe1254106 => conv1x1_B8_merge_out_c0_exe1254106,
        in_c0_exe221294 => conv1x1_B8_merge_out_c0_exe221294,
        in_c0_exe2255108 => conv1x1_B8_merge_out_c0_exe2255108,
        in_c0_exe321398 => conv1x1_B8_merge_out_c0_exe321398,
        in_c0_exe3256109 => conv1x1_B8_merge_out_c0_exe3256109,
        in_c0_exe356 => conv1x1_B8_merge_out_c0_exe356,
        in_c0_exe417176 => conv1x1_B8_merge_out_c0_exe417176,
        in_c0_exe4257110 => conv1x1_B8_merge_out_c0_exe4257110,
        in_c0_exe517282 => conv1x1_B8_merge_out_c0_exe517282,
        in_c0_exe5258111 => conv1x1_B8_merge_out_c0_exe5258111,
        in_c1_exe111 => conv1x1_B8_merge_out_c1_exe111,
        in_c2_exe120 => conv1x1_B8_merge_out_c2_exe120,
        in_c3_exe128 => conv1x1_B8_merge_out_c3_exe128,
        in_c3_exe245 => conv1x1_B8_merge_out_c3_exe245,
        in_filter_weight => in_filter_weight,
        in_flush => in_flush,
        in_input_channels => in_input_channels,
        in_input_im => in_input_im,
        in_input_size => in_input_size,
        in_j_01047 => conv1x1_B8_merge_out_j_01047,
        in_k_18_3 => conv1x1_B8_merge_out_k_18_3,
        in_stall_in => conv1x1_B8_branch_out_stall_out,
        in_tmp_17_3 => conv1x1_B8_merge_out_tmp_17_3,
        in_unnamed_conv1x113_avm_readdata => in_unnamed_conv1x113_avm_readdata,
        in_unnamed_conv1x113_avm_readdatavalid => in_unnamed_conv1x113_avm_readdatavalid,
        in_unnamed_conv1x113_avm_waitrequest => in_unnamed_conv1x113_avm_waitrequest,
        in_unnamed_conv1x113_avm_writeack => in_unnamed_conv1x113_avm_writeack,
        in_unnamed_conv1x114_avm_readdata => in_unnamed_conv1x114_avm_readdata,
        in_unnamed_conv1x114_avm_readdatavalid => in_unnamed_conv1x114_avm_readdatavalid,
        in_unnamed_conv1x114_avm_waitrequest => in_unnamed_conv1x114_avm_waitrequest,
        in_unnamed_conv1x114_avm_writeack => in_unnamed_conv1x114_avm_writeack,
        in_valid_in => conv1x1_B8_merge_out_valid_out,
        out_c0_exe11 => bb_conv1x1_B8_stall_region_out_c0_exe11,
        out_c0_exe116868 => bb_conv1x1_B8_stall_region_out_c0_exe116868,
        out_c0_exe1254106 => bb_conv1x1_B8_stall_region_out_c0_exe1254106,
        out_c0_exe221294 => bb_conv1x1_B8_stall_region_out_c0_exe221294,
        out_c0_exe2255108 => bb_conv1x1_B8_stall_region_out_c0_exe2255108,
        out_c0_exe321398 => bb_conv1x1_B8_stall_region_out_c0_exe321398,
        out_c0_exe3256109 => bb_conv1x1_B8_stall_region_out_c0_exe3256109,
        out_c0_exe356 => bb_conv1x1_B8_stall_region_out_c0_exe356,
        out_c0_exe417176 => bb_conv1x1_B8_stall_region_out_c0_exe417176,
        out_c0_exe4257110 => bb_conv1x1_B8_stall_region_out_c0_exe4257110,
        out_c0_exe517282 => bb_conv1x1_B8_stall_region_out_c0_exe517282,
        out_c0_exe5258111 => bb_conv1x1_B8_stall_region_out_c0_exe5258111,
        out_c1_exe111 => bb_conv1x1_B8_stall_region_out_c1_exe111,
        out_c1_exe1280 => bb_conv1x1_B8_stall_region_out_c1_exe1280,
        out_c2_exe120 => bb_conv1x1_B8_stall_region_out_c2_exe120,
        out_c3_exe128 => bb_conv1x1_B8_stall_region_out_c3_exe128,
        out_c3_exe245 => bb_conv1x1_B8_stall_region_out_c3_exe245,
        out_inc_3 => bb_conv1x1_B8_stall_region_out_inc_3,
        out_j_01047 => bb_conv1x1_B8_stall_region_out_j_01047,
        out_stall_out => bb_conv1x1_B8_stall_region_out_stall_out,
        out_unnamed_conv1x112 => bb_conv1x1_B8_stall_region_out_unnamed_conv1x112,
        out_unnamed_conv1x113_avm_address => bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_address,
        out_unnamed_conv1x113_avm_burstcount => bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_burstcount,
        out_unnamed_conv1x113_avm_byteenable => bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_byteenable,
        out_unnamed_conv1x113_avm_enable => bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_enable,
        out_unnamed_conv1x113_avm_read => bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_read,
        out_unnamed_conv1x113_avm_write => bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_write,
        out_unnamed_conv1x113_avm_writedata => bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_writedata,
        out_unnamed_conv1x114_avm_address => bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_address,
        out_unnamed_conv1x114_avm_burstcount => bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_burstcount,
        out_unnamed_conv1x114_avm_byteenable => bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_byteenable,
        out_unnamed_conv1x114_avm_enable => bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_enable,
        out_unnamed_conv1x114_avm_read => bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_read,
        out_unnamed_conv1x114_avm_write => bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_write,
        out_unnamed_conv1x114_avm_writedata => bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_writedata,
        out_valid_out => bb_conv1x1_B8_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv1x1_B8_branch(BLACKBOX,3)
    theconv1x1_B8_branch : conv1x1_B8_branch
    PORT MAP (
        in_c0_exe11 => bb_conv1x1_B8_stall_region_out_c0_exe11,
        in_c0_exe116868 => bb_conv1x1_B8_stall_region_out_c0_exe116868,
        in_c0_exe1254106 => bb_conv1x1_B8_stall_region_out_c0_exe1254106,
        in_c0_exe221294 => bb_conv1x1_B8_stall_region_out_c0_exe221294,
        in_c0_exe2255108 => bb_conv1x1_B8_stall_region_out_c0_exe2255108,
        in_c0_exe321398 => bb_conv1x1_B8_stall_region_out_c0_exe321398,
        in_c0_exe3256109 => bb_conv1x1_B8_stall_region_out_c0_exe3256109,
        in_c0_exe356 => bb_conv1x1_B8_stall_region_out_c0_exe356,
        in_c0_exe417176 => bb_conv1x1_B8_stall_region_out_c0_exe417176,
        in_c0_exe4257110 => bb_conv1x1_B8_stall_region_out_c0_exe4257110,
        in_c0_exe517282 => bb_conv1x1_B8_stall_region_out_c0_exe517282,
        in_c0_exe5258111 => bb_conv1x1_B8_stall_region_out_c0_exe5258111,
        in_c1_exe111 => bb_conv1x1_B8_stall_region_out_c1_exe111,
        in_c1_exe1280 => bb_conv1x1_B8_stall_region_out_c1_exe1280,
        in_c2_exe120 => bb_conv1x1_B8_stall_region_out_c2_exe120,
        in_c3_exe128 => bb_conv1x1_B8_stall_region_out_c3_exe128,
        in_c3_exe245 => bb_conv1x1_B8_stall_region_out_c3_exe245,
        in_inc_3 => bb_conv1x1_B8_stall_region_out_inc_3,
        in_j_01047 => bb_conv1x1_B8_stall_region_out_j_01047,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_unnamed_conv1x112 => bb_conv1x1_B8_stall_region_out_unnamed_conv1x112,
        in_valid_in => bb_conv1x1_B8_stall_region_out_valid_out,
        out_c0_exe11 => conv1x1_B8_branch_out_c0_exe11,
        out_c0_exe116868 => conv1x1_B8_branch_out_c0_exe116868,
        out_c0_exe1254106 => conv1x1_B8_branch_out_c0_exe1254106,
        out_c0_exe221294 => conv1x1_B8_branch_out_c0_exe221294,
        out_c0_exe2255108 => conv1x1_B8_branch_out_c0_exe2255108,
        out_c0_exe321398 => conv1x1_B8_branch_out_c0_exe321398,
        out_c0_exe3256109 => conv1x1_B8_branch_out_c0_exe3256109,
        out_c0_exe356 => conv1x1_B8_branch_out_c0_exe356,
        out_c0_exe417176 => conv1x1_B8_branch_out_c0_exe417176,
        out_c0_exe4257110 => conv1x1_B8_branch_out_c0_exe4257110,
        out_c0_exe517282 => conv1x1_B8_branch_out_c0_exe517282,
        out_c0_exe5258111 => conv1x1_B8_branch_out_c0_exe5258111,
        out_c1_exe111 => conv1x1_B8_branch_out_c1_exe111,
        out_c1_exe1280 => conv1x1_B8_branch_out_c1_exe1280,
        out_c2_exe120 => conv1x1_B8_branch_out_c2_exe120,
        out_c3_exe128 => conv1x1_B8_branch_out_c3_exe128,
        out_c3_exe245 => conv1x1_B8_branch_out_c3_exe245,
        out_inc_3 => conv1x1_B8_branch_out_inc_3,
        out_j_01047 => conv1x1_B8_branch_out_j_01047,
        out_stall_out => conv1x1_B8_branch_out_stall_out,
        out_valid_out_0 => conv1x1_B8_branch_out_valid_out_0,
        out_valid_out_1 => conv1x1_B8_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe11(GPOUT,64)
    out_c0_exe11 <= conv1x1_B8_branch_out_c0_exe11;

    -- out_c0_exe116868(GPOUT,65)
    out_c0_exe116868 <= conv1x1_B8_branch_out_c0_exe116868;

    -- out_c0_exe1254106(GPOUT,66)
    out_c0_exe1254106 <= conv1x1_B8_branch_out_c0_exe1254106;

    -- out_c0_exe221294(GPOUT,67)
    out_c0_exe221294 <= conv1x1_B8_branch_out_c0_exe221294;

    -- out_c0_exe2255108(GPOUT,68)
    out_c0_exe2255108 <= conv1x1_B8_branch_out_c0_exe2255108;

    -- out_c0_exe321398(GPOUT,69)
    out_c0_exe321398 <= conv1x1_B8_branch_out_c0_exe321398;

    -- out_c0_exe3256109(GPOUT,70)
    out_c0_exe3256109 <= conv1x1_B8_branch_out_c0_exe3256109;

    -- out_c0_exe356(GPOUT,71)
    out_c0_exe356 <= conv1x1_B8_branch_out_c0_exe356;

    -- out_c0_exe417176(GPOUT,72)
    out_c0_exe417176 <= conv1x1_B8_branch_out_c0_exe417176;

    -- out_c0_exe4257110(GPOUT,73)
    out_c0_exe4257110 <= conv1x1_B8_branch_out_c0_exe4257110;

    -- out_c0_exe517282(GPOUT,74)
    out_c0_exe517282 <= conv1x1_B8_branch_out_c0_exe517282;

    -- out_c0_exe5258111(GPOUT,75)
    out_c0_exe5258111 <= conv1x1_B8_branch_out_c0_exe5258111;

    -- out_c1_exe111(GPOUT,76)
    out_c1_exe111 <= conv1x1_B8_branch_out_c1_exe111;

    -- out_c1_exe1280(GPOUT,77)
    out_c1_exe1280 <= conv1x1_B8_branch_out_c1_exe1280;

    -- out_c2_exe120(GPOUT,78)
    out_c2_exe120 <= conv1x1_B8_branch_out_c2_exe120;

    -- out_c3_exe128(GPOUT,79)
    out_c3_exe128 <= conv1x1_B8_branch_out_c3_exe128;

    -- out_c3_exe245(GPOUT,80)
    out_c3_exe245 <= conv1x1_B8_branch_out_c3_exe245;

    -- out_inc_3(GPOUT,81)
    out_inc_3 <= conv1x1_B8_branch_out_inc_3;

    -- out_j_01047(GPOUT,82)
    out_j_01047 <= conv1x1_B8_branch_out_j_01047;

    -- out_stall_out_0(GPOUT,83)
    out_stall_out_0 <= conv1x1_B8_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,84)
    out_stall_out_1 <= conv1x1_B8_merge_out_stall_out_1;

    -- out_unnamed_conv1x113_avm_address(GPOUT,85)
    out_unnamed_conv1x113_avm_address <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_address;

    -- out_unnamed_conv1x113_avm_burstcount(GPOUT,86)
    out_unnamed_conv1x113_avm_burstcount <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_burstcount;

    -- out_unnamed_conv1x113_avm_byteenable(GPOUT,87)
    out_unnamed_conv1x113_avm_byteenable <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_byteenable;

    -- out_unnamed_conv1x113_avm_enable(GPOUT,88)
    out_unnamed_conv1x113_avm_enable <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_enable;

    -- out_unnamed_conv1x113_avm_read(GPOUT,89)
    out_unnamed_conv1x113_avm_read <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_read;

    -- out_unnamed_conv1x113_avm_write(GPOUT,90)
    out_unnamed_conv1x113_avm_write <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_write;

    -- out_unnamed_conv1x113_avm_writedata(GPOUT,91)
    out_unnamed_conv1x113_avm_writedata <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x113_avm_writedata;

    -- out_unnamed_conv1x114_avm_address(GPOUT,92)
    out_unnamed_conv1x114_avm_address <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_address;

    -- out_unnamed_conv1x114_avm_burstcount(GPOUT,93)
    out_unnamed_conv1x114_avm_burstcount <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_burstcount;

    -- out_unnamed_conv1x114_avm_byteenable(GPOUT,94)
    out_unnamed_conv1x114_avm_byteenable <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_byteenable;

    -- out_unnamed_conv1x114_avm_enable(GPOUT,95)
    out_unnamed_conv1x114_avm_enable <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_enable;

    -- out_unnamed_conv1x114_avm_read(GPOUT,96)
    out_unnamed_conv1x114_avm_read <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_read;

    -- out_unnamed_conv1x114_avm_write(GPOUT,97)
    out_unnamed_conv1x114_avm_write <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_write;

    -- out_unnamed_conv1x114_avm_writedata(GPOUT,98)
    out_unnamed_conv1x114_avm_writedata <= bb_conv1x1_B8_stall_region_out_unnamed_conv1x114_avm_writedata;

    -- out_valid_out_0(GPOUT,99)
    out_valid_out_0 <= conv1x1_B8_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,100)
    out_valid_out_1 <= conv1x1_B8_branch_out_valid_out_1;

END normal;
