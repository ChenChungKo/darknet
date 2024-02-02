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

-- VHDL created from i_sfc_logic_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x126
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

entity i_sfc_logic_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x126 is
    port (
        in_c0_eni2_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni2_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi5_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi5_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x126;

architecture normal of i_sfc_logic_c0_for_cond9_preheader_conv1x1_c0_enter136_conv1x126 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_syncbuf_input_channels_sync_buffer_conv1x1270 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_input_size_sync_buffer79_conv1x1267 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_output_size_sync_buffer_conv1x1273 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_pad_sync_buffer_conv1x1264 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer100_conv1x1216 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer101_conv1x1208 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer102_conv1x1200 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer103_conv1x1192 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer104_conv1x1184 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer105_conv1x1176 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer106_conv1x1168 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer107_conv1x1160 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer108_conv1x1152 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer109_conv1x1144 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer110_conv1x1136 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer111_conv1x1128 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer112_conv1x1120 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer113_conv1x1112 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer114_conv1x1104 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer115_conv1x196 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer116_conv1x188 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer117_conv1x180 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer118_conv1x172 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer119_conv1x164 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer120_conv1x156 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer121_conv1x148 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer122_conv1x140 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer123_conv1x132 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer95_conv1x1256 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer96_conv1x1248 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer97_conv1x1240 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer98_conv1x1232 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer99_conv1x1224 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_stride_sync_buffer_conv1x1260 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_mul16_add10_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add12_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add14_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add16_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add18_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add20_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add22_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add24_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add26_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add28_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add30_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add32_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add34_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add36_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add38_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add40_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add42_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add44_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add46_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add48_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add50_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add52_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add54_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add56_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add58_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add60_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add62_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add6_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul16_add8_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub17_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cmp106_neg77_or_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp106_neg77_rm_conv1x1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp106_neg77_rm_conv1x1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp106_neg77_rm_conv1x1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp106_neg77_rm_conv1x1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp23_conv1x1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp23_conv1x1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp23_conv1x1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp23_conv1x1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp26_conv1x1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp26_conv1x1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp26_conv1x1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp26_conv1x1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp9_phi_decision80_xor_or_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp9_phi_decision80_xor_rm_conv1x1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_phi_decision80_xor_rm_conv1x1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_phi_decision80_xor_rm_conv1x1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_phi_decision80_xor_rm_conv1x1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul16_add10_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add10_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add10_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add10_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add10_conv1x1_vt_const_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_mul16_add10_conv1x1_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_add10_conv1x1_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul16_add12_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add12_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add12_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add12_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add12_conv1x1_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_add12_conv1x1_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul16_add14_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add14_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add14_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add14_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add14_conv1x1_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_add14_conv1x1_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul16_add16_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add16_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add16_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add16_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add16_conv1x1_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_add16_conv1x1_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul16_add18_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add18_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add18_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add18_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add18_conv1x1_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_add18_conv1x1_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul16_add20_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add20_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add20_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add20_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add22_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add22_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add22_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add22_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add24_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add24_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add24_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add24_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add26_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add26_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add26_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add26_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add28_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add28_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add28_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add28_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add30_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add30_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add30_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add30_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add32_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add32_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add32_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add32_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add34_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add34_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add34_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add34_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add36_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add36_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add36_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add36_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add38_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add38_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add38_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add38_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add40_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add40_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add40_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add40_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add42_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add42_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add42_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add42_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add44_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add44_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add44_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add44_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add46_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add46_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add46_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add46_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add48_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add48_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add48_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add48_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add50_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add50_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add50_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add50_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add52_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add52_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add52_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add52_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add54_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add54_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add54_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add54_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add56_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add56_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add56_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add56_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add58_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add58_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add58_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add58_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add60_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add60_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add60_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add60_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add62_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add62_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add62_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add62_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add6_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add6_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add6_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add6_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add6_conv1x1_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_add6_conv1x1_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul16_add8_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add8_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add8_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add8_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul16_add8_conv1x1_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_add8_conv1x1_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul16_masked11_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked13_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked15_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked17_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked19_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked21_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked23_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked25_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked27_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked29_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked31_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked33_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked35_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked37_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked39_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked3_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked41_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked43_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked45_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked47_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked49_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked51_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked53_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked55_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked57_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked59_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked5_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked6163_conv1x1_vt_const_30_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_mul16_masked6163_conv1x1_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked6163_conv1x1_vt_select_31_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul16_masked7_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul16_masked9_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or_cond3_conv1x1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond3_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond4_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond4_xor_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub17_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub17_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub17_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub17_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_input_channels_sync_buffer_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_input_size_sync_buffer79_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_output_size_sync_buffer_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer100_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer101_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer102_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer103_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer104_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer105_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer106_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer107_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer108_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer109_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer110_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer111_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer112_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer113_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer114_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer115_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer116_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer117_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer118_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer119_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer120_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer121_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer122_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer123_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer95_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer96_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer97_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer98_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer99_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1100_vt_const_19_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_conv1x1100_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1100_vt_select_31_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_conv1x1106_vt_const_10_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_conv1x1106_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1106_vt_select_31_b : STD_LOGIC_VECTOR (20 downto 0);
    signal i_unnamed_conv1x1108_vt_const_18_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_conv1x1108_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1108_vt_select_31_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_unnamed_conv1x1114_vt_const_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_conv1x1114_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1114_vt_select_31_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_conv1x1116_vt_const_17_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_conv1x1116_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1116_vt_select_31_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_unnamed_conv1x1122_vt_const_12_q : STD_LOGIC_VECTOR (12 downto 0);
    signal i_unnamed_conv1x1122_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1122_vt_select_31_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_conv1x1124_vt_const_16_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_conv1x1124_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1124_vt_select_31_b : STD_LOGIC_VECTOR (14 downto 0);
    signal i_unnamed_conv1x1130_vt_const_13_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_unnamed_conv1x1130_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1130_vt_select_31_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_conv1x1132_vt_const_15_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_conv1x1132_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1132_vt_select_31_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_conv1x1138_vt_const_14_q : STD_LOGIC_VECTOR (14 downto 0);
    signal i_unnamed_conv1x1138_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1138_vt_select_31_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_conv1x1140_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1140_vt_select_31_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_conv1x1146_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1146_vt_select_31_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_conv1x1148_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1148_vt_select_31_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_conv1x1154_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1154_vt_select_31_b : STD_LOGIC_VECTOR (14 downto 0);
    signal i_unnamed_conv1x1156_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1156_vt_select_31_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_conv1x1162_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1162_vt_select_31_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_unnamed_conv1x1164_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1164_vt_select_31_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_conv1x1170_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1170_vt_select_31_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_unnamed_conv1x1172_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1172_vt_select_31_b : STD_LOGIC_VECTOR (20 downto 0);
    signal i_unnamed_conv1x1178_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1178_vt_select_31_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_conv1x1180_vt_const_9_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_unnamed_conv1x1180_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1180_vt_select_31_b : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_conv1x1186_vt_const_20_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_unnamed_conv1x1186_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1186_vt_select_31_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_conv1x1188_vt_const_8_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_unnamed_conv1x1188_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1188_vt_select_31_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_conv1x1194_vt_const_21_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_conv1x1194_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1194_vt_select_31_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_unnamed_conv1x1196_vt_const_7_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_conv1x1196_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1196_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_unnamed_conv1x1202_vt_const_22_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_conv1x1202_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1202_vt_select_31_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_unnamed_conv1x1204_vt_const_6_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_conv1x1204_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1204_vt_select_31_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_conv1x1210_vt_const_23_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_unnamed_conv1x1210_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1210_vt_select_31_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_conv1x1212_vt_const_5_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_unnamed_conv1x1212_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1212_vt_select_31_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_unnamed_conv1x1218_vt_const_24_q : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_conv1x1218_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1218_vt_select_31_b : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_conv1x1220_vt_const_4_q : STD_LOGIC_VECTOR (4 downto 0);
    signal i_unnamed_conv1x1220_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1220_vt_select_31_b : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_conv1x1226_vt_const_25_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_unnamed_conv1x1226_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1226_vt_select_31_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_unnamed_conv1x1228_vt_const_3_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv1x1228_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1228_vt_select_31_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_unnamed_conv1x1234_vt_const_26_q : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_conv1x1234_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1234_vt_select_31_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_unnamed_conv1x1236_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_unnamed_conv1x1236_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1236_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_conv1x1242_vt_const_27_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_unnamed_conv1x1242_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1242_vt_select_31_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv1x1244_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1244_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_conv1x1250_vt_const_28_q : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_conv1x1250_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1250_vt_select_31_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_unnamed_conv1x1252_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1252_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_unnamed_conv1x1258_vt_const_29_q : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_conv1x1258_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1258_vt_select_31_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_unnamed_conv1x1263_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1263_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x1263_vt_select_31_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv1x128_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x128_vt_select_31_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_unnamed_conv1x134_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x134_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_conv1x136_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x136_vt_select_31_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv1x142_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x142_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_conv1x144_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x144_vt_select_31_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_unnamed_conv1x150_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x150_vt_select_31_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_unnamed_conv1x152_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x152_vt_select_31_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_unnamed_conv1x158_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x158_vt_select_31_b : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_conv1x160_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x160_vt_select_31_b : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_conv1x166_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x166_vt_select_31_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_unnamed_conv1x168_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x168_vt_select_31_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_conv1x174_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x174_vt_select_31_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_conv1x176_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x176_vt_select_31_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_unnamed_conv1x182_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x182_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_unnamed_conv1x184_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x184_vt_select_31_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_unnamed_conv1x190_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x190_vt_select_31_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_conv1x192_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x192_vt_select_31_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_conv1x198_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv1x198_vt_select_31_b : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage0Idx1Rng16_uid858_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid858_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid859_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid863_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid863_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid864_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid868_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid868_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid869_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng2_uid873_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1Rng2_uid873_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1_uid874_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage4Idx1Rng1_uid878_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage4Idx1Rng1_uid878_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage4Idx1_uid879_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid887_i_unnamed_conv1x1101_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid887_i_unnamed_conv1x1101_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid888_i_unnamed_conv1x1101_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid892_i_unnamed_conv1x1101_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid892_i_unnamed_conv1x1101_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid893_i_unnamed_conv1x1101_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid898_i_unnamed_conv1x1103_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid900_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid900_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid901_i_unnamed_conv1x1103_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid902_i_unnamed_conv1x1103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid905_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid905_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid906_i_unnamed_conv1x1103_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid907_i_unnamed_conv1x1103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid910_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid910_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid911_i_unnamed_conv1x1103_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid912_i_unnamed_conv1x1103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid915_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid915_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid916_i_unnamed_conv1x1103_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid917_i_unnamed_conv1x1103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid920_i_unnamed_conv1x1103_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid921_i_unnamed_conv1x1103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid929_i_unnamed_conv1x1107_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid929_i_unnamed_conv1x1107_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid930_i_unnamed_conv1x1107_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid934_i_unnamed_conv1x1107_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid934_i_unnamed_conv1x1107_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid935_i_unnamed_conv1x1107_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid939_i_unnamed_conv1x1107_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid939_i_unnamed_conv1x1107_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid940_i_unnamed_conv1x1107_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid953_i_unnamed_conv1x1109_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid953_i_unnamed_conv1x1109_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid954_i_unnamed_conv1x1109_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid958_i_unnamed_conv1x1109_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid958_i_unnamed_conv1x1109_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid959_i_unnamed_conv1x1109_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid964_i_unnamed_conv1x1111_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid966_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid966_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid967_i_unnamed_conv1x1111_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid968_i_unnamed_conv1x1111_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid971_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid971_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid972_i_unnamed_conv1x1111_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid973_i_unnamed_conv1x1111_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid976_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid976_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid977_i_unnamed_conv1x1111_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid978_i_unnamed_conv1x1111_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid981_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid981_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid982_i_unnamed_conv1x1111_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid983_i_unnamed_conv1x1111_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid986_i_unnamed_conv1x1111_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid987_i_unnamed_conv1x1111_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid995_i_unnamed_conv1x1115_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid995_i_unnamed_conv1x1115_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid996_i_unnamed_conv1x1115_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1000_i_unnamed_conv1x1115_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1000_i_unnamed_conv1x1115_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1001_i_unnamed_conv1x1115_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1022_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1022_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1023_i_unnamed_conv1x1119_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1024_i_unnamed_conv1x1119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1027_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1027_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1028_i_unnamed_conv1x1119_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1029_i_unnamed_conv1x1119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1032_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1032_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1033_i_unnamed_conv1x1119_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1034_i_unnamed_conv1x1119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1037_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1037_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1038_i_unnamed_conv1x1119_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1039_i_unnamed_conv1x1119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1042_i_unnamed_conv1x1119_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1043_i_unnamed_conv1x1119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1051_i_unnamed_conv1x1123_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1051_i_unnamed_conv1x1123_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1052_i_unnamed_conv1x1123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1056_i_unnamed_conv1x1123_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1056_i_unnamed_conv1x1123_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1057_i_unnamed_conv1x1123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1061_i_unnamed_conv1x1123_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1061_i_unnamed_conv1x1123_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1062_i_unnamed_conv1x1123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1075_i_unnamed_conv1x1125_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1075_i_unnamed_conv1x1125_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1076_i_unnamed_conv1x1125_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1083_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1083_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1084_i_unnamed_conv1x1127_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1085_i_unnamed_conv1x1127_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1088_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1088_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1089_i_unnamed_conv1x1127_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1090_i_unnamed_conv1x1127_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1093_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1093_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1094_i_unnamed_conv1x1127_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1095_i_unnamed_conv1x1127_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1098_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1098_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1099_i_unnamed_conv1x1127_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1100_i_unnamed_conv1x1127_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1103_i_unnamed_conv1x1127_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1104_i_unnamed_conv1x1127_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1112_i_unnamed_conv1x1131_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1112_i_unnamed_conv1x1131_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1113_i_unnamed_conv1x1131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1117_i_unnamed_conv1x1131_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1117_i_unnamed_conv1x1131_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1118_i_unnamed_conv1x1131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1122_i_unnamed_conv1x1131_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1122_i_unnamed_conv1x1131_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1123_i_unnamed_conv1x1131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1139_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1139_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1140_i_unnamed_conv1x1135_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1141_i_unnamed_conv1x1135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1144_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1144_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1145_i_unnamed_conv1x1135_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1146_i_unnamed_conv1x1135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1149_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1149_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1150_i_unnamed_conv1x1135_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1151_i_unnamed_conv1x1135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1154_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1154_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1155_i_unnamed_conv1x1135_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1156_i_unnamed_conv1x1135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1159_i_unnamed_conv1x1135_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1160_i_unnamed_conv1x1135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1168_i_unnamed_conv1x1139_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1168_i_unnamed_conv1x1139_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1169_i_unnamed_conv1x1139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1173_i_unnamed_conv1x1139_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1173_i_unnamed_conv1x1139_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1174_i_unnamed_conv1x1139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1178_i_unnamed_conv1x1139_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1178_i_unnamed_conv1x1139_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1179_i_unnamed_conv1x1139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1183_i_unnamed_conv1x1139_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1183_i_unnamed_conv1x1139_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid1184_i_unnamed_conv1x1139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1192_i_unnamed_conv1x1141_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1192_i_unnamed_conv1x1141_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1193_i_unnamed_conv1x1141_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1197_i_unnamed_conv1x1141_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1197_i_unnamed_conv1x1141_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1198_i_unnamed_conv1x1141_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1202_i_unnamed_conv1x1141_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1202_i_unnamed_conv1x1141_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1203_i_unnamed_conv1x1141_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1207_i_unnamed_conv1x1141_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1207_i_unnamed_conv1x1141_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid1208_i_unnamed_conv1x1141_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1215_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1215_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1216_i_unnamed_conv1x1143_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1217_i_unnamed_conv1x1143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1220_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1220_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1221_i_unnamed_conv1x1143_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1222_i_unnamed_conv1x1143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1225_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1225_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1226_i_unnamed_conv1x1143_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1227_i_unnamed_conv1x1143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1230_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1230_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1231_i_unnamed_conv1x1143_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1232_i_unnamed_conv1x1143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1235_i_unnamed_conv1x1143_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1236_i_unnamed_conv1x1143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1244_i_unnamed_conv1x1147_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1244_i_unnamed_conv1x1147_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1245_i_unnamed_conv1x1147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1271_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1271_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1272_i_unnamed_conv1x1151_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1273_i_unnamed_conv1x1151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1276_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1276_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1277_i_unnamed_conv1x1151_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1278_i_unnamed_conv1x1151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1281_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1281_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1282_i_unnamed_conv1x1151_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1283_i_unnamed_conv1x1151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1286_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1286_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1287_i_unnamed_conv1x1151_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1288_i_unnamed_conv1x1151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1291_i_unnamed_conv1x1151_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1292_i_unnamed_conv1x1151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1300_i_unnamed_conv1x1155_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1300_i_unnamed_conv1x1155_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1301_i_unnamed_conv1x1155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1305_i_unnamed_conv1x1155_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1305_i_unnamed_conv1x1155_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1306_i_unnamed_conv1x1155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1324_i_unnamed_conv1x1157_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1324_i_unnamed_conv1x1157_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1325_i_unnamed_conv1x1157_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1332_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1332_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1333_i_unnamed_conv1x1159_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1334_i_unnamed_conv1x1159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1337_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1337_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1338_i_unnamed_conv1x1159_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1339_i_unnamed_conv1x1159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1342_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1342_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1343_i_unnamed_conv1x1159_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1344_i_unnamed_conv1x1159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1347_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1347_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1348_i_unnamed_conv1x1159_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1349_i_unnamed_conv1x1159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1352_i_unnamed_conv1x1159_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1353_i_unnamed_conv1x1159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1361_i_unnamed_conv1x1163_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1361_i_unnamed_conv1x1163_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1362_i_unnamed_conv1x1163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1366_i_unnamed_conv1x1163_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1366_i_unnamed_conv1x1163_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1367_i_unnamed_conv1x1163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1388_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1388_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1389_i_unnamed_conv1x1167_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1390_i_unnamed_conv1x1167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1393_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1393_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1394_i_unnamed_conv1x1167_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1395_i_unnamed_conv1x1167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1398_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1398_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1399_i_unnamed_conv1x1167_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1400_i_unnamed_conv1x1167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1403_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1403_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1404_i_unnamed_conv1x1167_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1405_i_unnamed_conv1x1167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1408_i_unnamed_conv1x1167_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1409_i_unnamed_conv1x1167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1417_i_unnamed_conv1x1171_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1417_i_unnamed_conv1x1171_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1418_i_unnamed_conv1x1171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1422_i_unnamed_conv1x1171_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1422_i_unnamed_conv1x1171_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1423_i_unnamed_conv1x1171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1427_i_unnamed_conv1x1171_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1427_i_unnamed_conv1x1171_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1428_i_unnamed_conv1x1171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1441_i_unnamed_conv1x1173_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1441_i_unnamed_conv1x1173_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1442_i_unnamed_conv1x1173_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1446_i_unnamed_conv1x1173_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1446_i_unnamed_conv1x1173_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1447_i_unnamed_conv1x1173_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1454_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1454_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1455_i_unnamed_conv1x1175_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1456_i_unnamed_conv1x1175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1459_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1459_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1460_i_unnamed_conv1x1175_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1461_i_unnamed_conv1x1175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1464_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1464_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1465_i_unnamed_conv1x1175_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1466_i_unnamed_conv1x1175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1469_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1469_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1470_i_unnamed_conv1x1175_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1471_i_unnamed_conv1x1175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1474_i_unnamed_conv1x1175_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1475_i_unnamed_conv1x1175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1483_i_unnamed_conv1x1179_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1483_i_unnamed_conv1x1179_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1484_i_unnamed_conv1x1179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1488_i_unnamed_conv1x1179_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1488_i_unnamed_conv1x1179_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1489_i_unnamed_conv1x1179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1510_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1510_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1511_i_unnamed_conv1x1183_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1512_i_unnamed_conv1x1183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1515_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1515_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1516_i_unnamed_conv1x1183_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1517_i_unnamed_conv1x1183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1520_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1520_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1521_i_unnamed_conv1x1183_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1522_i_unnamed_conv1x1183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1525_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1525_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1526_i_unnamed_conv1x1183_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1527_i_unnamed_conv1x1183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1530_i_unnamed_conv1x1183_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1531_i_unnamed_conv1x1183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1539_i_unnamed_conv1x1187_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1539_i_unnamed_conv1x1187_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1540_i_unnamed_conv1x1187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1544_i_unnamed_conv1x1187_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1544_i_unnamed_conv1x1187_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1545_i_unnamed_conv1x1187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1549_i_unnamed_conv1x1187_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1549_i_unnamed_conv1x1187_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1550_i_unnamed_conv1x1187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1563_i_unnamed_conv1x1189_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1563_i_unnamed_conv1x1189_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1564_i_unnamed_conv1x1189_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1571_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1571_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1572_i_unnamed_conv1x1191_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1573_i_unnamed_conv1x1191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1576_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1576_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1577_i_unnamed_conv1x1191_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1578_i_unnamed_conv1x1191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1581_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1581_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1582_i_unnamed_conv1x1191_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1583_i_unnamed_conv1x1191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1586_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1586_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1587_i_unnamed_conv1x1191_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1588_i_unnamed_conv1x1191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1591_i_unnamed_conv1x1191_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1592_i_unnamed_conv1x1191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1600_i_unnamed_conv1x1195_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1600_i_unnamed_conv1x1195_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1601_i_unnamed_conv1x1195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1605_i_unnamed_conv1x1195_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1605_i_unnamed_conv1x1195_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1606_i_unnamed_conv1x1195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1610_i_unnamed_conv1x1195_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1610_i_unnamed_conv1x1195_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1611_i_unnamed_conv1x1195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1627_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1627_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1628_i_unnamed_conv1x1199_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1629_i_unnamed_conv1x1199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1632_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1632_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1633_i_unnamed_conv1x1199_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1634_i_unnamed_conv1x1199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1637_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1637_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1638_i_unnamed_conv1x1199_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1639_i_unnamed_conv1x1199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1642_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1642_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1643_i_unnamed_conv1x1199_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1644_i_unnamed_conv1x1199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1647_i_unnamed_conv1x1199_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1648_i_unnamed_conv1x1199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1656_i_unnamed_conv1x1203_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1656_i_unnamed_conv1x1203_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1657_i_unnamed_conv1x1203_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1661_i_unnamed_conv1x1203_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1661_i_unnamed_conv1x1203_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1662_i_unnamed_conv1x1203_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1666_i_unnamed_conv1x1203_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1666_i_unnamed_conv1x1203_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1667_i_unnamed_conv1x1203_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1671_i_unnamed_conv1x1203_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1671_i_unnamed_conv1x1203_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid1672_i_unnamed_conv1x1203_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1680_i_unnamed_conv1x1205_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1680_i_unnamed_conv1x1205_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid1681_i_unnamed_conv1x1205_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1685_i_unnamed_conv1x1205_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1685_i_unnamed_conv1x1205_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1686_i_unnamed_conv1x1205_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1690_i_unnamed_conv1x1205_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1690_i_unnamed_conv1x1205_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1691_i_unnamed_conv1x1205_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1698_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1698_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1699_i_unnamed_conv1x1207_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1700_i_unnamed_conv1x1207_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1703_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1703_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1704_i_unnamed_conv1x1207_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1705_i_unnamed_conv1x1207_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1708_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1708_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1709_i_unnamed_conv1x1207_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1710_i_unnamed_conv1x1207_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1713_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1713_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1714_i_unnamed_conv1x1207_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1715_i_unnamed_conv1x1207_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1718_i_unnamed_conv1x1207_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1719_i_unnamed_conv1x1207_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1727_i_unnamed_conv1x1211_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1727_i_unnamed_conv1x1211_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1728_i_unnamed_conv1x1211_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1732_i_unnamed_conv1x1211_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1732_i_unnamed_conv1x1211_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1733_i_unnamed_conv1x1211_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1754_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1754_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1755_i_unnamed_conv1x1215_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1756_i_unnamed_conv1x1215_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1759_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1759_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1760_i_unnamed_conv1x1215_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1761_i_unnamed_conv1x1215_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1764_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1764_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1765_i_unnamed_conv1x1215_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1766_i_unnamed_conv1x1215_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1769_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1769_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1770_i_unnamed_conv1x1215_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1771_i_unnamed_conv1x1215_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1774_i_unnamed_conv1x1215_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1775_i_unnamed_conv1x1215_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1783_i_unnamed_conv1x1219_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1783_i_unnamed_conv1x1219_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1784_i_unnamed_conv1x1219_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1788_i_unnamed_conv1x1219_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1788_i_unnamed_conv1x1219_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1789_i_unnamed_conv1x1219_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1793_i_unnamed_conv1x1219_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1793_i_unnamed_conv1x1219_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1794_i_unnamed_conv1x1219_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1807_i_unnamed_conv1x1221_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1807_i_unnamed_conv1x1221_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1808_i_unnamed_conv1x1221_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1815_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1815_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1816_i_unnamed_conv1x1223_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1817_i_unnamed_conv1x1223_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1820_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1820_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1821_i_unnamed_conv1x1223_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1822_i_unnamed_conv1x1223_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1825_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1825_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1826_i_unnamed_conv1x1223_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1827_i_unnamed_conv1x1223_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1830_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1830_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1831_i_unnamed_conv1x1223_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1832_i_unnamed_conv1x1223_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1835_i_unnamed_conv1x1223_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1836_i_unnamed_conv1x1223_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1844_i_unnamed_conv1x1227_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1844_i_unnamed_conv1x1227_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1845_i_unnamed_conv1x1227_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1849_i_unnamed_conv1x1227_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1849_i_unnamed_conv1x1227_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1850_i_unnamed_conv1x1227_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1854_i_unnamed_conv1x1227_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1854_i_unnamed_conv1x1227_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1855_i_unnamed_conv1x1227_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1871_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1871_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1872_i_unnamed_conv1x1231_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1873_i_unnamed_conv1x1231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1876_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1876_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1877_i_unnamed_conv1x1231_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1878_i_unnamed_conv1x1231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1881_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1881_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1882_i_unnamed_conv1x1231_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1883_i_unnamed_conv1x1231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1886_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1886_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1887_i_unnamed_conv1x1231_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1888_i_unnamed_conv1x1231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1891_i_unnamed_conv1x1231_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1892_i_unnamed_conv1x1231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1900_i_unnamed_conv1x1235_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1900_i_unnamed_conv1x1235_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1901_i_unnamed_conv1x1235_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1905_i_unnamed_conv1x1235_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1905_i_unnamed_conv1x1235_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1906_i_unnamed_conv1x1235_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1910_i_unnamed_conv1x1235_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1910_i_unnamed_conv1x1235_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1911_i_unnamed_conv1x1235_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1915_i_unnamed_conv1x1235_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1915_i_unnamed_conv1x1235_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid1916_i_unnamed_conv1x1235_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid1924_i_unnamed_conv1x1237_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid1924_i_unnamed_conv1x1237_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid1925_i_unnamed_conv1x1237_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1929_i_unnamed_conv1x1237_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1929_i_unnamed_conv1x1237_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1930_i_unnamed_conv1x1237_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1937_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1937_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1938_i_unnamed_conv1x1239_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1939_i_unnamed_conv1x1239_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1942_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1942_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1943_i_unnamed_conv1x1239_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1944_i_unnamed_conv1x1239_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1947_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1947_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1948_i_unnamed_conv1x1239_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1949_i_unnamed_conv1x1239_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1952_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1952_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1953_i_unnamed_conv1x1239_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1954_i_unnamed_conv1x1239_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1957_i_unnamed_conv1x1239_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1958_i_unnamed_conv1x1239_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1966_i_unnamed_conv1x1243_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1966_i_unnamed_conv1x1243_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1967_i_unnamed_conv1x1243_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1971_i_unnamed_conv1x1243_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1971_i_unnamed_conv1x1243_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1972_i_unnamed_conv1x1243_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1976_i_unnamed_conv1x1243_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1976_i_unnamed_conv1x1243_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid1977_i_unnamed_conv1x1243_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1993_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1993_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1994_i_unnamed_conv1x1247_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1995_i_unnamed_conv1x1247_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1998_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1998_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1999_i_unnamed_conv1x1247_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2000_i_unnamed_conv1x1247_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2003_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2003_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2004_i_unnamed_conv1x1247_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2005_i_unnamed_conv1x1247_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2008_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2008_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2009_i_unnamed_conv1x1247_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2010_i_unnamed_conv1x1247_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2013_i_unnamed_conv1x1247_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2014_i_unnamed_conv1x1247_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2022_i_unnamed_conv1x1251_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2022_i_unnamed_conv1x1251_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2023_i_unnamed_conv1x1251_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2027_i_unnamed_conv1x1251_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2027_i_unnamed_conv1x1251_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid2028_i_unnamed_conv1x1251_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2032_i_unnamed_conv1x1251_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2032_i_unnamed_conv1x1251_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid2033_i_unnamed_conv1x1251_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2037_i_unnamed_conv1x1251_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2037_i_unnamed_conv1x1251_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid2038_i_unnamed_conv1x1251_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid2046_i_unnamed_conv1x1253_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid2046_i_unnamed_conv1x1253_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid2047_i_unnamed_conv1x1253_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2054_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2054_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2055_i_unnamed_conv1x1255_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2056_i_unnamed_conv1x1255_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2059_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2059_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2060_i_unnamed_conv1x1255_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2061_i_unnamed_conv1x1255_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2064_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2064_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2065_i_unnamed_conv1x1255_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2066_i_unnamed_conv1x1255_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2069_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2069_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2070_i_unnamed_conv1x1255_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2071_i_unnamed_conv1x1255_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2074_i_unnamed_conv1x1255_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2075_i_unnamed_conv1x1255_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2083_i_unnamed_conv1x1259_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2083_i_unnamed_conv1x1259_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2084_i_unnamed_conv1x1259_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2088_i_unnamed_conv1x1259_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2088_i_unnamed_conv1x1259_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid2089_i_unnamed_conv1x1259_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2093_i_unnamed_conv1x1259_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2093_i_unnamed_conv1x1259_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid2094_i_unnamed_conv1x1259_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng2_uid2098_i_unnamed_conv1x1259_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1Rng2_uid2098_i_unnamed_conv1x1259_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1_uid2099_i_unnamed_conv1x1259_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2112_i_unnamed_conv1x129_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2112_i_unnamed_conv1x129_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid2113_i_unnamed_conv1x129_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2117_i_unnamed_conv1x129_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2117_i_unnamed_conv1x129_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid2118_i_unnamed_conv1x129_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2122_i_unnamed_conv1x129_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2122_i_unnamed_conv1x129_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid2123_i_unnamed_conv1x129_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2128_i_unnamed_conv1x131_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2130_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2130_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2131_i_unnamed_conv1x131_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2132_i_unnamed_conv1x131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2135_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2135_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2136_i_unnamed_conv1x131_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2137_i_unnamed_conv1x131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2140_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2140_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2141_i_unnamed_conv1x131_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2142_i_unnamed_conv1x131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2145_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2145_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2146_i_unnamed_conv1x131_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2147_i_unnamed_conv1x131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2150_i_unnamed_conv1x131_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2151_i_unnamed_conv1x131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid2159_i_unnamed_conv1x135_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid2159_i_unnamed_conv1x135_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid2160_i_unnamed_conv1x135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2184_i_unnamed_conv1x139_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2186_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2186_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2187_i_unnamed_conv1x139_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2188_i_unnamed_conv1x139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2191_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2191_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2192_i_unnamed_conv1x139_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2193_i_unnamed_conv1x139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2196_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2196_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2197_i_unnamed_conv1x139_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2198_i_unnamed_conv1x139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2201_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2201_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2202_i_unnamed_conv1x139_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2203_i_unnamed_conv1x139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2206_i_unnamed_conv1x139_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2207_i_unnamed_conv1x139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid2215_i_unnamed_conv1x143_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid2215_i_unnamed_conv1x143_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid2216_i_unnamed_conv1x143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid2220_i_unnamed_conv1x143_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid2220_i_unnamed_conv1x143_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid2221_i_unnamed_conv1x143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2239_i_unnamed_conv1x145_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2239_i_unnamed_conv1x145_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid2240_i_unnamed_conv1x145_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2244_i_unnamed_conv1x145_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2244_i_unnamed_conv1x145_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid2245_i_unnamed_conv1x145_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2250_i_unnamed_conv1x147_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2252_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2252_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2253_i_unnamed_conv1x147_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2254_i_unnamed_conv1x147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2257_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2257_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2258_i_unnamed_conv1x147_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2259_i_unnamed_conv1x147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2262_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2262_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2263_i_unnamed_conv1x147_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2264_i_unnamed_conv1x147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2267_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2267_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2268_i_unnamed_conv1x147_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2269_i_unnamed_conv1x147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2272_i_unnamed_conv1x147_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2273_i_unnamed_conv1x147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2281_i_unnamed_conv1x151_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2281_i_unnamed_conv1x151_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid2282_i_unnamed_conv1x151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2306_i_unnamed_conv1x155_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2308_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2308_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2309_i_unnamed_conv1x155_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2310_i_unnamed_conv1x155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2313_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2313_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2314_i_unnamed_conv1x155_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2315_i_unnamed_conv1x155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2318_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2318_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2319_i_unnamed_conv1x155_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2320_i_unnamed_conv1x155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2323_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2323_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2324_i_unnamed_conv1x155_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2325_i_unnamed_conv1x155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2328_i_unnamed_conv1x155_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2329_i_unnamed_conv1x155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2337_i_unnamed_conv1x159_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2337_i_unnamed_conv1x159_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid2338_i_unnamed_conv1x159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid2342_i_unnamed_conv1x159_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid2342_i_unnamed_conv1x159_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid2343_i_unnamed_conv1x159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2361_i_unnamed_conv1x161_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2361_i_unnamed_conv1x161_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid2362_i_unnamed_conv1x161_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2367_i_unnamed_conv1x163_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2369_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2369_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2370_i_unnamed_conv1x163_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2371_i_unnamed_conv1x163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2374_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2374_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2375_i_unnamed_conv1x163_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2376_i_unnamed_conv1x163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2379_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2379_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2380_i_unnamed_conv1x163_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2381_i_unnamed_conv1x163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2384_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2384_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2385_i_unnamed_conv1x163_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2386_i_unnamed_conv1x163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2389_i_unnamed_conv1x163_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2390_i_unnamed_conv1x163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2398_i_unnamed_conv1x167_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2398_i_unnamed_conv1x167_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid2399_i_unnamed_conv1x167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2403_i_unnamed_conv1x167_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2403_i_unnamed_conv1x167_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid2404_i_unnamed_conv1x167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2423_i_unnamed_conv1x171_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2425_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2425_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2426_i_unnamed_conv1x171_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2427_i_unnamed_conv1x171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2430_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2430_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2431_i_unnamed_conv1x171_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2432_i_unnamed_conv1x171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2435_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2435_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2436_i_unnamed_conv1x171_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2437_i_unnamed_conv1x171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2440_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2440_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2441_i_unnamed_conv1x171_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2442_i_unnamed_conv1x171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2445_i_unnamed_conv1x171_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2446_i_unnamed_conv1x171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2454_i_unnamed_conv1x175_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2454_i_unnamed_conv1x175_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid2455_i_unnamed_conv1x175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2459_i_unnamed_conv1x175_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2459_i_unnamed_conv1x175_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid2460_i_unnamed_conv1x175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2464_i_unnamed_conv1x175_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2464_i_unnamed_conv1x175_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid2465_i_unnamed_conv1x175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2483_i_unnamed_conv1x177_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2483_i_unnamed_conv1x177_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid2484_i_unnamed_conv1x177_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2488_i_unnamed_conv1x177_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2488_i_unnamed_conv1x177_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid2489_i_unnamed_conv1x177_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2494_i_unnamed_conv1x179_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2496_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2496_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2497_i_unnamed_conv1x179_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2498_i_unnamed_conv1x179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2501_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2501_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2502_i_unnamed_conv1x179_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2503_i_unnamed_conv1x179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2506_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2506_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2507_i_unnamed_conv1x179_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2508_i_unnamed_conv1x179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2511_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2511_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2512_i_unnamed_conv1x179_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2513_i_unnamed_conv1x179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2516_i_unnamed_conv1x179_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2517_i_unnamed_conv1x179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2525_i_unnamed_conv1x183_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2525_i_unnamed_conv1x183_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid2526_i_unnamed_conv1x183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2550_i_unnamed_conv1x187_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2552_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2552_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2553_i_unnamed_conv1x187_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2554_i_unnamed_conv1x187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2557_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2557_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2558_i_unnamed_conv1x187_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2559_i_unnamed_conv1x187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2562_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2562_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2563_i_unnamed_conv1x187_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2564_i_unnamed_conv1x187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2567_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2567_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2568_i_unnamed_conv1x187_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2569_i_unnamed_conv1x187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2572_i_unnamed_conv1x187_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2573_i_unnamed_conv1x187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2581_i_unnamed_conv1x191_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2581_i_unnamed_conv1x191_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid2582_i_unnamed_conv1x191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid2586_i_unnamed_conv1x191_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid2586_i_unnamed_conv1x191_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid2587_i_unnamed_conv1x191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2605_i_unnamed_conv1x193_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2605_i_unnamed_conv1x193_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid2606_i_unnamed_conv1x193_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2611_i_unnamed_conv1x195_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2613_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2613_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2614_i_unnamed_conv1x195_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2615_i_unnamed_conv1x195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2618_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2618_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2619_i_unnamed_conv1x195_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2620_i_unnamed_conv1x195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2623_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2623_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2624_i_unnamed_conv1x195_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2625_i_unnamed_conv1x195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2628_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2628_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2629_i_unnamed_conv1x195_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2630_i_unnamed_conv1x195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2633_i_unnamed_conv1x195_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2634_i_unnamed_conv1x195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2642_i_unnamed_conv1x199_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2642_i_unnamed_conv1x199_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid2643_i_unnamed_conv1x199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2647_i_unnamed_conv1x199_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2647_i_unnamed_conv1x199_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid2648_i_unnamed_conv1x199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_unnamed_conv1x198_vt_select_31_b_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal redist4_i_unnamed_conv1x192_vt_select_31_b_2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist5_i_unnamed_conv1x190_vt_select_31_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist6_i_unnamed_conv1x184_vt_select_31_b_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist7_i_unnamed_conv1x182_vt_select_31_b_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist8_i_unnamed_conv1x174_vt_select_31_b_1_q : STD_LOGIC_VECTOR (24 downto 0);
    signal redist9_i_unnamed_conv1x168_vt_select_31_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist10_i_unnamed_conv1x166_vt_select_31_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist11_i_unnamed_conv1x160_vt_select_31_b_3_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist12_i_unnamed_conv1x158_vt_select_31_b_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist13_i_unnamed_conv1x152_vt_select_31_b_2_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist14_i_unnamed_conv1x150_vt_select_31_b_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist15_i_unnamed_conv1x144_vt_select_31_b_1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_i_unnamed_conv1x142_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist17_i_unnamed_conv1x134_vt_select_31_b_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist18_i_unnamed_conv1x1263_vt_select_31_b_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_unnamed_conv1x1258_vt_select_31_b_7_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist20_i_unnamed_conv1x1250_vt_select_31_b_6_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist21_i_unnamed_conv1x1242_vt_select_31_b_5_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist22_i_unnamed_conv1x1234_vt_select_31_b_4_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist23_i_unnamed_conv1x1226_vt_select_31_b_3_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist24_i_unnamed_conv1x1218_vt_select_31_b_2_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist25_i_unnamed_conv1x1210_vt_select_31_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist26_i_unnamed_conv1x1202_vt_select_31_b_4_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist27_i_unnamed_conv1x1194_vt_select_31_b_3_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist28_i_unnamed_conv1x1186_vt_select_31_b_2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist29_i_unnamed_conv1x1178_vt_select_31_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist30_i_unnamed_conv1x1170_vt_select_31_b_4_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist31_i_unnamed_conv1x1162_vt_select_31_b_3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist32_i_unnamed_conv1x1154_vt_select_31_b_2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist33_i_unnamed_conv1x1146_vt_select_31_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist34_i_unnamed_conv1x1138_vt_select_31_b_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal redist35_i_unnamed_conv1x1132_vt_select_31_b_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist36_i_unnamed_conv1x1130_vt_select_31_b_1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist37_i_unnamed_conv1x1124_vt_select_31_b_2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist38_i_unnamed_conv1x1122_vt_select_31_b_1_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist39_i_unnamed_conv1x1116_vt_select_31_b_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist40_i_unnamed_conv1x1114_vt_select_31_b_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist41_i_unnamed_conv1x1106_vt_select_31_b_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist42_i_unnamed_conv1x1100_vt_select_31_b_3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist43_i_mul16_add8_conv1x1_vt_select_31_b_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist44_i_mul16_add6_conv1x1_vt_select_31_b_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist45_i_mul16_add18_conv1x1_vt_select_31_b_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist46_i_mul16_add16_conv1x1_vt_select_31_b_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist47_i_mul16_add14_conv1x1_vt_select_31_b_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist48_i_mul16_add12_conv1x1_vt_select_31_b_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist49_i_mul16_add10_conv1x1_vt_select_31_b_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist53_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist54_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist55_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist58_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist59_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist61_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_sync_in_aunroll_x_in_i_valid_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_sync_in_aunroll_x_in_i_valid_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_i_valid_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_i_valid_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist66_sync_in_aunroll_x_in_i_valid_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_i_valid_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist68_sync_in_aunroll_x_in_i_valid_30_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_sync_in_aunroll_x_in_i_valid_32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist70_sync_in_aunroll_x_in_i_valid_33_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist71_bgTrunc_i_sub17_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist72_bgTrunc_i_sub17_conv1x1_sel_x_b_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_bgTrunc_i_sub17_conv1x1_sel_x_b_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist74_bgTrunc_i_mul16_add62_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist75_bgTrunc_i_mul16_add60_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist76_bgTrunc_i_mul16_add58_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist77_bgTrunc_i_mul16_add56_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist78_bgTrunc_i_mul16_add54_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist79_bgTrunc_i_mul16_add52_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist80_bgTrunc_i_mul16_add50_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist81_bgTrunc_i_mul16_add48_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist82_bgTrunc_i_mul16_add46_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist83_bgTrunc_i_mul16_add44_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist84_bgTrunc_i_mul16_add42_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist85_bgTrunc_i_mul16_add40_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist86_bgTrunc_i_mul16_add38_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist87_bgTrunc_i_mul16_add36_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist88_bgTrunc_i_mul16_add34_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist89_bgTrunc_i_mul16_add32_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist90_bgTrunc_i_mul16_add30_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist91_bgTrunc_i_mul16_add28_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist92_bgTrunc_i_mul16_add26_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist93_bgTrunc_i_mul16_add24_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist94_bgTrunc_i_mul16_add22_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist95_bgTrunc_i_mul16_add20_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_reset0 : std_logic;
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_i : signal is true;
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_sticky_ena_q : signal is true;
    signal redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_reset0 : std_logic;
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_i : signal is true;
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_eq : std_logic;
    attribute preserve of redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_eq : signal is true;
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_sticky_ena_q : signal is true;
    signal redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist30_i_unnamed_conv1x1170_vt_select_31_b_4_outputreg_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist35_i_unnamed_conv1x1132_vt_select_31_b_3_inputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_reset0 : std_logic;
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_i : signal is true;
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_eq : std_logic;
    attribute preserve of redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_eq : signal is true;
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist50_sync_in_aunroll_x_in_c0_eni2_1_13_sticky_ena_q : signal is true;
    signal redist50_sync_in_aunroll_x_in_c0_eni2_1_13_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_reset0 : std_logic;
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_i : signal is true;
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_eq : std_logic;
    attribute preserve of redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_eq : signal is true;
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist51_sync_in_aunroll_x_in_c0_eni2_1_21_sticky_ena_q : signal is true;
    signal redist51_sync_in_aunroll_x_in_c0_eni2_1_21_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_reset0 : std_logic;
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_ia : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_iq : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_i : signal is true;
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_eq : std_logic;
    attribute preserve of redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_eq : signal is true;
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist52_sync_in_aunroll_x_in_c0_eni2_2_32_sticky_ena_q : signal is true;
    signal redist52_sync_in_aunroll_x_in_c0_eni2_2_32_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist53_sync_in_aunroll_x_in_i_valid_1(DELAY,2734)
    redist53_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist53_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist54_sync_in_aunroll_x_in_i_valid_2(DELAY,2735)
    redist54_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist53_sync_in_aunroll_x_in_i_valid_1_q, xout => redist54_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist55_sync_in_aunroll_x_in_i_valid_3(DELAY,2736)
    redist55_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist54_sync_in_aunroll_x_in_i_valid_2_q, xout => redist55_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist56_sync_in_aunroll_x_in_i_valid_4(DELAY,2737)
    redist56_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist55_sync_in_aunroll_x_in_i_valid_3_q, xout => redist56_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist57_sync_in_aunroll_x_in_i_valid_5(DELAY,2738)
    redist57_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist56_sync_in_aunroll_x_in_i_valid_4_q, xout => redist57_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist58_sync_in_aunroll_x_in_i_valid_6(DELAY,2739)
    redist58_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist57_sync_in_aunroll_x_in_i_valid_5_q, xout => redist58_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- redist59_sync_in_aunroll_x_in_i_valid_7(DELAY,2740)
    redist59_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist58_sync_in_aunroll_x_in_i_valid_6_q, xout => redist59_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- redist60_sync_in_aunroll_x_in_i_valid_8(DELAY,2741)
    redist60_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist59_sync_in_aunroll_x_in_i_valid_7_q, xout => redist60_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- redist61_sync_in_aunroll_x_in_i_valid_9(DELAY,2742)
    redist61_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist60_sync_in_aunroll_x_in_i_valid_8_q, xout => redist61_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- redist62_sync_in_aunroll_x_in_i_valid_10(DELAY,2743)
    redist62_sync_in_aunroll_x_in_i_valid_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist61_sync_in_aunroll_x_in_i_valid_9_q, xout => redist62_sync_in_aunroll_x_in_i_valid_10_q, clk => clock, aclr => resetn );

    -- redist63_sync_in_aunroll_x_in_i_valid_11(DELAY,2744)
    redist63_sync_in_aunroll_x_in_i_valid_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist62_sync_in_aunroll_x_in_i_valid_10_q, xout => redist63_sync_in_aunroll_x_in_i_valid_11_q, clk => clock, aclr => resetn );

    -- redist64_sync_in_aunroll_x_in_i_valid_12(DELAY,2745)
    redist64_sync_in_aunroll_x_in_i_valid_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist63_sync_in_aunroll_x_in_i_valid_11_q, xout => redist64_sync_in_aunroll_x_in_i_valid_12_q, clk => clock, aclr => resetn );

    -- redist65_sync_in_aunroll_x_in_i_valid_13(DELAY,2746)
    redist65_sync_in_aunroll_x_in_i_valid_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist64_sync_in_aunroll_x_in_i_valid_12_q, xout => redist65_sync_in_aunroll_x_in_i_valid_13_q, clk => clock, aclr => resetn );

    -- redist66_sync_in_aunroll_x_in_i_valid_17(DELAY,2747)
    redist66_sync_in_aunroll_x_in_i_valid_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist65_sync_in_aunroll_x_in_i_valid_13_q, xout => redist66_sync_in_aunroll_x_in_i_valid_17_q, clk => clock, aclr => resetn );

    -- redist67_sync_in_aunroll_x_in_i_valid_21(DELAY,2748)
    redist67_sync_in_aunroll_x_in_i_valid_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist66_sync_in_aunroll_x_in_i_valid_17_q, xout => redist67_sync_in_aunroll_x_in_i_valid_21_q, clk => clock, aclr => resetn );

    -- redist68_sync_in_aunroll_x_in_i_valid_30(DELAY,2749)
    redist68_sync_in_aunroll_x_in_i_valid_30 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist67_sync_in_aunroll_x_in_i_valid_21_q, xout => redist68_sync_in_aunroll_x_in_i_valid_30_q, clk => clock, aclr => resetn );

    -- redist69_sync_in_aunroll_x_in_i_valid_32(DELAY,2750)
    redist69_sync_in_aunroll_x_in_i_valid_32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist68_sync_in_aunroll_x_in_i_valid_30_q, xout => redist69_sync_in_aunroll_x_in_i_valid_32_q, clk => clock, aclr => resetn );

    -- redist70_sync_in_aunroll_x_in_i_valid_33(DELAY,2751)
    redist70_sync_in_aunroll_x_in_i_valid_33 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist69_sync_in_aunroll_x_in_i_valid_32_q, xout => redist70_sync_in_aunroll_x_in_i_valid_33_q, clk => clock, aclr => resetn );

    -- i_or_cond4_xor_conv1x1(LOGICAL,631)@34
    i_or_cond4_xor_conv1x1_q <= i_or_cond4_conv1x1_q xor VCC_q;

    -- i_cmp106_neg77_or_conv1x1(LOGICAL,541)@34
    i_cmp106_neg77_or_conv1x1_q <= i_cmp106_neg77_rm_conv1x1_c or i_or_cond4_xor_conv1x1_q;

    -- i_cmp9_phi_decision80_xor_or_conv1x1(LOGICAL,545)@34
    i_cmp9_phi_decision80_xor_or_conv1x1_q <= i_cmp106_neg77_or_conv1x1_q or i_cmp9_phi_decision80_xor_rm_conv1x1_c;

    -- c_i32_1gr(CONSTANT,520)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_syncbuf_output_size_sync_buffer_conv1x1(BLACKBOX,635)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_output_size_sync_buffer_conv1x1 : i_syncbuf_output_size_sync_buffer_conv1x1273
    PORT MAP (
        in_buffer_in => in_output_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist69_sync_in_aunroll_x_in_i_valid_32_q,
        out_buffer_out => i_syncbuf_output_size_sync_buffer_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp9_phi_decision80_xor_rm_conv1x1(COMPARE,546)@33 + 1
    i_cmp9_phi_decision80_xor_rm_conv1x1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_output_size_sync_buffer_conv1x1_out_buffer_out(31)) & i_syncbuf_output_size_sync_buffer_conv1x1_out_buffer_out));
    i_cmp9_phi_decision80_xor_rm_conv1x1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_cmp9_phi_decision80_xor_rm_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp9_phi_decision80_xor_rm_conv1x1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp9_phi_decision80_xor_rm_conv1x1_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp9_phi_decision80_xor_rm_conv1x1_a) - SIGNED(i_cmp9_phi_decision80_xor_rm_conv1x1_b));
        END IF;
    END PROCESS;
    i_cmp9_phi_decision80_xor_rm_conv1x1_c(0) <= i_cmp9_phi_decision80_xor_rm_conv1x1_o(33);

    -- i_syncbuf_input_channels_sync_buffer_conv1x1(BLACKBOX,633)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_input_channels_sync_buffer_conv1x1 : i_syncbuf_input_channels_sync_buffer_conv1x1270
    PORT MAP (
        in_buffer_in => in_input_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist69_sync_in_aunroll_x_in_i_valid_32_q,
        out_buffer_out => i_syncbuf_input_channels_sync_buffer_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp106_neg77_rm_conv1x1(COMPARE,542)@33 + 1
    i_cmp106_neg77_rm_conv1x1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_input_channels_sync_buffer_conv1x1_out_buffer_out(31)) & i_syncbuf_input_channels_sync_buffer_conv1x1_out_buffer_out));
    i_cmp106_neg77_rm_conv1x1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_cmp106_neg77_rm_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp106_neg77_rm_conv1x1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp106_neg77_rm_conv1x1_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp106_neg77_rm_conv1x1_a) - SIGNED(i_cmp106_neg77_rm_conv1x1_b));
        END IF;
    END PROCESS;
    i_cmp106_neg77_rm_conv1x1_c(0) <= i_cmp106_neg77_rm_conv1x1_o(33);

    -- i_syncbuf_input_size_sync_buffer79_conv1x1(BLACKBOX,634)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_input_size_sync_buffer79_conv1x1 : i_syncbuf_input_size_sync_buffer79_conv1x1267
    PORT MAP (
        in_buffer_in => in_input_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist69_sync_in_aunroll_x_in_i_valid_32_q,
        out_buffer_out => i_syncbuf_input_size_sync_buffer79_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_syncbuf_pad_sync_buffer_conv1x1(BLACKBOX,636)@0
    -- in in_i_dependence@31
    -- in in_valid_in@31
    -- out out_buffer_out@31
    -- out out_valid_out@31
    thei_syncbuf_pad_sync_buffer_conv1x1 : i_syncbuf_pad_sync_buffer_conv1x1264
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist68_sync_in_aunroll_x_in_i_valid_30_q,
        out_buffer_out => i_syncbuf_pad_sync_buffer_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage4Idx1Rng1_uid878_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(BITSELECT,877)@22
    leftShiftStage4Idx1Rng1_uid878_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in <= leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q(30 downto 0);
    leftShiftStage4Idx1Rng1_uid878_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b <= leftShiftStage4Idx1Rng1_uid878_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in(30 downto 0);

    -- leftShiftStage4Idx1_uid879_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(BITJOIN,878)@22
    leftShiftStage4Idx1_uid879_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage4Idx1Rng1_uid878_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b & GND_q;

    -- leftShiftStage3Idx1Rng2_uid873_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(BITSELECT,872)@22
    leftShiftStage3Idx1Rng2_uid873_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in <= leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q(29 downto 0);
    leftShiftStage3Idx1Rng2_uid873_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b <= leftShiftStage3Idx1Rng2_uid873_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in(29 downto 0);

    -- i_mul16_add10_conv1x1_vt_const_1(CONSTANT,548)
    i_mul16_add10_conv1x1_vt_const_1_q <= "00";

    -- leftShiftStage3Idx1_uid874_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(BITJOIN,873)@22
    leftShiftStage3Idx1_uid874_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage3Idx1Rng2_uid873_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage2Idx1Rng4_uid868_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(BITSELECT,867)@22
    leftShiftStage2Idx1Rng4_uid868_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in <= leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid868_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b <= leftShiftStage2Idx1Rng4_uid868_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in(27 downto 0);

    -- i_unnamed_conv1x1228_vt_const_3(CONSTANT,763)
    i_unnamed_conv1x1228_vt_const_3_q <= "0000";

    -- leftShiftStage2Idx1_uid869_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(BITJOIN,868)@22
    leftShiftStage2Idx1_uid869_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage2Idx1Rng4_uid868_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid863_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(BITSELECT,862)@22
    leftShiftStage1Idx1Rng8_uid863_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in <= leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid863_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b <= leftShiftStage1Idx1Rng8_uid863_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in(23 downto 0);

    -- i_unnamed_conv1x1196_vt_const_7(CONSTANT,739)
    i_unnamed_conv1x1196_vt_const_7_q <= "00000000";

    -- leftShiftStage1Idx1_uid864_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(BITJOIN,863)@22
    leftShiftStage1Idx1_uid864_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage1Idx1Rng8_uid863_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid858_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(BITSELECT,857)@22
    leftShiftStage0Idx1Rng16_uid858_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in <= i_syncbuf_stride_sync_buffer_conv1x1_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid858_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b <= leftShiftStage0Idx1Rng16_uid858_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_in(15 downto 0);

    -- i_unnamed_conv1x1132_vt_const_15(CONSTANT,691)
    i_unnamed_conv1x1132_vt_const_15_q <= "0000000000000000";

    -- leftShiftStage0Idx1_uid859_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(BITJOIN,858)@22
    leftShiftStage0Idx1_uid859_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage0Idx1Rng16_uid858_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer_conv1x1(BLACKBOX,666)@0
    -- in in_i_dependence@22
    -- in in_valid_in@22
    -- out out_buffer_out@22
    -- out out_valid_out@22
    thei_syncbuf_stride_sync_buffer_conv1x1 : i_syncbuf_stride_sync_buffer_conv1x1260
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist67_sync_in_aunroll_x_in_i_valid_21_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(MUX,860)@22
    leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s <= VCC_q;
    leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_combproc: PROCESS (leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s, i_syncbuf_stride_sync_buffer_conv1x1_out_buffer_out, leftShiftStage0Idx1_uid859_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= i_syncbuf_stride_sync_buffer_conv1x1_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage0Idx1_uid859_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(MUX,865)@22
    leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s <= VCC_q;
    leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_combproc: PROCESS (leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s, leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q, leftShiftStage1Idx1_uid864_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage0_uid861_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q;
            WHEN "1" => leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage1Idx1_uid864_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(MUX,870)@22
    leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s <= VCC_q;
    leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_combproc: PROCESS (leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s, leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q, leftShiftStage2Idx1_uid869_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage1_uid866_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q;
            WHEN "1" => leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage2Idx1_uid869_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(MUX,875)@22
    leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s <= VCC_q;
    leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_combproc: PROCESS (leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s, leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q, leftShiftStage3Idx1_uid874_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage2_uid871_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q;
            WHEN "1" => leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage3Idx1_uid874_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x(MUX,880)@22
    leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s <= VCC_q;
    leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_combproc: PROCESS (leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s, leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q, leftShiftStage4Idx1_uid879_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q)
    BEGIN
        CASE (leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_s) IS
            WHEN "0" => leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage3_uid876_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q;
            WHEN "1" => leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= leftShiftStage4Idx1_uid879_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q;
            WHEN OTHERS => leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked6163_conv1x1_vt_select_31(BITSELECT,626)@22
    i_mul16_masked6163_conv1x1_vt_select_31_b <= leftShiftStage4_uid881_i_mul16_masked6163_conv1x1_conv1x1262_shift_x_q(31 downto 31);

    -- i_mul16_masked6163_conv1x1_vt_join(BITJOIN,625)@22
    i_mul16_masked6163_conv1x1_vt_join_q <= i_mul16_masked6163_conv1x1_vt_select_31_b & i_mul16_masked6163_conv1x1_vt_const_30_q;

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_notEnable(LOGICAL,2820)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_nor(LOGICAL,2821)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_nor_q <= not (redist51_sync_in_aunroll_x_in_c0_eni2_1_21_notEnable_q or redist51_sync_in_aunroll_x_in_c0_eni2_1_21_sticky_ena_q);

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_last(CONSTANT,2817)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_last_q <= "011";

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_cmp(LOGICAL,2818)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_cmp_q <= "1" WHEN redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_last_q = redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_q ELSE "0";

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_cmpReg(REG,2819)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist51_sync_in_aunroll_x_in_c0_eni2_1_21_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist51_sync_in_aunroll_x_in_c0_eni2_1_21_cmpReg_q <= STD_LOGIC_VECTOR(redist51_sync_in_aunroll_x_in_c0_eni2_1_21_cmp_q);
        END IF;
    END PROCESS;

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_sticky_ena(REG,2822)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist51_sync_in_aunroll_x_in_c0_eni2_1_21_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist51_sync_in_aunroll_x_in_c0_eni2_1_21_nor_q = "1") THEN
                redist51_sync_in_aunroll_x_in_c0_eni2_1_21_sticky_ena_q <= STD_LOGIC_VECTOR(redist51_sync_in_aunroll_x_in_c0_eni2_1_21_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_enaAnd(LOGICAL,2823)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_enaAnd_q <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_sticky_ena_q and VCC_q;

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt(COUNTER,2815)
    -- low=0, high=4, step=1, init=0
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_eq <= '1';
            ELSE
                redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_eq <= '0';
            END IF;
            IF (redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_eq = '1') THEN
                redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_i <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_i + 4;
            ELSE
                redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_i <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_i, 3)));

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_notEnable(LOGICAL,2808)
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_nor(LOGICAL,2809)
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_nor_q <= not (redist50_sync_in_aunroll_x_in_c0_eni2_1_13_notEnable_q or redist50_sync_in_aunroll_x_in_c0_eni2_1_13_sticky_ena_q);

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_last(CONSTANT,2805)
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_last_q <= "01001";

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmp(LOGICAL,2806)
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmp_b <= STD_LOGIC_VECTOR("0" & redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_q);
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmp_q <= "1" WHEN redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_last_q = redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmp_b ELSE "0";

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmpReg(REG,2807)
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmpReg_q <= STD_LOGIC_VECTOR(redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmp_q);
        END IF;
    END PROCESS;

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_sticky_ena(REG,2810)
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist50_sync_in_aunroll_x_in_c0_eni2_1_13_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist50_sync_in_aunroll_x_in_c0_eni2_1_13_nor_q = "1") THEN
                redist50_sync_in_aunroll_x_in_c0_eni2_1_13_sticky_ena_q <= STD_LOGIC_VECTOR(redist50_sync_in_aunroll_x_in_c0_eni2_1_13_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_enaAnd(LOGICAL,2811)
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_enaAnd_q <= redist50_sync_in_aunroll_x_in_c0_eni2_1_13_sticky_ena_q and VCC_q;

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt(COUNTER,2803)
    -- low=0, high=10, step=1, init=0
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_i = TO_UNSIGNED(9, 4)) THEN
                redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_eq <= '1';
            ELSE
                redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_eq <= '0';
            END IF;
            IF (redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_eq = '1') THEN
                redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_i <= redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_i + 6;
            ELSE
                redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_i <= redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_i, 4)));

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_wraddr(REG,2804)
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist50_sync_in_aunroll_x_in_c0_eni2_1_13_wraddr_q <= "1010";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist50_sync_in_aunroll_x_in_c0_eni2_1_13_wraddr_q <= STD_LOGIC_VECTOR(redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem(DUALMEM,2802)
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni2_1);
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_aa <= redist50_sync_in_aunroll_x_in_c0_eni2_1_13_wraddr_q;
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_ab <= redist50_sync_in_aunroll_x_in_c0_eni2_1_13_rdcnt_q;
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_reset0 <= not (resetn);
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 11,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 11,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist50_sync_in_aunroll_x_in_c0_eni2_1_13_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_reset0,
        clock1 => clock,
        address_a => redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_aa,
        data_a => redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_ab,
        q_b => redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_iq
    );
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_q <= redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_iq(31 downto 0);

    -- redist50_sync_in_aunroll_x_in_c0_eni2_1_13_outputreg(DELAY,2801)
    redist50_sync_in_aunroll_x_in_c0_eni2_1_13_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist50_sync_in_aunroll_x_in_c0_eni2_1_13_mem_q, xout => redist50_sync_in_aunroll_x_in_c0_eni2_1_13_outputreg_q, clk => clock, aclr => resetn );

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_inputreg(DELAY,2812)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist50_sync_in_aunroll_x_in_c0_eni2_1_13_outputreg_q, xout => redist51_sync_in_aunroll_x_in_c0_eni2_1_21_inputreg_q, clk => clock, aclr => resetn );

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_wraddr(REG,2816)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist51_sync_in_aunroll_x_in_c0_eni2_1_21_wraddr_q <= "100";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist51_sync_in_aunroll_x_in_c0_eni2_1_21_wraddr_q <= STD_LOGIC_VECTOR(redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem(DUALMEM,2814)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_ia <= STD_LOGIC_VECTOR(redist51_sync_in_aunroll_x_in_c0_eni2_1_21_inputreg_q);
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_aa <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_wraddr_q;
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_ab <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_rdcnt_q;
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_reset0 <= not (resetn);
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 5,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist51_sync_in_aunroll_x_in_c0_eni2_1_21_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_reset0,
        clock1 => clock,
        address_a => redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_aa,
        data_a => redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_ab,
        q_b => redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_iq
    );
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_q <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_iq(31 downto 0);

    -- redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg(DELAY,2813)
    redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist51_sync_in_aunroll_x_in_c0_eni2_1_21_mem_q, xout => redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1263(LOGICAL,787)@22
    i_unnamed_conv1x1263_q <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q and i_mul16_masked6163_conv1x1_vt_join_q;

    -- i_unnamed_conv1x1263_vt_select_31(BITSELECT,790)@22
    i_unnamed_conv1x1263_vt_select_31_b <= i_unnamed_conv1x1263_q(31 downto 31);

    -- redist18_i_unnamed_conv1x1263_vt_select_31_b_8(DELAY,2699)
    redist18_i_unnamed_conv1x1263_vt_select_31_b_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1263_vt_select_31_b, xout => redist18_i_unnamed_conv1x1263_vt_select_31_b_8_q, clk => clock, aclr => resetn );

    -- i_mul16_masked6163_conv1x1_vt_const_30(CONSTANT,624)
    i_mul16_masked6163_conv1x1_vt_const_30_q <= "0000000000000000000000000000000";

    -- i_unnamed_conv1x1263_vt_join(BITJOIN,789)@30
    i_unnamed_conv1x1263_vt_join_q <= redist18_i_unnamed_conv1x1263_vt_select_31_b_8_q & i_mul16_masked6163_conv1x1_vt_const_30_q;

    -- leftShiftStage3Idx1Rng2_uid2098_i_unnamed_conv1x1259_shift_x(BITSELECT,2097)@22
    leftShiftStage3Idx1Rng2_uid2098_i_unnamed_conv1x1259_shift_x_in <= leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_q(29 downto 0);
    leftShiftStage3Idx1Rng2_uid2098_i_unnamed_conv1x1259_shift_x_b <= leftShiftStage3Idx1Rng2_uid2098_i_unnamed_conv1x1259_shift_x_in(29 downto 0);

    -- leftShiftStage3Idx1_uid2099_i_unnamed_conv1x1259_shift_x(BITJOIN,2098)@22
    leftShiftStage3Idx1_uid2099_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage3Idx1Rng2_uid2098_i_unnamed_conv1x1259_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage2Idx1Rng4_uid2093_i_unnamed_conv1x1259_shift_x(BITSELECT,2092)@22
    leftShiftStage2Idx1Rng4_uid2093_i_unnamed_conv1x1259_shift_x_in <= leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid2093_i_unnamed_conv1x1259_shift_x_b <= leftShiftStage2Idx1Rng4_uid2093_i_unnamed_conv1x1259_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid2094_i_unnamed_conv1x1259_shift_x(BITJOIN,2093)@22
    leftShiftStage2Idx1_uid2094_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage2Idx1Rng4_uid2093_i_unnamed_conv1x1259_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid2088_i_unnamed_conv1x1259_shift_x(BITSELECT,2087)@22
    leftShiftStage1Idx1Rng8_uid2088_i_unnamed_conv1x1259_shift_x_in <= leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid2088_i_unnamed_conv1x1259_shift_x_b <= leftShiftStage1Idx1Rng8_uid2088_i_unnamed_conv1x1259_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid2089_i_unnamed_conv1x1259_shift_x(BITJOIN,2088)@22
    leftShiftStage1Idx1_uid2089_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage1Idx1Rng8_uid2088_i_unnamed_conv1x1259_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid2083_i_unnamed_conv1x1259_shift_x(BITSELECT,2082)@22
    leftShiftStage0Idx1Rng16_uid2083_i_unnamed_conv1x1259_shift_x_in <= i_mul16_masked59_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2083_i_unnamed_conv1x1259_shift_x_b <= leftShiftStage0Idx1Rng16_uid2083_i_unnamed_conv1x1259_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2084_i_unnamed_conv1x1259_shift_x(BITJOIN,2083)@22
    leftShiftStage0Idx1_uid2084_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage0Idx1Rng16_uid2083_i_unnamed_conv1x1259_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer95_conv1x1(BLACKBOX,661)@0
    -- in in_i_dependence@22
    -- in in_valid_in@22
    -- out out_buffer_out@22
    -- out out_valid_out@22
    thei_syncbuf_stride_sync_buffer95_conv1x1 : i_syncbuf_stride_sync_buffer95_conv1x1256
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist67_sync_in_aunroll_x_in_i_valid_21_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer95_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0Idx1Rng1_uid2046_i_unnamed_conv1x1253_shift_x(BITSELECT,2045)@22
    leftShiftStage0Idx1Rng1_uid2046_i_unnamed_conv1x1253_shift_x_in <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid2046_i_unnamed_conv1x1253_shift_x_b <= leftShiftStage0Idx1Rng1_uid2046_i_unnamed_conv1x1253_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid2047_i_unnamed_conv1x1253_shift_x(BITJOIN,2046)@22
    leftShiftStage0Idx1_uid2047_i_unnamed_conv1x1253_shift_x_q <= leftShiftStage0Idx1Rng1_uid2046_i_unnamed_conv1x1253_shift_x_b & GND_q;

    -- leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x(MUX,2048)@22
    leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x_s <= VCC_q;
    leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x_combproc: PROCESS (leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x_s, redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q, leftShiftStage0Idx1_uid2047_i_unnamed_conv1x1253_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x_q <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q;
            WHEN "1" => leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x_q <= leftShiftStage0Idx1_uid2047_i_unnamed_conv1x1253_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1252_vt_select_31(BITSELECT,783)@22
    i_unnamed_conv1x1252_vt_select_31_b <= leftShiftStage0_uid2049_i_unnamed_conv1x1253_shift_x_q(31 downto 1);

    -- i_unnamed_conv1x1252_vt_join(BITJOIN,782)@22
    i_unnamed_conv1x1252_vt_join_q <= i_unnamed_conv1x1252_vt_select_31_b & GND_q;

    -- xMSB_uid2052_i_unnamed_conv1x1255_shift_x(BITSELECT,2051)@22
    xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1252_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2074_i_unnamed_conv1x1255_shift_x(BITSELECT,2073)@22
    rightShiftStage4Idx1Rng1_uid2074_i_unnamed_conv1x1255_shift_x_b <= rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2075_i_unnamed_conv1x1255_shift_x(BITJOIN,2074)@22
    rightShiftStage4Idx1_uid2075_i_unnamed_conv1x1255_shift_x_q <= xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b & rightShiftStage4Idx1Rng1_uid2074_i_unnamed_conv1x1255_shift_x_b;

    -- seMsb_to2_uid2069(BITSELECT,2068)@22
    seMsb_to2_uid2069_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b(0)) & xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b));
    seMsb_to2_uid2069_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2069_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2070_i_unnamed_conv1x1255_shift_x(BITSELECT,2069)@22
    rightShiftStage3Idx1Rng2_uid2070_i_unnamed_conv1x1255_shift_x_b <= rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2071_i_unnamed_conv1x1255_shift_x(BITJOIN,2070)@22
    rightShiftStage3Idx1_uid2071_i_unnamed_conv1x1255_shift_x_q <= seMsb_to2_uid2069_b & rightShiftStage3Idx1Rng2_uid2070_i_unnamed_conv1x1255_shift_x_b;

    -- seMsb_to4_uid2064(BITSELECT,2063)@22
    seMsb_to4_uid2064_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b(0)) & xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b));
    seMsb_to4_uid2064_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2064_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2065_i_unnamed_conv1x1255_shift_x(BITSELECT,2064)@22
    rightShiftStage2Idx1Rng4_uid2065_i_unnamed_conv1x1255_shift_x_b <= rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2066_i_unnamed_conv1x1255_shift_x(BITJOIN,2065)@22
    rightShiftStage2Idx1_uid2066_i_unnamed_conv1x1255_shift_x_q <= seMsb_to4_uid2064_b & rightShiftStage2Idx1Rng4_uid2065_i_unnamed_conv1x1255_shift_x_b;

    -- seMsb_to8_uid2059(BITSELECT,2058)@22
    seMsb_to8_uid2059_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b(0)) & xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b));
    seMsb_to8_uid2059_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2059_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2060_i_unnamed_conv1x1255_shift_x(BITSELECT,2059)@22
    rightShiftStage1Idx1Rng8_uid2060_i_unnamed_conv1x1255_shift_x_b <= rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2061_i_unnamed_conv1x1255_shift_x(BITJOIN,2060)@22
    rightShiftStage1Idx1_uid2061_i_unnamed_conv1x1255_shift_x_q <= seMsb_to8_uid2059_b & rightShiftStage1Idx1Rng8_uid2060_i_unnamed_conv1x1255_shift_x_b;

    -- seMsb_to16_uid2054(BITSELECT,2053)@22
    seMsb_to16_uid2054_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b(0)) & xMSB_uid2052_i_unnamed_conv1x1255_shift_x_b));
    seMsb_to16_uid2054_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2054_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2055_i_unnamed_conv1x1255_shift_x(BITSELECT,2054)@22
    rightShiftStage0Idx1Rng16_uid2055_i_unnamed_conv1x1255_shift_x_b <= i_unnamed_conv1x1252_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2056_i_unnamed_conv1x1255_shift_x(BITJOIN,2055)@22
    rightShiftStage0Idx1_uid2056_i_unnamed_conv1x1255_shift_x_q <= seMsb_to16_uid2054_b & rightShiftStage0Idx1Rng16_uid2055_i_unnamed_conv1x1255_shift_x_b;

    -- rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x(MUX,2057)@22
    rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_s <= VCC_q;
    rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_combproc: PROCESS (rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_s, i_unnamed_conv1x1252_vt_join_q, rightShiftStage0Idx1_uid2056_i_unnamed_conv1x1255_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_q <= i_unnamed_conv1x1252_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_q <= rightShiftStage0Idx1_uid2056_i_unnamed_conv1x1255_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x(MUX,2062)@22
    rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_s <= VCC_q;
    rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_combproc: PROCESS (rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_s, rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_q, rightShiftStage1Idx1_uid2061_i_unnamed_conv1x1255_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_q <= rightShiftStage0_uid2058_i_unnamed_conv1x1255_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_q <= rightShiftStage1Idx1_uid2061_i_unnamed_conv1x1255_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x(MUX,2067)@22
    rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_s <= VCC_q;
    rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_combproc: PROCESS (rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_s, rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_q, rightShiftStage2Idx1_uid2066_i_unnamed_conv1x1255_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_q <= rightShiftStage1_uid2063_i_unnamed_conv1x1255_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_q <= rightShiftStage2Idx1_uid2066_i_unnamed_conv1x1255_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x(MUX,2072)@22
    rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_s <= VCC_q;
    rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_combproc: PROCESS (rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_s, rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_q, rightShiftStage3Idx1_uid2071_i_unnamed_conv1x1255_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_q <= rightShiftStage2_uid2068_i_unnamed_conv1x1255_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_q <= rightShiftStage3Idx1_uid2071_i_unnamed_conv1x1255_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x(MUX,2076)@22
    rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x_s <= VCC_q;
    rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x_combproc: PROCESS (rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x_s, rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_q, rightShiftStage4Idx1_uid2075_i_unnamed_conv1x1255_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x_q <= rightShiftStage3_uid2073_i_unnamed_conv1x1255_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x_q <= rightShiftStage4Idx1_uid2075_i_unnamed_conv1x1255_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked59_conv1x1(LOGICAL,622)@22
    i_mul16_masked59_conv1x1_q <= rightShiftStage4_uid2077_i_unnamed_conv1x1255_shift_x_q and i_syncbuf_stride_sync_buffer95_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x(MUX,2085)@22
    leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_s <= VCC_q;
    leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_combproc: PROCESS (leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_s, i_mul16_masked59_conv1x1_q, leftShiftStage0Idx1_uid2084_i_unnamed_conv1x1259_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_q <= i_mul16_masked59_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage0Idx1_uid2084_i_unnamed_conv1x1259_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x(MUX,2090)@22
    leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_s <= VCC_q;
    leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_combproc: PROCESS (leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_s, leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_q, leftShiftStage1Idx1_uid2089_i_unnamed_conv1x1259_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage0_uid2086_i_unnamed_conv1x1259_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage1Idx1_uid2089_i_unnamed_conv1x1259_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x(MUX,2095)@22
    leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_s <= VCC_q;
    leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_combproc: PROCESS (leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_s, leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_q, leftShiftStage2Idx1_uid2094_i_unnamed_conv1x1259_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage1_uid2091_i_unnamed_conv1x1259_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage2Idx1_uid2094_i_unnamed_conv1x1259_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x(MUX,2100)@22
    leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x_s <= VCC_q;
    leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x_combproc: PROCESS (leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x_s, leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_q, leftShiftStage3Idx1_uid2099_i_unnamed_conv1x1259_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage2_uid2096_i_unnamed_conv1x1259_shift_x_q;
            WHEN "1" => leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x_q <= leftShiftStage3Idx1_uid2099_i_unnamed_conv1x1259_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1258_vt_select_31(BITSELECT,786)@22
    i_unnamed_conv1x1258_vt_select_31_b <= leftShiftStage3_uid2101_i_unnamed_conv1x1259_shift_x_q(31 downto 30);

    -- redist19_i_unnamed_conv1x1258_vt_select_31_b_7(DELAY,2700)
    redist19_i_unnamed_conv1x1258_vt_select_31_b_7 : dspba_delay
    GENERIC MAP ( width => 2, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1258_vt_select_31_b, xout => redist19_i_unnamed_conv1x1258_vt_select_31_b_7_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1258_vt_const_29(CONSTANT,784)
    i_unnamed_conv1x1258_vt_const_29_q <= "000000000000000000000000000000";

    -- i_unnamed_conv1x1258_vt_join(BITJOIN,785)@29
    i_unnamed_conv1x1258_vt_join_q <= redist19_i_unnamed_conv1x1258_vt_select_31_b_7_q & i_unnamed_conv1x1258_vt_const_29_q;

    -- leftShiftStage3Idx1Rng1_uid2037_i_unnamed_conv1x1251_shift_x(BITSELECT,2036)@22
    leftShiftStage3Idx1Rng1_uid2037_i_unnamed_conv1x1251_shift_x_in <= leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid2037_i_unnamed_conv1x1251_shift_x_b <= leftShiftStage3Idx1Rng1_uid2037_i_unnamed_conv1x1251_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid2038_i_unnamed_conv1x1251_shift_x(BITJOIN,2037)@22
    leftShiftStage3Idx1_uid2038_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage3Idx1Rng1_uid2037_i_unnamed_conv1x1251_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng4_uid2032_i_unnamed_conv1x1251_shift_x(BITSELECT,2031)@22
    leftShiftStage2Idx1Rng4_uid2032_i_unnamed_conv1x1251_shift_x_in <= leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid2032_i_unnamed_conv1x1251_shift_x_b <= leftShiftStage2Idx1Rng4_uid2032_i_unnamed_conv1x1251_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid2033_i_unnamed_conv1x1251_shift_x(BITJOIN,2032)@22
    leftShiftStage2Idx1_uid2033_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage2Idx1Rng4_uid2032_i_unnamed_conv1x1251_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid2027_i_unnamed_conv1x1251_shift_x(BITSELECT,2026)@22
    leftShiftStage1Idx1Rng8_uid2027_i_unnamed_conv1x1251_shift_x_in <= leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid2027_i_unnamed_conv1x1251_shift_x_b <= leftShiftStage1Idx1Rng8_uid2027_i_unnamed_conv1x1251_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid2028_i_unnamed_conv1x1251_shift_x(BITJOIN,2027)@22
    leftShiftStage1Idx1_uid2028_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage1Idx1Rng8_uid2027_i_unnamed_conv1x1251_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid2022_i_unnamed_conv1x1251_shift_x(BITSELECT,2021)@22
    leftShiftStage0Idx1Rng16_uid2022_i_unnamed_conv1x1251_shift_x_in <= i_mul16_masked57_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2022_i_unnamed_conv1x1251_shift_x_b <= leftShiftStage0Idx1Rng16_uid2022_i_unnamed_conv1x1251_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2023_i_unnamed_conv1x1251_shift_x(BITJOIN,2022)@22
    leftShiftStage0Idx1_uid2023_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage0Idx1Rng16_uid2022_i_unnamed_conv1x1251_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer96_conv1x1(BLACKBOX,662)@0
    -- in in_i_dependence@22
    -- in in_valid_in@22
    -- out out_buffer_out@22
    -- out out_valid_out@22
    thei_syncbuf_stride_sync_buffer96_conv1x1 : i_syncbuf_stride_sync_buffer96_conv1x1248
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist67_sync_in_aunroll_x_in_i_valid_21_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer96_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0Idx1Rng2_uid1924_i_unnamed_conv1x1237_shift_x(BITSELECT,1923)@22
    leftShiftStage0Idx1Rng2_uid1924_i_unnamed_conv1x1237_shift_x_in <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q(29 downto 0);
    leftShiftStage0Idx1Rng2_uid1924_i_unnamed_conv1x1237_shift_x_b <= leftShiftStage0Idx1Rng2_uid1924_i_unnamed_conv1x1237_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid1925_i_unnamed_conv1x1237_shift_x(BITJOIN,1924)@22
    leftShiftStage0Idx1_uid1925_i_unnamed_conv1x1237_shift_x_q <= leftShiftStage0Idx1Rng2_uid1924_i_unnamed_conv1x1237_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x(MUX,1926)@22
    leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_s <= VCC_q;
    leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_combproc: PROCESS (leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_s, redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q, leftShiftStage0Idx1_uid1925_i_unnamed_conv1x1237_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_q <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q;
            WHEN "1" => leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_q <= leftShiftStage0Idx1_uid1925_i_unnamed_conv1x1237_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1244_vt_select_31(BITSELECT,777)@22
    i_unnamed_conv1x1244_vt_select_31_b <= leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_q(31 downto 2);

    -- i_unnamed_conv1x1244_vt_join(BITJOIN,776)@22
    i_unnamed_conv1x1244_vt_join_q <= i_unnamed_conv1x1244_vt_select_31_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- xMSB_uid1991_i_unnamed_conv1x1247_shift_x(BITSELECT,1990)@22
    xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1244_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2013_i_unnamed_conv1x1247_shift_x(BITSELECT,2012)@22
    rightShiftStage4Idx1Rng1_uid2013_i_unnamed_conv1x1247_shift_x_b <= rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2014_i_unnamed_conv1x1247_shift_x(BITJOIN,2013)@22
    rightShiftStage4Idx1_uid2014_i_unnamed_conv1x1247_shift_x_q <= xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b & rightShiftStage4Idx1Rng1_uid2013_i_unnamed_conv1x1247_shift_x_b;

    -- seMsb_to2_uid2008(BITSELECT,2007)@22
    seMsb_to2_uid2008_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b(0)) & xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b));
    seMsb_to2_uid2008_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2008_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2009_i_unnamed_conv1x1247_shift_x(BITSELECT,2008)@22
    rightShiftStage3Idx1Rng2_uid2009_i_unnamed_conv1x1247_shift_x_b <= rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2010_i_unnamed_conv1x1247_shift_x(BITJOIN,2009)@22
    rightShiftStage3Idx1_uid2010_i_unnamed_conv1x1247_shift_x_q <= seMsb_to2_uid2008_b & rightShiftStage3Idx1Rng2_uid2009_i_unnamed_conv1x1247_shift_x_b;

    -- seMsb_to4_uid2003(BITSELECT,2002)@22
    seMsb_to4_uid2003_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b(0)) & xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b));
    seMsb_to4_uid2003_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2003_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2004_i_unnamed_conv1x1247_shift_x(BITSELECT,2003)@22
    rightShiftStage2Idx1Rng4_uid2004_i_unnamed_conv1x1247_shift_x_b <= rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2005_i_unnamed_conv1x1247_shift_x(BITJOIN,2004)@22
    rightShiftStage2Idx1_uid2005_i_unnamed_conv1x1247_shift_x_q <= seMsb_to4_uid2003_b & rightShiftStage2Idx1Rng4_uid2004_i_unnamed_conv1x1247_shift_x_b;

    -- seMsb_to8_uid1998(BITSELECT,1997)@22
    seMsb_to8_uid1998_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b(0)) & xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b));
    seMsb_to8_uid1998_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1998_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1999_i_unnamed_conv1x1247_shift_x(BITSELECT,1998)@22
    rightShiftStage1Idx1Rng8_uid1999_i_unnamed_conv1x1247_shift_x_b <= rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2000_i_unnamed_conv1x1247_shift_x(BITJOIN,1999)@22
    rightShiftStage1Idx1_uid2000_i_unnamed_conv1x1247_shift_x_q <= seMsb_to8_uid1998_b & rightShiftStage1Idx1Rng8_uid1999_i_unnamed_conv1x1247_shift_x_b;

    -- seMsb_to16_uid1993(BITSELECT,1992)@22
    seMsb_to16_uid1993_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b(0)) & xMSB_uid1991_i_unnamed_conv1x1247_shift_x_b));
    seMsb_to16_uid1993_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1993_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1994_i_unnamed_conv1x1247_shift_x(BITSELECT,1993)@22
    rightShiftStage0Idx1Rng16_uid1994_i_unnamed_conv1x1247_shift_x_b <= i_unnamed_conv1x1244_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1995_i_unnamed_conv1x1247_shift_x(BITJOIN,1994)@22
    rightShiftStage0Idx1_uid1995_i_unnamed_conv1x1247_shift_x_q <= seMsb_to16_uid1993_b & rightShiftStage0Idx1Rng16_uid1994_i_unnamed_conv1x1247_shift_x_b;

    -- rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x(MUX,1996)@22
    rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_s <= VCC_q;
    rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_combproc: PROCESS (rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_s, i_unnamed_conv1x1244_vt_join_q, rightShiftStage0Idx1_uid1995_i_unnamed_conv1x1247_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_q <= i_unnamed_conv1x1244_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_q <= rightShiftStage0Idx1_uid1995_i_unnamed_conv1x1247_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x(MUX,2001)@22
    rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_s <= VCC_q;
    rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_combproc: PROCESS (rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_s, rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_q, rightShiftStage1Idx1_uid2000_i_unnamed_conv1x1247_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_q <= rightShiftStage0_uid1997_i_unnamed_conv1x1247_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_q <= rightShiftStage1Idx1_uid2000_i_unnamed_conv1x1247_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x(MUX,2006)@22
    rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_s <= VCC_q;
    rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_combproc: PROCESS (rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_s, rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_q, rightShiftStage2Idx1_uid2005_i_unnamed_conv1x1247_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_q <= rightShiftStage1_uid2002_i_unnamed_conv1x1247_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_q <= rightShiftStage2Idx1_uid2005_i_unnamed_conv1x1247_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x(MUX,2011)@22
    rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_s <= VCC_q;
    rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_combproc: PROCESS (rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_s, rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_q, rightShiftStage3Idx1_uid2010_i_unnamed_conv1x1247_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_q <= rightShiftStage2_uid2007_i_unnamed_conv1x1247_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_q <= rightShiftStage3Idx1_uid2010_i_unnamed_conv1x1247_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x(MUX,2015)@22
    rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x_s <= VCC_q;
    rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x_combproc: PROCESS (rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x_s, rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_q, rightShiftStage4Idx1_uid2014_i_unnamed_conv1x1247_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x_q <= rightShiftStage3_uid2012_i_unnamed_conv1x1247_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x_q <= rightShiftStage4Idx1_uid2014_i_unnamed_conv1x1247_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked57_conv1x1(LOGICAL,621)@22
    i_mul16_masked57_conv1x1_q <= rightShiftStage4_uid2016_i_unnamed_conv1x1247_shift_x_q and i_syncbuf_stride_sync_buffer96_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x(MUX,2024)@22
    leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_s <= VCC_q;
    leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_combproc: PROCESS (leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_s, i_mul16_masked57_conv1x1_q, leftShiftStage0Idx1_uid2023_i_unnamed_conv1x1251_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_q <= i_mul16_masked57_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage0Idx1_uid2023_i_unnamed_conv1x1251_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x(MUX,2029)@22
    leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_s <= VCC_q;
    leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_combproc: PROCESS (leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_s, leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_q, leftShiftStage1Idx1_uid2028_i_unnamed_conv1x1251_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage0_uid2025_i_unnamed_conv1x1251_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage1Idx1_uid2028_i_unnamed_conv1x1251_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x(MUX,2034)@22
    leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_s <= VCC_q;
    leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_combproc: PROCESS (leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_s, leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_q, leftShiftStage2Idx1_uid2033_i_unnamed_conv1x1251_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage1_uid2030_i_unnamed_conv1x1251_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage2Idx1_uid2033_i_unnamed_conv1x1251_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x(MUX,2039)@22
    leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x_s <= VCC_q;
    leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x_combproc: PROCESS (leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x_s, leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_q, leftShiftStage3Idx1_uid2038_i_unnamed_conv1x1251_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage2_uid2035_i_unnamed_conv1x1251_shift_x_q;
            WHEN "1" => leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x_q <= leftShiftStage3Idx1_uid2038_i_unnamed_conv1x1251_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1250_vt_select_31(BITSELECT,780)@22
    i_unnamed_conv1x1250_vt_select_31_b <= leftShiftStage3_uid2040_i_unnamed_conv1x1251_shift_x_q(31 downto 29);

    -- redist20_i_unnamed_conv1x1250_vt_select_31_b_6(DELAY,2701)
    redist20_i_unnamed_conv1x1250_vt_select_31_b_6 : dspba_delay
    GENERIC MAP ( width => 3, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1250_vt_select_31_b, xout => redist20_i_unnamed_conv1x1250_vt_select_31_b_6_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1250_vt_const_28(CONSTANT,778)
    i_unnamed_conv1x1250_vt_const_28_q <= "00000000000000000000000000000";

    -- i_unnamed_conv1x1250_vt_join(BITJOIN,779)@28
    i_unnamed_conv1x1250_vt_join_q <= redist20_i_unnamed_conv1x1250_vt_select_31_b_6_q & i_unnamed_conv1x1250_vt_const_28_q;

    -- leftShiftStage2Idx1Rng4_uid1976_i_unnamed_conv1x1243_shift_x(BITSELECT,1975)@22
    leftShiftStage2Idx1Rng4_uid1976_i_unnamed_conv1x1243_shift_x_in <= leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid1976_i_unnamed_conv1x1243_shift_x_b <= leftShiftStage2Idx1Rng4_uid1976_i_unnamed_conv1x1243_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid1977_i_unnamed_conv1x1243_shift_x(BITJOIN,1976)@22
    leftShiftStage2Idx1_uid1977_i_unnamed_conv1x1243_shift_x_q <= leftShiftStage2Idx1Rng4_uid1976_i_unnamed_conv1x1243_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid1971_i_unnamed_conv1x1243_shift_x(BITSELECT,1970)@22
    leftShiftStage1Idx1Rng8_uid1971_i_unnamed_conv1x1243_shift_x_in <= leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1971_i_unnamed_conv1x1243_shift_x_b <= leftShiftStage1Idx1Rng8_uid1971_i_unnamed_conv1x1243_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1972_i_unnamed_conv1x1243_shift_x(BITJOIN,1971)@22
    leftShiftStage1Idx1_uid1972_i_unnamed_conv1x1243_shift_x_q <= leftShiftStage1Idx1Rng8_uid1971_i_unnamed_conv1x1243_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1966_i_unnamed_conv1x1243_shift_x(BITSELECT,1965)@22
    leftShiftStage0Idx1Rng16_uid1966_i_unnamed_conv1x1243_shift_x_in <= i_mul16_masked55_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1966_i_unnamed_conv1x1243_shift_x_b <= leftShiftStage0Idx1Rng16_uid1966_i_unnamed_conv1x1243_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1967_i_unnamed_conv1x1243_shift_x(BITJOIN,1966)@22
    leftShiftStage0Idx1_uid1967_i_unnamed_conv1x1243_shift_x_q <= leftShiftStage0Idx1Rng16_uid1966_i_unnamed_conv1x1243_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer97_conv1x1(BLACKBOX,663)@0
    -- in in_i_dependence@22
    -- in in_valid_in@22
    -- out out_buffer_out@22
    -- out out_valid_out@22
    thei_syncbuf_stride_sync_buffer97_conv1x1 : i_syncbuf_stride_sync_buffer97_conv1x1240
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist67_sync_in_aunroll_x_in_i_valid_21_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer97_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng1_uid1929_i_unnamed_conv1x1237_shift_x(BITSELECT,1928)@22
    leftShiftStage1Idx1Rng1_uid1929_i_unnamed_conv1x1237_shift_x_in <= leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1929_i_unnamed_conv1x1237_shift_x_b <= leftShiftStage1Idx1Rng1_uid1929_i_unnamed_conv1x1237_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1930_i_unnamed_conv1x1237_shift_x(BITJOIN,1929)@22
    leftShiftStage1Idx1_uid1930_i_unnamed_conv1x1237_shift_x_q <= leftShiftStage1Idx1Rng1_uid1929_i_unnamed_conv1x1237_shift_x_b & GND_q;

    -- leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x(MUX,1931)@22
    leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x_s <= VCC_q;
    leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x_combproc: PROCESS (leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x_s, leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_q, leftShiftStage1Idx1_uid1930_i_unnamed_conv1x1237_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x_q <= leftShiftStage0_uid1927_i_unnamed_conv1x1237_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x_q <= leftShiftStage1Idx1_uid1930_i_unnamed_conv1x1237_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1236_vt_select_31(BITSELECT,771)@22
    i_unnamed_conv1x1236_vt_select_31_b <= leftShiftStage1_uid1932_i_unnamed_conv1x1237_shift_x_q(31 downto 3);

    -- i_unnamed_conv1x1236_vt_const_2(CONSTANT,769)
    i_unnamed_conv1x1236_vt_const_2_q <= "000";

    -- i_unnamed_conv1x1236_vt_join(BITJOIN,770)@22
    i_unnamed_conv1x1236_vt_join_q <= i_unnamed_conv1x1236_vt_select_31_b & i_unnamed_conv1x1236_vt_const_2_q;

    -- xMSB_uid1935_i_unnamed_conv1x1239_shift_x(BITSELECT,1934)@22
    xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1236_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1957_i_unnamed_conv1x1239_shift_x(BITSELECT,1956)@22
    rightShiftStage4Idx1Rng1_uid1957_i_unnamed_conv1x1239_shift_x_b <= rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1958_i_unnamed_conv1x1239_shift_x(BITJOIN,1957)@22
    rightShiftStage4Idx1_uid1958_i_unnamed_conv1x1239_shift_x_q <= xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b & rightShiftStage4Idx1Rng1_uid1957_i_unnamed_conv1x1239_shift_x_b;

    -- seMsb_to2_uid1952(BITSELECT,1951)@22
    seMsb_to2_uid1952_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b(0)) & xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b));
    seMsb_to2_uid1952_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1952_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1953_i_unnamed_conv1x1239_shift_x(BITSELECT,1952)@22
    rightShiftStage3Idx1Rng2_uid1953_i_unnamed_conv1x1239_shift_x_b <= rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1954_i_unnamed_conv1x1239_shift_x(BITJOIN,1953)@22
    rightShiftStage3Idx1_uid1954_i_unnamed_conv1x1239_shift_x_q <= seMsb_to2_uid1952_b & rightShiftStage3Idx1Rng2_uid1953_i_unnamed_conv1x1239_shift_x_b;

    -- seMsb_to4_uid1947(BITSELECT,1946)@22
    seMsb_to4_uid1947_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b(0)) & xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b));
    seMsb_to4_uid1947_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1947_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1948_i_unnamed_conv1x1239_shift_x(BITSELECT,1947)@22
    rightShiftStage2Idx1Rng4_uid1948_i_unnamed_conv1x1239_shift_x_b <= rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1949_i_unnamed_conv1x1239_shift_x(BITJOIN,1948)@22
    rightShiftStage2Idx1_uid1949_i_unnamed_conv1x1239_shift_x_q <= seMsb_to4_uid1947_b & rightShiftStage2Idx1Rng4_uid1948_i_unnamed_conv1x1239_shift_x_b;

    -- seMsb_to8_uid1942(BITSELECT,1941)@22
    seMsb_to8_uid1942_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b(0)) & xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b));
    seMsb_to8_uid1942_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1942_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1943_i_unnamed_conv1x1239_shift_x(BITSELECT,1942)@22
    rightShiftStage1Idx1Rng8_uid1943_i_unnamed_conv1x1239_shift_x_b <= rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1944_i_unnamed_conv1x1239_shift_x(BITJOIN,1943)@22
    rightShiftStage1Idx1_uid1944_i_unnamed_conv1x1239_shift_x_q <= seMsb_to8_uid1942_b & rightShiftStage1Idx1Rng8_uid1943_i_unnamed_conv1x1239_shift_x_b;

    -- seMsb_to16_uid1937(BITSELECT,1936)@22
    seMsb_to16_uid1937_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b(0)) & xMSB_uid1935_i_unnamed_conv1x1239_shift_x_b));
    seMsb_to16_uid1937_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1937_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1938_i_unnamed_conv1x1239_shift_x(BITSELECT,1937)@22
    rightShiftStage0Idx1Rng16_uid1938_i_unnamed_conv1x1239_shift_x_b <= i_unnamed_conv1x1236_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1939_i_unnamed_conv1x1239_shift_x(BITJOIN,1938)@22
    rightShiftStage0Idx1_uid1939_i_unnamed_conv1x1239_shift_x_q <= seMsb_to16_uid1937_b & rightShiftStage0Idx1Rng16_uid1938_i_unnamed_conv1x1239_shift_x_b;

    -- rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x(MUX,1940)@22
    rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_s <= VCC_q;
    rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_combproc: PROCESS (rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_s, i_unnamed_conv1x1236_vt_join_q, rightShiftStage0Idx1_uid1939_i_unnamed_conv1x1239_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_q <= i_unnamed_conv1x1236_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_q <= rightShiftStage0Idx1_uid1939_i_unnamed_conv1x1239_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x(MUX,1945)@22
    rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_s <= VCC_q;
    rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_combproc: PROCESS (rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_s, rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_q, rightShiftStage1Idx1_uid1944_i_unnamed_conv1x1239_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_q <= rightShiftStage0_uid1941_i_unnamed_conv1x1239_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_q <= rightShiftStage1Idx1_uid1944_i_unnamed_conv1x1239_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x(MUX,1950)@22
    rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_s <= VCC_q;
    rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_combproc: PROCESS (rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_s, rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_q, rightShiftStage2Idx1_uid1949_i_unnamed_conv1x1239_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_q <= rightShiftStage1_uid1946_i_unnamed_conv1x1239_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_q <= rightShiftStage2Idx1_uid1949_i_unnamed_conv1x1239_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x(MUX,1955)@22
    rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_s <= VCC_q;
    rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_combproc: PROCESS (rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_s, rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_q, rightShiftStage3Idx1_uid1954_i_unnamed_conv1x1239_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_q <= rightShiftStage2_uid1951_i_unnamed_conv1x1239_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_q <= rightShiftStage3Idx1_uid1954_i_unnamed_conv1x1239_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x(MUX,1959)@22
    rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x_s <= VCC_q;
    rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x_combproc: PROCESS (rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x_s, rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_q, rightShiftStage4Idx1_uid1958_i_unnamed_conv1x1239_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x_q <= rightShiftStage3_uid1956_i_unnamed_conv1x1239_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x_q <= rightShiftStage4Idx1_uid1958_i_unnamed_conv1x1239_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked55_conv1x1(LOGICAL,620)@22
    i_mul16_masked55_conv1x1_q <= rightShiftStage4_uid1960_i_unnamed_conv1x1239_shift_x_q and i_syncbuf_stride_sync_buffer97_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x(MUX,1968)@22
    leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_s <= VCC_q;
    leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_combproc: PROCESS (leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_s, i_mul16_masked55_conv1x1_q, leftShiftStage0Idx1_uid1967_i_unnamed_conv1x1243_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_q <= i_mul16_masked55_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_q <= leftShiftStage0Idx1_uid1967_i_unnamed_conv1x1243_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x(MUX,1973)@22
    leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_s <= VCC_q;
    leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_combproc: PROCESS (leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_s, leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_q, leftShiftStage1Idx1_uid1972_i_unnamed_conv1x1243_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_q <= leftShiftStage0_uid1969_i_unnamed_conv1x1243_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_q <= leftShiftStage1Idx1_uid1972_i_unnamed_conv1x1243_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x(MUX,1978)@22
    leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x_s <= VCC_q;
    leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x_combproc: PROCESS (leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x_s, leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_q, leftShiftStage2Idx1_uid1977_i_unnamed_conv1x1243_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x_q <= leftShiftStage1_uid1974_i_unnamed_conv1x1243_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x_q <= leftShiftStage2Idx1_uid1977_i_unnamed_conv1x1243_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1242_vt_select_31(BITSELECT,774)@22
    i_unnamed_conv1x1242_vt_select_31_b <= leftShiftStage2_uid1979_i_unnamed_conv1x1243_shift_x_q(31 downto 28);

    -- redist21_i_unnamed_conv1x1242_vt_select_31_b_5(DELAY,2702)
    redist21_i_unnamed_conv1x1242_vt_select_31_b_5 : dspba_delay
    GENERIC MAP ( width => 4, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1242_vt_select_31_b, xout => redist21_i_unnamed_conv1x1242_vt_select_31_b_5_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1242_vt_const_27(CONSTANT,772)
    i_unnamed_conv1x1242_vt_const_27_q <= "0000000000000000000000000000";

    -- i_unnamed_conv1x1242_vt_join(BITJOIN,773)@27
    i_unnamed_conv1x1242_vt_join_q <= redist21_i_unnamed_conv1x1242_vt_select_31_b_5_q & i_unnamed_conv1x1242_vt_const_27_q;

    -- leftShiftStage3Idx1Rng1_uid1915_i_unnamed_conv1x1235_shift_x(BITSELECT,1914)@22
    leftShiftStage3Idx1Rng1_uid1915_i_unnamed_conv1x1235_shift_x_in <= leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid1915_i_unnamed_conv1x1235_shift_x_b <= leftShiftStage3Idx1Rng1_uid1915_i_unnamed_conv1x1235_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid1916_i_unnamed_conv1x1235_shift_x(BITJOIN,1915)@22
    leftShiftStage3Idx1_uid1916_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage3Idx1Rng1_uid1915_i_unnamed_conv1x1235_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid1910_i_unnamed_conv1x1235_shift_x(BITSELECT,1909)@22
    leftShiftStage2Idx1Rng2_uid1910_i_unnamed_conv1x1235_shift_x_in <= leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1910_i_unnamed_conv1x1235_shift_x_b <= leftShiftStage2Idx1Rng2_uid1910_i_unnamed_conv1x1235_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1911_i_unnamed_conv1x1235_shift_x(BITJOIN,1910)@22
    leftShiftStage2Idx1_uid1911_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage2Idx1Rng2_uid1910_i_unnamed_conv1x1235_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage1Idx1Rng8_uid1905_i_unnamed_conv1x1235_shift_x(BITSELECT,1904)@22
    leftShiftStage1Idx1Rng8_uid1905_i_unnamed_conv1x1235_shift_x_in <= leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1905_i_unnamed_conv1x1235_shift_x_b <= leftShiftStage1Idx1Rng8_uid1905_i_unnamed_conv1x1235_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1906_i_unnamed_conv1x1235_shift_x(BITJOIN,1905)@22
    leftShiftStage1Idx1_uid1906_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage1Idx1Rng8_uid1905_i_unnamed_conv1x1235_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1900_i_unnamed_conv1x1235_shift_x(BITSELECT,1899)@22
    leftShiftStage0Idx1Rng16_uid1900_i_unnamed_conv1x1235_shift_x_in <= i_mul16_masked53_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1900_i_unnamed_conv1x1235_shift_x_b <= leftShiftStage0Idx1Rng16_uid1900_i_unnamed_conv1x1235_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1901_i_unnamed_conv1x1235_shift_x(BITJOIN,1900)@22
    leftShiftStage0Idx1_uid1901_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage0Idx1Rng16_uid1900_i_unnamed_conv1x1235_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer98_conv1x1(BLACKBOX,664)@0
    -- in in_i_dependence@22
    -- in in_valid_in@22
    -- out out_buffer_out@22
    -- out out_valid_out@22
    thei_syncbuf_stride_sync_buffer98_conv1x1 : i_syncbuf_stride_sync_buffer98_conv1x1232
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist67_sync_in_aunroll_x_in_i_valid_21_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer98_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0Idx1Rng4_uid1680_i_unnamed_conv1x1205_shift_x(BITSELECT,1679)@22
    leftShiftStage0Idx1Rng4_uid1680_i_unnamed_conv1x1205_shift_x_in <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid1680_i_unnamed_conv1x1205_shift_x_b <= leftShiftStage0Idx1Rng4_uid1680_i_unnamed_conv1x1205_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid1681_i_unnamed_conv1x1205_shift_x(BITJOIN,1680)@22
    leftShiftStage0Idx1_uid1681_i_unnamed_conv1x1205_shift_x_q <= leftShiftStage0Idx1Rng4_uid1680_i_unnamed_conv1x1205_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x(MUX,1682)@22
    leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_s <= VCC_q;
    leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_combproc: PROCESS (leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_s, redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q, leftShiftStage0Idx1_uid1681_i_unnamed_conv1x1205_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q <= redist51_sync_in_aunroll_x_in_c0_eni2_1_21_outputreg_q;
            WHEN "1" => leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q <= leftShiftStage0Idx1_uid1681_i_unnamed_conv1x1205_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1228_vt_select_31(BITSELECT,765)@22
    i_unnamed_conv1x1228_vt_select_31_b <= leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q(31 downto 4);

    -- i_unnamed_conv1x1228_vt_join(BITJOIN,764)@22
    i_unnamed_conv1x1228_vt_join_q <= i_unnamed_conv1x1228_vt_select_31_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- xMSB_uid1869_i_unnamed_conv1x1231_shift_x(BITSELECT,1868)@22
    xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1228_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1891_i_unnamed_conv1x1231_shift_x(BITSELECT,1890)@22
    rightShiftStage4Idx1Rng1_uid1891_i_unnamed_conv1x1231_shift_x_b <= rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1892_i_unnamed_conv1x1231_shift_x(BITJOIN,1891)@22
    rightShiftStage4Idx1_uid1892_i_unnamed_conv1x1231_shift_x_q <= xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b & rightShiftStage4Idx1Rng1_uid1891_i_unnamed_conv1x1231_shift_x_b;

    -- seMsb_to2_uid1886(BITSELECT,1885)@22
    seMsb_to2_uid1886_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b(0)) & xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b));
    seMsb_to2_uid1886_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1886_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1887_i_unnamed_conv1x1231_shift_x(BITSELECT,1886)@22
    rightShiftStage3Idx1Rng2_uid1887_i_unnamed_conv1x1231_shift_x_b <= rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1888_i_unnamed_conv1x1231_shift_x(BITJOIN,1887)@22
    rightShiftStage3Idx1_uid1888_i_unnamed_conv1x1231_shift_x_q <= seMsb_to2_uid1886_b & rightShiftStage3Idx1Rng2_uid1887_i_unnamed_conv1x1231_shift_x_b;

    -- seMsb_to4_uid1881(BITSELECT,1880)@22
    seMsb_to4_uid1881_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b(0)) & xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b));
    seMsb_to4_uid1881_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1881_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1882_i_unnamed_conv1x1231_shift_x(BITSELECT,1881)@22
    rightShiftStage2Idx1Rng4_uid1882_i_unnamed_conv1x1231_shift_x_b <= rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1883_i_unnamed_conv1x1231_shift_x(BITJOIN,1882)@22
    rightShiftStage2Idx1_uid1883_i_unnamed_conv1x1231_shift_x_q <= seMsb_to4_uid1881_b & rightShiftStage2Idx1Rng4_uid1882_i_unnamed_conv1x1231_shift_x_b;

    -- seMsb_to8_uid1876(BITSELECT,1875)@22
    seMsb_to8_uid1876_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b(0)) & xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b));
    seMsb_to8_uid1876_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1876_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1877_i_unnamed_conv1x1231_shift_x(BITSELECT,1876)@22
    rightShiftStage1Idx1Rng8_uid1877_i_unnamed_conv1x1231_shift_x_b <= rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1878_i_unnamed_conv1x1231_shift_x(BITJOIN,1877)@22
    rightShiftStage1Idx1_uid1878_i_unnamed_conv1x1231_shift_x_q <= seMsb_to8_uid1876_b & rightShiftStage1Idx1Rng8_uid1877_i_unnamed_conv1x1231_shift_x_b;

    -- seMsb_to16_uid1871(BITSELECT,1870)@22
    seMsb_to16_uid1871_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b(0)) & xMSB_uid1869_i_unnamed_conv1x1231_shift_x_b));
    seMsb_to16_uid1871_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1871_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1872_i_unnamed_conv1x1231_shift_x(BITSELECT,1871)@22
    rightShiftStage0Idx1Rng16_uid1872_i_unnamed_conv1x1231_shift_x_b <= i_unnamed_conv1x1228_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1873_i_unnamed_conv1x1231_shift_x(BITJOIN,1872)@22
    rightShiftStage0Idx1_uid1873_i_unnamed_conv1x1231_shift_x_q <= seMsb_to16_uid1871_b & rightShiftStage0Idx1Rng16_uid1872_i_unnamed_conv1x1231_shift_x_b;

    -- rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x(MUX,1874)@22
    rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_s <= VCC_q;
    rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_combproc: PROCESS (rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_s, i_unnamed_conv1x1228_vt_join_q, rightShiftStage0Idx1_uid1873_i_unnamed_conv1x1231_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_q <= i_unnamed_conv1x1228_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_q <= rightShiftStage0Idx1_uid1873_i_unnamed_conv1x1231_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x(MUX,1879)@22
    rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_s <= VCC_q;
    rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_combproc: PROCESS (rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_s, rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_q, rightShiftStage1Idx1_uid1878_i_unnamed_conv1x1231_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_q <= rightShiftStage0_uid1875_i_unnamed_conv1x1231_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_q <= rightShiftStage1Idx1_uid1878_i_unnamed_conv1x1231_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x(MUX,1884)@22
    rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_s <= VCC_q;
    rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_combproc: PROCESS (rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_s, rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_q, rightShiftStage2Idx1_uid1883_i_unnamed_conv1x1231_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_q <= rightShiftStage1_uid1880_i_unnamed_conv1x1231_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_q <= rightShiftStage2Idx1_uid1883_i_unnamed_conv1x1231_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x(MUX,1889)@22
    rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_s <= VCC_q;
    rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_combproc: PROCESS (rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_s, rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_q, rightShiftStage3Idx1_uid1888_i_unnamed_conv1x1231_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_q <= rightShiftStage2_uid1885_i_unnamed_conv1x1231_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_q <= rightShiftStage3Idx1_uid1888_i_unnamed_conv1x1231_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x(MUX,1893)@22
    rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x_s <= VCC_q;
    rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x_combproc: PROCESS (rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x_s, rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_q, rightShiftStage4Idx1_uid1892_i_unnamed_conv1x1231_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x_q <= rightShiftStage3_uid1890_i_unnamed_conv1x1231_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x_q <= rightShiftStage4Idx1_uid1892_i_unnamed_conv1x1231_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked53_conv1x1(LOGICAL,619)@22
    i_mul16_masked53_conv1x1_q <= rightShiftStage4_uid1894_i_unnamed_conv1x1231_shift_x_q and i_syncbuf_stride_sync_buffer98_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x(MUX,1902)@22
    leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_s <= VCC_q;
    leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_combproc: PROCESS (leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_s, i_mul16_masked53_conv1x1_q, leftShiftStage0Idx1_uid1901_i_unnamed_conv1x1235_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_q <= i_mul16_masked53_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage0Idx1_uid1901_i_unnamed_conv1x1235_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x(MUX,1907)@22
    leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_s <= VCC_q;
    leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_combproc: PROCESS (leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_s, leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_q, leftShiftStage1Idx1_uid1906_i_unnamed_conv1x1235_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage0_uid1903_i_unnamed_conv1x1235_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage1Idx1_uid1906_i_unnamed_conv1x1235_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x(MUX,1912)@22
    leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_s <= VCC_q;
    leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_combproc: PROCESS (leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_s, leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_q, leftShiftStage2Idx1_uid1911_i_unnamed_conv1x1235_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage1_uid1908_i_unnamed_conv1x1235_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage2Idx1_uid1911_i_unnamed_conv1x1235_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x(MUX,1917)@22
    leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x_s <= VCC_q;
    leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x_combproc: PROCESS (leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x_s, leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_q, leftShiftStage3Idx1_uid1916_i_unnamed_conv1x1235_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage2_uid1913_i_unnamed_conv1x1235_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x_q <= leftShiftStage3Idx1_uid1916_i_unnamed_conv1x1235_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1234_vt_select_31(BITSELECT,768)@22
    i_unnamed_conv1x1234_vt_select_31_b <= leftShiftStage3_uid1918_i_unnamed_conv1x1235_shift_x_q(31 downto 27);

    -- redist22_i_unnamed_conv1x1234_vt_select_31_b_4(DELAY,2703)
    redist22_i_unnamed_conv1x1234_vt_select_31_b_4 : dspba_delay
    GENERIC MAP ( width => 5, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1234_vt_select_31_b, xout => redist22_i_unnamed_conv1x1234_vt_select_31_b_4_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1234_vt_const_26(CONSTANT,766)
    i_unnamed_conv1x1234_vt_const_26_q <= "000000000000000000000000000";

    -- i_unnamed_conv1x1234_vt_join(BITJOIN,767)@26
    i_unnamed_conv1x1234_vt_join_q <= redist22_i_unnamed_conv1x1234_vt_select_31_b_4_q & i_unnamed_conv1x1234_vt_const_26_q;

    -- leftShiftStage2Idx1Rng2_uid1854_i_unnamed_conv1x1227_shift_x(BITSELECT,1853)@22
    leftShiftStage2Idx1Rng2_uid1854_i_unnamed_conv1x1227_shift_x_in <= leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1854_i_unnamed_conv1x1227_shift_x_b <= leftShiftStage2Idx1Rng2_uid1854_i_unnamed_conv1x1227_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1855_i_unnamed_conv1x1227_shift_x(BITJOIN,1854)@22
    leftShiftStage2Idx1_uid1855_i_unnamed_conv1x1227_shift_x_q <= leftShiftStage2Idx1Rng2_uid1854_i_unnamed_conv1x1227_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage1Idx1Rng8_uid1849_i_unnamed_conv1x1227_shift_x(BITSELECT,1848)@22
    leftShiftStage1Idx1Rng8_uid1849_i_unnamed_conv1x1227_shift_x_in <= leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1849_i_unnamed_conv1x1227_shift_x_b <= leftShiftStage1Idx1Rng8_uid1849_i_unnamed_conv1x1227_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1850_i_unnamed_conv1x1227_shift_x(BITJOIN,1849)@22
    leftShiftStage1Idx1_uid1850_i_unnamed_conv1x1227_shift_x_q <= leftShiftStage1Idx1Rng8_uid1849_i_unnamed_conv1x1227_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1844_i_unnamed_conv1x1227_shift_x(BITSELECT,1843)@22
    leftShiftStage0Idx1Rng16_uid1844_i_unnamed_conv1x1227_shift_x_in <= i_mul16_masked51_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1844_i_unnamed_conv1x1227_shift_x_b <= leftShiftStage0Idx1Rng16_uid1844_i_unnamed_conv1x1227_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1845_i_unnamed_conv1x1227_shift_x(BITJOIN,1844)@22
    leftShiftStage0Idx1_uid1845_i_unnamed_conv1x1227_shift_x_q <= leftShiftStage0Idx1Rng16_uid1844_i_unnamed_conv1x1227_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer99_conv1x1(BLACKBOX,665)@0
    -- in in_i_dependence@22
    -- in in_valid_in@22
    -- out out_buffer_out@22
    -- out out_valid_out@22
    thei_syncbuf_stride_sync_buffer99_conv1x1 : i_syncbuf_stride_sync_buffer99_conv1x1224
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist67_sync_in_aunroll_x_in_i_valid_21_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer99_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng1_uid1807_i_unnamed_conv1x1221_shift_x(BITSELECT,1806)@22
    leftShiftStage1Idx1Rng1_uid1807_i_unnamed_conv1x1221_shift_x_in <= leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1807_i_unnamed_conv1x1221_shift_x_b <= leftShiftStage1Idx1Rng1_uid1807_i_unnamed_conv1x1221_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1808_i_unnamed_conv1x1221_shift_x(BITJOIN,1807)@22
    leftShiftStage1Idx1_uid1808_i_unnamed_conv1x1221_shift_x_q <= leftShiftStage1Idx1Rng1_uid1807_i_unnamed_conv1x1221_shift_x_b & GND_q;

    -- leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x(MUX,1809)@22
    leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x_s <= VCC_q;
    leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x_combproc: PROCESS (leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x_s, leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q, leftShiftStage1Idx1_uid1808_i_unnamed_conv1x1221_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x_q <= leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x_q <= leftShiftStage1Idx1_uid1808_i_unnamed_conv1x1221_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1220_vt_select_31(BITSELECT,759)@22
    i_unnamed_conv1x1220_vt_select_31_b <= leftShiftStage1_uid1810_i_unnamed_conv1x1221_shift_x_q(31 downto 5);

    -- i_unnamed_conv1x1220_vt_const_4(CONSTANT,757)
    i_unnamed_conv1x1220_vt_const_4_q <= "00000";

    -- i_unnamed_conv1x1220_vt_join(BITJOIN,758)@22
    i_unnamed_conv1x1220_vt_join_q <= i_unnamed_conv1x1220_vt_select_31_b & i_unnamed_conv1x1220_vt_const_4_q;

    -- xMSB_uid1813_i_unnamed_conv1x1223_shift_x(BITSELECT,1812)@22
    xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1220_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1835_i_unnamed_conv1x1223_shift_x(BITSELECT,1834)@22
    rightShiftStage4Idx1Rng1_uid1835_i_unnamed_conv1x1223_shift_x_b <= rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1836_i_unnamed_conv1x1223_shift_x(BITJOIN,1835)@22
    rightShiftStage4Idx1_uid1836_i_unnamed_conv1x1223_shift_x_q <= xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b & rightShiftStage4Idx1Rng1_uid1835_i_unnamed_conv1x1223_shift_x_b;

    -- seMsb_to2_uid1830(BITSELECT,1829)@22
    seMsb_to2_uid1830_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b(0)) & xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b));
    seMsb_to2_uid1830_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1830_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1831_i_unnamed_conv1x1223_shift_x(BITSELECT,1830)@22
    rightShiftStage3Idx1Rng2_uid1831_i_unnamed_conv1x1223_shift_x_b <= rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1832_i_unnamed_conv1x1223_shift_x(BITJOIN,1831)@22
    rightShiftStage3Idx1_uid1832_i_unnamed_conv1x1223_shift_x_q <= seMsb_to2_uid1830_b & rightShiftStage3Idx1Rng2_uid1831_i_unnamed_conv1x1223_shift_x_b;

    -- seMsb_to4_uid1825(BITSELECT,1824)@22
    seMsb_to4_uid1825_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b(0)) & xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b));
    seMsb_to4_uid1825_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1825_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1826_i_unnamed_conv1x1223_shift_x(BITSELECT,1825)@22
    rightShiftStage2Idx1Rng4_uid1826_i_unnamed_conv1x1223_shift_x_b <= rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1827_i_unnamed_conv1x1223_shift_x(BITJOIN,1826)@22
    rightShiftStage2Idx1_uid1827_i_unnamed_conv1x1223_shift_x_q <= seMsb_to4_uid1825_b & rightShiftStage2Idx1Rng4_uid1826_i_unnamed_conv1x1223_shift_x_b;

    -- seMsb_to8_uid1820(BITSELECT,1819)@22
    seMsb_to8_uid1820_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b(0)) & xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b));
    seMsb_to8_uid1820_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1820_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1821_i_unnamed_conv1x1223_shift_x(BITSELECT,1820)@22
    rightShiftStage1Idx1Rng8_uid1821_i_unnamed_conv1x1223_shift_x_b <= rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1822_i_unnamed_conv1x1223_shift_x(BITJOIN,1821)@22
    rightShiftStage1Idx1_uid1822_i_unnamed_conv1x1223_shift_x_q <= seMsb_to8_uid1820_b & rightShiftStage1Idx1Rng8_uid1821_i_unnamed_conv1x1223_shift_x_b;

    -- seMsb_to16_uid1815(BITSELECT,1814)@22
    seMsb_to16_uid1815_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b(0)) & xMSB_uid1813_i_unnamed_conv1x1223_shift_x_b));
    seMsb_to16_uid1815_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1815_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1816_i_unnamed_conv1x1223_shift_x(BITSELECT,1815)@22
    rightShiftStage0Idx1Rng16_uid1816_i_unnamed_conv1x1223_shift_x_b <= i_unnamed_conv1x1220_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1817_i_unnamed_conv1x1223_shift_x(BITJOIN,1816)@22
    rightShiftStage0Idx1_uid1817_i_unnamed_conv1x1223_shift_x_q <= seMsb_to16_uid1815_b & rightShiftStage0Idx1Rng16_uid1816_i_unnamed_conv1x1223_shift_x_b;

    -- rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x(MUX,1818)@22
    rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_s <= VCC_q;
    rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_combproc: PROCESS (rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_s, i_unnamed_conv1x1220_vt_join_q, rightShiftStage0Idx1_uid1817_i_unnamed_conv1x1223_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_q <= i_unnamed_conv1x1220_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_q <= rightShiftStage0Idx1_uid1817_i_unnamed_conv1x1223_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x(MUX,1823)@22
    rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_s <= VCC_q;
    rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_combproc: PROCESS (rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_s, rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_q, rightShiftStage1Idx1_uid1822_i_unnamed_conv1x1223_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_q <= rightShiftStage0_uid1819_i_unnamed_conv1x1223_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_q <= rightShiftStage1Idx1_uid1822_i_unnamed_conv1x1223_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x(MUX,1828)@22
    rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_s <= VCC_q;
    rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_combproc: PROCESS (rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_s, rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_q, rightShiftStage2Idx1_uid1827_i_unnamed_conv1x1223_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_q <= rightShiftStage1_uid1824_i_unnamed_conv1x1223_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_q <= rightShiftStage2Idx1_uid1827_i_unnamed_conv1x1223_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x(MUX,1833)@22
    rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_s <= VCC_q;
    rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_combproc: PROCESS (rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_s, rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_q, rightShiftStage3Idx1_uid1832_i_unnamed_conv1x1223_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_q <= rightShiftStage2_uid1829_i_unnamed_conv1x1223_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_q <= rightShiftStage3Idx1_uid1832_i_unnamed_conv1x1223_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x(MUX,1837)@22
    rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x_s <= VCC_q;
    rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x_combproc: PROCESS (rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x_s, rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_q, rightShiftStage4Idx1_uid1836_i_unnamed_conv1x1223_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x_q <= rightShiftStage3_uid1834_i_unnamed_conv1x1223_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x_q <= rightShiftStage4Idx1_uid1836_i_unnamed_conv1x1223_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked51_conv1x1(LOGICAL,618)@22
    i_mul16_masked51_conv1x1_q <= rightShiftStage4_uid1838_i_unnamed_conv1x1223_shift_x_q and i_syncbuf_stride_sync_buffer99_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x(MUX,1846)@22
    leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_s <= VCC_q;
    leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_combproc: PROCESS (leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_s, i_mul16_masked51_conv1x1_q, leftShiftStage0Idx1_uid1845_i_unnamed_conv1x1227_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_q <= i_mul16_masked51_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_q <= leftShiftStage0Idx1_uid1845_i_unnamed_conv1x1227_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x(MUX,1851)@22
    leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_s <= VCC_q;
    leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_combproc: PROCESS (leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_s, leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_q, leftShiftStage1Idx1_uid1850_i_unnamed_conv1x1227_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_q <= leftShiftStage0_uid1847_i_unnamed_conv1x1227_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_q <= leftShiftStage1Idx1_uid1850_i_unnamed_conv1x1227_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x(MUX,1856)@22
    leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x_s <= VCC_q;
    leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x_combproc: PROCESS (leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x_s, leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_q, leftShiftStage2Idx1_uid1855_i_unnamed_conv1x1227_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x_q <= leftShiftStage1_uid1852_i_unnamed_conv1x1227_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x_q <= leftShiftStage2Idx1_uid1855_i_unnamed_conv1x1227_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1226_vt_select_31(BITSELECT,762)@22
    i_unnamed_conv1x1226_vt_select_31_b <= leftShiftStage2_uid1857_i_unnamed_conv1x1227_shift_x_q(31 downto 26);

    -- redist23_i_unnamed_conv1x1226_vt_select_31_b_3(DELAY,2704)
    redist23_i_unnamed_conv1x1226_vt_select_31_b_3 : dspba_delay
    GENERIC MAP ( width => 6, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1226_vt_select_31_b, xout => redist23_i_unnamed_conv1x1226_vt_select_31_b_3_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1226_vt_const_25(CONSTANT,760)
    i_unnamed_conv1x1226_vt_const_25_q <= "00000000000000000000000000";

    -- i_unnamed_conv1x1226_vt_join(BITJOIN,761)@25
    i_unnamed_conv1x1226_vt_join_q <= redist23_i_unnamed_conv1x1226_vt_select_31_b_3_q & i_unnamed_conv1x1226_vt_const_25_q;

    -- leftShiftStage2Idx1Rng1_uid1793_i_unnamed_conv1x1219_shift_x(BITSELECT,1792)@22
    leftShiftStage2Idx1Rng1_uid1793_i_unnamed_conv1x1219_shift_x_in <= leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1793_i_unnamed_conv1x1219_shift_x_b <= leftShiftStage2Idx1Rng1_uid1793_i_unnamed_conv1x1219_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1794_i_unnamed_conv1x1219_shift_x(BITJOIN,1793)@22
    leftShiftStage2Idx1_uid1794_i_unnamed_conv1x1219_shift_x_q <= leftShiftStage2Idx1Rng1_uid1793_i_unnamed_conv1x1219_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng8_uid1788_i_unnamed_conv1x1219_shift_x(BITSELECT,1787)@22
    leftShiftStage1Idx1Rng8_uid1788_i_unnamed_conv1x1219_shift_x_in <= leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1788_i_unnamed_conv1x1219_shift_x_b <= leftShiftStage1Idx1Rng8_uid1788_i_unnamed_conv1x1219_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1789_i_unnamed_conv1x1219_shift_x(BITJOIN,1788)@22
    leftShiftStage1Idx1_uid1789_i_unnamed_conv1x1219_shift_x_q <= leftShiftStage1Idx1Rng8_uid1788_i_unnamed_conv1x1219_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1783_i_unnamed_conv1x1219_shift_x(BITSELECT,1782)@22
    leftShiftStage0Idx1Rng16_uid1783_i_unnamed_conv1x1219_shift_x_in <= i_mul16_masked49_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1783_i_unnamed_conv1x1219_shift_x_b <= leftShiftStage0Idx1Rng16_uid1783_i_unnamed_conv1x1219_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1784_i_unnamed_conv1x1219_shift_x(BITJOIN,1783)@22
    leftShiftStage0Idx1_uid1784_i_unnamed_conv1x1219_shift_x_q <= leftShiftStage0Idx1Rng16_uid1783_i_unnamed_conv1x1219_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer100_conv1x1(BLACKBOX,637)@0
    -- in in_i_dependence@22
    -- in in_valid_in@22
    -- out out_buffer_out@22
    -- out out_valid_out@22
    thei_syncbuf_stride_sync_buffer100_conv1x1 : i_syncbuf_stride_sync_buffer100_conv1x1216
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist67_sync_in_aunroll_x_in_i_valid_21_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer100_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng2_uid1685_i_unnamed_conv1x1205_shift_x(BITSELECT,1684)@22
    leftShiftStage1Idx1Rng2_uid1685_i_unnamed_conv1x1205_shift_x_in <= leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1685_i_unnamed_conv1x1205_shift_x_b <= leftShiftStage1Idx1Rng2_uid1685_i_unnamed_conv1x1205_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1686_i_unnamed_conv1x1205_shift_x(BITJOIN,1685)@22
    leftShiftStage1Idx1_uid1686_i_unnamed_conv1x1205_shift_x_q <= leftShiftStage1Idx1Rng2_uid1685_i_unnamed_conv1x1205_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x(MUX,1687)@22
    leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_s <= VCC_q;
    leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_combproc: PROCESS (leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_s, leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q, leftShiftStage1Idx1_uid1686_i_unnamed_conv1x1205_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_q <= leftShiftStage0_uid1683_i_unnamed_conv1x1205_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_q <= leftShiftStage1Idx1_uid1686_i_unnamed_conv1x1205_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1212_vt_select_31(BITSELECT,753)@22
    i_unnamed_conv1x1212_vt_select_31_b <= leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_q(31 downto 6);

    -- i_unnamed_conv1x1212_vt_const_5(CONSTANT,751)
    i_unnamed_conv1x1212_vt_const_5_q <= "000000";

    -- i_unnamed_conv1x1212_vt_join(BITJOIN,752)@22
    i_unnamed_conv1x1212_vt_join_q <= i_unnamed_conv1x1212_vt_select_31_b & i_unnamed_conv1x1212_vt_const_5_q;

    -- xMSB_uid1752_i_unnamed_conv1x1215_shift_x(BITSELECT,1751)@22
    xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1212_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1774_i_unnamed_conv1x1215_shift_x(BITSELECT,1773)@22
    rightShiftStage4Idx1Rng1_uid1774_i_unnamed_conv1x1215_shift_x_b <= rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1775_i_unnamed_conv1x1215_shift_x(BITJOIN,1774)@22
    rightShiftStage4Idx1_uid1775_i_unnamed_conv1x1215_shift_x_q <= xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b & rightShiftStage4Idx1Rng1_uid1774_i_unnamed_conv1x1215_shift_x_b;

    -- seMsb_to2_uid1769(BITSELECT,1768)@22
    seMsb_to2_uid1769_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b(0)) & xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b));
    seMsb_to2_uid1769_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1769_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1770_i_unnamed_conv1x1215_shift_x(BITSELECT,1769)@22
    rightShiftStage3Idx1Rng2_uid1770_i_unnamed_conv1x1215_shift_x_b <= rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1771_i_unnamed_conv1x1215_shift_x(BITJOIN,1770)@22
    rightShiftStage3Idx1_uid1771_i_unnamed_conv1x1215_shift_x_q <= seMsb_to2_uid1769_b & rightShiftStage3Idx1Rng2_uid1770_i_unnamed_conv1x1215_shift_x_b;

    -- seMsb_to4_uid1764(BITSELECT,1763)@22
    seMsb_to4_uid1764_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b(0)) & xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b));
    seMsb_to4_uid1764_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1764_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1765_i_unnamed_conv1x1215_shift_x(BITSELECT,1764)@22
    rightShiftStage2Idx1Rng4_uid1765_i_unnamed_conv1x1215_shift_x_b <= rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1766_i_unnamed_conv1x1215_shift_x(BITJOIN,1765)@22
    rightShiftStage2Idx1_uid1766_i_unnamed_conv1x1215_shift_x_q <= seMsb_to4_uid1764_b & rightShiftStage2Idx1Rng4_uid1765_i_unnamed_conv1x1215_shift_x_b;

    -- seMsb_to8_uid1759(BITSELECT,1758)@22
    seMsb_to8_uid1759_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b(0)) & xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b));
    seMsb_to8_uid1759_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1759_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1760_i_unnamed_conv1x1215_shift_x(BITSELECT,1759)@22
    rightShiftStage1Idx1Rng8_uid1760_i_unnamed_conv1x1215_shift_x_b <= rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1761_i_unnamed_conv1x1215_shift_x(BITJOIN,1760)@22
    rightShiftStage1Idx1_uid1761_i_unnamed_conv1x1215_shift_x_q <= seMsb_to8_uid1759_b & rightShiftStage1Idx1Rng8_uid1760_i_unnamed_conv1x1215_shift_x_b;

    -- seMsb_to16_uid1754(BITSELECT,1753)@22
    seMsb_to16_uid1754_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b(0)) & xMSB_uid1752_i_unnamed_conv1x1215_shift_x_b));
    seMsb_to16_uid1754_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1754_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1755_i_unnamed_conv1x1215_shift_x(BITSELECT,1754)@22
    rightShiftStage0Idx1Rng16_uid1755_i_unnamed_conv1x1215_shift_x_b <= i_unnamed_conv1x1212_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1756_i_unnamed_conv1x1215_shift_x(BITJOIN,1755)@22
    rightShiftStage0Idx1_uid1756_i_unnamed_conv1x1215_shift_x_q <= seMsb_to16_uid1754_b & rightShiftStage0Idx1Rng16_uid1755_i_unnamed_conv1x1215_shift_x_b;

    -- rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x(MUX,1757)@22
    rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_s <= VCC_q;
    rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_combproc: PROCESS (rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_s, i_unnamed_conv1x1212_vt_join_q, rightShiftStage0Idx1_uid1756_i_unnamed_conv1x1215_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_q <= i_unnamed_conv1x1212_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_q <= rightShiftStage0Idx1_uid1756_i_unnamed_conv1x1215_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x(MUX,1762)@22
    rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_s <= VCC_q;
    rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_combproc: PROCESS (rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_s, rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_q, rightShiftStage1Idx1_uid1761_i_unnamed_conv1x1215_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_q <= rightShiftStage0_uid1758_i_unnamed_conv1x1215_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_q <= rightShiftStage1Idx1_uid1761_i_unnamed_conv1x1215_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x(MUX,1767)@22
    rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_s <= VCC_q;
    rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_combproc: PROCESS (rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_s, rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_q, rightShiftStage2Idx1_uid1766_i_unnamed_conv1x1215_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_q <= rightShiftStage1_uid1763_i_unnamed_conv1x1215_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_q <= rightShiftStage2Idx1_uid1766_i_unnamed_conv1x1215_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x(MUX,1772)@22
    rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_s <= VCC_q;
    rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_combproc: PROCESS (rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_s, rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_q, rightShiftStage3Idx1_uid1771_i_unnamed_conv1x1215_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_q <= rightShiftStage2_uid1768_i_unnamed_conv1x1215_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_q <= rightShiftStage3Idx1_uid1771_i_unnamed_conv1x1215_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x(MUX,1776)@22
    rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x_s <= VCC_q;
    rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x_combproc: PROCESS (rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x_s, rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_q, rightShiftStage4Idx1_uid1775_i_unnamed_conv1x1215_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x_q <= rightShiftStage3_uid1773_i_unnamed_conv1x1215_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x_q <= rightShiftStage4Idx1_uid1775_i_unnamed_conv1x1215_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked49_conv1x1(LOGICAL,617)@22
    i_mul16_masked49_conv1x1_q <= rightShiftStage4_uid1777_i_unnamed_conv1x1215_shift_x_q and i_syncbuf_stride_sync_buffer100_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x(MUX,1785)@22
    leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_s <= VCC_q;
    leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_combproc: PROCESS (leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_s, i_mul16_masked49_conv1x1_q, leftShiftStage0Idx1_uid1784_i_unnamed_conv1x1219_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_q <= i_mul16_masked49_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_q <= leftShiftStage0Idx1_uid1784_i_unnamed_conv1x1219_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x(MUX,1790)@22
    leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_s <= VCC_q;
    leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_combproc: PROCESS (leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_s, leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_q, leftShiftStage1Idx1_uid1789_i_unnamed_conv1x1219_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_q <= leftShiftStage0_uid1786_i_unnamed_conv1x1219_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_q <= leftShiftStage1Idx1_uid1789_i_unnamed_conv1x1219_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x(MUX,1795)@22
    leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x_s <= VCC_q;
    leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x_combproc: PROCESS (leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x_s, leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_q, leftShiftStage2Idx1_uid1794_i_unnamed_conv1x1219_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x_q <= leftShiftStage1_uid1791_i_unnamed_conv1x1219_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x_q <= leftShiftStage2Idx1_uid1794_i_unnamed_conv1x1219_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1218_vt_select_31(BITSELECT,756)@22
    i_unnamed_conv1x1218_vt_select_31_b <= leftShiftStage2_uid1796_i_unnamed_conv1x1219_shift_x_q(31 downto 25);

    -- redist24_i_unnamed_conv1x1218_vt_select_31_b_2(DELAY,2705)
    redist24_i_unnamed_conv1x1218_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1218_vt_select_31_b, xout => redist24_i_unnamed_conv1x1218_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1218_vt_const_24(CONSTANT,754)
    i_unnamed_conv1x1218_vt_const_24_q <= "0000000000000000000000000";

    -- i_unnamed_conv1x1218_vt_join(BITJOIN,755)@24
    i_unnamed_conv1x1218_vt_join_q <= redist24_i_unnamed_conv1x1218_vt_select_31_b_2_q & i_unnamed_conv1x1218_vt_const_24_q;

    -- leftShiftStage1Idx1Rng8_uid1732_i_unnamed_conv1x1211_shift_x(BITSELECT,1731)@22
    leftShiftStage1Idx1Rng8_uid1732_i_unnamed_conv1x1211_shift_x_in <= leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1732_i_unnamed_conv1x1211_shift_x_b <= leftShiftStage1Idx1Rng8_uid1732_i_unnamed_conv1x1211_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1733_i_unnamed_conv1x1211_shift_x(BITJOIN,1732)@22
    leftShiftStage1Idx1_uid1733_i_unnamed_conv1x1211_shift_x_q <= leftShiftStage1Idx1Rng8_uid1732_i_unnamed_conv1x1211_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1727_i_unnamed_conv1x1211_shift_x(BITSELECT,1726)@22
    leftShiftStage0Idx1Rng16_uid1727_i_unnamed_conv1x1211_shift_x_in <= i_mul16_masked47_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1727_i_unnamed_conv1x1211_shift_x_b <= leftShiftStage0Idx1Rng16_uid1727_i_unnamed_conv1x1211_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1728_i_unnamed_conv1x1211_shift_x(BITJOIN,1727)@22
    leftShiftStage0Idx1_uid1728_i_unnamed_conv1x1211_shift_x_q <= leftShiftStage0Idx1Rng16_uid1727_i_unnamed_conv1x1211_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer101_conv1x1(BLACKBOX,638)@0
    -- in in_i_dependence@22
    -- in in_valid_in@22
    -- out out_buffer_out@22
    -- out out_valid_out@22
    thei_syncbuf_stride_sync_buffer101_conv1x1 : i_syncbuf_stride_sync_buffer101_conv1x1208
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist67_sync_in_aunroll_x_in_i_valid_21_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer101_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng1_uid1690_i_unnamed_conv1x1205_shift_x(BITSELECT,1689)@22
    leftShiftStage2Idx1Rng1_uid1690_i_unnamed_conv1x1205_shift_x_in <= leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1690_i_unnamed_conv1x1205_shift_x_b <= leftShiftStage2Idx1Rng1_uid1690_i_unnamed_conv1x1205_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1691_i_unnamed_conv1x1205_shift_x(BITJOIN,1690)@22
    leftShiftStage2Idx1_uid1691_i_unnamed_conv1x1205_shift_x_q <= leftShiftStage2Idx1Rng1_uid1690_i_unnamed_conv1x1205_shift_x_b & GND_q;

    -- leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x(MUX,1692)@22
    leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x_s <= VCC_q;
    leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x_combproc: PROCESS (leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x_s, leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_q, leftShiftStage2Idx1_uid1691_i_unnamed_conv1x1205_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x_q <= leftShiftStage1_uid1688_i_unnamed_conv1x1205_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x_q <= leftShiftStage2Idx1_uid1691_i_unnamed_conv1x1205_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1204_vt_select_31(BITSELECT,747)@22
    i_unnamed_conv1x1204_vt_select_31_b <= leftShiftStage2_uid1693_i_unnamed_conv1x1205_shift_x_q(31 downto 7);

    -- i_unnamed_conv1x1204_vt_const_6(CONSTANT,745)
    i_unnamed_conv1x1204_vt_const_6_q <= "0000000";

    -- i_unnamed_conv1x1204_vt_join(BITJOIN,746)@22
    i_unnamed_conv1x1204_vt_join_q <= i_unnamed_conv1x1204_vt_select_31_b & i_unnamed_conv1x1204_vt_const_6_q;

    -- xMSB_uid1696_i_unnamed_conv1x1207_shift_x(BITSELECT,1695)@22
    xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1204_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1718_i_unnamed_conv1x1207_shift_x(BITSELECT,1717)@22
    rightShiftStage4Idx1Rng1_uid1718_i_unnamed_conv1x1207_shift_x_b <= rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1719_i_unnamed_conv1x1207_shift_x(BITJOIN,1718)@22
    rightShiftStage4Idx1_uid1719_i_unnamed_conv1x1207_shift_x_q <= xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b & rightShiftStage4Idx1Rng1_uid1718_i_unnamed_conv1x1207_shift_x_b;

    -- seMsb_to2_uid1713(BITSELECT,1712)@22
    seMsb_to2_uid1713_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b(0)) & xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b));
    seMsb_to2_uid1713_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1713_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1714_i_unnamed_conv1x1207_shift_x(BITSELECT,1713)@22
    rightShiftStage3Idx1Rng2_uid1714_i_unnamed_conv1x1207_shift_x_b <= rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1715_i_unnamed_conv1x1207_shift_x(BITJOIN,1714)@22
    rightShiftStage3Idx1_uid1715_i_unnamed_conv1x1207_shift_x_q <= seMsb_to2_uid1713_b & rightShiftStage3Idx1Rng2_uid1714_i_unnamed_conv1x1207_shift_x_b;

    -- seMsb_to4_uid1708(BITSELECT,1707)@22
    seMsb_to4_uid1708_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b(0)) & xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b));
    seMsb_to4_uid1708_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1708_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1709_i_unnamed_conv1x1207_shift_x(BITSELECT,1708)@22
    rightShiftStage2Idx1Rng4_uid1709_i_unnamed_conv1x1207_shift_x_b <= rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1710_i_unnamed_conv1x1207_shift_x(BITJOIN,1709)@22
    rightShiftStage2Idx1_uid1710_i_unnamed_conv1x1207_shift_x_q <= seMsb_to4_uid1708_b & rightShiftStage2Idx1Rng4_uid1709_i_unnamed_conv1x1207_shift_x_b;

    -- seMsb_to8_uid1703(BITSELECT,1702)@22
    seMsb_to8_uid1703_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b(0)) & xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b));
    seMsb_to8_uid1703_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1703_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1704_i_unnamed_conv1x1207_shift_x(BITSELECT,1703)@22
    rightShiftStage1Idx1Rng8_uid1704_i_unnamed_conv1x1207_shift_x_b <= rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1705_i_unnamed_conv1x1207_shift_x(BITJOIN,1704)@22
    rightShiftStage1Idx1_uid1705_i_unnamed_conv1x1207_shift_x_q <= seMsb_to8_uid1703_b & rightShiftStage1Idx1Rng8_uid1704_i_unnamed_conv1x1207_shift_x_b;

    -- seMsb_to16_uid1698(BITSELECT,1697)@22
    seMsb_to16_uid1698_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b(0)) & xMSB_uid1696_i_unnamed_conv1x1207_shift_x_b));
    seMsb_to16_uid1698_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1698_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1699_i_unnamed_conv1x1207_shift_x(BITSELECT,1698)@22
    rightShiftStage0Idx1Rng16_uid1699_i_unnamed_conv1x1207_shift_x_b <= i_unnamed_conv1x1204_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1700_i_unnamed_conv1x1207_shift_x(BITJOIN,1699)@22
    rightShiftStage0Idx1_uid1700_i_unnamed_conv1x1207_shift_x_q <= seMsb_to16_uid1698_b & rightShiftStage0Idx1Rng16_uid1699_i_unnamed_conv1x1207_shift_x_b;

    -- rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x(MUX,1701)@22
    rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_s <= VCC_q;
    rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_combproc: PROCESS (rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_s, i_unnamed_conv1x1204_vt_join_q, rightShiftStage0Idx1_uid1700_i_unnamed_conv1x1207_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_q <= i_unnamed_conv1x1204_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_q <= rightShiftStage0Idx1_uid1700_i_unnamed_conv1x1207_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x(MUX,1706)@22
    rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_s <= VCC_q;
    rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_combproc: PROCESS (rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_s, rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_q, rightShiftStage1Idx1_uid1705_i_unnamed_conv1x1207_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_q <= rightShiftStage0_uid1702_i_unnamed_conv1x1207_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_q <= rightShiftStage1Idx1_uid1705_i_unnamed_conv1x1207_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x(MUX,1711)@22
    rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_s <= VCC_q;
    rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_combproc: PROCESS (rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_s, rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_q, rightShiftStage2Idx1_uid1710_i_unnamed_conv1x1207_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_q <= rightShiftStage1_uid1707_i_unnamed_conv1x1207_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_q <= rightShiftStage2Idx1_uid1710_i_unnamed_conv1x1207_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x(MUX,1716)@22
    rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_s <= VCC_q;
    rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_combproc: PROCESS (rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_s, rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_q, rightShiftStage3Idx1_uid1715_i_unnamed_conv1x1207_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_q <= rightShiftStage2_uid1712_i_unnamed_conv1x1207_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_q <= rightShiftStage3Idx1_uid1715_i_unnamed_conv1x1207_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x(MUX,1720)@22
    rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x_s <= VCC_q;
    rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x_combproc: PROCESS (rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x_s, rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_q, rightShiftStage4Idx1_uid1719_i_unnamed_conv1x1207_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x_q <= rightShiftStage3_uid1717_i_unnamed_conv1x1207_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x_q <= rightShiftStage4Idx1_uid1719_i_unnamed_conv1x1207_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked47_conv1x1(LOGICAL,616)@22
    i_mul16_masked47_conv1x1_q <= rightShiftStage4_uid1721_i_unnamed_conv1x1207_shift_x_q and i_syncbuf_stride_sync_buffer101_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x(MUX,1729)@22
    leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_s <= VCC_q;
    leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_combproc: PROCESS (leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_s, i_mul16_masked47_conv1x1_q, leftShiftStage0Idx1_uid1728_i_unnamed_conv1x1211_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_q <= i_mul16_masked47_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_q <= leftShiftStage0Idx1_uid1728_i_unnamed_conv1x1211_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x(MUX,1734)@22
    leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x_s <= VCC_q;
    leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x_combproc: PROCESS (leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x_s, leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_q, leftShiftStage1Idx1_uid1733_i_unnamed_conv1x1211_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x_q <= leftShiftStage0_uid1730_i_unnamed_conv1x1211_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x_q <= leftShiftStage1Idx1_uid1733_i_unnamed_conv1x1211_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1210_vt_select_31(BITSELECT,750)@22
    i_unnamed_conv1x1210_vt_select_31_b <= leftShiftStage1_uid1735_i_unnamed_conv1x1211_shift_x_q(31 downto 24);

    -- redist25_i_unnamed_conv1x1210_vt_select_31_b_1(DELAY,2706)
    redist25_i_unnamed_conv1x1210_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1210_vt_select_31_b, xout => redist25_i_unnamed_conv1x1210_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1210_vt_const_23(CONSTANT,748)
    i_unnamed_conv1x1210_vt_const_23_q <= "000000000000000000000000";

    -- i_unnamed_conv1x1210_vt_join(BITJOIN,749)@23
    i_unnamed_conv1x1210_vt_join_q <= redist25_i_unnamed_conv1x1210_vt_select_31_b_1_q & i_unnamed_conv1x1210_vt_const_23_q;

    -- leftShiftStage3Idx1Rng1_uid1671_i_unnamed_conv1x1203_shift_x(BITSELECT,1670)@18
    leftShiftStage3Idx1Rng1_uid1671_i_unnamed_conv1x1203_shift_x_in <= leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid1671_i_unnamed_conv1x1203_shift_x_b <= leftShiftStage3Idx1Rng1_uid1671_i_unnamed_conv1x1203_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid1672_i_unnamed_conv1x1203_shift_x(BITJOIN,1671)@18
    leftShiftStage3Idx1_uid1672_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage3Idx1Rng1_uid1671_i_unnamed_conv1x1203_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid1666_i_unnamed_conv1x1203_shift_x(BITSELECT,1665)@18
    leftShiftStage2Idx1Rng2_uid1666_i_unnamed_conv1x1203_shift_x_in <= leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1666_i_unnamed_conv1x1203_shift_x_b <= leftShiftStage2Idx1Rng2_uid1666_i_unnamed_conv1x1203_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1667_i_unnamed_conv1x1203_shift_x(BITJOIN,1666)@18
    leftShiftStage2Idx1_uid1667_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage2Idx1Rng2_uid1666_i_unnamed_conv1x1203_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage1Idx1Rng4_uid1661_i_unnamed_conv1x1203_shift_x(BITSELECT,1660)@18
    leftShiftStage1Idx1Rng4_uid1661_i_unnamed_conv1x1203_shift_x_in <= leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1661_i_unnamed_conv1x1203_shift_x_b <= leftShiftStage1Idx1Rng4_uid1661_i_unnamed_conv1x1203_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1662_i_unnamed_conv1x1203_shift_x(BITJOIN,1661)@18
    leftShiftStage1Idx1_uid1662_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage1Idx1Rng4_uid1661_i_unnamed_conv1x1203_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid1656_i_unnamed_conv1x1203_shift_x(BITSELECT,1655)@18
    leftShiftStage0Idx1Rng16_uid1656_i_unnamed_conv1x1203_shift_x_in <= i_mul16_masked45_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1656_i_unnamed_conv1x1203_shift_x_b <= leftShiftStage0Idx1Rng16_uid1656_i_unnamed_conv1x1203_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1657_i_unnamed_conv1x1203_shift_x(BITJOIN,1656)@18
    leftShiftStage0Idx1_uid1657_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage0Idx1Rng16_uid1656_i_unnamed_conv1x1203_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer102_conv1x1(BLACKBOX,639)@0
    -- in in_i_dependence@18
    -- in in_valid_in@18
    -- out out_buffer_out@18
    -- out out_valid_out@18
    thei_syncbuf_stride_sync_buffer102_conv1x1 : i_syncbuf_stride_sync_buffer102_conv1x1200
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist66_sync_in_aunroll_x_in_i_valid_17_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer102_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_notEnable(LOGICAL,2782)
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_nor(LOGICAL,2783)
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_nor_q <= not (redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_notEnable_q or redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_sticky_ena_q);

    -- redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_cmpReg(REG,2781)
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_sticky_ena(REG,2784)
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_nor_q = "1") THEN
                redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_enaAnd(LOGICAL,2785)
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_enaAnd_q <= redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_sticky_ena_q and VCC_q;

    -- redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt(COUNTER,2779)
    -- low=0, high=1, step=1, init=0
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_i <= redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_i, 1)));

    -- leftShiftStage0Idx1Rng8_uid1192_i_unnamed_conv1x1141_shift_x(BITSELECT,1191)@14
    leftShiftStage0Idx1Rng8_uid1192_i_unnamed_conv1x1141_shift_x_in <= redist50_sync_in_aunroll_x_in_c0_eni2_1_13_outputreg_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1192_i_unnamed_conv1x1141_shift_x_b <= leftShiftStage0Idx1Rng8_uid1192_i_unnamed_conv1x1141_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1193_i_unnamed_conv1x1141_shift_x(BITJOIN,1192)@14
    leftShiftStage0Idx1_uid1193_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage0Idx1Rng8_uid1192_i_unnamed_conv1x1141_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x(MUX,1194)@14
    leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_s <= VCC_q;
    leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_combproc: PROCESS (leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_s, redist50_sync_in_aunroll_x_in_c0_eni2_1_13_outputreg_q, leftShiftStage0Idx1_uid1193_i_unnamed_conv1x1141_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q <= redist50_sync_in_aunroll_x_in_c0_eni2_1_13_outputreg_q;
            WHEN "1" => leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage0Idx1_uid1193_i_unnamed_conv1x1141_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_inputreg(DELAY,2777)
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q, xout => redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_inputreg_q, clk => clock, aclr => resetn );

    -- redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_wraddr(REG,2780)
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_wraddr_q <= STD_LOGIC_VECTOR(redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem(DUALMEM,2778)
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_ia <= STD_LOGIC_VECTOR(redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_inputreg_q);
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_aa <= redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_wraddr_q;
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_ab <= redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_rdcnt_q;
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_reset0 <= not (resetn);
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 32,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_reset0,
        clock1 => clock,
        address_a => redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_aa,
        data_a => redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_ab,
        q_b => redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_iq
    );
    redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_q <= redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_iq(31 downto 0);

    -- i_unnamed_conv1x1196_vt_select_31(BITSELECT,741)@18
    i_unnamed_conv1x1196_vt_select_31_b <= redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_q(31 downto 8);

    -- i_unnamed_conv1x1196_vt_join(BITJOIN,740)@18
    i_unnamed_conv1x1196_vt_join_q <= i_unnamed_conv1x1196_vt_select_31_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- xMSB_uid1625_i_unnamed_conv1x1199_shift_x(BITSELECT,1624)@18
    xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1196_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1647_i_unnamed_conv1x1199_shift_x(BITSELECT,1646)@18
    rightShiftStage4Idx1Rng1_uid1647_i_unnamed_conv1x1199_shift_x_b <= rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1648_i_unnamed_conv1x1199_shift_x(BITJOIN,1647)@18
    rightShiftStage4Idx1_uid1648_i_unnamed_conv1x1199_shift_x_q <= xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b & rightShiftStage4Idx1Rng1_uid1647_i_unnamed_conv1x1199_shift_x_b;

    -- seMsb_to2_uid1642(BITSELECT,1641)@18
    seMsb_to2_uid1642_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b(0)) & xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b));
    seMsb_to2_uid1642_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1642_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1643_i_unnamed_conv1x1199_shift_x(BITSELECT,1642)@18
    rightShiftStage3Idx1Rng2_uid1643_i_unnamed_conv1x1199_shift_x_b <= rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1644_i_unnamed_conv1x1199_shift_x(BITJOIN,1643)@18
    rightShiftStage3Idx1_uid1644_i_unnamed_conv1x1199_shift_x_q <= seMsb_to2_uid1642_b & rightShiftStage3Idx1Rng2_uid1643_i_unnamed_conv1x1199_shift_x_b;

    -- seMsb_to4_uid1637(BITSELECT,1636)@18
    seMsb_to4_uid1637_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b(0)) & xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b));
    seMsb_to4_uid1637_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1637_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1638_i_unnamed_conv1x1199_shift_x(BITSELECT,1637)@18
    rightShiftStage2Idx1Rng4_uid1638_i_unnamed_conv1x1199_shift_x_b <= rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1639_i_unnamed_conv1x1199_shift_x(BITJOIN,1638)@18
    rightShiftStage2Idx1_uid1639_i_unnamed_conv1x1199_shift_x_q <= seMsb_to4_uid1637_b & rightShiftStage2Idx1Rng4_uid1638_i_unnamed_conv1x1199_shift_x_b;

    -- seMsb_to8_uid1632(BITSELECT,1631)@18
    seMsb_to8_uid1632_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b(0)) & xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b));
    seMsb_to8_uid1632_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1632_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1633_i_unnamed_conv1x1199_shift_x(BITSELECT,1632)@18
    rightShiftStage1Idx1Rng8_uid1633_i_unnamed_conv1x1199_shift_x_b <= rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1634_i_unnamed_conv1x1199_shift_x(BITJOIN,1633)@18
    rightShiftStage1Idx1_uid1634_i_unnamed_conv1x1199_shift_x_q <= seMsb_to8_uid1632_b & rightShiftStage1Idx1Rng8_uid1633_i_unnamed_conv1x1199_shift_x_b;

    -- seMsb_to16_uid1627(BITSELECT,1626)@18
    seMsb_to16_uid1627_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b(0)) & xMSB_uid1625_i_unnamed_conv1x1199_shift_x_b));
    seMsb_to16_uid1627_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1627_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1628_i_unnamed_conv1x1199_shift_x(BITSELECT,1627)@18
    rightShiftStage0Idx1Rng16_uid1628_i_unnamed_conv1x1199_shift_x_b <= i_unnamed_conv1x1196_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1629_i_unnamed_conv1x1199_shift_x(BITJOIN,1628)@18
    rightShiftStage0Idx1_uid1629_i_unnamed_conv1x1199_shift_x_q <= seMsb_to16_uid1627_b & rightShiftStage0Idx1Rng16_uid1628_i_unnamed_conv1x1199_shift_x_b;

    -- rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x(MUX,1630)@18
    rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_s <= VCC_q;
    rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_combproc: PROCESS (rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_s, i_unnamed_conv1x1196_vt_join_q, rightShiftStage0Idx1_uid1629_i_unnamed_conv1x1199_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_q <= i_unnamed_conv1x1196_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_q <= rightShiftStage0Idx1_uid1629_i_unnamed_conv1x1199_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x(MUX,1635)@18
    rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_s <= VCC_q;
    rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_combproc: PROCESS (rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_s, rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_q, rightShiftStage1Idx1_uid1634_i_unnamed_conv1x1199_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_q <= rightShiftStage0_uid1631_i_unnamed_conv1x1199_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_q <= rightShiftStage1Idx1_uid1634_i_unnamed_conv1x1199_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x(MUX,1640)@18
    rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_s <= VCC_q;
    rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_combproc: PROCESS (rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_s, rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_q, rightShiftStage2Idx1_uid1639_i_unnamed_conv1x1199_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_q <= rightShiftStage1_uid1636_i_unnamed_conv1x1199_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_q <= rightShiftStage2Idx1_uid1639_i_unnamed_conv1x1199_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x(MUX,1645)@18
    rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_s <= VCC_q;
    rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_combproc: PROCESS (rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_s, rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_q, rightShiftStage3Idx1_uid1644_i_unnamed_conv1x1199_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_q <= rightShiftStage2_uid1641_i_unnamed_conv1x1199_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_q <= rightShiftStage3Idx1_uid1644_i_unnamed_conv1x1199_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x(MUX,1649)@18
    rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x_s <= VCC_q;
    rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x_combproc: PROCESS (rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x_s, rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_q, rightShiftStage4Idx1_uid1648_i_unnamed_conv1x1199_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x_q <= rightShiftStage3_uid1646_i_unnamed_conv1x1199_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x_q <= rightShiftStage4Idx1_uid1648_i_unnamed_conv1x1199_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked45_conv1x1(LOGICAL,615)@18
    i_mul16_masked45_conv1x1_q <= rightShiftStage4_uid1650_i_unnamed_conv1x1199_shift_x_q and i_syncbuf_stride_sync_buffer102_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x(MUX,1658)@18
    leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_s <= VCC_q;
    leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_combproc: PROCESS (leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_s, i_mul16_masked45_conv1x1_q, leftShiftStage0Idx1_uid1657_i_unnamed_conv1x1203_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_q <= i_mul16_masked45_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage0Idx1_uid1657_i_unnamed_conv1x1203_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x(MUX,1663)@18
    leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_s <= VCC_q;
    leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_combproc: PROCESS (leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_s, leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_q, leftShiftStage1Idx1_uid1662_i_unnamed_conv1x1203_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage0_uid1659_i_unnamed_conv1x1203_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage1Idx1_uid1662_i_unnamed_conv1x1203_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x(MUX,1668)@18
    leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_s <= VCC_q;
    leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_combproc: PROCESS (leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_s, leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_q, leftShiftStage2Idx1_uid1667_i_unnamed_conv1x1203_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage1_uid1664_i_unnamed_conv1x1203_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage2Idx1_uid1667_i_unnamed_conv1x1203_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x(MUX,1673)@18
    leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x_s <= VCC_q;
    leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x_combproc: PROCESS (leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x_s, leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_q, leftShiftStage3Idx1_uid1672_i_unnamed_conv1x1203_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage2_uid1669_i_unnamed_conv1x1203_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x_q <= leftShiftStage3Idx1_uid1672_i_unnamed_conv1x1203_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1202_vt_select_31(BITSELECT,744)@18
    i_unnamed_conv1x1202_vt_select_31_b <= leftShiftStage3_uid1674_i_unnamed_conv1x1203_shift_x_q(31 downto 23);

    -- redist26_i_unnamed_conv1x1202_vt_select_31_b_4(DELAY,2707)
    redist26_i_unnamed_conv1x1202_vt_select_31_b_4 : dspba_delay
    GENERIC MAP ( width => 9, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1202_vt_select_31_b, xout => redist26_i_unnamed_conv1x1202_vt_select_31_b_4_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1202_vt_const_22(CONSTANT,742)
    i_unnamed_conv1x1202_vt_const_22_q <= "00000000000000000000000";

    -- i_unnamed_conv1x1202_vt_join(BITJOIN,743)@22
    i_unnamed_conv1x1202_vt_join_q <= redist26_i_unnamed_conv1x1202_vt_select_31_b_4_q & i_unnamed_conv1x1202_vt_const_22_q;

    -- leftShiftStage2Idx1Rng2_uid1610_i_unnamed_conv1x1195_shift_x(BITSELECT,1609)@18
    leftShiftStage2Idx1Rng2_uid1610_i_unnamed_conv1x1195_shift_x_in <= leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1610_i_unnamed_conv1x1195_shift_x_b <= leftShiftStage2Idx1Rng2_uid1610_i_unnamed_conv1x1195_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1611_i_unnamed_conv1x1195_shift_x(BITJOIN,1610)@18
    leftShiftStage2Idx1_uid1611_i_unnamed_conv1x1195_shift_x_q <= leftShiftStage2Idx1Rng2_uid1610_i_unnamed_conv1x1195_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage1Idx1Rng4_uid1605_i_unnamed_conv1x1195_shift_x(BITSELECT,1604)@18
    leftShiftStage1Idx1Rng4_uid1605_i_unnamed_conv1x1195_shift_x_in <= leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1605_i_unnamed_conv1x1195_shift_x_b <= leftShiftStage1Idx1Rng4_uid1605_i_unnamed_conv1x1195_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1606_i_unnamed_conv1x1195_shift_x(BITJOIN,1605)@18
    leftShiftStage1Idx1_uid1606_i_unnamed_conv1x1195_shift_x_q <= leftShiftStage1Idx1Rng4_uid1605_i_unnamed_conv1x1195_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid1600_i_unnamed_conv1x1195_shift_x(BITSELECT,1599)@18
    leftShiftStage0Idx1Rng16_uid1600_i_unnamed_conv1x1195_shift_x_in <= i_mul16_masked43_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1600_i_unnamed_conv1x1195_shift_x_b <= leftShiftStage0Idx1Rng16_uid1600_i_unnamed_conv1x1195_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1601_i_unnamed_conv1x1195_shift_x(BITJOIN,1600)@18
    leftShiftStage0Idx1_uid1601_i_unnamed_conv1x1195_shift_x_q <= leftShiftStage0Idx1Rng16_uid1600_i_unnamed_conv1x1195_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer103_conv1x1(BLACKBOX,640)@0
    -- in in_i_dependence@18
    -- in in_valid_in@18
    -- out out_buffer_out@18
    -- out out_valid_out@18
    thei_syncbuf_stride_sync_buffer103_conv1x1 : i_syncbuf_stride_sync_buffer103_conv1x1192
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist66_sync_in_aunroll_x_in_i_valid_17_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer103_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng1_uid1563_i_unnamed_conv1x1189_shift_x(BITSELECT,1562)@18
    leftShiftStage1Idx1Rng1_uid1563_i_unnamed_conv1x1189_shift_x_in <= redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1563_i_unnamed_conv1x1189_shift_x_b <= leftShiftStage1Idx1Rng1_uid1563_i_unnamed_conv1x1189_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1564_i_unnamed_conv1x1189_shift_x(BITJOIN,1563)@18
    leftShiftStage1Idx1_uid1564_i_unnamed_conv1x1189_shift_x_q <= leftShiftStage1Idx1Rng1_uid1563_i_unnamed_conv1x1189_shift_x_b & GND_q;

    -- leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x(MUX,1565)@18
    leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x_s <= VCC_q;
    leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x_combproc: PROCESS (leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x_s, redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_q, leftShiftStage1Idx1_uid1564_i_unnamed_conv1x1189_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x_q <= redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_q;
            WHEN "1" => leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x_q <= leftShiftStage1Idx1_uid1564_i_unnamed_conv1x1189_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1188_vt_select_31(BITSELECT,735)@18
    i_unnamed_conv1x1188_vt_select_31_b <= leftShiftStage1_uid1566_i_unnamed_conv1x1189_shift_x_q(31 downto 9);

    -- i_unnamed_conv1x1188_vt_const_8(CONSTANT,733)
    i_unnamed_conv1x1188_vt_const_8_q <= "000000000";

    -- i_unnamed_conv1x1188_vt_join(BITJOIN,734)@18
    i_unnamed_conv1x1188_vt_join_q <= i_unnamed_conv1x1188_vt_select_31_b & i_unnamed_conv1x1188_vt_const_8_q;

    -- xMSB_uid1569_i_unnamed_conv1x1191_shift_x(BITSELECT,1568)@18
    xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1188_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1591_i_unnamed_conv1x1191_shift_x(BITSELECT,1590)@18
    rightShiftStage4Idx1Rng1_uid1591_i_unnamed_conv1x1191_shift_x_b <= rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1592_i_unnamed_conv1x1191_shift_x(BITJOIN,1591)@18
    rightShiftStage4Idx1_uid1592_i_unnamed_conv1x1191_shift_x_q <= xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b & rightShiftStage4Idx1Rng1_uid1591_i_unnamed_conv1x1191_shift_x_b;

    -- seMsb_to2_uid1586(BITSELECT,1585)@18
    seMsb_to2_uid1586_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b(0)) & xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b));
    seMsb_to2_uid1586_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1586_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1587_i_unnamed_conv1x1191_shift_x(BITSELECT,1586)@18
    rightShiftStage3Idx1Rng2_uid1587_i_unnamed_conv1x1191_shift_x_b <= rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1588_i_unnamed_conv1x1191_shift_x(BITJOIN,1587)@18
    rightShiftStage3Idx1_uid1588_i_unnamed_conv1x1191_shift_x_q <= seMsb_to2_uid1586_b & rightShiftStage3Idx1Rng2_uid1587_i_unnamed_conv1x1191_shift_x_b;

    -- seMsb_to4_uid1581(BITSELECT,1580)@18
    seMsb_to4_uid1581_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b(0)) & xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b));
    seMsb_to4_uid1581_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1581_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1582_i_unnamed_conv1x1191_shift_x(BITSELECT,1581)@18
    rightShiftStage2Idx1Rng4_uid1582_i_unnamed_conv1x1191_shift_x_b <= rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1583_i_unnamed_conv1x1191_shift_x(BITJOIN,1582)@18
    rightShiftStage2Idx1_uid1583_i_unnamed_conv1x1191_shift_x_q <= seMsb_to4_uid1581_b & rightShiftStage2Idx1Rng4_uid1582_i_unnamed_conv1x1191_shift_x_b;

    -- seMsb_to8_uid1576(BITSELECT,1575)@18
    seMsb_to8_uid1576_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b(0)) & xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b));
    seMsb_to8_uid1576_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1576_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1577_i_unnamed_conv1x1191_shift_x(BITSELECT,1576)@18
    rightShiftStage1Idx1Rng8_uid1577_i_unnamed_conv1x1191_shift_x_b <= rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1578_i_unnamed_conv1x1191_shift_x(BITJOIN,1577)@18
    rightShiftStage1Idx1_uid1578_i_unnamed_conv1x1191_shift_x_q <= seMsb_to8_uid1576_b & rightShiftStage1Idx1Rng8_uid1577_i_unnamed_conv1x1191_shift_x_b;

    -- seMsb_to16_uid1571(BITSELECT,1570)@18
    seMsb_to16_uid1571_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b(0)) & xMSB_uid1569_i_unnamed_conv1x1191_shift_x_b));
    seMsb_to16_uid1571_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1571_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1572_i_unnamed_conv1x1191_shift_x(BITSELECT,1571)@18
    rightShiftStage0Idx1Rng16_uid1572_i_unnamed_conv1x1191_shift_x_b <= i_unnamed_conv1x1188_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1573_i_unnamed_conv1x1191_shift_x(BITJOIN,1572)@18
    rightShiftStage0Idx1_uid1573_i_unnamed_conv1x1191_shift_x_q <= seMsb_to16_uid1571_b & rightShiftStage0Idx1Rng16_uid1572_i_unnamed_conv1x1191_shift_x_b;

    -- rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x(MUX,1574)@18
    rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_s <= VCC_q;
    rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_combproc: PROCESS (rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_s, i_unnamed_conv1x1188_vt_join_q, rightShiftStage0Idx1_uid1573_i_unnamed_conv1x1191_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_q <= i_unnamed_conv1x1188_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_q <= rightShiftStage0Idx1_uid1573_i_unnamed_conv1x1191_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x(MUX,1579)@18
    rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_s <= VCC_q;
    rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_combproc: PROCESS (rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_s, rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_q, rightShiftStage1Idx1_uid1578_i_unnamed_conv1x1191_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_q <= rightShiftStage0_uid1575_i_unnamed_conv1x1191_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_q <= rightShiftStage1Idx1_uid1578_i_unnamed_conv1x1191_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x(MUX,1584)@18
    rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_s <= VCC_q;
    rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_combproc: PROCESS (rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_s, rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_q, rightShiftStage2Idx1_uid1583_i_unnamed_conv1x1191_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_q <= rightShiftStage1_uid1580_i_unnamed_conv1x1191_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_q <= rightShiftStage2Idx1_uid1583_i_unnamed_conv1x1191_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x(MUX,1589)@18
    rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_s <= VCC_q;
    rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_combproc: PROCESS (rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_s, rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_q, rightShiftStage3Idx1_uid1588_i_unnamed_conv1x1191_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_q <= rightShiftStage2_uid1585_i_unnamed_conv1x1191_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_q <= rightShiftStage3Idx1_uid1588_i_unnamed_conv1x1191_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x(MUX,1593)@18
    rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x_s <= VCC_q;
    rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x_combproc: PROCESS (rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x_s, rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_q, rightShiftStage4Idx1_uid1592_i_unnamed_conv1x1191_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x_q <= rightShiftStage3_uid1590_i_unnamed_conv1x1191_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x_q <= rightShiftStage4Idx1_uid1592_i_unnamed_conv1x1191_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked43_conv1x1(LOGICAL,614)@18
    i_mul16_masked43_conv1x1_q <= rightShiftStage4_uid1594_i_unnamed_conv1x1191_shift_x_q and i_syncbuf_stride_sync_buffer103_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x(MUX,1602)@18
    leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_s <= VCC_q;
    leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_combproc: PROCESS (leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_s, i_mul16_masked43_conv1x1_q, leftShiftStage0Idx1_uid1601_i_unnamed_conv1x1195_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_q <= i_mul16_masked43_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_q <= leftShiftStage0Idx1_uid1601_i_unnamed_conv1x1195_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x(MUX,1607)@18
    leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_s <= VCC_q;
    leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_combproc: PROCESS (leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_s, leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_q, leftShiftStage1Idx1_uid1606_i_unnamed_conv1x1195_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_q <= leftShiftStage0_uid1603_i_unnamed_conv1x1195_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_q <= leftShiftStage1Idx1_uid1606_i_unnamed_conv1x1195_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x(MUX,1612)@18
    leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x_s <= VCC_q;
    leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x_combproc: PROCESS (leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x_s, leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_q, leftShiftStage2Idx1_uid1611_i_unnamed_conv1x1195_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x_q <= leftShiftStage1_uid1608_i_unnamed_conv1x1195_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x_q <= leftShiftStage2Idx1_uid1611_i_unnamed_conv1x1195_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1194_vt_select_31(BITSELECT,738)@18
    i_unnamed_conv1x1194_vt_select_31_b <= leftShiftStage2_uid1613_i_unnamed_conv1x1195_shift_x_q(31 downto 22);

    -- redist27_i_unnamed_conv1x1194_vt_select_31_b_3(DELAY,2708)
    redist27_i_unnamed_conv1x1194_vt_select_31_b_3 : dspba_delay
    GENERIC MAP ( width => 10, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1194_vt_select_31_b, xout => redist27_i_unnamed_conv1x1194_vt_select_31_b_3_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1194_vt_const_21(CONSTANT,736)
    i_unnamed_conv1x1194_vt_const_21_q <= "0000000000000000000000";

    -- i_unnamed_conv1x1194_vt_join(BITJOIN,737)@21
    i_unnamed_conv1x1194_vt_join_q <= redist27_i_unnamed_conv1x1194_vt_select_31_b_3_q & i_unnamed_conv1x1194_vt_const_21_q;

    -- leftShiftStage2Idx1Rng1_uid1549_i_unnamed_conv1x1187_shift_x(BITSELECT,1548)@18
    leftShiftStage2Idx1Rng1_uid1549_i_unnamed_conv1x1187_shift_x_in <= leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1549_i_unnamed_conv1x1187_shift_x_b <= leftShiftStage2Idx1Rng1_uid1549_i_unnamed_conv1x1187_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1550_i_unnamed_conv1x1187_shift_x(BITJOIN,1549)@18
    leftShiftStage2Idx1_uid1550_i_unnamed_conv1x1187_shift_x_q <= leftShiftStage2Idx1Rng1_uid1549_i_unnamed_conv1x1187_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng4_uid1544_i_unnamed_conv1x1187_shift_x(BITSELECT,1543)@18
    leftShiftStage1Idx1Rng4_uid1544_i_unnamed_conv1x1187_shift_x_in <= leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1544_i_unnamed_conv1x1187_shift_x_b <= leftShiftStage1Idx1Rng4_uid1544_i_unnamed_conv1x1187_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1545_i_unnamed_conv1x1187_shift_x(BITJOIN,1544)@18
    leftShiftStage1Idx1_uid1545_i_unnamed_conv1x1187_shift_x_q <= leftShiftStage1Idx1Rng4_uid1544_i_unnamed_conv1x1187_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid1539_i_unnamed_conv1x1187_shift_x(BITSELECT,1538)@18
    leftShiftStage0Idx1Rng16_uid1539_i_unnamed_conv1x1187_shift_x_in <= i_mul16_masked41_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1539_i_unnamed_conv1x1187_shift_x_b <= leftShiftStage0Idx1Rng16_uid1539_i_unnamed_conv1x1187_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1540_i_unnamed_conv1x1187_shift_x(BITJOIN,1539)@18
    leftShiftStage0Idx1_uid1540_i_unnamed_conv1x1187_shift_x_q <= leftShiftStage0Idx1Rng16_uid1539_i_unnamed_conv1x1187_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer104_conv1x1(BLACKBOX,641)@0
    -- in in_i_dependence@18
    -- in in_valid_in@18
    -- out out_buffer_out@18
    -- out out_valid_out@18
    thei_syncbuf_stride_sync_buffer104_conv1x1 : i_syncbuf_stride_sync_buffer104_conv1x1184
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist66_sync_in_aunroll_x_in_i_valid_17_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer104_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng2_uid1441_i_unnamed_conv1x1173_shift_x(BITSELECT,1440)@18
    leftShiftStage1Idx1Rng2_uid1441_i_unnamed_conv1x1173_shift_x_in <= redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1441_i_unnamed_conv1x1173_shift_x_b <= leftShiftStage1Idx1Rng2_uid1441_i_unnamed_conv1x1173_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1442_i_unnamed_conv1x1173_shift_x(BITJOIN,1441)@18
    leftShiftStage1Idx1_uid1442_i_unnamed_conv1x1173_shift_x_q <= leftShiftStage1Idx1Rng2_uid1441_i_unnamed_conv1x1173_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x(MUX,1443)@18
    leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_s <= VCC_q;
    leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_combproc: PROCESS (leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_s, redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_q, leftShiftStage1Idx1_uid1442_i_unnamed_conv1x1173_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_q <= redist0_leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q_4_mem_q;
            WHEN "1" => leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_q <= leftShiftStage1Idx1_uid1442_i_unnamed_conv1x1173_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1180_vt_select_31(BITSELECT,729)@18
    i_unnamed_conv1x1180_vt_select_31_b <= leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_q(31 downto 10);

    -- i_unnamed_conv1x1180_vt_const_9(CONSTANT,727)
    i_unnamed_conv1x1180_vt_const_9_q <= "0000000000";

    -- i_unnamed_conv1x1180_vt_join(BITJOIN,728)@18
    i_unnamed_conv1x1180_vt_join_q <= i_unnamed_conv1x1180_vt_select_31_b & i_unnamed_conv1x1180_vt_const_9_q;

    -- xMSB_uid1508_i_unnamed_conv1x1183_shift_x(BITSELECT,1507)@18
    xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1180_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1530_i_unnamed_conv1x1183_shift_x(BITSELECT,1529)@18
    rightShiftStage4Idx1Rng1_uid1530_i_unnamed_conv1x1183_shift_x_b <= rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1531_i_unnamed_conv1x1183_shift_x(BITJOIN,1530)@18
    rightShiftStage4Idx1_uid1531_i_unnamed_conv1x1183_shift_x_q <= xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b & rightShiftStage4Idx1Rng1_uid1530_i_unnamed_conv1x1183_shift_x_b;

    -- seMsb_to2_uid1525(BITSELECT,1524)@18
    seMsb_to2_uid1525_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b(0)) & xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b));
    seMsb_to2_uid1525_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1525_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1526_i_unnamed_conv1x1183_shift_x(BITSELECT,1525)@18
    rightShiftStage3Idx1Rng2_uid1526_i_unnamed_conv1x1183_shift_x_b <= rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1527_i_unnamed_conv1x1183_shift_x(BITJOIN,1526)@18
    rightShiftStage3Idx1_uid1527_i_unnamed_conv1x1183_shift_x_q <= seMsb_to2_uid1525_b & rightShiftStage3Idx1Rng2_uid1526_i_unnamed_conv1x1183_shift_x_b;

    -- seMsb_to4_uid1520(BITSELECT,1519)@18
    seMsb_to4_uid1520_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b(0)) & xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b));
    seMsb_to4_uid1520_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1520_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1521_i_unnamed_conv1x1183_shift_x(BITSELECT,1520)@18
    rightShiftStage2Idx1Rng4_uid1521_i_unnamed_conv1x1183_shift_x_b <= rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1522_i_unnamed_conv1x1183_shift_x(BITJOIN,1521)@18
    rightShiftStage2Idx1_uid1522_i_unnamed_conv1x1183_shift_x_q <= seMsb_to4_uid1520_b & rightShiftStage2Idx1Rng4_uid1521_i_unnamed_conv1x1183_shift_x_b;

    -- seMsb_to8_uid1515(BITSELECT,1514)@18
    seMsb_to8_uid1515_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b(0)) & xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b));
    seMsb_to8_uid1515_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1515_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1516_i_unnamed_conv1x1183_shift_x(BITSELECT,1515)@18
    rightShiftStage1Idx1Rng8_uid1516_i_unnamed_conv1x1183_shift_x_b <= rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1517_i_unnamed_conv1x1183_shift_x(BITJOIN,1516)@18
    rightShiftStage1Idx1_uid1517_i_unnamed_conv1x1183_shift_x_q <= seMsb_to8_uid1515_b & rightShiftStage1Idx1Rng8_uid1516_i_unnamed_conv1x1183_shift_x_b;

    -- seMsb_to16_uid1510(BITSELECT,1509)@18
    seMsb_to16_uid1510_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b(0)) & xMSB_uid1508_i_unnamed_conv1x1183_shift_x_b));
    seMsb_to16_uid1510_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1510_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1511_i_unnamed_conv1x1183_shift_x(BITSELECT,1510)@18
    rightShiftStage0Idx1Rng16_uid1511_i_unnamed_conv1x1183_shift_x_b <= i_unnamed_conv1x1180_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1512_i_unnamed_conv1x1183_shift_x(BITJOIN,1511)@18
    rightShiftStage0Idx1_uid1512_i_unnamed_conv1x1183_shift_x_q <= seMsb_to16_uid1510_b & rightShiftStage0Idx1Rng16_uid1511_i_unnamed_conv1x1183_shift_x_b;

    -- rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x(MUX,1513)@18
    rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_s <= VCC_q;
    rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_combproc: PROCESS (rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_s, i_unnamed_conv1x1180_vt_join_q, rightShiftStage0Idx1_uid1512_i_unnamed_conv1x1183_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_q <= i_unnamed_conv1x1180_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_q <= rightShiftStage0Idx1_uid1512_i_unnamed_conv1x1183_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x(MUX,1518)@18
    rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_s <= VCC_q;
    rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_combproc: PROCESS (rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_s, rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_q, rightShiftStage1Idx1_uid1517_i_unnamed_conv1x1183_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_q <= rightShiftStage0_uid1514_i_unnamed_conv1x1183_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_q <= rightShiftStage1Idx1_uid1517_i_unnamed_conv1x1183_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x(MUX,1523)@18
    rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_s <= VCC_q;
    rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_combproc: PROCESS (rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_s, rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_q, rightShiftStage2Idx1_uid1522_i_unnamed_conv1x1183_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_q <= rightShiftStage1_uid1519_i_unnamed_conv1x1183_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_q <= rightShiftStage2Idx1_uid1522_i_unnamed_conv1x1183_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x(MUX,1528)@18
    rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_s <= VCC_q;
    rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_combproc: PROCESS (rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_s, rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_q, rightShiftStage3Idx1_uid1527_i_unnamed_conv1x1183_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_q <= rightShiftStage2_uid1524_i_unnamed_conv1x1183_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_q <= rightShiftStage3Idx1_uid1527_i_unnamed_conv1x1183_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x(MUX,1532)@18
    rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x_s <= VCC_q;
    rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x_combproc: PROCESS (rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x_s, rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_q, rightShiftStage4Idx1_uid1531_i_unnamed_conv1x1183_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x_q <= rightShiftStage3_uid1529_i_unnamed_conv1x1183_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x_q <= rightShiftStage4Idx1_uid1531_i_unnamed_conv1x1183_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked41_conv1x1(LOGICAL,613)@18
    i_mul16_masked41_conv1x1_q <= rightShiftStage4_uid1533_i_unnamed_conv1x1183_shift_x_q and i_syncbuf_stride_sync_buffer104_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x(MUX,1541)@18
    leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_s <= VCC_q;
    leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_combproc: PROCESS (leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_s, i_mul16_masked41_conv1x1_q, leftShiftStage0Idx1_uid1540_i_unnamed_conv1x1187_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_q <= i_mul16_masked41_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_q <= leftShiftStage0Idx1_uid1540_i_unnamed_conv1x1187_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x(MUX,1546)@18
    leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_s <= VCC_q;
    leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_combproc: PROCESS (leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_s, leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_q, leftShiftStage1Idx1_uid1545_i_unnamed_conv1x1187_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_q <= leftShiftStage0_uid1542_i_unnamed_conv1x1187_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_q <= leftShiftStage1Idx1_uid1545_i_unnamed_conv1x1187_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x(MUX,1551)@18
    leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x_s <= VCC_q;
    leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x_combproc: PROCESS (leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x_s, leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_q, leftShiftStage2Idx1_uid1550_i_unnamed_conv1x1187_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x_q <= leftShiftStage1_uid1547_i_unnamed_conv1x1187_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x_q <= leftShiftStage2Idx1_uid1550_i_unnamed_conv1x1187_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1186_vt_select_31(BITSELECT,732)@18
    i_unnamed_conv1x1186_vt_select_31_b <= leftShiftStage2_uid1552_i_unnamed_conv1x1187_shift_x_q(31 downto 21);

    -- redist28_i_unnamed_conv1x1186_vt_select_31_b_2(DELAY,2709)
    redist28_i_unnamed_conv1x1186_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 11, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1186_vt_select_31_b, xout => redist28_i_unnamed_conv1x1186_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1186_vt_const_20(CONSTANT,730)
    i_unnamed_conv1x1186_vt_const_20_q <= "000000000000000000000";

    -- i_unnamed_conv1x1186_vt_join(BITJOIN,731)@20
    i_unnamed_conv1x1186_vt_join_q <= redist28_i_unnamed_conv1x1186_vt_select_31_b_2_q & i_unnamed_conv1x1186_vt_const_20_q;

    -- leftShiftStage1Idx1Rng4_uid1488_i_unnamed_conv1x1179_shift_x(BITSELECT,1487)@18
    leftShiftStage1Idx1Rng4_uid1488_i_unnamed_conv1x1179_shift_x_in <= leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1488_i_unnamed_conv1x1179_shift_x_b <= leftShiftStage1Idx1Rng4_uid1488_i_unnamed_conv1x1179_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1489_i_unnamed_conv1x1179_shift_x(BITJOIN,1488)@18
    leftShiftStage1Idx1_uid1489_i_unnamed_conv1x1179_shift_x_q <= leftShiftStage1Idx1Rng4_uid1488_i_unnamed_conv1x1179_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid1483_i_unnamed_conv1x1179_shift_x(BITSELECT,1482)@18
    leftShiftStage0Idx1Rng16_uid1483_i_unnamed_conv1x1179_shift_x_in <= i_mul16_masked39_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1483_i_unnamed_conv1x1179_shift_x_b <= leftShiftStage0Idx1Rng16_uid1483_i_unnamed_conv1x1179_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1484_i_unnamed_conv1x1179_shift_x(BITJOIN,1483)@18
    leftShiftStage0Idx1_uid1484_i_unnamed_conv1x1179_shift_x_q <= leftShiftStage0Idx1Rng16_uid1483_i_unnamed_conv1x1179_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer105_conv1x1(BLACKBOX,642)@0
    -- in in_i_dependence@18
    -- in in_valid_in@18
    -- out out_buffer_out@18
    -- out out_valid_out@18
    thei_syncbuf_stride_sync_buffer105_conv1x1 : i_syncbuf_stride_sync_buffer105_conv1x1176
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist66_sync_in_aunroll_x_in_i_valid_17_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer105_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng1_uid1446_i_unnamed_conv1x1173_shift_x(BITSELECT,1445)@18
    leftShiftStage2Idx1Rng1_uid1446_i_unnamed_conv1x1173_shift_x_in <= leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1446_i_unnamed_conv1x1173_shift_x_b <= leftShiftStage2Idx1Rng1_uid1446_i_unnamed_conv1x1173_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1447_i_unnamed_conv1x1173_shift_x(BITJOIN,1446)@18
    leftShiftStage2Idx1_uid1447_i_unnamed_conv1x1173_shift_x_q <= leftShiftStage2Idx1Rng1_uid1446_i_unnamed_conv1x1173_shift_x_b & GND_q;

    -- leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x(MUX,1448)@18
    leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x_s <= VCC_q;
    leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x_combproc: PROCESS (leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x_s, leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_q, leftShiftStage2Idx1_uid1447_i_unnamed_conv1x1173_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x_q <= leftShiftStage1_uid1444_i_unnamed_conv1x1173_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x_q <= leftShiftStage2Idx1_uid1447_i_unnamed_conv1x1173_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1172_vt_select_31(BITSELECT,723)@18
    i_unnamed_conv1x1172_vt_select_31_b <= leftShiftStage2_uid1449_i_unnamed_conv1x1173_shift_x_q(31 downto 11);

    -- i_unnamed_conv1x1106_vt_const_10(CONSTANT,670)
    i_unnamed_conv1x1106_vt_const_10_q <= "00000000000";

    -- i_unnamed_conv1x1172_vt_join(BITJOIN,722)@18
    i_unnamed_conv1x1172_vt_join_q <= i_unnamed_conv1x1172_vt_select_31_b & i_unnamed_conv1x1106_vt_const_10_q;

    -- xMSB_uid1452_i_unnamed_conv1x1175_shift_x(BITSELECT,1451)@18
    xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1172_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1474_i_unnamed_conv1x1175_shift_x(BITSELECT,1473)@18
    rightShiftStage4Idx1Rng1_uid1474_i_unnamed_conv1x1175_shift_x_b <= rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1475_i_unnamed_conv1x1175_shift_x(BITJOIN,1474)@18
    rightShiftStage4Idx1_uid1475_i_unnamed_conv1x1175_shift_x_q <= xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b & rightShiftStage4Idx1Rng1_uid1474_i_unnamed_conv1x1175_shift_x_b;

    -- seMsb_to2_uid1469(BITSELECT,1468)@18
    seMsb_to2_uid1469_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b(0)) & xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b));
    seMsb_to2_uid1469_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1469_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1470_i_unnamed_conv1x1175_shift_x(BITSELECT,1469)@18
    rightShiftStage3Idx1Rng2_uid1470_i_unnamed_conv1x1175_shift_x_b <= rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1471_i_unnamed_conv1x1175_shift_x(BITJOIN,1470)@18
    rightShiftStage3Idx1_uid1471_i_unnamed_conv1x1175_shift_x_q <= seMsb_to2_uid1469_b & rightShiftStage3Idx1Rng2_uid1470_i_unnamed_conv1x1175_shift_x_b;

    -- seMsb_to4_uid1464(BITSELECT,1463)@18
    seMsb_to4_uid1464_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b(0)) & xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b));
    seMsb_to4_uid1464_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1464_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1465_i_unnamed_conv1x1175_shift_x(BITSELECT,1464)@18
    rightShiftStage2Idx1Rng4_uid1465_i_unnamed_conv1x1175_shift_x_b <= rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1466_i_unnamed_conv1x1175_shift_x(BITJOIN,1465)@18
    rightShiftStage2Idx1_uid1466_i_unnamed_conv1x1175_shift_x_q <= seMsb_to4_uid1464_b & rightShiftStage2Idx1Rng4_uid1465_i_unnamed_conv1x1175_shift_x_b;

    -- seMsb_to8_uid1459(BITSELECT,1458)@18
    seMsb_to8_uid1459_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b(0)) & xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b));
    seMsb_to8_uid1459_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1459_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1460_i_unnamed_conv1x1175_shift_x(BITSELECT,1459)@18
    rightShiftStage1Idx1Rng8_uid1460_i_unnamed_conv1x1175_shift_x_b <= rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1461_i_unnamed_conv1x1175_shift_x(BITJOIN,1460)@18
    rightShiftStage1Idx1_uid1461_i_unnamed_conv1x1175_shift_x_q <= seMsb_to8_uid1459_b & rightShiftStage1Idx1Rng8_uid1460_i_unnamed_conv1x1175_shift_x_b;

    -- seMsb_to16_uid1454(BITSELECT,1453)@18
    seMsb_to16_uid1454_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b(0)) & xMSB_uid1452_i_unnamed_conv1x1175_shift_x_b));
    seMsb_to16_uid1454_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1454_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1455_i_unnamed_conv1x1175_shift_x(BITSELECT,1454)@18
    rightShiftStage0Idx1Rng16_uid1455_i_unnamed_conv1x1175_shift_x_b <= i_unnamed_conv1x1172_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1456_i_unnamed_conv1x1175_shift_x(BITJOIN,1455)@18
    rightShiftStage0Idx1_uid1456_i_unnamed_conv1x1175_shift_x_q <= seMsb_to16_uid1454_b & rightShiftStage0Idx1Rng16_uid1455_i_unnamed_conv1x1175_shift_x_b;

    -- rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x(MUX,1457)@18
    rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_s <= VCC_q;
    rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_combproc: PROCESS (rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_s, i_unnamed_conv1x1172_vt_join_q, rightShiftStage0Idx1_uid1456_i_unnamed_conv1x1175_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_q <= i_unnamed_conv1x1172_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_q <= rightShiftStage0Idx1_uid1456_i_unnamed_conv1x1175_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x(MUX,1462)@18
    rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_s <= VCC_q;
    rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_combproc: PROCESS (rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_s, rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_q, rightShiftStage1Idx1_uid1461_i_unnamed_conv1x1175_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_q <= rightShiftStage0_uid1458_i_unnamed_conv1x1175_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_q <= rightShiftStage1Idx1_uid1461_i_unnamed_conv1x1175_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x(MUX,1467)@18
    rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_s <= VCC_q;
    rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_combproc: PROCESS (rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_s, rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_q, rightShiftStage2Idx1_uid1466_i_unnamed_conv1x1175_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_q <= rightShiftStage1_uid1463_i_unnamed_conv1x1175_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_q <= rightShiftStage2Idx1_uid1466_i_unnamed_conv1x1175_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x(MUX,1472)@18
    rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_s <= VCC_q;
    rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_combproc: PROCESS (rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_s, rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_q, rightShiftStage3Idx1_uid1471_i_unnamed_conv1x1175_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_q <= rightShiftStage2_uid1468_i_unnamed_conv1x1175_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_q <= rightShiftStage3Idx1_uid1471_i_unnamed_conv1x1175_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x(MUX,1476)@18
    rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x_s <= VCC_q;
    rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x_combproc: PROCESS (rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x_s, rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_q, rightShiftStage4Idx1_uid1475_i_unnamed_conv1x1175_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x_q <= rightShiftStage3_uid1473_i_unnamed_conv1x1175_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x_q <= rightShiftStage4Idx1_uid1475_i_unnamed_conv1x1175_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked39_conv1x1(LOGICAL,611)@18
    i_mul16_masked39_conv1x1_q <= rightShiftStage4_uid1477_i_unnamed_conv1x1175_shift_x_q and i_syncbuf_stride_sync_buffer105_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x(MUX,1485)@18
    leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_s <= VCC_q;
    leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_combproc: PROCESS (leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_s, i_mul16_masked39_conv1x1_q, leftShiftStage0Idx1_uid1484_i_unnamed_conv1x1179_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_q <= i_mul16_masked39_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_q <= leftShiftStage0Idx1_uid1484_i_unnamed_conv1x1179_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x(MUX,1490)@18
    leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x_s <= VCC_q;
    leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x_combproc: PROCESS (leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x_s, leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_q, leftShiftStage1Idx1_uid1489_i_unnamed_conv1x1179_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x_q <= leftShiftStage0_uid1486_i_unnamed_conv1x1179_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x_q <= leftShiftStage1Idx1_uid1489_i_unnamed_conv1x1179_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1178_vt_select_31(BITSELECT,726)@18
    i_unnamed_conv1x1178_vt_select_31_b <= leftShiftStage1_uid1491_i_unnamed_conv1x1179_shift_x_q(31 downto 20);

    -- redist29_i_unnamed_conv1x1178_vt_select_31_b_1(DELAY,2710)
    redist29_i_unnamed_conv1x1178_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1178_vt_select_31_b, xout => redist29_i_unnamed_conv1x1178_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1100_vt_const_19(CONSTANT,667)
    i_unnamed_conv1x1100_vt_const_19_q <= "00000000000000000000";

    -- i_unnamed_conv1x1178_vt_join(BITJOIN,725)@19
    i_unnamed_conv1x1178_vt_join_q <= redist29_i_unnamed_conv1x1178_vt_select_31_b_1_q & i_unnamed_conv1x1100_vt_const_19_q;

    -- leftShiftStage2Idx1Rng1_uid1427_i_unnamed_conv1x1171_shift_x(BITSELECT,1426)@14
    leftShiftStage2Idx1Rng1_uid1427_i_unnamed_conv1x1171_shift_x_in <= leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1427_i_unnamed_conv1x1171_shift_x_b <= leftShiftStage2Idx1Rng1_uid1427_i_unnamed_conv1x1171_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1428_i_unnamed_conv1x1171_shift_x(BITJOIN,1427)@14
    leftShiftStage2Idx1_uid1428_i_unnamed_conv1x1171_shift_x_q <= leftShiftStage2Idx1Rng1_uid1427_i_unnamed_conv1x1171_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng2_uid1422_i_unnamed_conv1x1171_shift_x(BITSELECT,1421)@14
    leftShiftStage1Idx1Rng2_uid1422_i_unnamed_conv1x1171_shift_x_in <= leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1422_i_unnamed_conv1x1171_shift_x_b <= leftShiftStage1Idx1Rng2_uid1422_i_unnamed_conv1x1171_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1423_i_unnamed_conv1x1171_shift_x(BITJOIN,1422)@14
    leftShiftStage1Idx1_uid1423_i_unnamed_conv1x1171_shift_x_q <= leftShiftStage1Idx1Rng2_uid1422_i_unnamed_conv1x1171_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage0Idx1Rng16_uid1417_i_unnamed_conv1x1171_shift_x(BITSELECT,1416)@14
    leftShiftStage0Idx1Rng16_uid1417_i_unnamed_conv1x1171_shift_x_in <= i_mul16_masked37_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1417_i_unnamed_conv1x1171_shift_x_b <= leftShiftStage0Idx1Rng16_uid1417_i_unnamed_conv1x1171_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1418_i_unnamed_conv1x1171_shift_x(BITJOIN,1417)@14
    leftShiftStage0Idx1_uid1418_i_unnamed_conv1x1171_shift_x_q <= leftShiftStage0Idx1Rng16_uid1417_i_unnamed_conv1x1171_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer106_conv1x1(BLACKBOX,643)@0
    -- in in_i_dependence@14
    -- in in_valid_in@14
    -- out out_buffer_out@14
    -- out out_valid_out@14
    thei_syncbuf_stride_sync_buffer106_conv1x1 : i_syncbuf_stride_sync_buffer106_conv1x1168
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist65_sync_in_aunroll_x_in_i_valid_13_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer106_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng4_uid1197_i_unnamed_conv1x1141_shift_x(BITSELECT,1196)@14
    leftShiftStage1Idx1Rng4_uid1197_i_unnamed_conv1x1141_shift_x_in <= leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1197_i_unnamed_conv1x1141_shift_x_b <= leftShiftStage1Idx1Rng4_uid1197_i_unnamed_conv1x1141_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1198_i_unnamed_conv1x1141_shift_x(BITJOIN,1197)@14
    leftShiftStage1Idx1_uid1198_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage1Idx1Rng4_uid1197_i_unnamed_conv1x1141_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x(MUX,1199)@14
    leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_s <= VCC_q;
    leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_combproc: PROCESS (leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_s, leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q, leftShiftStage1Idx1_uid1198_i_unnamed_conv1x1141_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage0_uid1195_i_unnamed_conv1x1141_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage1Idx1_uid1198_i_unnamed_conv1x1141_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1164_vt_select_31(BITSELECT,717)@14
    i_unnamed_conv1x1164_vt_select_31_b <= leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q(31 downto 12);

    -- i_unnamed_conv1x1114_vt_const_11(CONSTANT,676)
    i_unnamed_conv1x1114_vt_const_11_q <= "000000000000";

    -- i_unnamed_conv1x1164_vt_join(BITJOIN,716)@14
    i_unnamed_conv1x1164_vt_join_q <= i_unnamed_conv1x1164_vt_select_31_b & i_unnamed_conv1x1114_vt_const_11_q;

    -- xMSB_uid1386_i_unnamed_conv1x1167_shift_x(BITSELECT,1385)@14
    xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1164_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1408_i_unnamed_conv1x1167_shift_x(BITSELECT,1407)@14
    rightShiftStage4Idx1Rng1_uid1408_i_unnamed_conv1x1167_shift_x_b <= rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1409_i_unnamed_conv1x1167_shift_x(BITJOIN,1408)@14
    rightShiftStage4Idx1_uid1409_i_unnamed_conv1x1167_shift_x_q <= xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b & rightShiftStage4Idx1Rng1_uid1408_i_unnamed_conv1x1167_shift_x_b;

    -- seMsb_to2_uid1403(BITSELECT,1402)@14
    seMsb_to2_uid1403_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b(0)) & xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b));
    seMsb_to2_uid1403_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1403_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1404_i_unnamed_conv1x1167_shift_x(BITSELECT,1403)@14
    rightShiftStage3Idx1Rng2_uid1404_i_unnamed_conv1x1167_shift_x_b <= rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1405_i_unnamed_conv1x1167_shift_x(BITJOIN,1404)@14
    rightShiftStage3Idx1_uid1405_i_unnamed_conv1x1167_shift_x_q <= seMsb_to2_uid1403_b & rightShiftStage3Idx1Rng2_uid1404_i_unnamed_conv1x1167_shift_x_b;

    -- seMsb_to4_uid1398(BITSELECT,1397)@14
    seMsb_to4_uid1398_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b(0)) & xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b));
    seMsb_to4_uid1398_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1398_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1399_i_unnamed_conv1x1167_shift_x(BITSELECT,1398)@14
    rightShiftStage2Idx1Rng4_uid1399_i_unnamed_conv1x1167_shift_x_b <= rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1400_i_unnamed_conv1x1167_shift_x(BITJOIN,1399)@14
    rightShiftStage2Idx1_uid1400_i_unnamed_conv1x1167_shift_x_q <= seMsb_to4_uid1398_b & rightShiftStage2Idx1Rng4_uid1399_i_unnamed_conv1x1167_shift_x_b;

    -- seMsb_to8_uid1393(BITSELECT,1392)@14
    seMsb_to8_uid1393_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b(0)) & xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b));
    seMsb_to8_uid1393_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1393_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1394_i_unnamed_conv1x1167_shift_x(BITSELECT,1393)@14
    rightShiftStage1Idx1Rng8_uid1394_i_unnamed_conv1x1167_shift_x_b <= rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1395_i_unnamed_conv1x1167_shift_x(BITJOIN,1394)@14
    rightShiftStage1Idx1_uid1395_i_unnamed_conv1x1167_shift_x_q <= seMsb_to8_uid1393_b & rightShiftStage1Idx1Rng8_uid1394_i_unnamed_conv1x1167_shift_x_b;

    -- seMsb_to16_uid1388(BITSELECT,1387)@14
    seMsb_to16_uid1388_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b(0)) & xMSB_uid1386_i_unnamed_conv1x1167_shift_x_b));
    seMsb_to16_uid1388_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1388_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1389_i_unnamed_conv1x1167_shift_x(BITSELECT,1388)@14
    rightShiftStage0Idx1Rng16_uid1389_i_unnamed_conv1x1167_shift_x_b <= i_unnamed_conv1x1164_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1390_i_unnamed_conv1x1167_shift_x(BITJOIN,1389)@14
    rightShiftStage0Idx1_uid1390_i_unnamed_conv1x1167_shift_x_q <= seMsb_to16_uid1388_b & rightShiftStage0Idx1Rng16_uid1389_i_unnamed_conv1x1167_shift_x_b;

    -- rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x(MUX,1391)@14
    rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_s <= VCC_q;
    rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_combproc: PROCESS (rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_s, i_unnamed_conv1x1164_vt_join_q, rightShiftStage0Idx1_uid1390_i_unnamed_conv1x1167_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_q <= i_unnamed_conv1x1164_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_q <= rightShiftStage0Idx1_uid1390_i_unnamed_conv1x1167_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x(MUX,1396)@14
    rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_s <= VCC_q;
    rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_combproc: PROCESS (rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_s, rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_q, rightShiftStage1Idx1_uid1395_i_unnamed_conv1x1167_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_q <= rightShiftStage0_uid1392_i_unnamed_conv1x1167_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_q <= rightShiftStage1Idx1_uid1395_i_unnamed_conv1x1167_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x(MUX,1401)@14
    rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_s <= VCC_q;
    rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_combproc: PROCESS (rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_s, rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_q, rightShiftStage2Idx1_uid1400_i_unnamed_conv1x1167_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_q <= rightShiftStage1_uid1397_i_unnamed_conv1x1167_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_q <= rightShiftStage2Idx1_uid1400_i_unnamed_conv1x1167_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x(MUX,1406)@14
    rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_s <= VCC_q;
    rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_combproc: PROCESS (rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_s, rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_q, rightShiftStage3Idx1_uid1405_i_unnamed_conv1x1167_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_q <= rightShiftStage2_uid1402_i_unnamed_conv1x1167_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_q <= rightShiftStage3Idx1_uid1405_i_unnamed_conv1x1167_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x(MUX,1410)@14
    rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x_s <= VCC_q;
    rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x_combproc: PROCESS (rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x_s, rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_q, rightShiftStage4Idx1_uid1409_i_unnamed_conv1x1167_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x_q <= rightShiftStage3_uid1407_i_unnamed_conv1x1167_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x_q <= rightShiftStage4Idx1_uid1409_i_unnamed_conv1x1167_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked37_conv1x1(LOGICAL,610)@14
    i_mul16_masked37_conv1x1_q <= rightShiftStage4_uid1411_i_unnamed_conv1x1167_shift_x_q and i_syncbuf_stride_sync_buffer106_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x(MUX,1419)@14
    leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_s <= VCC_q;
    leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_combproc: PROCESS (leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_s, i_mul16_masked37_conv1x1_q, leftShiftStage0Idx1_uid1418_i_unnamed_conv1x1171_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_q <= i_mul16_masked37_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_q <= leftShiftStage0Idx1_uid1418_i_unnamed_conv1x1171_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x(MUX,1424)@14
    leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_s <= VCC_q;
    leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_combproc: PROCESS (leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_s, leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_q, leftShiftStage1Idx1_uid1423_i_unnamed_conv1x1171_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_q <= leftShiftStage0_uid1420_i_unnamed_conv1x1171_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_q <= leftShiftStage1Idx1_uid1423_i_unnamed_conv1x1171_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x(MUX,1429)@14
    leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x_s <= VCC_q;
    leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x_combproc: PROCESS (leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x_s, leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_q, leftShiftStage2Idx1_uid1428_i_unnamed_conv1x1171_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x_q <= leftShiftStage1_uid1425_i_unnamed_conv1x1171_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x_q <= leftShiftStage2Idx1_uid1428_i_unnamed_conv1x1171_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1170_vt_select_31(BITSELECT,720)@14
    i_unnamed_conv1x1170_vt_select_31_b <= leftShiftStage2_uid1430_i_unnamed_conv1x1171_shift_x_q(31 downto 19);

    -- redist30_i_unnamed_conv1x1170_vt_select_31_b_4(DELAY,2711)
    redist30_i_unnamed_conv1x1170_vt_select_31_b_4 : dspba_delay
    GENERIC MAP ( width => 13, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1170_vt_select_31_b, xout => redist30_i_unnamed_conv1x1170_vt_select_31_b_4_q, clk => clock, aclr => resetn );

    -- redist30_i_unnamed_conv1x1170_vt_select_31_b_4_outputreg(DELAY,2799)
    redist30_i_unnamed_conv1x1170_vt_select_31_b_4_outputreg : dspba_delay
    GENERIC MAP ( width => 13, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist30_i_unnamed_conv1x1170_vt_select_31_b_4_q, xout => redist30_i_unnamed_conv1x1170_vt_select_31_b_4_outputreg_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1108_vt_const_18(CONSTANT,673)
    i_unnamed_conv1x1108_vt_const_18_q <= "0000000000000000000";

    -- i_unnamed_conv1x1170_vt_join(BITJOIN,719)@18
    i_unnamed_conv1x1170_vt_join_q <= redist30_i_unnamed_conv1x1170_vt_select_31_b_4_outputreg_q & i_unnamed_conv1x1108_vt_const_18_q;

    -- leftShiftStage1Idx1Rng2_uid1366_i_unnamed_conv1x1163_shift_x(BITSELECT,1365)@14
    leftShiftStage1Idx1Rng2_uid1366_i_unnamed_conv1x1163_shift_x_in <= leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1366_i_unnamed_conv1x1163_shift_x_b <= leftShiftStage1Idx1Rng2_uid1366_i_unnamed_conv1x1163_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1367_i_unnamed_conv1x1163_shift_x(BITJOIN,1366)@14
    leftShiftStage1Idx1_uid1367_i_unnamed_conv1x1163_shift_x_q <= leftShiftStage1Idx1Rng2_uid1366_i_unnamed_conv1x1163_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage0Idx1Rng16_uid1361_i_unnamed_conv1x1163_shift_x(BITSELECT,1360)@14
    leftShiftStage0Idx1Rng16_uid1361_i_unnamed_conv1x1163_shift_x_in <= i_mul16_masked35_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1361_i_unnamed_conv1x1163_shift_x_b <= leftShiftStage0Idx1Rng16_uid1361_i_unnamed_conv1x1163_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1362_i_unnamed_conv1x1163_shift_x(BITJOIN,1361)@14
    leftShiftStage0Idx1_uid1362_i_unnamed_conv1x1163_shift_x_q <= leftShiftStage0Idx1Rng16_uid1361_i_unnamed_conv1x1163_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer107_conv1x1(BLACKBOX,644)@0
    -- in in_i_dependence@14
    -- in in_valid_in@14
    -- out out_buffer_out@14
    -- out out_valid_out@14
    thei_syncbuf_stride_sync_buffer107_conv1x1 : i_syncbuf_stride_sync_buffer107_conv1x1160
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist65_sync_in_aunroll_x_in_i_valid_13_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer107_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng1_uid1324_i_unnamed_conv1x1157_shift_x(BITSELECT,1323)@14
    leftShiftStage2Idx1Rng1_uid1324_i_unnamed_conv1x1157_shift_x_in <= leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1324_i_unnamed_conv1x1157_shift_x_b <= leftShiftStage2Idx1Rng1_uid1324_i_unnamed_conv1x1157_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1325_i_unnamed_conv1x1157_shift_x(BITJOIN,1324)@14
    leftShiftStage2Idx1_uid1325_i_unnamed_conv1x1157_shift_x_q <= leftShiftStage2Idx1Rng1_uid1324_i_unnamed_conv1x1157_shift_x_b & GND_q;

    -- leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x(MUX,1326)@14
    leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x_s <= VCC_q;
    leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x_combproc: PROCESS (leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x_s, leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q, leftShiftStage2Idx1_uid1325_i_unnamed_conv1x1157_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x_q <= leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x_q <= leftShiftStage2Idx1_uid1325_i_unnamed_conv1x1157_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1156_vt_select_31(BITSELECT,711)@14
    i_unnamed_conv1x1156_vt_select_31_b <= leftShiftStage2_uid1327_i_unnamed_conv1x1157_shift_x_q(31 downto 13);

    -- i_unnamed_conv1x1122_vt_const_12(CONSTANT,682)
    i_unnamed_conv1x1122_vt_const_12_q <= "0000000000000";

    -- i_unnamed_conv1x1156_vt_join(BITJOIN,710)@14
    i_unnamed_conv1x1156_vt_join_q <= i_unnamed_conv1x1156_vt_select_31_b & i_unnamed_conv1x1122_vt_const_12_q;

    -- xMSB_uid1330_i_unnamed_conv1x1159_shift_x(BITSELECT,1329)@14
    xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1156_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1352_i_unnamed_conv1x1159_shift_x(BITSELECT,1351)@14
    rightShiftStage4Idx1Rng1_uid1352_i_unnamed_conv1x1159_shift_x_b <= rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1353_i_unnamed_conv1x1159_shift_x(BITJOIN,1352)@14
    rightShiftStage4Idx1_uid1353_i_unnamed_conv1x1159_shift_x_q <= xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b & rightShiftStage4Idx1Rng1_uid1352_i_unnamed_conv1x1159_shift_x_b;

    -- seMsb_to2_uid1347(BITSELECT,1346)@14
    seMsb_to2_uid1347_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b(0)) & xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b));
    seMsb_to2_uid1347_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1347_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1348_i_unnamed_conv1x1159_shift_x(BITSELECT,1347)@14
    rightShiftStage3Idx1Rng2_uid1348_i_unnamed_conv1x1159_shift_x_b <= rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1349_i_unnamed_conv1x1159_shift_x(BITJOIN,1348)@14
    rightShiftStage3Idx1_uid1349_i_unnamed_conv1x1159_shift_x_q <= seMsb_to2_uid1347_b & rightShiftStage3Idx1Rng2_uid1348_i_unnamed_conv1x1159_shift_x_b;

    -- seMsb_to4_uid1342(BITSELECT,1341)@14
    seMsb_to4_uid1342_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b(0)) & xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b));
    seMsb_to4_uid1342_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1342_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1343_i_unnamed_conv1x1159_shift_x(BITSELECT,1342)@14
    rightShiftStage2Idx1Rng4_uid1343_i_unnamed_conv1x1159_shift_x_b <= rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1344_i_unnamed_conv1x1159_shift_x(BITJOIN,1343)@14
    rightShiftStage2Idx1_uid1344_i_unnamed_conv1x1159_shift_x_q <= seMsb_to4_uid1342_b & rightShiftStage2Idx1Rng4_uid1343_i_unnamed_conv1x1159_shift_x_b;

    -- seMsb_to8_uid1337(BITSELECT,1336)@14
    seMsb_to8_uid1337_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b(0)) & xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b));
    seMsb_to8_uid1337_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1337_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1338_i_unnamed_conv1x1159_shift_x(BITSELECT,1337)@14
    rightShiftStage1Idx1Rng8_uid1338_i_unnamed_conv1x1159_shift_x_b <= rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1339_i_unnamed_conv1x1159_shift_x(BITJOIN,1338)@14
    rightShiftStage1Idx1_uid1339_i_unnamed_conv1x1159_shift_x_q <= seMsb_to8_uid1337_b & rightShiftStage1Idx1Rng8_uid1338_i_unnamed_conv1x1159_shift_x_b;

    -- seMsb_to16_uid1332(BITSELECT,1331)@14
    seMsb_to16_uid1332_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b(0)) & xMSB_uid1330_i_unnamed_conv1x1159_shift_x_b));
    seMsb_to16_uid1332_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1332_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1333_i_unnamed_conv1x1159_shift_x(BITSELECT,1332)@14
    rightShiftStage0Idx1Rng16_uid1333_i_unnamed_conv1x1159_shift_x_b <= i_unnamed_conv1x1156_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1334_i_unnamed_conv1x1159_shift_x(BITJOIN,1333)@14
    rightShiftStage0Idx1_uid1334_i_unnamed_conv1x1159_shift_x_q <= seMsb_to16_uid1332_b & rightShiftStage0Idx1Rng16_uid1333_i_unnamed_conv1x1159_shift_x_b;

    -- rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x(MUX,1335)@14
    rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_s <= VCC_q;
    rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_combproc: PROCESS (rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_s, i_unnamed_conv1x1156_vt_join_q, rightShiftStage0Idx1_uid1334_i_unnamed_conv1x1159_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_q <= i_unnamed_conv1x1156_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_q <= rightShiftStage0Idx1_uid1334_i_unnamed_conv1x1159_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x(MUX,1340)@14
    rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_s <= VCC_q;
    rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_combproc: PROCESS (rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_s, rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_q, rightShiftStage1Idx1_uid1339_i_unnamed_conv1x1159_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_q <= rightShiftStage0_uid1336_i_unnamed_conv1x1159_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_q <= rightShiftStage1Idx1_uid1339_i_unnamed_conv1x1159_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x(MUX,1345)@14
    rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_s <= VCC_q;
    rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_combproc: PROCESS (rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_s, rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_q, rightShiftStage2Idx1_uid1344_i_unnamed_conv1x1159_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_q <= rightShiftStage1_uid1341_i_unnamed_conv1x1159_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_q <= rightShiftStage2Idx1_uid1344_i_unnamed_conv1x1159_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x(MUX,1350)@14
    rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_s <= VCC_q;
    rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_combproc: PROCESS (rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_s, rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_q, rightShiftStage3Idx1_uid1349_i_unnamed_conv1x1159_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_q <= rightShiftStage2_uid1346_i_unnamed_conv1x1159_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_q <= rightShiftStage3Idx1_uid1349_i_unnamed_conv1x1159_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x(MUX,1354)@14
    rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x_s <= VCC_q;
    rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x_combproc: PROCESS (rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x_s, rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_q, rightShiftStage4Idx1_uid1353_i_unnamed_conv1x1159_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x_q <= rightShiftStage3_uid1351_i_unnamed_conv1x1159_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x_q <= rightShiftStage4Idx1_uid1353_i_unnamed_conv1x1159_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked35_conv1x1(LOGICAL,609)@14
    i_mul16_masked35_conv1x1_q <= rightShiftStage4_uid1355_i_unnamed_conv1x1159_shift_x_q and i_syncbuf_stride_sync_buffer107_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x(MUX,1363)@14
    leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_s <= VCC_q;
    leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_combproc: PROCESS (leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_s, i_mul16_masked35_conv1x1_q, leftShiftStage0Idx1_uid1362_i_unnamed_conv1x1163_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_q <= i_mul16_masked35_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_q <= leftShiftStage0Idx1_uid1362_i_unnamed_conv1x1163_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x(MUX,1368)@14
    leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x_s <= VCC_q;
    leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x_combproc: PROCESS (leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x_s, leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_q, leftShiftStage1Idx1_uid1367_i_unnamed_conv1x1163_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x_q <= leftShiftStage0_uid1364_i_unnamed_conv1x1163_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x_q <= leftShiftStage1Idx1_uid1367_i_unnamed_conv1x1163_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1162_vt_select_31(BITSELECT,714)@14
    i_unnamed_conv1x1162_vt_select_31_b <= leftShiftStage1_uid1369_i_unnamed_conv1x1163_shift_x_q(31 downto 18);

    -- redist31_i_unnamed_conv1x1162_vt_select_31_b_3(DELAY,2712)
    redist31_i_unnamed_conv1x1162_vt_select_31_b_3 : dspba_delay
    GENERIC MAP ( width => 14, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1162_vt_select_31_b, xout => redist31_i_unnamed_conv1x1162_vt_select_31_b_3_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1116_vt_const_17(CONSTANT,679)
    i_unnamed_conv1x1116_vt_const_17_q <= "000000000000000000";

    -- i_unnamed_conv1x1162_vt_join(BITJOIN,713)@17
    i_unnamed_conv1x1162_vt_join_q <= redist31_i_unnamed_conv1x1162_vt_select_31_b_3_q & i_unnamed_conv1x1116_vt_const_17_q;

    -- leftShiftStage1Idx1Rng1_uid1305_i_unnamed_conv1x1155_shift_x(BITSELECT,1304)@14
    leftShiftStage1Idx1Rng1_uid1305_i_unnamed_conv1x1155_shift_x_in <= leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1305_i_unnamed_conv1x1155_shift_x_b <= leftShiftStage1Idx1Rng1_uid1305_i_unnamed_conv1x1155_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1306_i_unnamed_conv1x1155_shift_x(BITJOIN,1305)@14
    leftShiftStage1Idx1_uid1306_i_unnamed_conv1x1155_shift_x_q <= leftShiftStage1Idx1Rng1_uid1305_i_unnamed_conv1x1155_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng16_uid1300_i_unnamed_conv1x1155_shift_x(BITSELECT,1299)@14
    leftShiftStage0Idx1Rng16_uid1300_i_unnamed_conv1x1155_shift_x_in <= i_mul16_masked33_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1300_i_unnamed_conv1x1155_shift_x_b <= leftShiftStage0Idx1Rng16_uid1300_i_unnamed_conv1x1155_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1301_i_unnamed_conv1x1155_shift_x(BITJOIN,1300)@14
    leftShiftStage0Idx1_uid1301_i_unnamed_conv1x1155_shift_x_q <= leftShiftStage0Idx1Rng16_uid1300_i_unnamed_conv1x1155_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer108_conv1x1(BLACKBOX,645)@0
    -- in in_i_dependence@14
    -- in in_valid_in@14
    -- out out_buffer_out@14
    -- out out_valid_out@14
    thei_syncbuf_stride_sync_buffer108_conv1x1 : i_syncbuf_stride_sync_buffer108_conv1x1152
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist65_sync_in_aunroll_x_in_i_valid_13_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer108_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng2_uid1202_i_unnamed_conv1x1141_shift_x(BITSELECT,1201)@14
    leftShiftStage2Idx1Rng2_uid1202_i_unnamed_conv1x1141_shift_x_in <= leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1202_i_unnamed_conv1x1141_shift_x_b <= leftShiftStage2Idx1Rng2_uid1202_i_unnamed_conv1x1141_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1203_i_unnamed_conv1x1141_shift_x(BITJOIN,1202)@14
    leftShiftStage2Idx1_uid1203_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage2Idx1Rng2_uid1202_i_unnamed_conv1x1141_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x(MUX,1204)@14
    leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_s <= VCC_q;
    leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_combproc: PROCESS (leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_s, leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q, leftShiftStage2Idx1_uid1203_i_unnamed_conv1x1141_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage1_uid1200_i_unnamed_conv1x1141_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage2Idx1_uid1203_i_unnamed_conv1x1141_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1148_vt_select_31(BITSELECT,705)@14
    i_unnamed_conv1x1148_vt_select_31_b <= leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_q(31 downto 14);

    -- i_unnamed_conv1x1130_vt_const_13(CONSTANT,688)
    i_unnamed_conv1x1130_vt_const_13_q <= "00000000000000";

    -- i_unnamed_conv1x1148_vt_join(BITJOIN,704)@14
    i_unnamed_conv1x1148_vt_join_q <= i_unnamed_conv1x1148_vt_select_31_b & i_unnamed_conv1x1130_vt_const_13_q;

    -- xMSB_uid1269_i_unnamed_conv1x1151_shift_x(BITSELECT,1268)@14
    xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1148_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1291_i_unnamed_conv1x1151_shift_x(BITSELECT,1290)@14
    rightShiftStage4Idx1Rng1_uid1291_i_unnamed_conv1x1151_shift_x_b <= rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1292_i_unnamed_conv1x1151_shift_x(BITJOIN,1291)@14
    rightShiftStage4Idx1_uid1292_i_unnamed_conv1x1151_shift_x_q <= xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b & rightShiftStage4Idx1Rng1_uid1291_i_unnamed_conv1x1151_shift_x_b;

    -- seMsb_to2_uid1286(BITSELECT,1285)@14
    seMsb_to2_uid1286_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b(0)) & xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b));
    seMsb_to2_uid1286_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1286_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1287_i_unnamed_conv1x1151_shift_x(BITSELECT,1286)@14
    rightShiftStage3Idx1Rng2_uid1287_i_unnamed_conv1x1151_shift_x_b <= rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1288_i_unnamed_conv1x1151_shift_x(BITJOIN,1287)@14
    rightShiftStage3Idx1_uid1288_i_unnamed_conv1x1151_shift_x_q <= seMsb_to2_uid1286_b & rightShiftStage3Idx1Rng2_uid1287_i_unnamed_conv1x1151_shift_x_b;

    -- seMsb_to4_uid1281(BITSELECT,1280)@14
    seMsb_to4_uid1281_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b(0)) & xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b));
    seMsb_to4_uid1281_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1281_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1282_i_unnamed_conv1x1151_shift_x(BITSELECT,1281)@14
    rightShiftStage2Idx1Rng4_uid1282_i_unnamed_conv1x1151_shift_x_b <= rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1283_i_unnamed_conv1x1151_shift_x(BITJOIN,1282)@14
    rightShiftStage2Idx1_uid1283_i_unnamed_conv1x1151_shift_x_q <= seMsb_to4_uid1281_b & rightShiftStage2Idx1Rng4_uid1282_i_unnamed_conv1x1151_shift_x_b;

    -- seMsb_to8_uid1276(BITSELECT,1275)@14
    seMsb_to8_uid1276_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b(0)) & xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b));
    seMsb_to8_uid1276_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1276_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1277_i_unnamed_conv1x1151_shift_x(BITSELECT,1276)@14
    rightShiftStage1Idx1Rng8_uid1277_i_unnamed_conv1x1151_shift_x_b <= rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1278_i_unnamed_conv1x1151_shift_x(BITJOIN,1277)@14
    rightShiftStage1Idx1_uid1278_i_unnamed_conv1x1151_shift_x_q <= seMsb_to8_uid1276_b & rightShiftStage1Idx1Rng8_uid1277_i_unnamed_conv1x1151_shift_x_b;

    -- seMsb_to16_uid1271(BITSELECT,1270)@14
    seMsb_to16_uid1271_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b(0)) & xMSB_uid1269_i_unnamed_conv1x1151_shift_x_b));
    seMsb_to16_uid1271_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1271_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1272_i_unnamed_conv1x1151_shift_x(BITSELECT,1271)@14
    rightShiftStage0Idx1Rng16_uid1272_i_unnamed_conv1x1151_shift_x_b <= i_unnamed_conv1x1148_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1273_i_unnamed_conv1x1151_shift_x(BITJOIN,1272)@14
    rightShiftStage0Idx1_uid1273_i_unnamed_conv1x1151_shift_x_q <= seMsb_to16_uid1271_b & rightShiftStage0Idx1Rng16_uid1272_i_unnamed_conv1x1151_shift_x_b;

    -- rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x(MUX,1274)@14
    rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_s <= VCC_q;
    rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_combproc: PROCESS (rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_s, i_unnamed_conv1x1148_vt_join_q, rightShiftStage0Idx1_uid1273_i_unnamed_conv1x1151_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_q <= i_unnamed_conv1x1148_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_q <= rightShiftStage0Idx1_uid1273_i_unnamed_conv1x1151_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x(MUX,1279)@14
    rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_s <= VCC_q;
    rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_combproc: PROCESS (rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_s, rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_q, rightShiftStage1Idx1_uid1278_i_unnamed_conv1x1151_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_q <= rightShiftStage0_uid1275_i_unnamed_conv1x1151_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_q <= rightShiftStage1Idx1_uid1278_i_unnamed_conv1x1151_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x(MUX,1284)@14
    rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_s <= VCC_q;
    rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_combproc: PROCESS (rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_s, rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_q, rightShiftStage2Idx1_uid1283_i_unnamed_conv1x1151_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_q <= rightShiftStage1_uid1280_i_unnamed_conv1x1151_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_q <= rightShiftStage2Idx1_uid1283_i_unnamed_conv1x1151_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x(MUX,1289)@14
    rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_s <= VCC_q;
    rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_combproc: PROCESS (rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_s, rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_q, rightShiftStage3Idx1_uid1288_i_unnamed_conv1x1151_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_q <= rightShiftStage2_uid1285_i_unnamed_conv1x1151_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_q <= rightShiftStage3Idx1_uid1288_i_unnamed_conv1x1151_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x(MUX,1293)@14
    rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x_s <= VCC_q;
    rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x_combproc: PROCESS (rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x_s, rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_q, rightShiftStage4Idx1_uid1292_i_unnamed_conv1x1151_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x_q <= rightShiftStage3_uid1290_i_unnamed_conv1x1151_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x_q <= rightShiftStage4Idx1_uid1292_i_unnamed_conv1x1151_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked33_conv1x1(LOGICAL,608)@14
    i_mul16_masked33_conv1x1_q <= rightShiftStage4_uid1294_i_unnamed_conv1x1151_shift_x_q and i_syncbuf_stride_sync_buffer108_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x(MUX,1302)@14
    leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_s <= VCC_q;
    leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_combproc: PROCESS (leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_s, i_mul16_masked33_conv1x1_q, leftShiftStage0Idx1_uid1301_i_unnamed_conv1x1155_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_q <= i_mul16_masked33_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_q <= leftShiftStage0Idx1_uid1301_i_unnamed_conv1x1155_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x(MUX,1307)@14
    leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x_s <= VCC_q;
    leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x_combproc: PROCESS (leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x_s, leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_q, leftShiftStage1Idx1_uid1306_i_unnamed_conv1x1155_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x_q <= leftShiftStage0_uid1303_i_unnamed_conv1x1155_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x_q <= leftShiftStage1Idx1_uid1306_i_unnamed_conv1x1155_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1154_vt_select_31(BITSELECT,708)@14
    i_unnamed_conv1x1154_vt_select_31_b <= leftShiftStage1_uid1308_i_unnamed_conv1x1155_shift_x_q(31 downto 17);

    -- redist32_i_unnamed_conv1x1154_vt_select_31_b_2(DELAY,2713)
    redist32_i_unnamed_conv1x1154_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1154_vt_select_31_b, xout => redist32_i_unnamed_conv1x1154_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1124_vt_const_16(CONSTANT,685)
    i_unnamed_conv1x1124_vt_const_16_q <= "00000000000000000";

    -- i_unnamed_conv1x1154_vt_join(BITJOIN,707)@16
    i_unnamed_conv1x1154_vt_join_q <= redist32_i_unnamed_conv1x1154_vt_select_31_b_2_q & i_unnamed_conv1x1124_vt_const_16_q;

    -- leftShiftStage0Idx1Rng16_uid1244_i_unnamed_conv1x1147_shift_x(BITSELECT,1243)@14
    leftShiftStage0Idx1Rng16_uid1244_i_unnamed_conv1x1147_shift_x_in <= i_mul16_masked31_conv1x1_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1244_i_unnamed_conv1x1147_shift_x_b <= leftShiftStage0Idx1Rng16_uid1244_i_unnamed_conv1x1147_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1245_i_unnamed_conv1x1147_shift_x(BITJOIN,1244)@14
    leftShiftStage0Idx1_uid1245_i_unnamed_conv1x1147_shift_x_q <= leftShiftStage0Idx1Rng16_uid1244_i_unnamed_conv1x1147_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- i_syncbuf_stride_sync_buffer109_conv1x1(BLACKBOX,646)@0
    -- in in_i_dependence@14
    -- in in_valid_in@14
    -- out out_buffer_out@14
    -- out out_valid_out@14
    thei_syncbuf_stride_sync_buffer109_conv1x1 : i_syncbuf_stride_sync_buffer109_conv1x1144
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist65_sync_in_aunroll_x_in_i_valid_13_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer109_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage3Idx1Rng1_uid1207_i_unnamed_conv1x1141_shift_x(BITSELECT,1206)@14
    leftShiftStage3Idx1Rng1_uid1207_i_unnamed_conv1x1141_shift_x_in <= leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid1207_i_unnamed_conv1x1141_shift_x_b <= leftShiftStage3Idx1Rng1_uid1207_i_unnamed_conv1x1141_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid1208_i_unnamed_conv1x1141_shift_x(BITJOIN,1207)@14
    leftShiftStage3Idx1_uid1208_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage3Idx1Rng1_uid1207_i_unnamed_conv1x1141_shift_x_b & GND_q;

    -- leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x(MUX,1209)@14
    leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x_s <= VCC_q;
    leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x_combproc: PROCESS (leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x_s, leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_q, leftShiftStage3Idx1_uid1208_i_unnamed_conv1x1141_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage2_uid1205_i_unnamed_conv1x1141_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x_q <= leftShiftStage3Idx1_uid1208_i_unnamed_conv1x1141_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1140_vt_select_31(BITSELECT,699)@14
    i_unnamed_conv1x1140_vt_select_31_b <= leftShiftStage3_uid1210_i_unnamed_conv1x1141_shift_x_q(31 downto 15);

    -- i_unnamed_conv1x1138_vt_const_14(CONSTANT,694)
    i_unnamed_conv1x1138_vt_const_14_q <= "000000000000000";

    -- i_unnamed_conv1x1140_vt_join(BITJOIN,698)@14
    i_unnamed_conv1x1140_vt_join_q <= i_unnamed_conv1x1140_vt_select_31_b & i_unnamed_conv1x1138_vt_const_14_q;

    -- xMSB_uid1213_i_unnamed_conv1x1143_shift_x(BITSELECT,1212)@14
    xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1140_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1235_i_unnamed_conv1x1143_shift_x(BITSELECT,1234)@14
    rightShiftStage4Idx1Rng1_uid1235_i_unnamed_conv1x1143_shift_x_b <= rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1236_i_unnamed_conv1x1143_shift_x(BITJOIN,1235)@14
    rightShiftStage4Idx1_uid1236_i_unnamed_conv1x1143_shift_x_q <= xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b & rightShiftStage4Idx1Rng1_uid1235_i_unnamed_conv1x1143_shift_x_b;

    -- seMsb_to2_uid1230(BITSELECT,1229)@14
    seMsb_to2_uid1230_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b(0)) & xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b));
    seMsb_to2_uid1230_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1230_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1231_i_unnamed_conv1x1143_shift_x(BITSELECT,1230)@14
    rightShiftStage3Idx1Rng2_uid1231_i_unnamed_conv1x1143_shift_x_b <= rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1232_i_unnamed_conv1x1143_shift_x(BITJOIN,1231)@14
    rightShiftStage3Idx1_uid1232_i_unnamed_conv1x1143_shift_x_q <= seMsb_to2_uid1230_b & rightShiftStage3Idx1Rng2_uid1231_i_unnamed_conv1x1143_shift_x_b;

    -- seMsb_to4_uid1225(BITSELECT,1224)@14
    seMsb_to4_uid1225_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b(0)) & xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b));
    seMsb_to4_uid1225_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1225_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1226_i_unnamed_conv1x1143_shift_x(BITSELECT,1225)@14
    rightShiftStage2Idx1Rng4_uid1226_i_unnamed_conv1x1143_shift_x_b <= rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1227_i_unnamed_conv1x1143_shift_x(BITJOIN,1226)@14
    rightShiftStage2Idx1_uid1227_i_unnamed_conv1x1143_shift_x_q <= seMsb_to4_uid1225_b & rightShiftStage2Idx1Rng4_uid1226_i_unnamed_conv1x1143_shift_x_b;

    -- seMsb_to8_uid1220(BITSELECT,1219)@14
    seMsb_to8_uid1220_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b(0)) & xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b));
    seMsb_to8_uid1220_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1220_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1221_i_unnamed_conv1x1143_shift_x(BITSELECT,1220)@14
    rightShiftStage1Idx1Rng8_uid1221_i_unnamed_conv1x1143_shift_x_b <= rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1222_i_unnamed_conv1x1143_shift_x(BITJOIN,1221)@14
    rightShiftStage1Idx1_uid1222_i_unnamed_conv1x1143_shift_x_q <= seMsb_to8_uid1220_b & rightShiftStage1Idx1Rng8_uid1221_i_unnamed_conv1x1143_shift_x_b;

    -- seMsb_to16_uid1215(BITSELECT,1214)@14
    seMsb_to16_uid1215_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b(0)) & xMSB_uid1213_i_unnamed_conv1x1143_shift_x_b));
    seMsb_to16_uid1215_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1215_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1216_i_unnamed_conv1x1143_shift_x(BITSELECT,1215)@14
    rightShiftStage0Idx1Rng16_uid1216_i_unnamed_conv1x1143_shift_x_b <= i_unnamed_conv1x1140_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1217_i_unnamed_conv1x1143_shift_x(BITJOIN,1216)@14
    rightShiftStage0Idx1_uid1217_i_unnamed_conv1x1143_shift_x_q <= seMsb_to16_uid1215_b & rightShiftStage0Idx1Rng16_uid1216_i_unnamed_conv1x1143_shift_x_b;

    -- rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x(MUX,1218)@14
    rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_s <= VCC_q;
    rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_combproc: PROCESS (rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_s, i_unnamed_conv1x1140_vt_join_q, rightShiftStage0Idx1_uid1217_i_unnamed_conv1x1143_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_q <= i_unnamed_conv1x1140_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_q <= rightShiftStage0Idx1_uid1217_i_unnamed_conv1x1143_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x(MUX,1223)@14
    rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_s <= VCC_q;
    rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_combproc: PROCESS (rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_s, rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_q, rightShiftStage1Idx1_uid1222_i_unnamed_conv1x1143_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_q <= rightShiftStage0_uid1219_i_unnamed_conv1x1143_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_q <= rightShiftStage1Idx1_uid1222_i_unnamed_conv1x1143_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x(MUX,1228)@14
    rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_s <= VCC_q;
    rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_combproc: PROCESS (rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_s, rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_q, rightShiftStage2Idx1_uid1227_i_unnamed_conv1x1143_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_q <= rightShiftStage1_uid1224_i_unnamed_conv1x1143_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_q <= rightShiftStage2Idx1_uid1227_i_unnamed_conv1x1143_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x(MUX,1233)@14
    rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_s <= VCC_q;
    rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_combproc: PROCESS (rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_s, rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_q, rightShiftStage3Idx1_uid1232_i_unnamed_conv1x1143_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_q <= rightShiftStage2_uid1229_i_unnamed_conv1x1143_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_q <= rightShiftStage3Idx1_uid1232_i_unnamed_conv1x1143_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x(MUX,1237)@14
    rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x_s <= VCC_q;
    rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x_combproc: PROCESS (rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x_s, rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_q, rightShiftStage4Idx1_uid1236_i_unnamed_conv1x1143_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x_q <= rightShiftStage3_uid1234_i_unnamed_conv1x1143_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x_q <= rightShiftStage4Idx1_uid1236_i_unnamed_conv1x1143_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked31_conv1x1(LOGICAL,607)@14
    i_mul16_masked31_conv1x1_q <= rightShiftStage4_uid1238_i_unnamed_conv1x1143_shift_x_q and i_syncbuf_stride_sync_buffer109_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x(MUX,1246)@14
    leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x_s <= VCC_q;
    leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x_combproc: PROCESS (leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x_s, i_mul16_masked31_conv1x1_q, leftShiftStage0Idx1_uid1245_i_unnamed_conv1x1147_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x_q <= i_mul16_masked31_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x_q <= leftShiftStage0Idx1_uid1245_i_unnamed_conv1x1147_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1146_vt_select_31(BITSELECT,702)@14
    i_unnamed_conv1x1146_vt_select_31_b <= leftShiftStage0_uid1247_i_unnamed_conv1x1147_shift_x_q(31 downto 16);

    -- redist33_i_unnamed_conv1x1146_vt_select_31_b_1(DELAY,2714)
    redist33_i_unnamed_conv1x1146_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1146_vt_select_31_b, xout => redist33_i_unnamed_conv1x1146_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1146_vt_join(BITJOIN,701)@15
    i_unnamed_conv1x1146_vt_join_q <= redist33_i_unnamed_conv1x1146_vt_select_31_b_1_q & i_unnamed_conv1x1132_vt_const_15_q;

    -- leftShiftStage3Idx1Rng1_uid1183_i_unnamed_conv1x1139_shift_x(BITSELECT,1182)@13
    leftShiftStage3Idx1Rng1_uid1183_i_unnamed_conv1x1139_shift_x_in <= leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid1183_i_unnamed_conv1x1139_shift_x_b <= leftShiftStage3Idx1Rng1_uid1183_i_unnamed_conv1x1139_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid1184_i_unnamed_conv1x1139_shift_x(BITJOIN,1183)@13
    leftShiftStage3Idx1_uid1184_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage3Idx1Rng1_uid1183_i_unnamed_conv1x1139_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid1178_i_unnamed_conv1x1139_shift_x(BITSELECT,1177)@13
    leftShiftStage2Idx1Rng2_uid1178_i_unnamed_conv1x1139_shift_x_in <= leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1178_i_unnamed_conv1x1139_shift_x_b <= leftShiftStage2Idx1Rng2_uid1178_i_unnamed_conv1x1139_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1179_i_unnamed_conv1x1139_shift_x(BITJOIN,1178)@13
    leftShiftStage2Idx1_uid1179_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage2Idx1Rng2_uid1178_i_unnamed_conv1x1139_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage1Idx1Rng4_uid1173_i_unnamed_conv1x1139_shift_x(BITSELECT,1172)@13
    leftShiftStage1Idx1Rng4_uid1173_i_unnamed_conv1x1139_shift_x_in <= leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1173_i_unnamed_conv1x1139_shift_x_b <= leftShiftStage1Idx1Rng4_uid1173_i_unnamed_conv1x1139_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1174_i_unnamed_conv1x1139_shift_x(BITJOIN,1173)@13
    leftShiftStage1Idx1_uid1174_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage1Idx1Rng4_uid1173_i_unnamed_conv1x1139_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid1168_i_unnamed_conv1x1139_shift_x(BITSELECT,1167)@13
    leftShiftStage0Idx1Rng8_uid1168_i_unnamed_conv1x1139_shift_x_in <= i_mul16_masked29_conv1x1_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1168_i_unnamed_conv1x1139_shift_x_b <= leftShiftStage0Idx1Rng8_uid1168_i_unnamed_conv1x1139_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1169_i_unnamed_conv1x1139_shift_x(BITJOIN,1168)@13
    leftShiftStage0Idx1_uid1169_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage0Idx1Rng8_uid1168_i_unnamed_conv1x1139_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- i_syncbuf_stride_sync_buffer110_conv1x1(BLACKBOX,647)@0
    -- in in_i_dependence@13
    -- in in_valid_in@13
    -- out out_buffer_out@13
    -- out out_valid_out@13
    thei_syncbuf_stride_sync_buffer110_conv1x1 : i_syncbuf_stride_sync_buffer110_conv1x1136
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist64_sync_in_aunroll_x_in_i_valid_12_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer110_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_notEnable(LOGICAL,2793)
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_nor(LOGICAL,2794)
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_nor_q <= not (redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_notEnable_q or redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_sticky_ena_q);

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_last(CONSTANT,2790)
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_last_q <= "01";

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_cmp(LOGICAL,2791)
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_cmp_q <= "1" WHEN redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_last_q = redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_q ELSE "0";

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_cmpReg(REG,2792)
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_cmpReg_q <= STD_LOGIC_VECTOR(redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_sticky_ena(REG,2795)
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_nor_q = "1") THEN
                redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_enaAnd(LOGICAL,2796)
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_enaAnd_q <= redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_sticky_ena_q and VCC_q;

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt(COUNTER,2788)
    -- low=0, high=2, step=1, init=0
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_eq <= '1';
            ELSE
                redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_eq <= '0';
            END IF;
            IF (redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_eq = '1') THEN
                redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_i <= redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_i + 2;
            ELSE
                redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_i <= redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_i, 2)));

    -- leftShiftStage0Idx1Rng16_uid887_i_unnamed_conv1x1101_shift_x(BITSELECT,886)@1
    leftShiftStage0Idx1Rng16_uid887_i_unnamed_conv1x1101_shift_x_in <= in_c0_eni2_1(15 downto 0);
    leftShiftStage0Idx1Rng16_uid887_i_unnamed_conv1x1101_shift_x_b <= leftShiftStage0Idx1Rng16_uid887_i_unnamed_conv1x1101_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid888_i_unnamed_conv1x1101_shift_x(BITJOIN,887)@1
    leftShiftStage0Idx1_uid888_i_unnamed_conv1x1101_shift_x_q <= leftShiftStage0Idx1Rng16_uid887_i_unnamed_conv1x1101_shift_x_b & i_unnamed_conv1x1132_vt_const_15_q;

    -- leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x(MUX,889)@1
    leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_s <= VCC_q;
    leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_combproc: PROCESS (leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_s, in_c0_eni2_1, leftShiftStage0Idx1_uid888_i_unnamed_conv1x1101_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q <= in_c0_eni2_1;
            WHEN "1" => leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q <= leftShiftStage0Idx1_uid888_i_unnamed_conv1x1101_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_wraddr(REG,2789)
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_wraddr_q <= STD_LOGIC_VECTOR(redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem(DUALMEM,2787)
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_ia <= STD_LOGIC_VECTOR(leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q);
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_aa <= redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_wraddr_q;
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_ab <= redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_rdcnt_q;
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_reset0 <= not (resetn);
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 32,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_reset0,
        clock1 => clock,
        address_a => redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_aa,
        data_a => redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_ab,
        q_b => redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_iq
    );
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_q <= redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_iq(31 downto 0);

    -- redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_outputreg(DELAY,2786)
    redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_mem_q, xout => redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_outputreg_q, clk => clock, aclr => resetn );

    -- redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_inputreg(DELAY,2797)
    redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_outputreg_q, xout => redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_inputreg_q, clk => clock, aclr => resetn );

    -- redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9(DELAY,2683)
    redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_inputreg_q, xout => redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_q, clk => clock, aclr => resetn );

    -- redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg(DELAY,2798)
    redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_q, xout => redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1132_vt_select_31(BITSELECT,693)@10
    i_unnamed_conv1x1132_vt_select_31_b <= redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg_q(31 downto 16);

    -- redist35_i_unnamed_conv1x1132_vt_select_31_b_3_inputreg(DELAY,2800)
    redist35_i_unnamed_conv1x1132_vt_select_31_b_3_inputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1132_vt_select_31_b, xout => redist35_i_unnamed_conv1x1132_vt_select_31_b_3_inputreg_q, clk => clock, aclr => resetn );

    -- redist35_i_unnamed_conv1x1132_vt_select_31_b_3(DELAY,2716)
    redist35_i_unnamed_conv1x1132_vt_select_31_b_3 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist35_i_unnamed_conv1x1132_vt_select_31_b_3_inputreg_q, xout => redist35_i_unnamed_conv1x1132_vt_select_31_b_3_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1132_vt_join(BITJOIN,692)@13
    i_unnamed_conv1x1132_vt_join_q <= redist35_i_unnamed_conv1x1132_vt_select_31_b_3_q & i_unnamed_conv1x1132_vt_const_15_q;

    -- xMSB_uid1137_i_unnamed_conv1x1135_shift_x(BITSELECT,1136)@13
    xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1132_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1159_i_unnamed_conv1x1135_shift_x(BITSELECT,1158)@13
    rightShiftStage4Idx1Rng1_uid1159_i_unnamed_conv1x1135_shift_x_b <= rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1160_i_unnamed_conv1x1135_shift_x(BITJOIN,1159)@13
    rightShiftStage4Idx1_uid1160_i_unnamed_conv1x1135_shift_x_q <= xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b & rightShiftStage4Idx1Rng1_uid1159_i_unnamed_conv1x1135_shift_x_b;

    -- seMsb_to2_uid1154(BITSELECT,1153)@13
    seMsb_to2_uid1154_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b(0)) & xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b));
    seMsb_to2_uid1154_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1154_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1155_i_unnamed_conv1x1135_shift_x(BITSELECT,1154)@13
    rightShiftStage3Idx1Rng2_uid1155_i_unnamed_conv1x1135_shift_x_b <= rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1156_i_unnamed_conv1x1135_shift_x(BITJOIN,1155)@13
    rightShiftStage3Idx1_uid1156_i_unnamed_conv1x1135_shift_x_q <= seMsb_to2_uid1154_b & rightShiftStage3Idx1Rng2_uid1155_i_unnamed_conv1x1135_shift_x_b;

    -- seMsb_to4_uid1149(BITSELECT,1148)@13
    seMsb_to4_uid1149_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b(0)) & xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b));
    seMsb_to4_uid1149_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1149_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1150_i_unnamed_conv1x1135_shift_x(BITSELECT,1149)@13
    rightShiftStage2Idx1Rng4_uid1150_i_unnamed_conv1x1135_shift_x_b <= rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1151_i_unnamed_conv1x1135_shift_x(BITJOIN,1150)@13
    rightShiftStage2Idx1_uid1151_i_unnamed_conv1x1135_shift_x_q <= seMsb_to4_uid1149_b & rightShiftStage2Idx1Rng4_uid1150_i_unnamed_conv1x1135_shift_x_b;

    -- seMsb_to8_uid1144(BITSELECT,1143)@13
    seMsb_to8_uid1144_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b(0)) & xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b));
    seMsb_to8_uid1144_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1144_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1145_i_unnamed_conv1x1135_shift_x(BITSELECT,1144)@13
    rightShiftStage1Idx1Rng8_uid1145_i_unnamed_conv1x1135_shift_x_b <= rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1146_i_unnamed_conv1x1135_shift_x(BITJOIN,1145)@13
    rightShiftStage1Idx1_uid1146_i_unnamed_conv1x1135_shift_x_q <= seMsb_to8_uid1144_b & rightShiftStage1Idx1Rng8_uid1145_i_unnamed_conv1x1135_shift_x_b;

    -- seMsb_to16_uid1139(BITSELECT,1138)@13
    seMsb_to16_uid1139_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b(0)) & xMSB_uid1137_i_unnamed_conv1x1135_shift_x_b));
    seMsb_to16_uid1139_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1139_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1140_i_unnamed_conv1x1135_shift_x(BITSELECT,1139)@13
    rightShiftStage0Idx1Rng16_uid1140_i_unnamed_conv1x1135_shift_x_b <= i_unnamed_conv1x1132_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1141_i_unnamed_conv1x1135_shift_x(BITJOIN,1140)@13
    rightShiftStage0Idx1_uid1141_i_unnamed_conv1x1135_shift_x_q <= seMsb_to16_uid1139_b & rightShiftStage0Idx1Rng16_uid1140_i_unnamed_conv1x1135_shift_x_b;

    -- rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x(MUX,1142)@13
    rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_s <= VCC_q;
    rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_combproc: PROCESS (rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_s, i_unnamed_conv1x1132_vt_join_q, rightShiftStage0Idx1_uid1141_i_unnamed_conv1x1135_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_q <= i_unnamed_conv1x1132_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_q <= rightShiftStage0Idx1_uid1141_i_unnamed_conv1x1135_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x(MUX,1147)@13
    rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_s <= VCC_q;
    rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_combproc: PROCESS (rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_s, rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_q, rightShiftStage1Idx1_uid1146_i_unnamed_conv1x1135_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_q <= rightShiftStage0_uid1143_i_unnamed_conv1x1135_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_q <= rightShiftStage1Idx1_uid1146_i_unnamed_conv1x1135_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x(MUX,1152)@13
    rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_s <= VCC_q;
    rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_combproc: PROCESS (rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_s, rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_q, rightShiftStage2Idx1_uid1151_i_unnamed_conv1x1135_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_q <= rightShiftStage1_uid1148_i_unnamed_conv1x1135_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_q <= rightShiftStage2Idx1_uid1151_i_unnamed_conv1x1135_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x(MUX,1157)@13
    rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_s <= VCC_q;
    rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_combproc: PROCESS (rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_s, rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_q, rightShiftStage3Idx1_uid1156_i_unnamed_conv1x1135_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_q <= rightShiftStage2_uid1153_i_unnamed_conv1x1135_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_q <= rightShiftStage3Idx1_uid1156_i_unnamed_conv1x1135_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x(MUX,1161)@13
    rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x_s <= VCC_q;
    rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x_combproc: PROCESS (rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x_s, rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_q, rightShiftStage4Idx1_uid1160_i_unnamed_conv1x1135_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x_q <= rightShiftStage3_uid1158_i_unnamed_conv1x1135_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x_q <= rightShiftStage4Idx1_uid1160_i_unnamed_conv1x1135_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked29_conv1x1(LOGICAL,606)@13
    i_mul16_masked29_conv1x1_q <= rightShiftStage4_uid1162_i_unnamed_conv1x1135_shift_x_q and i_syncbuf_stride_sync_buffer110_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x(MUX,1170)@13
    leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_s <= VCC_q;
    leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_combproc: PROCESS (leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_s, i_mul16_masked29_conv1x1_q, leftShiftStage0Idx1_uid1169_i_unnamed_conv1x1139_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_q <= i_mul16_masked29_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage0Idx1_uid1169_i_unnamed_conv1x1139_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x(MUX,1175)@13
    leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_s <= VCC_q;
    leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_combproc: PROCESS (leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_s, leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_q, leftShiftStage1Idx1_uid1174_i_unnamed_conv1x1139_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage0_uid1171_i_unnamed_conv1x1139_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage1Idx1_uid1174_i_unnamed_conv1x1139_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x(MUX,1180)@13
    leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_s <= VCC_q;
    leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_combproc: PROCESS (leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_s, leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_q, leftShiftStage2Idx1_uid1179_i_unnamed_conv1x1139_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage1_uid1176_i_unnamed_conv1x1139_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage2Idx1_uid1179_i_unnamed_conv1x1139_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x(MUX,1185)@13
    leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x_s <= VCC_q;
    leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x_combproc: PROCESS (leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x_s, leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_q, leftShiftStage3Idx1_uid1184_i_unnamed_conv1x1139_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage2_uid1181_i_unnamed_conv1x1139_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x_q <= leftShiftStage3Idx1_uid1184_i_unnamed_conv1x1139_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1138_vt_select_31(BITSELECT,696)@13
    i_unnamed_conv1x1138_vt_select_31_b <= leftShiftStage3_uid1186_i_unnamed_conv1x1139_shift_x_q(31 downto 15);

    -- redist34_i_unnamed_conv1x1138_vt_select_31_b_1(DELAY,2715)
    redist34_i_unnamed_conv1x1138_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1138_vt_select_31_b, xout => redist34_i_unnamed_conv1x1138_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1138_vt_join(BITJOIN,695)@14
    i_unnamed_conv1x1138_vt_join_q <= redist34_i_unnamed_conv1x1138_vt_select_31_b_1_q & i_unnamed_conv1x1138_vt_const_14_q;

    -- leftShiftStage2Idx1Rng2_uid1122_i_unnamed_conv1x1131_shift_x(BITSELECT,1121)@12
    leftShiftStage2Idx1Rng2_uid1122_i_unnamed_conv1x1131_shift_x_in <= leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1122_i_unnamed_conv1x1131_shift_x_b <= leftShiftStage2Idx1Rng2_uid1122_i_unnamed_conv1x1131_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1123_i_unnamed_conv1x1131_shift_x(BITJOIN,1122)@12
    leftShiftStage2Idx1_uid1123_i_unnamed_conv1x1131_shift_x_q <= leftShiftStage2Idx1Rng2_uid1122_i_unnamed_conv1x1131_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage1Idx1Rng4_uid1117_i_unnamed_conv1x1131_shift_x(BITSELECT,1116)@12
    leftShiftStage1Idx1Rng4_uid1117_i_unnamed_conv1x1131_shift_x_in <= leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1117_i_unnamed_conv1x1131_shift_x_b <= leftShiftStage1Idx1Rng4_uid1117_i_unnamed_conv1x1131_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1118_i_unnamed_conv1x1131_shift_x(BITJOIN,1117)@12
    leftShiftStage1Idx1_uid1118_i_unnamed_conv1x1131_shift_x_q <= leftShiftStage1Idx1Rng4_uid1117_i_unnamed_conv1x1131_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid1112_i_unnamed_conv1x1131_shift_x(BITSELECT,1111)@12
    leftShiftStage0Idx1Rng8_uid1112_i_unnamed_conv1x1131_shift_x_in <= i_mul16_masked27_conv1x1_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1112_i_unnamed_conv1x1131_shift_x_b <= leftShiftStage0Idx1Rng8_uid1112_i_unnamed_conv1x1131_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1113_i_unnamed_conv1x1131_shift_x(BITJOIN,1112)@12
    leftShiftStage0Idx1_uid1113_i_unnamed_conv1x1131_shift_x_q <= leftShiftStage0Idx1Rng8_uid1112_i_unnamed_conv1x1131_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- i_syncbuf_stride_sync_buffer111_conv1x1(BLACKBOX,648)@0
    -- in in_i_dependence@12
    -- in in_valid_in@12
    -- out out_buffer_out@12
    -- out out_valid_out@12
    thei_syncbuf_stride_sync_buffer111_conv1x1 : i_syncbuf_stride_sync_buffer111_conv1x1128
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist63_sync_in_aunroll_x_in_i_valid_11_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer111_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng1_uid1075_i_unnamed_conv1x1125_shift_x(BITSELECT,1074)@10
    leftShiftStage1Idx1Rng1_uid1075_i_unnamed_conv1x1125_shift_x_in <= redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1075_i_unnamed_conv1x1125_shift_x_b <= leftShiftStage1Idx1Rng1_uid1075_i_unnamed_conv1x1125_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1076_i_unnamed_conv1x1125_shift_x(BITJOIN,1075)@10
    leftShiftStage1Idx1_uid1076_i_unnamed_conv1x1125_shift_x_q <= leftShiftStage1Idx1Rng1_uid1075_i_unnamed_conv1x1125_shift_x_b & GND_q;

    -- leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x(MUX,1077)@10
    leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x_s <= VCC_q;
    leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x_combproc: PROCESS (leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x_s, redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg_q, leftShiftStage1Idx1_uid1076_i_unnamed_conv1x1125_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x_q <= redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg_q;
            WHEN "1" => leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x_q <= leftShiftStage1Idx1_uid1076_i_unnamed_conv1x1125_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1124_vt_select_31(BITSELECT,687)@10
    i_unnamed_conv1x1124_vt_select_31_b <= leftShiftStage1_uid1078_i_unnamed_conv1x1125_shift_x_q(31 downto 17);

    -- redist37_i_unnamed_conv1x1124_vt_select_31_b_2(DELAY,2718)
    redist37_i_unnamed_conv1x1124_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1124_vt_select_31_b, xout => redist37_i_unnamed_conv1x1124_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1124_vt_join(BITJOIN,686)@12
    i_unnamed_conv1x1124_vt_join_q <= redist37_i_unnamed_conv1x1124_vt_select_31_b_2_q & i_unnamed_conv1x1124_vt_const_16_q;

    -- xMSB_uid1081_i_unnamed_conv1x1127_shift_x(BITSELECT,1080)@12
    xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1124_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1103_i_unnamed_conv1x1127_shift_x(BITSELECT,1102)@12
    rightShiftStage4Idx1Rng1_uid1103_i_unnamed_conv1x1127_shift_x_b <= rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1104_i_unnamed_conv1x1127_shift_x(BITJOIN,1103)@12
    rightShiftStage4Idx1_uid1104_i_unnamed_conv1x1127_shift_x_q <= xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b & rightShiftStage4Idx1Rng1_uid1103_i_unnamed_conv1x1127_shift_x_b;

    -- seMsb_to2_uid1098(BITSELECT,1097)@12
    seMsb_to2_uid1098_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b(0)) & xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b));
    seMsb_to2_uid1098_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1098_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1099_i_unnamed_conv1x1127_shift_x(BITSELECT,1098)@12
    rightShiftStage3Idx1Rng2_uid1099_i_unnamed_conv1x1127_shift_x_b <= rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1100_i_unnamed_conv1x1127_shift_x(BITJOIN,1099)@12
    rightShiftStage3Idx1_uid1100_i_unnamed_conv1x1127_shift_x_q <= seMsb_to2_uid1098_b & rightShiftStage3Idx1Rng2_uid1099_i_unnamed_conv1x1127_shift_x_b;

    -- seMsb_to4_uid1093(BITSELECT,1092)@12
    seMsb_to4_uid1093_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b(0)) & xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b));
    seMsb_to4_uid1093_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1093_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1094_i_unnamed_conv1x1127_shift_x(BITSELECT,1093)@12
    rightShiftStage2Idx1Rng4_uid1094_i_unnamed_conv1x1127_shift_x_b <= rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1095_i_unnamed_conv1x1127_shift_x(BITJOIN,1094)@12
    rightShiftStage2Idx1_uid1095_i_unnamed_conv1x1127_shift_x_q <= seMsb_to4_uid1093_b & rightShiftStage2Idx1Rng4_uid1094_i_unnamed_conv1x1127_shift_x_b;

    -- seMsb_to8_uid1088(BITSELECT,1087)@12
    seMsb_to8_uid1088_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b(0)) & xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b));
    seMsb_to8_uid1088_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1088_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1089_i_unnamed_conv1x1127_shift_x(BITSELECT,1088)@12
    rightShiftStage1Idx1Rng8_uid1089_i_unnamed_conv1x1127_shift_x_b <= rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1090_i_unnamed_conv1x1127_shift_x(BITJOIN,1089)@12
    rightShiftStage1Idx1_uid1090_i_unnamed_conv1x1127_shift_x_q <= seMsb_to8_uid1088_b & rightShiftStage1Idx1Rng8_uid1089_i_unnamed_conv1x1127_shift_x_b;

    -- seMsb_to16_uid1083(BITSELECT,1082)@12
    seMsb_to16_uid1083_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b(0)) & xMSB_uid1081_i_unnamed_conv1x1127_shift_x_b));
    seMsb_to16_uid1083_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1083_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1084_i_unnamed_conv1x1127_shift_x(BITSELECT,1083)@12
    rightShiftStage0Idx1Rng16_uid1084_i_unnamed_conv1x1127_shift_x_b <= i_unnamed_conv1x1124_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1085_i_unnamed_conv1x1127_shift_x(BITJOIN,1084)@12
    rightShiftStage0Idx1_uid1085_i_unnamed_conv1x1127_shift_x_q <= seMsb_to16_uid1083_b & rightShiftStage0Idx1Rng16_uid1084_i_unnamed_conv1x1127_shift_x_b;

    -- rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x(MUX,1086)@12
    rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_s <= VCC_q;
    rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_combproc: PROCESS (rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_s, i_unnamed_conv1x1124_vt_join_q, rightShiftStage0Idx1_uid1085_i_unnamed_conv1x1127_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_q <= i_unnamed_conv1x1124_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_q <= rightShiftStage0Idx1_uid1085_i_unnamed_conv1x1127_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x(MUX,1091)@12
    rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_s <= VCC_q;
    rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_combproc: PROCESS (rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_s, rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_q, rightShiftStage1Idx1_uid1090_i_unnamed_conv1x1127_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_q <= rightShiftStage0_uid1087_i_unnamed_conv1x1127_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_q <= rightShiftStage1Idx1_uid1090_i_unnamed_conv1x1127_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x(MUX,1096)@12
    rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_s <= VCC_q;
    rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_combproc: PROCESS (rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_s, rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_q, rightShiftStage2Idx1_uid1095_i_unnamed_conv1x1127_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_q <= rightShiftStage1_uid1092_i_unnamed_conv1x1127_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_q <= rightShiftStage2Idx1_uid1095_i_unnamed_conv1x1127_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x(MUX,1101)@12
    rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_s <= VCC_q;
    rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_combproc: PROCESS (rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_s, rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_q, rightShiftStage3Idx1_uid1100_i_unnamed_conv1x1127_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_q <= rightShiftStage2_uid1097_i_unnamed_conv1x1127_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_q <= rightShiftStage3Idx1_uid1100_i_unnamed_conv1x1127_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x(MUX,1105)@12
    rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x_s <= VCC_q;
    rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x_combproc: PROCESS (rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x_s, rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_q, rightShiftStage4Idx1_uid1104_i_unnamed_conv1x1127_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x_q <= rightShiftStage3_uid1102_i_unnamed_conv1x1127_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x_q <= rightShiftStage4Idx1_uid1104_i_unnamed_conv1x1127_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked27_conv1x1(LOGICAL,605)@12
    i_mul16_masked27_conv1x1_q <= rightShiftStage4_uid1106_i_unnamed_conv1x1127_shift_x_q and i_syncbuf_stride_sync_buffer111_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x(MUX,1114)@12
    leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_s <= VCC_q;
    leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_combproc: PROCESS (leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_s, i_mul16_masked27_conv1x1_q, leftShiftStage0Idx1_uid1113_i_unnamed_conv1x1131_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_q <= i_mul16_masked27_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_q <= leftShiftStage0Idx1_uid1113_i_unnamed_conv1x1131_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x(MUX,1119)@12
    leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_s <= VCC_q;
    leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_combproc: PROCESS (leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_s, leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_q, leftShiftStage1Idx1_uid1118_i_unnamed_conv1x1131_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_q <= leftShiftStage0_uid1115_i_unnamed_conv1x1131_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_q <= leftShiftStage1Idx1_uid1118_i_unnamed_conv1x1131_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x(MUX,1124)@12
    leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x_s <= VCC_q;
    leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x_combproc: PROCESS (leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x_s, leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_q, leftShiftStage2Idx1_uid1123_i_unnamed_conv1x1131_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x_q <= leftShiftStage1_uid1120_i_unnamed_conv1x1131_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x_q <= leftShiftStage2Idx1_uid1123_i_unnamed_conv1x1131_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1130_vt_select_31(BITSELECT,690)@12
    i_unnamed_conv1x1130_vt_select_31_b <= leftShiftStage2_uid1125_i_unnamed_conv1x1131_shift_x_q(31 downto 14);

    -- redist36_i_unnamed_conv1x1130_vt_select_31_b_1(DELAY,2717)
    redist36_i_unnamed_conv1x1130_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1130_vt_select_31_b, xout => redist36_i_unnamed_conv1x1130_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1130_vt_join(BITJOIN,689)@13
    i_unnamed_conv1x1130_vt_join_q <= redist36_i_unnamed_conv1x1130_vt_select_31_b_1_q & i_unnamed_conv1x1130_vt_const_13_q;

    -- leftShiftStage2Idx1Rng1_uid1061_i_unnamed_conv1x1123_shift_x(BITSELECT,1060)@11
    leftShiftStage2Idx1Rng1_uid1061_i_unnamed_conv1x1123_shift_x_in <= leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1061_i_unnamed_conv1x1123_shift_x_b <= leftShiftStage2Idx1Rng1_uid1061_i_unnamed_conv1x1123_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1062_i_unnamed_conv1x1123_shift_x(BITJOIN,1061)@11
    leftShiftStage2Idx1_uid1062_i_unnamed_conv1x1123_shift_x_q <= leftShiftStage2Idx1Rng1_uid1061_i_unnamed_conv1x1123_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng4_uid1056_i_unnamed_conv1x1123_shift_x(BITSELECT,1055)@11
    leftShiftStage1Idx1Rng4_uid1056_i_unnamed_conv1x1123_shift_x_in <= leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1056_i_unnamed_conv1x1123_shift_x_b <= leftShiftStage1Idx1Rng4_uid1056_i_unnamed_conv1x1123_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1057_i_unnamed_conv1x1123_shift_x(BITJOIN,1056)@11
    leftShiftStage1Idx1_uid1057_i_unnamed_conv1x1123_shift_x_q <= leftShiftStage1Idx1Rng4_uid1056_i_unnamed_conv1x1123_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid1051_i_unnamed_conv1x1123_shift_x(BITSELECT,1050)@11
    leftShiftStage0Idx1Rng8_uid1051_i_unnamed_conv1x1123_shift_x_in <= i_mul16_masked25_conv1x1_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1051_i_unnamed_conv1x1123_shift_x_b <= leftShiftStage0Idx1Rng8_uid1051_i_unnamed_conv1x1123_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1052_i_unnamed_conv1x1123_shift_x(BITJOIN,1051)@11
    leftShiftStage0Idx1_uid1052_i_unnamed_conv1x1123_shift_x_q <= leftShiftStage0Idx1Rng8_uid1051_i_unnamed_conv1x1123_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- i_syncbuf_stride_sync_buffer112_conv1x1(BLACKBOX,649)@0
    -- in in_i_dependence@11
    -- in in_valid_in@11
    -- out out_buffer_out@11
    -- out out_valid_out@11
    thei_syncbuf_stride_sync_buffer112_conv1x1 : i_syncbuf_stride_sync_buffer112_conv1x1120
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist62_sync_in_aunroll_x_in_i_valid_10_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer112_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng2_uid953_i_unnamed_conv1x1109_shift_x(BITSELECT,952)@10
    leftShiftStage1Idx1Rng2_uid953_i_unnamed_conv1x1109_shift_x_in <= redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid953_i_unnamed_conv1x1109_shift_x_b <= leftShiftStage1Idx1Rng2_uid953_i_unnamed_conv1x1109_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid954_i_unnamed_conv1x1109_shift_x(BITJOIN,953)@10
    leftShiftStage1Idx1_uid954_i_unnamed_conv1x1109_shift_x_q <= leftShiftStage1Idx1Rng2_uid953_i_unnamed_conv1x1109_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x(MUX,955)@10
    leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_s <= VCC_q;
    leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_combproc: PROCESS (leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_s, redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg_q, leftShiftStage1Idx1_uid954_i_unnamed_conv1x1109_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_q <= redist2_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_9_outputreg_q;
            WHEN "1" => leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_q <= leftShiftStage1Idx1_uid954_i_unnamed_conv1x1109_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1116_vt_select_31(BITSELECT,681)@10
    i_unnamed_conv1x1116_vt_select_31_b <= leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_q(31 downto 18);

    -- redist39_i_unnamed_conv1x1116_vt_select_31_b_1(DELAY,2720)
    redist39_i_unnamed_conv1x1116_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1116_vt_select_31_b, xout => redist39_i_unnamed_conv1x1116_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1116_vt_join(BITJOIN,680)@11
    i_unnamed_conv1x1116_vt_join_q <= redist39_i_unnamed_conv1x1116_vt_select_31_b_1_q & i_unnamed_conv1x1116_vt_const_17_q;

    -- xMSB_uid1020_i_unnamed_conv1x1119_shift_x(BITSELECT,1019)@11
    xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1116_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1042_i_unnamed_conv1x1119_shift_x(BITSELECT,1041)@11
    rightShiftStage4Idx1Rng1_uid1042_i_unnamed_conv1x1119_shift_x_b <= rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1043_i_unnamed_conv1x1119_shift_x(BITJOIN,1042)@11
    rightShiftStage4Idx1_uid1043_i_unnamed_conv1x1119_shift_x_q <= xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b & rightShiftStage4Idx1Rng1_uid1042_i_unnamed_conv1x1119_shift_x_b;

    -- seMsb_to2_uid1037(BITSELECT,1036)@11
    seMsb_to2_uid1037_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b(0)) & xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b));
    seMsb_to2_uid1037_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1037_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1038_i_unnamed_conv1x1119_shift_x(BITSELECT,1037)@11
    rightShiftStage3Idx1Rng2_uid1038_i_unnamed_conv1x1119_shift_x_b <= rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1039_i_unnamed_conv1x1119_shift_x(BITJOIN,1038)@11
    rightShiftStage3Idx1_uid1039_i_unnamed_conv1x1119_shift_x_q <= seMsb_to2_uid1037_b & rightShiftStage3Idx1Rng2_uid1038_i_unnamed_conv1x1119_shift_x_b;

    -- seMsb_to4_uid1032(BITSELECT,1031)@11
    seMsb_to4_uid1032_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b(0)) & xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b));
    seMsb_to4_uid1032_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1032_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1033_i_unnamed_conv1x1119_shift_x(BITSELECT,1032)@11
    rightShiftStage2Idx1Rng4_uid1033_i_unnamed_conv1x1119_shift_x_b <= rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1034_i_unnamed_conv1x1119_shift_x(BITJOIN,1033)@11
    rightShiftStage2Idx1_uid1034_i_unnamed_conv1x1119_shift_x_q <= seMsb_to4_uid1032_b & rightShiftStage2Idx1Rng4_uid1033_i_unnamed_conv1x1119_shift_x_b;

    -- seMsb_to8_uid1027(BITSELECT,1026)@11
    seMsb_to8_uid1027_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b(0)) & xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b));
    seMsb_to8_uid1027_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1027_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1028_i_unnamed_conv1x1119_shift_x(BITSELECT,1027)@11
    rightShiftStage1Idx1Rng8_uid1028_i_unnamed_conv1x1119_shift_x_b <= rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1029_i_unnamed_conv1x1119_shift_x(BITJOIN,1028)@11
    rightShiftStage1Idx1_uid1029_i_unnamed_conv1x1119_shift_x_q <= seMsb_to8_uid1027_b & rightShiftStage1Idx1Rng8_uid1028_i_unnamed_conv1x1119_shift_x_b;

    -- seMsb_to16_uid1022(BITSELECT,1021)@11
    seMsb_to16_uid1022_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b(0)) & xMSB_uid1020_i_unnamed_conv1x1119_shift_x_b));
    seMsb_to16_uid1022_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1022_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1023_i_unnamed_conv1x1119_shift_x(BITSELECT,1022)@11
    rightShiftStage0Idx1Rng16_uid1023_i_unnamed_conv1x1119_shift_x_b <= i_unnamed_conv1x1116_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1024_i_unnamed_conv1x1119_shift_x(BITJOIN,1023)@11
    rightShiftStage0Idx1_uid1024_i_unnamed_conv1x1119_shift_x_q <= seMsb_to16_uid1022_b & rightShiftStage0Idx1Rng16_uid1023_i_unnamed_conv1x1119_shift_x_b;

    -- rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x(MUX,1025)@11
    rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_s <= VCC_q;
    rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_combproc: PROCESS (rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_s, i_unnamed_conv1x1116_vt_join_q, rightShiftStage0Idx1_uid1024_i_unnamed_conv1x1119_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_q <= i_unnamed_conv1x1116_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_q <= rightShiftStage0Idx1_uid1024_i_unnamed_conv1x1119_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x(MUX,1030)@11
    rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_s <= VCC_q;
    rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_combproc: PROCESS (rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_s, rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_q, rightShiftStage1Idx1_uid1029_i_unnamed_conv1x1119_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_q <= rightShiftStage0_uid1026_i_unnamed_conv1x1119_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_q <= rightShiftStage1Idx1_uid1029_i_unnamed_conv1x1119_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x(MUX,1035)@11
    rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_s <= VCC_q;
    rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_combproc: PROCESS (rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_s, rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_q, rightShiftStage2Idx1_uid1034_i_unnamed_conv1x1119_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_q <= rightShiftStage1_uid1031_i_unnamed_conv1x1119_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_q <= rightShiftStage2Idx1_uid1034_i_unnamed_conv1x1119_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x(MUX,1040)@11
    rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_s <= VCC_q;
    rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_combproc: PROCESS (rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_s, rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_q, rightShiftStage3Idx1_uid1039_i_unnamed_conv1x1119_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_q <= rightShiftStage2_uid1036_i_unnamed_conv1x1119_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_q <= rightShiftStage3Idx1_uid1039_i_unnamed_conv1x1119_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x(MUX,1044)@11
    rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x_s <= VCC_q;
    rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x_combproc: PROCESS (rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x_s, rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_q, rightShiftStage4Idx1_uid1043_i_unnamed_conv1x1119_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x_q <= rightShiftStage3_uid1041_i_unnamed_conv1x1119_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x_q <= rightShiftStage4Idx1_uid1043_i_unnamed_conv1x1119_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked25_conv1x1(LOGICAL,604)@11
    i_mul16_masked25_conv1x1_q <= rightShiftStage4_uid1045_i_unnamed_conv1x1119_shift_x_q and i_syncbuf_stride_sync_buffer112_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x(MUX,1053)@11
    leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_s <= VCC_q;
    leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_combproc: PROCESS (leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_s, i_mul16_masked25_conv1x1_q, leftShiftStage0Idx1_uid1052_i_unnamed_conv1x1123_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_q <= i_mul16_masked25_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_q <= leftShiftStage0Idx1_uid1052_i_unnamed_conv1x1123_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x(MUX,1058)@11
    leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_s <= VCC_q;
    leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_combproc: PROCESS (leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_s, leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_q, leftShiftStage1Idx1_uid1057_i_unnamed_conv1x1123_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_q <= leftShiftStage0_uid1054_i_unnamed_conv1x1123_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_q <= leftShiftStage1Idx1_uid1057_i_unnamed_conv1x1123_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x(MUX,1063)@11
    leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x_s <= VCC_q;
    leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x_combproc: PROCESS (leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x_s, leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_q, leftShiftStage2Idx1_uid1062_i_unnamed_conv1x1123_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x_q <= leftShiftStage1_uid1059_i_unnamed_conv1x1123_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x_q <= leftShiftStage2Idx1_uid1062_i_unnamed_conv1x1123_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1122_vt_select_31(BITSELECT,684)@11
    i_unnamed_conv1x1122_vt_select_31_b <= leftShiftStage2_uid1064_i_unnamed_conv1x1123_shift_x_q(31 downto 13);

    -- redist38_i_unnamed_conv1x1122_vt_select_31_b_1(DELAY,2719)
    redist38_i_unnamed_conv1x1122_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1122_vt_select_31_b, xout => redist38_i_unnamed_conv1x1122_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1122_vt_join(BITJOIN,683)@12
    i_unnamed_conv1x1122_vt_join_q <= redist38_i_unnamed_conv1x1122_vt_select_31_b_1_q & i_unnamed_conv1x1122_vt_const_12_q;

    -- leftShiftStage1Idx1Rng4_uid1000_i_unnamed_conv1x1115_shift_x(BITSELECT,999)@10
    leftShiftStage1Idx1Rng4_uid1000_i_unnamed_conv1x1115_shift_x_in <= leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1000_i_unnamed_conv1x1115_shift_x_b <= leftShiftStage1Idx1Rng4_uid1000_i_unnamed_conv1x1115_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1001_i_unnamed_conv1x1115_shift_x(BITJOIN,1000)@10
    leftShiftStage1Idx1_uid1001_i_unnamed_conv1x1115_shift_x_q <= leftShiftStage1Idx1Rng4_uid1000_i_unnamed_conv1x1115_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid995_i_unnamed_conv1x1115_shift_x(BITSELECT,994)@10
    leftShiftStage0Idx1Rng8_uid995_i_unnamed_conv1x1115_shift_x_in <= i_mul16_masked23_conv1x1_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid995_i_unnamed_conv1x1115_shift_x_b <= leftShiftStage0Idx1Rng8_uid995_i_unnamed_conv1x1115_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid996_i_unnamed_conv1x1115_shift_x(BITJOIN,995)@10
    leftShiftStage0Idx1_uid996_i_unnamed_conv1x1115_shift_x_q <= leftShiftStage0Idx1Rng8_uid995_i_unnamed_conv1x1115_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- i_syncbuf_stride_sync_buffer113_conv1x1(BLACKBOX,650)@0
    -- in in_i_dependence@10
    -- in in_valid_in@10
    -- out out_buffer_out@10
    -- out out_valid_out@10
    thei_syncbuf_stride_sync_buffer113_conv1x1 : i_syncbuf_stride_sync_buffer113_conv1x1112
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist61_sync_in_aunroll_x_in_i_valid_9_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer113_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng1_uid958_i_unnamed_conv1x1109_shift_x(BITSELECT,957)@10
    leftShiftStage2Idx1Rng1_uid958_i_unnamed_conv1x1109_shift_x_in <= leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid958_i_unnamed_conv1x1109_shift_x_b <= leftShiftStage2Idx1Rng1_uid958_i_unnamed_conv1x1109_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid959_i_unnamed_conv1x1109_shift_x(BITJOIN,958)@10
    leftShiftStage2Idx1_uid959_i_unnamed_conv1x1109_shift_x_q <= leftShiftStage2Idx1Rng1_uid958_i_unnamed_conv1x1109_shift_x_b & GND_q;

    -- leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x(MUX,960)@10
    leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x_s <= VCC_q;
    leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x_combproc: PROCESS (leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x_s, leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_q, leftShiftStage2Idx1_uid959_i_unnamed_conv1x1109_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x_q <= leftShiftStage1_uid956_i_unnamed_conv1x1109_shift_x_q;
            WHEN "1" => leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x_q <= leftShiftStage2Idx1_uid959_i_unnamed_conv1x1109_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1108_vt_select_31(BITSELECT,675)@10
    i_unnamed_conv1x1108_vt_select_31_b <= leftShiftStage2_uid961_i_unnamed_conv1x1109_shift_x_q(31 downto 19);

    -- i_unnamed_conv1x1108_vt_join(BITJOIN,674)@10
    i_unnamed_conv1x1108_vt_join_q <= i_unnamed_conv1x1108_vt_select_31_b & i_unnamed_conv1x1108_vt_const_18_q;

    -- xMSB_uid964_i_unnamed_conv1x1111_shift_x(BITSELECT,963)@10
    xMSB_uid964_i_unnamed_conv1x1111_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1108_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid986_i_unnamed_conv1x1111_shift_x(BITSELECT,985)@10
    rightShiftStage4Idx1Rng1_uid986_i_unnamed_conv1x1111_shift_x_b <= rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid987_i_unnamed_conv1x1111_shift_x(BITJOIN,986)@10
    rightShiftStage4Idx1_uid987_i_unnamed_conv1x1111_shift_x_q <= xMSB_uid964_i_unnamed_conv1x1111_shift_x_b & rightShiftStage4Idx1Rng1_uid986_i_unnamed_conv1x1111_shift_x_b;

    -- seMsb_to2_uid981(BITSELECT,980)@10
    seMsb_to2_uid981_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid964_i_unnamed_conv1x1111_shift_x_b(0)) & xMSB_uid964_i_unnamed_conv1x1111_shift_x_b));
    seMsb_to2_uid981_b <= STD_LOGIC_VECTOR(seMsb_to2_uid981_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid982_i_unnamed_conv1x1111_shift_x(BITSELECT,981)@10
    rightShiftStage3Idx1Rng2_uid982_i_unnamed_conv1x1111_shift_x_b <= rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid983_i_unnamed_conv1x1111_shift_x(BITJOIN,982)@10
    rightShiftStage3Idx1_uid983_i_unnamed_conv1x1111_shift_x_q <= seMsb_to2_uid981_b & rightShiftStage3Idx1Rng2_uid982_i_unnamed_conv1x1111_shift_x_b;

    -- seMsb_to4_uid976(BITSELECT,975)@10
    seMsb_to4_uid976_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid964_i_unnamed_conv1x1111_shift_x_b(0)) & xMSB_uid964_i_unnamed_conv1x1111_shift_x_b));
    seMsb_to4_uid976_b <= STD_LOGIC_VECTOR(seMsb_to4_uid976_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid977_i_unnamed_conv1x1111_shift_x(BITSELECT,976)@10
    rightShiftStage2Idx1Rng4_uid977_i_unnamed_conv1x1111_shift_x_b <= rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid978_i_unnamed_conv1x1111_shift_x(BITJOIN,977)@10
    rightShiftStage2Idx1_uid978_i_unnamed_conv1x1111_shift_x_q <= seMsb_to4_uid976_b & rightShiftStage2Idx1Rng4_uid977_i_unnamed_conv1x1111_shift_x_b;

    -- seMsb_to8_uid971(BITSELECT,970)@10
    seMsb_to8_uid971_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid964_i_unnamed_conv1x1111_shift_x_b(0)) & xMSB_uid964_i_unnamed_conv1x1111_shift_x_b));
    seMsb_to8_uid971_b <= STD_LOGIC_VECTOR(seMsb_to8_uid971_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid972_i_unnamed_conv1x1111_shift_x(BITSELECT,971)@10
    rightShiftStage1Idx1Rng8_uid972_i_unnamed_conv1x1111_shift_x_b <= rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid973_i_unnamed_conv1x1111_shift_x(BITJOIN,972)@10
    rightShiftStage1Idx1_uid973_i_unnamed_conv1x1111_shift_x_q <= seMsb_to8_uid971_b & rightShiftStage1Idx1Rng8_uid972_i_unnamed_conv1x1111_shift_x_b;

    -- seMsb_to16_uid966(BITSELECT,965)@10
    seMsb_to16_uid966_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid964_i_unnamed_conv1x1111_shift_x_b(0)) & xMSB_uid964_i_unnamed_conv1x1111_shift_x_b));
    seMsb_to16_uid966_b <= STD_LOGIC_VECTOR(seMsb_to16_uid966_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid967_i_unnamed_conv1x1111_shift_x(BITSELECT,966)@10
    rightShiftStage0Idx1Rng16_uid967_i_unnamed_conv1x1111_shift_x_b <= i_unnamed_conv1x1108_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid968_i_unnamed_conv1x1111_shift_x(BITJOIN,967)@10
    rightShiftStage0Idx1_uid968_i_unnamed_conv1x1111_shift_x_q <= seMsb_to16_uid966_b & rightShiftStage0Idx1Rng16_uid967_i_unnamed_conv1x1111_shift_x_b;

    -- rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x(MUX,969)@10
    rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_s <= VCC_q;
    rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_combproc: PROCESS (rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_s, i_unnamed_conv1x1108_vt_join_q, rightShiftStage0Idx1_uid968_i_unnamed_conv1x1111_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_q <= i_unnamed_conv1x1108_vt_join_q;
            WHEN "1" => rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_q <= rightShiftStage0Idx1_uid968_i_unnamed_conv1x1111_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x(MUX,974)@10
    rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_s <= VCC_q;
    rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_combproc: PROCESS (rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_s, rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_q, rightShiftStage1Idx1_uid973_i_unnamed_conv1x1111_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_q <= rightShiftStage0_uid970_i_unnamed_conv1x1111_shift_x_q;
            WHEN "1" => rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_q <= rightShiftStage1Idx1_uid973_i_unnamed_conv1x1111_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x(MUX,979)@10
    rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_s <= VCC_q;
    rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_combproc: PROCESS (rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_s, rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_q, rightShiftStage2Idx1_uid978_i_unnamed_conv1x1111_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_q <= rightShiftStage1_uid975_i_unnamed_conv1x1111_shift_x_q;
            WHEN "1" => rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_q <= rightShiftStage2Idx1_uid978_i_unnamed_conv1x1111_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x(MUX,984)@10
    rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_s <= VCC_q;
    rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_combproc: PROCESS (rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_s, rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_q, rightShiftStage3Idx1_uid983_i_unnamed_conv1x1111_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_q <= rightShiftStage2_uid980_i_unnamed_conv1x1111_shift_x_q;
            WHEN "1" => rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_q <= rightShiftStage3Idx1_uid983_i_unnamed_conv1x1111_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x(MUX,988)@10
    rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x_s <= VCC_q;
    rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x_combproc: PROCESS (rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x_s, rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_q, rightShiftStage4Idx1_uid987_i_unnamed_conv1x1111_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x_q <= rightShiftStage3_uid985_i_unnamed_conv1x1111_shift_x_q;
            WHEN "1" => rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x_q <= rightShiftStage4Idx1_uid987_i_unnamed_conv1x1111_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked23_conv1x1(LOGICAL,603)@10
    i_mul16_masked23_conv1x1_q <= rightShiftStage4_uid989_i_unnamed_conv1x1111_shift_x_q and i_syncbuf_stride_sync_buffer113_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x(MUX,997)@10
    leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_s <= VCC_q;
    leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_combproc: PROCESS (leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_s, i_mul16_masked23_conv1x1_q, leftShiftStage0Idx1_uid996_i_unnamed_conv1x1115_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_q <= i_mul16_masked23_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_q <= leftShiftStage0Idx1_uid996_i_unnamed_conv1x1115_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x(MUX,1002)@10
    leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x_s <= VCC_q;
    leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x_combproc: PROCESS (leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x_s, leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_q, leftShiftStage1Idx1_uid1001_i_unnamed_conv1x1115_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x_q <= leftShiftStage0_uid998_i_unnamed_conv1x1115_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x_q <= leftShiftStage1Idx1_uid1001_i_unnamed_conv1x1115_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1114_vt_select_31(BITSELECT,678)@10
    i_unnamed_conv1x1114_vt_select_31_b <= leftShiftStage1_uid1003_i_unnamed_conv1x1115_shift_x_q(31 downto 12);

    -- redist40_i_unnamed_conv1x1114_vt_select_31_b_1(DELAY,2721)
    redist40_i_unnamed_conv1x1114_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1114_vt_select_31_b, xout => redist40_i_unnamed_conv1x1114_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1114_vt_join(BITJOIN,677)@11
    i_unnamed_conv1x1114_vt_join_q <= redist40_i_unnamed_conv1x1114_vt_select_31_b_1_q & i_unnamed_conv1x1114_vt_const_11_q;

    -- leftShiftStage2Idx1Rng1_uid939_i_unnamed_conv1x1107_shift_x(BITSELECT,938)@9
    leftShiftStage2Idx1Rng1_uid939_i_unnamed_conv1x1107_shift_x_in <= leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid939_i_unnamed_conv1x1107_shift_x_b <= leftShiftStage2Idx1Rng1_uid939_i_unnamed_conv1x1107_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid940_i_unnamed_conv1x1107_shift_x(BITJOIN,939)@9
    leftShiftStage2Idx1_uid940_i_unnamed_conv1x1107_shift_x_q <= leftShiftStage2Idx1Rng1_uid939_i_unnamed_conv1x1107_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng2_uid934_i_unnamed_conv1x1107_shift_x(BITSELECT,933)@9
    leftShiftStage1Idx1Rng2_uid934_i_unnamed_conv1x1107_shift_x_in <= leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid934_i_unnamed_conv1x1107_shift_x_b <= leftShiftStage1Idx1Rng2_uid934_i_unnamed_conv1x1107_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid935_i_unnamed_conv1x1107_shift_x(BITJOIN,934)@9
    leftShiftStage1Idx1_uid935_i_unnamed_conv1x1107_shift_x_q <= leftShiftStage1Idx1Rng2_uid934_i_unnamed_conv1x1107_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage0Idx1Rng8_uid929_i_unnamed_conv1x1107_shift_x(BITSELECT,928)@9
    leftShiftStage0Idx1Rng8_uid929_i_unnamed_conv1x1107_shift_x_in <= i_mul16_masked21_conv1x1_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid929_i_unnamed_conv1x1107_shift_x_b <= leftShiftStage0Idx1Rng8_uid929_i_unnamed_conv1x1107_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid930_i_unnamed_conv1x1107_shift_x(BITJOIN,929)@9
    leftShiftStage0Idx1_uid930_i_unnamed_conv1x1107_shift_x_q <= leftShiftStage0Idx1Rng8_uid929_i_unnamed_conv1x1107_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- i_syncbuf_stride_sync_buffer114_conv1x1(BLACKBOX,651)@0
    -- in in_i_dependence@9
    -- in in_valid_in@9
    -- out out_buffer_out@9
    -- out out_valid_out@9
    thei_syncbuf_stride_sync_buffer114_conv1x1 : i_syncbuf_stride_sync_buffer114_conv1x1104
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist60_sync_in_aunroll_x_in_i_valid_8_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer114_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng4_uid892_i_unnamed_conv1x1101_shift_x(BITSELECT,891)@6
    leftShiftStage1Idx1Rng4_uid892_i_unnamed_conv1x1101_shift_x_in <= redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_outputreg_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid892_i_unnamed_conv1x1101_shift_x_b <= leftShiftStage1Idx1Rng4_uid892_i_unnamed_conv1x1101_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid893_i_unnamed_conv1x1101_shift_x(BITJOIN,892)@6
    leftShiftStage1Idx1_uid893_i_unnamed_conv1x1101_shift_x_q <= leftShiftStage1Idx1Rng4_uid892_i_unnamed_conv1x1101_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x(MUX,894)@6
    leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_s <= VCC_q;
    leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_combproc: PROCESS (leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_s, redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_outputreg_q, leftShiftStage1Idx1_uid893_i_unnamed_conv1x1101_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q <= redist1_leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q_5_outputreg_q;
            WHEN "1" => leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q <= leftShiftStage1Idx1_uid893_i_unnamed_conv1x1101_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1100_vt_select_31(BITSELECT,669)@6
    i_unnamed_conv1x1100_vt_select_31_b <= leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q(31 downto 20);

    -- redist42_i_unnamed_conv1x1100_vt_select_31_b_3(DELAY,2723)
    redist42_i_unnamed_conv1x1100_vt_select_31_b_3 : dspba_delay
    GENERIC MAP ( width => 12, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1100_vt_select_31_b, xout => redist42_i_unnamed_conv1x1100_vt_select_31_b_3_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1100_vt_join(BITJOIN,668)@9
    i_unnamed_conv1x1100_vt_join_q <= redist42_i_unnamed_conv1x1100_vt_select_31_b_3_q & i_unnamed_conv1x1100_vt_const_19_q;

    -- xMSB_uid898_i_unnamed_conv1x1103_shift_x(BITSELECT,897)@9
    xMSB_uid898_i_unnamed_conv1x1103_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x1100_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid920_i_unnamed_conv1x1103_shift_x(BITSELECT,919)@9
    rightShiftStage4Idx1Rng1_uid920_i_unnamed_conv1x1103_shift_x_b <= rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid921_i_unnamed_conv1x1103_shift_x(BITJOIN,920)@9
    rightShiftStage4Idx1_uid921_i_unnamed_conv1x1103_shift_x_q <= xMSB_uid898_i_unnamed_conv1x1103_shift_x_b & rightShiftStage4Idx1Rng1_uid920_i_unnamed_conv1x1103_shift_x_b;

    -- seMsb_to2_uid915(BITSELECT,914)@9
    seMsb_to2_uid915_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid898_i_unnamed_conv1x1103_shift_x_b(0)) & xMSB_uid898_i_unnamed_conv1x1103_shift_x_b));
    seMsb_to2_uid915_b <= STD_LOGIC_VECTOR(seMsb_to2_uid915_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid916_i_unnamed_conv1x1103_shift_x(BITSELECT,915)@9
    rightShiftStage3Idx1Rng2_uid916_i_unnamed_conv1x1103_shift_x_b <= rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid917_i_unnamed_conv1x1103_shift_x(BITJOIN,916)@9
    rightShiftStage3Idx1_uid917_i_unnamed_conv1x1103_shift_x_q <= seMsb_to2_uid915_b & rightShiftStage3Idx1Rng2_uid916_i_unnamed_conv1x1103_shift_x_b;

    -- seMsb_to4_uid910(BITSELECT,909)@9
    seMsb_to4_uid910_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid898_i_unnamed_conv1x1103_shift_x_b(0)) & xMSB_uid898_i_unnamed_conv1x1103_shift_x_b));
    seMsb_to4_uid910_b <= STD_LOGIC_VECTOR(seMsb_to4_uid910_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid911_i_unnamed_conv1x1103_shift_x(BITSELECT,910)@9
    rightShiftStage2Idx1Rng4_uid911_i_unnamed_conv1x1103_shift_x_b <= rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid912_i_unnamed_conv1x1103_shift_x(BITJOIN,911)@9
    rightShiftStage2Idx1_uid912_i_unnamed_conv1x1103_shift_x_q <= seMsb_to4_uid910_b & rightShiftStage2Idx1Rng4_uid911_i_unnamed_conv1x1103_shift_x_b;

    -- seMsb_to8_uid905(BITSELECT,904)@9
    seMsb_to8_uid905_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid898_i_unnamed_conv1x1103_shift_x_b(0)) & xMSB_uid898_i_unnamed_conv1x1103_shift_x_b));
    seMsb_to8_uid905_b <= STD_LOGIC_VECTOR(seMsb_to8_uid905_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid906_i_unnamed_conv1x1103_shift_x(BITSELECT,905)@9
    rightShiftStage1Idx1Rng8_uid906_i_unnamed_conv1x1103_shift_x_b <= rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid907_i_unnamed_conv1x1103_shift_x(BITJOIN,906)@9
    rightShiftStage1Idx1_uid907_i_unnamed_conv1x1103_shift_x_q <= seMsb_to8_uid905_b & rightShiftStage1Idx1Rng8_uid906_i_unnamed_conv1x1103_shift_x_b;

    -- seMsb_to16_uid900(BITSELECT,899)@9
    seMsb_to16_uid900_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid898_i_unnamed_conv1x1103_shift_x_b(0)) & xMSB_uid898_i_unnamed_conv1x1103_shift_x_b));
    seMsb_to16_uid900_b <= STD_LOGIC_VECTOR(seMsb_to16_uid900_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid901_i_unnamed_conv1x1103_shift_x(BITSELECT,900)@9
    rightShiftStage0Idx1Rng16_uid901_i_unnamed_conv1x1103_shift_x_b <= i_unnamed_conv1x1100_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid902_i_unnamed_conv1x1103_shift_x(BITJOIN,901)@9
    rightShiftStage0Idx1_uid902_i_unnamed_conv1x1103_shift_x_q <= seMsb_to16_uid900_b & rightShiftStage0Idx1Rng16_uid901_i_unnamed_conv1x1103_shift_x_b;

    -- rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x(MUX,903)@9
    rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_s <= VCC_q;
    rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_combproc: PROCESS (rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_s, i_unnamed_conv1x1100_vt_join_q, rightShiftStage0Idx1_uid902_i_unnamed_conv1x1103_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_q <= i_unnamed_conv1x1100_vt_join_q;
            WHEN "1" => rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_q <= rightShiftStage0Idx1_uid902_i_unnamed_conv1x1103_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x(MUX,908)@9
    rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_s <= VCC_q;
    rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_combproc: PROCESS (rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_s, rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_q, rightShiftStage1Idx1_uid907_i_unnamed_conv1x1103_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_q <= rightShiftStage0_uid904_i_unnamed_conv1x1103_shift_x_q;
            WHEN "1" => rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_q <= rightShiftStage1Idx1_uid907_i_unnamed_conv1x1103_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x(MUX,913)@9
    rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_s <= VCC_q;
    rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_combproc: PROCESS (rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_s, rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_q, rightShiftStage2Idx1_uid912_i_unnamed_conv1x1103_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_q <= rightShiftStage1_uid909_i_unnamed_conv1x1103_shift_x_q;
            WHEN "1" => rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_q <= rightShiftStage2Idx1_uid912_i_unnamed_conv1x1103_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x(MUX,918)@9
    rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_s <= VCC_q;
    rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_combproc: PROCESS (rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_s, rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_q, rightShiftStage3Idx1_uid917_i_unnamed_conv1x1103_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_q <= rightShiftStage2_uid914_i_unnamed_conv1x1103_shift_x_q;
            WHEN "1" => rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_q <= rightShiftStage3Idx1_uid917_i_unnamed_conv1x1103_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x(MUX,922)@9
    rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x_s <= VCC_q;
    rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x_combproc: PROCESS (rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x_s, rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_q, rightShiftStage4Idx1_uid921_i_unnamed_conv1x1103_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x_q <= rightShiftStage3_uid919_i_unnamed_conv1x1103_shift_x_q;
            WHEN "1" => rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x_q <= rightShiftStage4Idx1_uid921_i_unnamed_conv1x1103_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked21_conv1x1(LOGICAL,602)@9
    i_mul16_masked21_conv1x1_q <= rightShiftStage4_uid923_i_unnamed_conv1x1103_shift_x_q and i_syncbuf_stride_sync_buffer114_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x(MUX,931)@9
    leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_s <= VCC_q;
    leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_combproc: PROCESS (leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_s, i_mul16_masked21_conv1x1_q, leftShiftStage0Idx1_uid930_i_unnamed_conv1x1107_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_q <= i_mul16_masked21_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_q <= leftShiftStage0Idx1_uid930_i_unnamed_conv1x1107_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x(MUX,936)@9
    leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_s <= VCC_q;
    leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_combproc: PROCESS (leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_s, leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_q, leftShiftStage1Idx1_uid935_i_unnamed_conv1x1107_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_q <= leftShiftStage0_uid932_i_unnamed_conv1x1107_shift_x_q;
            WHEN "1" => leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_q <= leftShiftStage1Idx1_uid935_i_unnamed_conv1x1107_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x(MUX,941)@9
    leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x_s <= VCC_q;
    leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x_combproc: PROCESS (leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x_s, leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_q, leftShiftStage2Idx1_uid940_i_unnamed_conv1x1107_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x_q <= leftShiftStage1_uid937_i_unnamed_conv1x1107_shift_x_q;
            WHEN "1" => leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x_q <= leftShiftStage2Idx1_uid940_i_unnamed_conv1x1107_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x1106_vt_select_31(BITSELECT,672)@9
    i_unnamed_conv1x1106_vt_select_31_b <= leftShiftStage2_uid942_i_unnamed_conv1x1107_shift_x_q(31 downto 11);

    -- redist41_i_unnamed_conv1x1106_vt_select_31_b_1(DELAY,2722)
    redist41_i_unnamed_conv1x1106_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x1106_vt_select_31_b, xout => redist41_i_unnamed_conv1x1106_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x1106_vt_join(BITJOIN,671)@10
    i_unnamed_conv1x1106_vt_join_q <= redist41_i_unnamed_conv1x1106_vt_select_31_b_1_q & i_unnamed_conv1x1106_vt_const_10_q;

    -- leftShiftStage1Idx1Rng2_uid2647_i_unnamed_conv1x199_shift_x(BITSELECT,2646)@8
    leftShiftStage1Idx1Rng2_uid2647_i_unnamed_conv1x199_shift_x_in <= leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid2647_i_unnamed_conv1x199_shift_x_b <= leftShiftStage1Idx1Rng2_uid2647_i_unnamed_conv1x199_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid2648_i_unnamed_conv1x199_shift_x(BITJOIN,2647)@8
    leftShiftStage1Idx1_uid2648_i_unnamed_conv1x199_shift_x_q <= leftShiftStage1Idx1Rng2_uid2647_i_unnamed_conv1x199_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage0Idx1Rng8_uid2642_i_unnamed_conv1x199_shift_x(BITSELECT,2641)@8
    leftShiftStage0Idx1Rng8_uid2642_i_unnamed_conv1x199_shift_x_in <= i_mul16_masked19_conv1x1_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid2642_i_unnamed_conv1x199_shift_x_b <= leftShiftStage0Idx1Rng8_uid2642_i_unnamed_conv1x199_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid2643_i_unnamed_conv1x199_shift_x(BITJOIN,2642)@8
    leftShiftStage0Idx1_uid2643_i_unnamed_conv1x199_shift_x_q <= leftShiftStage0Idx1Rng8_uid2642_i_unnamed_conv1x199_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- i_syncbuf_stride_sync_buffer115_conv1x1(BLACKBOX,652)@0
    -- in in_i_dependence@8
    -- in in_valid_in@8
    -- out out_buffer_out@8
    -- out out_valid_out@8
    thei_syncbuf_stride_sync_buffer115_conv1x1 : i_syncbuf_stride_sync_buffer115_conv1x196
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist59_sync_in_aunroll_x_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer115_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng1_uid2605_i_unnamed_conv1x193_shift_x(BITSELECT,2604)@6
    leftShiftStage2Idx1Rng1_uid2605_i_unnamed_conv1x193_shift_x_in <= leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid2605_i_unnamed_conv1x193_shift_x_b <= leftShiftStage2Idx1Rng1_uid2605_i_unnamed_conv1x193_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid2606_i_unnamed_conv1x193_shift_x(BITJOIN,2605)@6
    leftShiftStage2Idx1_uid2606_i_unnamed_conv1x193_shift_x_q <= leftShiftStage2Idx1Rng1_uid2605_i_unnamed_conv1x193_shift_x_b & GND_q;

    -- leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x(MUX,2607)@6
    leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x_s <= VCC_q;
    leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x_combproc: PROCESS (leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x_s, leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q, leftShiftStage2Idx1_uid2606_i_unnamed_conv1x193_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x_q <= leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x_q <= leftShiftStage2Idx1_uid2606_i_unnamed_conv1x193_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x192_vt_select_31(BITSELECT,841)@6
    i_unnamed_conv1x192_vt_select_31_b <= leftShiftStage2_uid2608_i_unnamed_conv1x193_shift_x_q(31 downto 21);

    -- redist4_i_unnamed_conv1x192_vt_select_31_b_2(DELAY,2685)
    redist4_i_unnamed_conv1x192_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 11, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x192_vt_select_31_b, xout => redist4_i_unnamed_conv1x192_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x192_vt_join(BITJOIN,840)@8
    i_unnamed_conv1x192_vt_join_q <= redist4_i_unnamed_conv1x192_vt_select_31_b_2_q & i_unnamed_conv1x1186_vt_const_20_q;

    -- xMSB_uid2611_i_unnamed_conv1x195_shift_x(BITSELECT,2610)@8
    xMSB_uid2611_i_unnamed_conv1x195_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x192_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2633_i_unnamed_conv1x195_shift_x(BITSELECT,2632)@8
    rightShiftStage4Idx1Rng1_uid2633_i_unnamed_conv1x195_shift_x_b <= rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2634_i_unnamed_conv1x195_shift_x(BITJOIN,2633)@8
    rightShiftStage4Idx1_uid2634_i_unnamed_conv1x195_shift_x_q <= xMSB_uid2611_i_unnamed_conv1x195_shift_x_b & rightShiftStage4Idx1Rng1_uid2633_i_unnamed_conv1x195_shift_x_b;

    -- seMsb_to2_uid2628(BITSELECT,2627)@8
    seMsb_to2_uid2628_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2611_i_unnamed_conv1x195_shift_x_b(0)) & xMSB_uid2611_i_unnamed_conv1x195_shift_x_b));
    seMsb_to2_uid2628_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2628_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2629_i_unnamed_conv1x195_shift_x(BITSELECT,2628)@8
    rightShiftStage3Idx1Rng2_uid2629_i_unnamed_conv1x195_shift_x_b <= rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2630_i_unnamed_conv1x195_shift_x(BITJOIN,2629)@8
    rightShiftStage3Idx1_uid2630_i_unnamed_conv1x195_shift_x_q <= seMsb_to2_uid2628_b & rightShiftStage3Idx1Rng2_uid2629_i_unnamed_conv1x195_shift_x_b;

    -- seMsb_to4_uid2623(BITSELECT,2622)@8
    seMsb_to4_uid2623_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2611_i_unnamed_conv1x195_shift_x_b(0)) & xMSB_uid2611_i_unnamed_conv1x195_shift_x_b));
    seMsb_to4_uid2623_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2623_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2624_i_unnamed_conv1x195_shift_x(BITSELECT,2623)@8
    rightShiftStage2Idx1Rng4_uid2624_i_unnamed_conv1x195_shift_x_b <= rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2625_i_unnamed_conv1x195_shift_x(BITJOIN,2624)@8
    rightShiftStage2Idx1_uid2625_i_unnamed_conv1x195_shift_x_q <= seMsb_to4_uid2623_b & rightShiftStage2Idx1Rng4_uid2624_i_unnamed_conv1x195_shift_x_b;

    -- seMsb_to8_uid2618(BITSELECT,2617)@8
    seMsb_to8_uid2618_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2611_i_unnamed_conv1x195_shift_x_b(0)) & xMSB_uid2611_i_unnamed_conv1x195_shift_x_b));
    seMsb_to8_uid2618_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2618_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2619_i_unnamed_conv1x195_shift_x(BITSELECT,2618)@8
    rightShiftStage1Idx1Rng8_uid2619_i_unnamed_conv1x195_shift_x_b <= rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2620_i_unnamed_conv1x195_shift_x(BITJOIN,2619)@8
    rightShiftStage1Idx1_uid2620_i_unnamed_conv1x195_shift_x_q <= seMsb_to8_uid2618_b & rightShiftStage1Idx1Rng8_uid2619_i_unnamed_conv1x195_shift_x_b;

    -- seMsb_to16_uid2613(BITSELECT,2612)@8
    seMsb_to16_uid2613_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2611_i_unnamed_conv1x195_shift_x_b(0)) & xMSB_uid2611_i_unnamed_conv1x195_shift_x_b));
    seMsb_to16_uid2613_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2613_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2614_i_unnamed_conv1x195_shift_x(BITSELECT,2613)@8
    rightShiftStage0Idx1Rng16_uid2614_i_unnamed_conv1x195_shift_x_b <= i_unnamed_conv1x192_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2615_i_unnamed_conv1x195_shift_x(BITJOIN,2614)@8
    rightShiftStage0Idx1_uid2615_i_unnamed_conv1x195_shift_x_q <= seMsb_to16_uid2613_b & rightShiftStage0Idx1Rng16_uid2614_i_unnamed_conv1x195_shift_x_b;

    -- rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x(MUX,2616)@8
    rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_s <= VCC_q;
    rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_combproc: PROCESS (rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_s, i_unnamed_conv1x192_vt_join_q, rightShiftStage0Idx1_uid2615_i_unnamed_conv1x195_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_q <= i_unnamed_conv1x192_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_q <= rightShiftStage0Idx1_uid2615_i_unnamed_conv1x195_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x(MUX,2621)@8
    rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_s <= VCC_q;
    rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_combproc: PROCESS (rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_s, rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_q, rightShiftStage1Idx1_uid2620_i_unnamed_conv1x195_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_q <= rightShiftStage0_uid2617_i_unnamed_conv1x195_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_q <= rightShiftStage1Idx1_uid2620_i_unnamed_conv1x195_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x(MUX,2626)@8
    rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_s <= VCC_q;
    rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_combproc: PROCESS (rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_s, rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_q, rightShiftStage2Idx1_uid2625_i_unnamed_conv1x195_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_q <= rightShiftStage1_uid2622_i_unnamed_conv1x195_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_q <= rightShiftStage2Idx1_uid2625_i_unnamed_conv1x195_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x(MUX,2631)@8
    rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_s <= VCC_q;
    rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_combproc: PROCESS (rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_s, rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_q, rightShiftStage3Idx1_uid2630_i_unnamed_conv1x195_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_q <= rightShiftStage2_uid2627_i_unnamed_conv1x195_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_q <= rightShiftStage3Idx1_uid2630_i_unnamed_conv1x195_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x(MUX,2635)@8
    rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x_s <= VCC_q;
    rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x_combproc: PROCESS (rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x_s, rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_q, rightShiftStage4Idx1_uid2634_i_unnamed_conv1x195_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x_q <= rightShiftStage3_uid2632_i_unnamed_conv1x195_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x_q <= rightShiftStage4Idx1_uid2634_i_unnamed_conv1x195_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked19_conv1x1(LOGICAL,601)@8
    i_mul16_masked19_conv1x1_q <= rightShiftStage4_uid2636_i_unnamed_conv1x195_shift_x_q and i_syncbuf_stride_sync_buffer115_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x(MUX,2644)@8
    leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_s <= VCC_q;
    leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_combproc: PROCESS (leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_s, i_mul16_masked19_conv1x1_q, leftShiftStage0Idx1_uid2643_i_unnamed_conv1x199_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_q <= i_mul16_masked19_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_q <= leftShiftStage0Idx1_uid2643_i_unnamed_conv1x199_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x(MUX,2649)@8
    leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x_s <= VCC_q;
    leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x_combproc: PROCESS (leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x_s, leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_q, leftShiftStage1Idx1_uid2648_i_unnamed_conv1x199_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x_q <= leftShiftStage0_uid2645_i_unnamed_conv1x199_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x_q <= leftShiftStage1Idx1_uid2648_i_unnamed_conv1x199_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x198_vt_select_31(BITSELECT,844)@8
    i_unnamed_conv1x198_vt_select_31_b <= leftShiftStage1_uid2650_i_unnamed_conv1x199_shift_x_q(31 downto 10);

    -- redist3_i_unnamed_conv1x198_vt_select_31_b_1(DELAY,2684)
    redist3_i_unnamed_conv1x198_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 22, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x198_vt_select_31_b, xout => redist3_i_unnamed_conv1x198_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x198_vt_join(BITJOIN,843)@9
    i_unnamed_conv1x198_vt_join_q <= redist3_i_unnamed_conv1x198_vt_select_31_b_1_q & i_unnamed_conv1x1180_vt_const_9_q;

    -- leftShiftStage1Idx1Rng1_uid2586_i_unnamed_conv1x191_shift_x(BITSELECT,2585)@7
    leftShiftStage1Idx1Rng1_uid2586_i_unnamed_conv1x191_shift_x_in <= leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid2586_i_unnamed_conv1x191_shift_x_b <= leftShiftStage1Idx1Rng1_uid2586_i_unnamed_conv1x191_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid2587_i_unnamed_conv1x191_shift_x(BITJOIN,2586)@7
    leftShiftStage1Idx1_uid2587_i_unnamed_conv1x191_shift_x_q <= leftShiftStage1Idx1Rng1_uid2586_i_unnamed_conv1x191_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng8_uid2581_i_unnamed_conv1x191_shift_x(BITSELECT,2580)@7
    leftShiftStage0Idx1Rng8_uid2581_i_unnamed_conv1x191_shift_x_in <= i_mul16_masked17_conv1x1_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid2581_i_unnamed_conv1x191_shift_x_b <= leftShiftStage0Idx1Rng8_uid2581_i_unnamed_conv1x191_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid2582_i_unnamed_conv1x191_shift_x(BITJOIN,2581)@7
    leftShiftStage0Idx1_uid2582_i_unnamed_conv1x191_shift_x_q <= leftShiftStage0Idx1Rng8_uid2581_i_unnamed_conv1x191_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- i_syncbuf_stride_sync_buffer116_conv1x1(BLACKBOX,653)@0
    -- in in_i_dependence@7
    -- in in_valid_in@7
    -- out out_buffer_out@7
    -- out out_valid_out@7
    thei_syncbuf_stride_sync_buffer116_conv1x1 : i_syncbuf_stride_sync_buffer116_conv1x188
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist58_sync_in_aunroll_x_in_i_valid_6_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer116_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng2_uid2483_i_unnamed_conv1x177_shift_x(BITSELECT,2482)@6
    leftShiftStage2Idx1Rng2_uid2483_i_unnamed_conv1x177_shift_x_in <= leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid2483_i_unnamed_conv1x177_shift_x_b <= leftShiftStage2Idx1Rng2_uid2483_i_unnamed_conv1x177_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid2484_i_unnamed_conv1x177_shift_x(BITJOIN,2483)@6
    leftShiftStage2Idx1_uid2484_i_unnamed_conv1x177_shift_x_q <= leftShiftStage2Idx1Rng2_uid2483_i_unnamed_conv1x177_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x(MUX,2485)@6
    leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_s <= VCC_q;
    leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_combproc: PROCESS (leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_s, leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q, leftShiftStage2Idx1_uid2484_i_unnamed_conv1x177_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_q <= leftShiftStage1_uid895_i_unnamed_conv1x1101_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_q <= leftShiftStage2Idx1_uid2484_i_unnamed_conv1x177_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x184_vt_select_31(BITSELECT,835)@6
    i_unnamed_conv1x184_vt_select_31_b <= leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_q(31 downto 22);

    -- redist6_i_unnamed_conv1x184_vt_select_31_b_1(DELAY,2687)
    redist6_i_unnamed_conv1x184_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x184_vt_select_31_b, xout => redist6_i_unnamed_conv1x184_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x184_vt_join(BITJOIN,834)@7
    i_unnamed_conv1x184_vt_join_q <= redist6_i_unnamed_conv1x184_vt_select_31_b_1_q & i_unnamed_conv1x1194_vt_const_21_q;

    -- xMSB_uid2550_i_unnamed_conv1x187_shift_x(BITSELECT,2549)@7
    xMSB_uid2550_i_unnamed_conv1x187_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x184_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2572_i_unnamed_conv1x187_shift_x(BITSELECT,2571)@7
    rightShiftStage4Idx1Rng1_uid2572_i_unnamed_conv1x187_shift_x_b <= rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2573_i_unnamed_conv1x187_shift_x(BITJOIN,2572)@7
    rightShiftStage4Idx1_uid2573_i_unnamed_conv1x187_shift_x_q <= xMSB_uid2550_i_unnamed_conv1x187_shift_x_b & rightShiftStage4Idx1Rng1_uid2572_i_unnamed_conv1x187_shift_x_b;

    -- seMsb_to2_uid2567(BITSELECT,2566)@7
    seMsb_to2_uid2567_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2550_i_unnamed_conv1x187_shift_x_b(0)) & xMSB_uid2550_i_unnamed_conv1x187_shift_x_b));
    seMsb_to2_uid2567_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2567_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2568_i_unnamed_conv1x187_shift_x(BITSELECT,2567)@7
    rightShiftStage3Idx1Rng2_uid2568_i_unnamed_conv1x187_shift_x_b <= rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2569_i_unnamed_conv1x187_shift_x(BITJOIN,2568)@7
    rightShiftStage3Idx1_uid2569_i_unnamed_conv1x187_shift_x_q <= seMsb_to2_uid2567_b & rightShiftStage3Idx1Rng2_uid2568_i_unnamed_conv1x187_shift_x_b;

    -- seMsb_to4_uid2562(BITSELECT,2561)@7
    seMsb_to4_uid2562_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2550_i_unnamed_conv1x187_shift_x_b(0)) & xMSB_uid2550_i_unnamed_conv1x187_shift_x_b));
    seMsb_to4_uid2562_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2562_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2563_i_unnamed_conv1x187_shift_x(BITSELECT,2562)@7
    rightShiftStage2Idx1Rng4_uid2563_i_unnamed_conv1x187_shift_x_b <= rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2564_i_unnamed_conv1x187_shift_x(BITJOIN,2563)@7
    rightShiftStage2Idx1_uid2564_i_unnamed_conv1x187_shift_x_q <= seMsb_to4_uid2562_b & rightShiftStage2Idx1Rng4_uid2563_i_unnamed_conv1x187_shift_x_b;

    -- seMsb_to8_uid2557(BITSELECT,2556)@7
    seMsb_to8_uid2557_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2550_i_unnamed_conv1x187_shift_x_b(0)) & xMSB_uid2550_i_unnamed_conv1x187_shift_x_b));
    seMsb_to8_uid2557_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2557_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2558_i_unnamed_conv1x187_shift_x(BITSELECT,2557)@7
    rightShiftStage1Idx1Rng8_uid2558_i_unnamed_conv1x187_shift_x_b <= rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2559_i_unnamed_conv1x187_shift_x(BITJOIN,2558)@7
    rightShiftStage1Idx1_uid2559_i_unnamed_conv1x187_shift_x_q <= seMsb_to8_uid2557_b & rightShiftStage1Idx1Rng8_uid2558_i_unnamed_conv1x187_shift_x_b;

    -- seMsb_to16_uid2552(BITSELECT,2551)@7
    seMsb_to16_uid2552_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2550_i_unnamed_conv1x187_shift_x_b(0)) & xMSB_uid2550_i_unnamed_conv1x187_shift_x_b));
    seMsb_to16_uid2552_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2552_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2553_i_unnamed_conv1x187_shift_x(BITSELECT,2552)@7
    rightShiftStage0Idx1Rng16_uid2553_i_unnamed_conv1x187_shift_x_b <= i_unnamed_conv1x184_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2554_i_unnamed_conv1x187_shift_x(BITJOIN,2553)@7
    rightShiftStage0Idx1_uid2554_i_unnamed_conv1x187_shift_x_q <= seMsb_to16_uid2552_b & rightShiftStage0Idx1Rng16_uid2553_i_unnamed_conv1x187_shift_x_b;

    -- rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x(MUX,2555)@7
    rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_s <= VCC_q;
    rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_combproc: PROCESS (rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_s, i_unnamed_conv1x184_vt_join_q, rightShiftStage0Idx1_uid2554_i_unnamed_conv1x187_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_q <= i_unnamed_conv1x184_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_q <= rightShiftStage0Idx1_uid2554_i_unnamed_conv1x187_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x(MUX,2560)@7
    rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_s <= VCC_q;
    rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_combproc: PROCESS (rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_s, rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_q, rightShiftStage1Idx1_uid2559_i_unnamed_conv1x187_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_q <= rightShiftStage0_uid2556_i_unnamed_conv1x187_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_q <= rightShiftStage1Idx1_uid2559_i_unnamed_conv1x187_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x(MUX,2565)@7
    rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_s <= VCC_q;
    rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_combproc: PROCESS (rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_s, rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_q, rightShiftStage2Idx1_uid2564_i_unnamed_conv1x187_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_q <= rightShiftStage1_uid2561_i_unnamed_conv1x187_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_q <= rightShiftStage2Idx1_uid2564_i_unnamed_conv1x187_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x(MUX,2570)@7
    rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_s <= VCC_q;
    rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_combproc: PROCESS (rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_s, rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_q, rightShiftStage3Idx1_uid2569_i_unnamed_conv1x187_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_q <= rightShiftStage2_uid2566_i_unnamed_conv1x187_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_q <= rightShiftStage3Idx1_uid2569_i_unnamed_conv1x187_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x(MUX,2574)@7
    rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x_s <= VCC_q;
    rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x_combproc: PROCESS (rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x_s, rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_q, rightShiftStage4Idx1_uid2573_i_unnamed_conv1x187_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x_q <= rightShiftStage3_uid2571_i_unnamed_conv1x187_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x_q <= rightShiftStage4Idx1_uid2573_i_unnamed_conv1x187_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked17_conv1x1(LOGICAL,600)@7
    i_mul16_masked17_conv1x1_q <= rightShiftStage4_uid2575_i_unnamed_conv1x187_shift_x_q and i_syncbuf_stride_sync_buffer116_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x(MUX,2583)@7
    leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_s <= VCC_q;
    leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_combproc: PROCESS (leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_s, i_mul16_masked17_conv1x1_q, leftShiftStage0Idx1_uid2582_i_unnamed_conv1x191_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_q <= i_mul16_masked17_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_q <= leftShiftStage0Idx1_uid2582_i_unnamed_conv1x191_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x(MUX,2588)@7
    leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x_s <= VCC_q;
    leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x_combproc: PROCESS (leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x_s, leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_q, leftShiftStage1Idx1_uid2587_i_unnamed_conv1x191_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x_q <= leftShiftStage0_uid2584_i_unnamed_conv1x191_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x_q <= leftShiftStage1Idx1_uid2587_i_unnamed_conv1x191_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x190_vt_select_31(BITSELECT,838)@7
    i_unnamed_conv1x190_vt_select_31_b <= leftShiftStage1_uid2589_i_unnamed_conv1x191_shift_x_q(31 downto 9);

    -- redist5_i_unnamed_conv1x190_vt_select_31_b_1(DELAY,2686)
    redist5_i_unnamed_conv1x190_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x190_vt_select_31_b, xout => redist5_i_unnamed_conv1x190_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x190_vt_join(BITJOIN,837)@8
    i_unnamed_conv1x190_vt_join_q <= redist5_i_unnamed_conv1x190_vt_select_31_b_1_q & i_unnamed_conv1x1188_vt_const_8_q;

    -- leftShiftStage0Idx1Rng8_uid2525_i_unnamed_conv1x183_shift_x(BITSELECT,2524)@6
    leftShiftStage0Idx1Rng8_uid2525_i_unnamed_conv1x183_shift_x_in <= i_mul16_masked15_conv1x1_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid2525_i_unnamed_conv1x183_shift_x_b <= leftShiftStage0Idx1Rng8_uid2525_i_unnamed_conv1x183_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid2526_i_unnamed_conv1x183_shift_x(BITJOIN,2525)@6
    leftShiftStage0Idx1_uid2526_i_unnamed_conv1x183_shift_x_q <= leftShiftStage0Idx1Rng8_uid2525_i_unnamed_conv1x183_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- i_syncbuf_stride_sync_buffer117_conv1x1(BLACKBOX,654)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_stride_sync_buffer117_conv1x1 : i_syncbuf_stride_sync_buffer117_conv1x180
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist57_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer117_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage3Idx1Rng1_uid2488_i_unnamed_conv1x177_shift_x(BITSELECT,2487)@6
    leftShiftStage3Idx1Rng1_uid2488_i_unnamed_conv1x177_shift_x_in <= leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid2488_i_unnamed_conv1x177_shift_x_b <= leftShiftStage3Idx1Rng1_uid2488_i_unnamed_conv1x177_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid2489_i_unnamed_conv1x177_shift_x(BITJOIN,2488)@6
    leftShiftStage3Idx1_uid2489_i_unnamed_conv1x177_shift_x_q <= leftShiftStage3Idx1Rng1_uid2488_i_unnamed_conv1x177_shift_x_b & GND_q;

    -- leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x(MUX,2490)@6
    leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x_s <= VCC_q;
    leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x_combproc: PROCESS (leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x_s, leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_q, leftShiftStage3Idx1_uid2489_i_unnamed_conv1x177_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x_q <= leftShiftStage2_uid2486_i_unnamed_conv1x177_shift_x_q;
            WHEN "1" => leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x_q <= leftShiftStage3Idx1_uid2489_i_unnamed_conv1x177_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x176_vt_select_31(BITSELECT,829)@6
    i_unnamed_conv1x176_vt_select_31_b <= leftShiftStage3_uid2491_i_unnamed_conv1x177_shift_x_q(31 downto 23);

    -- i_unnamed_conv1x176_vt_join(BITJOIN,828)@6
    i_unnamed_conv1x176_vt_join_q <= i_unnamed_conv1x176_vt_select_31_b & i_unnamed_conv1x1202_vt_const_22_q;

    -- xMSB_uid2494_i_unnamed_conv1x179_shift_x(BITSELECT,2493)@6
    xMSB_uid2494_i_unnamed_conv1x179_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x176_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2516_i_unnamed_conv1x179_shift_x(BITSELECT,2515)@6
    rightShiftStage4Idx1Rng1_uid2516_i_unnamed_conv1x179_shift_x_b <= rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2517_i_unnamed_conv1x179_shift_x(BITJOIN,2516)@6
    rightShiftStage4Idx1_uid2517_i_unnamed_conv1x179_shift_x_q <= xMSB_uid2494_i_unnamed_conv1x179_shift_x_b & rightShiftStage4Idx1Rng1_uid2516_i_unnamed_conv1x179_shift_x_b;

    -- seMsb_to2_uid2511(BITSELECT,2510)@6
    seMsb_to2_uid2511_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2494_i_unnamed_conv1x179_shift_x_b(0)) & xMSB_uid2494_i_unnamed_conv1x179_shift_x_b));
    seMsb_to2_uid2511_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2511_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2512_i_unnamed_conv1x179_shift_x(BITSELECT,2511)@6
    rightShiftStage3Idx1Rng2_uid2512_i_unnamed_conv1x179_shift_x_b <= rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2513_i_unnamed_conv1x179_shift_x(BITJOIN,2512)@6
    rightShiftStage3Idx1_uid2513_i_unnamed_conv1x179_shift_x_q <= seMsb_to2_uid2511_b & rightShiftStage3Idx1Rng2_uid2512_i_unnamed_conv1x179_shift_x_b;

    -- seMsb_to4_uid2506(BITSELECT,2505)@6
    seMsb_to4_uid2506_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2494_i_unnamed_conv1x179_shift_x_b(0)) & xMSB_uid2494_i_unnamed_conv1x179_shift_x_b));
    seMsb_to4_uid2506_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2506_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2507_i_unnamed_conv1x179_shift_x(BITSELECT,2506)@6
    rightShiftStage2Idx1Rng4_uid2507_i_unnamed_conv1x179_shift_x_b <= rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2508_i_unnamed_conv1x179_shift_x(BITJOIN,2507)@6
    rightShiftStage2Idx1_uid2508_i_unnamed_conv1x179_shift_x_q <= seMsb_to4_uid2506_b & rightShiftStage2Idx1Rng4_uid2507_i_unnamed_conv1x179_shift_x_b;

    -- seMsb_to8_uid2501(BITSELECT,2500)@6
    seMsb_to8_uid2501_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2494_i_unnamed_conv1x179_shift_x_b(0)) & xMSB_uid2494_i_unnamed_conv1x179_shift_x_b));
    seMsb_to8_uid2501_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2501_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2502_i_unnamed_conv1x179_shift_x(BITSELECT,2501)@6
    rightShiftStage1Idx1Rng8_uid2502_i_unnamed_conv1x179_shift_x_b <= rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2503_i_unnamed_conv1x179_shift_x(BITJOIN,2502)@6
    rightShiftStage1Idx1_uid2503_i_unnamed_conv1x179_shift_x_q <= seMsb_to8_uid2501_b & rightShiftStage1Idx1Rng8_uid2502_i_unnamed_conv1x179_shift_x_b;

    -- seMsb_to16_uid2496(BITSELECT,2495)@6
    seMsb_to16_uid2496_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2494_i_unnamed_conv1x179_shift_x_b(0)) & xMSB_uid2494_i_unnamed_conv1x179_shift_x_b));
    seMsb_to16_uid2496_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2496_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2497_i_unnamed_conv1x179_shift_x(BITSELECT,2496)@6
    rightShiftStage0Idx1Rng16_uid2497_i_unnamed_conv1x179_shift_x_b <= i_unnamed_conv1x176_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2498_i_unnamed_conv1x179_shift_x(BITJOIN,2497)@6
    rightShiftStage0Idx1_uid2498_i_unnamed_conv1x179_shift_x_q <= seMsb_to16_uid2496_b & rightShiftStage0Idx1Rng16_uid2497_i_unnamed_conv1x179_shift_x_b;

    -- rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x(MUX,2499)@6
    rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_s <= VCC_q;
    rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_combproc: PROCESS (rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_s, i_unnamed_conv1x176_vt_join_q, rightShiftStage0Idx1_uid2498_i_unnamed_conv1x179_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_q <= i_unnamed_conv1x176_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_q <= rightShiftStage0Idx1_uid2498_i_unnamed_conv1x179_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x(MUX,2504)@6
    rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_s <= VCC_q;
    rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_combproc: PROCESS (rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_s, rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_q, rightShiftStage1Idx1_uid2503_i_unnamed_conv1x179_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_q <= rightShiftStage0_uid2500_i_unnamed_conv1x179_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_q <= rightShiftStage1Idx1_uid2503_i_unnamed_conv1x179_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x(MUX,2509)@6
    rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_s <= VCC_q;
    rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_combproc: PROCESS (rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_s, rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_q, rightShiftStage2Idx1_uid2508_i_unnamed_conv1x179_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_q <= rightShiftStage1_uid2505_i_unnamed_conv1x179_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_q <= rightShiftStage2Idx1_uid2508_i_unnamed_conv1x179_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x(MUX,2514)@6
    rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_s <= VCC_q;
    rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_combproc: PROCESS (rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_s, rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_q, rightShiftStage3Idx1_uid2513_i_unnamed_conv1x179_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_q <= rightShiftStage2_uid2510_i_unnamed_conv1x179_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_q <= rightShiftStage3Idx1_uid2513_i_unnamed_conv1x179_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x(MUX,2518)@6
    rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x_s <= VCC_q;
    rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x_combproc: PROCESS (rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x_s, rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_q, rightShiftStage4Idx1_uid2517_i_unnamed_conv1x179_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x_q <= rightShiftStage3_uid2515_i_unnamed_conv1x179_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x_q <= rightShiftStage4Idx1_uid2517_i_unnamed_conv1x179_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked15_conv1x1(LOGICAL,599)@6
    i_mul16_masked15_conv1x1_q <= rightShiftStage4_uid2519_i_unnamed_conv1x179_shift_x_q and i_syncbuf_stride_sync_buffer117_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x(MUX,2527)@6
    leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x_s <= VCC_q;
    leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x_combproc: PROCESS (leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x_s, i_mul16_masked15_conv1x1_q, leftShiftStage0Idx1_uid2526_i_unnamed_conv1x183_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x_q <= i_mul16_masked15_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x_q <= leftShiftStage0Idx1_uid2526_i_unnamed_conv1x183_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x182_vt_select_31(BITSELECT,832)@6
    i_unnamed_conv1x182_vt_select_31_b <= leftShiftStage0_uid2528_i_unnamed_conv1x183_shift_x_q(31 downto 8);

    -- redist7_i_unnamed_conv1x182_vt_select_31_b_1(DELAY,2688)
    redist7_i_unnamed_conv1x182_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x182_vt_select_31_b, xout => redist7_i_unnamed_conv1x182_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x182_vt_join(BITJOIN,831)@7
    i_unnamed_conv1x182_vt_join_q <= redist7_i_unnamed_conv1x182_vt_select_31_b_1_q & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage2Idx1Rng1_uid2464_i_unnamed_conv1x175_shift_x(BITSELECT,2463)@5
    leftShiftStage2Idx1Rng1_uid2464_i_unnamed_conv1x175_shift_x_in <= leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid2464_i_unnamed_conv1x175_shift_x_b <= leftShiftStage2Idx1Rng1_uid2464_i_unnamed_conv1x175_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid2465_i_unnamed_conv1x175_shift_x(BITJOIN,2464)@5
    leftShiftStage2Idx1_uid2465_i_unnamed_conv1x175_shift_x_q <= leftShiftStage2Idx1Rng1_uid2464_i_unnamed_conv1x175_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng2_uid2459_i_unnamed_conv1x175_shift_x(BITSELECT,2458)@5
    leftShiftStage1Idx1Rng2_uid2459_i_unnamed_conv1x175_shift_x_in <= leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid2459_i_unnamed_conv1x175_shift_x_b <= leftShiftStage1Idx1Rng2_uid2459_i_unnamed_conv1x175_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid2460_i_unnamed_conv1x175_shift_x(BITJOIN,2459)@5
    leftShiftStage1Idx1_uid2460_i_unnamed_conv1x175_shift_x_q <= leftShiftStage1Idx1Rng2_uid2459_i_unnamed_conv1x175_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage0Idx1Rng4_uid2454_i_unnamed_conv1x175_shift_x(BITSELECT,2453)@5
    leftShiftStage0Idx1Rng4_uid2454_i_unnamed_conv1x175_shift_x_in <= i_mul16_masked13_conv1x1_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid2454_i_unnamed_conv1x175_shift_x_b <= leftShiftStage0Idx1Rng4_uid2454_i_unnamed_conv1x175_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid2455_i_unnamed_conv1x175_shift_x(BITJOIN,2454)@5
    leftShiftStage0Idx1_uid2455_i_unnamed_conv1x175_shift_x_q <= leftShiftStage0Idx1Rng4_uid2454_i_unnamed_conv1x175_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- i_syncbuf_stride_sync_buffer118_conv1x1(BLACKBOX,655)@0
    -- in in_i_dependence@5
    -- in in_valid_in@5
    -- out out_buffer_out@5
    -- out out_valid_out@5
    thei_syncbuf_stride_sync_buffer118_conv1x1 : i_syncbuf_stride_sync_buffer118_conv1x172
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist56_sync_in_aunroll_x_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer118_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage1Idx1Rng8_uid2112_i_unnamed_conv1x129_shift_x(BITSELECT,2111)@1
    leftShiftStage1Idx1Rng8_uid2112_i_unnamed_conv1x129_shift_x_in <= leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid2112_i_unnamed_conv1x129_shift_x_b <= leftShiftStage1Idx1Rng8_uid2112_i_unnamed_conv1x129_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid2113_i_unnamed_conv1x129_shift_x(BITJOIN,2112)@1
    leftShiftStage1Idx1_uid2113_i_unnamed_conv1x129_shift_x_q <= leftShiftStage1Idx1Rng8_uid2112_i_unnamed_conv1x129_shift_x_b & i_unnamed_conv1x1196_vt_const_7_q;

    -- leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x(MUX,2114)@1
    leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_s <= VCC_q;
    leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_combproc: PROCESS (leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_s, leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q, leftShiftStage1Idx1_uid2113_i_unnamed_conv1x129_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q <= leftShiftStage0_uid890_i_unnamed_conv1x1101_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q <= leftShiftStage1Idx1_uid2113_i_unnamed_conv1x129_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x168_vt_select_31(BITSELECT,823)@1
    i_unnamed_conv1x168_vt_select_31_b <= leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q(31 downto 24);

    -- redist9_i_unnamed_conv1x168_vt_select_31_b_4(DELAY,2690)
    redist9_i_unnamed_conv1x168_vt_select_31_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x168_vt_select_31_b, xout => redist9_i_unnamed_conv1x168_vt_select_31_b_4_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x168_vt_join(BITJOIN,822)@5
    i_unnamed_conv1x168_vt_join_q <= redist9_i_unnamed_conv1x168_vt_select_31_b_4_q & i_unnamed_conv1x1210_vt_const_23_q;

    -- xMSB_uid2423_i_unnamed_conv1x171_shift_x(BITSELECT,2422)@5
    xMSB_uid2423_i_unnamed_conv1x171_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x168_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2445_i_unnamed_conv1x171_shift_x(BITSELECT,2444)@5
    rightShiftStage4Idx1Rng1_uid2445_i_unnamed_conv1x171_shift_x_b <= rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2446_i_unnamed_conv1x171_shift_x(BITJOIN,2445)@5
    rightShiftStage4Idx1_uid2446_i_unnamed_conv1x171_shift_x_q <= xMSB_uid2423_i_unnamed_conv1x171_shift_x_b & rightShiftStage4Idx1Rng1_uid2445_i_unnamed_conv1x171_shift_x_b;

    -- seMsb_to2_uid2440(BITSELECT,2439)@5
    seMsb_to2_uid2440_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2423_i_unnamed_conv1x171_shift_x_b(0)) & xMSB_uid2423_i_unnamed_conv1x171_shift_x_b));
    seMsb_to2_uid2440_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2440_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2441_i_unnamed_conv1x171_shift_x(BITSELECT,2440)@5
    rightShiftStage3Idx1Rng2_uid2441_i_unnamed_conv1x171_shift_x_b <= rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2442_i_unnamed_conv1x171_shift_x(BITJOIN,2441)@5
    rightShiftStage3Idx1_uid2442_i_unnamed_conv1x171_shift_x_q <= seMsb_to2_uid2440_b & rightShiftStage3Idx1Rng2_uid2441_i_unnamed_conv1x171_shift_x_b;

    -- seMsb_to4_uid2435(BITSELECT,2434)@5
    seMsb_to4_uid2435_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2423_i_unnamed_conv1x171_shift_x_b(0)) & xMSB_uid2423_i_unnamed_conv1x171_shift_x_b));
    seMsb_to4_uid2435_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2435_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2436_i_unnamed_conv1x171_shift_x(BITSELECT,2435)@5
    rightShiftStage2Idx1Rng4_uid2436_i_unnamed_conv1x171_shift_x_b <= rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2437_i_unnamed_conv1x171_shift_x(BITJOIN,2436)@5
    rightShiftStage2Idx1_uid2437_i_unnamed_conv1x171_shift_x_q <= seMsb_to4_uid2435_b & rightShiftStage2Idx1Rng4_uid2436_i_unnamed_conv1x171_shift_x_b;

    -- seMsb_to8_uid2430(BITSELECT,2429)@5
    seMsb_to8_uid2430_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2423_i_unnamed_conv1x171_shift_x_b(0)) & xMSB_uid2423_i_unnamed_conv1x171_shift_x_b));
    seMsb_to8_uid2430_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2430_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2431_i_unnamed_conv1x171_shift_x(BITSELECT,2430)@5
    rightShiftStage1Idx1Rng8_uid2431_i_unnamed_conv1x171_shift_x_b <= rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2432_i_unnamed_conv1x171_shift_x(BITJOIN,2431)@5
    rightShiftStage1Idx1_uid2432_i_unnamed_conv1x171_shift_x_q <= seMsb_to8_uid2430_b & rightShiftStage1Idx1Rng8_uid2431_i_unnamed_conv1x171_shift_x_b;

    -- seMsb_to16_uid2425(BITSELECT,2424)@5
    seMsb_to16_uid2425_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2423_i_unnamed_conv1x171_shift_x_b(0)) & xMSB_uid2423_i_unnamed_conv1x171_shift_x_b));
    seMsb_to16_uid2425_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2425_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2426_i_unnamed_conv1x171_shift_x(BITSELECT,2425)@5
    rightShiftStage0Idx1Rng16_uid2426_i_unnamed_conv1x171_shift_x_b <= i_unnamed_conv1x168_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2427_i_unnamed_conv1x171_shift_x(BITJOIN,2426)@5
    rightShiftStage0Idx1_uid2427_i_unnamed_conv1x171_shift_x_q <= seMsb_to16_uid2425_b & rightShiftStage0Idx1Rng16_uid2426_i_unnamed_conv1x171_shift_x_b;

    -- rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x(MUX,2428)@5
    rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_s <= VCC_q;
    rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_combproc: PROCESS (rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_s, i_unnamed_conv1x168_vt_join_q, rightShiftStage0Idx1_uid2427_i_unnamed_conv1x171_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_q <= i_unnamed_conv1x168_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_q <= rightShiftStage0Idx1_uid2427_i_unnamed_conv1x171_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x(MUX,2433)@5
    rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_s <= VCC_q;
    rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_combproc: PROCESS (rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_s, rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_q, rightShiftStage1Idx1_uid2432_i_unnamed_conv1x171_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_q <= rightShiftStage0_uid2429_i_unnamed_conv1x171_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_q <= rightShiftStage1Idx1_uid2432_i_unnamed_conv1x171_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x(MUX,2438)@5
    rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_s <= VCC_q;
    rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_combproc: PROCESS (rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_s, rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_q, rightShiftStage2Idx1_uid2437_i_unnamed_conv1x171_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_q <= rightShiftStage1_uid2434_i_unnamed_conv1x171_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_q <= rightShiftStage2Idx1_uid2437_i_unnamed_conv1x171_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x(MUX,2443)@5
    rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_s <= VCC_q;
    rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_combproc: PROCESS (rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_s, rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_q, rightShiftStage3Idx1_uid2442_i_unnamed_conv1x171_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_q <= rightShiftStage2_uid2439_i_unnamed_conv1x171_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_q <= rightShiftStage3Idx1_uid2442_i_unnamed_conv1x171_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x(MUX,2447)@5
    rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x_s <= VCC_q;
    rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x_combproc: PROCESS (rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x_s, rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_q, rightShiftStage4Idx1_uid2446_i_unnamed_conv1x171_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x_q <= rightShiftStage3_uid2444_i_unnamed_conv1x171_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x_q <= rightShiftStage4Idx1_uid2446_i_unnamed_conv1x171_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked13_conv1x1(LOGICAL,598)@5
    i_mul16_masked13_conv1x1_q <= rightShiftStage4_uid2448_i_unnamed_conv1x171_shift_x_q and i_syncbuf_stride_sync_buffer118_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x(MUX,2456)@5
    leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_s <= VCC_q;
    leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_combproc: PROCESS (leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_s, i_mul16_masked13_conv1x1_q, leftShiftStage0Idx1_uid2455_i_unnamed_conv1x175_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_q <= i_mul16_masked13_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_q <= leftShiftStage0Idx1_uid2455_i_unnamed_conv1x175_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x(MUX,2461)@5
    leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_s <= VCC_q;
    leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_combproc: PROCESS (leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_s, leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_q, leftShiftStage1Idx1_uid2460_i_unnamed_conv1x175_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_q <= leftShiftStage0_uid2457_i_unnamed_conv1x175_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_q <= leftShiftStage1Idx1_uid2460_i_unnamed_conv1x175_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x(MUX,2466)@5
    leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x_s <= VCC_q;
    leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x_combproc: PROCESS (leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x_s, leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_q, leftShiftStage2Idx1_uid2465_i_unnamed_conv1x175_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x_q <= leftShiftStage1_uid2462_i_unnamed_conv1x175_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x_q <= leftShiftStage2Idx1_uid2465_i_unnamed_conv1x175_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x174_vt_select_31(BITSELECT,826)@5
    i_unnamed_conv1x174_vt_select_31_b <= leftShiftStage2_uid2467_i_unnamed_conv1x175_shift_x_q(31 downto 7);

    -- redist8_i_unnamed_conv1x174_vt_select_31_b_1(DELAY,2689)
    redist8_i_unnamed_conv1x174_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 25, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x174_vt_select_31_b, xout => redist8_i_unnamed_conv1x174_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x174_vt_join(BITJOIN,825)@6
    i_unnamed_conv1x174_vt_join_q <= redist8_i_unnamed_conv1x174_vt_select_31_b_1_q & i_unnamed_conv1x1204_vt_const_6_q;

    -- leftShiftStage1Idx1Rng2_uid2403_i_unnamed_conv1x167_shift_x(BITSELECT,2402)@4
    leftShiftStage1Idx1Rng2_uid2403_i_unnamed_conv1x167_shift_x_in <= leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid2403_i_unnamed_conv1x167_shift_x_b <= leftShiftStage1Idx1Rng2_uid2403_i_unnamed_conv1x167_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid2404_i_unnamed_conv1x167_shift_x(BITJOIN,2403)@4
    leftShiftStage1Idx1_uid2404_i_unnamed_conv1x167_shift_x_q <= leftShiftStage1Idx1Rng2_uid2403_i_unnamed_conv1x167_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage0Idx1Rng4_uid2398_i_unnamed_conv1x167_shift_x(BITSELECT,2397)@4
    leftShiftStage0Idx1Rng4_uid2398_i_unnamed_conv1x167_shift_x_in <= i_mul16_masked11_conv1x1_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid2398_i_unnamed_conv1x167_shift_x_b <= leftShiftStage0Idx1Rng4_uid2398_i_unnamed_conv1x167_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid2399_i_unnamed_conv1x167_shift_x(BITJOIN,2398)@4
    leftShiftStage0Idx1_uid2399_i_unnamed_conv1x167_shift_x_q <= leftShiftStage0Idx1Rng4_uid2398_i_unnamed_conv1x167_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- i_syncbuf_stride_sync_buffer119_conv1x1(BLACKBOX,656)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_stride_sync_buffer119_conv1x1 : i_syncbuf_stride_sync_buffer119_conv1x164
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist55_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer119_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng1_uid2361_i_unnamed_conv1x161_shift_x(BITSELECT,2360)@1
    leftShiftStage2Idx1Rng1_uid2361_i_unnamed_conv1x161_shift_x_in <= leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid2361_i_unnamed_conv1x161_shift_x_b <= leftShiftStage2Idx1Rng1_uid2361_i_unnamed_conv1x161_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid2362_i_unnamed_conv1x161_shift_x(BITJOIN,2361)@1
    leftShiftStage2Idx1_uid2362_i_unnamed_conv1x161_shift_x_q <= leftShiftStage2Idx1Rng1_uid2361_i_unnamed_conv1x161_shift_x_b & GND_q;

    -- leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x(MUX,2363)@1
    leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x_s <= VCC_q;
    leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x_combproc: PROCESS (leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x_s, leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q, leftShiftStage2Idx1_uid2362_i_unnamed_conv1x161_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x_q <= leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x_q <= leftShiftStage2Idx1_uid2362_i_unnamed_conv1x161_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x160_vt_select_31(BITSELECT,817)@1
    i_unnamed_conv1x160_vt_select_31_b <= leftShiftStage2_uid2364_i_unnamed_conv1x161_shift_x_q(31 downto 25);

    -- redist11_i_unnamed_conv1x160_vt_select_31_b_3(DELAY,2692)
    redist11_i_unnamed_conv1x160_vt_select_31_b_3 : dspba_delay
    GENERIC MAP ( width => 7, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x160_vt_select_31_b, xout => redist11_i_unnamed_conv1x160_vt_select_31_b_3_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x160_vt_join(BITJOIN,816)@4
    i_unnamed_conv1x160_vt_join_q <= redist11_i_unnamed_conv1x160_vt_select_31_b_3_q & i_unnamed_conv1x1218_vt_const_24_q;

    -- xMSB_uid2367_i_unnamed_conv1x163_shift_x(BITSELECT,2366)@4
    xMSB_uid2367_i_unnamed_conv1x163_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x160_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2389_i_unnamed_conv1x163_shift_x(BITSELECT,2388)@4
    rightShiftStage4Idx1Rng1_uid2389_i_unnamed_conv1x163_shift_x_b <= rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2390_i_unnamed_conv1x163_shift_x(BITJOIN,2389)@4
    rightShiftStage4Idx1_uid2390_i_unnamed_conv1x163_shift_x_q <= xMSB_uid2367_i_unnamed_conv1x163_shift_x_b & rightShiftStage4Idx1Rng1_uid2389_i_unnamed_conv1x163_shift_x_b;

    -- seMsb_to2_uid2384(BITSELECT,2383)@4
    seMsb_to2_uid2384_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2367_i_unnamed_conv1x163_shift_x_b(0)) & xMSB_uid2367_i_unnamed_conv1x163_shift_x_b));
    seMsb_to2_uid2384_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2384_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2385_i_unnamed_conv1x163_shift_x(BITSELECT,2384)@4
    rightShiftStage3Idx1Rng2_uid2385_i_unnamed_conv1x163_shift_x_b <= rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2386_i_unnamed_conv1x163_shift_x(BITJOIN,2385)@4
    rightShiftStage3Idx1_uid2386_i_unnamed_conv1x163_shift_x_q <= seMsb_to2_uid2384_b & rightShiftStage3Idx1Rng2_uid2385_i_unnamed_conv1x163_shift_x_b;

    -- seMsb_to4_uid2379(BITSELECT,2378)@4
    seMsb_to4_uid2379_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2367_i_unnamed_conv1x163_shift_x_b(0)) & xMSB_uid2367_i_unnamed_conv1x163_shift_x_b));
    seMsb_to4_uid2379_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2379_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2380_i_unnamed_conv1x163_shift_x(BITSELECT,2379)@4
    rightShiftStage2Idx1Rng4_uid2380_i_unnamed_conv1x163_shift_x_b <= rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2381_i_unnamed_conv1x163_shift_x(BITJOIN,2380)@4
    rightShiftStage2Idx1_uid2381_i_unnamed_conv1x163_shift_x_q <= seMsb_to4_uid2379_b & rightShiftStage2Idx1Rng4_uid2380_i_unnamed_conv1x163_shift_x_b;

    -- seMsb_to8_uid2374(BITSELECT,2373)@4
    seMsb_to8_uid2374_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2367_i_unnamed_conv1x163_shift_x_b(0)) & xMSB_uid2367_i_unnamed_conv1x163_shift_x_b));
    seMsb_to8_uid2374_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2374_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2375_i_unnamed_conv1x163_shift_x(BITSELECT,2374)@4
    rightShiftStage1Idx1Rng8_uid2375_i_unnamed_conv1x163_shift_x_b <= rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2376_i_unnamed_conv1x163_shift_x(BITJOIN,2375)@4
    rightShiftStage1Idx1_uid2376_i_unnamed_conv1x163_shift_x_q <= seMsb_to8_uid2374_b & rightShiftStage1Idx1Rng8_uid2375_i_unnamed_conv1x163_shift_x_b;

    -- seMsb_to16_uid2369(BITSELECT,2368)@4
    seMsb_to16_uid2369_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2367_i_unnamed_conv1x163_shift_x_b(0)) & xMSB_uid2367_i_unnamed_conv1x163_shift_x_b));
    seMsb_to16_uid2369_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2369_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2370_i_unnamed_conv1x163_shift_x(BITSELECT,2369)@4
    rightShiftStage0Idx1Rng16_uid2370_i_unnamed_conv1x163_shift_x_b <= i_unnamed_conv1x160_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2371_i_unnamed_conv1x163_shift_x(BITJOIN,2370)@4
    rightShiftStage0Idx1_uid2371_i_unnamed_conv1x163_shift_x_q <= seMsb_to16_uid2369_b & rightShiftStage0Idx1Rng16_uid2370_i_unnamed_conv1x163_shift_x_b;

    -- rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x(MUX,2372)@4
    rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_s <= VCC_q;
    rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_combproc: PROCESS (rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_s, i_unnamed_conv1x160_vt_join_q, rightShiftStage0Idx1_uid2371_i_unnamed_conv1x163_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_q <= i_unnamed_conv1x160_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_q <= rightShiftStage0Idx1_uid2371_i_unnamed_conv1x163_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x(MUX,2377)@4
    rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_s <= VCC_q;
    rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_combproc: PROCESS (rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_s, rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_q, rightShiftStage1Idx1_uid2376_i_unnamed_conv1x163_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_q <= rightShiftStage0_uid2373_i_unnamed_conv1x163_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_q <= rightShiftStage1Idx1_uid2376_i_unnamed_conv1x163_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x(MUX,2382)@4
    rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_s <= VCC_q;
    rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_combproc: PROCESS (rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_s, rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_q, rightShiftStage2Idx1_uid2381_i_unnamed_conv1x163_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_q <= rightShiftStage1_uid2378_i_unnamed_conv1x163_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_q <= rightShiftStage2Idx1_uid2381_i_unnamed_conv1x163_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x(MUX,2387)@4
    rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_s <= VCC_q;
    rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_combproc: PROCESS (rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_s, rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_q, rightShiftStage3Idx1_uid2386_i_unnamed_conv1x163_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_q <= rightShiftStage2_uid2383_i_unnamed_conv1x163_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_q <= rightShiftStage3Idx1_uid2386_i_unnamed_conv1x163_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x(MUX,2391)@4
    rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x_s <= VCC_q;
    rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x_combproc: PROCESS (rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x_s, rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_q, rightShiftStage4Idx1_uid2390_i_unnamed_conv1x163_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x_q <= rightShiftStage3_uid2388_i_unnamed_conv1x163_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x_q <= rightShiftStage4Idx1_uid2390_i_unnamed_conv1x163_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked11_conv1x1(LOGICAL,597)@4
    i_mul16_masked11_conv1x1_q <= rightShiftStage4_uid2392_i_unnamed_conv1x163_shift_x_q and i_syncbuf_stride_sync_buffer119_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x(MUX,2400)@4
    leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_s <= VCC_q;
    leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_combproc: PROCESS (leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_s, i_mul16_masked11_conv1x1_q, leftShiftStage0Idx1_uid2399_i_unnamed_conv1x167_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_q <= i_mul16_masked11_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_q <= leftShiftStage0Idx1_uid2399_i_unnamed_conv1x167_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x(MUX,2405)@4
    leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x_s <= VCC_q;
    leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x_combproc: PROCESS (leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x_s, leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_q, leftShiftStage1Idx1_uid2404_i_unnamed_conv1x167_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x_q <= leftShiftStage0_uid2401_i_unnamed_conv1x167_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x_q <= leftShiftStage1Idx1_uid2404_i_unnamed_conv1x167_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x166_vt_select_31(BITSELECT,820)@4
    i_unnamed_conv1x166_vt_select_31_b <= leftShiftStage1_uid2406_i_unnamed_conv1x167_shift_x_q(31 downto 6);

    -- redist10_i_unnamed_conv1x166_vt_select_31_b_1(DELAY,2691)
    redist10_i_unnamed_conv1x166_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x166_vt_select_31_b, xout => redist10_i_unnamed_conv1x166_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x166_vt_join(BITJOIN,819)@5
    i_unnamed_conv1x166_vt_join_q <= redist10_i_unnamed_conv1x166_vt_select_31_b_1_q & i_unnamed_conv1x1212_vt_const_5_q;

    -- leftShiftStage1Idx1Rng1_uid2342_i_unnamed_conv1x159_shift_x(BITSELECT,2341)@3
    leftShiftStage1Idx1Rng1_uid2342_i_unnamed_conv1x159_shift_x_in <= leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid2342_i_unnamed_conv1x159_shift_x_b <= leftShiftStage1Idx1Rng1_uid2342_i_unnamed_conv1x159_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid2343_i_unnamed_conv1x159_shift_x(BITJOIN,2342)@3
    leftShiftStage1Idx1_uid2343_i_unnamed_conv1x159_shift_x_q <= leftShiftStage1Idx1Rng1_uid2342_i_unnamed_conv1x159_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng4_uid2337_i_unnamed_conv1x159_shift_x(BITSELECT,2336)@3
    leftShiftStage0Idx1Rng4_uid2337_i_unnamed_conv1x159_shift_x_in <= i_mul16_masked9_conv1x1_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid2337_i_unnamed_conv1x159_shift_x_b <= leftShiftStage0Idx1Rng4_uid2337_i_unnamed_conv1x159_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid2338_i_unnamed_conv1x159_shift_x(BITJOIN,2337)@3
    leftShiftStage0Idx1_uid2338_i_unnamed_conv1x159_shift_x_q <= leftShiftStage0Idx1Rng4_uid2337_i_unnamed_conv1x159_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- i_syncbuf_stride_sync_buffer120_conv1x1(BLACKBOX,657)@0
    -- in in_i_dependence@3
    -- in in_valid_in@3
    -- out out_buffer_out@3
    -- out out_valid_out@3
    thei_syncbuf_stride_sync_buffer120_conv1x1 : i_syncbuf_stride_sync_buffer120_conv1x156
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist54_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer120_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng2_uid2239_i_unnamed_conv1x145_shift_x(BITSELECT,2238)@1
    leftShiftStage2Idx1Rng2_uid2239_i_unnamed_conv1x145_shift_x_in <= leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid2239_i_unnamed_conv1x145_shift_x_b <= leftShiftStage2Idx1Rng2_uid2239_i_unnamed_conv1x145_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid2240_i_unnamed_conv1x145_shift_x(BITJOIN,2239)@1
    leftShiftStage2Idx1_uid2240_i_unnamed_conv1x145_shift_x_q <= leftShiftStage2Idx1Rng2_uid2239_i_unnamed_conv1x145_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x(MUX,2241)@1
    leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_s <= VCC_q;
    leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_combproc: PROCESS (leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_s, leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q, leftShiftStage2Idx1_uid2240_i_unnamed_conv1x145_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_q <= leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_q <= leftShiftStage2Idx1_uid2240_i_unnamed_conv1x145_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x152_vt_select_31(BITSELECT,811)@1
    i_unnamed_conv1x152_vt_select_31_b <= leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_q(31 downto 26);

    -- redist13_i_unnamed_conv1x152_vt_select_31_b_2(DELAY,2694)
    redist13_i_unnamed_conv1x152_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 6, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x152_vt_select_31_b, xout => redist13_i_unnamed_conv1x152_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x152_vt_join(BITJOIN,810)@3
    i_unnamed_conv1x152_vt_join_q <= redist13_i_unnamed_conv1x152_vt_select_31_b_2_q & i_unnamed_conv1x1226_vt_const_25_q;

    -- xMSB_uid2306_i_unnamed_conv1x155_shift_x(BITSELECT,2305)@3
    xMSB_uid2306_i_unnamed_conv1x155_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x152_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2328_i_unnamed_conv1x155_shift_x(BITSELECT,2327)@3
    rightShiftStage4Idx1Rng1_uid2328_i_unnamed_conv1x155_shift_x_b <= rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2329_i_unnamed_conv1x155_shift_x(BITJOIN,2328)@3
    rightShiftStage4Idx1_uid2329_i_unnamed_conv1x155_shift_x_q <= xMSB_uid2306_i_unnamed_conv1x155_shift_x_b & rightShiftStage4Idx1Rng1_uid2328_i_unnamed_conv1x155_shift_x_b;

    -- seMsb_to2_uid2323(BITSELECT,2322)@3
    seMsb_to2_uid2323_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2306_i_unnamed_conv1x155_shift_x_b(0)) & xMSB_uid2306_i_unnamed_conv1x155_shift_x_b));
    seMsb_to2_uid2323_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2323_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2324_i_unnamed_conv1x155_shift_x(BITSELECT,2323)@3
    rightShiftStage3Idx1Rng2_uid2324_i_unnamed_conv1x155_shift_x_b <= rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2325_i_unnamed_conv1x155_shift_x(BITJOIN,2324)@3
    rightShiftStage3Idx1_uid2325_i_unnamed_conv1x155_shift_x_q <= seMsb_to2_uid2323_b & rightShiftStage3Idx1Rng2_uid2324_i_unnamed_conv1x155_shift_x_b;

    -- seMsb_to4_uid2318(BITSELECT,2317)@3
    seMsb_to4_uid2318_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2306_i_unnamed_conv1x155_shift_x_b(0)) & xMSB_uid2306_i_unnamed_conv1x155_shift_x_b));
    seMsb_to4_uid2318_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2318_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2319_i_unnamed_conv1x155_shift_x(BITSELECT,2318)@3
    rightShiftStage2Idx1Rng4_uid2319_i_unnamed_conv1x155_shift_x_b <= rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2320_i_unnamed_conv1x155_shift_x(BITJOIN,2319)@3
    rightShiftStage2Idx1_uid2320_i_unnamed_conv1x155_shift_x_q <= seMsb_to4_uid2318_b & rightShiftStage2Idx1Rng4_uid2319_i_unnamed_conv1x155_shift_x_b;

    -- seMsb_to8_uid2313(BITSELECT,2312)@3
    seMsb_to8_uid2313_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2306_i_unnamed_conv1x155_shift_x_b(0)) & xMSB_uid2306_i_unnamed_conv1x155_shift_x_b));
    seMsb_to8_uid2313_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2313_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2314_i_unnamed_conv1x155_shift_x(BITSELECT,2313)@3
    rightShiftStage1Idx1Rng8_uid2314_i_unnamed_conv1x155_shift_x_b <= rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2315_i_unnamed_conv1x155_shift_x(BITJOIN,2314)@3
    rightShiftStage1Idx1_uid2315_i_unnamed_conv1x155_shift_x_q <= seMsb_to8_uid2313_b & rightShiftStage1Idx1Rng8_uid2314_i_unnamed_conv1x155_shift_x_b;

    -- seMsb_to16_uid2308(BITSELECT,2307)@3
    seMsb_to16_uid2308_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2306_i_unnamed_conv1x155_shift_x_b(0)) & xMSB_uid2306_i_unnamed_conv1x155_shift_x_b));
    seMsb_to16_uid2308_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2308_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2309_i_unnamed_conv1x155_shift_x(BITSELECT,2308)@3
    rightShiftStage0Idx1Rng16_uid2309_i_unnamed_conv1x155_shift_x_b <= i_unnamed_conv1x152_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2310_i_unnamed_conv1x155_shift_x(BITJOIN,2309)@3
    rightShiftStage0Idx1_uid2310_i_unnamed_conv1x155_shift_x_q <= seMsb_to16_uid2308_b & rightShiftStage0Idx1Rng16_uid2309_i_unnamed_conv1x155_shift_x_b;

    -- rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x(MUX,2311)@3
    rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_s <= VCC_q;
    rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_combproc: PROCESS (rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_s, i_unnamed_conv1x152_vt_join_q, rightShiftStage0Idx1_uid2310_i_unnamed_conv1x155_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_q <= i_unnamed_conv1x152_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_q <= rightShiftStage0Idx1_uid2310_i_unnamed_conv1x155_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x(MUX,2316)@3
    rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_s <= VCC_q;
    rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_combproc: PROCESS (rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_s, rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_q, rightShiftStage1Idx1_uid2315_i_unnamed_conv1x155_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_q <= rightShiftStage0_uid2312_i_unnamed_conv1x155_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_q <= rightShiftStage1Idx1_uid2315_i_unnamed_conv1x155_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x(MUX,2321)@3
    rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_s <= VCC_q;
    rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_combproc: PROCESS (rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_s, rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_q, rightShiftStage2Idx1_uid2320_i_unnamed_conv1x155_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_q <= rightShiftStage1_uid2317_i_unnamed_conv1x155_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_q <= rightShiftStage2Idx1_uid2320_i_unnamed_conv1x155_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x(MUX,2326)@3
    rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_s <= VCC_q;
    rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_combproc: PROCESS (rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_s, rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_q, rightShiftStage3Idx1_uid2325_i_unnamed_conv1x155_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_q <= rightShiftStage2_uid2322_i_unnamed_conv1x155_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_q <= rightShiftStage3Idx1_uid2325_i_unnamed_conv1x155_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x(MUX,2330)@3
    rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x_s <= VCC_q;
    rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x_combproc: PROCESS (rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x_s, rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_q, rightShiftStage4Idx1_uid2329_i_unnamed_conv1x155_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x_q <= rightShiftStage3_uid2327_i_unnamed_conv1x155_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x_q <= rightShiftStage4Idx1_uid2329_i_unnamed_conv1x155_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked9_conv1x1(LOGICAL,628)@3
    i_mul16_masked9_conv1x1_q <= rightShiftStage4_uid2331_i_unnamed_conv1x155_shift_x_q and i_syncbuf_stride_sync_buffer120_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x(MUX,2339)@3
    leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_s <= VCC_q;
    leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_combproc: PROCESS (leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_s, i_mul16_masked9_conv1x1_q, leftShiftStage0Idx1_uid2338_i_unnamed_conv1x159_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_q <= i_mul16_masked9_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_q <= leftShiftStage0Idx1_uid2338_i_unnamed_conv1x159_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x(MUX,2344)@3
    leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x_s <= VCC_q;
    leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x_combproc: PROCESS (leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x_s, leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_q, leftShiftStage1Idx1_uid2343_i_unnamed_conv1x159_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x_q <= leftShiftStage0_uid2340_i_unnamed_conv1x159_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x_q <= leftShiftStage1Idx1_uid2343_i_unnamed_conv1x159_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x158_vt_select_31(BITSELECT,814)@3
    i_unnamed_conv1x158_vt_select_31_b <= leftShiftStage1_uid2345_i_unnamed_conv1x159_shift_x_q(31 downto 5);

    -- redist12_i_unnamed_conv1x158_vt_select_31_b_1(DELAY,2693)
    redist12_i_unnamed_conv1x158_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x158_vt_select_31_b, xout => redist12_i_unnamed_conv1x158_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x158_vt_join(BITJOIN,813)@4
    i_unnamed_conv1x158_vt_join_q <= redist12_i_unnamed_conv1x158_vt_select_31_b_1_q & i_unnamed_conv1x1220_vt_const_4_q;

    -- leftShiftStage0Idx1Rng4_uid2281_i_unnamed_conv1x151_shift_x(BITSELECT,2280)@2
    leftShiftStage0Idx1Rng4_uid2281_i_unnamed_conv1x151_shift_x_in <= i_mul16_masked7_conv1x1_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid2281_i_unnamed_conv1x151_shift_x_b <= leftShiftStage0Idx1Rng4_uid2281_i_unnamed_conv1x151_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid2282_i_unnamed_conv1x151_shift_x(BITJOIN,2281)@2
    leftShiftStage0Idx1_uid2282_i_unnamed_conv1x151_shift_x_q <= leftShiftStage0Idx1Rng4_uid2281_i_unnamed_conv1x151_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- i_syncbuf_stride_sync_buffer121_conv1x1(BLACKBOX,658)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_stride_sync_buffer121_conv1x1 : i_syncbuf_stride_sync_buffer121_conv1x148
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist53_sync_in_aunroll_x_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer121_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage3Idx1Rng1_uid2244_i_unnamed_conv1x145_shift_x(BITSELECT,2243)@1
    leftShiftStage3Idx1Rng1_uid2244_i_unnamed_conv1x145_shift_x_in <= leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid2244_i_unnamed_conv1x145_shift_x_b <= leftShiftStage3Idx1Rng1_uid2244_i_unnamed_conv1x145_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid2245_i_unnamed_conv1x145_shift_x(BITJOIN,2244)@1
    leftShiftStage3Idx1_uid2245_i_unnamed_conv1x145_shift_x_q <= leftShiftStage3Idx1Rng1_uid2244_i_unnamed_conv1x145_shift_x_b & GND_q;

    -- leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x(MUX,2246)@1
    leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x_s <= VCC_q;
    leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x_combproc: PROCESS (leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x_s, leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_q, leftShiftStage3Idx1_uid2245_i_unnamed_conv1x145_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x_q <= leftShiftStage2_uid2242_i_unnamed_conv1x145_shift_x_q;
            WHEN "1" => leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x_q <= leftShiftStage3Idx1_uid2245_i_unnamed_conv1x145_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x144_vt_select_31(BITSELECT,805)@1
    i_unnamed_conv1x144_vt_select_31_b <= leftShiftStage3_uid2247_i_unnamed_conv1x145_shift_x_q(31 downto 27);

    -- redist15_i_unnamed_conv1x144_vt_select_31_b_1(DELAY,2696)
    redist15_i_unnamed_conv1x144_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x144_vt_select_31_b, xout => redist15_i_unnamed_conv1x144_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x144_vt_join(BITJOIN,804)@2
    i_unnamed_conv1x144_vt_join_q <= redist15_i_unnamed_conv1x144_vt_select_31_b_1_q & i_unnamed_conv1x1234_vt_const_26_q;

    -- xMSB_uid2250_i_unnamed_conv1x147_shift_x(BITSELECT,2249)@2
    xMSB_uid2250_i_unnamed_conv1x147_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x144_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2272_i_unnamed_conv1x147_shift_x(BITSELECT,2271)@2
    rightShiftStage4Idx1Rng1_uid2272_i_unnamed_conv1x147_shift_x_b <= rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2273_i_unnamed_conv1x147_shift_x(BITJOIN,2272)@2
    rightShiftStage4Idx1_uid2273_i_unnamed_conv1x147_shift_x_q <= xMSB_uid2250_i_unnamed_conv1x147_shift_x_b & rightShiftStage4Idx1Rng1_uid2272_i_unnamed_conv1x147_shift_x_b;

    -- seMsb_to2_uid2267(BITSELECT,2266)@2
    seMsb_to2_uid2267_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2250_i_unnamed_conv1x147_shift_x_b(0)) & xMSB_uid2250_i_unnamed_conv1x147_shift_x_b));
    seMsb_to2_uid2267_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2267_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2268_i_unnamed_conv1x147_shift_x(BITSELECT,2267)@2
    rightShiftStage3Idx1Rng2_uid2268_i_unnamed_conv1x147_shift_x_b <= rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2269_i_unnamed_conv1x147_shift_x(BITJOIN,2268)@2
    rightShiftStage3Idx1_uid2269_i_unnamed_conv1x147_shift_x_q <= seMsb_to2_uid2267_b & rightShiftStage3Idx1Rng2_uid2268_i_unnamed_conv1x147_shift_x_b;

    -- seMsb_to4_uid2262(BITSELECT,2261)@2
    seMsb_to4_uid2262_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2250_i_unnamed_conv1x147_shift_x_b(0)) & xMSB_uid2250_i_unnamed_conv1x147_shift_x_b));
    seMsb_to4_uid2262_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2262_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2263_i_unnamed_conv1x147_shift_x(BITSELECT,2262)@2
    rightShiftStage2Idx1Rng4_uid2263_i_unnamed_conv1x147_shift_x_b <= rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2264_i_unnamed_conv1x147_shift_x(BITJOIN,2263)@2
    rightShiftStage2Idx1_uid2264_i_unnamed_conv1x147_shift_x_q <= seMsb_to4_uid2262_b & rightShiftStage2Idx1Rng4_uid2263_i_unnamed_conv1x147_shift_x_b;

    -- seMsb_to8_uid2257(BITSELECT,2256)@2
    seMsb_to8_uid2257_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2250_i_unnamed_conv1x147_shift_x_b(0)) & xMSB_uid2250_i_unnamed_conv1x147_shift_x_b));
    seMsb_to8_uid2257_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2257_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2258_i_unnamed_conv1x147_shift_x(BITSELECT,2257)@2
    rightShiftStage1Idx1Rng8_uid2258_i_unnamed_conv1x147_shift_x_b <= rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2259_i_unnamed_conv1x147_shift_x(BITJOIN,2258)@2
    rightShiftStage1Idx1_uid2259_i_unnamed_conv1x147_shift_x_q <= seMsb_to8_uid2257_b & rightShiftStage1Idx1Rng8_uid2258_i_unnamed_conv1x147_shift_x_b;

    -- seMsb_to16_uid2252(BITSELECT,2251)@2
    seMsb_to16_uid2252_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2250_i_unnamed_conv1x147_shift_x_b(0)) & xMSB_uid2250_i_unnamed_conv1x147_shift_x_b));
    seMsb_to16_uid2252_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2252_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2253_i_unnamed_conv1x147_shift_x(BITSELECT,2252)@2
    rightShiftStage0Idx1Rng16_uid2253_i_unnamed_conv1x147_shift_x_b <= i_unnamed_conv1x144_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2254_i_unnamed_conv1x147_shift_x(BITJOIN,2253)@2
    rightShiftStage0Idx1_uid2254_i_unnamed_conv1x147_shift_x_q <= seMsb_to16_uid2252_b & rightShiftStage0Idx1Rng16_uid2253_i_unnamed_conv1x147_shift_x_b;

    -- rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x(MUX,2255)@2
    rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_s <= VCC_q;
    rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_combproc: PROCESS (rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_s, i_unnamed_conv1x144_vt_join_q, rightShiftStage0Idx1_uid2254_i_unnamed_conv1x147_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_q <= i_unnamed_conv1x144_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_q <= rightShiftStage0Idx1_uid2254_i_unnamed_conv1x147_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x(MUX,2260)@2
    rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_s <= VCC_q;
    rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_combproc: PROCESS (rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_s, rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_q, rightShiftStage1Idx1_uid2259_i_unnamed_conv1x147_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_q <= rightShiftStage0_uid2256_i_unnamed_conv1x147_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_q <= rightShiftStage1Idx1_uid2259_i_unnamed_conv1x147_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x(MUX,2265)@2
    rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_s <= VCC_q;
    rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_combproc: PROCESS (rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_s, rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_q, rightShiftStage2Idx1_uid2264_i_unnamed_conv1x147_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_q <= rightShiftStage1_uid2261_i_unnamed_conv1x147_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_q <= rightShiftStage2Idx1_uid2264_i_unnamed_conv1x147_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x(MUX,2270)@2
    rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_s <= VCC_q;
    rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_combproc: PROCESS (rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_s, rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_q, rightShiftStage3Idx1_uid2269_i_unnamed_conv1x147_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_q <= rightShiftStage2_uid2266_i_unnamed_conv1x147_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_q <= rightShiftStage3Idx1_uid2269_i_unnamed_conv1x147_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x(MUX,2274)@2
    rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x_s <= VCC_q;
    rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x_combproc: PROCESS (rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x_s, rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_q, rightShiftStage4Idx1_uid2273_i_unnamed_conv1x147_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x_q <= rightShiftStage3_uid2271_i_unnamed_conv1x147_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x_q <= rightShiftStage4Idx1_uid2273_i_unnamed_conv1x147_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked7_conv1x1(LOGICAL,627)@2
    i_mul16_masked7_conv1x1_q <= rightShiftStage4_uid2275_i_unnamed_conv1x147_shift_x_q and i_syncbuf_stride_sync_buffer121_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x(MUX,2283)@2
    leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x_s <= VCC_q;
    leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x_combproc: PROCESS (leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x_s, i_mul16_masked7_conv1x1_q, leftShiftStage0Idx1_uid2282_i_unnamed_conv1x151_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x_q <= i_mul16_masked7_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x_q <= leftShiftStage0Idx1_uid2282_i_unnamed_conv1x151_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x150_vt_select_31(BITSELECT,808)@2
    i_unnamed_conv1x150_vt_select_31_b <= leftShiftStage0_uid2284_i_unnamed_conv1x151_shift_x_q(31 downto 4);

    -- redist14_i_unnamed_conv1x150_vt_select_31_b_1(DELAY,2695)
    redist14_i_unnamed_conv1x150_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x150_vt_select_31_b, xout => redist14_i_unnamed_conv1x150_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x150_vt_join(BITJOIN,807)@3
    i_unnamed_conv1x150_vt_join_q <= redist14_i_unnamed_conv1x150_vt_select_31_b_1_q & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage1Idx1Rng1_uid2220_i_unnamed_conv1x143_shift_x(BITSELECT,2219)@1
    leftShiftStage1Idx1Rng1_uid2220_i_unnamed_conv1x143_shift_x_in <= leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid2220_i_unnamed_conv1x143_shift_x_b <= leftShiftStage1Idx1Rng1_uid2220_i_unnamed_conv1x143_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid2221_i_unnamed_conv1x143_shift_x(BITJOIN,2220)@1
    leftShiftStage1Idx1_uid2221_i_unnamed_conv1x143_shift_x_q <= leftShiftStage1Idx1Rng1_uid2220_i_unnamed_conv1x143_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng2_uid2215_i_unnamed_conv1x143_shift_x(BITSELECT,2214)@1
    leftShiftStage0Idx1Rng2_uid2215_i_unnamed_conv1x143_shift_x_in <= i_mul16_masked5_conv1x1_q(29 downto 0);
    leftShiftStage0Idx1Rng2_uid2215_i_unnamed_conv1x143_shift_x_b <= leftShiftStage0Idx1Rng2_uid2215_i_unnamed_conv1x143_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid2216_i_unnamed_conv1x143_shift_x(BITJOIN,2215)@1
    leftShiftStage0Idx1_uid2216_i_unnamed_conv1x143_shift_x_q <= leftShiftStage0Idx1Rng2_uid2215_i_unnamed_conv1x143_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- i_syncbuf_stride_sync_buffer122_conv1x1(BLACKBOX,659)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_stride_sync_buffer122_conv1x1 : i_syncbuf_stride_sync_buffer122_conv1x140
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_stride_sync_buffer122_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx1Rng4_uid2117_i_unnamed_conv1x129_shift_x(BITSELECT,2116)@1
    leftShiftStage2Idx1Rng4_uid2117_i_unnamed_conv1x129_shift_x_in <= leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid2117_i_unnamed_conv1x129_shift_x_b <= leftShiftStage2Idx1Rng4_uid2117_i_unnamed_conv1x129_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid2118_i_unnamed_conv1x129_shift_x(BITJOIN,2117)@1
    leftShiftStage2Idx1_uid2118_i_unnamed_conv1x129_shift_x_q <= leftShiftStage2Idx1Rng4_uid2117_i_unnamed_conv1x129_shift_x_b & i_unnamed_conv1x1228_vt_const_3_q;

    -- leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x(MUX,2119)@1
    leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_s <= VCC_q;
    leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_combproc: PROCESS (leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_s, leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q, leftShiftStage2Idx1_uid2118_i_unnamed_conv1x129_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_q <= leftShiftStage1_uid2115_i_unnamed_conv1x129_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_q <= leftShiftStage2Idx1_uid2118_i_unnamed_conv1x129_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x136_vt_select_31(BITSELECT,799)@1
    i_unnamed_conv1x136_vt_select_31_b <= leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_q(31 downto 28);

    -- i_unnamed_conv1x136_vt_join(BITJOIN,798)@1
    i_unnamed_conv1x136_vt_join_q <= i_unnamed_conv1x136_vt_select_31_b & i_unnamed_conv1x1242_vt_const_27_q;

    -- xMSB_uid2184_i_unnamed_conv1x139_shift_x(BITSELECT,2183)@1
    xMSB_uid2184_i_unnamed_conv1x139_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x136_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2206_i_unnamed_conv1x139_shift_x(BITSELECT,2205)@1
    rightShiftStage4Idx1Rng1_uid2206_i_unnamed_conv1x139_shift_x_b <= rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2207_i_unnamed_conv1x139_shift_x(BITJOIN,2206)@1
    rightShiftStage4Idx1_uid2207_i_unnamed_conv1x139_shift_x_q <= xMSB_uid2184_i_unnamed_conv1x139_shift_x_b & rightShiftStage4Idx1Rng1_uid2206_i_unnamed_conv1x139_shift_x_b;

    -- seMsb_to2_uid2201(BITSELECT,2200)@1
    seMsb_to2_uid2201_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2184_i_unnamed_conv1x139_shift_x_b(0)) & xMSB_uid2184_i_unnamed_conv1x139_shift_x_b));
    seMsb_to2_uid2201_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2201_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2202_i_unnamed_conv1x139_shift_x(BITSELECT,2201)@1
    rightShiftStage3Idx1Rng2_uid2202_i_unnamed_conv1x139_shift_x_b <= rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2203_i_unnamed_conv1x139_shift_x(BITJOIN,2202)@1
    rightShiftStage3Idx1_uid2203_i_unnamed_conv1x139_shift_x_q <= seMsb_to2_uid2201_b & rightShiftStage3Idx1Rng2_uid2202_i_unnamed_conv1x139_shift_x_b;

    -- seMsb_to4_uid2196(BITSELECT,2195)@1
    seMsb_to4_uid2196_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2184_i_unnamed_conv1x139_shift_x_b(0)) & xMSB_uid2184_i_unnamed_conv1x139_shift_x_b));
    seMsb_to4_uid2196_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2196_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2197_i_unnamed_conv1x139_shift_x(BITSELECT,2196)@1
    rightShiftStage2Idx1Rng4_uid2197_i_unnamed_conv1x139_shift_x_b <= rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2198_i_unnamed_conv1x139_shift_x(BITJOIN,2197)@1
    rightShiftStage2Idx1_uid2198_i_unnamed_conv1x139_shift_x_q <= seMsb_to4_uid2196_b & rightShiftStage2Idx1Rng4_uid2197_i_unnamed_conv1x139_shift_x_b;

    -- seMsb_to8_uid2191(BITSELECT,2190)@1
    seMsb_to8_uid2191_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2184_i_unnamed_conv1x139_shift_x_b(0)) & xMSB_uid2184_i_unnamed_conv1x139_shift_x_b));
    seMsb_to8_uid2191_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2191_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2192_i_unnamed_conv1x139_shift_x(BITSELECT,2191)@1
    rightShiftStage1Idx1Rng8_uid2192_i_unnamed_conv1x139_shift_x_b <= rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2193_i_unnamed_conv1x139_shift_x(BITJOIN,2192)@1
    rightShiftStage1Idx1_uid2193_i_unnamed_conv1x139_shift_x_q <= seMsb_to8_uid2191_b & rightShiftStage1Idx1Rng8_uid2192_i_unnamed_conv1x139_shift_x_b;

    -- seMsb_to16_uid2186(BITSELECT,2185)@1
    seMsb_to16_uid2186_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2184_i_unnamed_conv1x139_shift_x_b(0)) & xMSB_uid2184_i_unnamed_conv1x139_shift_x_b));
    seMsb_to16_uid2186_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2186_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2187_i_unnamed_conv1x139_shift_x(BITSELECT,2186)@1
    rightShiftStage0Idx1Rng16_uid2187_i_unnamed_conv1x139_shift_x_b <= i_unnamed_conv1x136_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2188_i_unnamed_conv1x139_shift_x(BITJOIN,2187)@1
    rightShiftStage0Idx1_uid2188_i_unnamed_conv1x139_shift_x_q <= seMsb_to16_uid2186_b & rightShiftStage0Idx1Rng16_uid2187_i_unnamed_conv1x139_shift_x_b;

    -- rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x(MUX,2189)@1
    rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_s <= VCC_q;
    rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_combproc: PROCESS (rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_s, i_unnamed_conv1x136_vt_join_q, rightShiftStage0Idx1_uid2188_i_unnamed_conv1x139_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_q <= i_unnamed_conv1x136_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_q <= rightShiftStage0Idx1_uid2188_i_unnamed_conv1x139_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x(MUX,2194)@1
    rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_s <= VCC_q;
    rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_combproc: PROCESS (rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_s, rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_q, rightShiftStage1Idx1_uid2193_i_unnamed_conv1x139_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_q <= rightShiftStage0_uid2190_i_unnamed_conv1x139_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_q <= rightShiftStage1Idx1_uid2193_i_unnamed_conv1x139_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x(MUX,2199)@1
    rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_s <= VCC_q;
    rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_combproc: PROCESS (rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_s, rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_q, rightShiftStage2Idx1_uid2198_i_unnamed_conv1x139_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_q <= rightShiftStage1_uid2195_i_unnamed_conv1x139_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_q <= rightShiftStage2Idx1_uid2198_i_unnamed_conv1x139_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x(MUX,2204)@1
    rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_s <= VCC_q;
    rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_combproc: PROCESS (rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_s, rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_q, rightShiftStage3Idx1_uid2203_i_unnamed_conv1x139_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_q <= rightShiftStage2_uid2200_i_unnamed_conv1x139_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_q <= rightShiftStage3Idx1_uid2203_i_unnamed_conv1x139_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x(MUX,2208)@1
    rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x_s <= VCC_q;
    rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x_combproc: PROCESS (rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x_s, rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_q, rightShiftStage4Idx1_uid2207_i_unnamed_conv1x139_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x_q <= rightShiftStage3_uid2205_i_unnamed_conv1x139_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x_q <= rightShiftStage4Idx1_uid2207_i_unnamed_conv1x139_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked5_conv1x1(LOGICAL,623)@1
    i_mul16_masked5_conv1x1_q <= rightShiftStage4_uid2209_i_unnamed_conv1x139_shift_x_q and i_syncbuf_stride_sync_buffer122_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x(MUX,2217)@1
    leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_s <= VCC_q;
    leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_combproc: PROCESS (leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_s, i_mul16_masked5_conv1x1_q, leftShiftStage0Idx1_uid2216_i_unnamed_conv1x143_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_q <= i_mul16_masked5_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_q <= leftShiftStage0Idx1_uid2216_i_unnamed_conv1x143_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x(MUX,2222)@1
    leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x_s <= VCC_q;
    leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x_combproc: PROCESS (leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x_s, leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_q, leftShiftStage1Idx1_uid2221_i_unnamed_conv1x143_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x_q <= leftShiftStage0_uid2218_i_unnamed_conv1x143_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x_q <= leftShiftStage1Idx1_uid2221_i_unnamed_conv1x143_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x142_vt_select_31(BITSELECT,802)@1
    i_unnamed_conv1x142_vt_select_31_b <= leftShiftStage1_uid2223_i_unnamed_conv1x143_shift_x_q(31 downto 3);

    -- redist16_i_unnamed_conv1x142_vt_select_31_b_1(DELAY,2697)
    redist16_i_unnamed_conv1x142_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x142_vt_select_31_b, xout => redist16_i_unnamed_conv1x142_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x142_vt_join(BITJOIN,801)@2
    i_unnamed_conv1x142_vt_join_q <= redist16_i_unnamed_conv1x142_vt_select_31_b_1_q & i_unnamed_conv1x1236_vt_const_2_q;

    -- leftShiftStage0Idx1Rng2_uid2159_i_unnamed_conv1x135_shift_x(BITSELECT,2158)@1
    leftShiftStage0Idx1Rng2_uid2159_i_unnamed_conv1x135_shift_x_in <= i_mul16_masked3_conv1x1_q(29 downto 0);
    leftShiftStage0Idx1Rng2_uid2159_i_unnamed_conv1x135_shift_x_b <= leftShiftStage0Idx1Rng2_uid2159_i_unnamed_conv1x135_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid2160_i_unnamed_conv1x135_shift_x(BITJOIN,2159)@1
    leftShiftStage0Idx1_uid2160_i_unnamed_conv1x135_shift_x_q <= leftShiftStage0Idx1Rng2_uid2159_i_unnamed_conv1x135_shift_x_b & i_mul16_add10_conv1x1_vt_const_1_q;

    -- i_syncbuf_stride_sync_buffer123_conv1x1(BLACKBOX,660)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_stride_sync_buffer123_conv1x1 : i_syncbuf_stride_sync_buffer123_conv1x132
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_stride_sync_buffer123_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage3Idx1Rng1_uid2122_i_unnamed_conv1x129_shift_x(BITSELECT,2121)@1
    leftShiftStage3Idx1Rng1_uid2122_i_unnamed_conv1x129_shift_x_in <= leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid2122_i_unnamed_conv1x129_shift_x_b <= leftShiftStage3Idx1Rng1_uid2122_i_unnamed_conv1x129_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid2123_i_unnamed_conv1x129_shift_x(BITJOIN,2122)@1
    leftShiftStage3Idx1_uid2123_i_unnamed_conv1x129_shift_x_q <= leftShiftStage3Idx1Rng1_uid2122_i_unnamed_conv1x129_shift_x_b & GND_q;

    -- leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x(MUX,2124)@1
    leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x_s <= VCC_q;
    leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x_combproc: PROCESS (leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x_s, leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_q, leftShiftStage3Idx1_uid2123_i_unnamed_conv1x129_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x_q <= leftShiftStage2_uid2120_i_unnamed_conv1x129_shift_x_q;
            WHEN "1" => leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x_q <= leftShiftStage3Idx1_uid2123_i_unnamed_conv1x129_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x128_vt_select_31(BITSELECT,793)@1
    i_unnamed_conv1x128_vt_select_31_b <= leftShiftStage3_uid2125_i_unnamed_conv1x129_shift_x_q(31 downto 29);

    -- i_unnamed_conv1x128_vt_join(BITJOIN,792)@1
    i_unnamed_conv1x128_vt_join_q <= i_unnamed_conv1x128_vt_select_31_b & i_unnamed_conv1x1250_vt_const_28_q;

    -- xMSB_uid2128_i_unnamed_conv1x131_shift_x(BITSELECT,2127)@1
    xMSB_uid2128_i_unnamed_conv1x131_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv1x128_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2150_i_unnamed_conv1x131_shift_x(BITSELECT,2149)@1
    rightShiftStage4Idx1Rng1_uid2150_i_unnamed_conv1x131_shift_x_b <= rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2151_i_unnamed_conv1x131_shift_x(BITJOIN,2150)@1
    rightShiftStage4Idx1_uid2151_i_unnamed_conv1x131_shift_x_q <= xMSB_uid2128_i_unnamed_conv1x131_shift_x_b & rightShiftStage4Idx1Rng1_uid2150_i_unnamed_conv1x131_shift_x_b;

    -- seMsb_to2_uid2145(BITSELECT,2144)@1
    seMsb_to2_uid2145_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2128_i_unnamed_conv1x131_shift_x_b(0)) & xMSB_uid2128_i_unnamed_conv1x131_shift_x_b));
    seMsb_to2_uid2145_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2145_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2146_i_unnamed_conv1x131_shift_x(BITSELECT,2145)@1
    rightShiftStage3Idx1Rng2_uid2146_i_unnamed_conv1x131_shift_x_b <= rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2147_i_unnamed_conv1x131_shift_x(BITJOIN,2146)@1
    rightShiftStage3Idx1_uid2147_i_unnamed_conv1x131_shift_x_q <= seMsb_to2_uid2145_b & rightShiftStage3Idx1Rng2_uid2146_i_unnamed_conv1x131_shift_x_b;

    -- seMsb_to4_uid2140(BITSELECT,2139)@1
    seMsb_to4_uid2140_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2128_i_unnamed_conv1x131_shift_x_b(0)) & xMSB_uid2128_i_unnamed_conv1x131_shift_x_b));
    seMsb_to4_uid2140_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2140_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2141_i_unnamed_conv1x131_shift_x(BITSELECT,2140)@1
    rightShiftStage2Idx1Rng4_uid2141_i_unnamed_conv1x131_shift_x_b <= rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2142_i_unnamed_conv1x131_shift_x(BITJOIN,2141)@1
    rightShiftStage2Idx1_uid2142_i_unnamed_conv1x131_shift_x_q <= seMsb_to4_uid2140_b & rightShiftStage2Idx1Rng4_uid2141_i_unnamed_conv1x131_shift_x_b;

    -- seMsb_to8_uid2135(BITSELECT,2134)@1
    seMsb_to8_uid2135_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2128_i_unnamed_conv1x131_shift_x_b(0)) & xMSB_uid2128_i_unnamed_conv1x131_shift_x_b));
    seMsb_to8_uid2135_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2135_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2136_i_unnamed_conv1x131_shift_x(BITSELECT,2135)@1
    rightShiftStage1Idx1Rng8_uid2136_i_unnamed_conv1x131_shift_x_b <= rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2137_i_unnamed_conv1x131_shift_x(BITJOIN,2136)@1
    rightShiftStage1Idx1_uid2137_i_unnamed_conv1x131_shift_x_q <= seMsb_to8_uid2135_b & rightShiftStage1Idx1Rng8_uid2136_i_unnamed_conv1x131_shift_x_b;

    -- seMsb_to16_uid2130(BITSELECT,2129)@1
    seMsb_to16_uid2130_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2128_i_unnamed_conv1x131_shift_x_b(0)) & xMSB_uid2128_i_unnamed_conv1x131_shift_x_b));
    seMsb_to16_uid2130_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2130_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2131_i_unnamed_conv1x131_shift_x(BITSELECT,2130)@1
    rightShiftStage0Idx1Rng16_uid2131_i_unnamed_conv1x131_shift_x_b <= i_unnamed_conv1x128_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2132_i_unnamed_conv1x131_shift_x(BITJOIN,2131)@1
    rightShiftStage0Idx1_uid2132_i_unnamed_conv1x131_shift_x_q <= seMsb_to16_uid2130_b & rightShiftStage0Idx1Rng16_uid2131_i_unnamed_conv1x131_shift_x_b;

    -- rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x(MUX,2133)@1
    rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_s <= VCC_q;
    rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_combproc: PROCESS (rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_s, i_unnamed_conv1x128_vt_join_q, rightShiftStage0Idx1_uid2132_i_unnamed_conv1x131_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_q <= i_unnamed_conv1x128_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_q <= rightShiftStage0Idx1_uid2132_i_unnamed_conv1x131_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x(MUX,2138)@1
    rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_s <= VCC_q;
    rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_combproc: PROCESS (rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_s, rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_q, rightShiftStage1Idx1_uid2137_i_unnamed_conv1x131_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_q <= rightShiftStage0_uid2134_i_unnamed_conv1x131_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_q <= rightShiftStage1Idx1_uid2137_i_unnamed_conv1x131_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x(MUX,2143)@1
    rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_s <= VCC_q;
    rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_combproc: PROCESS (rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_s, rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_q, rightShiftStage2Idx1_uid2142_i_unnamed_conv1x131_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_q <= rightShiftStage1_uid2139_i_unnamed_conv1x131_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_q <= rightShiftStage2Idx1_uid2142_i_unnamed_conv1x131_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x(MUX,2148)@1
    rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_s <= VCC_q;
    rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_combproc: PROCESS (rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_s, rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_q, rightShiftStage3Idx1_uid2147_i_unnamed_conv1x131_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_q <= rightShiftStage2_uid2144_i_unnamed_conv1x131_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_q <= rightShiftStage3Idx1_uid2147_i_unnamed_conv1x131_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x(MUX,2152)@1
    rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x_s <= VCC_q;
    rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x_combproc: PROCESS (rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x_s, rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_q, rightShiftStage4Idx1_uid2151_i_unnamed_conv1x131_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x_q <= rightShiftStage3_uid2149_i_unnamed_conv1x131_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x_q <= rightShiftStage4Idx1_uid2151_i_unnamed_conv1x131_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul16_masked3_conv1x1(LOGICAL,612)@1
    i_mul16_masked3_conv1x1_q <= rightShiftStage4_uid2153_i_unnamed_conv1x131_shift_x_q and i_syncbuf_stride_sync_buffer123_conv1x1_out_buffer_out;

    -- leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x(MUX,2161)@1
    leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x_s <= VCC_q;
    leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x_combproc: PROCESS (leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x_s, i_mul16_masked3_conv1x1_q, leftShiftStage0Idx1_uid2160_i_unnamed_conv1x135_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x_q <= i_mul16_masked3_conv1x1_q;
            WHEN "1" => leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x_q <= leftShiftStage0Idx1_uid2160_i_unnamed_conv1x135_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv1x134_vt_select_31(BITSELECT,796)@1
    i_unnamed_conv1x134_vt_select_31_b <= leftShiftStage0_uid2162_i_unnamed_conv1x135_shift_x_q(31 downto 2);

    -- redist17_i_unnamed_conv1x134_vt_select_31_b_1(DELAY,2698)
    redist17_i_unnamed_conv1x134_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv1x134_vt_select_31_b, xout => redist17_i_unnamed_conv1x134_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv1x134_vt_join(BITJOIN,795)@2
    i_unnamed_conv1x134_vt_join_q <= redist17_i_unnamed_conv1x134_vt_select_31_b_1_q & i_mul16_add10_conv1x1_vt_const_1_q;

    -- i_mul16_add6_conv1x1(ADD,589)@2
    i_mul16_add6_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x134_vt_join_q);
    i_mul16_add6_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x142_vt_join_q);
    i_mul16_add6_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add6_conv1x1_a) + UNSIGNED(i_mul16_add6_conv1x1_b));
    i_mul16_add6_conv1x1_q <= i_mul16_add6_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add6_conv1x1_sel_x(BITSELECT,29)@2
    bgTrunc_i_mul16_add6_conv1x1_sel_x_b <= i_mul16_add6_conv1x1_q(31 downto 0);

    -- i_mul16_add6_conv1x1_vt_select_31(BITSELECT,592)@2
    i_mul16_add6_conv1x1_vt_select_31_b <= bgTrunc_i_mul16_add6_conv1x1_sel_x_b(31 downto 2);

    -- redist44_i_mul16_add6_conv1x1_vt_select_31_b_1(DELAY,2725)
    redist44_i_mul16_add6_conv1x1_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul16_add6_conv1x1_vt_select_31_b, xout => redist44_i_mul16_add6_conv1x1_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add6_conv1x1_vt_join(BITJOIN,591)@3
    i_mul16_add6_conv1x1_vt_join_q <= redist44_i_mul16_add6_conv1x1_vt_select_31_b_1_q & i_mul16_add10_conv1x1_vt_const_1_q;

    -- i_mul16_add8_conv1x1(ADD,593)@3
    i_mul16_add8_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_mul16_add6_conv1x1_vt_join_q);
    i_mul16_add8_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x150_vt_join_q);
    i_mul16_add8_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add8_conv1x1_a) + UNSIGNED(i_mul16_add8_conv1x1_b));
    i_mul16_add8_conv1x1_q <= i_mul16_add8_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add8_conv1x1_sel_x(BITSELECT,30)@3
    bgTrunc_i_mul16_add8_conv1x1_sel_x_b <= i_mul16_add8_conv1x1_q(31 downto 0);

    -- i_mul16_add8_conv1x1_vt_select_31(BITSELECT,596)@3
    i_mul16_add8_conv1x1_vt_select_31_b <= bgTrunc_i_mul16_add8_conv1x1_sel_x_b(31 downto 2);

    -- redist43_i_mul16_add8_conv1x1_vt_select_31_b_1(DELAY,2724)
    redist43_i_mul16_add8_conv1x1_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul16_add8_conv1x1_vt_select_31_b, xout => redist43_i_mul16_add8_conv1x1_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add8_conv1x1_vt_join(BITJOIN,595)@4
    i_mul16_add8_conv1x1_vt_join_q <= redist43_i_mul16_add8_conv1x1_vt_select_31_b_1_q & i_mul16_add10_conv1x1_vt_const_1_q;

    -- i_mul16_add10_conv1x1(ADD,547)@4
    i_mul16_add10_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_mul16_add8_conv1x1_vt_join_q);
    i_mul16_add10_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x158_vt_join_q);
    i_mul16_add10_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add10_conv1x1_a) + UNSIGNED(i_mul16_add10_conv1x1_b));
    i_mul16_add10_conv1x1_q <= i_mul16_add10_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add10_conv1x1_sel_x(BITSELECT,2)@4
    bgTrunc_i_mul16_add10_conv1x1_sel_x_b <= i_mul16_add10_conv1x1_q(31 downto 0);

    -- i_mul16_add10_conv1x1_vt_select_31(BITSELECT,550)@4
    i_mul16_add10_conv1x1_vt_select_31_b <= bgTrunc_i_mul16_add10_conv1x1_sel_x_b(31 downto 2);

    -- redist49_i_mul16_add10_conv1x1_vt_select_31_b_1(DELAY,2730)
    redist49_i_mul16_add10_conv1x1_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul16_add10_conv1x1_vt_select_31_b, xout => redist49_i_mul16_add10_conv1x1_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add10_conv1x1_vt_join(BITJOIN,549)@5
    i_mul16_add10_conv1x1_vt_join_q <= redist49_i_mul16_add10_conv1x1_vt_select_31_b_1_q & i_mul16_add10_conv1x1_vt_const_1_q;

    -- i_mul16_add12_conv1x1(ADD,551)@5
    i_mul16_add12_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_mul16_add10_conv1x1_vt_join_q);
    i_mul16_add12_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x166_vt_join_q);
    i_mul16_add12_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add12_conv1x1_a) + UNSIGNED(i_mul16_add12_conv1x1_b));
    i_mul16_add12_conv1x1_q <= i_mul16_add12_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add12_conv1x1_sel_x(BITSELECT,3)@5
    bgTrunc_i_mul16_add12_conv1x1_sel_x_b <= i_mul16_add12_conv1x1_q(31 downto 0);

    -- i_mul16_add12_conv1x1_vt_select_31(BITSELECT,554)@5
    i_mul16_add12_conv1x1_vt_select_31_b <= bgTrunc_i_mul16_add12_conv1x1_sel_x_b(31 downto 2);

    -- redist48_i_mul16_add12_conv1x1_vt_select_31_b_1(DELAY,2729)
    redist48_i_mul16_add12_conv1x1_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul16_add12_conv1x1_vt_select_31_b, xout => redist48_i_mul16_add12_conv1x1_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add12_conv1x1_vt_join(BITJOIN,553)@6
    i_mul16_add12_conv1x1_vt_join_q <= redist48_i_mul16_add12_conv1x1_vt_select_31_b_1_q & i_mul16_add10_conv1x1_vt_const_1_q;

    -- i_mul16_add14_conv1x1(ADD,555)@6
    i_mul16_add14_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_mul16_add12_conv1x1_vt_join_q);
    i_mul16_add14_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x174_vt_join_q);
    i_mul16_add14_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add14_conv1x1_a) + UNSIGNED(i_mul16_add14_conv1x1_b));
    i_mul16_add14_conv1x1_q <= i_mul16_add14_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add14_conv1x1_sel_x(BITSELECT,4)@6
    bgTrunc_i_mul16_add14_conv1x1_sel_x_b <= i_mul16_add14_conv1x1_q(31 downto 0);

    -- i_mul16_add14_conv1x1_vt_select_31(BITSELECT,558)@6
    i_mul16_add14_conv1x1_vt_select_31_b <= bgTrunc_i_mul16_add14_conv1x1_sel_x_b(31 downto 2);

    -- redist47_i_mul16_add14_conv1x1_vt_select_31_b_1(DELAY,2728)
    redist47_i_mul16_add14_conv1x1_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul16_add14_conv1x1_vt_select_31_b, xout => redist47_i_mul16_add14_conv1x1_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add14_conv1x1_vt_join(BITJOIN,557)@7
    i_mul16_add14_conv1x1_vt_join_q <= redist47_i_mul16_add14_conv1x1_vt_select_31_b_1_q & i_mul16_add10_conv1x1_vt_const_1_q;

    -- i_mul16_add16_conv1x1(ADD,559)@7
    i_mul16_add16_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_mul16_add14_conv1x1_vt_join_q);
    i_mul16_add16_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x182_vt_join_q);
    i_mul16_add16_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add16_conv1x1_a) + UNSIGNED(i_mul16_add16_conv1x1_b));
    i_mul16_add16_conv1x1_q <= i_mul16_add16_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add16_conv1x1_sel_x(BITSELECT,5)@7
    bgTrunc_i_mul16_add16_conv1x1_sel_x_b <= i_mul16_add16_conv1x1_q(31 downto 0);

    -- i_mul16_add16_conv1x1_vt_select_31(BITSELECT,562)@7
    i_mul16_add16_conv1x1_vt_select_31_b <= bgTrunc_i_mul16_add16_conv1x1_sel_x_b(31 downto 2);

    -- redist46_i_mul16_add16_conv1x1_vt_select_31_b_1(DELAY,2727)
    redist46_i_mul16_add16_conv1x1_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul16_add16_conv1x1_vt_select_31_b, xout => redist46_i_mul16_add16_conv1x1_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add16_conv1x1_vt_join(BITJOIN,561)@8
    i_mul16_add16_conv1x1_vt_join_q <= redist46_i_mul16_add16_conv1x1_vt_select_31_b_1_q & i_mul16_add10_conv1x1_vt_const_1_q;

    -- i_mul16_add18_conv1x1(ADD,563)@8
    i_mul16_add18_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_mul16_add16_conv1x1_vt_join_q);
    i_mul16_add18_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x190_vt_join_q);
    i_mul16_add18_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add18_conv1x1_a) + UNSIGNED(i_mul16_add18_conv1x1_b));
    i_mul16_add18_conv1x1_q <= i_mul16_add18_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add18_conv1x1_sel_x(BITSELECT,6)@8
    bgTrunc_i_mul16_add18_conv1x1_sel_x_b <= i_mul16_add18_conv1x1_q(31 downto 0);

    -- i_mul16_add18_conv1x1_vt_select_31(BITSELECT,566)@8
    i_mul16_add18_conv1x1_vt_select_31_b <= bgTrunc_i_mul16_add18_conv1x1_sel_x_b(31 downto 2);

    -- redist45_i_mul16_add18_conv1x1_vt_select_31_b_1(DELAY,2726)
    redist45_i_mul16_add18_conv1x1_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul16_add18_conv1x1_vt_select_31_b, xout => redist45_i_mul16_add18_conv1x1_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add18_conv1x1_vt_join(BITJOIN,565)@9
    i_mul16_add18_conv1x1_vt_join_q <= redist45_i_mul16_add18_conv1x1_vt_select_31_b_1_q & i_mul16_add10_conv1x1_vt_const_1_q;

    -- i_mul16_add20_conv1x1(ADD,567)@9
    i_mul16_add20_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_mul16_add18_conv1x1_vt_join_q);
    i_mul16_add20_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x198_vt_join_q);
    i_mul16_add20_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add20_conv1x1_a) + UNSIGNED(i_mul16_add20_conv1x1_b));
    i_mul16_add20_conv1x1_q <= i_mul16_add20_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add20_conv1x1_sel_x(BITSELECT,7)@9
    bgTrunc_i_mul16_add20_conv1x1_sel_x_b <= i_mul16_add20_conv1x1_q(31 downto 0);

    -- redist95_bgTrunc_i_mul16_add20_conv1x1_sel_x_b_1(DELAY,2776)
    redist95_bgTrunc_i_mul16_add20_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add20_conv1x1_sel_x_b, xout => redist95_bgTrunc_i_mul16_add20_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add22_conv1x1(ADD,568)@10
    i_mul16_add22_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist95_bgTrunc_i_mul16_add20_conv1x1_sel_x_b_1_q);
    i_mul16_add22_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1106_vt_join_q);
    i_mul16_add22_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add22_conv1x1_a) + UNSIGNED(i_mul16_add22_conv1x1_b));
    i_mul16_add22_conv1x1_q <= i_mul16_add22_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add22_conv1x1_sel_x(BITSELECT,8)@10
    bgTrunc_i_mul16_add22_conv1x1_sel_x_b <= i_mul16_add22_conv1x1_q(31 downto 0);

    -- redist94_bgTrunc_i_mul16_add22_conv1x1_sel_x_b_1(DELAY,2775)
    redist94_bgTrunc_i_mul16_add22_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add22_conv1x1_sel_x_b, xout => redist94_bgTrunc_i_mul16_add22_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add24_conv1x1(ADD,569)@11
    i_mul16_add24_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist94_bgTrunc_i_mul16_add22_conv1x1_sel_x_b_1_q);
    i_mul16_add24_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1114_vt_join_q);
    i_mul16_add24_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add24_conv1x1_a) + UNSIGNED(i_mul16_add24_conv1x1_b));
    i_mul16_add24_conv1x1_q <= i_mul16_add24_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add24_conv1x1_sel_x(BITSELECT,9)@11
    bgTrunc_i_mul16_add24_conv1x1_sel_x_b <= i_mul16_add24_conv1x1_q(31 downto 0);

    -- redist93_bgTrunc_i_mul16_add24_conv1x1_sel_x_b_1(DELAY,2774)
    redist93_bgTrunc_i_mul16_add24_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add24_conv1x1_sel_x_b, xout => redist93_bgTrunc_i_mul16_add24_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add26_conv1x1(ADD,570)@12
    i_mul16_add26_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist93_bgTrunc_i_mul16_add24_conv1x1_sel_x_b_1_q);
    i_mul16_add26_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1122_vt_join_q);
    i_mul16_add26_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add26_conv1x1_a) + UNSIGNED(i_mul16_add26_conv1x1_b));
    i_mul16_add26_conv1x1_q <= i_mul16_add26_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add26_conv1x1_sel_x(BITSELECT,10)@12
    bgTrunc_i_mul16_add26_conv1x1_sel_x_b <= i_mul16_add26_conv1x1_q(31 downto 0);

    -- redist92_bgTrunc_i_mul16_add26_conv1x1_sel_x_b_1(DELAY,2773)
    redist92_bgTrunc_i_mul16_add26_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add26_conv1x1_sel_x_b, xout => redist92_bgTrunc_i_mul16_add26_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add28_conv1x1(ADD,571)@13
    i_mul16_add28_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist92_bgTrunc_i_mul16_add26_conv1x1_sel_x_b_1_q);
    i_mul16_add28_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1130_vt_join_q);
    i_mul16_add28_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add28_conv1x1_a) + UNSIGNED(i_mul16_add28_conv1x1_b));
    i_mul16_add28_conv1x1_q <= i_mul16_add28_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add28_conv1x1_sel_x(BITSELECT,11)@13
    bgTrunc_i_mul16_add28_conv1x1_sel_x_b <= i_mul16_add28_conv1x1_q(31 downto 0);

    -- redist91_bgTrunc_i_mul16_add28_conv1x1_sel_x_b_1(DELAY,2772)
    redist91_bgTrunc_i_mul16_add28_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add28_conv1x1_sel_x_b, xout => redist91_bgTrunc_i_mul16_add28_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add30_conv1x1(ADD,572)@14
    i_mul16_add30_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist91_bgTrunc_i_mul16_add28_conv1x1_sel_x_b_1_q);
    i_mul16_add30_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1138_vt_join_q);
    i_mul16_add30_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add30_conv1x1_a) + UNSIGNED(i_mul16_add30_conv1x1_b));
    i_mul16_add30_conv1x1_q <= i_mul16_add30_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add30_conv1x1_sel_x(BITSELECT,12)@14
    bgTrunc_i_mul16_add30_conv1x1_sel_x_b <= i_mul16_add30_conv1x1_q(31 downto 0);

    -- redist90_bgTrunc_i_mul16_add30_conv1x1_sel_x_b_1(DELAY,2771)
    redist90_bgTrunc_i_mul16_add30_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add30_conv1x1_sel_x_b, xout => redist90_bgTrunc_i_mul16_add30_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add32_conv1x1(ADD,573)@15
    i_mul16_add32_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist90_bgTrunc_i_mul16_add30_conv1x1_sel_x_b_1_q);
    i_mul16_add32_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1146_vt_join_q);
    i_mul16_add32_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add32_conv1x1_a) + UNSIGNED(i_mul16_add32_conv1x1_b));
    i_mul16_add32_conv1x1_q <= i_mul16_add32_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add32_conv1x1_sel_x(BITSELECT,13)@15
    bgTrunc_i_mul16_add32_conv1x1_sel_x_b <= i_mul16_add32_conv1x1_q(31 downto 0);

    -- redist89_bgTrunc_i_mul16_add32_conv1x1_sel_x_b_1(DELAY,2770)
    redist89_bgTrunc_i_mul16_add32_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add32_conv1x1_sel_x_b, xout => redist89_bgTrunc_i_mul16_add32_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add34_conv1x1(ADD,574)@16
    i_mul16_add34_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist89_bgTrunc_i_mul16_add32_conv1x1_sel_x_b_1_q);
    i_mul16_add34_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1154_vt_join_q);
    i_mul16_add34_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add34_conv1x1_a) + UNSIGNED(i_mul16_add34_conv1x1_b));
    i_mul16_add34_conv1x1_q <= i_mul16_add34_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add34_conv1x1_sel_x(BITSELECT,14)@16
    bgTrunc_i_mul16_add34_conv1x1_sel_x_b <= i_mul16_add34_conv1x1_q(31 downto 0);

    -- redist88_bgTrunc_i_mul16_add34_conv1x1_sel_x_b_1(DELAY,2769)
    redist88_bgTrunc_i_mul16_add34_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add34_conv1x1_sel_x_b, xout => redist88_bgTrunc_i_mul16_add34_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add36_conv1x1(ADD,575)@17
    i_mul16_add36_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist88_bgTrunc_i_mul16_add34_conv1x1_sel_x_b_1_q);
    i_mul16_add36_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1162_vt_join_q);
    i_mul16_add36_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add36_conv1x1_a) + UNSIGNED(i_mul16_add36_conv1x1_b));
    i_mul16_add36_conv1x1_q <= i_mul16_add36_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add36_conv1x1_sel_x(BITSELECT,15)@17
    bgTrunc_i_mul16_add36_conv1x1_sel_x_b <= i_mul16_add36_conv1x1_q(31 downto 0);

    -- redist87_bgTrunc_i_mul16_add36_conv1x1_sel_x_b_1(DELAY,2768)
    redist87_bgTrunc_i_mul16_add36_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add36_conv1x1_sel_x_b, xout => redist87_bgTrunc_i_mul16_add36_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add38_conv1x1(ADD,576)@18
    i_mul16_add38_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist87_bgTrunc_i_mul16_add36_conv1x1_sel_x_b_1_q);
    i_mul16_add38_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1170_vt_join_q);
    i_mul16_add38_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add38_conv1x1_a) + UNSIGNED(i_mul16_add38_conv1x1_b));
    i_mul16_add38_conv1x1_q <= i_mul16_add38_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add38_conv1x1_sel_x(BITSELECT,16)@18
    bgTrunc_i_mul16_add38_conv1x1_sel_x_b <= i_mul16_add38_conv1x1_q(31 downto 0);

    -- redist86_bgTrunc_i_mul16_add38_conv1x1_sel_x_b_1(DELAY,2767)
    redist86_bgTrunc_i_mul16_add38_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add38_conv1x1_sel_x_b, xout => redist86_bgTrunc_i_mul16_add38_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add40_conv1x1(ADD,577)@19
    i_mul16_add40_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist86_bgTrunc_i_mul16_add38_conv1x1_sel_x_b_1_q);
    i_mul16_add40_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1178_vt_join_q);
    i_mul16_add40_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add40_conv1x1_a) + UNSIGNED(i_mul16_add40_conv1x1_b));
    i_mul16_add40_conv1x1_q <= i_mul16_add40_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add40_conv1x1_sel_x(BITSELECT,17)@19
    bgTrunc_i_mul16_add40_conv1x1_sel_x_b <= i_mul16_add40_conv1x1_q(31 downto 0);

    -- redist85_bgTrunc_i_mul16_add40_conv1x1_sel_x_b_1(DELAY,2766)
    redist85_bgTrunc_i_mul16_add40_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add40_conv1x1_sel_x_b, xout => redist85_bgTrunc_i_mul16_add40_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add42_conv1x1(ADD,578)@20
    i_mul16_add42_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist85_bgTrunc_i_mul16_add40_conv1x1_sel_x_b_1_q);
    i_mul16_add42_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1186_vt_join_q);
    i_mul16_add42_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add42_conv1x1_a) + UNSIGNED(i_mul16_add42_conv1x1_b));
    i_mul16_add42_conv1x1_q <= i_mul16_add42_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add42_conv1x1_sel_x(BITSELECT,18)@20
    bgTrunc_i_mul16_add42_conv1x1_sel_x_b <= i_mul16_add42_conv1x1_q(31 downto 0);

    -- redist84_bgTrunc_i_mul16_add42_conv1x1_sel_x_b_1(DELAY,2765)
    redist84_bgTrunc_i_mul16_add42_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add42_conv1x1_sel_x_b, xout => redist84_bgTrunc_i_mul16_add42_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add44_conv1x1(ADD,579)@21
    i_mul16_add44_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist84_bgTrunc_i_mul16_add42_conv1x1_sel_x_b_1_q);
    i_mul16_add44_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1194_vt_join_q);
    i_mul16_add44_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add44_conv1x1_a) + UNSIGNED(i_mul16_add44_conv1x1_b));
    i_mul16_add44_conv1x1_q <= i_mul16_add44_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add44_conv1x1_sel_x(BITSELECT,19)@21
    bgTrunc_i_mul16_add44_conv1x1_sel_x_b <= i_mul16_add44_conv1x1_q(31 downto 0);

    -- redist83_bgTrunc_i_mul16_add44_conv1x1_sel_x_b_1(DELAY,2764)
    redist83_bgTrunc_i_mul16_add44_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add44_conv1x1_sel_x_b, xout => redist83_bgTrunc_i_mul16_add44_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add46_conv1x1(ADD,580)@22
    i_mul16_add46_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist83_bgTrunc_i_mul16_add44_conv1x1_sel_x_b_1_q);
    i_mul16_add46_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1202_vt_join_q);
    i_mul16_add46_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add46_conv1x1_a) + UNSIGNED(i_mul16_add46_conv1x1_b));
    i_mul16_add46_conv1x1_q <= i_mul16_add46_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add46_conv1x1_sel_x(BITSELECT,20)@22
    bgTrunc_i_mul16_add46_conv1x1_sel_x_b <= i_mul16_add46_conv1x1_q(31 downto 0);

    -- redist82_bgTrunc_i_mul16_add46_conv1x1_sel_x_b_1(DELAY,2763)
    redist82_bgTrunc_i_mul16_add46_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add46_conv1x1_sel_x_b, xout => redist82_bgTrunc_i_mul16_add46_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add48_conv1x1(ADD,581)@23
    i_mul16_add48_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist82_bgTrunc_i_mul16_add46_conv1x1_sel_x_b_1_q);
    i_mul16_add48_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1210_vt_join_q);
    i_mul16_add48_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add48_conv1x1_a) + UNSIGNED(i_mul16_add48_conv1x1_b));
    i_mul16_add48_conv1x1_q <= i_mul16_add48_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add48_conv1x1_sel_x(BITSELECT,21)@23
    bgTrunc_i_mul16_add48_conv1x1_sel_x_b <= i_mul16_add48_conv1x1_q(31 downto 0);

    -- redist81_bgTrunc_i_mul16_add48_conv1x1_sel_x_b_1(DELAY,2762)
    redist81_bgTrunc_i_mul16_add48_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add48_conv1x1_sel_x_b, xout => redist81_bgTrunc_i_mul16_add48_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add50_conv1x1(ADD,582)@24
    i_mul16_add50_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist81_bgTrunc_i_mul16_add48_conv1x1_sel_x_b_1_q);
    i_mul16_add50_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1218_vt_join_q);
    i_mul16_add50_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add50_conv1x1_a) + UNSIGNED(i_mul16_add50_conv1x1_b));
    i_mul16_add50_conv1x1_q <= i_mul16_add50_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add50_conv1x1_sel_x(BITSELECT,22)@24
    bgTrunc_i_mul16_add50_conv1x1_sel_x_b <= i_mul16_add50_conv1x1_q(31 downto 0);

    -- redist80_bgTrunc_i_mul16_add50_conv1x1_sel_x_b_1(DELAY,2761)
    redist80_bgTrunc_i_mul16_add50_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add50_conv1x1_sel_x_b, xout => redist80_bgTrunc_i_mul16_add50_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add52_conv1x1(ADD,583)@25
    i_mul16_add52_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist80_bgTrunc_i_mul16_add50_conv1x1_sel_x_b_1_q);
    i_mul16_add52_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1226_vt_join_q);
    i_mul16_add52_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add52_conv1x1_a) + UNSIGNED(i_mul16_add52_conv1x1_b));
    i_mul16_add52_conv1x1_q <= i_mul16_add52_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add52_conv1x1_sel_x(BITSELECT,23)@25
    bgTrunc_i_mul16_add52_conv1x1_sel_x_b <= i_mul16_add52_conv1x1_q(31 downto 0);

    -- redist79_bgTrunc_i_mul16_add52_conv1x1_sel_x_b_1(DELAY,2760)
    redist79_bgTrunc_i_mul16_add52_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add52_conv1x1_sel_x_b, xout => redist79_bgTrunc_i_mul16_add52_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add54_conv1x1(ADD,584)@26
    i_mul16_add54_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist79_bgTrunc_i_mul16_add52_conv1x1_sel_x_b_1_q);
    i_mul16_add54_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1234_vt_join_q);
    i_mul16_add54_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add54_conv1x1_a) + UNSIGNED(i_mul16_add54_conv1x1_b));
    i_mul16_add54_conv1x1_q <= i_mul16_add54_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add54_conv1x1_sel_x(BITSELECT,24)@26
    bgTrunc_i_mul16_add54_conv1x1_sel_x_b <= i_mul16_add54_conv1x1_q(31 downto 0);

    -- redist78_bgTrunc_i_mul16_add54_conv1x1_sel_x_b_1(DELAY,2759)
    redist78_bgTrunc_i_mul16_add54_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add54_conv1x1_sel_x_b, xout => redist78_bgTrunc_i_mul16_add54_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add56_conv1x1(ADD,585)@27
    i_mul16_add56_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist78_bgTrunc_i_mul16_add54_conv1x1_sel_x_b_1_q);
    i_mul16_add56_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1242_vt_join_q);
    i_mul16_add56_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add56_conv1x1_a) + UNSIGNED(i_mul16_add56_conv1x1_b));
    i_mul16_add56_conv1x1_q <= i_mul16_add56_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add56_conv1x1_sel_x(BITSELECT,25)@27
    bgTrunc_i_mul16_add56_conv1x1_sel_x_b <= i_mul16_add56_conv1x1_q(31 downto 0);

    -- redist77_bgTrunc_i_mul16_add56_conv1x1_sel_x_b_1(DELAY,2758)
    redist77_bgTrunc_i_mul16_add56_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add56_conv1x1_sel_x_b, xout => redist77_bgTrunc_i_mul16_add56_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add58_conv1x1(ADD,586)@28
    i_mul16_add58_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist77_bgTrunc_i_mul16_add56_conv1x1_sel_x_b_1_q);
    i_mul16_add58_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1250_vt_join_q);
    i_mul16_add58_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add58_conv1x1_a) + UNSIGNED(i_mul16_add58_conv1x1_b));
    i_mul16_add58_conv1x1_q <= i_mul16_add58_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add58_conv1x1_sel_x(BITSELECT,26)@28
    bgTrunc_i_mul16_add58_conv1x1_sel_x_b <= i_mul16_add58_conv1x1_q(31 downto 0);

    -- redist76_bgTrunc_i_mul16_add58_conv1x1_sel_x_b_1(DELAY,2757)
    redist76_bgTrunc_i_mul16_add58_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add58_conv1x1_sel_x_b, xout => redist76_bgTrunc_i_mul16_add58_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add60_conv1x1(ADD,587)@29
    i_mul16_add60_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist76_bgTrunc_i_mul16_add58_conv1x1_sel_x_b_1_q);
    i_mul16_add60_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1258_vt_join_q);
    i_mul16_add60_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add60_conv1x1_a) + UNSIGNED(i_mul16_add60_conv1x1_b));
    i_mul16_add60_conv1x1_q <= i_mul16_add60_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add60_conv1x1_sel_x(BITSELECT,27)@29
    bgTrunc_i_mul16_add60_conv1x1_sel_x_b <= i_mul16_add60_conv1x1_q(31 downto 0);

    -- redist75_bgTrunc_i_mul16_add60_conv1x1_sel_x_b_1(DELAY,2756)
    redist75_bgTrunc_i_mul16_add60_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add60_conv1x1_sel_x_b, xout => redist75_bgTrunc_i_mul16_add60_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul16_add62_conv1x1(ADD,588)@30
    i_mul16_add62_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist75_bgTrunc_i_mul16_add60_conv1x1_sel_x_b_1_q);
    i_mul16_add62_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv1x1263_vt_join_q);
    i_mul16_add62_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul16_add62_conv1x1_a) + UNSIGNED(i_mul16_add62_conv1x1_b));
    i_mul16_add62_conv1x1_q <= i_mul16_add62_conv1x1_o(32 downto 0);

    -- bgTrunc_i_mul16_add62_conv1x1_sel_x(BITSELECT,28)@30
    bgTrunc_i_mul16_add62_conv1x1_sel_x_b <= i_mul16_add62_conv1x1_q(31 downto 0);

    -- redist74_bgTrunc_i_mul16_add62_conv1x1_sel_x_b_1(DELAY,2755)
    redist74_bgTrunc_i_mul16_add62_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul16_add62_conv1x1_sel_x_b, xout => redist74_bgTrunc_i_mul16_add62_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub17_conv1x1(SUB,632)@31
    i_sub17_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist74_bgTrunc_i_mul16_add62_conv1x1_sel_x_b_1_q);
    i_sub17_conv1x1_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_pad_sync_buffer_conv1x1_out_buffer_out);
    i_sub17_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub17_conv1x1_a) - UNSIGNED(i_sub17_conv1x1_b));
    i_sub17_conv1x1_q <= i_sub17_conv1x1_o(32 downto 0);

    -- bgTrunc_i_sub17_conv1x1_sel_x(BITSELECT,31)@31
    bgTrunc_i_sub17_conv1x1_sel_x_b <= STD_LOGIC_VECTOR(i_sub17_conv1x1_q(31 downto 0));

    -- redist71_bgTrunc_i_sub17_conv1x1_sel_x_b_1(DELAY,2752)
    redist71_bgTrunc_i_sub17_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub17_conv1x1_sel_x_b, xout => redist71_bgTrunc_i_sub17_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- redist72_bgTrunc_i_sub17_conv1x1_sel_x_b_2(DELAY,2753)
    redist72_bgTrunc_i_sub17_conv1x1_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist71_bgTrunc_i_sub17_conv1x1_sel_x_b_1_q, xout => redist72_bgTrunc_i_sub17_conv1x1_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- i_cmp26_conv1x1(COMPARE,544)@33 + 1
    i_cmp26_conv1x1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist72_bgTrunc_i_sub17_conv1x1_sel_x_b_2_q(31)) & redist72_bgTrunc_i_sub17_conv1x1_sel_x_b_2_q));
    i_cmp26_conv1x1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_input_size_sync_buffer79_conv1x1_out_buffer_out(31)) & i_syncbuf_input_size_sync_buffer79_conv1x1_out_buffer_out));
    i_cmp26_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp26_conv1x1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp26_conv1x1_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp26_conv1x1_a) - SIGNED(i_cmp26_conv1x1_b));
        END IF;
    END PROCESS;
    i_cmp26_conv1x1_c(0) <= i_cmp26_conv1x1_o(33);

    -- dupName_0_c_i32_1gr_x(CONSTANT,33)
    dupName_0_c_i32_1gr_x_q <= "11111111111111111111111111111111";

    -- i_cmp23_conv1x1(COMPARE,543)@32 + 1
    i_cmp23_conv1x1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => dupName_0_c_i32_1gr_x_q(31)) & dupName_0_c_i32_1gr_x_q));
    i_cmp23_conv1x1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist71_bgTrunc_i_sub17_conv1x1_sel_x_b_1_q(31)) & redist71_bgTrunc_i_sub17_conv1x1_sel_x_b_1_q));
    i_cmp23_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp23_conv1x1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp23_conv1x1_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp23_conv1x1_a) - SIGNED(i_cmp23_conv1x1_b));
        END IF;
    END PROCESS;
    i_cmp23_conv1x1_c(0) <= i_cmp23_conv1x1_o(33);

    -- redist52_sync_in_aunroll_x_in_c0_eni2_2_32_notEnable(LOGICAL,2830)
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist52_sync_in_aunroll_x_in_c0_eni2_2_32_nor(LOGICAL,2831)
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_nor_q <= not (redist52_sync_in_aunroll_x_in_c0_eni2_2_32_notEnable_q or redist52_sync_in_aunroll_x_in_c0_eni2_2_32_sticky_ena_q);

    -- redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_last(CONSTANT,2827)
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_last_q <= "011101";

    -- redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmp(LOGICAL,2828)
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmp_b <= STD_LOGIC_VECTOR("0" & redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_q);
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmp_q <= "1" WHEN redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_last_q = redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmp_b ELSE "0";

    -- redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmpReg(REG,2829)
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmpReg_q <= STD_LOGIC_VECTOR(redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmp_q);
        END IF;
    END PROCESS;

    -- redist52_sync_in_aunroll_x_in_c0_eni2_2_32_sticky_ena(REG,2832)
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist52_sync_in_aunroll_x_in_c0_eni2_2_32_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist52_sync_in_aunroll_x_in_c0_eni2_2_32_nor_q = "1") THEN
                redist52_sync_in_aunroll_x_in_c0_eni2_2_32_sticky_ena_q <= STD_LOGIC_VECTOR(redist52_sync_in_aunroll_x_in_c0_eni2_2_32_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist52_sync_in_aunroll_x_in_c0_eni2_2_32_enaAnd(LOGICAL,2833)
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_enaAnd_q <= redist52_sync_in_aunroll_x_in_c0_eni2_2_32_sticky_ena_q and VCC_q;

    -- redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt(COUNTER,2825)
    -- low=0, high=30, step=1, init=0
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_eq <= '1';
            ELSE
                redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_eq <= '0';
            END IF;
            IF (redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_eq = '1') THEN
                redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_i <= redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_i + 2;
            ELSE
                redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_i <= redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_i, 5)));

    -- redist52_sync_in_aunroll_x_in_c0_eni2_2_32_wraddr(REG,2826)
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist52_sync_in_aunroll_x_in_c0_eni2_2_32_wraddr_q <= "11110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist52_sync_in_aunroll_x_in_c0_eni2_2_32_wraddr_q <= STD_LOGIC_VECTOR(redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem(DUALMEM,2824)
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni2_2);
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_aa <= redist52_sync_in_aunroll_x_in_c0_eni2_2_32_wraddr_q;
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_ab <= redist52_sync_in_aunroll_x_in_c0_eni2_2_32_rdcnt_q;
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_reset0 <= not (resetn);
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 1,
        widthad_a => 5,
        numwords_a => 31,
        width_b => 1,
        widthad_b => 5,
        numwords_b => 31,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist52_sync_in_aunroll_x_in_c0_eni2_2_32_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_reset0,
        clock1 => clock,
        address_a => redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_aa,
        data_a => redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_ab,
        q_b => redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_iq
    );
    redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_q <= redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_iq(0 downto 0);

    -- i_or_cond3_conv1x1(LOGICAL,629)@33 + 1
    i_or_cond3_conv1x1_qi <= redist52_sync_in_aunroll_x_in_c0_eni2_2_32_mem_q and i_cmp23_conv1x1_c;
    i_or_cond3_conv1x1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or_cond3_conv1x1_qi, xout => i_or_cond3_conv1x1_q, clk => clock, aclr => resetn );

    -- i_or_cond4_conv1x1(LOGICAL,630)@34
    i_or_cond4_conv1x1_q <= i_or_cond3_conv1x1_q and i_cmp26_conv1x1_c;

    -- redist73_bgTrunc_i_sub17_conv1x1_sel_x_b_3(DELAY,2754)
    redist73_bgTrunc_i_sub17_conv1x1_sel_x_b_3 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist72_bgTrunc_i_sub17_conv1x1_sel_x_b_2_q, xout => redist73_bgTrunc_i_sub17_conv1x1_sel_x_b_3_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,477)@34
    out_c0_exi5_0 <= GND_q;
    out_c0_exi5_1 <= redist73_bgTrunc_i_sub17_conv1x1_sel_x_b_3_q;
    out_c0_exi5_2 <= i_or_cond4_conv1x1_q;
    out_c0_exi5_3 <= i_cmp106_neg77_rm_conv1x1_c;
    out_c0_exi5_4 <= i_cmp9_phi_decision80_xor_rm_conv1x1_c;
    out_c0_exi5_5 <= i_cmp9_phi_decision80_xor_or_conv1x1_q;
    out_o_valid <= redist70_sync_in_aunroll_x_in_i_valid_33_q;

END normal;
