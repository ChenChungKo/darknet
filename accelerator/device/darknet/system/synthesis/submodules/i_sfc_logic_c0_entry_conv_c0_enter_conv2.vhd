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

-- VHDL created from i_sfc_logic_c0_entry_conv_c0_enter_conv2
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

entity i_sfc_logic_c0_entry_conv_c0_enter_conv2 is
    port (
        in_N_elem : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni1_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni1_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi3_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi3_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_entry_conv_c0_enter_conv2;

architecture normal of i_sfc_logic_c0_entry_conv_c0_enter_conv2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_syncbuf_n_elem_sync_buffer64_conv215 is
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


    component i_syncbuf_n_elem_sync_buffer65_conv207 is
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


    component i_syncbuf_n_elem_sync_buffer66_conv199 is
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


    component i_syncbuf_n_elem_sync_buffer67_conv191 is
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


    component i_syncbuf_n_elem_sync_buffer68_conv183 is
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


    component i_syncbuf_n_elem_sync_buffer69_conv175 is
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


    component i_syncbuf_n_elem_sync_buffer70_conv167 is
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


    component i_syncbuf_n_elem_sync_buffer71_conv159 is
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


    component i_syncbuf_n_elem_sync_buffer72_conv151 is
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


    component i_syncbuf_n_elem_sync_buffer73_conv143 is
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


    component i_syncbuf_n_elem_sync_buffer74_conv135 is
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


    component i_syncbuf_n_elem_sync_buffer75_conv127 is
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


    component i_syncbuf_n_elem_sync_buffer76_conv119 is
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


    component i_syncbuf_n_elem_sync_buffer77_conv111 is
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


    component i_syncbuf_n_elem_sync_buffer78_conv103 is
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


    component i_syncbuf_n_elem_sync_buffer79_conv95 is
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


    component i_syncbuf_n_elem_sync_buffer80_conv87 is
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


    component i_syncbuf_n_elem_sync_buffer81_conv79 is
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


    component i_syncbuf_n_elem_sync_buffer82_conv71 is
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


    component i_syncbuf_n_elem_sync_buffer83_conv63 is
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


    component i_syncbuf_n_elem_sync_buffer84_conv55 is
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


    component i_syncbuf_n_elem_sync_buffer85_conv47 is
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


    component i_syncbuf_n_elem_sync_buffer86_conv39 is
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


    component i_syncbuf_n_elem_sync_buffer87_conv31 is
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


    component i_syncbuf_n_elem_sync_buffer88_conv23 is
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


    component i_syncbuf_n_elem_sync_buffer89_conv15 is
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


    component i_syncbuf_n_elem_sync_buffer90_conv7 is
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


    component i_syncbuf_n_elem_sync_buffer92_conv233 is
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


    component i_syncbuf_n_elem_sync_buffer93_conv4 is
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


    component i_syncbuf_n_elem_sync_buffer_conv223 is
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
    signal bgTrunc_i_add_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add10_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add12_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add14_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add16_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add18_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add20_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add22_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add24_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add26_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add28_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add30_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add32_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add34_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add36_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add38_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add40_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add42_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add44_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add46_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add48_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add50_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add52_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add54_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add56_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add58_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add60_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add62_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul10_add8_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp22_conv_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp22_conv_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp22_conv_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp22_conv_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul10_add10_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add10_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add10_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add10_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add10_conv_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_mul10_add10_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_add10_conv_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_mul10_add12_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add12_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add12_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add12_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add12_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_add12_conv_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_mul10_add14_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add14_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add14_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add14_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add14_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_add14_conv_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_mul10_add16_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add16_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add16_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add16_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add16_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_add16_conv_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_mul10_add18_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add18_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add18_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add18_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add18_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_add18_conv_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_mul10_add20_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add20_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add20_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add20_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add20_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_add20_conv_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_mul10_add22_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add22_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add22_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add22_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add24_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add24_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add24_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add24_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add26_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add26_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add26_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add26_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add28_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add28_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add28_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add28_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add30_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add30_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add30_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add30_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add32_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add32_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add32_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add32_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add34_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add34_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add34_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add34_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add36_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add36_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add36_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add36_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add38_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add38_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add38_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add38_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add40_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add40_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add40_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add40_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add42_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add42_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add42_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add42_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add44_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add44_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add44_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add44_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add46_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add46_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add46_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add46_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add48_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add48_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add48_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add48_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add50_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add50_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add50_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add50_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add52_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add52_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add52_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add52_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add54_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add54_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add54_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add54_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add56_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add56_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add56_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add56_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add58_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add58_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add58_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add58_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add60_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add60_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add60_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add60_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add62_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add62_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add62_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add62_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add8_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add8_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add8_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add8_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul10_add8_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_add8_conv_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_mul10_masked11_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked13_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked15_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked17_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked19_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked21_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked23_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked25_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked29_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked31_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked33_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked35_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked37_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked39_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked41_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked43_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked45_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked47_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked49_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked51_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked53_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked55_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked57_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked59_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked5_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked6163_conv_vt_const_30_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_mul10_masked6163_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked6163_conv_vt_select_31_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul10_masked7_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul10_masked9_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul9_conv_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul9_conv_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_sub_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_n_elem_sync_buffer64_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer65_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer66_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer67_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer68_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer69_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer70_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer71_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer72_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer73_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer74_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer75_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer76_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer77_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer78_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer79_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer80_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer81_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer82_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer83_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer84_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer85_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer86_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer87_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer88_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer89_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer90_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer92_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer93_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_elem_sync_buffer_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv101_vt_const_13_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_unnamed_conv101_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv101_vt_select_31_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_conv105_vt_const_18_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_conv105_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv105_vt_select_31_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_unnamed_conv109_vt_const_14_q : STD_LOGIC_VECTOR (14 downto 0);
    signal i_unnamed_conv109_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv109_vt_select_31_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_conv113_vt_const_17_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_conv113_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv113_vt_select_31_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_unnamed_conv117_vt_const_15_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_conv117_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv117_vt_select_31_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_conv121_vt_const_16_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_conv121_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv121_vt_select_31_b : STD_LOGIC_VECTOR (14 downto 0);
    signal i_unnamed_conv125_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv125_vt_select_31_b : STD_LOGIC_VECTOR (14 downto 0);
    signal i_unnamed_conv129_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv129_vt_select_31_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_conv133_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv133_vt_select_31_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_unnamed_conv137_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv137_vt_select_31_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_conv13_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv13_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_conv141_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv141_vt_select_31_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_unnamed_conv145_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv145_vt_select_31_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_conv149_vt_const_19_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_conv149_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv149_vt_select_31_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_conv153_vt_const_12_q : STD_LOGIC_VECTOR (12 downto 0);
    signal i_unnamed_conv153_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv153_vt_select_31_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_conv157_vt_const_20_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_unnamed_conv157_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv157_vt_select_31_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_conv161_vt_const_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_conv161_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv161_vt_select_31_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_conv165_vt_const_21_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_conv165_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv165_vt_select_31_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_unnamed_conv169_vt_const_10_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_conv169_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv169_vt_select_31_b : STD_LOGIC_VECTOR (20 downto 0);
    signal i_unnamed_conv173_vt_const_22_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_conv173_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv173_vt_select_31_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_unnamed_conv177_vt_const_9_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_unnamed_conv177_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv177_vt_select_31_b : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_conv17_vt_const_29_q : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_conv17_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv17_vt_select_31_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_unnamed_conv181_vt_const_23_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_unnamed_conv181_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv181_vt_select_31_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_conv185_vt_const_8_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_unnamed_conv185_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv185_vt_select_31_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_conv189_vt_const_24_q : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_conv189_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv189_vt_select_31_b : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_conv193_vt_const_7_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_conv193_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv193_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_unnamed_conv197_vt_const_25_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_unnamed_conv197_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv197_vt_select_31_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_unnamed_conv201_vt_const_6_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_conv201_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv201_vt_select_31_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_conv205_vt_const_26_q : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_conv205_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv205_vt_select_31_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_unnamed_conv209_vt_const_5_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_unnamed_conv209_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv209_vt_select_31_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_unnamed_conv213_vt_const_27_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_unnamed_conv213_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv213_vt_select_31_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv217_vt_const_4_q : STD_LOGIC_VECTOR (4 downto 0);
    signal i_unnamed_conv217_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv217_vt_select_31_b : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_conv21_vt_const_3_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv21_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv21_vt_select_31_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_unnamed_conv221_vt_const_28_q : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_conv221_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv221_vt_select_31_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_unnamed_conv225_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv225_vt_select_31_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_unnamed_conv229_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv229_vt_select_31_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_unnamed_conv232_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv232_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv232_vt_select_31_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv25_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv25_vt_select_31_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_unnamed_conv29_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv29_vt_select_31_b : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_conv33_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv33_vt_select_31_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv37_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv37_vt_select_31_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_unnamed_conv41_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv41_vt_select_31_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_unnamed_conv45_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv45_vt_select_31_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_unnamed_conv49_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv49_vt_select_31_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_unnamed_conv53_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv53_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_unnamed_conv57_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv57_vt_select_31_b : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_conv61_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv61_vt_select_31_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_unnamed_conv65_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv65_vt_select_31_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_conv69_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv69_vt_select_31_b : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_conv73_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv73_vt_select_31_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_unnamed_conv77_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv77_vt_select_31_b : STD_LOGIC_VECTOR (20 downto 0);
    signal i_unnamed_conv81_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv81_vt_select_31_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_unnamed_conv85_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv85_vt_select_31_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_conv89_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv89_vt_select_31_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_conv93_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv93_vt_select_31_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_conv97_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv97_vt_select_31_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_conv9_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv9_vt_select_31_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0Idx1Rng16_uid819_i_mul10_masked6163_conv_conv231_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid819_i_mul10_masked6163_conv_conv231_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid820_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid824_i_mul10_masked6163_conv_conv231_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid824_i_mul10_masked6163_conv_conv231_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid825_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid829_i_mul10_masked6163_conv_conv231_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid829_i_mul10_masked6163_conv_conv231_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid830_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage3Idx1Rng2_uid834_i_mul10_masked6163_conv_conv231_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1Rng2_uid834_i_mul10_masked6163_conv_conv231_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1_uid835_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage4Idx1Rng1_uid839_i_mul10_masked6163_conv_conv231_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage4Idx1Rng1_uid839_i_mul10_masked6163_conv_conv231_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage4Idx1_uid840_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid848_i_mul9_conv_conv6_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid848_i_mul9_conv_conv6_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid849_i_mul9_conv_conv6_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid853_i_mul9_conv_conv6_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid853_i_mul9_conv_conv6_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid854_i_mul9_conv_conv6_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid862_i_unnamed_conv10_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid862_i_unnamed_conv10_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid863_i_unnamed_conv10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid865_i_unnamed_conv10_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid865_i_unnamed_conv10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid867_i_unnamed_conv10_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid867_i_unnamed_conv10_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid868_i_unnamed_conv10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid870_i_unnamed_conv10_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid870_i_unnamed_conv10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid872_i_unnamed_conv10_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid872_i_unnamed_conv10_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid873_i_unnamed_conv10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid875_i_unnamed_conv10_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid875_i_unnamed_conv10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng2_uid877_i_unnamed_conv10_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1Rng2_uid877_i_unnamed_conv10_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1_uid878_i_unnamed_conv10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid880_i_unnamed_conv10_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid880_i_unnamed_conv10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage4Idx1Rng1_uid882_i_unnamed_conv10_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage4Idx1Rng1_uid882_i_unnamed_conv10_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage4Idx1_uid883_i_unnamed_conv10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage4_uid885_i_unnamed_conv10_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage4_uid885_i_unnamed_conv10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid888_i_unnamed_conv100_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid890_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid890_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid891_i_unnamed_conv100_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid892_i_unnamed_conv100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid894_i_unnamed_conv100_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid894_i_unnamed_conv100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid895_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid895_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid896_i_unnamed_conv100_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid897_i_unnamed_conv100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid899_i_unnamed_conv100_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid899_i_unnamed_conv100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid900_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid900_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid901_i_unnamed_conv100_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid902_i_unnamed_conv100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid904_i_unnamed_conv100_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid904_i_unnamed_conv100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid905_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid905_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid906_i_unnamed_conv100_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid907_i_unnamed_conv100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid909_i_unnamed_conv100_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid909_i_unnamed_conv100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid910_i_unnamed_conv100_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid911_i_unnamed_conv100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid913_i_unnamed_conv100_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid913_i_unnamed_conv100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid919_i_unnamed_conv102_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid919_i_unnamed_conv102_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid920_i_unnamed_conv102_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid922_i_unnamed_conv102_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid922_i_unnamed_conv102_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid924_i_unnamed_conv102_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid924_i_unnamed_conv102_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid925_i_unnamed_conv102_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid927_i_unnamed_conv102_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid927_i_unnamed_conv102_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid929_i_unnamed_conv102_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid929_i_unnamed_conv102_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid930_i_unnamed_conv102_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid932_i_unnamed_conv102_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid932_i_unnamed_conv102_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid938_i_unnamed_conv106_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid938_i_unnamed_conv106_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid939_i_unnamed_conv106_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid941_i_unnamed_conv106_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid941_i_unnamed_conv106_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid943_i_unnamed_conv106_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid943_i_unnamed_conv106_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid944_i_unnamed_conv106_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid946_i_unnamed_conv106_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid946_i_unnamed_conv106_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid948_i_unnamed_conv106_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid948_i_unnamed_conv106_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid949_i_unnamed_conv106_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid951_i_unnamed_conv106_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid951_i_unnamed_conv106_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid954_i_unnamed_conv108_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid956_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid956_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid957_i_unnamed_conv108_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid958_i_unnamed_conv108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid960_i_unnamed_conv108_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid960_i_unnamed_conv108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid961_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid961_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid962_i_unnamed_conv108_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid963_i_unnamed_conv108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid965_i_unnamed_conv108_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid965_i_unnamed_conv108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid966_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid966_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid967_i_unnamed_conv108_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid968_i_unnamed_conv108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid970_i_unnamed_conv108_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid970_i_unnamed_conv108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid971_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid971_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid972_i_unnamed_conv108_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid973_i_unnamed_conv108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid975_i_unnamed_conv108_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid975_i_unnamed_conv108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid976_i_unnamed_conv108_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid977_i_unnamed_conv108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid979_i_unnamed_conv108_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid979_i_unnamed_conv108_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid985_i_unnamed_conv110_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid985_i_unnamed_conv110_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid986_i_unnamed_conv110_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid988_i_unnamed_conv110_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid988_i_unnamed_conv110_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid990_i_unnamed_conv110_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid990_i_unnamed_conv110_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid991_i_unnamed_conv110_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid993_i_unnamed_conv110_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid993_i_unnamed_conv110_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid995_i_unnamed_conv110_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid995_i_unnamed_conv110_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid996_i_unnamed_conv110_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid998_i_unnamed_conv110_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid998_i_unnamed_conv110_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1000_i_unnamed_conv110_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1000_i_unnamed_conv110_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid1001_i_unnamed_conv110_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid1003_i_unnamed_conv110_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1003_i_unnamed_conv110_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1009_i_unnamed_conv114_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1009_i_unnamed_conv114_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1010_i_unnamed_conv114_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1014_i_unnamed_conv114_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1014_i_unnamed_conv114_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1015_i_unnamed_conv114_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1017_i_unnamed_conv114_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1017_i_unnamed_conv114_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1020_i_unnamed_conv116_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1022_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1022_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1023_i_unnamed_conv116_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1024_i_unnamed_conv116_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1027_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1027_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1028_i_unnamed_conv116_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1029_i_unnamed_conv116_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1032_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1032_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1033_i_unnamed_conv116_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1034_i_unnamed_conv116_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1037_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1037_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1038_i_unnamed_conv116_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1039_i_unnamed_conv116_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1042_i_unnamed_conv116_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1043_i_unnamed_conv116_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1045_i_unnamed_conv116_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1045_i_unnamed_conv116_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1051_i_unnamed_conv118_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1051_i_unnamed_conv118_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1052_i_unnamed_conv118_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1054_i_unnamed_conv118_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1054_i_unnamed_conv118_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1057_i_unnamed_conv12_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1059_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1059_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1060_i_unnamed_conv12_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1061_i_unnamed_conv12_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1064_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1064_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1065_i_unnamed_conv12_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1066_i_unnamed_conv12_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1069_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1069_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1070_i_unnamed_conv12_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1071_i_unnamed_conv12_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1074_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1074_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1075_i_unnamed_conv12_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1076_i_unnamed_conv12_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1079_i_unnamed_conv12_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1080_i_unnamed_conv12_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1082_i_unnamed_conv12_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1082_i_unnamed_conv12_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1088_i_unnamed_conv122_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1088_i_unnamed_conv122_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1089_i_unnamed_conv122_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1093_i_unnamed_conv122_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1093_i_unnamed_conv122_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1094_i_unnamed_conv122_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1096_i_unnamed_conv122_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1096_i_unnamed_conv122_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1099_i_unnamed_conv124_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1101_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1101_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1102_i_unnamed_conv124_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1103_i_unnamed_conv124_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1106_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1106_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1107_i_unnamed_conv124_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1108_i_unnamed_conv124_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1111_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1111_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1112_i_unnamed_conv124_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1113_i_unnamed_conv124_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1116_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1116_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1117_i_unnamed_conv124_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1118_i_unnamed_conv124_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1121_i_unnamed_conv124_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1122_i_unnamed_conv124_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1124_i_unnamed_conv124_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1124_i_unnamed_conv124_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1130_i_unnamed_conv126_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1130_i_unnamed_conv126_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1131_i_unnamed_conv126_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1135_i_unnamed_conv126_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1135_i_unnamed_conv126_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1136_i_unnamed_conv126_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1138_i_unnamed_conv126_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1138_i_unnamed_conv126_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1144_i_unnamed_conv130_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1144_i_unnamed_conv130_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1145_i_unnamed_conv130_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1147_i_unnamed_conv130_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1147_i_unnamed_conv130_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1150_i_unnamed_conv132_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1152_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1152_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1153_i_unnamed_conv132_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1154_i_unnamed_conv132_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1157_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1157_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1158_i_unnamed_conv132_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1159_i_unnamed_conv132_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1162_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1162_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1163_i_unnamed_conv132_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1164_i_unnamed_conv132_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1167_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1167_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1168_i_unnamed_conv132_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1169_i_unnamed_conv132_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1172_i_unnamed_conv132_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1173_i_unnamed_conv132_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1175_i_unnamed_conv132_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1175_i_unnamed_conv132_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1181_i_unnamed_conv134_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1181_i_unnamed_conv134_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1182_i_unnamed_conv134_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1186_i_unnamed_conv134_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1186_i_unnamed_conv134_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1187_i_unnamed_conv134_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1189_i_unnamed_conv134_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1189_i_unnamed_conv134_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1195_i_unnamed_conv138_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1195_i_unnamed_conv138_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1196_i_unnamed_conv138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1200_i_unnamed_conv138_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1200_i_unnamed_conv138_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1201_i_unnamed_conv138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1205_i_unnamed_conv138_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1205_i_unnamed_conv138_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1206_i_unnamed_conv138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1210_i_unnamed_conv138_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1210_i_unnamed_conv138_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid1211_i_unnamed_conv138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid1213_i_unnamed_conv138_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1213_i_unnamed_conv138_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid1219_i_unnamed_conv14_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid1219_i_unnamed_conv14_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid1220_i_unnamed_conv14_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1224_i_unnamed_conv14_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1224_i_unnamed_conv14_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1225_i_unnamed_conv14_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1227_i_unnamed_conv14_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1227_i_unnamed_conv14_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1230_i_unnamed_conv140_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1232_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1232_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1233_i_unnamed_conv140_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1234_i_unnamed_conv140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1237_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1237_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1238_i_unnamed_conv140_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1239_i_unnamed_conv140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1242_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1242_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1243_i_unnamed_conv140_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1244_i_unnamed_conv140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1247_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1247_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1248_i_unnamed_conv140_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1249_i_unnamed_conv140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1252_i_unnamed_conv140_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1253_i_unnamed_conv140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1255_i_unnamed_conv140_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1255_i_unnamed_conv140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1261_i_unnamed_conv142_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1261_i_unnamed_conv142_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1262_i_unnamed_conv142_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1266_i_unnamed_conv142_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1266_i_unnamed_conv142_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1267_i_unnamed_conv142_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1271_i_unnamed_conv142_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1271_i_unnamed_conv142_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1272_i_unnamed_conv142_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1274_i_unnamed_conv142_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1274_i_unnamed_conv142_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1280_i_unnamed_conv146_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1280_i_unnamed_conv146_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1281_i_unnamed_conv146_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1285_i_unnamed_conv146_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1285_i_unnamed_conv146_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1286_i_unnamed_conv146_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1290_i_unnamed_conv146_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1290_i_unnamed_conv146_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1291_i_unnamed_conv146_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1293_i_unnamed_conv146_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1293_i_unnamed_conv146_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1296_i_unnamed_conv148_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1298_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1298_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1299_i_unnamed_conv148_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1300_i_unnamed_conv148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1303_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1303_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1304_i_unnamed_conv148_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1305_i_unnamed_conv148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1308_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1308_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1309_i_unnamed_conv148_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1310_i_unnamed_conv148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1313_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1313_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1314_i_unnamed_conv148_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1315_i_unnamed_conv148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1318_i_unnamed_conv148_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1319_i_unnamed_conv148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1321_i_unnamed_conv148_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1321_i_unnamed_conv148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1327_i_unnamed_conv150_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1327_i_unnamed_conv150_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1328_i_unnamed_conv150_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1332_i_unnamed_conv150_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1332_i_unnamed_conv150_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1333_i_unnamed_conv150_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1335_i_unnamed_conv150_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1335_i_unnamed_conv150_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1341_i_unnamed_conv154_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1341_i_unnamed_conv154_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1342_i_unnamed_conv154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1346_i_unnamed_conv154_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1346_i_unnamed_conv154_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1347_i_unnamed_conv154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1351_i_unnamed_conv154_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1351_i_unnamed_conv154_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1352_i_unnamed_conv154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1354_i_unnamed_conv154_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1354_i_unnamed_conv154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1357_i_unnamed_conv156_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1359_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1359_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1360_i_unnamed_conv156_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1361_i_unnamed_conv156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1364_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1364_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1365_i_unnamed_conv156_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1366_i_unnamed_conv156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1369_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1369_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1370_i_unnamed_conv156_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1371_i_unnamed_conv156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1374_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1374_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1375_i_unnamed_conv156_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1376_i_unnamed_conv156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1379_i_unnamed_conv156_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1380_i_unnamed_conv156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1382_i_unnamed_conv156_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1382_i_unnamed_conv156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1388_i_unnamed_conv158_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1388_i_unnamed_conv158_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1389_i_unnamed_conv158_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1393_i_unnamed_conv158_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1393_i_unnamed_conv158_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1394_i_unnamed_conv158_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1398_i_unnamed_conv158_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1398_i_unnamed_conv158_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1399_i_unnamed_conv158_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1401_i_unnamed_conv158_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1401_i_unnamed_conv158_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1407_i_unnamed_conv162_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1407_i_unnamed_conv162_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1408_i_unnamed_conv162_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1412_i_unnamed_conv162_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1412_i_unnamed_conv162_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1413_i_unnamed_conv162_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1415_i_unnamed_conv162_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1415_i_unnamed_conv162_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1418_i_unnamed_conv164_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1420_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1420_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1421_i_unnamed_conv164_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1422_i_unnamed_conv164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1425_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1425_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1426_i_unnamed_conv164_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1427_i_unnamed_conv164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1430_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1430_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1431_i_unnamed_conv164_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1432_i_unnamed_conv164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1435_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1435_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1436_i_unnamed_conv164_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1437_i_unnamed_conv164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1440_i_unnamed_conv164_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1441_i_unnamed_conv164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1443_i_unnamed_conv164_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1443_i_unnamed_conv164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1449_i_unnamed_conv166_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1449_i_unnamed_conv166_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1450_i_unnamed_conv166_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1454_i_unnamed_conv166_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1454_i_unnamed_conv166_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1455_i_unnamed_conv166_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1459_i_unnamed_conv166_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1459_i_unnamed_conv166_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1460_i_unnamed_conv166_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1462_i_unnamed_conv166_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1462_i_unnamed_conv166_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1468_i_unnamed_conv170_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1468_i_unnamed_conv170_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1469_i_unnamed_conv170_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1473_i_unnamed_conv170_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1473_i_unnamed_conv170_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1474_i_unnamed_conv170_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1478_i_unnamed_conv170_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1478_i_unnamed_conv170_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1479_i_unnamed_conv170_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1481_i_unnamed_conv170_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1481_i_unnamed_conv170_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1484_i_unnamed_conv172_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1486_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1486_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1487_i_unnamed_conv172_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1488_i_unnamed_conv172_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1491_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1491_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1492_i_unnamed_conv172_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1493_i_unnamed_conv172_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1496_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1496_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1497_i_unnamed_conv172_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1498_i_unnamed_conv172_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1501_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1501_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1502_i_unnamed_conv172_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1503_i_unnamed_conv172_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1506_i_unnamed_conv172_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1507_i_unnamed_conv172_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1509_i_unnamed_conv172_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1509_i_unnamed_conv172_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1515_i_unnamed_conv174_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1515_i_unnamed_conv174_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1516_i_unnamed_conv174_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1520_i_unnamed_conv174_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid1520_i_unnamed_conv174_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid1521_i_unnamed_conv174_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1525_i_unnamed_conv174_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1525_i_unnamed_conv174_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1526_i_unnamed_conv174_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1530_i_unnamed_conv174_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1530_i_unnamed_conv174_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid1531_i_unnamed_conv174_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid1533_i_unnamed_conv174_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1533_i_unnamed_conv174_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1539_i_unnamed_conv178_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1539_i_unnamed_conv178_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1540_i_unnamed_conv178_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1544_i_unnamed_conv178_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1544_i_unnamed_conv178_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1545_i_unnamed_conv178_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1547_i_unnamed_conv178_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1547_i_unnamed_conv178_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1553_i_unnamed_conv18_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1553_i_unnamed_conv18_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1554_i_unnamed_conv18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1558_i_unnamed_conv18_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1558_i_unnamed_conv18_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1559_i_unnamed_conv18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1563_i_unnamed_conv18_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1563_i_unnamed_conv18_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid1564_i_unnamed_conv18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng2_uid1568_i_unnamed_conv18_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1Rng2_uid1568_i_unnamed_conv18_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1_uid1569_i_unnamed_conv18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid1571_i_unnamed_conv18_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1571_i_unnamed_conv18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1574_i_unnamed_conv180_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1576_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1576_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1577_i_unnamed_conv180_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1578_i_unnamed_conv180_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1581_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1581_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1582_i_unnamed_conv180_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1583_i_unnamed_conv180_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1586_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1586_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1587_i_unnamed_conv180_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1588_i_unnamed_conv180_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1591_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1591_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1592_i_unnamed_conv180_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1593_i_unnamed_conv180_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1596_i_unnamed_conv180_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1597_i_unnamed_conv180_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1599_i_unnamed_conv180_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1599_i_unnamed_conv180_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1605_i_unnamed_conv182_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1605_i_unnamed_conv182_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1606_i_unnamed_conv182_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1610_i_unnamed_conv182_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1610_i_unnamed_conv182_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1611_i_unnamed_conv182_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1613_i_unnamed_conv182_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1613_i_unnamed_conv182_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1619_i_unnamed_conv186_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1619_i_unnamed_conv186_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1620_i_unnamed_conv186_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1624_i_unnamed_conv186_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1624_i_unnamed_conv186_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1625_i_unnamed_conv186_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1627_i_unnamed_conv186_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1627_i_unnamed_conv186_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1630_i_unnamed_conv188_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1632_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1632_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1633_i_unnamed_conv188_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1634_i_unnamed_conv188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1637_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1637_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1638_i_unnamed_conv188_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1639_i_unnamed_conv188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1642_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1642_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1643_i_unnamed_conv188_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1644_i_unnamed_conv188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1647_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1647_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1648_i_unnamed_conv188_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1649_i_unnamed_conv188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1652_i_unnamed_conv188_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1653_i_unnamed_conv188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1655_i_unnamed_conv188_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1655_i_unnamed_conv188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1661_i_unnamed_conv190_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1661_i_unnamed_conv190_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1662_i_unnamed_conv190_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1666_i_unnamed_conv190_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1666_i_unnamed_conv190_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1667_i_unnamed_conv190_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1671_i_unnamed_conv190_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1671_i_unnamed_conv190_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1672_i_unnamed_conv190_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1674_i_unnamed_conv190_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1674_i_unnamed_conv190_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1680_i_unnamed_conv194_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid1680_i_unnamed_conv194_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid1681_i_unnamed_conv194_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1683_i_unnamed_conv194_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1683_i_unnamed_conv194_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1686_i_unnamed_conv196_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1688_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1688_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1689_i_unnamed_conv196_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1690_i_unnamed_conv196_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1693_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1693_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1694_i_unnamed_conv196_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1695_i_unnamed_conv196_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1698_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1698_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1699_i_unnamed_conv196_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1700_i_unnamed_conv196_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1703_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1703_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1704_i_unnamed_conv196_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1705_i_unnamed_conv196_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1708_i_unnamed_conv196_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1709_i_unnamed_conv196_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1711_i_unnamed_conv196_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1711_i_unnamed_conv196_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1717_i_unnamed_conv198_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1717_i_unnamed_conv198_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1718_i_unnamed_conv198_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1722_i_unnamed_conv198_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1722_i_unnamed_conv198_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1723_i_unnamed_conv198_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1727_i_unnamed_conv198_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1727_i_unnamed_conv198_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1728_i_unnamed_conv198_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1730_i_unnamed_conv198_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1730_i_unnamed_conv198_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1733_i_unnamed_conv20_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1735_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1735_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1736_i_unnamed_conv20_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1737_i_unnamed_conv20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1740_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1740_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1741_i_unnamed_conv20_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1742_i_unnamed_conv20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1745_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1745_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1746_i_unnamed_conv20_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1747_i_unnamed_conv20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1750_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1750_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1751_i_unnamed_conv20_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1752_i_unnamed_conv20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1755_i_unnamed_conv20_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1756_i_unnamed_conv20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1758_i_unnamed_conv20_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1758_i_unnamed_conv20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1764_i_unnamed_conv202_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1764_i_unnamed_conv202_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid1765_i_unnamed_conv202_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1769_i_unnamed_conv202_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1769_i_unnamed_conv202_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1770_i_unnamed_conv202_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1774_i_unnamed_conv202_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid1774_i_unnamed_conv202_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid1775_i_unnamed_conv202_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1777_i_unnamed_conv202_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1777_i_unnamed_conv202_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1780_i_unnamed_conv204_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1782_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1782_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1783_i_unnamed_conv204_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1784_i_unnamed_conv204_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1787_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1787_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1788_i_unnamed_conv204_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1789_i_unnamed_conv204_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1792_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1792_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1793_i_unnamed_conv204_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1794_i_unnamed_conv204_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1797_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1797_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1798_i_unnamed_conv204_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1799_i_unnamed_conv204_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1802_i_unnamed_conv204_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1803_i_unnamed_conv204_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1805_i_unnamed_conv204_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1805_i_unnamed_conv204_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1811_i_unnamed_conv206_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1811_i_unnamed_conv206_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1812_i_unnamed_conv206_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1816_i_unnamed_conv206_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1816_i_unnamed_conv206_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1817_i_unnamed_conv206_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1821_i_unnamed_conv206_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1821_i_unnamed_conv206_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid1822_i_unnamed_conv206_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1826_i_unnamed_conv206_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1826_i_unnamed_conv206_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid1827_i_unnamed_conv206_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid1829_i_unnamed_conv206_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1829_i_unnamed_conv206_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1835_i_unnamed_conv210_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1835_i_unnamed_conv210_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid1836_i_unnamed_conv210_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1840_i_unnamed_conv210_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid1840_i_unnamed_conv210_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid1841_i_unnamed_conv210_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1843_i_unnamed_conv210_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1843_i_unnamed_conv210_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1846_i_unnamed_conv212_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1848_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1848_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1849_i_unnamed_conv212_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1850_i_unnamed_conv212_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1853_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1853_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1854_i_unnamed_conv212_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1855_i_unnamed_conv212_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1858_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1858_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1859_i_unnamed_conv212_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1860_i_unnamed_conv212_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1863_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1863_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1864_i_unnamed_conv212_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1865_i_unnamed_conv212_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1868_i_unnamed_conv212_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1869_i_unnamed_conv212_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1871_i_unnamed_conv212_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1871_i_unnamed_conv212_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1877_i_unnamed_conv214_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1877_i_unnamed_conv214_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1878_i_unnamed_conv214_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1882_i_unnamed_conv214_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1882_i_unnamed_conv214_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1883_i_unnamed_conv214_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1887_i_unnamed_conv214_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1887_i_unnamed_conv214_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid1888_i_unnamed_conv214_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1890_i_unnamed_conv214_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1890_i_unnamed_conv214_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1896_i_unnamed_conv218_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1896_i_unnamed_conv218_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid1897_i_unnamed_conv218_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1901_i_unnamed_conv218_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1901_i_unnamed_conv218_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1902_i_unnamed_conv218_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1904_i_unnamed_conv218_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1904_i_unnamed_conv218_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1910_i_unnamed_conv22_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1910_i_unnamed_conv22_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid1911_i_unnamed_conv22_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1913_i_unnamed_conv22_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1913_i_unnamed_conv22_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1916_i_unnamed_conv220_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1918_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1918_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1919_i_unnamed_conv220_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1920_i_unnamed_conv220_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1923_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1923_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1924_i_unnamed_conv220_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1925_i_unnamed_conv220_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1928_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1928_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1929_i_unnamed_conv220_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1930_i_unnamed_conv220_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1933_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1933_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1934_i_unnamed_conv220_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1935_i_unnamed_conv220_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1938_i_unnamed_conv220_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid1939_i_unnamed_conv220_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid1941_i_unnamed_conv220_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid1941_i_unnamed_conv220_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1947_i_unnamed_conv222_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1947_i_unnamed_conv222_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid1948_i_unnamed_conv222_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1952_i_unnamed_conv222_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid1952_i_unnamed_conv222_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid1953_i_unnamed_conv222_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1957_i_unnamed_conv222_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1957_i_unnamed_conv222_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid1958_i_unnamed_conv222_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1962_i_unnamed_conv222_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1962_i_unnamed_conv222_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid1963_i_unnamed_conv222_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid1965_i_unnamed_conv222_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1965_i_unnamed_conv222_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1971_i_unnamed_conv226_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1971_i_unnamed_conv226_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid1972_i_unnamed_conv226_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1974_i_unnamed_conv226_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1974_i_unnamed_conv226_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid1977_i_unnamed_conv228_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid1979_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid1979_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1980_i_unnamed_conv228_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1981_i_unnamed_conv228_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid1984_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid1984_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid1985_i_unnamed_conv228_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid1986_i_unnamed_conv228_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid1989_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid1989_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1990_i_unnamed_conv228_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid1991_i_unnamed_conv228_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid1994_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid1994_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid1995_i_unnamed_conv228_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid1996_i_unnamed_conv228_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid1999_i_unnamed_conv228_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2000_i_unnamed_conv228_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2002_i_unnamed_conv228_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2002_i_unnamed_conv228_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2008_i_unnamed_conv230_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2008_i_unnamed_conv230_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2009_i_unnamed_conv230_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2013_i_unnamed_conv230_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2013_i_unnamed_conv230_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid2014_i_unnamed_conv230_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2018_i_unnamed_conv230_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2018_i_unnamed_conv230_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid2019_i_unnamed_conv230_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng2_uid2023_i_unnamed_conv230_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1Rng2_uid2023_i_unnamed_conv230_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage3Idx1_uid2024_i_unnamed_conv230_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid2026_i_unnamed_conv230_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid2026_i_unnamed_conv230_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2032_i_unnamed_conv26_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2032_i_unnamed_conv26_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2033_i_unnamed_conv26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2037_i_unnamed_conv26_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2037_i_unnamed_conv26_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid2038_i_unnamed_conv26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2042_i_unnamed_conv26_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2042_i_unnamed_conv26_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid2043_i_unnamed_conv26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2047_i_unnamed_conv26_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2047_i_unnamed_conv26_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid2048_i_unnamed_conv26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid2050_i_unnamed_conv26_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid2050_i_unnamed_conv26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2053_i_unnamed_conv28_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2055_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2055_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2056_i_unnamed_conv28_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2057_i_unnamed_conv28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2060_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2060_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2061_i_unnamed_conv28_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2062_i_unnamed_conv28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2065_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2065_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2066_i_unnamed_conv28_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2067_i_unnamed_conv28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2070_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2070_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2071_i_unnamed_conv28_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2072_i_unnamed_conv28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2075_i_unnamed_conv28_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2076_i_unnamed_conv28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2078_i_unnamed_conv28_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2078_i_unnamed_conv28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2084_i_unnamed_conv30_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2084_i_unnamed_conv30_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid2085_i_unnamed_conv30_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid2089_i_unnamed_conv30_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid2089_i_unnamed_conv30_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid2090_i_unnamed_conv30_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2092_i_unnamed_conv30_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2092_i_unnamed_conv30_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2098_i_unnamed_conv34_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2098_i_unnamed_conv34_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2099_i_unnamed_conv34_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2103_i_unnamed_conv34_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2103_i_unnamed_conv34_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid2104_i_unnamed_conv34_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2108_i_unnamed_conv34_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng4_uid2108_i_unnamed_conv34_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1_uid2109_i_unnamed_conv34_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2111_i_unnamed_conv34_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2111_i_unnamed_conv34_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2114_i_unnamed_conv36_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2116_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2116_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2117_i_unnamed_conv36_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2118_i_unnamed_conv36_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2121_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2121_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2122_i_unnamed_conv36_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2123_i_unnamed_conv36_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2126_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2126_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2127_i_unnamed_conv36_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2128_i_unnamed_conv36_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2131_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2131_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2132_i_unnamed_conv36_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2133_i_unnamed_conv36_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2136_i_unnamed_conv36_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2137_i_unnamed_conv36_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2139_i_unnamed_conv36_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2139_i_unnamed_conv36_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2145_i_unnamed_conv38_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2145_i_unnamed_conv38_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid2146_i_unnamed_conv38_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2150_i_unnamed_conv38_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2150_i_unnamed_conv38_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid2151_i_unnamed_conv38_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2153_i_unnamed_conv38_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2153_i_unnamed_conv38_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2159_i_unnamed_conv42_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2159_i_unnamed_conv42_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2160_i_unnamed_conv42_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2164_i_unnamed_conv42_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2164_i_unnamed_conv42_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid2165_i_unnamed_conv42_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2169_i_unnamed_conv42_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2169_i_unnamed_conv42_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid2170_i_unnamed_conv42_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2174_i_unnamed_conv42_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2174_i_unnamed_conv42_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid2175_i_unnamed_conv42_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid2177_i_unnamed_conv42_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid2177_i_unnamed_conv42_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2180_i_unnamed_conv44_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2182_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2182_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2183_i_unnamed_conv44_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2184_i_unnamed_conv44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2187_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2187_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2188_i_unnamed_conv44_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2189_i_unnamed_conv44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2192_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2192_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2193_i_unnamed_conv44_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2194_i_unnamed_conv44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2197_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2197_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2198_i_unnamed_conv44_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2199_i_unnamed_conv44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2202_i_unnamed_conv44_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2203_i_unnamed_conv44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2205_i_unnamed_conv44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2205_i_unnamed_conv44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2211_i_unnamed_conv46_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid2211_i_unnamed_conv46_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid2212_i_unnamed_conv46_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2216_i_unnamed_conv46_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2216_i_unnamed_conv46_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid2217_i_unnamed_conv46_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2221_i_unnamed_conv46_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2221_i_unnamed_conv46_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid2222_i_unnamed_conv46_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2224_i_unnamed_conv46_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2224_i_unnamed_conv46_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2230_i_unnamed_conv50_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2230_i_unnamed_conv50_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2231_i_unnamed_conv50_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2235_i_unnamed_conv50_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2235_i_unnamed_conv50_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid2236_i_unnamed_conv50_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2240_i_unnamed_conv50_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2240_i_unnamed_conv50_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid2241_i_unnamed_conv50_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2243_i_unnamed_conv50_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2243_i_unnamed_conv50_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2246_i_unnamed_conv52_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2248_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2248_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2249_i_unnamed_conv52_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2250_i_unnamed_conv52_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2253_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2253_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2254_i_unnamed_conv52_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2255_i_unnamed_conv52_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2258_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2258_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2259_i_unnamed_conv52_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2260_i_unnamed_conv52_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2263_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2263_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2264_i_unnamed_conv52_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2265_i_unnamed_conv52_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2268_i_unnamed_conv52_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2269_i_unnamed_conv52_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2271_i_unnamed_conv52_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2271_i_unnamed_conv52_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2277_i_unnamed_conv54_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2277_i_unnamed_conv54_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid2278_i_unnamed_conv54_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2280_i_unnamed_conv54_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2280_i_unnamed_conv54_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2286_i_unnamed_conv58_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2286_i_unnamed_conv58_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2287_i_unnamed_conv58_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2291_i_unnamed_conv58_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2291_i_unnamed_conv58_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid2292_i_unnamed_conv58_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2296_i_unnamed_conv58_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2296_i_unnamed_conv58_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid2297_i_unnamed_conv58_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2299_i_unnamed_conv58_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2299_i_unnamed_conv58_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2302_i_unnamed_conv60_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2304_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2304_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2305_i_unnamed_conv60_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2306_i_unnamed_conv60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2309_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2309_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2310_i_unnamed_conv60_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2311_i_unnamed_conv60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2314_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2314_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2315_i_unnamed_conv60_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2316_i_unnamed_conv60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2319_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2319_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2320_i_unnamed_conv60_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2321_i_unnamed_conv60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2324_i_unnamed_conv60_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2325_i_unnamed_conv60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2327_i_unnamed_conv60_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2327_i_unnamed_conv60_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2333_i_unnamed_conv62_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2333_i_unnamed_conv62_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid2334_i_unnamed_conv62_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid2338_i_unnamed_conv62_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid2338_i_unnamed_conv62_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid2339_i_unnamed_conv62_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2341_i_unnamed_conv62_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2341_i_unnamed_conv62_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2347_i_unnamed_conv66_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2347_i_unnamed_conv66_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2348_i_unnamed_conv66_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2352_i_unnamed_conv66_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1Rng8_uid2352_i_unnamed_conv66_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx1_uid2353_i_unnamed_conv66_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2355_i_unnamed_conv66_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2355_i_unnamed_conv66_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2358_i_unnamed_conv68_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2360_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2360_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2361_i_unnamed_conv68_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2362_i_unnamed_conv68_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2365_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2365_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2366_i_unnamed_conv68_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2367_i_unnamed_conv68_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2370_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2370_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2371_i_unnamed_conv68_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2372_i_unnamed_conv68_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2375_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2375_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2376_i_unnamed_conv68_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2377_i_unnamed_conv68_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2380_i_unnamed_conv68_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2381_i_unnamed_conv68_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2383_i_unnamed_conv68_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2383_i_unnamed_conv68_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2389_i_unnamed_conv70_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2389_i_unnamed_conv70_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid2390_i_unnamed_conv70_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2394_i_unnamed_conv70_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2394_i_unnamed_conv70_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid2395_i_unnamed_conv70_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2397_i_unnamed_conv70_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2397_i_unnamed_conv70_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2403_i_unnamed_conv74_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2403_i_unnamed_conv74_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2404_i_unnamed_conv74_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2408_i_unnamed_conv74_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2408_i_unnamed_conv74_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid2409_i_unnamed_conv74_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2413_i_unnamed_conv74_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2413_i_unnamed_conv74_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid2414_i_unnamed_conv74_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2418_i_unnamed_conv74_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1Rng1_uid2418_i_unnamed_conv74_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage3Idx1_uid2419_i_unnamed_conv74_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage3_uid2421_i_unnamed_conv74_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid2421_i_unnamed_conv74_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2424_i_unnamed_conv76_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2426_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2426_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2427_i_unnamed_conv76_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2428_i_unnamed_conv76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2431_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2431_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2432_i_unnamed_conv76_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2433_i_unnamed_conv76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2436_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2436_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2437_i_unnamed_conv76_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2438_i_unnamed_conv76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2441_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2441_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2442_i_unnamed_conv76_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2443_i_unnamed_conv76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2446_i_unnamed_conv76_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2447_i_unnamed_conv76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2449_i_unnamed_conv76_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2449_i_unnamed_conv76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2455_i_unnamed_conv78_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2455_i_unnamed_conv78_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid2456_i_unnamed_conv78_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2460_i_unnamed_conv78_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1Rng2_uid2460_i_unnamed_conv78_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx1_uid2461_i_unnamed_conv78_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2465_i_unnamed_conv78_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2465_i_unnamed_conv78_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid2466_i_unnamed_conv78_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2468_i_unnamed_conv78_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2468_i_unnamed_conv78_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2474_i_unnamed_conv82_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2474_i_unnamed_conv82_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2475_i_unnamed_conv82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2479_i_unnamed_conv82_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2479_i_unnamed_conv82_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid2480_i_unnamed_conv82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2484_i_unnamed_conv82_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1Rng2_uid2484_i_unnamed_conv82_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx1_uid2485_i_unnamed_conv82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2487_i_unnamed_conv82_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2487_i_unnamed_conv82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2490_i_unnamed_conv84_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2492_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2492_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2493_i_unnamed_conv84_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2494_i_unnamed_conv84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2497_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2497_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2498_i_unnamed_conv84_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2499_i_unnamed_conv84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2502_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2502_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2503_i_unnamed_conv84_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2504_i_unnamed_conv84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2507_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2507_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2508_i_unnamed_conv84_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2509_i_unnamed_conv84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2512_i_unnamed_conv84_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2513_i_unnamed_conv84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2515_i_unnamed_conv84_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2515_i_unnamed_conv84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2521_i_unnamed_conv86_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2521_i_unnamed_conv86_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid2522_i_unnamed_conv86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2526_i_unnamed_conv86_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2526_i_unnamed_conv86_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid2527_i_unnamed_conv86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2529_i_unnamed_conv86_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2529_i_unnamed_conv86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2535_i_unnamed_conv90_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2535_i_unnamed_conv90_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2536_i_unnamed_conv90_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2540_i_unnamed_conv90_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2540_i_unnamed_conv90_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid2541_i_unnamed_conv90_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2545_i_unnamed_conv90_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2545_i_unnamed_conv90_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid2546_i_unnamed_conv90_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2548_i_unnamed_conv90_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2548_i_unnamed_conv90_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid2551_i_unnamed_conv92_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid2553_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid2553_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid2554_i_unnamed_conv92_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid2555_i_unnamed_conv92_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid2558_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid2558_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid2559_i_unnamed_conv92_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid2560_i_unnamed_conv92_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid2563_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid2563_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid2564_i_unnamed_conv92_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid2565_i_unnamed_conv92_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid2568_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid2568_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid2569_i_unnamed_conv92_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid2570_i_unnamed_conv92_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid2573_i_unnamed_conv92_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid2574_i_unnamed_conv92_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid2576_i_unnamed_conv92_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid2576_i_unnamed_conv92_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2582_i_unnamed_conv94_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid2582_i_unnamed_conv94_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid2583_i_unnamed_conv94_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2587_i_unnamed_conv94_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2587_i_unnamed_conv94_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid2588_i_unnamed_conv94_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2592_i_unnamed_conv94_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid2592_i_unnamed_conv94_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid2593_i_unnamed_conv94_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid2595_i_unnamed_conv94_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid2595_i_unnamed_conv94_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2601_i_unnamed_conv98_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid2601_i_unnamed_conv98_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid2602_i_unnamed_conv98_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2606_i_unnamed_conv98_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid2606_i_unnamed_conv98_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid2607_i_unnamed_conv98_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid2609_i_unnamed_conv98_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid2609_i_unnamed_conv98_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_unnamed_conv93_vt_select_31_b_1_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist1_i_unnamed_conv85_vt_select_31_b_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist2_i_unnamed_conv77_vt_select_31_b_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist3_i_unnamed_conv69_vt_select_31_b_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal redist4_i_unnamed_conv61_vt_select_31_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist5_i_unnamed_conv53_vt_select_31_b_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist6_i_unnamed_conv45_vt_select_31_b_1_q : STD_LOGIC_VECTOR (24 downto 0);
    signal redist7_i_unnamed_conv37_vt_select_31_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist8_i_unnamed_conv29_vt_select_31_b_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist9_i_unnamed_conv232_vt_select_31_b_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_unnamed_conv229_vt_select_31_b_7_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_i_unnamed_conv221_vt_select_31_b_6_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist12_i_unnamed_conv21_vt_select_31_b_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist13_i_unnamed_conv213_vt_select_31_b_5_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist14_i_unnamed_conv205_vt_select_31_b_4_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist15_i_unnamed_conv197_vt_select_31_b_3_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist16_i_unnamed_conv189_vt_select_31_b_2_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist17_i_unnamed_conv181_vt_select_31_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist18_i_unnamed_conv173_vt_select_31_b_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist19_i_unnamed_conv165_vt_select_31_b_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist20_i_unnamed_conv157_vt_select_31_b_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist21_i_unnamed_conv149_vt_select_31_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist22_i_unnamed_conv141_vt_select_31_b_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist23_i_unnamed_conv13_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist24_i_unnamed_conv133_vt_select_31_b_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist25_i_unnamed_conv125_vt_select_31_b_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist26_i_unnamed_conv117_vt_select_31_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist27_i_unnamed_conv109_vt_select_31_b_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal redist28_i_unnamed_conv101_vt_select_31_b_1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist29_i_mul10_add8_conv_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist30_i_mul10_add20_conv_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist31_i_mul10_add18_conv_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist32_i_mul10_add16_conv_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist33_i_mul10_add14_conv_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist34_i_mul10_add12_conv_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist35_i_mul10_add10_conv_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist36_sync_in_aunroll_x_in_c0_eni1_1_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist37_sync_in_aunroll_x_in_c0_eni1_1_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist38_sync_in_aunroll_x_in_c0_eni1_1_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist39_sync_in_aunroll_x_in_c0_eni1_1_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist40_sync_in_aunroll_x_in_c0_eni1_1_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist41_sync_in_aunroll_x_in_c0_eni1_1_6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist42_sync_in_aunroll_x_in_c0_eni1_1_7_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist43_sync_in_aunroll_x_in_c0_eni1_1_8_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist44_sync_in_aunroll_x_in_c0_eni1_1_9_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist45_sync_in_aunroll_x_in_c0_eni1_1_10_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist46_sync_in_aunroll_x_in_c0_eni1_1_11_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist47_sync_in_aunroll_x_in_c0_eni1_1_12_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist48_sync_in_aunroll_x_in_c0_eni1_1_13_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist49_sync_in_aunroll_x_in_c0_eni1_1_14_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist50_sync_in_aunroll_x_in_c0_eni1_1_15_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist51_sync_in_aunroll_x_in_c0_eni1_1_16_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist52_sync_in_aunroll_x_in_c0_eni1_1_17_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist53_sync_in_aunroll_x_in_c0_eni1_1_18_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist54_sync_in_aunroll_x_in_c0_eni1_1_19_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist56_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist58_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist59_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist61_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_i_valid_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist66_sync_in_aunroll_x_in_i_valid_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_i_valid_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist68_sync_in_aunroll_x_in_i_valid_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_sync_in_aunroll_x_in_i_valid_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist70_sync_in_aunroll_x_in_i_valid_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist71_sync_in_aunroll_x_in_i_valid_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist72_sync_in_aunroll_x_in_i_valid_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_sync_in_aunroll_x_in_i_valid_18_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist74_sync_in_aunroll_x_in_i_valid_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist75_sync_in_aunroll_x_in_i_valid_20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist76_sync_in_aunroll_x_in_i_valid_28_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist77_sync_in_aunroll_x_in_i_valid_30_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist78_bgTrunc_i_sub_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist79_bgTrunc_i_mul10_add62_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist80_bgTrunc_i_mul10_add62_conv_sel_x_b_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist81_bgTrunc_i_mul10_add60_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist82_bgTrunc_i_mul10_add58_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist83_bgTrunc_i_mul10_add56_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist84_bgTrunc_i_mul10_add54_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist85_bgTrunc_i_mul10_add52_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist86_bgTrunc_i_mul10_add50_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist87_bgTrunc_i_mul10_add48_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist88_bgTrunc_i_mul10_add46_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist89_bgTrunc_i_mul10_add44_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist90_bgTrunc_i_mul10_add42_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist91_bgTrunc_i_mul10_add40_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist92_bgTrunc_i_mul10_add38_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist93_bgTrunc_i_mul10_add36_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist94_bgTrunc_i_mul10_add34_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist95_bgTrunc_i_mul10_add32_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist96_bgTrunc_i_mul10_add30_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist97_bgTrunc_i_mul10_add28_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist98_bgTrunc_i_mul10_add26_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist99_bgTrunc_i_mul10_add24_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist100_bgTrunc_i_mul10_add22_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist101_bgTrunc_i_add_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist56_sync_in_aunroll_x_in_i_valid_1(DELAY,2696)
    redist56_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist56_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist57_sync_in_aunroll_x_in_i_valid_2(DELAY,2697)
    redist57_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist56_sync_in_aunroll_x_in_i_valid_1_q, xout => redist57_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist58_sync_in_aunroll_x_in_i_valid_3(DELAY,2698)
    redist58_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist57_sync_in_aunroll_x_in_i_valid_2_q, xout => redist58_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist59_sync_in_aunroll_x_in_i_valid_4(DELAY,2699)
    redist59_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist58_sync_in_aunroll_x_in_i_valid_3_q, xout => redist59_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist60_sync_in_aunroll_x_in_i_valid_5(DELAY,2700)
    redist60_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist59_sync_in_aunroll_x_in_i_valid_4_q, xout => redist60_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist61_sync_in_aunroll_x_in_i_valid_6(DELAY,2701)
    redist61_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist60_sync_in_aunroll_x_in_i_valid_5_q, xout => redist61_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- redist62_sync_in_aunroll_x_in_i_valid_7(DELAY,2702)
    redist62_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist61_sync_in_aunroll_x_in_i_valid_6_q, xout => redist62_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- redist63_sync_in_aunroll_x_in_i_valid_8(DELAY,2703)
    redist63_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist62_sync_in_aunroll_x_in_i_valid_7_q, xout => redist63_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- redist64_sync_in_aunroll_x_in_i_valid_9(DELAY,2704)
    redist64_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist63_sync_in_aunroll_x_in_i_valid_8_q, xout => redist64_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- redist65_sync_in_aunroll_x_in_i_valid_10(DELAY,2705)
    redist65_sync_in_aunroll_x_in_i_valid_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist64_sync_in_aunroll_x_in_i_valid_9_q, xout => redist65_sync_in_aunroll_x_in_i_valid_10_q, clk => clock, aclr => resetn );

    -- redist66_sync_in_aunroll_x_in_i_valid_11(DELAY,2706)
    redist66_sync_in_aunroll_x_in_i_valid_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist65_sync_in_aunroll_x_in_i_valid_10_q, xout => redist66_sync_in_aunroll_x_in_i_valid_11_q, clk => clock, aclr => resetn );

    -- redist67_sync_in_aunroll_x_in_i_valid_12(DELAY,2707)
    redist67_sync_in_aunroll_x_in_i_valid_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist66_sync_in_aunroll_x_in_i_valid_11_q, xout => redist67_sync_in_aunroll_x_in_i_valid_12_q, clk => clock, aclr => resetn );

    -- redist68_sync_in_aunroll_x_in_i_valid_13(DELAY,2708)
    redist68_sync_in_aunroll_x_in_i_valid_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist67_sync_in_aunroll_x_in_i_valid_12_q, xout => redist68_sync_in_aunroll_x_in_i_valid_13_q, clk => clock, aclr => resetn );

    -- redist69_sync_in_aunroll_x_in_i_valid_14(DELAY,2709)
    redist69_sync_in_aunroll_x_in_i_valid_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist68_sync_in_aunroll_x_in_i_valid_13_q, xout => redist69_sync_in_aunroll_x_in_i_valid_14_q, clk => clock, aclr => resetn );

    -- redist70_sync_in_aunroll_x_in_i_valid_15(DELAY,2710)
    redist70_sync_in_aunroll_x_in_i_valid_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist69_sync_in_aunroll_x_in_i_valid_14_q, xout => redist70_sync_in_aunroll_x_in_i_valid_15_q, clk => clock, aclr => resetn );

    -- redist71_sync_in_aunroll_x_in_i_valid_16(DELAY,2711)
    redist71_sync_in_aunroll_x_in_i_valid_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist70_sync_in_aunroll_x_in_i_valid_15_q, xout => redist71_sync_in_aunroll_x_in_i_valid_16_q, clk => clock, aclr => resetn );

    -- redist72_sync_in_aunroll_x_in_i_valid_17(DELAY,2712)
    redist72_sync_in_aunroll_x_in_i_valid_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist71_sync_in_aunroll_x_in_i_valid_16_q, xout => redist72_sync_in_aunroll_x_in_i_valid_17_q, clk => clock, aclr => resetn );

    -- redist73_sync_in_aunroll_x_in_i_valid_18(DELAY,2713)
    redist73_sync_in_aunroll_x_in_i_valid_18 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist72_sync_in_aunroll_x_in_i_valid_17_q, xout => redist73_sync_in_aunroll_x_in_i_valid_18_q, clk => clock, aclr => resetn );

    -- redist74_sync_in_aunroll_x_in_i_valid_19(DELAY,2714)
    redist74_sync_in_aunroll_x_in_i_valid_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist73_sync_in_aunroll_x_in_i_valid_18_q, xout => redist74_sync_in_aunroll_x_in_i_valid_19_q, clk => clock, aclr => resetn );

    -- redist75_sync_in_aunroll_x_in_i_valid_20(DELAY,2715)
    redist75_sync_in_aunroll_x_in_i_valid_20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist74_sync_in_aunroll_x_in_i_valid_19_q, xout => redist75_sync_in_aunroll_x_in_i_valid_20_q, clk => clock, aclr => resetn );

    -- redist76_sync_in_aunroll_x_in_i_valid_28(DELAY,2716)
    redist76_sync_in_aunroll_x_in_i_valid_28 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist75_sync_in_aunroll_x_in_i_valid_20_q, xout => redist76_sync_in_aunroll_x_in_i_valid_28_q, clk => clock, aclr => resetn );

    -- redist77_sync_in_aunroll_x_in_i_valid_30(DELAY,2717)
    redist77_sync_in_aunroll_x_in_i_valid_30 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist76_sync_in_aunroll_x_in_i_valid_28_q, xout => redist77_sync_in_aunroll_x_in_i_valid_30_q, clk => clock, aclr => resetn );

    -- i_cmp22_conv(COMPARE,525)@43
    i_cmp22_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist78_bgTrunc_i_sub_conv_sel_x_b_1_q(31)) & redist78_bgTrunc_i_sub_conv_sel_x_b_1_q));
    i_cmp22_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist80_bgTrunc_i_mul10_add62_conv_sel_x_b_2_q(31)) & redist80_bgTrunc_i_mul10_add62_conv_sel_x_b_2_q));
    i_cmp22_conv_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp22_conv_a) - SIGNED(i_cmp22_conv_b));
    i_cmp22_conv_c(0) <= i_cmp22_conv_o(33);

    -- leftShiftStage4Idx1Rng1_uid839_i_mul10_masked6163_conv_conv231_shift_x(BITSELECT,838)@33
    leftShiftStage4Idx1Rng1_uid839_i_mul10_masked6163_conv_conv231_shift_x_in <= leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_q(30 downto 0);
    leftShiftStage4Idx1Rng1_uid839_i_mul10_masked6163_conv_conv231_shift_x_b <= leftShiftStage4Idx1Rng1_uid839_i_mul10_masked6163_conv_conv231_shift_x_in(30 downto 0);

    -- leftShiftStage4Idx1_uid840_i_mul10_masked6163_conv_conv231_shift_x(BITJOIN,839)@33
    leftShiftStage4Idx1_uid840_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage4Idx1Rng1_uid839_i_mul10_masked6163_conv_conv231_shift_x_b & GND_q;

    -- leftShiftStage3Idx1Rng2_uid834_i_mul10_masked6163_conv_conv231_shift_x(BITSELECT,833)@33
    leftShiftStage3Idx1Rng2_uid834_i_mul10_masked6163_conv_conv231_shift_x_in <= leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_q(29 downto 0);
    leftShiftStage3Idx1Rng2_uid834_i_mul10_masked6163_conv_conv231_shift_x_b <= leftShiftStage3Idx1Rng2_uid834_i_mul10_masked6163_conv_conv231_shift_x_in(29 downto 0);

    -- leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x(CONSTANT,832)
    leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q <= "00";

    -- leftShiftStage3Idx1_uid835_i_mul10_masked6163_conv_conv231_shift_x(BITJOIN,834)@33
    leftShiftStage3Idx1_uid835_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage3Idx1Rng2_uid834_i_mul10_masked6163_conv_conv231_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage2Idx1Rng4_uid829_i_mul10_masked6163_conv_conv231_shift_x(BITSELECT,828)@33
    leftShiftStage2Idx1Rng4_uid829_i_mul10_masked6163_conv_conv231_shift_x_in <= leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid829_i_mul10_masked6163_conv_conv231_shift_x_b <= leftShiftStage2Idx1Rng4_uid829_i_mul10_masked6163_conv_conv231_shift_x_in(27 downto 0);

    -- i_unnamed_conv21_vt_const_3(CONSTANT,736)
    i_unnamed_conv21_vt_const_3_q <= "0000";

    -- leftShiftStage2Idx1_uid830_i_mul10_masked6163_conv_conv231_shift_x(BITJOIN,829)@33
    leftShiftStage2Idx1_uid830_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage2Idx1Rng4_uid829_i_mul10_masked6163_conv_conv231_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid824_i_mul10_masked6163_conv_conv231_shift_x(BITSELECT,823)@33
    leftShiftStage1Idx1Rng8_uid824_i_mul10_masked6163_conv_conv231_shift_x_in <= leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid824_i_mul10_masked6163_conv_conv231_shift_x_b <= leftShiftStage1Idx1Rng8_uid824_i_mul10_masked6163_conv_conv231_shift_x_in(23 downto 0);

    -- i_unnamed_conv193_vt_const_7(CONSTANT,715)
    i_unnamed_conv193_vt_const_7_q <= "00000000";

    -- leftShiftStage1Idx1_uid825_i_mul10_masked6163_conv_conv231_shift_x(BITJOIN,824)@33
    leftShiftStage1Idx1_uid825_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage1Idx1Rng8_uid824_i_mul10_masked6163_conv_conv231_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid819_i_mul10_masked6163_conv_conv231_shift_x(BITSELECT,818)@33
    leftShiftStage0Idx1Rng16_uid819_i_mul10_masked6163_conv_conv231_shift_x_in <= redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid819_i_mul10_masked6163_conv_conv231_shift_x_b <= leftShiftStage0Idx1Rng16_uid819_i_mul10_masked6163_conv_conv231_shift_x_in(15 downto 0);

    -- i_unnamed_conv117_vt_const_15(CONSTANT,652)
    i_unnamed_conv117_vt_const_15_q <= "0000000000000000";

    -- leftShiftStage0Idx1_uid820_i_mul10_masked6163_conv_conv231_shift_x(BITJOIN,819)@33
    leftShiftStage0Idx1_uid820_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage0Idx1Rng16_uid819_i_mul10_masked6163_conv_conv231_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- redist36_sync_in_aunroll_x_in_c0_eni1_1_1(DELAY,2676)
    redist36_sync_in_aunroll_x_in_c0_eni1_1_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni1_1, xout => redist36_sync_in_aunroll_x_in_c0_eni1_1_1_q, clk => clock, aclr => resetn );

    -- redist37_sync_in_aunroll_x_in_c0_eni1_1_2(DELAY,2677)
    redist37_sync_in_aunroll_x_in_c0_eni1_1_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist36_sync_in_aunroll_x_in_c0_eni1_1_1_q, xout => redist37_sync_in_aunroll_x_in_c0_eni1_1_2_q, clk => clock, aclr => resetn );

    -- redist38_sync_in_aunroll_x_in_c0_eni1_1_3(DELAY,2678)
    redist38_sync_in_aunroll_x_in_c0_eni1_1_3 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist37_sync_in_aunroll_x_in_c0_eni1_1_2_q, xout => redist38_sync_in_aunroll_x_in_c0_eni1_1_3_q, clk => clock, aclr => resetn );

    -- redist39_sync_in_aunroll_x_in_c0_eni1_1_4(DELAY,2679)
    redist39_sync_in_aunroll_x_in_c0_eni1_1_4 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist38_sync_in_aunroll_x_in_c0_eni1_1_3_q, xout => redist39_sync_in_aunroll_x_in_c0_eni1_1_4_q, clk => clock, aclr => resetn );

    -- redist40_sync_in_aunroll_x_in_c0_eni1_1_5(DELAY,2680)
    redist40_sync_in_aunroll_x_in_c0_eni1_1_5 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist39_sync_in_aunroll_x_in_c0_eni1_1_4_q, xout => redist40_sync_in_aunroll_x_in_c0_eni1_1_5_q, clk => clock, aclr => resetn );

    -- redist41_sync_in_aunroll_x_in_c0_eni1_1_6(DELAY,2681)
    redist41_sync_in_aunroll_x_in_c0_eni1_1_6 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist40_sync_in_aunroll_x_in_c0_eni1_1_5_q, xout => redist41_sync_in_aunroll_x_in_c0_eni1_1_6_q, clk => clock, aclr => resetn );

    -- redist42_sync_in_aunroll_x_in_c0_eni1_1_7(DELAY,2682)
    redist42_sync_in_aunroll_x_in_c0_eni1_1_7 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist41_sync_in_aunroll_x_in_c0_eni1_1_6_q, xout => redist42_sync_in_aunroll_x_in_c0_eni1_1_7_q, clk => clock, aclr => resetn );

    -- redist43_sync_in_aunroll_x_in_c0_eni1_1_8(DELAY,2683)
    redist43_sync_in_aunroll_x_in_c0_eni1_1_8 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist42_sync_in_aunroll_x_in_c0_eni1_1_7_q, xout => redist43_sync_in_aunroll_x_in_c0_eni1_1_8_q, clk => clock, aclr => resetn );

    -- redist44_sync_in_aunroll_x_in_c0_eni1_1_9(DELAY,2684)
    redist44_sync_in_aunroll_x_in_c0_eni1_1_9 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist43_sync_in_aunroll_x_in_c0_eni1_1_8_q, xout => redist44_sync_in_aunroll_x_in_c0_eni1_1_9_q, clk => clock, aclr => resetn );

    -- redist45_sync_in_aunroll_x_in_c0_eni1_1_10(DELAY,2685)
    redist45_sync_in_aunroll_x_in_c0_eni1_1_10 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist44_sync_in_aunroll_x_in_c0_eni1_1_9_q, xout => redist45_sync_in_aunroll_x_in_c0_eni1_1_10_q, clk => clock, aclr => resetn );

    -- redist46_sync_in_aunroll_x_in_c0_eni1_1_11(DELAY,2686)
    redist46_sync_in_aunroll_x_in_c0_eni1_1_11 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist45_sync_in_aunroll_x_in_c0_eni1_1_10_q, xout => redist46_sync_in_aunroll_x_in_c0_eni1_1_11_q, clk => clock, aclr => resetn );

    -- redist47_sync_in_aunroll_x_in_c0_eni1_1_12(DELAY,2687)
    redist47_sync_in_aunroll_x_in_c0_eni1_1_12 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist46_sync_in_aunroll_x_in_c0_eni1_1_11_q, xout => redist47_sync_in_aunroll_x_in_c0_eni1_1_12_q, clk => clock, aclr => resetn );

    -- redist48_sync_in_aunroll_x_in_c0_eni1_1_13(DELAY,2688)
    redist48_sync_in_aunroll_x_in_c0_eni1_1_13 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist47_sync_in_aunroll_x_in_c0_eni1_1_12_q, xout => redist48_sync_in_aunroll_x_in_c0_eni1_1_13_q, clk => clock, aclr => resetn );

    -- redist49_sync_in_aunroll_x_in_c0_eni1_1_14(DELAY,2689)
    redist49_sync_in_aunroll_x_in_c0_eni1_1_14 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist48_sync_in_aunroll_x_in_c0_eni1_1_13_q, xout => redist49_sync_in_aunroll_x_in_c0_eni1_1_14_q, clk => clock, aclr => resetn );

    -- redist50_sync_in_aunroll_x_in_c0_eni1_1_15(DELAY,2690)
    redist50_sync_in_aunroll_x_in_c0_eni1_1_15 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist49_sync_in_aunroll_x_in_c0_eni1_1_14_q, xout => redist50_sync_in_aunroll_x_in_c0_eni1_1_15_q, clk => clock, aclr => resetn );

    -- redist51_sync_in_aunroll_x_in_c0_eni1_1_16(DELAY,2691)
    redist51_sync_in_aunroll_x_in_c0_eni1_1_16 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist50_sync_in_aunroll_x_in_c0_eni1_1_15_q, xout => redist51_sync_in_aunroll_x_in_c0_eni1_1_16_q, clk => clock, aclr => resetn );

    -- redist52_sync_in_aunroll_x_in_c0_eni1_1_17(DELAY,2692)
    redist52_sync_in_aunroll_x_in_c0_eni1_1_17 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist51_sync_in_aunroll_x_in_c0_eni1_1_16_q, xout => redist52_sync_in_aunroll_x_in_c0_eni1_1_17_q, clk => clock, aclr => resetn );

    -- redist53_sync_in_aunroll_x_in_c0_eni1_1_18(DELAY,2693)
    redist53_sync_in_aunroll_x_in_c0_eni1_1_18 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist52_sync_in_aunroll_x_in_c0_eni1_1_17_q, xout => redist53_sync_in_aunroll_x_in_c0_eni1_1_18_q, clk => clock, aclr => resetn );

    -- redist54_sync_in_aunroll_x_in_c0_eni1_1_19(DELAY,2694)
    redist54_sync_in_aunroll_x_in_c0_eni1_1_19 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist53_sync_in_aunroll_x_in_c0_eni1_1_18_q, xout => redist54_sync_in_aunroll_x_in_c0_eni1_1_19_q, clk => clock, aclr => resetn );

    -- redist55_sync_in_aunroll_x_in_c0_eni1_1_20(DELAY,2695)
    redist55_sync_in_aunroll_x_in_c0_eni1_1_20 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist54_sync_in_aunroll_x_in_c0_eni1_1_19_q, xout => redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q, clk => clock, aclr => resetn );

    -- leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x(MUX,821)@33
    leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_s <= VCC_q;
    leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_combproc: PROCESS (leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_s, redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q, leftShiftStage0Idx1_uid820_i_mul10_masked6163_conv_conv231_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_q <= redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q;
            WHEN "1" => leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage0Idx1_uid820_i_mul10_masked6163_conv_conv231_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x(MUX,826)@33
    leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_s <= VCC_q;
    leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_combproc: PROCESS (leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_s, leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_q, leftShiftStage1Idx1_uid825_i_mul10_masked6163_conv_conv231_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage0_uid822_i_mul10_masked6163_conv_conv231_shift_x_q;
            WHEN "1" => leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage1Idx1_uid825_i_mul10_masked6163_conv_conv231_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x(MUX,831)@33
    leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_s <= VCC_q;
    leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_combproc: PROCESS (leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_s, leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_q, leftShiftStage2Idx1_uid830_i_mul10_masked6163_conv_conv231_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage1_uid827_i_mul10_masked6163_conv_conv231_shift_x_q;
            WHEN "1" => leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage2Idx1_uid830_i_mul10_masked6163_conv_conv231_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x(MUX,836)@33
    leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_s <= VCC_q;
    leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_combproc: PROCESS (leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_s, leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_q, leftShiftStage3Idx1_uid835_i_mul10_masked6163_conv_conv231_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage2_uid832_i_mul10_masked6163_conv_conv231_shift_x_q;
            WHEN "1" => leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage3Idx1_uid835_i_mul10_masked6163_conv_conv231_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x(MUX,841)@33
    leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x_s <= VCC_q;
    leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x_combproc: PROCESS (leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x_s, leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_q, leftShiftStage4Idx1_uid840_i_mul10_masked6163_conv_conv231_shift_x_q)
    BEGIN
        CASE (leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x_s) IS
            WHEN "0" => leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage3_uid837_i_mul10_masked6163_conv_conv231_shift_x_q;
            WHEN "1" => leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x_q <= leftShiftStage4Idx1_uid840_i_mul10_masked6163_conv_conv231_shift_x_q;
            WHEN OTHERS => leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked6163_conv_vt_select_31(BITSELECT,603)@33
    i_mul10_masked6163_conv_vt_select_31_b <= leftShiftStage4_uid842_i_mul10_masked6163_conv_conv231_shift_x_q(31 downto 31);

    -- i_mul10_masked6163_conv_vt_join(BITJOIN,602)@33
    i_mul10_masked6163_conv_vt_join_q <= i_mul10_masked6163_conv_vt_select_31_b & i_mul10_masked6163_conv_vt_const_30_q;

    -- leftShiftStage1Idx1Rng1_uid853_i_mul9_conv_conv6_shift_x(BITSELECT,852)@33
    leftShiftStage1Idx1Rng1_uid853_i_mul9_conv_conv6_shift_x_in <= leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid853_i_mul9_conv_conv6_shift_x_b <= leftShiftStage1Idx1Rng1_uid853_i_mul9_conv_conv6_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid854_i_mul9_conv_conv6_shift_x(BITJOIN,853)@33
    leftShiftStage1Idx1_uid854_i_mul9_conv_conv6_shift_x_q <= leftShiftStage1Idx1Rng1_uid853_i_mul9_conv_conv6_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng2_uid848_i_mul9_conv_conv6_shift_x(BITSELECT,847)@33
    leftShiftStage0Idx1Rng2_uid848_i_mul9_conv_conv6_shift_x_in <= i_syncbuf_n_elem_sync_buffer93_conv_out_buffer_out(29 downto 0);
    leftShiftStage0Idx1Rng2_uid848_i_mul9_conv_conv6_shift_x_b <= leftShiftStage0Idx1Rng2_uid848_i_mul9_conv_conv6_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid849_i_mul9_conv_conv6_shift_x(BITJOIN,848)@33
    leftShiftStage0Idx1_uid849_i_mul9_conv_conv6_shift_x_q <= leftShiftStage0Idx1Rng2_uid848_i_mul9_conv_conv6_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- i_syncbuf_n_elem_sync_buffer93_conv(BLACKBOX,638)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_n_elem_sync_buffer93_conv : i_syncbuf_n_elem_sync_buffer93_conv4
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist75_sync_in_aunroll_x_in_i_valid_20_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer93_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x(MUX,850)@33
    leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_s <= VCC_q;
    leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_combproc: PROCESS (leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_s, i_syncbuf_n_elem_sync_buffer93_conv_out_buffer_out, leftShiftStage0Idx1_uid849_i_mul9_conv_conv6_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_q <= i_syncbuf_n_elem_sync_buffer93_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_q <= leftShiftStage0Idx1_uid849_i_mul9_conv_conv6_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x(MUX,855)@33
    leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x_s <= VCC_q;
    leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x_combproc: PROCESS (leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x_s, leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_q, leftShiftStage1Idx1_uid854_i_mul9_conv_conv6_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x_q <= leftShiftStage0_uid851_i_mul9_conv_conv6_shift_x_q;
            WHEN "1" => leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x_q <= leftShiftStage1Idx1_uid854_i_mul9_conv_conv6_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul9_conv_vt_select_31(BITSELECT,608)@33
    i_mul9_conv_vt_select_31_b <= leftShiftStage1_uid856_i_mul9_conv_conv6_shift_x_q(31 downto 3);

    -- i_mul10_add10_conv_vt_const_2(CONSTANT,527)
    i_mul10_add10_conv_vt_const_2_q <= "000";

    -- i_mul9_conv_vt_join(BITJOIN,607)@33
    i_mul9_conv_vt_join_q <= i_mul9_conv_vt_select_31_b & i_mul10_add10_conv_vt_const_2_q;

    -- i_unnamed_conv232(LOGICAL,748)@33
    i_unnamed_conv232_q <= i_mul9_conv_vt_join_q and i_mul10_masked6163_conv_vt_join_q;

    -- i_unnamed_conv232_vt_select_31(BITSELECT,751)@33
    i_unnamed_conv232_vt_select_31_b <= i_unnamed_conv232_q(31 downto 31);

    -- redist9_i_unnamed_conv232_vt_select_31_b_8(DELAY,2649)
    redist9_i_unnamed_conv232_vt_select_31_b_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv232_vt_select_31_b, xout => redist9_i_unnamed_conv232_vt_select_31_b_8_q, clk => clock, aclr => resetn );

    -- i_mul10_masked6163_conv_vt_const_30(CONSTANT,601)
    i_mul10_masked6163_conv_vt_const_30_q <= "0000000000000000000000000000000";

    -- i_unnamed_conv232_vt_join(BITJOIN,750)@41
    i_unnamed_conv232_vt_join_q <= redist9_i_unnamed_conv232_vt_select_31_b_8_q & i_mul10_masked6163_conv_vt_const_30_q;

    -- leftShiftStage3Idx1Rng2_uid2023_i_unnamed_conv230_shift_x(BITSELECT,2022)@33
    leftShiftStage3Idx1Rng2_uid2023_i_unnamed_conv230_shift_x_in <= leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_q(29 downto 0);
    leftShiftStage3Idx1Rng2_uid2023_i_unnamed_conv230_shift_x_b <= leftShiftStage3Idx1Rng2_uid2023_i_unnamed_conv230_shift_x_in(29 downto 0);

    -- leftShiftStage3Idx1_uid2024_i_unnamed_conv230_shift_x(BITJOIN,2023)@33
    leftShiftStage3Idx1_uid2024_i_unnamed_conv230_shift_x_q <= leftShiftStage3Idx1Rng2_uid2023_i_unnamed_conv230_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage2Idx1Rng4_uid2018_i_unnamed_conv230_shift_x(BITSELECT,2017)@33
    leftShiftStage2Idx1Rng4_uid2018_i_unnamed_conv230_shift_x_in <= leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid2018_i_unnamed_conv230_shift_x_b <= leftShiftStage2Idx1Rng4_uid2018_i_unnamed_conv230_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid2019_i_unnamed_conv230_shift_x(BITJOIN,2018)@33
    leftShiftStage2Idx1_uid2019_i_unnamed_conv230_shift_x_q <= leftShiftStage2Idx1Rng4_uid2018_i_unnamed_conv230_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid2013_i_unnamed_conv230_shift_x(BITSELECT,2012)@33
    leftShiftStage1Idx1Rng8_uid2013_i_unnamed_conv230_shift_x_in <= leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid2013_i_unnamed_conv230_shift_x_b <= leftShiftStage1Idx1Rng8_uid2013_i_unnamed_conv230_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid2014_i_unnamed_conv230_shift_x(BITJOIN,2013)@33
    leftShiftStage1Idx1_uid2014_i_unnamed_conv230_shift_x_q <= leftShiftStage1Idx1Rng8_uid2013_i_unnamed_conv230_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid2008_i_unnamed_conv230_shift_x(BITSELECT,2007)@33
    leftShiftStage0Idx1Rng16_uid2008_i_unnamed_conv230_shift_x_in <= i_mul10_masked59_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2008_i_unnamed_conv230_shift_x_b <= leftShiftStage0Idx1Rng16_uid2008_i_unnamed_conv230_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2009_i_unnamed_conv230_shift_x(BITJOIN,2008)@33
    leftShiftStage0Idx1_uid2009_i_unnamed_conv230_shift_x_q <= leftShiftStage0Idx1Rng16_uid2008_i_unnamed_conv230_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage0Idx1Rng4_uid1971_i_unnamed_conv226_shift_x(BITSELECT,1970)@33
    leftShiftStage0Idx1Rng4_uid1971_i_unnamed_conv226_shift_x_in <= i_syncbuf_n_elem_sync_buffer_conv_out_buffer_out(27 downto 0);
    leftShiftStage0Idx1Rng4_uid1971_i_unnamed_conv226_shift_x_b <= leftShiftStage0Idx1Rng4_uid1971_i_unnamed_conv226_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid1972_i_unnamed_conv226_shift_x(BITJOIN,1971)@33
    leftShiftStage0Idx1_uid1972_i_unnamed_conv226_shift_x_q <= leftShiftStage0Idx1Rng4_uid1971_i_unnamed_conv226_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- i_syncbuf_n_elem_sync_buffer_conv(BLACKBOX,639)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_n_elem_sync_buffer_conv : i_syncbuf_n_elem_sync_buffer_conv223
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist75_sync_in_aunroll_x_in_i_valid_20_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1974_i_unnamed_conv226_shift_x(MUX,1973)@33
    leftShiftStage0_uid1974_i_unnamed_conv226_shift_x_s <= VCC_q;
    leftShiftStage0_uid1974_i_unnamed_conv226_shift_x_combproc: PROCESS (leftShiftStage0_uid1974_i_unnamed_conv226_shift_x_s, i_syncbuf_n_elem_sync_buffer_conv_out_buffer_out, leftShiftStage0Idx1_uid1972_i_unnamed_conv226_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1974_i_unnamed_conv226_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1974_i_unnamed_conv226_shift_x_q <= i_syncbuf_n_elem_sync_buffer_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1974_i_unnamed_conv226_shift_x_q <= leftShiftStage0Idx1_uid1972_i_unnamed_conv226_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1974_i_unnamed_conv226_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv225_vt_select_31(BITSELECT,744)@33
    i_unnamed_conv225_vt_select_31_b <= leftShiftStage0_uid1974_i_unnamed_conv226_shift_x_q(31 downto 4);

    -- i_unnamed_conv225_vt_join(BITJOIN,743)@33
    i_unnamed_conv225_vt_join_q <= i_unnamed_conv225_vt_select_31_b & i_unnamed_conv21_vt_const_3_q;

    -- xMSB_uid1977_i_unnamed_conv228_shift_x(BITSELECT,1976)@33
    xMSB_uid1977_i_unnamed_conv228_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv225_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1999_i_unnamed_conv228_shift_x(BITSELECT,1998)@33
    rightShiftStage4Idx1Rng1_uid1999_i_unnamed_conv228_shift_x_b <= rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2000_i_unnamed_conv228_shift_x(BITJOIN,1999)@33
    rightShiftStage4Idx1_uid2000_i_unnamed_conv228_shift_x_q <= xMSB_uid1977_i_unnamed_conv228_shift_x_b & rightShiftStage4Idx1Rng1_uid1999_i_unnamed_conv228_shift_x_b;

    -- seMsb_to2_uid1994(BITSELECT,1993)@33
    seMsb_to2_uid1994_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1977_i_unnamed_conv228_shift_x_b(0)) & xMSB_uid1977_i_unnamed_conv228_shift_x_b));
    seMsb_to2_uid1994_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1994_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1995_i_unnamed_conv228_shift_x(BITSELECT,1994)@33
    rightShiftStage3Idx1Rng2_uid1995_i_unnamed_conv228_shift_x_b <= rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1996_i_unnamed_conv228_shift_x(BITJOIN,1995)@33
    rightShiftStage3Idx1_uid1996_i_unnamed_conv228_shift_x_q <= seMsb_to2_uid1994_b & rightShiftStage3Idx1Rng2_uid1995_i_unnamed_conv228_shift_x_b;

    -- seMsb_to4_uid1989(BITSELECT,1988)@33
    seMsb_to4_uid1989_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1977_i_unnamed_conv228_shift_x_b(0)) & xMSB_uid1977_i_unnamed_conv228_shift_x_b));
    seMsb_to4_uid1989_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1989_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1990_i_unnamed_conv228_shift_x(BITSELECT,1989)@33
    rightShiftStage2Idx1Rng4_uid1990_i_unnamed_conv228_shift_x_b <= rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1991_i_unnamed_conv228_shift_x(BITJOIN,1990)@33
    rightShiftStage2Idx1_uid1991_i_unnamed_conv228_shift_x_q <= seMsb_to4_uid1989_b & rightShiftStage2Idx1Rng4_uid1990_i_unnamed_conv228_shift_x_b;

    -- seMsb_to8_uid1984(BITSELECT,1983)@33
    seMsb_to8_uid1984_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1977_i_unnamed_conv228_shift_x_b(0)) & xMSB_uid1977_i_unnamed_conv228_shift_x_b));
    seMsb_to8_uid1984_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1984_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1985_i_unnamed_conv228_shift_x(BITSELECT,1984)@33
    rightShiftStage1Idx1Rng8_uid1985_i_unnamed_conv228_shift_x_b <= rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1986_i_unnamed_conv228_shift_x(BITJOIN,1985)@33
    rightShiftStage1Idx1_uid1986_i_unnamed_conv228_shift_x_q <= seMsb_to8_uid1984_b & rightShiftStage1Idx1Rng8_uid1985_i_unnamed_conv228_shift_x_b;

    -- seMsb_to16_uid1979(BITSELECT,1978)@33
    seMsb_to16_uid1979_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1977_i_unnamed_conv228_shift_x_b(0)) & xMSB_uid1977_i_unnamed_conv228_shift_x_b));
    seMsb_to16_uid1979_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1979_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1980_i_unnamed_conv228_shift_x(BITSELECT,1979)@33
    rightShiftStage0Idx1Rng16_uid1980_i_unnamed_conv228_shift_x_b <= i_unnamed_conv225_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1981_i_unnamed_conv228_shift_x(BITJOIN,1980)@33
    rightShiftStage0Idx1_uid1981_i_unnamed_conv228_shift_x_q <= seMsb_to16_uid1979_b & rightShiftStage0Idx1Rng16_uid1980_i_unnamed_conv228_shift_x_b;

    -- rightShiftStage0_uid1983_i_unnamed_conv228_shift_x(MUX,1982)@33
    rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_s <= VCC_q;
    rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_combproc: PROCESS (rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_s, i_unnamed_conv225_vt_join_q, rightShiftStage0Idx1_uid1981_i_unnamed_conv228_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_q <= i_unnamed_conv225_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_q <= rightShiftStage0Idx1_uid1981_i_unnamed_conv228_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1988_i_unnamed_conv228_shift_x(MUX,1987)@33
    rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_s <= VCC_q;
    rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_combproc: PROCESS (rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_s, rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_q, rightShiftStage1Idx1_uid1986_i_unnamed_conv228_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_q <= rightShiftStage0_uid1983_i_unnamed_conv228_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_q <= rightShiftStage1Idx1_uid1986_i_unnamed_conv228_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1993_i_unnamed_conv228_shift_x(MUX,1992)@33
    rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_s <= VCC_q;
    rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_combproc: PROCESS (rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_s, rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_q, rightShiftStage2Idx1_uid1991_i_unnamed_conv228_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_q <= rightShiftStage1_uid1988_i_unnamed_conv228_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_q <= rightShiftStage2Idx1_uid1991_i_unnamed_conv228_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1998_i_unnamed_conv228_shift_x(MUX,1997)@33
    rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_s <= VCC_q;
    rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_combproc: PROCESS (rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_s, rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_q, rightShiftStage3Idx1_uid1996_i_unnamed_conv228_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_q <= rightShiftStage2_uid1993_i_unnamed_conv228_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_q <= rightShiftStage3Idx1_uid1996_i_unnamed_conv228_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2002_i_unnamed_conv228_shift_x(MUX,2001)@33
    rightShiftStage4_uid2002_i_unnamed_conv228_shift_x_s <= VCC_q;
    rightShiftStage4_uid2002_i_unnamed_conv228_shift_x_combproc: PROCESS (rightShiftStage4_uid2002_i_unnamed_conv228_shift_x_s, rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_q, rightShiftStage4Idx1_uid2000_i_unnamed_conv228_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2002_i_unnamed_conv228_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2002_i_unnamed_conv228_shift_x_q <= rightShiftStage3_uid1998_i_unnamed_conv228_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2002_i_unnamed_conv228_shift_x_q <= rightShiftStage4Idx1_uid2000_i_unnamed_conv228_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2002_i_unnamed_conv228_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked59_conv(LOGICAL,599)@33
    i_mul10_masked59_conv_q <= rightShiftStage4_uid2002_i_unnamed_conv228_shift_x_q and redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q;

    -- leftShiftStage0_uid2011_i_unnamed_conv230_shift_x(MUX,2010)@33
    leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_s <= VCC_q;
    leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_combproc: PROCESS (leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_s, i_mul10_masked59_conv_q, leftShiftStage0Idx1_uid2009_i_unnamed_conv230_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_q <= i_mul10_masked59_conv_q;
            WHEN "1" => leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_q <= leftShiftStage0Idx1_uid2009_i_unnamed_conv230_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2016_i_unnamed_conv230_shift_x(MUX,2015)@33
    leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_s <= VCC_q;
    leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_combproc: PROCESS (leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_s, leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_q, leftShiftStage1Idx1_uid2014_i_unnamed_conv230_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_q <= leftShiftStage0_uid2011_i_unnamed_conv230_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_q <= leftShiftStage1Idx1_uid2014_i_unnamed_conv230_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2021_i_unnamed_conv230_shift_x(MUX,2020)@33
    leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_s <= VCC_q;
    leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_combproc: PROCESS (leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_s, leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_q, leftShiftStage2Idx1_uid2019_i_unnamed_conv230_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_q <= leftShiftStage1_uid2016_i_unnamed_conv230_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_q <= leftShiftStage2Idx1_uid2019_i_unnamed_conv230_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid2026_i_unnamed_conv230_shift_x(MUX,2025)@33
    leftShiftStage3_uid2026_i_unnamed_conv230_shift_x_s <= VCC_q;
    leftShiftStage3_uid2026_i_unnamed_conv230_shift_x_combproc: PROCESS (leftShiftStage3_uid2026_i_unnamed_conv230_shift_x_s, leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_q, leftShiftStage3Idx1_uid2024_i_unnamed_conv230_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid2026_i_unnamed_conv230_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid2026_i_unnamed_conv230_shift_x_q <= leftShiftStage2_uid2021_i_unnamed_conv230_shift_x_q;
            WHEN "1" => leftShiftStage3_uid2026_i_unnamed_conv230_shift_x_q <= leftShiftStage3Idx1_uid2024_i_unnamed_conv230_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid2026_i_unnamed_conv230_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv229_vt_select_31(BITSELECT,747)@33
    i_unnamed_conv229_vt_select_31_b <= leftShiftStage3_uid2026_i_unnamed_conv230_shift_x_q(31 downto 30);

    -- redist10_i_unnamed_conv229_vt_select_31_b_7(DELAY,2650)
    redist10_i_unnamed_conv229_vt_select_31_b_7 : dspba_delay
    GENERIC MAP ( width => 2, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv229_vt_select_31_b, xout => redist10_i_unnamed_conv229_vt_select_31_b_7_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv17_vt_const_29(CONSTANT,703)
    i_unnamed_conv17_vt_const_29_q <= "000000000000000000000000000000";

    -- i_unnamed_conv229_vt_join(BITJOIN,746)@40
    i_unnamed_conv229_vt_join_q <= redist10_i_unnamed_conv229_vt_select_31_b_7_q & i_unnamed_conv17_vt_const_29_q;

    -- leftShiftStage3Idx1Rng1_uid1962_i_unnamed_conv222_shift_x(BITSELECT,1961)@33
    leftShiftStage3Idx1Rng1_uid1962_i_unnamed_conv222_shift_x_in <= leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid1962_i_unnamed_conv222_shift_x_b <= leftShiftStage3Idx1Rng1_uid1962_i_unnamed_conv222_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid1963_i_unnamed_conv222_shift_x(BITJOIN,1962)@33
    leftShiftStage3Idx1_uid1963_i_unnamed_conv222_shift_x_q <= leftShiftStage3Idx1Rng1_uid1962_i_unnamed_conv222_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng4_uid1957_i_unnamed_conv222_shift_x(BITSELECT,1956)@33
    leftShiftStage2Idx1Rng4_uid1957_i_unnamed_conv222_shift_x_in <= leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid1957_i_unnamed_conv222_shift_x_b <= leftShiftStage2Idx1Rng4_uid1957_i_unnamed_conv222_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid1958_i_unnamed_conv222_shift_x(BITJOIN,1957)@33
    leftShiftStage2Idx1_uid1958_i_unnamed_conv222_shift_x_q <= leftShiftStage2Idx1Rng4_uid1957_i_unnamed_conv222_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid1952_i_unnamed_conv222_shift_x(BITSELECT,1951)@33
    leftShiftStage1Idx1Rng8_uid1952_i_unnamed_conv222_shift_x_in <= leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1952_i_unnamed_conv222_shift_x_b <= leftShiftStage1Idx1Rng8_uid1952_i_unnamed_conv222_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1953_i_unnamed_conv222_shift_x(BITJOIN,1952)@33
    leftShiftStage1Idx1_uid1953_i_unnamed_conv222_shift_x_q <= leftShiftStage1Idx1Rng8_uid1952_i_unnamed_conv222_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1947_i_unnamed_conv222_shift_x(BITSELECT,1946)@33
    leftShiftStage0Idx1Rng16_uid1947_i_unnamed_conv222_shift_x_in <= i_mul10_masked57_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1947_i_unnamed_conv222_shift_x_b <= leftShiftStage0Idx1Rng16_uid1947_i_unnamed_conv222_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1948_i_unnamed_conv222_shift_x(BITJOIN,1947)@33
    leftShiftStage0Idx1_uid1948_i_unnamed_conv222_shift_x_q <= leftShiftStage0Idx1Rng16_uid1947_i_unnamed_conv222_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage1Idx1Rng1_uid1901_i_unnamed_conv218_shift_x(BITSELECT,1900)@33
    leftShiftStage1Idx1Rng1_uid1901_i_unnamed_conv218_shift_x_in <= leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1901_i_unnamed_conv218_shift_x_b <= leftShiftStage1Idx1Rng1_uid1901_i_unnamed_conv218_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1902_i_unnamed_conv218_shift_x(BITJOIN,1901)@33
    leftShiftStage1Idx1_uid1902_i_unnamed_conv218_shift_x_q <= leftShiftStage1Idx1Rng1_uid1901_i_unnamed_conv218_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng4_uid1896_i_unnamed_conv218_shift_x(BITSELECT,1895)@33
    leftShiftStage0Idx1Rng4_uid1896_i_unnamed_conv218_shift_x_in <= i_syncbuf_n_elem_sync_buffer64_conv_out_buffer_out(27 downto 0);
    leftShiftStage0Idx1Rng4_uid1896_i_unnamed_conv218_shift_x_b <= leftShiftStage0Idx1Rng4_uid1896_i_unnamed_conv218_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid1897_i_unnamed_conv218_shift_x(BITJOIN,1896)@33
    leftShiftStage0Idx1_uid1897_i_unnamed_conv218_shift_x_q <= leftShiftStage0Idx1Rng4_uid1896_i_unnamed_conv218_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- i_syncbuf_n_elem_sync_buffer64_conv(BLACKBOX,610)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_n_elem_sync_buffer64_conv : i_syncbuf_n_elem_sync_buffer64_conv215
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist75_sync_in_aunroll_x_in_i_valid_20_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer64_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1899_i_unnamed_conv218_shift_x(MUX,1898)@33
    leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_s <= VCC_q;
    leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_combproc: PROCESS (leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_s, i_syncbuf_n_elem_sync_buffer64_conv_out_buffer_out, leftShiftStage0Idx1_uid1897_i_unnamed_conv218_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_q <= i_syncbuf_n_elem_sync_buffer64_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_q <= leftShiftStage0Idx1_uid1897_i_unnamed_conv218_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1904_i_unnamed_conv218_shift_x(MUX,1903)@33
    leftShiftStage1_uid1904_i_unnamed_conv218_shift_x_s <= VCC_q;
    leftShiftStage1_uid1904_i_unnamed_conv218_shift_x_combproc: PROCESS (leftShiftStage1_uid1904_i_unnamed_conv218_shift_x_s, leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_q, leftShiftStage1Idx1_uid1902_i_unnamed_conv218_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1904_i_unnamed_conv218_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1904_i_unnamed_conv218_shift_x_q <= leftShiftStage0_uid1899_i_unnamed_conv218_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1904_i_unnamed_conv218_shift_x_q <= leftShiftStage1Idx1_uid1902_i_unnamed_conv218_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1904_i_unnamed_conv218_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv217_vt_select_31(BITSELECT,735)@33
    i_unnamed_conv217_vt_select_31_b <= leftShiftStage1_uid1904_i_unnamed_conv218_shift_x_q(31 downto 5);

    -- i_unnamed_conv217_vt_const_4(CONSTANT,733)
    i_unnamed_conv217_vt_const_4_q <= "00000";

    -- i_unnamed_conv217_vt_join(BITJOIN,734)@33
    i_unnamed_conv217_vt_join_q <= i_unnamed_conv217_vt_select_31_b & i_unnamed_conv217_vt_const_4_q;

    -- xMSB_uid1916_i_unnamed_conv220_shift_x(BITSELECT,1915)@33
    xMSB_uid1916_i_unnamed_conv220_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv217_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1938_i_unnamed_conv220_shift_x(BITSELECT,1937)@33
    rightShiftStage4Idx1Rng1_uid1938_i_unnamed_conv220_shift_x_b <= rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1939_i_unnamed_conv220_shift_x(BITJOIN,1938)@33
    rightShiftStage4Idx1_uid1939_i_unnamed_conv220_shift_x_q <= xMSB_uid1916_i_unnamed_conv220_shift_x_b & rightShiftStage4Idx1Rng1_uid1938_i_unnamed_conv220_shift_x_b;

    -- seMsb_to2_uid1933(BITSELECT,1932)@33
    seMsb_to2_uid1933_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1916_i_unnamed_conv220_shift_x_b(0)) & xMSB_uid1916_i_unnamed_conv220_shift_x_b));
    seMsb_to2_uid1933_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1933_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1934_i_unnamed_conv220_shift_x(BITSELECT,1933)@33
    rightShiftStage3Idx1Rng2_uid1934_i_unnamed_conv220_shift_x_b <= rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1935_i_unnamed_conv220_shift_x(BITJOIN,1934)@33
    rightShiftStage3Idx1_uid1935_i_unnamed_conv220_shift_x_q <= seMsb_to2_uid1933_b & rightShiftStage3Idx1Rng2_uid1934_i_unnamed_conv220_shift_x_b;

    -- seMsb_to4_uid1928(BITSELECT,1927)@33
    seMsb_to4_uid1928_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1916_i_unnamed_conv220_shift_x_b(0)) & xMSB_uid1916_i_unnamed_conv220_shift_x_b));
    seMsb_to4_uid1928_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1928_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1929_i_unnamed_conv220_shift_x(BITSELECT,1928)@33
    rightShiftStage2Idx1Rng4_uid1929_i_unnamed_conv220_shift_x_b <= rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1930_i_unnamed_conv220_shift_x(BITJOIN,1929)@33
    rightShiftStage2Idx1_uid1930_i_unnamed_conv220_shift_x_q <= seMsb_to4_uid1928_b & rightShiftStage2Idx1Rng4_uid1929_i_unnamed_conv220_shift_x_b;

    -- seMsb_to8_uid1923(BITSELECT,1922)@33
    seMsb_to8_uid1923_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1916_i_unnamed_conv220_shift_x_b(0)) & xMSB_uid1916_i_unnamed_conv220_shift_x_b));
    seMsb_to8_uid1923_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1923_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1924_i_unnamed_conv220_shift_x(BITSELECT,1923)@33
    rightShiftStage1Idx1Rng8_uid1924_i_unnamed_conv220_shift_x_b <= rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1925_i_unnamed_conv220_shift_x(BITJOIN,1924)@33
    rightShiftStage1Idx1_uid1925_i_unnamed_conv220_shift_x_q <= seMsb_to8_uid1923_b & rightShiftStage1Idx1Rng8_uid1924_i_unnamed_conv220_shift_x_b;

    -- seMsb_to16_uid1918(BITSELECT,1917)@33
    seMsb_to16_uid1918_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1916_i_unnamed_conv220_shift_x_b(0)) & xMSB_uid1916_i_unnamed_conv220_shift_x_b));
    seMsb_to16_uid1918_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1918_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1919_i_unnamed_conv220_shift_x(BITSELECT,1918)@33
    rightShiftStage0Idx1Rng16_uid1919_i_unnamed_conv220_shift_x_b <= i_unnamed_conv217_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1920_i_unnamed_conv220_shift_x(BITJOIN,1919)@33
    rightShiftStage0Idx1_uid1920_i_unnamed_conv220_shift_x_q <= seMsb_to16_uid1918_b & rightShiftStage0Idx1Rng16_uid1919_i_unnamed_conv220_shift_x_b;

    -- rightShiftStage0_uid1922_i_unnamed_conv220_shift_x(MUX,1921)@33
    rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_s <= VCC_q;
    rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_combproc: PROCESS (rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_s, i_unnamed_conv217_vt_join_q, rightShiftStage0Idx1_uid1920_i_unnamed_conv220_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_q <= i_unnamed_conv217_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_q <= rightShiftStage0Idx1_uid1920_i_unnamed_conv220_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1927_i_unnamed_conv220_shift_x(MUX,1926)@33
    rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_s <= VCC_q;
    rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_combproc: PROCESS (rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_s, rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_q, rightShiftStage1Idx1_uid1925_i_unnamed_conv220_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_q <= rightShiftStage0_uid1922_i_unnamed_conv220_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_q <= rightShiftStage1Idx1_uid1925_i_unnamed_conv220_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1932_i_unnamed_conv220_shift_x(MUX,1931)@33
    rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_s <= VCC_q;
    rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_combproc: PROCESS (rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_s, rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_q, rightShiftStage2Idx1_uid1930_i_unnamed_conv220_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_q <= rightShiftStage1_uid1927_i_unnamed_conv220_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_q <= rightShiftStage2Idx1_uid1930_i_unnamed_conv220_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1937_i_unnamed_conv220_shift_x(MUX,1936)@33
    rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_s <= VCC_q;
    rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_combproc: PROCESS (rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_s, rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_q, rightShiftStage3Idx1_uid1935_i_unnamed_conv220_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_q <= rightShiftStage2_uid1932_i_unnamed_conv220_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_q <= rightShiftStage3Idx1_uid1935_i_unnamed_conv220_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1941_i_unnamed_conv220_shift_x(MUX,1940)@33
    rightShiftStage4_uid1941_i_unnamed_conv220_shift_x_s <= VCC_q;
    rightShiftStage4_uid1941_i_unnamed_conv220_shift_x_combproc: PROCESS (rightShiftStage4_uid1941_i_unnamed_conv220_shift_x_s, rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_q, rightShiftStage4Idx1_uid1939_i_unnamed_conv220_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1941_i_unnamed_conv220_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1941_i_unnamed_conv220_shift_x_q <= rightShiftStage3_uid1937_i_unnamed_conv220_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1941_i_unnamed_conv220_shift_x_q <= rightShiftStage4Idx1_uid1939_i_unnamed_conv220_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1941_i_unnamed_conv220_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked57_conv(LOGICAL,598)@33
    i_mul10_masked57_conv_q <= rightShiftStage4_uid1941_i_unnamed_conv220_shift_x_q and redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q;

    -- leftShiftStage0_uid1950_i_unnamed_conv222_shift_x(MUX,1949)@33
    leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_s <= VCC_q;
    leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_combproc: PROCESS (leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_s, i_mul10_masked57_conv_q, leftShiftStage0Idx1_uid1948_i_unnamed_conv222_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_q <= i_mul10_masked57_conv_q;
            WHEN "1" => leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_q <= leftShiftStage0Idx1_uid1948_i_unnamed_conv222_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1955_i_unnamed_conv222_shift_x(MUX,1954)@33
    leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_s <= VCC_q;
    leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_combproc: PROCESS (leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_s, leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_q, leftShiftStage1Idx1_uid1953_i_unnamed_conv222_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_q <= leftShiftStage0_uid1950_i_unnamed_conv222_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_q <= leftShiftStage1Idx1_uid1953_i_unnamed_conv222_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1960_i_unnamed_conv222_shift_x(MUX,1959)@33
    leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_s <= VCC_q;
    leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_combproc: PROCESS (leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_s, leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_q, leftShiftStage2Idx1_uid1958_i_unnamed_conv222_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_q <= leftShiftStage1_uid1955_i_unnamed_conv222_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_q <= leftShiftStage2Idx1_uid1958_i_unnamed_conv222_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1965_i_unnamed_conv222_shift_x(MUX,1964)@33
    leftShiftStage3_uid1965_i_unnamed_conv222_shift_x_s <= VCC_q;
    leftShiftStage3_uid1965_i_unnamed_conv222_shift_x_combproc: PROCESS (leftShiftStage3_uid1965_i_unnamed_conv222_shift_x_s, leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_q, leftShiftStage3Idx1_uid1963_i_unnamed_conv222_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1965_i_unnamed_conv222_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1965_i_unnamed_conv222_shift_x_q <= leftShiftStage2_uid1960_i_unnamed_conv222_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1965_i_unnamed_conv222_shift_x_q <= leftShiftStage3Idx1_uid1963_i_unnamed_conv222_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1965_i_unnamed_conv222_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv221_vt_select_31(BITSELECT,741)@33
    i_unnamed_conv221_vt_select_31_b <= leftShiftStage3_uid1965_i_unnamed_conv222_shift_x_q(31 downto 29);

    -- redist11_i_unnamed_conv221_vt_select_31_b_6(DELAY,2651)
    redist11_i_unnamed_conv221_vt_select_31_b_6 : dspba_delay
    GENERIC MAP ( width => 3, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv221_vt_select_31_b, xout => redist11_i_unnamed_conv221_vt_select_31_b_6_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv221_vt_const_28(CONSTANT,739)
    i_unnamed_conv221_vt_const_28_q <= "00000000000000000000000000000";

    -- i_unnamed_conv221_vt_join(BITJOIN,740)@39
    i_unnamed_conv221_vt_join_q <= redist11_i_unnamed_conv221_vt_select_31_b_6_q & i_unnamed_conv221_vt_const_28_q;

    -- leftShiftStage2Idx1Rng4_uid1887_i_unnamed_conv214_shift_x(BITSELECT,1886)@33
    leftShiftStage2Idx1Rng4_uid1887_i_unnamed_conv214_shift_x_in <= leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid1887_i_unnamed_conv214_shift_x_b <= leftShiftStage2Idx1Rng4_uid1887_i_unnamed_conv214_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid1888_i_unnamed_conv214_shift_x(BITJOIN,1887)@33
    leftShiftStage2Idx1_uid1888_i_unnamed_conv214_shift_x_q <= leftShiftStage2Idx1Rng4_uid1887_i_unnamed_conv214_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid1882_i_unnamed_conv214_shift_x(BITSELECT,1881)@33
    leftShiftStage1Idx1Rng8_uid1882_i_unnamed_conv214_shift_x_in <= leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1882_i_unnamed_conv214_shift_x_b <= leftShiftStage1Idx1Rng8_uid1882_i_unnamed_conv214_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1883_i_unnamed_conv214_shift_x(BITJOIN,1882)@33
    leftShiftStage1Idx1_uid1883_i_unnamed_conv214_shift_x_q <= leftShiftStage1Idx1Rng8_uid1882_i_unnamed_conv214_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1877_i_unnamed_conv214_shift_x(BITSELECT,1876)@33
    leftShiftStage0Idx1Rng16_uid1877_i_unnamed_conv214_shift_x_in <= i_mul10_masked55_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1877_i_unnamed_conv214_shift_x_b <= leftShiftStage0Idx1Rng16_uid1877_i_unnamed_conv214_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1878_i_unnamed_conv214_shift_x(BITJOIN,1877)@33
    leftShiftStage0Idx1_uid1878_i_unnamed_conv214_shift_x_q <= leftShiftStage0Idx1Rng16_uid1877_i_unnamed_conv214_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage1Idx1Rng2_uid1840_i_unnamed_conv210_shift_x(BITSELECT,1839)@33
    leftShiftStage1Idx1Rng2_uid1840_i_unnamed_conv210_shift_x_in <= leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1840_i_unnamed_conv210_shift_x_b <= leftShiftStage1Idx1Rng2_uid1840_i_unnamed_conv210_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1841_i_unnamed_conv210_shift_x(BITJOIN,1840)@33
    leftShiftStage1Idx1_uid1841_i_unnamed_conv210_shift_x_q <= leftShiftStage1Idx1Rng2_uid1840_i_unnamed_conv210_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng4_uid1835_i_unnamed_conv210_shift_x(BITSELECT,1834)@33
    leftShiftStage0Idx1Rng4_uid1835_i_unnamed_conv210_shift_x_in <= i_syncbuf_n_elem_sync_buffer65_conv_out_buffer_out(27 downto 0);
    leftShiftStage0Idx1Rng4_uid1835_i_unnamed_conv210_shift_x_b <= leftShiftStage0Idx1Rng4_uid1835_i_unnamed_conv210_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid1836_i_unnamed_conv210_shift_x(BITJOIN,1835)@33
    leftShiftStage0Idx1_uid1836_i_unnamed_conv210_shift_x_q <= leftShiftStage0Idx1Rng4_uid1835_i_unnamed_conv210_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- i_syncbuf_n_elem_sync_buffer65_conv(BLACKBOX,611)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_n_elem_sync_buffer65_conv : i_syncbuf_n_elem_sync_buffer65_conv207
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist75_sync_in_aunroll_x_in_i_valid_20_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer65_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1838_i_unnamed_conv210_shift_x(MUX,1837)@33
    leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_s <= VCC_q;
    leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_combproc: PROCESS (leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_s, i_syncbuf_n_elem_sync_buffer65_conv_out_buffer_out, leftShiftStage0Idx1_uid1836_i_unnamed_conv210_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_q <= i_syncbuf_n_elem_sync_buffer65_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_q <= leftShiftStage0Idx1_uid1836_i_unnamed_conv210_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1843_i_unnamed_conv210_shift_x(MUX,1842)@33
    leftShiftStage1_uid1843_i_unnamed_conv210_shift_x_s <= VCC_q;
    leftShiftStage1_uid1843_i_unnamed_conv210_shift_x_combproc: PROCESS (leftShiftStage1_uid1843_i_unnamed_conv210_shift_x_s, leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_q, leftShiftStage1Idx1_uid1841_i_unnamed_conv210_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1843_i_unnamed_conv210_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1843_i_unnamed_conv210_shift_x_q <= leftShiftStage0_uid1838_i_unnamed_conv210_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1843_i_unnamed_conv210_shift_x_q <= leftShiftStage1Idx1_uid1841_i_unnamed_conv210_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1843_i_unnamed_conv210_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv209_vt_select_31(BITSELECT,729)@33
    i_unnamed_conv209_vt_select_31_b <= leftShiftStage1_uid1843_i_unnamed_conv210_shift_x_q(31 downto 6);

    -- i_unnamed_conv209_vt_const_5(CONSTANT,727)
    i_unnamed_conv209_vt_const_5_q <= "000000";

    -- i_unnamed_conv209_vt_join(BITJOIN,728)@33
    i_unnamed_conv209_vt_join_q <= i_unnamed_conv209_vt_select_31_b & i_unnamed_conv209_vt_const_5_q;

    -- xMSB_uid1846_i_unnamed_conv212_shift_x(BITSELECT,1845)@33
    xMSB_uid1846_i_unnamed_conv212_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv209_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1868_i_unnamed_conv212_shift_x(BITSELECT,1867)@33
    rightShiftStage4Idx1Rng1_uid1868_i_unnamed_conv212_shift_x_b <= rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1869_i_unnamed_conv212_shift_x(BITJOIN,1868)@33
    rightShiftStage4Idx1_uid1869_i_unnamed_conv212_shift_x_q <= xMSB_uid1846_i_unnamed_conv212_shift_x_b & rightShiftStage4Idx1Rng1_uid1868_i_unnamed_conv212_shift_x_b;

    -- seMsb_to2_uid1863(BITSELECT,1862)@33
    seMsb_to2_uid1863_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1846_i_unnamed_conv212_shift_x_b(0)) & xMSB_uid1846_i_unnamed_conv212_shift_x_b));
    seMsb_to2_uid1863_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1863_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1864_i_unnamed_conv212_shift_x(BITSELECT,1863)@33
    rightShiftStage3Idx1Rng2_uid1864_i_unnamed_conv212_shift_x_b <= rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1865_i_unnamed_conv212_shift_x(BITJOIN,1864)@33
    rightShiftStage3Idx1_uid1865_i_unnamed_conv212_shift_x_q <= seMsb_to2_uid1863_b & rightShiftStage3Idx1Rng2_uid1864_i_unnamed_conv212_shift_x_b;

    -- seMsb_to4_uid1858(BITSELECT,1857)@33
    seMsb_to4_uid1858_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1846_i_unnamed_conv212_shift_x_b(0)) & xMSB_uid1846_i_unnamed_conv212_shift_x_b));
    seMsb_to4_uid1858_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1858_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1859_i_unnamed_conv212_shift_x(BITSELECT,1858)@33
    rightShiftStage2Idx1Rng4_uid1859_i_unnamed_conv212_shift_x_b <= rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1860_i_unnamed_conv212_shift_x(BITJOIN,1859)@33
    rightShiftStage2Idx1_uid1860_i_unnamed_conv212_shift_x_q <= seMsb_to4_uid1858_b & rightShiftStage2Idx1Rng4_uid1859_i_unnamed_conv212_shift_x_b;

    -- seMsb_to8_uid1853(BITSELECT,1852)@33
    seMsb_to8_uid1853_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1846_i_unnamed_conv212_shift_x_b(0)) & xMSB_uid1846_i_unnamed_conv212_shift_x_b));
    seMsb_to8_uid1853_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1853_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1854_i_unnamed_conv212_shift_x(BITSELECT,1853)@33
    rightShiftStage1Idx1Rng8_uid1854_i_unnamed_conv212_shift_x_b <= rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1855_i_unnamed_conv212_shift_x(BITJOIN,1854)@33
    rightShiftStage1Idx1_uid1855_i_unnamed_conv212_shift_x_q <= seMsb_to8_uid1853_b & rightShiftStage1Idx1Rng8_uid1854_i_unnamed_conv212_shift_x_b;

    -- seMsb_to16_uid1848(BITSELECT,1847)@33
    seMsb_to16_uid1848_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1846_i_unnamed_conv212_shift_x_b(0)) & xMSB_uid1846_i_unnamed_conv212_shift_x_b));
    seMsb_to16_uid1848_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1848_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1849_i_unnamed_conv212_shift_x(BITSELECT,1848)@33
    rightShiftStage0Idx1Rng16_uid1849_i_unnamed_conv212_shift_x_b <= i_unnamed_conv209_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1850_i_unnamed_conv212_shift_x(BITJOIN,1849)@33
    rightShiftStage0Idx1_uid1850_i_unnamed_conv212_shift_x_q <= seMsb_to16_uid1848_b & rightShiftStage0Idx1Rng16_uid1849_i_unnamed_conv212_shift_x_b;

    -- rightShiftStage0_uid1852_i_unnamed_conv212_shift_x(MUX,1851)@33
    rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_s <= VCC_q;
    rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_combproc: PROCESS (rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_s, i_unnamed_conv209_vt_join_q, rightShiftStage0Idx1_uid1850_i_unnamed_conv212_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_q <= i_unnamed_conv209_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_q <= rightShiftStage0Idx1_uid1850_i_unnamed_conv212_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1857_i_unnamed_conv212_shift_x(MUX,1856)@33
    rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_s <= VCC_q;
    rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_combproc: PROCESS (rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_s, rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_q, rightShiftStage1Idx1_uid1855_i_unnamed_conv212_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_q <= rightShiftStage0_uid1852_i_unnamed_conv212_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_q <= rightShiftStage1Idx1_uid1855_i_unnamed_conv212_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1862_i_unnamed_conv212_shift_x(MUX,1861)@33
    rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_s <= VCC_q;
    rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_combproc: PROCESS (rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_s, rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_q, rightShiftStage2Idx1_uid1860_i_unnamed_conv212_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_q <= rightShiftStage1_uid1857_i_unnamed_conv212_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_q <= rightShiftStage2Idx1_uid1860_i_unnamed_conv212_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1867_i_unnamed_conv212_shift_x(MUX,1866)@33
    rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_s <= VCC_q;
    rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_combproc: PROCESS (rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_s, rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_q, rightShiftStage3Idx1_uid1865_i_unnamed_conv212_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_q <= rightShiftStage2_uid1862_i_unnamed_conv212_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_q <= rightShiftStage3Idx1_uid1865_i_unnamed_conv212_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1871_i_unnamed_conv212_shift_x(MUX,1870)@33
    rightShiftStage4_uid1871_i_unnamed_conv212_shift_x_s <= VCC_q;
    rightShiftStage4_uid1871_i_unnamed_conv212_shift_x_combproc: PROCESS (rightShiftStage4_uid1871_i_unnamed_conv212_shift_x_s, rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_q, rightShiftStage4Idx1_uid1869_i_unnamed_conv212_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1871_i_unnamed_conv212_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1871_i_unnamed_conv212_shift_x_q <= rightShiftStage3_uid1867_i_unnamed_conv212_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1871_i_unnamed_conv212_shift_x_q <= rightShiftStage4Idx1_uid1869_i_unnamed_conv212_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1871_i_unnamed_conv212_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked55_conv(LOGICAL,597)@33
    i_mul10_masked55_conv_q <= rightShiftStage4_uid1871_i_unnamed_conv212_shift_x_q and redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q;

    -- leftShiftStage0_uid1880_i_unnamed_conv214_shift_x(MUX,1879)@33
    leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_s <= VCC_q;
    leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_combproc: PROCESS (leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_s, i_mul10_masked55_conv_q, leftShiftStage0Idx1_uid1878_i_unnamed_conv214_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_q <= i_mul10_masked55_conv_q;
            WHEN "1" => leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_q <= leftShiftStage0Idx1_uid1878_i_unnamed_conv214_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1885_i_unnamed_conv214_shift_x(MUX,1884)@33
    leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_s <= VCC_q;
    leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_combproc: PROCESS (leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_s, leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_q, leftShiftStage1Idx1_uid1883_i_unnamed_conv214_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_q <= leftShiftStage0_uid1880_i_unnamed_conv214_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_q <= leftShiftStage1Idx1_uid1883_i_unnamed_conv214_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1890_i_unnamed_conv214_shift_x(MUX,1889)@33
    leftShiftStage2_uid1890_i_unnamed_conv214_shift_x_s <= VCC_q;
    leftShiftStage2_uid1890_i_unnamed_conv214_shift_x_combproc: PROCESS (leftShiftStage2_uid1890_i_unnamed_conv214_shift_x_s, leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_q, leftShiftStage2Idx1_uid1888_i_unnamed_conv214_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1890_i_unnamed_conv214_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1890_i_unnamed_conv214_shift_x_q <= leftShiftStage1_uid1885_i_unnamed_conv214_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1890_i_unnamed_conv214_shift_x_q <= leftShiftStage2Idx1_uid1888_i_unnamed_conv214_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1890_i_unnamed_conv214_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv213_vt_select_31(BITSELECT,732)@33
    i_unnamed_conv213_vt_select_31_b <= leftShiftStage2_uid1890_i_unnamed_conv214_shift_x_q(31 downto 28);

    -- redist13_i_unnamed_conv213_vt_select_31_b_5(DELAY,2653)
    redist13_i_unnamed_conv213_vt_select_31_b_5 : dspba_delay
    GENERIC MAP ( width => 4, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv213_vt_select_31_b, xout => redist13_i_unnamed_conv213_vt_select_31_b_5_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv213_vt_const_27(CONSTANT,730)
    i_unnamed_conv213_vt_const_27_q <= "0000000000000000000000000000";

    -- i_unnamed_conv213_vt_join(BITJOIN,731)@38
    i_unnamed_conv213_vt_join_q <= redist13_i_unnamed_conv213_vt_select_31_b_5_q & i_unnamed_conv213_vt_const_27_q;

    -- leftShiftStage3Idx1Rng1_uid1826_i_unnamed_conv206_shift_x(BITSELECT,1825)@33
    leftShiftStage3Idx1Rng1_uid1826_i_unnamed_conv206_shift_x_in <= leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid1826_i_unnamed_conv206_shift_x_b <= leftShiftStage3Idx1Rng1_uid1826_i_unnamed_conv206_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid1827_i_unnamed_conv206_shift_x(BITJOIN,1826)@33
    leftShiftStage3Idx1_uid1827_i_unnamed_conv206_shift_x_q <= leftShiftStage3Idx1Rng1_uid1826_i_unnamed_conv206_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid1821_i_unnamed_conv206_shift_x(BITSELECT,1820)@33
    leftShiftStage2Idx1Rng2_uid1821_i_unnamed_conv206_shift_x_in <= leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1821_i_unnamed_conv206_shift_x_b <= leftShiftStage2Idx1Rng2_uid1821_i_unnamed_conv206_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1822_i_unnamed_conv206_shift_x(BITJOIN,1821)@33
    leftShiftStage2Idx1_uid1822_i_unnamed_conv206_shift_x_q <= leftShiftStage2Idx1Rng2_uid1821_i_unnamed_conv206_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng8_uid1816_i_unnamed_conv206_shift_x(BITSELECT,1815)@33
    leftShiftStage1Idx1Rng8_uid1816_i_unnamed_conv206_shift_x_in <= leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1816_i_unnamed_conv206_shift_x_b <= leftShiftStage1Idx1Rng8_uid1816_i_unnamed_conv206_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1817_i_unnamed_conv206_shift_x(BITJOIN,1816)@33
    leftShiftStage1Idx1_uid1817_i_unnamed_conv206_shift_x_q <= leftShiftStage1Idx1Rng8_uid1816_i_unnamed_conv206_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1811_i_unnamed_conv206_shift_x(BITSELECT,1810)@33
    leftShiftStage0Idx1Rng16_uid1811_i_unnamed_conv206_shift_x_in <= i_mul10_masked53_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1811_i_unnamed_conv206_shift_x_b <= leftShiftStage0Idx1Rng16_uid1811_i_unnamed_conv206_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1812_i_unnamed_conv206_shift_x(BITJOIN,1811)@33
    leftShiftStage0Idx1_uid1812_i_unnamed_conv206_shift_x_q <= leftShiftStage0Idx1Rng16_uid1811_i_unnamed_conv206_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage2Idx1Rng1_uid1774_i_unnamed_conv202_shift_x(BITSELECT,1773)@33
    leftShiftStage2Idx1Rng1_uid1774_i_unnamed_conv202_shift_x_in <= leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1774_i_unnamed_conv202_shift_x_b <= leftShiftStage2Idx1Rng1_uid1774_i_unnamed_conv202_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1775_i_unnamed_conv202_shift_x(BITJOIN,1774)@33
    leftShiftStage2Idx1_uid1775_i_unnamed_conv202_shift_x_q <= leftShiftStage2Idx1Rng1_uid1774_i_unnamed_conv202_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng2_uid1769_i_unnamed_conv202_shift_x(BITSELECT,1768)@33
    leftShiftStage1Idx1Rng2_uid1769_i_unnamed_conv202_shift_x_in <= leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1769_i_unnamed_conv202_shift_x_b <= leftShiftStage1Idx1Rng2_uid1769_i_unnamed_conv202_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1770_i_unnamed_conv202_shift_x(BITJOIN,1769)@33
    leftShiftStage1Idx1_uid1770_i_unnamed_conv202_shift_x_q <= leftShiftStage1Idx1Rng2_uid1769_i_unnamed_conv202_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng4_uid1764_i_unnamed_conv202_shift_x(BITSELECT,1763)@33
    leftShiftStage0Idx1Rng4_uid1764_i_unnamed_conv202_shift_x_in <= i_syncbuf_n_elem_sync_buffer66_conv_out_buffer_out(27 downto 0);
    leftShiftStage0Idx1Rng4_uid1764_i_unnamed_conv202_shift_x_b <= leftShiftStage0Idx1Rng4_uid1764_i_unnamed_conv202_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid1765_i_unnamed_conv202_shift_x(BITJOIN,1764)@33
    leftShiftStage0Idx1_uid1765_i_unnamed_conv202_shift_x_q <= leftShiftStage0Idx1Rng4_uid1764_i_unnamed_conv202_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- i_syncbuf_n_elem_sync_buffer66_conv(BLACKBOX,612)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_n_elem_sync_buffer66_conv : i_syncbuf_n_elem_sync_buffer66_conv199
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist75_sync_in_aunroll_x_in_i_valid_20_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer66_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1767_i_unnamed_conv202_shift_x(MUX,1766)@33
    leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_s <= VCC_q;
    leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_combproc: PROCESS (leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_s, i_syncbuf_n_elem_sync_buffer66_conv_out_buffer_out, leftShiftStage0Idx1_uid1765_i_unnamed_conv202_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_q <= i_syncbuf_n_elem_sync_buffer66_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_q <= leftShiftStage0Idx1_uid1765_i_unnamed_conv202_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1772_i_unnamed_conv202_shift_x(MUX,1771)@33
    leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_s <= VCC_q;
    leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_combproc: PROCESS (leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_s, leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_q, leftShiftStage1Idx1_uid1770_i_unnamed_conv202_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_q <= leftShiftStage0_uid1767_i_unnamed_conv202_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_q <= leftShiftStage1Idx1_uid1770_i_unnamed_conv202_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1777_i_unnamed_conv202_shift_x(MUX,1776)@33
    leftShiftStage2_uid1777_i_unnamed_conv202_shift_x_s <= VCC_q;
    leftShiftStage2_uid1777_i_unnamed_conv202_shift_x_combproc: PROCESS (leftShiftStage2_uid1777_i_unnamed_conv202_shift_x_s, leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_q, leftShiftStage2Idx1_uid1775_i_unnamed_conv202_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1777_i_unnamed_conv202_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1777_i_unnamed_conv202_shift_x_q <= leftShiftStage1_uid1772_i_unnamed_conv202_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1777_i_unnamed_conv202_shift_x_q <= leftShiftStage2Idx1_uid1775_i_unnamed_conv202_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1777_i_unnamed_conv202_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv201_vt_select_31(BITSELECT,723)@33
    i_unnamed_conv201_vt_select_31_b <= leftShiftStage2_uid1777_i_unnamed_conv202_shift_x_q(31 downto 7);

    -- i_unnamed_conv201_vt_const_6(CONSTANT,721)
    i_unnamed_conv201_vt_const_6_q <= "0000000";

    -- i_unnamed_conv201_vt_join(BITJOIN,722)@33
    i_unnamed_conv201_vt_join_q <= i_unnamed_conv201_vt_select_31_b & i_unnamed_conv201_vt_const_6_q;

    -- xMSB_uid1780_i_unnamed_conv204_shift_x(BITSELECT,1779)@33
    xMSB_uid1780_i_unnamed_conv204_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv201_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1802_i_unnamed_conv204_shift_x(BITSELECT,1801)@33
    rightShiftStage4Idx1Rng1_uid1802_i_unnamed_conv204_shift_x_b <= rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1803_i_unnamed_conv204_shift_x(BITJOIN,1802)@33
    rightShiftStage4Idx1_uid1803_i_unnamed_conv204_shift_x_q <= xMSB_uid1780_i_unnamed_conv204_shift_x_b & rightShiftStage4Idx1Rng1_uid1802_i_unnamed_conv204_shift_x_b;

    -- seMsb_to2_uid1797(BITSELECT,1796)@33
    seMsb_to2_uid1797_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1780_i_unnamed_conv204_shift_x_b(0)) & xMSB_uid1780_i_unnamed_conv204_shift_x_b));
    seMsb_to2_uid1797_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1797_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1798_i_unnamed_conv204_shift_x(BITSELECT,1797)@33
    rightShiftStage3Idx1Rng2_uid1798_i_unnamed_conv204_shift_x_b <= rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1799_i_unnamed_conv204_shift_x(BITJOIN,1798)@33
    rightShiftStage3Idx1_uid1799_i_unnamed_conv204_shift_x_q <= seMsb_to2_uid1797_b & rightShiftStage3Idx1Rng2_uid1798_i_unnamed_conv204_shift_x_b;

    -- seMsb_to4_uid1792(BITSELECT,1791)@33
    seMsb_to4_uid1792_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1780_i_unnamed_conv204_shift_x_b(0)) & xMSB_uid1780_i_unnamed_conv204_shift_x_b));
    seMsb_to4_uid1792_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1792_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1793_i_unnamed_conv204_shift_x(BITSELECT,1792)@33
    rightShiftStage2Idx1Rng4_uid1793_i_unnamed_conv204_shift_x_b <= rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1794_i_unnamed_conv204_shift_x(BITJOIN,1793)@33
    rightShiftStage2Idx1_uid1794_i_unnamed_conv204_shift_x_q <= seMsb_to4_uid1792_b & rightShiftStage2Idx1Rng4_uid1793_i_unnamed_conv204_shift_x_b;

    -- seMsb_to8_uid1787(BITSELECT,1786)@33
    seMsb_to8_uid1787_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1780_i_unnamed_conv204_shift_x_b(0)) & xMSB_uid1780_i_unnamed_conv204_shift_x_b));
    seMsb_to8_uid1787_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1787_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1788_i_unnamed_conv204_shift_x(BITSELECT,1787)@33
    rightShiftStage1Idx1Rng8_uid1788_i_unnamed_conv204_shift_x_b <= rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1789_i_unnamed_conv204_shift_x(BITJOIN,1788)@33
    rightShiftStage1Idx1_uid1789_i_unnamed_conv204_shift_x_q <= seMsb_to8_uid1787_b & rightShiftStage1Idx1Rng8_uid1788_i_unnamed_conv204_shift_x_b;

    -- seMsb_to16_uid1782(BITSELECT,1781)@33
    seMsb_to16_uid1782_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1780_i_unnamed_conv204_shift_x_b(0)) & xMSB_uid1780_i_unnamed_conv204_shift_x_b));
    seMsb_to16_uid1782_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1782_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1783_i_unnamed_conv204_shift_x(BITSELECT,1782)@33
    rightShiftStage0Idx1Rng16_uid1783_i_unnamed_conv204_shift_x_b <= i_unnamed_conv201_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1784_i_unnamed_conv204_shift_x(BITJOIN,1783)@33
    rightShiftStage0Idx1_uid1784_i_unnamed_conv204_shift_x_q <= seMsb_to16_uid1782_b & rightShiftStage0Idx1Rng16_uid1783_i_unnamed_conv204_shift_x_b;

    -- rightShiftStage0_uid1786_i_unnamed_conv204_shift_x(MUX,1785)@33
    rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_s <= VCC_q;
    rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_combproc: PROCESS (rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_s, i_unnamed_conv201_vt_join_q, rightShiftStage0Idx1_uid1784_i_unnamed_conv204_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_q <= i_unnamed_conv201_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_q <= rightShiftStage0Idx1_uid1784_i_unnamed_conv204_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1791_i_unnamed_conv204_shift_x(MUX,1790)@33
    rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_s <= VCC_q;
    rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_combproc: PROCESS (rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_s, rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_q, rightShiftStage1Idx1_uid1789_i_unnamed_conv204_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_q <= rightShiftStage0_uid1786_i_unnamed_conv204_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_q <= rightShiftStage1Idx1_uid1789_i_unnamed_conv204_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1796_i_unnamed_conv204_shift_x(MUX,1795)@33
    rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_s <= VCC_q;
    rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_combproc: PROCESS (rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_s, rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_q, rightShiftStage2Idx1_uid1794_i_unnamed_conv204_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_q <= rightShiftStage1_uid1791_i_unnamed_conv204_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_q <= rightShiftStage2Idx1_uid1794_i_unnamed_conv204_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1801_i_unnamed_conv204_shift_x(MUX,1800)@33
    rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_s <= VCC_q;
    rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_combproc: PROCESS (rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_s, rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_q, rightShiftStage3Idx1_uid1799_i_unnamed_conv204_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_q <= rightShiftStage2_uid1796_i_unnamed_conv204_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_q <= rightShiftStage3Idx1_uid1799_i_unnamed_conv204_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1805_i_unnamed_conv204_shift_x(MUX,1804)@33
    rightShiftStage4_uid1805_i_unnamed_conv204_shift_x_s <= VCC_q;
    rightShiftStage4_uid1805_i_unnamed_conv204_shift_x_combproc: PROCESS (rightShiftStage4_uid1805_i_unnamed_conv204_shift_x_s, rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_q, rightShiftStage4Idx1_uid1803_i_unnamed_conv204_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1805_i_unnamed_conv204_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1805_i_unnamed_conv204_shift_x_q <= rightShiftStage3_uid1801_i_unnamed_conv204_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1805_i_unnamed_conv204_shift_x_q <= rightShiftStage4Idx1_uid1803_i_unnamed_conv204_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1805_i_unnamed_conv204_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked53_conv(LOGICAL,596)@33
    i_mul10_masked53_conv_q <= rightShiftStage4_uid1805_i_unnamed_conv204_shift_x_q and redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q;

    -- leftShiftStage0_uid1814_i_unnamed_conv206_shift_x(MUX,1813)@33
    leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_s <= VCC_q;
    leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_combproc: PROCESS (leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_s, i_mul10_masked53_conv_q, leftShiftStage0Idx1_uid1812_i_unnamed_conv206_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_q <= i_mul10_masked53_conv_q;
            WHEN "1" => leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_q <= leftShiftStage0Idx1_uid1812_i_unnamed_conv206_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1819_i_unnamed_conv206_shift_x(MUX,1818)@33
    leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_s <= VCC_q;
    leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_combproc: PROCESS (leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_s, leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_q, leftShiftStage1Idx1_uid1817_i_unnamed_conv206_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_q <= leftShiftStage0_uid1814_i_unnamed_conv206_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_q <= leftShiftStage1Idx1_uid1817_i_unnamed_conv206_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1824_i_unnamed_conv206_shift_x(MUX,1823)@33
    leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_s <= VCC_q;
    leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_combproc: PROCESS (leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_s, leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_q, leftShiftStage2Idx1_uid1822_i_unnamed_conv206_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_q <= leftShiftStage1_uid1819_i_unnamed_conv206_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_q <= leftShiftStage2Idx1_uid1822_i_unnamed_conv206_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1829_i_unnamed_conv206_shift_x(MUX,1828)@33
    leftShiftStage3_uid1829_i_unnamed_conv206_shift_x_s <= VCC_q;
    leftShiftStage3_uid1829_i_unnamed_conv206_shift_x_combproc: PROCESS (leftShiftStage3_uid1829_i_unnamed_conv206_shift_x_s, leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_q, leftShiftStage3Idx1_uid1827_i_unnamed_conv206_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1829_i_unnamed_conv206_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1829_i_unnamed_conv206_shift_x_q <= leftShiftStage2_uid1824_i_unnamed_conv206_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1829_i_unnamed_conv206_shift_x_q <= leftShiftStage3Idx1_uid1827_i_unnamed_conv206_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1829_i_unnamed_conv206_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv205_vt_select_31(BITSELECT,726)@33
    i_unnamed_conv205_vt_select_31_b <= leftShiftStage3_uid1829_i_unnamed_conv206_shift_x_q(31 downto 27);

    -- redist14_i_unnamed_conv205_vt_select_31_b_4(DELAY,2654)
    redist14_i_unnamed_conv205_vt_select_31_b_4 : dspba_delay
    GENERIC MAP ( width => 5, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv205_vt_select_31_b, xout => redist14_i_unnamed_conv205_vt_select_31_b_4_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv205_vt_const_26(CONSTANT,724)
    i_unnamed_conv205_vt_const_26_q <= "000000000000000000000000000";

    -- i_unnamed_conv205_vt_join(BITJOIN,725)@37
    i_unnamed_conv205_vt_join_q <= redist14_i_unnamed_conv205_vt_select_31_b_4_q & i_unnamed_conv205_vt_const_26_q;

    -- leftShiftStage2Idx1Rng2_uid1727_i_unnamed_conv198_shift_x(BITSELECT,1726)@33
    leftShiftStage2Idx1Rng2_uid1727_i_unnamed_conv198_shift_x_in <= leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1727_i_unnamed_conv198_shift_x_b <= leftShiftStage2Idx1Rng2_uid1727_i_unnamed_conv198_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1728_i_unnamed_conv198_shift_x(BITJOIN,1727)@33
    leftShiftStage2Idx1_uid1728_i_unnamed_conv198_shift_x_q <= leftShiftStage2Idx1Rng2_uid1727_i_unnamed_conv198_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng8_uid1722_i_unnamed_conv198_shift_x(BITSELECT,1721)@33
    leftShiftStage1Idx1Rng8_uid1722_i_unnamed_conv198_shift_x_in <= leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1722_i_unnamed_conv198_shift_x_b <= leftShiftStage1Idx1Rng8_uid1722_i_unnamed_conv198_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1723_i_unnamed_conv198_shift_x(BITJOIN,1722)@33
    leftShiftStage1Idx1_uid1723_i_unnamed_conv198_shift_x_q <= leftShiftStage1Idx1Rng8_uid1722_i_unnamed_conv198_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1717_i_unnamed_conv198_shift_x(BITSELECT,1716)@33
    leftShiftStage0Idx1Rng16_uid1717_i_unnamed_conv198_shift_x_in <= i_mul10_masked51_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1717_i_unnamed_conv198_shift_x_b <= leftShiftStage0Idx1Rng16_uid1717_i_unnamed_conv198_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1718_i_unnamed_conv198_shift_x(BITJOIN,1717)@33
    leftShiftStage0Idx1_uid1718_i_unnamed_conv198_shift_x_q <= leftShiftStage0Idx1Rng16_uid1717_i_unnamed_conv198_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage0Idx1Rng8_uid1680_i_unnamed_conv194_shift_x(BITSELECT,1679)@33
    leftShiftStage0Idx1Rng8_uid1680_i_unnamed_conv194_shift_x_in <= i_syncbuf_n_elem_sync_buffer67_conv_out_buffer_out(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1680_i_unnamed_conv194_shift_x_b <= leftShiftStage0Idx1Rng8_uid1680_i_unnamed_conv194_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1681_i_unnamed_conv194_shift_x(BITJOIN,1680)@33
    leftShiftStage0Idx1_uid1681_i_unnamed_conv194_shift_x_q <= leftShiftStage0Idx1Rng8_uid1680_i_unnamed_conv194_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- i_syncbuf_n_elem_sync_buffer67_conv(BLACKBOX,613)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_n_elem_sync_buffer67_conv : i_syncbuf_n_elem_sync_buffer67_conv191
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist75_sync_in_aunroll_x_in_i_valid_20_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer67_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1683_i_unnamed_conv194_shift_x(MUX,1682)@33
    leftShiftStage0_uid1683_i_unnamed_conv194_shift_x_s <= VCC_q;
    leftShiftStage0_uid1683_i_unnamed_conv194_shift_x_combproc: PROCESS (leftShiftStage0_uid1683_i_unnamed_conv194_shift_x_s, i_syncbuf_n_elem_sync_buffer67_conv_out_buffer_out, leftShiftStage0Idx1_uid1681_i_unnamed_conv194_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1683_i_unnamed_conv194_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1683_i_unnamed_conv194_shift_x_q <= i_syncbuf_n_elem_sync_buffer67_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1683_i_unnamed_conv194_shift_x_q <= leftShiftStage0Idx1_uid1681_i_unnamed_conv194_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1683_i_unnamed_conv194_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv193_vt_select_31(BITSELECT,717)@33
    i_unnamed_conv193_vt_select_31_b <= leftShiftStage0_uid1683_i_unnamed_conv194_shift_x_q(31 downto 8);

    -- i_unnamed_conv193_vt_join(BITJOIN,716)@33
    i_unnamed_conv193_vt_join_q <= i_unnamed_conv193_vt_select_31_b & i_unnamed_conv193_vt_const_7_q;

    -- xMSB_uid1686_i_unnamed_conv196_shift_x(BITSELECT,1685)@33
    xMSB_uid1686_i_unnamed_conv196_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv193_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1708_i_unnamed_conv196_shift_x(BITSELECT,1707)@33
    rightShiftStage4Idx1Rng1_uid1708_i_unnamed_conv196_shift_x_b <= rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1709_i_unnamed_conv196_shift_x(BITJOIN,1708)@33
    rightShiftStage4Idx1_uid1709_i_unnamed_conv196_shift_x_q <= xMSB_uid1686_i_unnamed_conv196_shift_x_b & rightShiftStage4Idx1Rng1_uid1708_i_unnamed_conv196_shift_x_b;

    -- seMsb_to2_uid1703(BITSELECT,1702)@33
    seMsb_to2_uid1703_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1686_i_unnamed_conv196_shift_x_b(0)) & xMSB_uid1686_i_unnamed_conv196_shift_x_b));
    seMsb_to2_uid1703_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1703_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1704_i_unnamed_conv196_shift_x(BITSELECT,1703)@33
    rightShiftStage3Idx1Rng2_uid1704_i_unnamed_conv196_shift_x_b <= rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1705_i_unnamed_conv196_shift_x(BITJOIN,1704)@33
    rightShiftStage3Idx1_uid1705_i_unnamed_conv196_shift_x_q <= seMsb_to2_uid1703_b & rightShiftStage3Idx1Rng2_uid1704_i_unnamed_conv196_shift_x_b;

    -- seMsb_to4_uid1698(BITSELECT,1697)@33
    seMsb_to4_uid1698_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1686_i_unnamed_conv196_shift_x_b(0)) & xMSB_uid1686_i_unnamed_conv196_shift_x_b));
    seMsb_to4_uid1698_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1698_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1699_i_unnamed_conv196_shift_x(BITSELECT,1698)@33
    rightShiftStage2Idx1Rng4_uid1699_i_unnamed_conv196_shift_x_b <= rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1700_i_unnamed_conv196_shift_x(BITJOIN,1699)@33
    rightShiftStage2Idx1_uid1700_i_unnamed_conv196_shift_x_q <= seMsb_to4_uid1698_b & rightShiftStage2Idx1Rng4_uid1699_i_unnamed_conv196_shift_x_b;

    -- seMsb_to8_uid1693(BITSELECT,1692)@33
    seMsb_to8_uid1693_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1686_i_unnamed_conv196_shift_x_b(0)) & xMSB_uid1686_i_unnamed_conv196_shift_x_b));
    seMsb_to8_uid1693_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1693_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1694_i_unnamed_conv196_shift_x(BITSELECT,1693)@33
    rightShiftStage1Idx1Rng8_uid1694_i_unnamed_conv196_shift_x_b <= rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1695_i_unnamed_conv196_shift_x(BITJOIN,1694)@33
    rightShiftStage1Idx1_uid1695_i_unnamed_conv196_shift_x_q <= seMsb_to8_uid1693_b & rightShiftStage1Idx1Rng8_uid1694_i_unnamed_conv196_shift_x_b;

    -- seMsb_to16_uid1688(BITSELECT,1687)@33
    seMsb_to16_uid1688_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1686_i_unnamed_conv196_shift_x_b(0)) & xMSB_uid1686_i_unnamed_conv196_shift_x_b));
    seMsb_to16_uid1688_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1688_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1689_i_unnamed_conv196_shift_x(BITSELECT,1688)@33
    rightShiftStage0Idx1Rng16_uid1689_i_unnamed_conv196_shift_x_b <= i_unnamed_conv193_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1690_i_unnamed_conv196_shift_x(BITJOIN,1689)@33
    rightShiftStage0Idx1_uid1690_i_unnamed_conv196_shift_x_q <= seMsb_to16_uid1688_b & rightShiftStage0Idx1Rng16_uid1689_i_unnamed_conv196_shift_x_b;

    -- rightShiftStage0_uid1692_i_unnamed_conv196_shift_x(MUX,1691)@33
    rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_s <= VCC_q;
    rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_combproc: PROCESS (rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_s, i_unnamed_conv193_vt_join_q, rightShiftStage0Idx1_uid1690_i_unnamed_conv196_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_q <= i_unnamed_conv193_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_q <= rightShiftStage0Idx1_uid1690_i_unnamed_conv196_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1697_i_unnamed_conv196_shift_x(MUX,1696)@33
    rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_s <= VCC_q;
    rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_combproc: PROCESS (rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_s, rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_q, rightShiftStage1Idx1_uid1695_i_unnamed_conv196_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_q <= rightShiftStage0_uid1692_i_unnamed_conv196_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_q <= rightShiftStage1Idx1_uid1695_i_unnamed_conv196_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1702_i_unnamed_conv196_shift_x(MUX,1701)@33
    rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_s <= VCC_q;
    rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_combproc: PROCESS (rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_s, rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_q, rightShiftStage2Idx1_uid1700_i_unnamed_conv196_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_q <= rightShiftStage1_uid1697_i_unnamed_conv196_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_q <= rightShiftStage2Idx1_uid1700_i_unnamed_conv196_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1707_i_unnamed_conv196_shift_x(MUX,1706)@33
    rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_s <= VCC_q;
    rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_combproc: PROCESS (rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_s, rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_q, rightShiftStage3Idx1_uid1705_i_unnamed_conv196_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_q <= rightShiftStage2_uid1702_i_unnamed_conv196_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_q <= rightShiftStage3Idx1_uid1705_i_unnamed_conv196_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1711_i_unnamed_conv196_shift_x(MUX,1710)@33
    rightShiftStage4_uid1711_i_unnamed_conv196_shift_x_s <= VCC_q;
    rightShiftStage4_uid1711_i_unnamed_conv196_shift_x_combproc: PROCESS (rightShiftStage4_uid1711_i_unnamed_conv196_shift_x_s, rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_q, rightShiftStage4Idx1_uid1709_i_unnamed_conv196_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1711_i_unnamed_conv196_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1711_i_unnamed_conv196_shift_x_q <= rightShiftStage3_uid1707_i_unnamed_conv196_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1711_i_unnamed_conv196_shift_x_q <= rightShiftStage4Idx1_uid1709_i_unnamed_conv196_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1711_i_unnamed_conv196_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked51_conv(LOGICAL,595)@33
    i_mul10_masked51_conv_q <= rightShiftStage4_uid1711_i_unnamed_conv196_shift_x_q and redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q;

    -- leftShiftStage0_uid1720_i_unnamed_conv198_shift_x(MUX,1719)@33
    leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_s <= VCC_q;
    leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_combproc: PROCESS (leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_s, i_mul10_masked51_conv_q, leftShiftStage0Idx1_uid1718_i_unnamed_conv198_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_q <= i_mul10_masked51_conv_q;
            WHEN "1" => leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_q <= leftShiftStage0Idx1_uid1718_i_unnamed_conv198_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1725_i_unnamed_conv198_shift_x(MUX,1724)@33
    leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_s <= VCC_q;
    leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_combproc: PROCESS (leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_s, leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_q, leftShiftStage1Idx1_uid1723_i_unnamed_conv198_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_q <= leftShiftStage0_uid1720_i_unnamed_conv198_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_q <= leftShiftStage1Idx1_uid1723_i_unnamed_conv198_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1730_i_unnamed_conv198_shift_x(MUX,1729)@33
    leftShiftStage2_uid1730_i_unnamed_conv198_shift_x_s <= VCC_q;
    leftShiftStage2_uid1730_i_unnamed_conv198_shift_x_combproc: PROCESS (leftShiftStage2_uid1730_i_unnamed_conv198_shift_x_s, leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_q, leftShiftStage2Idx1_uid1728_i_unnamed_conv198_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1730_i_unnamed_conv198_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1730_i_unnamed_conv198_shift_x_q <= leftShiftStage1_uid1725_i_unnamed_conv198_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1730_i_unnamed_conv198_shift_x_q <= leftShiftStage2Idx1_uid1728_i_unnamed_conv198_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1730_i_unnamed_conv198_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv197_vt_select_31(BITSELECT,720)@33
    i_unnamed_conv197_vt_select_31_b <= leftShiftStage2_uid1730_i_unnamed_conv198_shift_x_q(31 downto 26);

    -- redist15_i_unnamed_conv197_vt_select_31_b_3(DELAY,2655)
    redist15_i_unnamed_conv197_vt_select_31_b_3 : dspba_delay
    GENERIC MAP ( width => 6, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv197_vt_select_31_b, xout => redist15_i_unnamed_conv197_vt_select_31_b_3_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv197_vt_const_25(CONSTANT,718)
    i_unnamed_conv197_vt_const_25_q <= "00000000000000000000000000";

    -- i_unnamed_conv197_vt_join(BITJOIN,719)@36
    i_unnamed_conv197_vt_join_q <= redist15_i_unnamed_conv197_vt_select_31_b_3_q & i_unnamed_conv197_vt_const_25_q;

    -- leftShiftStage2Idx1Rng1_uid1671_i_unnamed_conv190_shift_x(BITSELECT,1670)@33
    leftShiftStage2Idx1Rng1_uid1671_i_unnamed_conv190_shift_x_in <= leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1671_i_unnamed_conv190_shift_x_b <= leftShiftStage2Idx1Rng1_uid1671_i_unnamed_conv190_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1672_i_unnamed_conv190_shift_x(BITJOIN,1671)@33
    leftShiftStage2Idx1_uid1672_i_unnamed_conv190_shift_x_q <= leftShiftStage2Idx1Rng1_uid1671_i_unnamed_conv190_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng8_uid1666_i_unnamed_conv190_shift_x(BITSELECT,1665)@33
    leftShiftStage1Idx1Rng8_uid1666_i_unnamed_conv190_shift_x_in <= leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1666_i_unnamed_conv190_shift_x_b <= leftShiftStage1Idx1Rng8_uid1666_i_unnamed_conv190_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1667_i_unnamed_conv190_shift_x(BITJOIN,1666)@33
    leftShiftStage1Idx1_uid1667_i_unnamed_conv190_shift_x_q <= leftShiftStage1Idx1Rng8_uid1666_i_unnamed_conv190_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1661_i_unnamed_conv190_shift_x(BITSELECT,1660)@33
    leftShiftStage0Idx1Rng16_uid1661_i_unnamed_conv190_shift_x_in <= i_mul10_masked49_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1661_i_unnamed_conv190_shift_x_b <= leftShiftStage0Idx1Rng16_uid1661_i_unnamed_conv190_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1662_i_unnamed_conv190_shift_x(BITJOIN,1661)@33
    leftShiftStage0Idx1_uid1662_i_unnamed_conv190_shift_x_q <= leftShiftStage0Idx1Rng16_uid1661_i_unnamed_conv190_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage1Idx1Rng1_uid1624_i_unnamed_conv186_shift_x(BITSELECT,1623)@33
    leftShiftStage1Idx1Rng1_uid1624_i_unnamed_conv186_shift_x_in <= leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1624_i_unnamed_conv186_shift_x_b <= leftShiftStage1Idx1Rng1_uid1624_i_unnamed_conv186_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1625_i_unnamed_conv186_shift_x(BITJOIN,1624)@33
    leftShiftStage1Idx1_uid1625_i_unnamed_conv186_shift_x_q <= leftShiftStage1Idx1Rng1_uid1624_i_unnamed_conv186_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng8_uid1619_i_unnamed_conv186_shift_x(BITSELECT,1618)@33
    leftShiftStage0Idx1Rng8_uid1619_i_unnamed_conv186_shift_x_in <= i_syncbuf_n_elem_sync_buffer68_conv_out_buffer_out(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1619_i_unnamed_conv186_shift_x_b <= leftShiftStage0Idx1Rng8_uid1619_i_unnamed_conv186_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1620_i_unnamed_conv186_shift_x(BITJOIN,1619)@33
    leftShiftStage0Idx1_uid1620_i_unnamed_conv186_shift_x_q <= leftShiftStage0Idx1Rng8_uid1619_i_unnamed_conv186_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- i_syncbuf_n_elem_sync_buffer68_conv(BLACKBOX,614)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_n_elem_sync_buffer68_conv : i_syncbuf_n_elem_sync_buffer68_conv183
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist75_sync_in_aunroll_x_in_i_valid_20_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer68_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1622_i_unnamed_conv186_shift_x(MUX,1621)@33
    leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_s <= VCC_q;
    leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_combproc: PROCESS (leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_s, i_syncbuf_n_elem_sync_buffer68_conv_out_buffer_out, leftShiftStage0Idx1_uid1620_i_unnamed_conv186_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_q <= i_syncbuf_n_elem_sync_buffer68_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_q <= leftShiftStage0Idx1_uid1620_i_unnamed_conv186_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1627_i_unnamed_conv186_shift_x(MUX,1626)@33
    leftShiftStage1_uid1627_i_unnamed_conv186_shift_x_s <= VCC_q;
    leftShiftStage1_uid1627_i_unnamed_conv186_shift_x_combproc: PROCESS (leftShiftStage1_uid1627_i_unnamed_conv186_shift_x_s, leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_q, leftShiftStage1Idx1_uid1625_i_unnamed_conv186_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1627_i_unnamed_conv186_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1627_i_unnamed_conv186_shift_x_q <= leftShiftStage0_uid1622_i_unnamed_conv186_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1627_i_unnamed_conv186_shift_x_q <= leftShiftStage1Idx1_uid1625_i_unnamed_conv186_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1627_i_unnamed_conv186_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv185_vt_select_31(BITSELECT,711)@33
    i_unnamed_conv185_vt_select_31_b <= leftShiftStage1_uid1627_i_unnamed_conv186_shift_x_q(31 downto 9);

    -- i_unnamed_conv185_vt_const_8(CONSTANT,709)
    i_unnamed_conv185_vt_const_8_q <= "000000000";

    -- i_unnamed_conv185_vt_join(BITJOIN,710)@33
    i_unnamed_conv185_vt_join_q <= i_unnamed_conv185_vt_select_31_b & i_unnamed_conv185_vt_const_8_q;

    -- xMSB_uid1630_i_unnamed_conv188_shift_x(BITSELECT,1629)@33
    xMSB_uid1630_i_unnamed_conv188_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv185_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1652_i_unnamed_conv188_shift_x(BITSELECT,1651)@33
    rightShiftStage4Idx1Rng1_uid1652_i_unnamed_conv188_shift_x_b <= rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1653_i_unnamed_conv188_shift_x(BITJOIN,1652)@33
    rightShiftStage4Idx1_uid1653_i_unnamed_conv188_shift_x_q <= xMSB_uid1630_i_unnamed_conv188_shift_x_b & rightShiftStage4Idx1Rng1_uid1652_i_unnamed_conv188_shift_x_b;

    -- seMsb_to2_uid1647(BITSELECT,1646)@33
    seMsb_to2_uid1647_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1630_i_unnamed_conv188_shift_x_b(0)) & xMSB_uid1630_i_unnamed_conv188_shift_x_b));
    seMsb_to2_uid1647_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1647_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1648_i_unnamed_conv188_shift_x(BITSELECT,1647)@33
    rightShiftStage3Idx1Rng2_uid1648_i_unnamed_conv188_shift_x_b <= rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1649_i_unnamed_conv188_shift_x(BITJOIN,1648)@33
    rightShiftStage3Idx1_uid1649_i_unnamed_conv188_shift_x_q <= seMsb_to2_uid1647_b & rightShiftStage3Idx1Rng2_uid1648_i_unnamed_conv188_shift_x_b;

    -- seMsb_to4_uid1642(BITSELECT,1641)@33
    seMsb_to4_uid1642_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1630_i_unnamed_conv188_shift_x_b(0)) & xMSB_uid1630_i_unnamed_conv188_shift_x_b));
    seMsb_to4_uid1642_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1642_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1643_i_unnamed_conv188_shift_x(BITSELECT,1642)@33
    rightShiftStage2Idx1Rng4_uid1643_i_unnamed_conv188_shift_x_b <= rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1644_i_unnamed_conv188_shift_x(BITJOIN,1643)@33
    rightShiftStage2Idx1_uid1644_i_unnamed_conv188_shift_x_q <= seMsb_to4_uid1642_b & rightShiftStage2Idx1Rng4_uid1643_i_unnamed_conv188_shift_x_b;

    -- seMsb_to8_uid1637(BITSELECT,1636)@33
    seMsb_to8_uid1637_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1630_i_unnamed_conv188_shift_x_b(0)) & xMSB_uid1630_i_unnamed_conv188_shift_x_b));
    seMsb_to8_uid1637_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1637_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1638_i_unnamed_conv188_shift_x(BITSELECT,1637)@33
    rightShiftStage1Idx1Rng8_uid1638_i_unnamed_conv188_shift_x_b <= rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1639_i_unnamed_conv188_shift_x(BITJOIN,1638)@33
    rightShiftStage1Idx1_uid1639_i_unnamed_conv188_shift_x_q <= seMsb_to8_uid1637_b & rightShiftStage1Idx1Rng8_uid1638_i_unnamed_conv188_shift_x_b;

    -- seMsb_to16_uid1632(BITSELECT,1631)@33
    seMsb_to16_uid1632_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1630_i_unnamed_conv188_shift_x_b(0)) & xMSB_uid1630_i_unnamed_conv188_shift_x_b));
    seMsb_to16_uid1632_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1632_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1633_i_unnamed_conv188_shift_x(BITSELECT,1632)@33
    rightShiftStage0Idx1Rng16_uid1633_i_unnamed_conv188_shift_x_b <= i_unnamed_conv185_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1634_i_unnamed_conv188_shift_x(BITJOIN,1633)@33
    rightShiftStage0Idx1_uid1634_i_unnamed_conv188_shift_x_q <= seMsb_to16_uid1632_b & rightShiftStage0Idx1Rng16_uid1633_i_unnamed_conv188_shift_x_b;

    -- rightShiftStage0_uid1636_i_unnamed_conv188_shift_x(MUX,1635)@33
    rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_s <= VCC_q;
    rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_combproc: PROCESS (rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_s, i_unnamed_conv185_vt_join_q, rightShiftStage0Idx1_uid1634_i_unnamed_conv188_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_q <= i_unnamed_conv185_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_q <= rightShiftStage0Idx1_uid1634_i_unnamed_conv188_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1641_i_unnamed_conv188_shift_x(MUX,1640)@33
    rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_s <= VCC_q;
    rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_combproc: PROCESS (rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_s, rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_q, rightShiftStage1Idx1_uid1639_i_unnamed_conv188_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_q <= rightShiftStage0_uid1636_i_unnamed_conv188_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_q <= rightShiftStage1Idx1_uid1639_i_unnamed_conv188_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1646_i_unnamed_conv188_shift_x(MUX,1645)@33
    rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_s <= VCC_q;
    rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_combproc: PROCESS (rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_s, rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_q, rightShiftStage2Idx1_uid1644_i_unnamed_conv188_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_q <= rightShiftStage1_uid1641_i_unnamed_conv188_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_q <= rightShiftStage2Idx1_uid1644_i_unnamed_conv188_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1651_i_unnamed_conv188_shift_x(MUX,1650)@33
    rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_s <= VCC_q;
    rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_combproc: PROCESS (rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_s, rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_q, rightShiftStage3Idx1_uid1649_i_unnamed_conv188_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_q <= rightShiftStage2_uid1646_i_unnamed_conv188_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_q <= rightShiftStage3Idx1_uid1649_i_unnamed_conv188_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1655_i_unnamed_conv188_shift_x(MUX,1654)@33
    rightShiftStage4_uid1655_i_unnamed_conv188_shift_x_s <= VCC_q;
    rightShiftStage4_uid1655_i_unnamed_conv188_shift_x_combproc: PROCESS (rightShiftStage4_uid1655_i_unnamed_conv188_shift_x_s, rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_q, rightShiftStage4Idx1_uid1653_i_unnamed_conv188_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1655_i_unnamed_conv188_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1655_i_unnamed_conv188_shift_x_q <= rightShiftStage3_uid1651_i_unnamed_conv188_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1655_i_unnamed_conv188_shift_x_q <= rightShiftStage4Idx1_uid1653_i_unnamed_conv188_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1655_i_unnamed_conv188_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked49_conv(LOGICAL,594)@33
    i_mul10_masked49_conv_q <= rightShiftStage4_uid1655_i_unnamed_conv188_shift_x_q and redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q;

    -- leftShiftStage0_uid1664_i_unnamed_conv190_shift_x(MUX,1663)@33
    leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_s <= VCC_q;
    leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_combproc: PROCESS (leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_s, i_mul10_masked49_conv_q, leftShiftStage0Idx1_uid1662_i_unnamed_conv190_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_q <= i_mul10_masked49_conv_q;
            WHEN "1" => leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_q <= leftShiftStage0Idx1_uid1662_i_unnamed_conv190_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1669_i_unnamed_conv190_shift_x(MUX,1668)@33
    leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_s <= VCC_q;
    leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_combproc: PROCESS (leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_s, leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_q, leftShiftStage1Idx1_uid1667_i_unnamed_conv190_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_q <= leftShiftStage0_uid1664_i_unnamed_conv190_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_q <= leftShiftStage1Idx1_uid1667_i_unnamed_conv190_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1674_i_unnamed_conv190_shift_x(MUX,1673)@33
    leftShiftStage2_uid1674_i_unnamed_conv190_shift_x_s <= VCC_q;
    leftShiftStage2_uid1674_i_unnamed_conv190_shift_x_combproc: PROCESS (leftShiftStage2_uid1674_i_unnamed_conv190_shift_x_s, leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_q, leftShiftStage2Idx1_uid1672_i_unnamed_conv190_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1674_i_unnamed_conv190_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1674_i_unnamed_conv190_shift_x_q <= leftShiftStage1_uid1669_i_unnamed_conv190_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1674_i_unnamed_conv190_shift_x_q <= leftShiftStage2Idx1_uid1672_i_unnamed_conv190_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1674_i_unnamed_conv190_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv189_vt_select_31(BITSELECT,714)@33
    i_unnamed_conv189_vt_select_31_b <= leftShiftStage2_uid1674_i_unnamed_conv190_shift_x_q(31 downto 25);

    -- redist16_i_unnamed_conv189_vt_select_31_b_2(DELAY,2656)
    redist16_i_unnamed_conv189_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv189_vt_select_31_b, xout => redist16_i_unnamed_conv189_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv189_vt_const_24(CONSTANT,712)
    i_unnamed_conv189_vt_const_24_q <= "0000000000000000000000000";

    -- i_unnamed_conv189_vt_join(BITJOIN,713)@35
    i_unnamed_conv189_vt_join_q <= redist16_i_unnamed_conv189_vt_select_31_b_2_q & i_unnamed_conv189_vt_const_24_q;

    -- leftShiftStage1Idx1Rng8_uid1610_i_unnamed_conv182_shift_x(BITSELECT,1609)@33
    leftShiftStage1Idx1Rng8_uid1610_i_unnamed_conv182_shift_x_in <= leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1610_i_unnamed_conv182_shift_x_b <= leftShiftStage1Idx1Rng8_uid1610_i_unnamed_conv182_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1611_i_unnamed_conv182_shift_x(BITJOIN,1610)@33
    leftShiftStage1Idx1_uid1611_i_unnamed_conv182_shift_x_q <= leftShiftStage1Idx1Rng8_uid1610_i_unnamed_conv182_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1605_i_unnamed_conv182_shift_x(BITSELECT,1604)@33
    leftShiftStage0Idx1Rng16_uid1605_i_unnamed_conv182_shift_x_in <= i_mul10_masked47_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1605_i_unnamed_conv182_shift_x_b <= leftShiftStage0Idx1Rng16_uid1605_i_unnamed_conv182_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1606_i_unnamed_conv182_shift_x(BITJOIN,1605)@33
    leftShiftStage0Idx1_uid1606_i_unnamed_conv182_shift_x_q <= leftShiftStage0Idx1Rng16_uid1605_i_unnamed_conv182_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage1Idx1Rng2_uid1544_i_unnamed_conv178_shift_x(BITSELECT,1543)@33
    leftShiftStage1Idx1Rng2_uid1544_i_unnamed_conv178_shift_x_in <= leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1544_i_unnamed_conv178_shift_x_b <= leftShiftStage1Idx1Rng2_uid1544_i_unnamed_conv178_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1545_i_unnamed_conv178_shift_x(BITJOIN,1544)@33
    leftShiftStage1Idx1_uid1545_i_unnamed_conv178_shift_x_q <= leftShiftStage1Idx1Rng2_uid1544_i_unnamed_conv178_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng8_uid1539_i_unnamed_conv178_shift_x(BITSELECT,1538)@33
    leftShiftStage0Idx1Rng8_uid1539_i_unnamed_conv178_shift_x_in <= i_syncbuf_n_elem_sync_buffer69_conv_out_buffer_out(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1539_i_unnamed_conv178_shift_x_b <= leftShiftStage0Idx1Rng8_uid1539_i_unnamed_conv178_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1540_i_unnamed_conv178_shift_x(BITJOIN,1539)@33
    leftShiftStage0Idx1_uid1540_i_unnamed_conv178_shift_x_q <= leftShiftStage0Idx1Rng8_uid1539_i_unnamed_conv178_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- i_syncbuf_n_elem_sync_buffer69_conv(BLACKBOX,615)@0
    -- in in_i_dependence@33
    -- in in_valid_in@33
    -- out out_buffer_out@33
    -- out out_valid_out@33
    thei_syncbuf_n_elem_sync_buffer69_conv : i_syncbuf_n_elem_sync_buffer69_conv175
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist75_sync_in_aunroll_x_in_i_valid_20_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer69_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1542_i_unnamed_conv178_shift_x(MUX,1541)@33
    leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_s <= VCC_q;
    leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_combproc: PROCESS (leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_s, i_syncbuf_n_elem_sync_buffer69_conv_out_buffer_out, leftShiftStage0Idx1_uid1540_i_unnamed_conv178_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_q <= i_syncbuf_n_elem_sync_buffer69_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_q <= leftShiftStage0Idx1_uid1540_i_unnamed_conv178_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1547_i_unnamed_conv178_shift_x(MUX,1546)@33
    leftShiftStage1_uid1547_i_unnamed_conv178_shift_x_s <= VCC_q;
    leftShiftStage1_uid1547_i_unnamed_conv178_shift_x_combproc: PROCESS (leftShiftStage1_uid1547_i_unnamed_conv178_shift_x_s, leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_q, leftShiftStage1Idx1_uid1545_i_unnamed_conv178_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1547_i_unnamed_conv178_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1547_i_unnamed_conv178_shift_x_q <= leftShiftStage0_uid1542_i_unnamed_conv178_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1547_i_unnamed_conv178_shift_x_q <= leftShiftStage1Idx1_uid1545_i_unnamed_conv178_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1547_i_unnamed_conv178_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv177_vt_select_31(BITSELECT,702)@33
    i_unnamed_conv177_vt_select_31_b <= leftShiftStage1_uid1547_i_unnamed_conv178_shift_x_q(31 downto 10);

    -- i_unnamed_conv177_vt_const_9(CONSTANT,700)
    i_unnamed_conv177_vt_const_9_q <= "0000000000";

    -- i_unnamed_conv177_vt_join(BITJOIN,701)@33
    i_unnamed_conv177_vt_join_q <= i_unnamed_conv177_vt_select_31_b & i_unnamed_conv177_vt_const_9_q;

    -- xMSB_uid1574_i_unnamed_conv180_shift_x(BITSELECT,1573)@33
    xMSB_uid1574_i_unnamed_conv180_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv177_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1596_i_unnamed_conv180_shift_x(BITSELECT,1595)@33
    rightShiftStage4Idx1Rng1_uid1596_i_unnamed_conv180_shift_x_b <= rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1597_i_unnamed_conv180_shift_x(BITJOIN,1596)@33
    rightShiftStage4Idx1_uid1597_i_unnamed_conv180_shift_x_q <= xMSB_uid1574_i_unnamed_conv180_shift_x_b & rightShiftStage4Idx1Rng1_uid1596_i_unnamed_conv180_shift_x_b;

    -- seMsb_to2_uid1591(BITSELECT,1590)@33
    seMsb_to2_uid1591_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1574_i_unnamed_conv180_shift_x_b(0)) & xMSB_uid1574_i_unnamed_conv180_shift_x_b));
    seMsb_to2_uid1591_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1591_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1592_i_unnamed_conv180_shift_x(BITSELECT,1591)@33
    rightShiftStage3Idx1Rng2_uid1592_i_unnamed_conv180_shift_x_b <= rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1593_i_unnamed_conv180_shift_x(BITJOIN,1592)@33
    rightShiftStage3Idx1_uid1593_i_unnamed_conv180_shift_x_q <= seMsb_to2_uid1591_b & rightShiftStage3Idx1Rng2_uid1592_i_unnamed_conv180_shift_x_b;

    -- seMsb_to4_uid1586(BITSELECT,1585)@33
    seMsb_to4_uid1586_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1574_i_unnamed_conv180_shift_x_b(0)) & xMSB_uid1574_i_unnamed_conv180_shift_x_b));
    seMsb_to4_uid1586_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1586_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1587_i_unnamed_conv180_shift_x(BITSELECT,1586)@33
    rightShiftStage2Idx1Rng4_uid1587_i_unnamed_conv180_shift_x_b <= rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1588_i_unnamed_conv180_shift_x(BITJOIN,1587)@33
    rightShiftStage2Idx1_uid1588_i_unnamed_conv180_shift_x_q <= seMsb_to4_uid1586_b & rightShiftStage2Idx1Rng4_uid1587_i_unnamed_conv180_shift_x_b;

    -- seMsb_to8_uid1581(BITSELECT,1580)@33
    seMsb_to8_uid1581_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1574_i_unnamed_conv180_shift_x_b(0)) & xMSB_uid1574_i_unnamed_conv180_shift_x_b));
    seMsb_to8_uid1581_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1581_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1582_i_unnamed_conv180_shift_x(BITSELECT,1581)@33
    rightShiftStage1Idx1Rng8_uid1582_i_unnamed_conv180_shift_x_b <= rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1583_i_unnamed_conv180_shift_x(BITJOIN,1582)@33
    rightShiftStage1Idx1_uid1583_i_unnamed_conv180_shift_x_q <= seMsb_to8_uid1581_b & rightShiftStage1Idx1Rng8_uid1582_i_unnamed_conv180_shift_x_b;

    -- seMsb_to16_uid1576(BITSELECT,1575)@33
    seMsb_to16_uid1576_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1574_i_unnamed_conv180_shift_x_b(0)) & xMSB_uid1574_i_unnamed_conv180_shift_x_b));
    seMsb_to16_uid1576_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1576_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1577_i_unnamed_conv180_shift_x(BITSELECT,1576)@33
    rightShiftStage0Idx1Rng16_uid1577_i_unnamed_conv180_shift_x_b <= i_unnamed_conv177_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1578_i_unnamed_conv180_shift_x(BITJOIN,1577)@33
    rightShiftStage0Idx1_uid1578_i_unnamed_conv180_shift_x_q <= seMsb_to16_uid1576_b & rightShiftStage0Idx1Rng16_uid1577_i_unnamed_conv180_shift_x_b;

    -- rightShiftStage0_uid1580_i_unnamed_conv180_shift_x(MUX,1579)@33
    rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_s <= VCC_q;
    rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_combproc: PROCESS (rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_s, i_unnamed_conv177_vt_join_q, rightShiftStage0Idx1_uid1578_i_unnamed_conv180_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_q <= i_unnamed_conv177_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_q <= rightShiftStage0Idx1_uid1578_i_unnamed_conv180_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1585_i_unnamed_conv180_shift_x(MUX,1584)@33
    rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_s <= VCC_q;
    rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_combproc: PROCESS (rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_s, rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_q, rightShiftStage1Idx1_uid1583_i_unnamed_conv180_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_q <= rightShiftStage0_uid1580_i_unnamed_conv180_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_q <= rightShiftStage1Idx1_uid1583_i_unnamed_conv180_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1590_i_unnamed_conv180_shift_x(MUX,1589)@33
    rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_s <= VCC_q;
    rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_combproc: PROCESS (rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_s, rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_q, rightShiftStage2Idx1_uid1588_i_unnamed_conv180_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_q <= rightShiftStage1_uid1585_i_unnamed_conv180_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_q <= rightShiftStage2Idx1_uid1588_i_unnamed_conv180_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1595_i_unnamed_conv180_shift_x(MUX,1594)@33
    rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_s <= VCC_q;
    rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_combproc: PROCESS (rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_s, rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_q, rightShiftStage3Idx1_uid1593_i_unnamed_conv180_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_q <= rightShiftStage2_uid1590_i_unnamed_conv180_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_q <= rightShiftStage3Idx1_uid1593_i_unnamed_conv180_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1599_i_unnamed_conv180_shift_x(MUX,1598)@33
    rightShiftStage4_uid1599_i_unnamed_conv180_shift_x_s <= VCC_q;
    rightShiftStage4_uid1599_i_unnamed_conv180_shift_x_combproc: PROCESS (rightShiftStage4_uid1599_i_unnamed_conv180_shift_x_s, rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_q, rightShiftStage4Idx1_uid1597_i_unnamed_conv180_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1599_i_unnamed_conv180_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1599_i_unnamed_conv180_shift_x_q <= rightShiftStage3_uid1595_i_unnamed_conv180_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1599_i_unnamed_conv180_shift_x_q <= rightShiftStage4Idx1_uid1597_i_unnamed_conv180_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1599_i_unnamed_conv180_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked47_conv(LOGICAL,593)@33
    i_mul10_masked47_conv_q <= rightShiftStage4_uid1599_i_unnamed_conv180_shift_x_q and redist55_sync_in_aunroll_x_in_c0_eni1_1_20_q;

    -- leftShiftStage0_uid1608_i_unnamed_conv182_shift_x(MUX,1607)@33
    leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_s <= VCC_q;
    leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_combproc: PROCESS (leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_s, i_mul10_masked47_conv_q, leftShiftStage0Idx1_uid1606_i_unnamed_conv182_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_q <= i_mul10_masked47_conv_q;
            WHEN "1" => leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_q <= leftShiftStage0Idx1_uid1606_i_unnamed_conv182_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1613_i_unnamed_conv182_shift_x(MUX,1612)@33
    leftShiftStage1_uid1613_i_unnamed_conv182_shift_x_s <= VCC_q;
    leftShiftStage1_uid1613_i_unnamed_conv182_shift_x_combproc: PROCESS (leftShiftStage1_uid1613_i_unnamed_conv182_shift_x_s, leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_q, leftShiftStage1Idx1_uid1611_i_unnamed_conv182_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1613_i_unnamed_conv182_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1613_i_unnamed_conv182_shift_x_q <= leftShiftStage0_uid1608_i_unnamed_conv182_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1613_i_unnamed_conv182_shift_x_q <= leftShiftStage1Idx1_uid1611_i_unnamed_conv182_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1613_i_unnamed_conv182_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv181_vt_select_31(BITSELECT,708)@33
    i_unnamed_conv181_vt_select_31_b <= leftShiftStage1_uid1613_i_unnamed_conv182_shift_x_q(31 downto 24);

    -- redist17_i_unnamed_conv181_vt_select_31_b_1(DELAY,2657)
    redist17_i_unnamed_conv181_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv181_vt_select_31_b, xout => redist17_i_unnamed_conv181_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv181_vt_const_23(CONSTANT,706)
    i_unnamed_conv181_vt_const_23_q <= "000000000000000000000000";

    -- i_unnamed_conv181_vt_join(BITJOIN,707)@34
    i_unnamed_conv181_vt_join_q <= redist17_i_unnamed_conv181_vt_select_31_b_1_q & i_unnamed_conv181_vt_const_23_q;

    -- leftShiftStage3Idx1Rng1_uid1530_i_unnamed_conv174_shift_x(BITSELECT,1529)@32
    leftShiftStage3Idx1Rng1_uid1530_i_unnamed_conv174_shift_x_in <= leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid1530_i_unnamed_conv174_shift_x_b <= leftShiftStage3Idx1Rng1_uid1530_i_unnamed_conv174_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid1531_i_unnamed_conv174_shift_x(BITJOIN,1530)@32
    leftShiftStage3Idx1_uid1531_i_unnamed_conv174_shift_x_q <= leftShiftStage3Idx1Rng1_uid1530_i_unnamed_conv174_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid1525_i_unnamed_conv174_shift_x(BITSELECT,1524)@32
    leftShiftStage2Idx1Rng2_uid1525_i_unnamed_conv174_shift_x_in <= leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1525_i_unnamed_conv174_shift_x_b <= leftShiftStage2Idx1Rng2_uid1525_i_unnamed_conv174_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1526_i_unnamed_conv174_shift_x(BITJOIN,1525)@32
    leftShiftStage2Idx1_uid1526_i_unnamed_conv174_shift_x_q <= leftShiftStage2Idx1Rng2_uid1525_i_unnamed_conv174_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid1520_i_unnamed_conv174_shift_x(BITSELECT,1519)@32
    leftShiftStage1Idx1Rng4_uid1520_i_unnamed_conv174_shift_x_in <= leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1520_i_unnamed_conv174_shift_x_b <= leftShiftStage1Idx1Rng4_uid1520_i_unnamed_conv174_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1521_i_unnamed_conv174_shift_x(BITJOIN,1520)@32
    leftShiftStage1Idx1_uid1521_i_unnamed_conv174_shift_x_q <= leftShiftStage1Idx1Rng4_uid1520_i_unnamed_conv174_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid1515_i_unnamed_conv174_shift_x(BITSELECT,1514)@32
    leftShiftStage0Idx1Rng16_uid1515_i_unnamed_conv174_shift_x_in <= i_mul10_masked45_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1515_i_unnamed_conv174_shift_x_b <= leftShiftStage0Idx1Rng16_uid1515_i_unnamed_conv174_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1516_i_unnamed_conv174_shift_x(BITJOIN,1515)@32
    leftShiftStage0Idx1_uid1516_i_unnamed_conv174_shift_x_q <= leftShiftStage0Idx1Rng16_uid1515_i_unnamed_conv174_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage2Idx1Rng1_uid1478_i_unnamed_conv170_shift_x(BITSELECT,1477)@32
    leftShiftStage2Idx1Rng1_uid1478_i_unnamed_conv170_shift_x_in <= leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1478_i_unnamed_conv170_shift_x_b <= leftShiftStage2Idx1Rng1_uid1478_i_unnamed_conv170_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1479_i_unnamed_conv170_shift_x(BITJOIN,1478)@32
    leftShiftStage2Idx1_uid1479_i_unnamed_conv170_shift_x_q <= leftShiftStage2Idx1Rng1_uid1478_i_unnamed_conv170_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng2_uid1473_i_unnamed_conv170_shift_x(BITSELECT,1472)@32
    leftShiftStage1Idx1Rng2_uid1473_i_unnamed_conv170_shift_x_in <= leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1473_i_unnamed_conv170_shift_x_b <= leftShiftStage1Idx1Rng2_uid1473_i_unnamed_conv170_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1474_i_unnamed_conv170_shift_x(BITJOIN,1473)@32
    leftShiftStage1Idx1_uid1474_i_unnamed_conv170_shift_x_q <= leftShiftStage1Idx1Rng2_uid1473_i_unnamed_conv170_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng8_uid1468_i_unnamed_conv170_shift_x(BITSELECT,1467)@32
    leftShiftStage0Idx1Rng8_uid1468_i_unnamed_conv170_shift_x_in <= i_syncbuf_n_elem_sync_buffer70_conv_out_buffer_out(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1468_i_unnamed_conv170_shift_x_b <= leftShiftStage0Idx1Rng8_uid1468_i_unnamed_conv170_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1469_i_unnamed_conv170_shift_x(BITJOIN,1468)@32
    leftShiftStage0Idx1_uid1469_i_unnamed_conv170_shift_x_q <= leftShiftStage0Idx1Rng8_uid1468_i_unnamed_conv170_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- i_syncbuf_n_elem_sync_buffer70_conv(BLACKBOX,616)@0
    -- in in_i_dependence@32
    -- in in_valid_in@32
    -- out out_buffer_out@32
    -- out out_valid_out@32
    thei_syncbuf_n_elem_sync_buffer70_conv : i_syncbuf_n_elem_sync_buffer70_conv167
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist74_sync_in_aunroll_x_in_i_valid_19_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer70_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1471_i_unnamed_conv170_shift_x(MUX,1470)@32
    leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_s <= VCC_q;
    leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_combproc: PROCESS (leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_s, i_syncbuf_n_elem_sync_buffer70_conv_out_buffer_out, leftShiftStage0Idx1_uid1469_i_unnamed_conv170_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_q <= i_syncbuf_n_elem_sync_buffer70_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_q <= leftShiftStage0Idx1_uid1469_i_unnamed_conv170_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1476_i_unnamed_conv170_shift_x(MUX,1475)@32
    leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_s <= VCC_q;
    leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_combproc: PROCESS (leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_s, leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_q, leftShiftStage1Idx1_uid1474_i_unnamed_conv170_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_q <= leftShiftStage0_uid1471_i_unnamed_conv170_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_q <= leftShiftStage1Idx1_uid1474_i_unnamed_conv170_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1481_i_unnamed_conv170_shift_x(MUX,1480)@32
    leftShiftStage2_uid1481_i_unnamed_conv170_shift_x_s <= VCC_q;
    leftShiftStage2_uid1481_i_unnamed_conv170_shift_x_combproc: PROCESS (leftShiftStage2_uid1481_i_unnamed_conv170_shift_x_s, leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_q, leftShiftStage2Idx1_uid1479_i_unnamed_conv170_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1481_i_unnamed_conv170_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1481_i_unnamed_conv170_shift_x_q <= leftShiftStage1_uid1476_i_unnamed_conv170_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1481_i_unnamed_conv170_shift_x_q <= leftShiftStage2Idx1_uid1479_i_unnamed_conv170_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1481_i_unnamed_conv170_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv169_vt_select_31(BITSELECT,696)@32
    i_unnamed_conv169_vt_select_31_b <= leftShiftStage2_uid1481_i_unnamed_conv170_shift_x_q(31 downto 11);

    -- i_unnamed_conv169_vt_const_10(CONSTANT,694)
    i_unnamed_conv169_vt_const_10_q <= "00000000000";

    -- i_unnamed_conv169_vt_join(BITJOIN,695)@32
    i_unnamed_conv169_vt_join_q <= i_unnamed_conv169_vt_select_31_b & i_unnamed_conv169_vt_const_10_q;

    -- xMSB_uid1484_i_unnamed_conv172_shift_x(BITSELECT,1483)@32
    xMSB_uid1484_i_unnamed_conv172_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv169_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1506_i_unnamed_conv172_shift_x(BITSELECT,1505)@32
    rightShiftStage4Idx1Rng1_uid1506_i_unnamed_conv172_shift_x_b <= rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1507_i_unnamed_conv172_shift_x(BITJOIN,1506)@32
    rightShiftStage4Idx1_uid1507_i_unnamed_conv172_shift_x_q <= xMSB_uid1484_i_unnamed_conv172_shift_x_b & rightShiftStage4Idx1Rng1_uid1506_i_unnamed_conv172_shift_x_b;

    -- seMsb_to2_uid1501(BITSELECT,1500)@32
    seMsb_to2_uid1501_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1484_i_unnamed_conv172_shift_x_b(0)) & xMSB_uid1484_i_unnamed_conv172_shift_x_b));
    seMsb_to2_uid1501_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1501_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1502_i_unnamed_conv172_shift_x(BITSELECT,1501)@32
    rightShiftStage3Idx1Rng2_uid1502_i_unnamed_conv172_shift_x_b <= rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1503_i_unnamed_conv172_shift_x(BITJOIN,1502)@32
    rightShiftStage3Idx1_uid1503_i_unnamed_conv172_shift_x_q <= seMsb_to2_uid1501_b & rightShiftStage3Idx1Rng2_uid1502_i_unnamed_conv172_shift_x_b;

    -- seMsb_to4_uid1496(BITSELECT,1495)@32
    seMsb_to4_uid1496_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1484_i_unnamed_conv172_shift_x_b(0)) & xMSB_uid1484_i_unnamed_conv172_shift_x_b));
    seMsb_to4_uid1496_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1496_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1497_i_unnamed_conv172_shift_x(BITSELECT,1496)@32
    rightShiftStage2Idx1Rng4_uid1497_i_unnamed_conv172_shift_x_b <= rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1498_i_unnamed_conv172_shift_x(BITJOIN,1497)@32
    rightShiftStage2Idx1_uid1498_i_unnamed_conv172_shift_x_q <= seMsb_to4_uid1496_b & rightShiftStage2Idx1Rng4_uid1497_i_unnamed_conv172_shift_x_b;

    -- seMsb_to8_uid1491(BITSELECT,1490)@32
    seMsb_to8_uid1491_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1484_i_unnamed_conv172_shift_x_b(0)) & xMSB_uid1484_i_unnamed_conv172_shift_x_b));
    seMsb_to8_uid1491_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1491_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1492_i_unnamed_conv172_shift_x(BITSELECT,1491)@32
    rightShiftStage1Idx1Rng8_uid1492_i_unnamed_conv172_shift_x_b <= rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1493_i_unnamed_conv172_shift_x(BITJOIN,1492)@32
    rightShiftStage1Idx1_uid1493_i_unnamed_conv172_shift_x_q <= seMsb_to8_uid1491_b & rightShiftStage1Idx1Rng8_uid1492_i_unnamed_conv172_shift_x_b;

    -- seMsb_to16_uid1486(BITSELECT,1485)@32
    seMsb_to16_uid1486_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1484_i_unnamed_conv172_shift_x_b(0)) & xMSB_uid1484_i_unnamed_conv172_shift_x_b));
    seMsb_to16_uid1486_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1486_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1487_i_unnamed_conv172_shift_x(BITSELECT,1486)@32
    rightShiftStage0Idx1Rng16_uid1487_i_unnamed_conv172_shift_x_b <= i_unnamed_conv169_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1488_i_unnamed_conv172_shift_x(BITJOIN,1487)@32
    rightShiftStage0Idx1_uid1488_i_unnamed_conv172_shift_x_q <= seMsb_to16_uid1486_b & rightShiftStage0Idx1Rng16_uid1487_i_unnamed_conv172_shift_x_b;

    -- rightShiftStage0_uid1490_i_unnamed_conv172_shift_x(MUX,1489)@32
    rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_s <= VCC_q;
    rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_combproc: PROCESS (rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_s, i_unnamed_conv169_vt_join_q, rightShiftStage0Idx1_uid1488_i_unnamed_conv172_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_q <= i_unnamed_conv169_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_q <= rightShiftStage0Idx1_uid1488_i_unnamed_conv172_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1495_i_unnamed_conv172_shift_x(MUX,1494)@32
    rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_s <= VCC_q;
    rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_combproc: PROCESS (rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_s, rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_q, rightShiftStage1Idx1_uid1493_i_unnamed_conv172_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_q <= rightShiftStage0_uid1490_i_unnamed_conv172_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_q <= rightShiftStage1Idx1_uid1493_i_unnamed_conv172_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1500_i_unnamed_conv172_shift_x(MUX,1499)@32
    rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_s <= VCC_q;
    rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_combproc: PROCESS (rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_s, rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_q, rightShiftStage2Idx1_uid1498_i_unnamed_conv172_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_q <= rightShiftStage1_uid1495_i_unnamed_conv172_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_q <= rightShiftStage2Idx1_uid1498_i_unnamed_conv172_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1505_i_unnamed_conv172_shift_x(MUX,1504)@32
    rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_s <= VCC_q;
    rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_combproc: PROCESS (rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_s, rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_q, rightShiftStage3Idx1_uid1503_i_unnamed_conv172_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_q <= rightShiftStage2_uid1500_i_unnamed_conv172_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_q <= rightShiftStage3Idx1_uid1503_i_unnamed_conv172_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1509_i_unnamed_conv172_shift_x(MUX,1508)@32
    rightShiftStage4_uid1509_i_unnamed_conv172_shift_x_s <= VCC_q;
    rightShiftStage4_uid1509_i_unnamed_conv172_shift_x_combproc: PROCESS (rightShiftStage4_uid1509_i_unnamed_conv172_shift_x_s, rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_q, rightShiftStage4Idx1_uid1507_i_unnamed_conv172_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1509_i_unnamed_conv172_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1509_i_unnamed_conv172_shift_x_q <= rightShiftStage3_uid1505_i_unnamed_conv172_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1509_i_unnamed_conv172_shift_x_q <= rightShiftStage4Idx1_uid1507_i_unnamed_conv172_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1509_i_unnamed_conv172_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked45_conv(LOGICAL,592)@32
    i_mul10_masked45_conv_q <= rightShiftStage4_uid1509_i_unnamed_conv172_shift_x_q and redist54_sync_in_aunroll_x_in_c0_eni1_1_19_q;

    -- leftShiftStage0_uid1518_i_unnamed_conv174_shift_x(MUX,1517)@32
    leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_s <= VCC_q;
    leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_combproc: PROCESS (leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_s, i_mul10_masked45_conv_q, leftShiftStage0Idx1_uid1516_i_unnamed_conv174_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_q <= i_mul10_masked45_conv_q;
            WHEN "1" => leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_q <= leftShiftStage0Idx1_uid1516_i_unnamed_conv174_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1523_i_unnamed_conv174_shift_x(MUX,1522)@32
    leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_s <= VCC_q;
    leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_combproc: PROCESS (leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_s, leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_q, leftShiftStage1Idx1_uid1521_i_unnamed_conv174_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_q <= leftShiftStage0_uid1518_i_unnamed_conv174_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_q <= leftShiftStage1Idx1_uid1521_i_unnamed_conv174_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1528_i_unnamed_conv174_shift_x(MUX,1527)@32
    leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_s <= VCC_q;
    leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_combproc: PROCESS (leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_s, leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_q, leftShiftStage2Idx1_uid1526_i_unnamed_conv174_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_q <= leftShiftStage1_uid1523_i_unnamed_conv174_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_q <= leftShiftStage2Idx1_uid1526_i_unnamed_conv174_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1533_i_unnamed_conv174_shift_x(MUX,1532)@32
    leftShiftStage3_uid1533_i_unnamed_conv174_shift_x_s <= VCC_q;
    leftShiftStage3_uid1533_i_unnamed_conv174_shift_x_combproc: PROCESS (leftShiftStage3_uid1533_i_unnamed_conv174_shift_x_s, leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_q, leftShiftStage3Idx1_uid1531_i_unnamed_conv174_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1533_i_unnamed_conv174_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1533_i_unnamed_conv174_shift_x_q <= leftShiftStage2_uid1528_i_unnamed_conv174_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1533_i_unnamed_conv174_shift_x_q <= leftShiftStage3Idx1_uid1531_i_unnamed_conv174_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1533_i_unnamed_conv174_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv173_vt_select_31(BITSELECT,699)@32
    i_unnamed_conv173_vt_select_31_b <= leftShiftStage3_uid1533_i_unnamed_conv174_shift_x_q(31 downto 23);

    -- redist18_i_unnamed_conv173_vt_select_31_b_1(DELAY,2658)
    redist18_i_unnamed_conv173_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv173_vt_select_31_b, xout => redist18_i_unnamed_conv173_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv173_vt_const_22(CONSTANT,697)
    i_unnamed_conv173_vt_const_22_q <= "00000000000000000000000";

    -- i_unnamed_conv173_vt_join(BITJOIN,698)@33
    i_unnamed_conv173_vt_join_q <= redist18_i_unnamed_conv173_vt_select_31_b_1_q & i_unnamed_conv173_vt_const_22_q;

    -- leftShiftStage2Idx1Rng2_uid1459_i_unnamed_conv166_shift_x(BITSELECT,1458)@31
    leftShiftStage2Idx1Rng2_uid1459_i_unnamed_conv166_shift_x_in <= leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1459_i_unnamed_conv166_shift_x_b <= leftShiftStage2Idx1Rng2_uid1459_i_unnamed_conv166_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1460_i_unnamed_conv166_shift_x(BITJOIN,1459)@31
    leftShiftStage2Idx1_uid1460_i_unnamed_conv166_shift_x_q <= leftShiftStage2Idx1Rng2_uid1459_i_unnamed_conv166_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid1454_i_unnamed_conv166_shift_x(BITSELECT,1453)@31
    leftShiftStage1Idx1Rng4_uid1454_i_unnamed_conv166_shift_x_in <= leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1454_i_unnamed_conv166_shift_x_b <= leftShiftStage1Idx1Rng4_uid1454_i_unnamed_conv166_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1455_i_unnamed_conv166_shift_x(BITJOIN,1454)@31
    leftShiftStage1Idx1_uid1455_i_unnamed_conv166_shift_x_q <= leftShiftStage1Idx1Rng4_uid1454_i_unnamed_conv166_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid1449_i_unnamed_conv166_shift_x(BITSELECT,1448)@31
    leftShiftStage0Idx1Rng16_uid1449_i_unnamed_conv166_shift_x_in <= i_mul10_masked43_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1449_i_unnamed_conv166_shift_x_b <= leftShiftStage0Idx1Rng16_uid1449_i_unnamed_conv166_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1450_i_unnamed_conv166_shift_x(BITJOIN,1449)@31
    leftShiftStage0Idx1_uid1450_i_unnamed_conv166_shift_x_q <= leftShiftStage0Idx1Rng16_uid1449_i_unnamed_conv166_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage1Idx1Rng4_uid1412_i_unnamed_conv162_shift_x(BITSELECT,1411)@31
    leftShiftStage1Idx1Rng4_uid1412_i_unnamed_conv162_shift_x_in <= leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1412_i_unnamed_conv162_shift_x_b <= leftShiftStage1Idx1Rng4_uid1412_i_unnamed_conv162_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1413_i_unnamed_conv162_shift_x(BITJOIN,1412)@31
    leftShiftStage1Idx1_uid1413_i_unnamed_conv162_shift_x_q <= leftShiftStage1Idx1Rng4_uid1412_i_unnamed_conv162_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid1407_i_unnamed_conv162_shift_x(BITSELECT,1406)@31
    leftShiftStage0Idx1Rng8_uid1407_i_unnamed_conv162_shift_x_in <= i_syncbuf_n_elem_sync_buffer71_conv_out_buffer_out(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1407_i_unnamed_conv162_shift_x_b <= leftShiftStage0Idx1Rng8_uid1407_i_unnamed_conv162_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1408_i_unnamed_conv162_shift_x(BITJOIN,1407)@31
    leftShiftStage0Idx1_uid1408_i_unnamed_conv162_shift_x_q <= leftShiftStage0Idx1Rng8_uid1407_i_unnamed_conv162_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- i_syncbuf_n_elem_sync_buffer71_conv(BLACKBOX,617)@0
    -- in in_i_dependence@31
    -- in in_valid_in@31
    -- out out_buffer_out@31
    -- out out_valid_out@31
    thei_syncbuf_n_elem_sync_buffer71_conv : i_syncbuf_n_elem_sync_buffer71_conv159
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist73_sync_in_aunroll_x_in_i_valid_18_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer71_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1410_i_unnamed_conv162_shift_x(MUX,1409)@31
    leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_s <= VCC_q;
    leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_combproc: PROCESS (leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_s, i_syncbuf_n_elem_sync_buffer71_conv_out_buffer_out, leftShiftStage0Idx1_uid1408_i_unnamed_conv162_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_q <= i_syncbuf_n_elem_sync_buffer71_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_q <= leftShiftStage0Idx1_uid1408_i_unnamed_conv162_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1415_i_unnamed_conv162_shift_x(MUX,1414)@31
    leftShiftStage1_uid1415_i_unnamed_conv162_shift_x_s <= VCC_q;
    leftShiftStage1_uid1415_i_unnamed_conv162_shift_x_combproc: PROCESS (leftShiftStage1_uid1415_i_unnamed_conv162_shift_x_s, leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_q, leftShiftStage1Idx1_uid1413_i_unnamed_conv162_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1415_i_unnamed_conv162_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1415_i_unnamed_conv162_shift_x_q <= leftShiftStage0_uid1410_i_unnamed_conv162_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1415_i_unnamed_conv162_shift_x_q <= leftShiftStage1Idx1_uid1413_i_unnamed_conv162_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1415_i_unnamed_conv162_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv161_vt_select_31(BITSELECT,690)@31
    i_unnamed_conv161_vt_select_31_b <= leftShiftStage1_uid1415_i_unnamed_conv162_shift_x_q(31 downto 12);

    -- i_unnamed_conv161_vt_const_11(CONSTANT,688)
    i_unnamed_conv161_vt_const_11_q <= "000000000000";

    -- i_unnamed_conv161_vt_join(BITJOIN,689)@31
    i_unnamed_conv161_vt_join_q <= i_unnamed_conv161_vt_select_31_b & i_unnamed_conv161_vt_const_11_q;

    -- xMSB_uid1418_i_unnamed_conv164_shift_x(BITSELECT,1417)@31
    xMSB_uid1418_i_unnamed_conv164_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv161_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1440_i_unnamed_conv164_shift_x(BITSELECT,1439)@31
    rightShiftStage4Idx1Rng1_uid1440_i_unnamed_conv164_shift_x_b <= rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1441_i_unnamed_conv164_shift_x(BITJOIN,1440)@31
    rightShiftStage4Idx1_uid1441_i_unnamed_conv164_shift_x_q <= xMSB_uid1418_i_unnamed_conv164_shift_x_b & rightShiftStage4Idx1Rng1_uid1440_i_unnamed_conv164_shift_x_b;

    -- seMsb_to2_uid1435(BITSELECT,1434)@31
    seMsb_to2_uid1435_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1418_i_unnamed_conv164_shift_x_b(0)) & xMSB_uid1418_i_unnamed_conv164_shift_x_b));
    seMsb_to2_uid1435_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1435_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1436_i_unnamed_conv164_shift_x(BITSELECT,1435)@31
    rightShiftStage3Idx1Rng2_uid1436_i_unnamed_conv164_shift_x_b <= rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1437_i_unnamed_conv164_shift_x(BITJOIN,1436)@31
    rightShiftStage3Idx1_uid1437_i_unnamed_conv164_shift_x_q <= seMsb_to2_uid1435_b & rightShiftStage3Idx1Rng2_uid1436_i_unnamed_conv164_shift_x_b;

    -- seMsb_to4_uid1430(BITSELECT,1429)@31
    seMsb_to4_uid1430_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1418_i_unnamed_conv164_shift_x_b(0)) & xMSB_uid1418_i_unnamed_conv164_shift_x_b));
    seMsb_to4_uid1430_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1430_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1431_i_unnamed_conv164_shift_x(BITSELECT,1430)@31
    rightShiftStage2Idx1Rng4_uid1431_i_unnamed_conv164_shift_x_b <= rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1432_i_unnamed_conv164_shift_x(BITJOIN,1431)@31
    rightShiftStage2Idx1_uid1432_i_unnamed_conv164_shift_x_q <= seMsb_to4_uid1430_b & rightShiftStage2Idx1Rng4_uid1431_i_unnamed_conv164_shift_x_b;

    -- seMsb_to8_uid1425(BITSELECT,1424)@31
    seMsb_to8_uid1425_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1418_i_unnamed_conv164_shift_x_b(0)) & xMSB_uid1418_i_unnamed_conv164_shift_x_b));
    seMsb_to8_uid1425_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1425_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1426_i_unnamed_conv164_shift_x(BITSELECT,1425)@31
    rightShiftStage1Idx1Rng8_uid1426_i_unnamed_conv164_shift_x_b <= rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1427_i_unnamed_conv164_shift_x(BITJOIN,1426)@31
    rightShiftStage1Idx1_uid1427_i_unnamed_conv164_shift_x_q <= seMsb_to8_uid1425_b & rightShiftStage1Idx1Rng8_uid1426_i_unnamed_conv164_shift_x_b;

    -- seMsb_to16_uid1420(BITSELECT,1419)@31
    seMsb_to16_uid1420_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1418_i_unnamed_conv164_shift_x_b(0)) & xMSB_uid1418_i_unnamed_conv164_shift_x_b));
    seMsb_to16_uid1420_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1420_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1421_i_unnamed_conv164_shift_x(BITSELECT,1420)@31
    rightShiftStage0Idx1Rng16_uid1421_i_unnamed_conv164_shift_x_b <= i_unnamed_conv161_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1422_i_unnamed_conv164_shift_x(BITJOIN,1421)@31
    rightShiftStage0Idx1_uid1422_i_unnamed_conv164_shift_x_q <= seMsb_to16_uid1420_b & rightShiftStage0Idx1Rng16_uid1421_i_unnamed_conv164_shift_x_b;

    -- rightShiftStage0_uid1424_i_unnamed_conv164_shift_x(MUX,1423)@31
    rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_s <= VCC_q;
    rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_combproc: PROCESS (rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_s, i_unnamed_conv161_vt_join_q, rightShiftStage0Idx1_uid1422_i_unnamed_conv164_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_q <= i_unnamed_conv161_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_q <= rightShiftStage0Idx1_uid1422_i_unnamed_conv164_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1429_i_unnamed_conv164_shift_x(MUX,1428)@31
    rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_s <= VCC_q;
    rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_combproc: PROCESS (rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_s, rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_q, rightShiftStage1Idx1_uid1427_i_unnamed_conv164_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_q <= rightShiftStage0_uid1424_i_unnamed_conv164_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_q <= rightShiftStage1Idx1_uid1427_i_unnamed_conv164_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1434_i_unnamed_conv164_shift_x(MUX,1433)@31
    rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_s <= VCC_q;
    rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_combproc: PROCESS (rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_s, rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_q, rightShiftStage2Idx1_uid1432_i_unnamed_conv164_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_q <= rightShiftStage1_uid1429_i_unnamed_conv164_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_q <= rightShiftStage2Idx1_uid1432_i_unnamed_conv164_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1439_i_unnamed_conv164_shift_x(MUX,1438)@31
    rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_s <= VCC_q;
    rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_combproc: PROCESS (rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_s, rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_q, rightShiftStage3Idx1_uid1437_i_unnamed_conv164_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_q <= rightShiftStage2_uid1434_i_unnamed_conv164_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_q <= rightShiftStage3Idx1_uid1437_i_unnamed_conv164_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1443_i_unnamed_conv164_shift_x(MUX,1442)@31
    rightShiftStage4_uid1443_i_unnamed_conv164_shift_x_s <= VCC_q;
    rightShiftStage4_uid1443_i_unnamed_conv164_shift_x_combproc: PROCESS (rightShiftStage4_uid1443_i_unnamed_conv164_shift_x_s, rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_q, rightShiftStage4Idx1_uid1441_i_unnamed_conv164_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1443_i_unnamed_conv164_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1443_i_unnamed_conv164_shift_x_q <= rightShiftStage3_uid1439_i_unnamed_conv164_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1443_i_unnamed_conv164_shift_x_q <= rightShiftStage4Idx1_uid1441_i_unnamed_conv164_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1443_i_unnamed_conv164_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked43_conv(LOGICAL,591)@31
    i_mul10_masked43_conv_q <= rightShiftStage4_uid1443_i_unnamed_conv164_shift_x_q and redist53_sync_in_aunroll_x_in_c0_eni1_1_18_q;

    -- leftShiftStage0_uid1452_i_unnamed_conv166_shift_x(MUX,1451)@31
    leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_s <= VCC_q;
    leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_combproc: PROCESS (leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_s, i_mul10_masked43_conv_q, leftShiftStage0Idx1_uid1450_i_unnamed_conv166_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_q <= i_mul10_masked43_conv_q;
            WHEN "1" => leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_q <= leftShiftStage0Idx1_uid1450_i_unnamed_conv166_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1457_i_unnamed_conv166_shift_x(MUX,1456)@31
    leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_s <= VCC_q;
    leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_combproc: PROCESS (leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_s, leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_q, leftShiftStage1Idx1_uid1455_i_unnamed_conv166_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_q <= leftShiftStage0_uid1452_i_unnamed_conv166_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_q <= leftShiftStage1Idx1_uid1455_i_unnamed_conv166_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1462_i_unnamed_conv166_shift_x(MUX,1461)@31
    leftShiftStage2_uid1462_i_unnamed_conv166_shift_x_s <= VCC_q;
    leftShiftStage2_uid1462_i_unnamed_conv166_shift_x_combproc: PROCESS (leftShiftStage2_uid1462_i_unnamed_conv166_shift_x_s, leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_q, leftShiftStage2Idx1_uid1460_i_unnamed_conv166_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1462_i_unnamed_conv166_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1462_i_unnamed_conv166_shift_x_q <= leftShiftStage1_uid1457_i_unnamed_conv166_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1462_i_unnamed_conv166_shift_x_q <= leftShiftStage2Idx1_uid1460_i_unnamed_conv166_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1462_i_unnamed_conv166_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv165_vt_select_31(BITSELECT,693)@31
    i_unnamed_conv165_vt_select_31_b <= leftShiftStage2_uid1462_i_unnamed_conv166_shift_x_q(31 downto 22);

    -- redist19_i_unnamed_conv165_vt_select_31_b_1(DELAY,2659)
    redist19_i_unnamed_conv165_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv165_vt_select_31_b, xout => redist19_i_unnamed_conv165_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv165_vt_const_21(CONSTANT,691)
    i_unnamed_conv165_vt_const_21_q <= "0000000000000000000000";

    -- i_unnamed_conv165_vt_join(BITJOIN,692)@32
    i_unnamed_conv165_vt_join_q <= redist19_i_unnamed_conv165_vt_select_31_b_1_q & i_unnamed_conv165_vt_const_21_q;

    -- leftShiftStage2Idx1Rng1_uid1398_i_unnamed_conv158_shift_x(BITSELECT,1397)@30
    leftShiftStage2Idx1Rng1_uid1398_i_unnamed_conv158_shift_x_in <= leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1398_i_unnamed_conv158_shift_x_b <= leftShiftStage2Idx1Rng1_uid1398_i_unnamed_conv158_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1399_i_unnamed_conv158_shift_x(BITJOIN,1398)@30
    leftShiftStage2Idx1_uid1399_i_unnamed_conv158_shift_x_q <= leftShiftStage2Idx1Rng1_uid1398_i_unnamed_conv158_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng4_uid1393_i_unnamed_conv158_shift_x(BITSELECT,1392)@30
    leftShiftStage1Idx1Rng4_uid1393_i_unnamed_conv158_shift_x_in <= leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1393_i_unnamed_conv158_shift_x_b <= leftShiftStage1Idx1Rng4_uid1393_i_unnamed_conv158_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1394_i_unnamed_conv158_shift_x(BITJOIN,1393)@30
    leftShiftStage1Idx1_uid1394_i_unnamed_conv158_shift_x_q <= leftShiftStage1Idx1Rng4_uid1393_i_unnamed_conv158_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid1388_i_unnamed_conv158_shift_x(BITSELECT,1387)@30
    leftShiftStage0Idx1Rng16_uid1388_i_unnamed_conv158_shift_x_in <= i_mul10_masked41_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1388_i_unnamed_conv158_shift_x_b <= leftShiftStage0Idx1Rng16_uid1388_i_unnamed_conv158_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1389_i_unnamed_conv158_shift_x(BITJOIN,1388)@30
    leftShiftStage0Idx1_uid1389_i_unnamed_conv158_shift_x_q <= leftShiftStage0Idx1Rng16_uid1388_i_unnamed_conv158_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage2Idx1Rng1_uid1351_i_unnamed_conv154_shift_x(BITSELECT,1350)@30
    leftShiftStage2Idx1Rng1_uid1351_i_unnamed_conv154_shift_x_in <= leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1351_i_unnamed_conv154_shift_x_b <= leftShiftStage2Idx1Rng1_uid1351_i_unnamed_conv154_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1352_i_unnamed_conv154_shift_x(BITJOIN,1351)@30
    leftShiftStage2Idx1_uid1352_i_unnamed_conv154_shift_x_q <= leftShiftStage2Idx1Rng1_uid1351_i_unnamed_conv154_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng4_uid1346_i_unnamed_conv154_shift_x(BITSELECT,1345)@30
    leftShiftStage1Idx1Rng4_uid1346_i_unnamed_conv154_shift_x_in <= leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1346_i_unnamed_conv154_shift_x_b <= leftShiftStage1Idx1Rng4_uid1346_i_unnamed_conv154_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1347_i_unnamed_conv154_shift_x(BITJOIN,1346)@30
    leftShiftStage1Idx1_uid1347_i_unnamed_conv154_shift_x_q <= leftShiftStage1Idx1Rng4_uid1346_i_unnamed_conv154_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid1341_i_unnamed_conv154_shift_x(BITSELECT,1340)@30
    leftShiftStage0Idx1Rng8_uid1341_i_unnamed_conv154_shift_x_in <= i_syncbuf_n_elem_sync_buffer72_conv_out_buffer_out(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1341_i_unnamed_conv154_shift_x_b <= leftShiftStage0Idx1Rng8_uid1341_i_unnamed_conv154_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1342_i_unnamed_conv154_shift_x(BITJOIN,1341)@30
    leftShiftStage0Idx1_uid1342_i_unnamed_conv154_shift_x_q <= leftShiftStage0Idx1Rng8_uid1341_i_unnamed_conv154_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- i_syncbuf_n_elem_sync_buffer72_conv(BLACKBOX,618)@0
    -- in in_i_dependence@30
    -- in in_valid_in@30
    -- out out_buffer_out@30
    -- out out_valid_out@30
    thei_syncbuf_n_elem_sync_buffer72_conv : i_syncbuf_n_elem_sync_buffer72_conv151
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist72_sync_in_aunroll_x_in_i_valid_17_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer72_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1344_i_unnamed_conv154_shift_x(MUX,1343)@30
    leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_s <= VCC_q;
    leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_combproc: PROCESS (leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_s, i_syncbuf_n_elem_sync_buffer72_conv_out_buffer_out, leftShiftStage0Idx1_uid1342_i_unnamed_conv154_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_q <= i_syncbuf_n_elem_sync_buffer72_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_q <= leftShiftStage0Idx1_uid1342_i_unnamed_conv154_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1349_i_unnamed_conv154_shift_x(MUX,1348)@30
    leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_s <= VCC_q;
    leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_combproc: PROCESS (leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_s, leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_q, leftShiftStage1Idx1_uid1347_i_unnamed_conv154_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_q <= leftShiftStage0_uid1344_i_unnamed_conv154_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_q <= leftShiftStage1Idx1_uid1347_i_unnamed_conv154_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1354_i_unnamed_conv154_shift_x(MUX,1353)@30
    leftShiftStage2_uid1354_i_unnamed_conv154_shift_x_s <= VCC_q;
    leftShiftStage2_uid1354_i_unnamed_conv154_shift_x_combproc: PROCESS (leftShiftStage2_uid1354_i_unnamed_conv154_shift_x_s, leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_q, leftShiftStage2Idx1_uid1352_i_unnamed_conv154_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1354_i_unnamed_conv154_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1354_i_unnamed_conv154_shift_x_q <= leftShiftStage1_uid1349_i_unnamed_conv154_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1354_i_unnamed_conv154_shift_x_q <= leftShiftStage2Idx1_uid1352_i_unnamed_conv154_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1354_i_unnamed_conv154_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv153_vt_select_31(BITSELECT,684)@30
    i_unnamed_conv153_vt_select_31_b <= leftShiftStage2_uid1354_i_unnamed_conv154_shift_x_q(31 downto 13);

    -- i_unnamed_conv153_vt_const_12(CONSTANT,682)
    i_unnamed_conv153_vt_const_12_q <= "0000000000000";

    -- i_unnamed_conv153_vt_join(BITJOIN,683)@30
    i_unnamed_conv153_vt_join_q <= i_unnamed_conv153_vt_select_31_b & i_unnamed_conv153_vt_const_12_q;

    -- xMSB_uid1357_i_unnamed_conv156_shift_x(BITSELECT,1356)@30
    xMSB_uid1357_i_unnamed_conv156_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv153_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1379_i_unnamed_conv156_shift_x(BITSELECT,1378)@30
    rightShiftStage4Idx1Rng1_uid1379_i_unnamed_conv156_shift_x_b <= rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1380_i_unnamed_conv156_shift_x(BITJOIN,1379)@30
    rightShiftStage4Idx1_uid1380_i_unnamed_conv156_shift_x_q <= xMSB_uid1357_i_unnamed_conv156_shift_x_b & rightShiftStage4Idx1Rng1_uid1379_i_unnamed_conv156_shift_x_b;

    -- seMsb_to2_uid1374(BITSELECT,1373)@30
    seMsb_to2_uid1374_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1357_i_unnamed_conv156_shift_x_b(0)) & xMSB_uid1357_i_unnamed_conv156_shift_x_b));
    seMsb_to2_uid1374_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1374_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1375_i_unnamed_conv156_shift_x(BITSELECT,1374)@30
    rightShiftStage3Idx1Rng2_uid1375_i_unnamed_conv156_shift_x_b <= rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1376_i_unnamed_conv156_shift_x(BITJOIN,1375)@30
    rightShiftStage3Idx1_uid1376_i_unnamed_conv156_shift_x_q <= seMsb_to2_uid1374_b & rightShiftStage3Idx1Rng2_uid1375_i_unnamed_conv156_shift_x_b;

    -- seMsb_to4_uid1369(BITSELECT,1368)@30
    seMsb_to4_uid1369_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1357_i_unnamed_conv156_shift_x_b(0)) & xMSB_uid1357_i_unnamed_conv156_shift_x_b));
    seMsb_to4_uid1369_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1369_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1370_i_unnamed_conv156_shift_x(BITSELECT,1369)@30
    rightShiftStage2Idx1Rng4_uid1370_i_unnamed_conv156_shift_x_b <= rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1371_i_unnamed_conv156_shift_x(BITJOIN,1370)@30
    rightShiftStage2Idx1_uid1371_i_unnamed_conv156_shift_x_q <= seMsb_to4_uid1369_b & rightShiftStage2Idx1Rng4_uid1370_i_unnamed_conv156_shift_x_b;

    -- seMsb_to8_uid1364(BITSELECT,1363)@30
    seMsb_to8_uid1364_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1357_i_unnamed_conv156_shift_x_b(0)) & xMSB_uid1357_i_unnamed_conv156_shift_x_b));
    seMsb_to8_uid1364_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1364_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1365_i_unnamed_conv156_shift_x(BITSELECT,1364)@30
    rightShiftStage1Idx1Rng8_uid1365_i_unnamed_conv156_shift_x_b <= rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1366_i_unnamed_conv156_shift_x(BITJOIN,1365)@30
    rightShiftStage1Idx1_uid1366_i_unnamed_conv156_shift_x_q <= seMsb_to8_uid1364_b & rightShiftStage1Idx1Rng8_uid1365_i_unnamed_conv156_shift_x_b;

    -- seMsb_to16_uid1359(BITSELECT,1358)@30
    seMsb_to16_uid1359_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1357_i_unnamed_conv156_shift_x_b(0)) & xMSB_uid1357_i_unnamed_conv156_shift_x_b));
    seMsb_to16_uid1359_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1359_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1360_i_unnamed_conv156_shift_x(BITSELECT,1359)@30
    rightShiftStage0Idx1Rng16_uid1360_i_unnamed_conv156_shift_x_b <= i_unnamed_conv153_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1361_i_unnamed_conv156_shift_x(BITJOIN,1360)@30
    rightShiftStage0Idx1_uid1361_i_unnamed_conv156_shift_x_q <= seMsb_to16_uid1359_b & rightShiftStage0Idx1Rng16_uid1360_i_unnamed_conv156_shift_x_b;

    -- rightShiftStage0_uid1363_i_unnamed_conv156_shift_x(MUX,1362)@30
    rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_s <= VCC_q;
    rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_combproc: PROCESS (rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_s, i_unnamed_conv153_vt_join_q, rightShiftStage0Idx1_uid1361_i_unnamed_conv156_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_q <= i_unnamed_conv153_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_q <= rightShiftStage0Idx1_uid1361_i_unnamed_conv156_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1368_i_unnamed_conv156_shift_x(MUX,1367)@30
    rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_s <= VCC_q;
    rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_combproc: PROCESS (rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_s, rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_q, rightShiftStage1Idx1_uid1366_i_unnamed_conv156_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_q <= rightShiftStage0_uid1363_i_unnamed_conv156_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_q <= rightShiftStage1Idx1_uid1366_i_unnamed_conv156_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1373_i_unnamed_conv156_shift_x(MUX,1372)@30
    rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_s <= VCC_q;
    rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_combproc: PROCESS (rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_s, rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_q, rightShiftStage2Idx1_uid1371_i_unnamed_conv156_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_q <= rightShiftStage1_uid1368_i_unnamed_conv156_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_q <= rightShiftStage2Idx1_uid1371_i_unnamed_conv156_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1378_i_unnamed_conv156_shift_x(MUX,1377)@30
    rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_s <= VCC_q;
    rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_combproc: PROCESS (rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_s, rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_q, rightShiftStage3Idx1_uid1376_i_unnamed_conv156_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_q <= rightShiftStage2_uid1373_i_unnamed_conv156_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_q <= rightShiftStage3Idx1_uid1376_i_unnamed_conv156_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1382_i_unnamed_conv156_shift_x(MUX,1381)@30
    rightShiftStage4_uid1382_i_unnamed_conv156_shift_x_s <= VCC_q;
    rightShiftStage4_uid1382_i_unnamed_conv156_shift_x_combproc: PROCESS (rightShiftStage4_uid1382_i_unnamed_conv156_shift_x_s, rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_q, rightShiftStage4Idx1_uid1380_i_unnamed_conv156_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1382_i_unnamed_conv156_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1382_i_unnamed_conv156_shift_x_q <= rightShiftStage3_uid1378_i_unnamed_conv156_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1382_i_unnamed_conv156_shift_x_q <= rightShiftStage4Idx1_uid1380_i_unnamed_conv156_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1382_i_unnamed_conv156_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked41_conv(LOGICAL,590)@30
    i_mul10_masked41_conv_q <= rightShiftStage4_uid1382_i_unnamed_conv156_shift_x_q and redist52_sync_in_aunroll_x_in_c0_eni1_1_17_q;

    -- leftShiftStage0_uid1391_i_unnamed_conv158_shift_x(MUX,1390)@30
    leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_s <= VCC_q;
    leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_combproc: PROCESS (leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_s, i_mul10_masked41_conv_q, leftShiftStage0Idx1_uid1389_i_unnamed_conv158_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_q <= i_mul10_masked41_conv_q;
            WHEN "1" => leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_q <= leftShiftStage0Idx1_uid1389_i_unnamed_conv158_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1396_i_unnamed_conv158_shift_x(MUX,1395)@30
    leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_s <= VCC_q;
    leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_combproc: PROCESS (leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_s, leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_q, leftShiftStage1Idx1_uid1394_i_unnamed_conv158_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_q <= leftShiftStage0_uid1391_i_unnamed_conv158_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_q <= leftShiftStage1Idx1_uid1394_i_unnamed_conv158_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1401_i_unnamed_conv158_shift_x(MUX,1400)@30
    leftShiftStage2_uid1401_i_unnamed_conv158_shift_x_s <= VCC_q;
    leftShiftStage2_uid1401_i_unnamed_conv158_shift_x_combproc: PROCESS (leftShiftStage2_uid1401_i_unnamed_conv158_shift_x_s, leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_q, leftShiftStage2Idx1_uid1399_i_unnamed_conv158_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1401_i_unnamed_conv158_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1401_i_unnamed_conv158_shift_x_q <= leftShiftStage1_uid1396_i_unnamed_conv158_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1401_i_unnamed_conv158_shift_x_q <= leftShiftStage2Idx1_uid1399_i_unnamed_conv158_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1401_i_unnamed_conv158_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv157_vt_select_31(BITSELECT,687)@30
    i_unnamed_conv157_vt_select_31_b <= leftShiftStage2_uid1401_i_unnamed_conv158_shift_x_q(31 downto 21);

    -- redist20_i_unnamed_conv157_vt_select_31_b_1(DELAY,2660)
    redist20_i_unnamed_conv157_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 11, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv157_vt_select_31_b, xout => redist20_i_unnamed_conv157_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv157_vt_const_20(CONSTANT,685)
    i_unnamed_conv157_vt_const_20_q <= "000000000000000000000";

    -- i_unnamed_conv157_vt_join(BITJOIN,686)@31
    i_unnamed_conv157_vt_join_q <= redist20_i_unnamed_conv157_vt_select_31_b_1_q & i_unnamed_conv157_vt_const_20_q;

    -- leftShiftStage1Idx1Rng4_uid1332_i_unnamed_conv150_shift_x(BITSELECT,1331)@29
    leftShiftStage1Idx1Rng4_uid1332_i_unnamed_conv150_shift_x_in <= leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1332_i_unnamed_conv150_shift_x_b <= leftShiftStage1Idx1Rng4_uid1332_i_unnamed_conv150_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1333_i_unnamed_conv150_shift_x(BITJOIN,1332)@29
    leftShiftStage1Idx1_uid1333_i_unnamed_conv150_shift_x_q <= leftShiftStage1Idx1Rng4_uid1332_i_unnamed_conv150_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid1327_i_unnamed_conv150_shift_x(BITSELECT,1326)@29
    leftShiftStage0Idx1Rng16_uid1327_i_unnamed_conv150_shift_x_in <= i_mul10_masked39_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1327_i_unnamed_conv150_shift_x_b <= leftShiftStage0Idx1Rng16_uid1327_i_unnamed_conv150_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1328_i_unnamed_conv150_shift_x(BITJOIN,1327)@29
    leftShiftStage0Idx1_uid1328_i_unnamed_conv150_shift_x_q <= leftShiftStage0Idx1Rng16_uid1327_i_unnamed_conv150_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage2Idx1Rng2_uid1290_i_unnamed_conv146_shift_x(BITSELECT,1289)@29
    leftShiftStage2Idx1Rng2_uid1290_i_unnamed_conv146_shift_x_in <= leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1290_i_unnamed_conv146_shift_x_b <= leftShiftStage2Idx1Rng2_uid1290_i_unnamed_conv146_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1291_i_unnamed_conv146_shift_x(BITJOIN,1290)@29
    leftShiftStage2Idx1_uid1291_i_unnamed_conv146_shift_x_q <= leftShiftStage2Idx1Rng2_uid1290_i_unnamed_conv146_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid1285_i_unnamed_conv146_shift_x(BITSELECT,1284)@29
    leftShiftStage1Idx1Rng4_uid1285_i_unnamed_conv146_shift_x_in <= leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1285_i_unnamed_conv146_shift_x_b <= leftShiftStage1Idx1Rng4_uid1285_i_unnamed_conv146_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1286_i_unnamed_conv146_shift_x(BITJOIN,1285)@29
    leftShiftStage1Idx1_uid1286_i_unnamed_conv146_shift_x_q <= leftShiftStage1Idx1Rng4_uid1285_i_unnamed_conv146_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid1280_i_unnamed_conv146_shift_x(BITSELECT,1279)@29
    leftShiftStage0Idx1Rng8_uid1280_i_unnamed_conv146_shift_x_in <= i_syncbuf_n_elem_sync_buffer73_conv_out_buffer_out(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1280_i_unnamed_conv146_shift_x_b <= leftShiftStage0Idx1Rng8_uid1280_i_unnamed_conv146_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1281_i_unnamed_conv146_shift_x(BITJOIN,1280)@29
    leftShiftStage0Idx1_uid1281_i_unnamed_conv146_shift_x_q <= leftShiftStage0Idx1Rng8_uid1280_i_unnamed_conv146_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- i_syncbuf_n_elem_sync_buffer73_conv(BLACKBOX,619)@0
    -- in in_i_dependence@29
    -- in in_valid_in@29
    -- out out_buffer_out@29
    -- out out_valid_out@29
    thei_syncbuf_n_elem_sync_buffer73_conv : i_syncbuf_n_elem_sync_buffer73_conv143
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist71_sync_in_aunroll_x_in_i_valid_16_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer73_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1283_i_unnamed_conv146_shift_x(MUX,1282)@29
    leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_s <= VCC_q;
    leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_combproc: PROCESS (leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_s, i_syncbuf_n_elem_sync_buffer73_conv_out_buffer_out, leftShiftStage0Idx1_uid1281_i_unnamed_conv146_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_q <= i_syncbuf_n_elem_sync_buffer73_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_q <= leftShiftStage0Idx1_uid1281_i_unnamed_conv146_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1288_i_unnamed_conv146_shift_x(MUX,1287)@29
    leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_s <= VCC_q;
    leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_combproc: PROCESS (leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_s, leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_q, leftShiftStage1Idx1_uid1286_i_unnamed_conv146_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_q <= leftShiftStage0_uid1283_i_unnamed_conv146_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_q <= leftShiftStage1Idx1_uid1286_i_unnamed_conv146_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1293_i_unnamed_conv146_shift_x(MUX,1292)@29
    leftShiftStage2_uid1293_i_unnamed_conv146_shift_x_s <= VCC_q;
    leftShiftStage2_uid1293_i_unnamed_conv146_shift_x_combproc: PROCESS (leftShiftStage2_uid1293_i_unnamed_conv146_shift_x_s, leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_q, leftShiftStage2Idx1_uid1291_i_unnamed_conv146_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1293_i_unnamed_conv146_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1293_i_unnamed_conv146_shift_x_q <= leftShiftStage1_uid1288_i_unnamed_conv146_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1293_i_unnamed_conv146_shift_x_q <= leftShiftStage2Idx1_uid1291_i_unnamed_conv146_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1293_i_unnamed_conv146_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv145_vt_select_31(BITSELECT,678)@29
    i_unnamed_conv145_vt_select_31_b <= leftShiftStage2_uid1293_i_unnamed_conv146_shift_x_q(31 downto 14);

    -- i_unnamed_conv101_vt_const_13(CONSTANT,640)
    i_unnamed_conv101_vt_const_13_q <= "00000000000000";

    -- i_unnamed_conv145_vt_join(BITJOIN,677)@29
    i_unnamed_conv145_vt_join_q <= i_unnamed_conv145_vt_select_31_b & i_unnamed_conv101_vt_const_13_q;

    -- xMSB_uid1296_i_unnamed_conv148_shift_x(BITSELECT,1295)@29
    xMSB_uid1296_i_unnamed_conv148_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv145_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1318_i_unnamed_conv148_shift_x(BITSELECT,1317)@29
    rightShiftStage4Idx1Rng1_uid1318_i_unnamed_conv148_shift_x_b <= rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1319_i_unnamed_conv148_shift_x(BITJOIN,1318)@29
    rightShiftStage4Idx1_uid1319_i_unnamed_conv148_shift_x_q <= xMSB_uid1296_i_unnamed_conv148_shift_x_b & rightShiftStage4Idx1Rng1_uid1318_i_unnamed_conv148_shift_x_b;

    -- seMsb_to2_uid1313(BITSELECT,1312)@29
    seMsb_to2_uid1313_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1296_i_unnamed_conv148_shift_x_b(0)) & xMSB_uid1296_i_unnamed_conv148_shift_x_b));
    seMsb_to2_uid1313_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1313_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1314_i_unnamed_conv148_shift_x(BITSELECT,1313)@29
    rightShiftStage3Idx1Rng2_uid1314_i_unnamed_conv148_shift_x_b <= rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1315_i_unnamed_conv148_shift_x(BITJOIN,1314)@29
    rightShiftStage3Idx1_uid1315_i_unnamed_conv148_shift_x_q <= seMsb_to2_uid1313_b & rightShiftStage3Idx1Rng2_uid1314_i_unnamed_conv148_shift_x_b;

    -- seMsb_to4_uid1308(BITSELECT,1307)@29
    seMsb_to4_uid1308_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1296_i_unnamed_conv148_shift_x_b(0)) & xMSB_uid1296_i_unnamed_conv148_shift_x_b));
    seMsb_to4_uid1308_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1308_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1309_i_unnamed_conv148_shift_x(BITSELECT,1308)@29
    rightShiftStage2Idx1Rng4_uid1309_i_unnamed_conv148_shift_x_b <= rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1310_i_unnamed_conv148_shift_x(BITJOIN,1309)@29
    rightShiftStage2Idx1_uid1310_i_unnamed_conv148_shift_x_q <= seMsb_to4_uid1308_b & rightShiftStage2Idx1Rng4_uid1309_i_unnamed_conv148_shift_x_b;

    -- seMsb_to8_uid1303(BITSELECT,1302)@29
    seMsb_to8_uid1303_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1296_i_unnamed_conv148_shift_x_b(0)) & xMSB_uid1296_i_unnamed_conv148_shift_x_b));
    seMsb_to8_uid1303_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1303_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1304_i_unnamed_conv148_shift_x(BITSELECT,1303)@29
    rightShiftStage1Idx1Rng8_uid1304_i_unnamed_conv148_shift_x_b <= rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1305_i_unnamed_conv148_shift_x(BITJOIN,1304)@29
    rightShiftStage1Idx1_uid1305_i_unnamed_conv148_shift_x_q <= seMsb_to8_uid1303_b & rightShiftStage1Idx1Rng8_uid1304_i_unnamed_conv148_shift_x_b;

    -- seMsb_to16_uid1298(BITSELECT,1297)@29
    seMsb_to16_uid1298_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1296_i_unnamed_conv148_shift_x_b(0)) & xMSB_uid1296_i_unnamed_conv148_shift_x_b));
    seMsb_to16_uid1298_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1298_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1299_i_unnamed_conv148_shift_x(BITSELECT,1298)@29
    rightShiftStage0Idx1Rng16_uid1299_i_unnamed_conv148_shift_x_b <= i_unnamed_conv145_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1300_i_unnamed_conv148_shift_x(BITJOIN,1299)@29
    rightShiftStage0Idx1_uid1300_i_unnamed_conv148_shift_x_q <= seMsb_to16_uid1298_b & rightShiftStage0Idx1Rng16_uid1299_i_unnamed_conv148_shift_x_b;

    -- rightShiftStage0_uid1302_i_unnamed_conv148_shift_x(MUX,1301)@29
    rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_s <= VCC_q;
    rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_combproc: PROCESS (rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_s, i_unnamed_conv145_vt_join_q, rightShiftStage0Idx1_uid1300_i_unnamed_conv148_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_q <= i_unnamed_conv145_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_q <= rightShiftStage0Idx1_uid1300_i_unnamed_conv148_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1307_i_unnamed_conv148_shift_x(MUX,1306)@29
    rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_s <= VCC_q;
    rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_combproc: PROCESS (rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_s, rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_q, rightShiftStage1Idx1_uid1305_i_unnamed_conv148_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_q <= rightShiftStage0_uid1302_i_unnamed_conv148_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_q <= rightShiftStage1Idx1_uid1305_i_unnamed_conv148_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1312_i_unnamed_conv148_shift_x(MUX,1311)@29
    rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_s <= VCC_q;
    rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_combproc: PROCESS (rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_s, rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_q, rightShiftStage2Idx1_uid1310_i_unnamed_conv148_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_q <= rightShiftStage1_uid1307_i_unnamed_conv148_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_q <= rightShiftStage2Idx1_uid1310_i_unnamed_conv148_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1317_i_unnamed_conv148_shift_x(MUX,1316)@29
    rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_s <= VCC_q;
    rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_combproc: PROCESS (rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_s, rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_q, rightShiftStage3Idx1_uid1315_i_unnamed_conv148_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_q <= rightShiftStage2_uid1312_i_unnamed_conv148_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_q <= rightShiftStage3Idx1_uid1315_i_unnamed_conv148_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1321_i_unnamed_conv148_shift_x(MUX,1320)@29
    rightShiftStage4_uid1321_i_unnamed_conv148_shift_x_s <= VCC_q;
    rightShiftStage4_uid1321_i_unnamed_conv148_shift_x_combproc: PROCESS (rightShiftStage4_uid1321_i_unnamed_conv148_shift_x_s, rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_q, rightShiftStage4Idx1_uid1319_i_unnamed_conv148_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1321_i_unnamed_conv148_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1321_i_unnamed_conv148_shift_x_q <= rightShiftStage3_uid1317_i_unnamed_conv148_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1321_i_unnamed_conv148_shift_x_q <= rightShiftStage4Idx1_uid1319_i_unnamed_conv148_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1321_i_unnamed_conv148_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked39_conv(LOGICAL,589)@29
    i_mul10_masked39_conv_q <= rightShiftStage4_uid1321_i_unnamed_conv148_shift_x_q and redist51_sync_in_aunroll_x_in_c0_eni1_1_16_q;

    -- leftShiftStage0_uid1330_i_unnamed_conv150_shift_x(MUX,1329)@29
    leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_s <= VCC_q;
    leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_combproc: PROCESS (leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_s, i_mul10_masked39_conv_q, leftShiftStage0Idx1_uid1328_i_unnamed_conv150_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_q <= i_mul10_masked39_conv_q;
            WHEN "1" => leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_q <= leftShiftStage0Idx1_uid1328_i_unnamed_conv150_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1335_i_unnamed_conv150_shift_x(MUX,1334)@29
    leftShiftStage1_uid1335_i_unnamed_conv150_shift_x_s <= VCC_q;
    leftShiftStage1_uid1335_i_unnamed_conv150_shift_x_combproc: PROCESS (leftShiftStage1_uid1335_i_unnamed_conv150_shift_x_s, leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_q, leftShiftStage1Idx1_uid1333_i_unnamed_conv150_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1335_i_unnamed_conv150_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1335_i_unnamed_conv150_shift_x_q <= leftShiftStage0_uid1330_i_unnamed_conv150_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1335_i_unnamed_conv150_shift_x_q <= leftShiftStage1Idx1_uid1333_i_unnamed_conv150_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1335_i_unnamed_conv150_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv149_vt_select_31(BITSELECT,681)@29
    i_unnamed_conv149_vt_select_31_b <= leftShiftStage1_uid1335_i_unnamed_conv150_shift_x_q(31 downto 20);

    -- redist21_i_unnamed_conv149_vt_select_31_b_1(DELAY,2661)
    redist21_i_unnamed_conv149_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv149_vt_select_31_b, xout => redist21_i_unnamed_conv149_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv149_vt_const_19(CONSTANT,679)
    i_unnamed_conv149_vt_const_19_q <= "00000000000000000000";

    -- i_unnamed_conv149_vt_join(BITJOIN,680)@30
    i_unnamed_conv149_vt_join_q <= redist21_i_unnamed_conv149_vt_select_31_b_1_q & i_unnamed_conv149_vt_const_19_q;

    -- leftShiftStage2Idx1Rng1_uid1271_i_unnamed_conv142_shift_x(BITSELECT,1270)@28
    leftShiftStage2Idx1Rng1_uid1271_i_unnamed_conv142_shift_x_in <= leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid1271_i_unnamed_conv142_shift_x_b <= leftShiftStage2Idx1Rng1_uid1271_i_unnamed_conv142_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid1272_i_unnamed_conv142_shift_x(BITJOIN,1271)@28
    leftShiftStage2Idx1_uid1272_i_unnamed_conv142_shift_x_q <= leftShiftStage2Idx1Rng1_uid1271_i_unnamed_conv142_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng2_uid1266_i_unnamed_conv142_shift_x(BITSELECT,1265)@28
    leftShiftStage1Idx1Rng2_uid1266_i_unnamed_conv142_shift_x_in <= leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1266_i_unnamed_conv142_shift_x_b <= leftShiftStage1Idx1Rng2_uid1266_i_unnamed_conv142_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1267_i_unnamed_conv142_shift_x(BITJOIN,1266)@28
    leftShiftStage1Idx1_uid1267_i_unnamed_conv142_shift_x_q <= leftShiftStage1Idx1Rng2_uid1266_i_unnamed_conv142_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng16_uid1261_i_unnamed_conv142_shift_x(BITSELECT,1260)@28
    leftShiftStage0Idx1Rng16_uid1261_i_unnamed_conv142_shift_x_in <= i_mul10_masked37_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1261_i_unnamed_conv142_shift_x_b <= leftShiftStage0Idx1Rng16_uid1261_i_unnamed_conv142_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1262_i_unnamed_conv142_shift_x(BITJOIN,1261)@28
    leftShiftStage0Idx1_uid1262_i_unnamed_conv142_shift_x_q <= leftShiftStage0Idx1Rng16_uid1261_i_unnamed_conv142_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage3Idx1Rng1_uid1210_i_unnamed_conv138_shift_x(BITSELECT,1209)@28
    leftShiftStage3Idx1Rng1_uid1210_i_unnamed_conv138_shift_x_in <= leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid1210_i_unnamed_conv138_shift_x_b <= leftShiftStage3Idx1Rng1_uid1210_i_unnamed_conv138_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid1211_i_unnamed_conv138_shift_x(BITJOIN,1210)@28
    leftShiftStage3Idx1_uid1211_i_unnamed_conv138_shift_x_q <= leftShiftStage3Idx1Rng1_uid1210_i_unnamed_conv138_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid1205_i_unnamed_conv138_shift_x(BITSELECT,1204)@28
    leftShiftStage2Idx1Rng2_uid1205_i_unnamed_conv138_shift_x_in <= leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid1205_i_unnamed_conv138_shift_x_b <= leftShiftStage2Idx1Rng2_uid1205_i_unnamed_conv138_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid1206_i_unnamed_conv138_shift_x(BITJOIN,1205)@28
    leftShiftStage2Idx1_uid1206_i_unnamed_conv138_shift_x_q <= leftShiftStage2Idx1Rng2_uid1205_i_unnamed_conv138_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid1200_i_unnamed_conv138_shift_x(BITSELECT,1199)@28
    leftShiftStage1Idx1Rng4_uid1200_i_unnamed_conv138_shift_x_in <= leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid1200_i_unnamed_conv138_shift_x_b <= leftShiftStage1Idx1Rng4_uid1200_i_unnamed_conv138_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid1201_i_unnamed_conv138_shift_x(BITJOIN,1200)@28
    leftShiftStage1Idx1_uid1201_i_unnamed_conv138_shift_x_q <= leftShiftStage1Idx1Rng4_uid1200_i_unnamed_conv138_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid1195_i_unnamed_conv138_shift_x(BITSELECT,1194)@28
    leftShiftStage0Idx1Rng8_uid1195_i_unnamed_conv138_shift_x_in <= i_syncbuf_n_elem_sync_buffer74_conv_out_buffer_out(23 downto 0);
    leftShiftStage0Idx1Rng8_uid1195_i_unnamed_conv138_shift_x_b <= leftShiftStage0Idx1Rng8_uid1195_i_unnamed_conv138_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid1196_i_unnamed_conv138_shift_x(BITJOIN,1195)@28
    leftShiftStage0Idx1_uid1196_i_unnamed_conv138_shift_x_q <= leftShiftStage0Idx1Rng8_uid1195_i_unnamed_conv138_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- i_syncbuf_n_elem_sync_buffer74_conv(BLACKBOX,620)@0
    -- in in_i_dependence@28
    -- in in_valid_in@28
    -- out out_buffer_out@28
    -- out out_valid_out@28
    thei_syncbuf_n_elem_sync_buffer74_conv : i_syncbuf_n_elem_sync_buffer74_conv135
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist70_sync_in_aunroll_x_in_i_valid_15_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer74_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1198_i_unnamed_conv138_shift_x(MUX,1197)@28
    leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_s <= VCC_q;
    leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_combproc: PROCESS (leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_s, i_syncbuf_n_elem_sync_buffer74_conv_out_buffer_out, leftShiftStage0Idx1_uid1196_i_unnamed_conv138_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_q <= i_syncbuf_n_elem_sync_buffer74_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_q <= leftShiftStage0Idx1_uid1196_i_unnamed_conv138_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1203_i_unnamed_conv138_shift_x(MUX,1202)@28
    leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_s <= VCC_q;
    leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_combproc: PROCESS (leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_s, leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_q, leftShiftStage1Idx1_uid1201_i_unnamed_conv138_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_q <= leftShiftStage0_uid1198_i_unnamed_conv138_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_q <= leftShiftStage1Idx1_uid1201_i_unnamed_conv138_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1208_i_unnamed_conv138_shift_x(MUX,1207)@28
    leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_s <= VCC_q;
    leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_combproc: PROCESS (leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_s, leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_q, leftShiftStage2Idx1_uid1206_i_unnamed_conv138_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_q <= leftShiftStage1_uid1203_i_unnamed_conv138_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_q <= leftShiftStage2Idx1_uid1206_i_unnamed_conv138_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1213_i_unnamed_conv138_shift_x(MUX,1212)@28
    leftShiftStage3_uid1213_i_unnamed_conv138_shift_x_s <= VCC_q;
    leftShiftStage3_uid1213_i_unnamed_conv138_shift_x_combproc: PROCESS (leftShiftStage3_uid1213_i_unnamed_conv138_shift_x_s, leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_q, leftShiftStage3Idx1_uid1211_i_unnamed_conv138_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1213_i_unnamed_conv138_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1213_i_unnamed_conv138_shift_x_q <= leftShiftStage2_uid1208_i_unnamed_conv138_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1213_i_unnamed_conv138_shift_x_q <= leftShiftStage3Idx1_uid1211_i_unnamed_conv138_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1213_i_unnamed_conv138_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv137_vt_select_31(BITSELECT,669)@28
    i_unnamed_conv137_vt_select_31_b <= leftShiftStage3_uid1213_i_unnamed_conv138_shift_x_q(31 downto 15);

    -- i_unnamed_conv109_vt_const_14(CONSTANT,646)
    i_unnamed_conv109_vt_const_14_q <= "000000000000000";

    -- i_unnamed_conv137_vt_join(BITJOIN,668)@28
    i_unnamed_conv137_vt_join_q <= i_unnamed_conv137_vt_select_31_b & i_unnamed_conv109_vt_const_14_q;

    -- xMSB_uid1230_i_unnamed_conv140_shift_x(BITSELECT,1229)@28
    xMSB_uid1230_i_unnamed_conv140_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv137_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1252_i_unnamed_conv140_shift_x(BITSELECT,1251)@28
    rightShiftStage4Idx1Rng1_uid1252_i_unnamed_conv140_shift_x_b <= rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1253_i_unnamed_conv140_shift_x(BITJOIN,1252)@28
    rightShiftStage4Idx1_uid1253_i_unnamed_conv140_shift_x_q <= xMSB_uid1230_i_unnamed_conv140_shift_x_b & rightShiftStage4Idx1Rng1_uid1252_i_unnamed_conv140_shift_x_b;

    -- seMsb_to2_uid1247(BITSELECT,1246)@28
    seMsb_to2_uid1247_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1230_i_unnamed_conv140_shift_x_b(0)) & xMSB_uid1230_i_unnamed_conv140_shift_x_b));
    seMsb_to2_uid1247_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1247_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1248_i_unnamed_conv140_shift_x(BITSELECT,1247)@28
    rightShiftStage3Idx1Rng2_uid1248_i_unnamed_conv140_shift_x_b <= rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1249_i_unnamed_conv140_shift_x(BITJOIN,1248)@28
    rightShiftStage3Idx1_uid1249_i_unnamed_conv140_shift_x_q <= seMsb_to2_uid1247_b & rightShiftStage3Idx1Rng2_uid1248_i_unnamed_conv140_shift_x_b;

    -- seMsb_to4_uid1242(BITSELECT,1241)@28
    seMsb_to4_uid1242_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1230_i_unnamed_conv140_shift_x_b(0)) & xMSB_uid1230_i_unnamed_conv140_shift_x_b));
    seMsb_to4_uid1242_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1242_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1243_i_unnamed_conv140_shift_x(BITSELECT,1242)@28
    rightShiftStage2Idx1Rng4_uid1243_i_unnamed_conv140_shift_x_b <= rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1244_i_unnamed_conv140_shift_x(BITJOIN,1243)@28
    rightShiftStage2Idx1_uid1244_i_unnamed_conv140_shift_x_q <= seMsb_to4_uid1242_b & rightShiftStage2Idx1Rng4_uid1243_i_unnamed_conv140_shift_x_b;

    -- seMsb_to8_uid1237(BITSELECT,1236)@28
    seMsb_to8_uid1237_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1230_i_unnamed_conv140_shift_x_b(0)) & xMSB_uid1230_i_unnamed_conv140_shift_x_b));
    seMsb_to8_uid1237_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1237_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1238_i_unnamed_conv140_shift_x(BITSELECT,1237)@28
    rightShiftStage1Idx1Rng8_uid1238_i_unnamed_conv140_shift_x_b <= rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1239_i_unnamed_conv140_shift_x(BITJOIN,1238)@28
    rightShiftStage1Idx1_uid1239_i_unnamed_conv140_shift_x_q <= seMsb_to8_uid1237_b & rightShiftStage1Idx1Rng8_uid1238_i_unnamed_conv140_shift_x_b;

    -- seMsb_to16_uid1232(BITSELECT,1231)@28
    seMsb_to16_uid1232_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1230_i_unnamed_conv140_shift_x_b(0)) & xMSB_uid1230_i_unnamed_conv140_shift_x_b));
    seMsb_to16_uid1232_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1232_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1233_i_unnamed_conv140_shift_x(BITSELECT,1232)@28
    rightShiftStage0Idx1Rng16_uid1233_i_unnamed_conv140_shift_x_b <= i_unnamed_conv137_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1234_i_unnamed_conv140_shift_x(BITJOIN,1233)@28
    rightShiftStage0Idx1_uid1234_i_unnamed_conv140_shift_x_q <= seMsb_to16_uid1232_b & rightShiftStage0Idx1Rng16_uid1233_i_unnamed_conv140_shift_x_b;

    -- rightShiftStage0_uid1236_i_unnamed_conv140_shift_x(MUX,1235)@28
    rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_s <= VCC_q;
    rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_combproc: PROCESS (rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_s, i_unnamed_conv137_vt_join_q, rightShiftStage0Idx1_uid1234_i_unnamed_conv140_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_q <= i_unnamed_conv137_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_q <= rightShiftStage0Idx1_uid1234_i_unnamed_conv140_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1241_i_unnamed_conv140_shift_x(MUX,1240)@28
    rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_s <= VCC_q;
    rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_combproc: PROCESS (rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_s, rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_q, rightShiftStage1Idx1_uid1239_i_unnamed_conv140_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_q <= rightShiftStage0_uid1236_i_unnamed_conv140_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_q <= rightShiftStage1Idx1_uid1239_i_unnamed_conv140_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1246_i_unnamed_conv140_shift_x(MUX,1245)@28
    rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_s <= VCC_q;
    rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_combproc: PROCESS (rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_s, rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_q, rightShiftStage2Idx1_uid1244_i_unnamed_conv140_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_q <= rightShiftStage1_uid1241_i_unnamed_conv140_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_q <= rightShiftStage2Idx1_uid1244_i_unnamed_conv140_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1251_i_unnamed_conv140_shift_x(MUX,1250)@28
    rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_s <= VCC_q;
    rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_combproc: PROCESS (rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_s, rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_q, rightShiftStage3Idx1_uid1249_i_unnamed_conv140_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_q <= rightShiftStage2_uid1246_i_unnamed_conv140_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_q <= rightShiftStage3Idx1_uid1249_i_unnamed_conv140_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1255_i_unnamed_conv140_shift_x(MUX,1254)@28
    rightShiftStage4_uid1255_i_unnamed_conv140_shift_x_s <= VCC_q;
    rightShiftStage4_uid1255_i_unnamed_conv140_shift_x_combproc: PROCESS (rightShiftStage4_uid1255_i_unnamed_conv140_shift_x_s, rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_q, rightShiftStage4Idx1_uid1253_i_unnamed_conv140_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1255_i_unnamed_conv140_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1255_i_unnamed_conv140_shift_x_q <= rightShiftStage3_uid1251_i_unnamed_conv140_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1255_i_unnamed_conv140_shift_x_q <= rightShiftStage4Idx1_uid1253_i_unnamed_conv140_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1255_i_unnamed_conv140_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked37_conv(LOGICAL,588)@28
    i_mul10_masked37_conv_q <= rightShiftStage4_uid1255_i_unnamed_conv140_shift_x_q and redist50_sync_in_aunroll_x_in_c0_eni1_1_15_q;

    -- leftShiftStage0_uid1264_i_unnamed_conv142_shift_x(MUX,1263)@28
    leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_s <= VCC_q;
    leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_combproc: PROCESS (leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_s, i_mul10_masked37_conv_q, leftShiftStage0Idx1_uid1262_i_unnamed_conv142_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_q <= i_mul10_masked37_conv_q;
            WHEN "1" => leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_q <= leftShiftStage0Idx1_uid1262_i_unnamed_conv142_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1269_i_unnamed_conv142_shift_x(MUX,1268)@28
    leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_s <= VCC_q;
    leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_combproc: PROCESS (leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_s, leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_q, leftShiftStage1Idx1_uid1267_i_unnamed_conv142_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_q <= leftShiftStage0_uid1264_i_unnamed_conv142_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_q <= leftShiftStage1Idx1_uid1267_i_unnamed_conv142_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1274_i_unnamed_conv142_shift_x(MUX,1273)@28
    leftShiftStage2_uid1274_i_unnamed_conv142_shift_x_s <= VCC_q;
    leftShiftStage2_uid1274_i_unnamed_conv142_shift_x_combproc: PROCESS (leftShiftStage2_uid1274_i_unnamed_conv142_shift_x_s, leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_q, leftShiftStage2Idx1_uid1272_i_unnamed_conv142_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1274_i_unnamed_conv142_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1274_i_unnamed_conv142_shift_x_q <= leftShiftStage1_uid1269_i_unnamed_conv142_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1274_i_unnamed_conv142_shift_x_q <= leftShiftStage2Idx1_uid1272_i_unnamed_conv142_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1274_i_unnamed_conv142_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv141_vt_select_31(BITSELECT,675)@28
    i_unnamed_conv141_vt_select_31_b <= leftShiftStage2_uid1274_i_unnamed_conv142_shift_x_q(31 downto 19);

    -- redist22_i_unnamed_conv141_vt_select_31_b_1(DELAY,2662)
    redist22_i_unnamed_conv141_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 13, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv141_vt_select_31_b, xout => redist22_i_unnamed_conv141_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv105_vt_const_18(CONSTANT,643)
    i_unnamed_conv105_vt_const_18_q <= "0000000000000000000";

    -- i_unnamed_conv141_vt_join(BITJOIN,674)@29
    i_unnamed_conv141_vt_join_q <= redist22_i_unnamed_conv141_vt_select_31_b_1_q & i_unnamed_conv105_vt_const_18_q;

    -- leftShiftStage1Idx1Rng2_uid1186_i_unnamed_conv134_shift_x(BITSELECT,1185)@27
    leftShiftStage1Idx1Rng2_uid1186_i_unnamed_conv134_shift_x_in <= leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1186_i_unnamed_conv134_shift_x_b <= leftShiftStage1Idx1Rng2_uid1186_i_unnamed_conv134_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1187_i_unnamed_conv134_shift_x(BITJOIN,1186)@27
    leftShiftStage1Idx1_uid1187_i_unnamed_conv134_shift_x_q <= leftShiftStage1Idx1Rng2_uid1186_i_unnamed_conv134_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng16_uid1181_i_unnamed_conv134_shift_x(BITSELECT,1180)@27
    leftShiftStage0Idx1Rng16_uid1181_i_unnamed_conv134_shift_x_in <= i_mul10_masked35_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1181_i_unnamed_conv134_shift_x_b <= leftShiftStage0Idx1Rng16_uid1181_i_unnamed_conv134_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1182_i_unnamed_conv134_shift_x(BITJOIN,1181)@27
    leftShiftStage0Idx1_uid1182_i_unnamed_conv134_shift_x_q <= leftShiftStage0Idx1Rng16_uid1181_i_unnamed_conv134_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage0Idx1Rng16_uid1144_i_unnamed_conv130_shift_x(BITSELECT,1143)@27
    leftShiftStage0Idx1Rng16_uid1144_i_unnamed_conv130_shift_x_in <= i_syncbuf_n_elem_sync_buffer75_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1144_i_unnamed_conv130_shift_x_b <= leftShiftStage0Idx1Rng16_uid1144_i_unnamed_conv130_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1145_i_unnamed_conv130_shift_x(BITJOIN,1144)@27
    leftShiftStage0Idx1_uid1145_i_unnamed_conv130_shift_x_q <= leftShiftStage0Idx1Rng16_uid1144_i_unnamed_conv130_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer75_conv(BLACKBOX,621)@0
    -- in in_i_dependence@27
    -- in in_valid_in@27
    -- out out_buffer_out@27
    -- out out_valid_out@27
    thei_syncbuf_n_elem_sync_buffer75_conv : i_syncbuf_n_elem_sync_buffer75_conv127
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist69_sync_in_aunroll_x_in_i_valid_14_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer75_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1147_i_unnamed_conv130_shift_x(MUX,1146)@27
    leftShiftStage0_uid1147_i_unnamed_conv130_shift_x_s <= VCC_q;
    leftShiftStage0_uid1147_i_unnamed_conv130_shift_x_combproc: PROCESS (leftShiftStage0_uid1147_i_unnamed_conv130_shift_x_s, i_syncbuf_n_elem_sync_buffer75_conv_out_buffer_out, leftShiftStage0Idx1_uid1145_i_unnamed_conv130_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1147_i_unnamed_conv130_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1147_i_unnamed_conv130_shift_x_q <= i_syncbuf_n_elem_sync_buffer75_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1147_i_unnamed_conv130_shift_x_q <= leftShiftStage0Idx1_uid1145_i_unnamed_conv130_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1147_i_unnamed_conv130_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv129_vt_select_31(BITSELECT,663)@27
    i_unnamed_conv129_vt_select_31_b <= leftShiftStage0_uid1147_i_unnamed_conv130_shift_x_q(31 downto 16);

    -- i_unnamed_conv129_vt_join(BITJOIN,662)@27
    i_unnamed_conv129_vt_join_q <= i_unnamed_conv129_vt_select_31_b & i_unnamed_conv117_vt_const_15_q;

    -- xMSB_uid1150_i_unnamed_conv132_shift_x(BITSELECT,1149)@27
    xMSB_uid1150_i_unnamed_conv132_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv129_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1172_i_unnamed_conv132_shift_x(BITSELECT,1171)@27
    rightShiftStage4Idx1Rng1_uid1172_i_unnamed_conv132_shift_x_b <= rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1173_i_unnamed_conv132_shift_x(BITJOIN,1172)@27
    rightShiftStage4Idx1_uid1173_i_unnamed_conv132_shift_x_q <= xMSB_uid1150_i_unnamed_conv132_shift_x_b & rightShiftStage4Idx1Rng1_uid1172_i_unnamed_conv132_shift_x_b;

    -- seMsb_to2_uid1167(BITSELECT,1166)@27
    seMsb_to2_uid1167_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1150_i_unnamed_conv132_shift_x_b(0)) & xMSB_uid1150_i_unnamed_conv132_shift_x_b));
    seMsb_to2_uid1167_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1167_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1168_i_unnamed_conv132_shift_x(BITSELECT,1167)@27
    rightShiftStage3Idx1Rng2_uid1168_i_unnamed_conv132_shift_x_b <= rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1169_i_unnamed_conv132_shift_x(BITJOIN,1168)@27
    rightShiftStage3Idx1_uid1169_i_unnamed_conv132_shift_x_q <= seMsb_to2_uid1167_b & rightShiftStage3Idx1Rng2_uid1168_i_unnamed_conv132_shift_x_b;

    -- seMsb_to4_uid1162(BITSELECT,1161)@27
    seMsb_to4_uid1162_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1150_i_unnamed_conv132_shift_x_b(0)) & xMSB_uid1150_i_unnamed_conv132_shift_x_b));
    seMsb_to4_uid1162_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1162_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1163_i_unnamed_conv132_shift_x(BITSELECT,1162)@27
    rightShiftStage2Idx1Rng4_uid1163_i_unnamed_conv132_shift_x_b <= rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1164_i_unnamed_conv132_shift_x(BITJOIN,1163)@27
    rightShiftStage2Idx1_uid1164_i_unnamed_conv132_shift_x_q <= seMsb_to4_uid1162_b & rightShiftStage2Idx1Rng4_uid1163_i_unnamed_conv132_shift_x_b;

    -- seMsb_to8_uid1157(BITSELECT,1156)@27
    seMsb_to8_uid1157_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1150_i_unnamed_conv132_shift_x_b(0)) & xMSB_uid1150_i_unnamed_conv132_shift_x_b));
    seMsb_to8_uid1157_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1157_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1158_i_unnamed_conv132_shift_x(BITSELECT,1157)@27
    rightShiftStage1Idx1Rng8_uid1158_i_unnamed_conv132_shift_x_b <= rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1159_i_unnamed_conv132_shift_x(BITJOIN,1158)@27
    rightShiftStage1Idx1_uid1159_i_unnamed_conv132_shift_x_q <= seMsb_to8_uid1157_b & rightShiftStage1Idx1Rng8_uid1158_i_unnamed_conv132_shift_x_b;

    -- seMsb_to16_uid1152(BITSELECT,1151)@27
    seMsb_to16_uid1152_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1150_i_unnamed_conv132_shift_x_b(0)) & xMSB_uid1150_i_unnamed_conv132_shift_x_b));
    seMsb_to16_uid1152_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1152_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1153_i_unnamed_conv132_shift_x(BITSELECT,1152)@27
    rightShiftStage0Idx1Rng16_uid1153_i_unnamed_conv132_shift_x_b <= i_unnamed_conv129_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1154_i_unnamed_conv132_shift_x(BITJOIN,1153)@27
    rightShiftStage0Idx1_uid1154_i_unnamed_conv132_shift_x_q <= seMsb_to16_uid1152_b & rightShiftStage0Idx1Rng16_uid1153_i_unnamed_conv132_shift_x_b;

    -- rightShiftStage0_uid1156_i_unnamed_conv132_shift_x(MUX,1155)@27
    rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_s <= VCC_q;
    rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_combproc: PROCESS (rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_s, i_unnamed_conv129_vt_join_q, rightShiftStage0Idx1_uid1154_i_unnamed_conv132_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_q <= i_unnamed_conv129_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_q <= rightShiftStage0Idx1_uid1154_i_unnamed_conv132_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1161_i_unnamed_conv132_shift_x(MUX,1160)@27
    rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_s <= VCC_q;
    rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_combproc: PROCESS (rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_s, rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_q, rightShiftStage1Idx1_uid1159_i_unnamed_conv132_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_q <= rightShiftStage0_uid1156_i_unnamed_conv132_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_q <= rightShiftStage1Idx1_uid1159_i_unnamed_conv132_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1166_i_unnamed_conv132_shift_x(MUX,1165)@27
    rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_s <= VCC_q;
    rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_combproc: PROCESS (rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_s, rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_q, rightShiftStage2Idx1_uid1164_i_unnamed_conv132_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_q <= rightShiftStage1_uid1161_i_unnamed_conv132_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_q <= rightShiftStage2Idx1_uid1164_i_unnamed_conv132_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1171_i_unnamed_conv132_shift_x(MUX,1170)@27
    rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_s <= VCC_q;
    rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_combproc: PROCESS (rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_s, rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_q, rightShiftStage3Idx1_uid1169_i_unnamed_conv132_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_q <= rightShiftStage2_uid1166_i_unnamed_conv132_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_q <= rightShiftStage3Idx1_uid1169_i_unnamed_conv132_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1175_i_unnamed_conv132_shift_x(MUX,1174)@27
    rightShiftStage4_uid1175_i_unnamed_conv132_shift_x_s <= VCC_q;
    rightShiftStage4_uid1175_i_unnamed_conv132_shift_x_combproc: PROCESS (rightShiftStage4_uid1175_i_unnamed_conv132_shift_x_s, rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_q, rightShiftStage4Idx1_uid1173_i_unnamed_conv132_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1175_i_unnamed_conv132_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1175_i_unnamed_conv132_shift_x_q <= rightShiftStage3_uid1171_i_unnamed_conv132_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1175_i_unnamed_conv132_shift_x_q <= rightShiftStage4Idx1_uid1173_i_unnamed_conv132_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1175_i_unnamed_conv132_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked35_conv(LOGICAL,587)@27
    i_mul10_masked35_conv_q <= rightShiftStage4_uid1175_i_unnamed_conv132_shift_x_q and redist49_sync_in_aunroll_x_in_c0_eni1_1_14_q;

    -- leftShiftStage0_uid1184_i_unnamed_conv134_shift_x(MUX,1183)@27
    leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_s <= VCC_q;
    leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_combproc: PROCESS (leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_s, i_mul10_masked35_conv_q, leftShiftStage0Idx1_uid1182_i_unnamed_conv134_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_q <= i_mul10_masked35_conv_q;
            WHEN "1" => leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_q <= leftShiftStage0Idx1_uid1182_i_unnamed_conv134_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1189_i_unnamed_conv134_shift_x(MUX,1188)@27
    leftShiftStage1_uid1189_i_unnamed_conv134_shift_x_s <= VCC_q;
    leftShiftStage1_uid1189_i_unnamed_conv134_shift_x_combproc: PROCESS (leftShiftStage1_uid1189_i_unnamed_conv134_shift_x_s, leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_q, leftShiftStage1Idx1_uid1187_i_unnamed_conv134_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1189_i_unnamed_conv134_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1189_i_unnamed_conv134_shift_x_q <= leftShiftStage0_uid1184_i_unnamed_conv134_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1189_i_unnamed_conv134_shift_x_q <= leftShiftStage1Idx1_uid1187_i_unnamed_conv134_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1189_i_unnamed_conv134_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv133_vt_select_31(BITSELECT,666)@27
    i_unnamed_conv133_vt_select_31_b <= leftShiftStage1_uid1189_i_unnamed_conv134_shift_x_q(31 downto 18);

    -- redist24_i_unnamed_conv133_vt_select_31_b_1(DELAY,2664)
    redist24_i_unnamed_conv133_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv133_vt_select_31_b, xout => redist24_i_unnamed_conv133_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv113_vt_const_17(CONSTANT,649)
    i_unnamed_conv113_vt_const_17_q <= "000000000000000000";

    -- i_unnamed_conv133_vt_join(BITJOIN,665)@28
    i_unnamed_conv133_vt_join_q <= redist24_i_unnamed_conv133_vt_select_31_b_1_q & i_unnamed_conv113_vt_const_17_q;

    -- leftShiftStage1Idx1Rng1_uid1135_i_unnamed_conv126_shift_x(BITSELECT,1134)@26
    leftShiftStage1Idx1Rng1_uid1135_i_unnamed_conv126_shift_x_in <= leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1135_i_unnamed_conv126_shift_x_b <= leftShiftStage1Idx1Rng1_uid1135_i_unnamed_conv126_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1136_i_unnamed_conv126_shift_x(BITJOIN,1135)@26
    leftShiftStage1Idx1_uid1136_i_unnamed_conv126_shift_x_q <= leftShiftStage1Idx1Rng1_uid1135_i_unnamed_conv126_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng16_uid1130_i_unnamed_conv126_shift_x(BITSELECT,1129)@26
    leftShiftStage0Idx1Rng16_uid1130_i_unnamed_conv126_shift_x_in <= i_mul10_masked33_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1130_i_unnamed_conv126_shift_x_b <= leftShiftStage0Idx1Rng16_uid1130_i_unnamed_conv126_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1131_i_unnamed_conv126_shift_x(BITJOIN,1130)@26
    leftShiftStage0Idx1_uid1131_i_unnamed_conv126_shift_x_q <= leftShiftStage0Idx1Rng16_uid1130_i_unnamed_conv126_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage1Idx1Rng1_uid1093_i_unnamed_conv122_shift_x(BITSELECT,1092)@26
    leftShiftStage1Idx1Rng1_uid1093_i_unnamed_conv122_shift_x_in <= leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1093_i_unnamed_conv122_shift_x_b <= leftShiftStage1Idx1Rng1_uid1093_i_unnamed_conv122_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1094_i_unnamed_conv122_shift_x(BITJOIN,1093)@26
    leftShiftStage1Idx1_uid1094_i_unnamed_conv122_shift_x_q <= leftShiftStage1Idx1Rng1_uid1093_i_unnamed_conv122_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng16_uid1088_i_unnamed_conv122_shift_x(BITSELECT,1087)@26
    leftShiftStage0Idx1Rng16_uid1088_i_unnamed_conv122_shift_x_in <= i_syncbuf_n_elem_sync_buffer76_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1088_i_unnamed_conv122_shift_x_b <= leftShiftStage0Idx1Rng16_uid1088_i_unnamed_conv122_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1089_i_unnamed_conv122_shift_x(BITJOIN,1088)@26
    leftShiftStage0Idx1_uid1089_i_unnamed_conv122_shift_x_q <= leftShiftStage0Idx1Rng16_uid1088_i_unnamed_conv122_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer76_conv(BLACKBOX,622)@0
    -- in in_i_dependence@26
    -- in in_valid_in@26
    -- out out_buffer_out@26
    -- out out_valid_out@26
    thei_syncbuf_n_elem_sync_buffer76_conv : i_syncbuf_n_elem_sync_buffer76_conv119
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist68_sync_in_aunroll_x_in_i_valid_13_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer76_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1091_i_unnamed_conv122_shift_x(MUX,1090)@26
    leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_s <= VCC_q;
    leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_combproc: PROCESS (leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_s, i_syncbuf_n_elem_sync_buffer76_conv_out_buffer_out, leftShiftStage0Idx1_uid1089_i_unnamed_conv122_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_q <= i_syncbuf_n_elem_sync_buffer76_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_q <= leftShiftStage0Idx1_uid1089_i_unnamed_conv122_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1096_i_unnamed_conv122_shift_x(MUX,1095)@26
    leftShiftStage1_uid1096_i_unnamed_conv122_shift_x_s <= VCC_q;
    leftShiftStage1_uid1096_i_unnamed_conv122_shift_x_combproc: PROCESS (leftShiftStage1_uid1096_i_unnamed_conv122_shift_x_s, leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_q, leftShiftStage1Idx1_uid1094_i_unnamed_conv122_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1096_i_unnamed_conv122_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1096_i_unnamed_conv122_shift_x_q <= leftShiftStage0_uid1091_i_unnamed_conv122_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1096_i_unnamed_conv122_shift_x_q <= leftShiftStage1Idx1_uid1094_i_unnamed_conv122_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1096_i_unnamed_conv122_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv121_vt_select_31(BITSELECT,657)@26
    i_unnamed_conv121_vt_select_31_b <= leftShiftStage1_uid1096_i_unnamed_conv122_shift_x_q(31 downto 17);

    -- i_unnamed_conv121_vt_join(BITJOIN,656)@26
    i_unnamed_conv121_vt_join_q <= i_unnamed_conv121_vt_select_31_b & i_unnamed_conv121_vt_const_16_q;

    -- xMSB_uid1099_i_unnamed_conv124_shift_x(BITSELECT,1098)@26
    xMSB_uid1099_i_unnamed_conv124_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv121_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1121_i_unnamed_conv124_shift_x(BITSELECT,1120)@26
    rightShiftStage4Idx1Rng1_uid1121_i_unnamed_conv124_shift_x_b <= rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1122_i_unnamed_conv124_shift_x(BITJOIN,1121)@26
    rightShiftStage4Idx1_uid1122_i_unnamed_conv124_shift_x_q <= xMSB_uid1099_i_unnamed_conv124_shift_x_b & rightShiftStage4Idx1Rng1_uid1121_i_unnamed_conv124_shift_x_b;

    -- seMsb_to2_uid1116(BITSELECT,1115)@26
    seMsb_to2_uid1116_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1099_i_unnamed_conv124_shift_x_b(0)) & xMSB_uid1099_i_unnamed_conv124_shift_x_b));
    seMsb_to2_uid1116_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1116_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1117_i_unnamed_conv124_shift_x(BITSELECT,1116)@26
    rightShiftStage3Idx1Rng2_uid1117_i_unnamed_conv124_shift_x_b <= rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1118_i_unnamed_conv124_shift_x(BITJOIN,1117)@26
    rightShiftStage3Idx1_uid1118_i_unnamed_conv124_shift_x_q <= seMsb_to2_uid1116_b & rightShiftStage3Idx1Rng2_uid1117_i_unnamed_conv124_shift_x_b;

    -- seMsb_to4_uid1111(BITSELECT,1110)@26
    seMsb_to4_uid1111_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1099_i_unnamed_conv124_shift_x_b(0)) & xMSB_uid1099_i_unnamed_conv124_shift_x_b));
    seMsb_to4_uid1111_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1111_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1112_i_unnamed_conv124_shift_x(BITSELECT,1111)@26
    rightShiftStage2Idx1Rng4_uid1112_i_unnamed_conv124_shift_x_b <= rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1113_i_unnamed_conv124_shift_x(BITJOIN,1112)@26
    rightShiftStage2Idx1_uid1113_i_unnamed_conv124_shift_x_q <= seMsb_to4_uid1111_b & rightShiftStage2Idx1Rng4_uid1112_i_unnamed_conv124_shift_x_b;

    -- seMsb_to8_uid1106(BITSELECT,1105)@26
    seMsb_to8_uid1106_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1099_i_unnamed_conv124_shift_x_b(0)) & xMSB_uid1099_i_unnamed_conv124_shift_x_b));
    seMsb_to8_uid1106_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1106_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1107_i_unnamed_conv124_shift_x(BITSELECT,1106)@26
    rightShiftStage1Idx1Rng8_uid1107_i_unnamed_conv124_shift_x_b <= rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1108_i_unnamed_conv124_shift_x(BITJOIN,1107)@26
    rightShiftStage1Idx1_uid1108_i_unnamed_conv124_shift_x_q <= seMsb_to8_uid1106_b & rightShiftStage1Idx1Rng8_uid1107_i_unnamed_conv124_shift_x_b;

    -- seMsb_to16_uid1101(BITSELECT,1100)@26
    seMsb_to16_uid1101_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1099_i_unnamed_conv124_shift_x_b(0)) & xMSB_uid1099_i_unnamed_conv124_shift_x_b));
    seMsb_to16_uid1101_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1101_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1102_i_unnamed_conv124_shift_x(BITSELECT,1101)@26
    rightShiftStage0Idx1Rng16_uid1102_i_unnamed_conv124_shift_x_b <= i_unnamed_conv121_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1103_i_unnamed_conv124_shift_x(BITJOIN,1102)@26
    rightShiftStage0Idx1_uid1103_i_unnamed_conv124_shift_x_q <= seMsb_to16_uid1101_b & rightShiftStage0Idx1Rng16_uid1102_i_unnamed_conv124_shift_x_b;

    -- rightShiftStage0_uid1105_i_unnamed_conv124_shift_x(MUX,1104)@26
    rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_s <= VCC_q;
    rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_combproc: PROCESS (rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_s, i_unnamed_conv121_vt_join_q, rightShiftStage0Idx1_uid1103_i_unnamed_conv124_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_q <= i_unnamed_conv121_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_q <= rightShiftStage0Idx1_uid1103_i_unnamed_conv124_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1110_i_unnamed_conv124_shift_x(MUX,1109)@26
    rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_s <= VCC_q;
    rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_combproc: PROCESS (rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_s, rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_q, rightShiftStage1Idx1_uid1108_i_unnamed_conv124_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_q <= rightShiftStage0_uid1105_i_unnamed_conv124_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_q <= rightShiftStage1Idx1_uid1108_i_unnamed_conv124_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1115_i_unnamed_conv124_shift_x(MUX,1114)@26
    rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_s <= VCC_q;
    rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_combproc: PROCESS (rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_s, rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_q, rightShiftStage2Idx1_uid1113_i_unnamed_conv124_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_q <= rightShiftStage1_uid1110_i_unnamed_conv124_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_q <= rightShiftStage2Idx1_uid1113_i_unnamed_conv124_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1120_i_unnamed_conv124_shift_x(MUX,1119)@26
    rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_s <= VCC_q;
    rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_combproc: PROCESS (rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_s, rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_q, rightShiftStage3Idx1_uid1118_i_unnamed_conv124_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_q <= rightShiftStage2_uid1115_i_unnamed_conv124_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_q <= rightShiftStage3Idx1_uid1118_i_unnamed_conv124_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1124_i_unnamed_conv124_shift_x(MUX,1123)@26
    rightShiftStage4_uid1124_i_unnamed_conv124_shift_x_s <= VCC_q;
    rightShiftStage4_uid1124_i_unnamed_conv124_shift_x_combproc: PROCESS (rightShiftStage4_uid1124_i_unnamed_conv124_shift_x_s, rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_q, rightShiftStage4Idx1_uid1122_i_unnamed_conv124_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1124_i_unnamed_conv124_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1124_i_unnamed_conv124_shift_x_q <= rightShiftStage3_uid1120_i_unnamed_conv124_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1124_i_unnamed_conv124_shift_x_q <= rightShiftStage4Idx1_uid1122_i_unnamed_conv124_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1124_i_unnamed_conv124_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked33_conv(LOGICAL,586)@26
    i_mul10_masked33_conv_q <= rightShiftStage4_uid1124_i_unnamed_conv124_shift_x_q and redist48_sync_in_aunroll_x_in_c0_eni1_1_13_q;

    -- leftShiftStage0_uid1133_i_unnamed_conv126_shift_x(MUX,1132)@26
    leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_s <= VCC_q;
    leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_combproc: PROCESS (leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_s, i_mul10_masked33_conv_q, leftShiftStage0Idx1_uid1131_i_unnamed_conv126_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_q <= i_mul10_masked33_conv_q;
            WHEN "1" => leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_q <= leftShiftStage0Idx1_uid1131_i_unnamed_conv126_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1138_i_unnamed_conv126_shift_x(MUX,1137)@26
    leftShiftStage1_uid1138_i_unnamed_conv126_shift_x_s <= VCC_q;
    leftShiftStage1_uid1138_i_unnamed_conv126_shift_x_combproc: PROCESS (leftShiftStage1_uid1138_i_unnamed_conv126_shift_x_s, leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_q, leftShiftStage1Idx1_uid1136_i_unnamed_conv126_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1138_i_unnamed_conv126_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1138_i_unnamed_conv126_shift_x_q <= leftShiftStage0_uid1133_i_unnamed_conv126_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1138_i_unnamed_conv126_shift_x_q <= leftShiftStage1Idx1_uid1136_i_unnamed_conv126_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1138_i_unnamed_conv126_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv125_vt_select_31(BITSELECT,660)@26
    i_unnamed_conv125_vt_select_31_b <= leftShiftStage1_uid1138_i_unnamed_conv126_shift_x_q(31 downto 17);

    -- redist25_i_unnamed_conv125_vt_select_31_b_1(DELAY,2665)
    redist25_i_unnamed_conv125_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv125_vt_select_31_b, xout => redist25_i_unnamed_conv125_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv121_vt_const_16(CONSTANT,655)
    i_unnamed_conv121_vt_const_16_q <= "00000000000000000";

    -- i_unnamed_conv125_vt_join(BITJOIN,659)@27
    i_unnamed_conv125_vt_join_q <= redist25_i_unnamed_conv125_vt_select_31_b_1_q & i_unnamed_conv121_vt_const_16_q;

    -- leftShiftStage0Idx1Rng16_uid1051_i_unnamed_conv118_shift_x(BITSELECT,1050)@25
    leftShiftStage0Idx1Rng16_uid1051_i_unnamed_conv118_shift_x_in <= i_mul10_masked31_conv_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1051_i_unnamed_conv118_shift_x_b <= leftShiftStage0Idx1Rng16_uid1051_i_unnamed_conv118_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1052_i_unnamed_conv118_shift_x(BITJOIN,1051)@25
    leftShiftStage0Idx1_uid1052_i_unnamed_conv118_shift_x_q <= leftShiftStage0Idx1Rng16_uid1051_i_unnamed_conv118_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage1Idx1Rng2_uid1014_i_unnamed_conv114_shift_x(BITSELECT,1013)@25
    leftShiftStage1Idx1Rng2_uid1014_i_unnamed_conv114_shift_x_in <= leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid1014_i_unnamed_conv114_shift_x_b <= leftShiftStage1Idx1Rng2_uid1014_i_unnamed_conv114_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid1015_i_unnamed_conv114_shift_x(BITJOIN,1014)@25
    leftShiftStage1Idx1_uid1015_i_unnamed_conv114_shift_x_q <= leftShiftStage1Idx1Rng2_uid1014_i_unnamed_conv114_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng16_uid1009_i_unnamed_conv114_shift_x(BITSELECT,1008)@25
    leftShiftStage0Idx1Rng16_uid1009_i_unnamed_conv114_shift_x_in <= i_syncbuf_n_elem_sync_buffer77_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1009_i_unnamed_conv114_shift_x_b <= leftShiftStage0Idx1Rng16_uid1009_i_unnamed_conv114_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1010_i_unnamed_conv114_shift_x(BITJOIN,1009)@25
    leftShiftStage0Idx1_uid1010_i_unnamed_conv114_shift_x_q <= leftShiftStage0Idx1Rng16_uid1009_i_unnamed_conv114_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer77_conv(BLACKBOX,623)@0
    -- in in_i_dependence@25
    -- in in_valid_in@25
    -- out out_buffer_out@25
    -- out out_valid_out@25
    thei_syncbuf_n_elem_sync_buffer77_conv : i_syncbuf_n_elem_sync_buffer77_conv111
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist67_sync_in_aunroll_x_in_i_valid_12_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer77_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1012_i_unnamed_conv114_shift_x(MUX,1011)@25
    leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_s <= VCC_q;
    leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_combproc: PROCESS (leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_s, i_syncbuf_n_elem_sync_buffer77_conv_out_buffer_out, leftShiftStage0Idx1_uid1010_i_unnamed_conv114_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_q <= i_syncbuf_n_elem_sync_buffer77_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_q <= leftShiftStage0Idx1_uid1010_i_unnamed_conv114_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1017_i_unnamed_conv114_shift_x(MUX,1016)@25
    leftShiftStage1_uid1017_i_unnamed_conv114_shift_x_s <= VCC_q;
    leftShiftStage1_uid1017_i_unnamed_conv114_shift_x_combproc: PROCESS (leftShiftStage1_uid1017_i_unnamed_conv114_shift_x_s, leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_q, leftShiftStage1Idx1_uid1015_i_unnamed_conv114_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1017_i_unnamed_conv114_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1017_i_unnamed_conv114_shift_x_q <= leftShiftStage0_uid1012_i_unnamed_conv114_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1017_i_unnamed_conv114_shift_x_q <= leftShiftStage1Idx1_uid1015_i_unnamed_conv114_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1017_i_unnamed_conv114_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv113_vt_select_31(BITSELECT,651)@25
    i_unnamed_conv113_vt_select_31_b <= leftShiftStage1_uid1017_i_unnamed_conv114_shift_x_q(31 downto 18);

    -- i_unnamed_conv113_vt_join(BITJOIN,650)@25
    i_unnamed_conv113_vt_join_q <= i_unnamed_conv113_vt_select_31_b & i_unnamed_conv113_vt_const_17_q;

    -- xMSB_uid1020_i_unnamed_conv116_shift_x(BITSELECT,1019)@25
    xMSB_uid1020_i_unnamed_conv116_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv113_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1042_i_unnamed_conv116_shift_x(BITSELECT,1041)@25
    rightShiftStage4Idx1Rng1_uid1042_i_unnamed_conv116_shift_x_b <= rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1043_i_unnamed_conv116_shift_x(BITJOIN,1042)@25
    rightShiftStage4Idx1_uid1043_i_unnamed_conv116_shift_x_q <= xMSB_uid1020_i_unnamed_conv116_shift_x_b & rightShiftStage4Idx1Rng1_uid1042_i_unnamed_conv116_shift_x_b;

    -- seMsb_to2_uid1037(BITSELECT,1036)@25
    seMsb_to2_uid1037_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1020_i_unnamed_conv116_shift_x_b(0)) & xMSB_uid1020_i_unnamed_conv116_shift_x_b));
    seMsb_to2_uid1037_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1037_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1038_i_unnamed_conv116_shift_x(BITSELECT,1037)@25
    rightShiftStage3Idx1Rng2_uid1038_i_unnamed_conv116_shift_x_b <= rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1039_i_unnamed_conv116_shift_x(BITJOIN,1038)@25
    rightShiftStage3Idx1_uid1039_i_unnamed_conv116_shift_x_q <= seMsb_to2_uid1037_b & rightShiftStage3Idx1Rng2_uid1038_i_unnamed_conv116_shift_x_b;

    -- seMsb_to4_uid1032(BITSELECT,1031)@25
    seMsb_to4_uid1032_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1020_i_unnamed_conv116_shift_x_b(0)) & xMSB_uid1020_i_unnamed_conv116_shift_x_b));
    seMsb_to4_uid1032_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1032_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1033_i_unnamed_conv116_shift_x(BITSELECT,1032)@25
    rightShiftStage2Idx1Rng4_uid1033_i_unnamed_conv116_shift_x_b <= rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1034_i_unnamed_conv116_shift_x(BITJOIN,1033)@25
    rightShiftStage2Idx1_uid1034_i_unnamed_conv116_shift_x_q <= seMsb_to4_uid1032_b & rightShiftStage2Idx1Rng4_uid1033_i_unnamed_conv116_shift_x_b;

    -- seMsb_to8_uid1027(BITSELECT,1026)@25
    seMsb_to8_uid1027_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1020_i_unnamed_conv116_shift_x_b(0)) & xMSB_uid1020_i_unnamed_conv116_shift_x_b));
    seMsb_to8_uid1027_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1027_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1028_i_unnamed_conv116_shift_x(BITSELECT,1027)@25
    rightShiftStage1Idx1Rng8_uid1028_i_unnamed_conv116_shift_x_b <= rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1029_i_unnamed_conv116_shift_x(BITJOIN,1028)@25
    rightShiftStage1Idx1_uid1029_i_unnamed_conv116_shift_x_q <= seMsb_to8_uid1027_b & rightShiftStage1Idx1Rng8_uid1028_i_unnamed_conv116_shift_x_b;

    -- seMsb_to16_uid1022(BITSELECT,1021)@25
    seMsb_to16_uid1022_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1020_i_unnamed_conv116_shift_x_b(0)) & xMSB_uid1020_i_unnamed_conv116_shift_x_b));
    seMsb_to16_uid1022_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1022_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1023_i_unnamed_conv116_shift_x(BITSELECT,1022)@25
    rightShiftStage0Idx1Rng16_uid1023_i_unnamed_conv116_shift_x_b <= i_unnamed_conv113_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1024_i_unnamed_conv116_shift_x(BITJOIN,1023)@25
    rightShiftStage0Idx1_uid1024_i_unnamed_conv116_shift_x_q <= seMsb_to16_uid1022_b & rightShiftStage0Idx1Rng16_uid1023_i_unnamed_conv116_shift_x_b;

    -- rightShiftStage0_uid1026_i_unnamed_conv116_shift_x(MUX,1025)@25
    rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_s <= VCC_q;
    rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_combproc: PROCESS (rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_s, i_unnamed_conv113_vt_join_q, rightShiftStage0Idx1_uid1024_i_unnamed_conv116_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_q <= i_unnamed_conv113_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_q <= rightShiftStage0Idx1_uid1024_i_unnamed_conv116_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1031_i_unnamed_conv116_shift_x(MUX,1030)@25
    rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_s <= VCC_q;
    rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_combproc: PROCESS (rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_s, rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_q, rightShiftStage1Idx1_uid1029_i_unnamed_conv116_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_q <= rightShiftStage0_uid1026_i_unnamed_conv116_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_q <= rightShiftStage1Idx1_uid1029_i_unnamed_conv116_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1036_i_unnamed_conv116_shift_x(MUX,1035)@25
    rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_s <= VCC_q;
    rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_combproc: PROCESS (rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_s, rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_q, rightShiftStage2Idx1_uid1034_i_unnamed_conv116_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_q <= rightShiftStage1_uid1031_i_unnamed_conv116_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_q <= rightShiftStage2Idx1_uid1034_i_unnamed_conv116_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1041_i_unnamed_conv116_shift_x(MUX,1040)@25
    rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_s <= VCC_q;
    rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_combproc: PROCESS (rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_s, rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_q, rightShiftStage3Idx1_uid1039_i_unnamed_conv116_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_q <= rightShiftStage2_uid1036_i_unnamed_conv116_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_q <= rightShiftStage3Idx1_uid1039_i_unnamed_conv116_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1045_i_unnamed_conv116_shift_x(MUX,1044)@25
    rightShiftStage4_uid1045_i_unnamed_conv116_shift_x_s <= VCC_q;
    rightShiftStage4_uid1045_i_unnamed_conv116_shift_x_combproc: PROCESS (rightShiftStage4_uid1045_i_unnamed_conv116_shift_x_s, rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_q, rightShiftStage4Idx1_uid1043_i_unnamed_conv116_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1045_i_unnamed_conv116_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1045_i_unnamed_conv116_shift_x_q <= rightShiftStage3_uid1041_i_unnamed_conv116_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1045_i_unnamed_conv116_shift_x_q <= rightShiftStage4Idx1_uid1043_i_unnamed_conv116_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1045_i_unnamed_conv116_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked31_conv(LOGICAL,585)@25
    i_mul10_masked31_conv_q <= rightShiftStage4_uid1045_i_unnamed_conv116_shift_x_q and redist47_sync_in_aunroll_x_in_c0_eni1_1_12_q;

    -- leftShiftStage0_uid1054_i_unnamed_conv118_shift_x(MUX,1053)@25
    leftShiftStage0_uid1054_i_unnamed_conv118_shift_x_s <= VCC_q;
    leftShiftStage0_uid1054_i_unnamed_conv118_shift_x_combproc: PROCESS (leftShiftStage0_uid1054_i_unnamed_conv118_shift_x_s, i_mul10_masked31_conv_q, leftShiftStage0Idx1_uid1052_i_unnamed_conv118_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1054_i_unnamed_conv118_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1054_i_unnamed_conv118_shift_x_q <= i_mul10_masked31_conv_q;
            WHEN "1" => leftShiftStage0_uid1054_i_unnamed_conv118_shift_x_q <= leftShiftStage0Idx1_uid1052_i_unnamed_conv118_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1054_i_unnamed_conv118_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv117_vt_select_31(BITSELECT,654)@25
    i_unnamed_conv117_vt_select_31_b <= leftShiftStage0_uid1054_i_unnamed_conv118_shift_x_q(31 downto 16);

    -- redist26_i_unnamed_conv117_vt_select_31_b_1(DELAY,2666)
    redist26_i_unnamed_conv117_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv117_vt_select_31_b, xout => redist26_i_unnamed_conv117_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv117_vt_join(BITJOIN,653)@26
    i_unnamed_conv117_vt_join_q <= redist26_i_unnamed_conv117_vt_select_31_b_1_q & i_unnamed_conv117_vt_const_15_q;

    -- leftShiftStage3Idx1Rng1_uid1000_i_unnamed_conv110_shift_x(BITSELECT,999)@24
    leftShiftStage3Idx1Rng1_uid1000_i_unnamed_conv110_shift_x_in <= leftShiftStage2_uid998_i_unnamed_conv110_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid1000_i_unnamed_conv110_shift_x_b <= leftShiftStage3Idx1Rng1_uid1000_i_unnamed_conv110_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid1001_i_unnamed_conv110_shift_x(BITJOIN,1000)@24
    leftShiftStage3Idx1_uid1001_i_unnamed_conv110_shift_x_q <= leftShiftStage3Idx1Rng1_uid1000_i_unnamed_conv110_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid995_i_unnamed_conv110_shift_x(BITSELECT,994)@24
    leftShiftStage2Idx1Rng2_uid995_i_unnamed_conv110_shift_x_in <= leftShiftStage1_uid993_i_unnamed_conv110_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid995_i_unnamed_conv110_shift_x_b <= leftShiftStage2Idx1Rng2_uid995_i_unnamed_conv110_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid996_i_unnamed_conv110_shift_x(BITJOIN,995)@24
    leftShiftStage2Idx1_uid996_i_unnamed_conv110_shift_x_q <= leftShiftStage2Idx1Rng2_uid995_i_unnamed_conv110_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid990_i_unnamed_conv110_shift_x(BITSELECT,989)@24
    leftShiftStage1Idx1Rng4_uid990_i_unnamed_conv110_shift_x_in <= leftShiftStage0_uid988_i_unnamed_conv110_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid990_i_unnamed_conv110_shift_x_b <= leftShiftStage1Idx1Rng4_uid990_i_unnamed_conv110_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid991_i_unnamed_conv110_shift_x(BITJOIN,990)@24
    leftShiftStage1Idx1_uid991_i_unnamed_conv110_shift_x_q <= leftShiftStage1Idx1Rng4_uid990_i_unnamed_conv110_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid985_i_unnamed_conv110_shift_x(BITSELECT,984)@24
    leftShiftStage0Idx1Rng8_uid985_i_unnamed_conv110_shift_x_in <= i_mul10_masked29_conv_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid985_i_unnamed_conv110_shift_x_b <= leftShiftStage0Idx1Rng8_uid985_i_unnamed_conv110_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid986_i_unnamed_conv110_shift_x(BITJOIN,985)@24
    leftShiftStage0Idx1_uid986_i_unnamed_conv110_shift_x_q <= leftShiftStage0Idx1Rng8_uid985_i_unnamed_conv110_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage2Idx1Rng1_uid948_i_unnamed_conv106_shift_x(BITSELECT,947)@24
    leftShiftStage2Idx1Rng1_uid948_i_unnamed_conv106_shift_x_in <= leftShiftStage1_uid946_i_unnamed_conv106_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid948_i_unnamed_conv106_shift_x_b <= leftShiftStage2Idx1Rng1_uid948_i_unnamed_conv106_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid949_i_unnamed_conv106_shift_x(BITJOIN,948)@24
    leftShiftStage2Idx1_uid949_i_unnamed_conv106_shift_x_q <= leftShiftStage2Idx1Rng1_uid948_i_unnamed_conv106_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng2_uid943_i_unnamed_conv106_shift_x(BITSELECT,942)@24
    leftShiftStage1Idx1Rng2_uid943_i_unnamed_conv106_shift_x_in <= leftShiftStage0_uid941_i_unnamed_conv106_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid943_i_unnamed_conv106_shift_x_b <= leftShiftStage1Idx1Rng2_uid943_i_unnamed_conv106_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid944_i_unnamed_conv106_shift_x(BITJOIN,943)@24
    leftShiftStage1Idx1_uid944_i_unnamed_conv106_shift_x_q <= leftShiftStage1Idx1Rng2_uid943_i_unnamed_conv106_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng16_uid938_i_unnamed_conv106_shift_x(BITSELECT,937)@24
    leftShiftStage0Idx1Rng16_uid938_i_unnamed_conv106_shift_x_in <= i_syncbuf_n_elem_sync_buffer78_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid938_i_unnamed_conv106_shift_x_b <= leftShiftStage0Idx1Rng16_uid938_i_unnamed_conv106_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid939_i_unnamed_conv106_shift_x(BITJOIN,938)@24
    leftShiftStage0Idx1_uid939_i_unnamed_conv106_shift_x_q <= leftShiftStage0Idx1Rng16_uid938_i_unnamed_conv106_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer78_conv(BLACKBOX,624)@0
    -- in in_i_dependence@24
    -- in in_valid_in@24
    -- out out_buffer_out@24
    -- out out_valid_out@24
    thei_syncbuf_n_elem_sync_buffer78_conv : i_syncbuf_n_elem_sync_buffer78_conv103
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist66_sync_in_aunroll_x_in_i_valid_11_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer78_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid941_i_unnamed_conv106_shift_x(MUX,940)@24
    leftShiftStage0_uid941_i_unnamed_conv106_shift_x_s <= VCC_q;
    leftShiftStage0_uid941_i_unnamed_conv106_shift_x_combproc: PROCESS (leftShiftStage0_uid941_i_unnamed_conv106_shift_x_s, i_syncbuf_n_elem_sync_buffer78_conv_out_buffer_out, leftShiftStage0Idx1_uid939_i_unnamed_conv106_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid941_i_unnamed_conv106_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid941_i_unnamed_conv106_shift_x_q <= i_syncbuf_n_elem_sync_buffer78_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid941_i_unnamed_conv106_shift_x_q <= leftShiftStage0Idx1_uid939_i_unnamed_conv106_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid941_i_unnamed_conv106_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid946_i_unnamed_conv106_shift_x(MUX,945)@24
    leftShiftStage1_uid946_i_unnamed_conv106_shift_x_s <= VCC_q;
    leftShiftStage1_uid946_i_unnamed_conv106_shift_x_combproc: PROCESS (leftShiftStage1_uid946_i_unnamed_conv106_shift_x_s, leftShiftStage0_uid941_i_unnamed_conv106_shift_x_q, leftShiftStage1Idx1_uid944_i_unnamed_conv106_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid946_i_unnamed_conv106_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid946_i_unnamed_conv106_shift_x_q <= leftShiftStage0_uid941_i_unnamed_conv106_shift_x_q;
            WHEN "1" => leftShiftStage1_uid946_i_unnamed_conv106_shift_x_q <= leftShiftStage1Idx1_uid944_i_unnamed_conv106_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid946_i_unnamed_conv106_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid951_i_unnamed_conv106_shift_x(MUX,950)@24
    leftShiftStage2_uid951_i_unnamed_conv106_shift_x_s <= VCC_q;
    leftShiftStage2_uid951_i_unnamed_conv106_shift_x_combproc: PROCESS (leftShiftStage2_uid951_i_unnamed_conv106_shift_x_s, leftShiftStage1_uid946_i_unnamed_conv106_shift_x_q, leftShiftStage2Idx1_uid949_i_unnamed_conv106_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid951_i_unnamed_conv106_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid951_i_unnamed_conv106_shift_x_q <= leftShiftStage1_uid946_i_unnamed_conv106_shift_x_q;
            WHEN "1" => leftShiftStage2_uid951_i_unnamed_conv106_shift_x_q <= leftShiftStage2Idx1_uid949_i_unnamed_conv106_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid951_i_unnamed_conv106_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv105_vt_select_31(BITSELECT,645)@24
    i_unnamed_conv105_vt_select_31_b <= leftShiftStage2_uid951_i_unnamed_conv106_shift_x_q(31 downto 19);

    -- i_unnamed_conv105_vt_join(BITJOIN,644)@24
    i_unnamed_conv105_vt_join_q <= i_unnamed_conv105_vt_select_31_b & i_unnamed_conv105_vt_const_18_q;

    -- xMSB_uid954_i_unnamed_conv108_shift_x(BITSELECT,953)@24
    xMSB_uid954_i_unnamed_conv108_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv105_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid976_i_unnamed_conv108_shift_x(BITSELECT,975)@24
    rightShiftStage4Idx1Rng1_uid976_i_unnamed_conv108_shift_x_b <= rightShiftStage3_uid975_i_unnamed_conv108_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid977_i_unnamed_conv108_shift_x(BITJOIN,976)@24
    rightShiftStage4Idx1_uid977_i_unnamed_conv108_shift_x_q <= xMSB_uid954_i_unnamed_conv108_shift_x_b & rightShiftStage4Idx1Rng1_uid976_i_unnamed_conv108_shift_x_b;

    -- seMsb_to2_uid971(BITSELECT,970)@24
    seMsb_to2_uid971_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid954_i_unnamed_conv108_shift_x_b(0)) & xMSB_uid954_i_unnamed_conv108_shift_x_b));
    seMsb_to2_uid971_b <= STD_LOGIC_VECTOR(seMsb_to2_uid971_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid972_i_unnamed_conv108_shift_x(BITSELECT,971)@24
    rightShiftStage3Idx1Rng2_uid972_i_unnamed_conv108_shift_x_b <= rightShiftStage2_uid970_i_unnamed_conv108_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid973_i_unnamed_conv108_shift_x(BITJOIN,972)@24
    rightShiftStage3Idx1_uid973_i_unnamed_conv108_shift_x_q <= seMsb_to2_uid971_b & rightShiftStage3Idx1Rng2_uid972_i_unnamed_conv108_shift_x_b;

    -- seMsb_to4_uid966(BITSELECT,965)@24
    seMsb_to4_uid966_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid954_i_unnamed_conv108_shift_x_b(0)) & xMSB_uid954_i_unnamed_conv108_shift_x_b));
    seMsb_to4_uid966_b <= STD_LOGIC_VECTOR(seMsb_to4_uid966_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid967_i_unnamed_conv108_shift_x(BITSELECT,966)@24
    rightShiftStage2Idx1Rng4_uid967_i_unnamed_conv108_shift_x_b <= rightShiftStage1_uid965_i_unnamed_conv108_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid968_i_unnamed_conv108_shift_x(BITJOIN,967)@24
    rightShiftStage2Idx1_uid968_i_unnamed_conv108_shift_x_q <= seMsb_to4_uid966_b & rightShiftStage2Idx1Rng4_uid967_i_unnamed_conv108_shift_x_b;

    -- seMsb_to8_uid961(BITSELECT,960)@24
    seMsb_to8_uid961_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid954_i_unnamed_conv108_shift_x_b(0)) & xMSB_uid954_i_unnamed_conv108_shift_x_b));
    seMsb_to8_uid961_b <= STD_LOGIC_VECTOR(seMsb_to8_uid961_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid962_i_unnamed_conv108_shift_x(BITSELECT,961)@24
    rightShiftStage1Idx1Rng8_uid962_i_unnamed_conv108_shift_x_b <= rightShiftStage0_uid960_i_unnamed_conv108_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid963_i_unnamed_conv108_shift_x(BITJOIN,962)@24
    rightShiftStage1Idx1_uid963_i_unnamed_conv108_shift_x_q <= seMsb_to8_uid961_b & rightShiftStage1Idx1Rng8_uid962_i_unnamed_conv108_shift_x_b;

    -- seMsb_to16_uid956(BITSELECT,955)@24
    seMsb_to16_uid956_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid954_i_unnamed_conv108_shift_x_b(0)) & xMSB_uid954_i_unnamed_conv108_shift_x_b));
    seMsb_to16_uid956_b <= STD_LOGIC_VECTOR(seMsb_to16_uid956_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid957_i_unnamed_conv108_shift_x(BITSELECT,956)@24
    rightShiftStage0Idx1Rng16_uid957_i_unnamed_conv108_shift_x_b <= i_unnamed_conv105_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid958_i_unnamed_conv108_shift_x(BITJOIN,957)@24
    rightShiftStage0Idx1_uid958_i_unnamed_conv108_shift_x_q <= seMsb_to16_uid956_b & rightShiftStage0Idx1Rng16_uid957_i_unnamed_conv108_shift_x_b;

    -- rightShiftStage0_uid960_i_unnamed_conv108_shift_x(MUX,959)@24
    rightShiftStage0_uid960_i_unnamed_conv108_shift_x_s <= VCC_q;
    rightShiftStage0_uid960_i_unnamed_conv108_shift_x_combproc: PROCESS (rightShiftStage0_uid960_i_unnamed_conv108_shift_x_s, i_unnamed_conv105_vt_join_q, rightShiftStage0Idx1_uid958_i_unnamed_conv108_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid960_i_unnamed_conv108_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid960_i_unnamed_conv108_shift_x_q <= i_unnamed_conv105_vt_join_q;
            WHEN "1" => rightShiftStage0_uid960_i_unnamed_conv108_shift_x_q <= rightShiftStage0Idx1_uid958_i_unnamed_conv108_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid960_i_unnamed_conv108_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid965_i_unnamed_conv108_shift_x(MUX,964)@24
    rightShiftStage1_uid965_i_unnamed_conv108_shift_x_s <= VCC_q;
    rightShiftStage1_uid965_i_unnamed_conv108_shift_x_combproc: PROCESS (rightShiftStage1_uid965_i_unnamed_conv108_shift_x_s, rightShiftStage0_uid960_i_unnamed_conv108_shift_x_q, rightShiftStage1Idx1_uid963_i_unnamed_conv108_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid965_i_unnamed_conv108_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid965_i_unnamed_conv108_shift_x_q <= rightShiftStage0_uid960_i_unnamed_conv108_shift_x_q;
            WHEN "1" => rightShiftStage1_uid965_i_unnamed_conv108_shift_x_q <= rightShiftStage1Idx1_uid963_i_unnamed_conv108_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid965_i_unnamed_conv108_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid970_i_unnamed_conv108_shift_x(MUX,969)@24
    rightShiftStage2_uid970_i_unnamed_conv108_shift_x_s <= VCC_q;
    rightShiftStage2_uid970_i_unnamed_conv108_shift_x_combproc: PROCESS (rightShiftStage2_uid970_i_unnamed_conv108_shift_x_s, rightShiftStage1_uid965_i_unnamed_conv108_shift_x_q, rightShiftStage2Idx1_uid968_i_unnamed_conv108_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid970_i_unnamed_conv108_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid970_i_unnamed_conv108_shift_x_q <= rightShiftStage1_uid965_i_unnamed_conv108_shift_x_q;
            WHEN "1" => rightShiftStage2_uid970_i_unnamed_conv108_shift_x_q <= rightShiftStage2Idx1_uid968_i_unnamed_conv108_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid970_i_unnamed_conv108_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid975_i_unnamed_conv108_shift_x(MUX,974)@24
    rightShiftStage3_uid975_i_unnamed_conv108_shift_x_s <= VCC_q;
    rightShiftStage3_uid975_i_unnamed_conv108_shift_x_combproc: PROCESS (rightShiftStage3_uid975_i_unnamed_conv108_shift_x_s, rightShiftStage2_uid970_i_unnamed_conv108_shift_x_q, rightShiftStage3Idx1_uid973_i_unnamed_conv108_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid975_i_unnamed_conv108_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid975_i_unnamed_conv108_shift_x_q <= rightShiftStage2_uid970_i_unnamed_conv108_shift_x_q;
            WHEN "1" => rightShiftStage3_uid975_i_unnamed_conv108_shift_x_q <= rightShiftStage3Idx1_uid973_i_unnamed_conv108_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid975_i_unnamed_conv108_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid979_i_unnamed_conv108_shift_x(MUX,978)@24
    rightShiftStage4_uid979_i_unnamed_conv108_shift_x_s <= VCC_q;
    rightShiftStage4_uid979_i_unnamed_conv108_shift_x_combproc: PROCESS (rightShiftStage4_uid979_i_unnamed_conv108_shift_x_s, rightShiftStage3_uid975_i_unnamed_conv108_shift_x_q, rightShiftStage4Idx1_uid977_i_unnamed_conv108_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid979_i_unnamed_conv108_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid979_i_unnamed_conv108_shift_x_q <= rightShiftStage3_uid975_i_unnamed_conv108_shift_x_q;
            WHEN "1" => rightShiftStage4_uid979_i_unnamed_conv108_shift_x_q <= rightShiftStage4Idx1_uid977_i_unnamed_conv108_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid979_i_unnamed_conv108_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked29_conv(LOGICAL,584)@24
    i_mul10_masked29_conv_q <= rightShiftStage4_uid979_i_unnamed_conv108_shift_x_q and redist46_sync_in_aunroll_x_in_c0_eni1_1_11_q;

    -- leftShiftStage0_uid988_i_unnamed_conv110_shift_x(MUX,987)@24
    leftShiftStage0_uid988_i_unnamed_conv110_shift_x_s <= VCC_q;
    leftShiftStage0_uid988_i_unnamed_conv110_shift_x_combproc: PROCESS (leftShiftStage0_uid988_i_unnamed_conv110_shift_x_s, i_mul10_masked29_conv_q, leftShiftStage0Idx1_uid986_i_unnamed_conv110_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid988_i_unnamed_conv110_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid988_i_unnamed_conv110_shift_x_q <= i_mul10_masked29_conv_q;
            WHEN "1" => leftShiftStage0_uid988_i_unnamed_conv110_shift_x_q <= leftShiftStage0Idx1_uid986_i_unnamed_conv110_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid988_i_unnamed_conv110_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid993_i_unnamed_conv110_shift_x(MUX,992)@24
    leftShiftStage1_uid993_i_unnamed_conv110_shift_x_s <= VCC_q;
    leftShiftStage1_uid993_i_unnamed_conv110_shift_x_combproc: PROCESS (leftShiftStage1_uid993_i_unnamed_conv110_shift_x_s, leftShiftStage0_uid988_i_unnamed_conv110_shift_x_q, leftShiftStage1Idx1_uid991_i_unnamed_conv110_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid993_i_unnamed_conv110_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid993_i_unnamed_conv110_shift_x_q <= leftShiftStage0_uid988_i_unnamed_conv110_shift_x_q;
            WHEN "1" => leftShiftStage1_uid993_i_unnamed_conv110_shift_x_q <= leftShiftStage1Idx1_uid991_i_unnamed_conv110_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid993_i_unnamed_conv110_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid998_i_unnamed_conv110_shift_x(MUX,997)@24
    leftShiftStage2_uid998_i_unnamed_conv110_shift_x_s <= VCC_q;
    leftShiftStage2_uid998_i_unnamed_conv110_shift_x_combproc: PROCESS (leftShiftStage2_uid998_i_unnamed_conv110_shift_x_s, leftShiftStage1_uid993_i_unnamed_conv110_shift_x_q, leftShiftStage2Idx1_uid996_i_unnamed_conv110_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid998_i_unnamed_conv110_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid998_i_unnamed_conv110_shift_x_q <= leftShiftStage1_uid993_i_unnamed_conv110_shift_x_q;
            WHEN "1" => leftShiftStage2_uid998_i_unnamed_conv110_shift_x_q <= leftShiftStage2Idx1_uid996_i_unnamed_conv110_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid998_i_unnamed_conv110_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1003_i_unnamed_conv110_shift_x(MUX,1002)@24
    leftShiftStage3_uid1003_i_unnamed_conv110_shift_x_s <= VCC_q;
    leftShiftStage3_uid1003_i_unnamed_conv110_shift_x_combproc: PROCESS (leftShiftStage3_uid1003_i_unnamed_conv110_shift_x_s, leftShiftStage2_uid998_i_unnamed_conv110_shift_x_q, leftShiftStage3Idx1_uid1001_i_unnamed_conv110_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1003_i_unnamed_conv110_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1003_i_unnamed_conv110_shift_x_q <= leftShiftStage2_uid998_i_unnamed_conv110_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1003_i_unnamed_conv110_shift_x_q <= leftShiftStage3Idx1_uid1001_i_unnamed_conv110_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1003_i_unnamed_conv110_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv109_vt_select_31(BITSELECT,648)@24
    i_unnamed_conv109_vt_select_31_b <= leftShiftStage3_uid1003_i_unnamed_conv110_shift_x_q(31 downto 15);

    -- redist27_i_unnamed_conv109_vt_select_31_b_1(DELAY,2667)
    redist27_i_unnamed_conv109_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv109_vt_select_31_b, xout => redist27_i_unnamed_conv109_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv109_vt_join(BITJOIN,647)@25
    i_unnamed_conv109_vt_join_q <= redist27_i_unnamed_conv109_vt_select_31_b_1_q & i_unnamed_conv109_vt_const_14_q;

    -- leftShiftStage2Idx1Rng2_uid929_i_unnamed_conv102_shift_x(BITSELECT,928)@23
    leftShiftStage2Idx1Rng2_uid929_i_unnamed_conv102_shift_x_in <= leftShiftStage1_uid927_i_unnamed_conv102_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid929_i_unnamed_conv102_shift_x_b <= leftShiftStage2Idx1Rng2_uid929_i_unnamed_conv102_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid930_i_unnamed_conv102_shift_x(BITJOIN,929)@23
    leftShiftStage2Idx1_uid930_i_unnamed_conv102_shift_x_q <= leftShiftStage2Idx1Rng2_uid929_i_unnamed_conv102_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid924_i_unnamed_conv102_shift_x(BITSELECT,923)@23
    leftShiftStage1Idx1Rng4_uid924_i_unnamed_conv102_shift_x_in <= leftShiftStage0_uid922_i_unnamed_conv102_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid924_i_unnamed_conv102_shift_x_b <= leftShiftStage1Idx1Rng4_uid924_i_unnamed_conv102_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid925_i_unnamed_conv102_shift_x(BITJOIN,924)@23
    leftShiftStage1Idx1_uid925_i_unnamed_conv102_shift_x_q <= leftShiftStage1Idx1Rng4_uid924_i_unnamed_conv102_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid919_i_unnamed_conv102_shift_x(BITSELECT,918)@23
    leftShiftStage0Idx1Rng8_uid919_i_unnamed_conv102_shift_x_in <= i_mul10_masked27_conv_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid919_i_unnamed_conv102_shift_x_b <= leftShiftStage0Idx1Rng8_uid919_i_unnamed_conv102_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid920_i_unnamed_conv102_shift_x(BITJOIN,919)@23
    leftShiftStage0Idx1_uid920_i_unnamed_conv102_shift_x_q <= leftShiftStage0Idx1Rng8_uid919_i_unnamed_conv102_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage1Idx1Rng4_uid2606_i_unnamed_conv98_shift_x(BITSELECT,2605)@23
    leftShiftStage1Idx1Rng4_uid2606_i_unnamed_conv98_shift_x_in <= leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid2606_i_unnamed_conv98_shift_x_b <= leftShiftStage1Idx1Rng4_uid2606_i_unnamed_conv98_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid2607_i_unnamed_conv98_shift_x(BITJOIN,2606)@23
    leftShiftStage1Idx1_uid2607_i_unnamed_conv98_shift_x_q <= leftShiftStage1Idx1Rng4_uid2606_i_unnamed_conv98_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid2601_i_unnamed_conv98_shift_x(BITSELECT,2600)@23
    leftShiftStage0Idx1Rng16_uid2601_i_unnamed_conv98_shift_x_in <= i_syncbuf_n_elem_sync_buffer79_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2601_i_unnamed_conv98_shift_x_b <= leftShiftStage0Idx1Rng16_uid2601_i_unnamed_conv98_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2602_i_unnamed_conv98_shift_x(BITJOIN,2601)@23
    leftShiftStage0Idx1_uid2602_i_unnamed_conv98_shift_x_q <= leftShiftStage0Idx1Rng16_uid2601_i_unnamed_conv98_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer79_conv(BLACKBOX,625)@0
    -- in in_i_dependence@23
    -- in in_valid_in@23
    -- out out_buffer_out@23
    -- out out_valid_out@23
    thei_syncbuf_n_elem_sync_buffer79_conv : i_syncbuf_n_elem_sync_buffer79_conv95
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist65_sync_in_aunroll_x_in_i_valid_10_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer79_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid2604_i_unnamed_conv98_shift_x(MUX,2603)@23
    leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_s <= VCC_q;
    leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_combproc: PROCESS (leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_s, i_syncbuf_n_elem_sync_buffer79_conv_out_buffer_out, leftShiftStage0Idx1_uid2602_i_unnamed_conv98_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_q <= i_syncbuf_n_elem_sync_buffer79_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_q <= leftShiftStage0Idx1_uid2602_i_unnamed_conv98_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2609_i_unnamed_conv98_shift_x(MUX,2608)@23
    leftShiftStage1_uid2609_i_unnamed_conv98_shift_x_s <= VCC_q;
    leftShiftStage1_uid2609_i_unnamed_conv98_shift_x_combproc: PROCESS (leftShiftStage1_uid2609_i_unnamed_conv98_shift_x_s, leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_q, leftShiftStage1Idx1_uid2607_i_unnamed_conv98_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2609_i_unnamed_conv98_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2609_i_unnamed_conv98_shift_x_q <= leftShiftStage0_uid2604_i_unnamed_conv98_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2609_i_unnamed_conv98_shift_x_q <= leftShiftStage1Idx1_uid2607_i_unnamed_conv98_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2609_i_unnamed_conv98_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv97_vt_select_31(BITSELECT,808)@23
    i_unnamed_conv97_vt_select_31_b <= leftShiftStage1_uid2609_i_unnamed_conv98_shift_x_q(31 downto 20);

    -- i_unnamed_conv97_vt_join(BITJOIN,807)@23
    i_unnamed_conv97_vt_join_q <= i_unnamed_conv97_vt_select_31_b & i_unnamed_conv149_vt_const_19_q;

    -- xMSB_uid888_i_unnamed_conv100_shift_x(BITSELECT,887)@23
    xMSB_uid888_i_unnamed_conv100_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv97_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid910_i_unnamed_conv100_shift_x(BITSELECT,909)@23
    rightShiftStage4Idx1Rng1_uid910_i_unnamed_conv100_shift_x_b <= rightShiftStage3_uid909_i_unnamed_conv100_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid911_i_unnamed_conv100_shift_x(BITJOIN,910)@23
    rightShiftStage4Idx1_uid911_i_unnamed_conv100_shift_x_q <= xMSB_uid888_i_unnamed_conv100_shift_x_b & rightShiftStage4Idx1Rng1_uid910_i_unnamed_conv100_shift_x_b;

    -- seMsb_to2_uid905(BITSELECT,904)@23
    seMsb_to2_uid905_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid888_i_unnamed_conv100_shift_x_b(0)) & xMSB_uid888_i_unnamed_conv100_shift_x_b));
    seMsb_to2_uid905_b <= STD_LOGIC_VECTOR(seMsb_to2_uid905_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid906_i_unnamed_conv100_shift_x(BITSELECT,905)@23
    rightShiftStage3Idx1Rng2_uid906_i_unnamed_conv100_shift_x_b <= rightShiftStage2_uid904_i_unnamed_conv100_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid907_i_unnamed_conv100_shift_x(BITJOIN,906)@23
    rightShiftStage3Idx1_uid907_i_unnamed_conv100_shift_x_q <= seMsb_to2_uid905_b & rightShiftStage3Idx1Rng2_uid906_i_unnamed_conv100_shift_x_b;

    -- seMsb_to4_uid900(BITSELECT,899)@23
    seMsb_to4_uid900_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid888_i_unnamed_conv100_shift_x_b(0)) & xMSB_uid888_i_unnamed_conv100_shift_x_b));
    seMsb_to4_uid900_b <= STD_LOGIC_VECTOR(seMsb_to4_uid900_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid901_i_unnamed_conv100_shift_x(BITSELECT,900)@23
    rightShiftStage2Idx1Rng4_uid901_i_unnamed_conv100_shift_x_b <= rightShiftStage1_uid899_i_unnamed_conv100_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid902_i_unnamed_conv100_shift_x(BITJOIN,901)@23
    rightShiftStage2Idx1_uid902_i_unnamed_conv100_shift_x_q <= seMsb_to4_uid900_b & rightShiftStage2Idx1Rng4_uid901_i_unnamed_conv100_shift_x_b;

    -- seMsb_to8_uid895(BITSELECT,894)@23
    seMsb_to8_uid895_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid888_i_unnamed_conv100_shift_x_b(0)) & xMSB_uid888_i_unnamed_conv100_shift_x_b));
    seMsb_to8_uid895_b <= STD_LOGIC_VECTOR(seMsb_to8_uid895_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid896_i_unnamed_conv100_shift_x(BITSELECT,895)@23
    rightShiftStage1Idx1Rng8_uid896_i_unnamed_conv100_shift_x_b <= rightShiftStage0_uid894_i_unnamed_conv100_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid897_i_unnamed_conv100_shift_x(BITJOIN,896)@23
    rightShiftStage1Idx1_uid897_i_unnamed_conv100_shift_x_q <= seMsb_to8_uid895_b & rightShiftStage1Idx1Rng8_uid896_i_unnamed_conv100_shift_x_b;

    -- seMsb_to16_uid890(BITSELECT,889)@23
    seMsb_to16_uid890_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid888_i_unnamed_conv100_shift_x_b(0)) & xMSB_uid888_i_unnamed_conv100_shift_x_b));
    seMsb_to16_uid890_b <= STD_LOGIC_VECTOR(seMsb_to16_uid890_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid891_i_unnamed_conv100_shift_x(BITSELECT,890)@23
    rightShiftStage0Idx1Rng16_uid891_i_unnamed_conv100_shift_x_b <= i_unnamed_conv97_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid892_i_unnamed_conv100_shift_x(BITJOIN,891)@23
    rightShiftStage0Idx1_uid892_i_unnamed_conv100_shift_x_q <= seMsb_to16_uid890_b & rightShiftStage0Idx1Rng16_uid891_i_unnamed_conv100_shift_x_b;

    -- rightShiftStage0_uid894_i_unnamed_conv100_shift_x(MUX,893)@23
    rightShiftStage0_uid894_i_unnamed_conv100_shift_x_s <= VCC_q;
    rightShiftStage0_uid894_i_unnamed_conv100_shift_x_combproc: PROCESS (rightShiftStage0_uid894_i_unnamed_conv100_shift_x_s, i_unnamed_conv97_vt_join_q, rightShiftStage0Idx1_uid892_i_unnamed_conv100_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid894_i_unnamed_conv100_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid894_i_unnamed_conv100_shift_x_q <= i_unnamed_conv97_vt_join_q;
            WHEN "1" => rightShiftStage0_uid894_i_unnamed_conv100_shift_x_q <= rightShiftStage0Idx1_uid892_i_unnamed_conv100_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid894_i_unnamed_conv100_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid899_i_unnamed_conv100_shift_x(MUX,898)@23
    rightShiftStage1_uid899_i_unnamed_conv100_shift_x_s <= VCC_q;
    rightShiftStage1_uid899_i_unnamed_conv100_shift_x_combproc: PROCESS (rightShiftStage1_uid899_i_unnamed_conv100_shift_x_s, rightShiftStage0_uid894_i_unnamed_conv100_shift_x_q, rightShiftStage1Idx1_uid897_i_unnamed_conv100_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid899_i_unnamed_conv100_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid899_i_unnamed_conv100_shift_x_q <= rightShiftStage0_uid894_i_unnamed_conv100_shift_x_q;
            WHEN "1" => rightShiftStage1_uid899_i_unnamed_conv100_shift_x_q <= rightShiftStage1Idx1_uid897_i_unnamed_conv100_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid899_i_unnamed_conv100_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid904_i_unnamed_conv100_shift_x(MUX,903)@23
    rightShiftStage2_uid904_i_unnamed_conv100_shift_x_s <= VCC_q;
    rightShiftStage2_uid904_i_unnamed_conv100_shift_x_combproc: PROCESS (rightShiftStage2_uid904_i_unnamed_conv100_shift_x_s, rightShiftStage1_uid899_i_unnamed_conv100_shift_x_q, rightShiftStage2Idx1_uid902_i_unnamed_conv100_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid904_i_unnamed_conv100_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid904_i_unnamed_conv100_shift_x_q <= rightShiftStage1_uid899_i_unnamed_conv100_shift_x_q;
            WHEN "1" => rightShiftStage2_uid904_i_unnamed_conv100_shift_x_q <= rightShiftStage2Idx1_uid902_i_unnamed_conv100_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid904_i_unnamed_conv100_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid909_i_unnamed_conv100_shift_x(MUX,908)@23
    rightShiftStage3_uid909_i_unnamed_conv100_shift_x_s <= VCC_q;
    rightShiftStage3_uid909_i_unnamed_conv100_shift_x_combproc: PROCESS (rightShiftStage3_uid909_i_unnamed_conv100_shift_x_s, rightShiftStage2_uid904_i_unnamed_conv100_shift_x_q, rightShiftStage3Idx1_uid907_i_unnamed_conv100_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid909_i_unnamed_conv100_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid909_i_unnamed_conv100_shift_x_q <= rightShiftStage2_uid904_i_unnamed_conv100_shift_x_q;
            WHEN "1" => rightShiftStage3_uid909_i_unnamed_conv100_shift_x_q <= rightShiftStage3Idx1_uid907_i_unnamed_conv100_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid909_i_unnamed_conv100_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid913_i_unnamed_conv100_shift_x(MUX,912)@23
    rightShiftStage4_uid913_i_unnamed_conv100_shift_x_s <= VCC_q;
    rightShiftStage4_uid913_i_unnamed_conv100_shift_x_combproc: PROCESS (rightShiftStage4_uid913_i_unnamed_conv100_shift_x_s, rightShiftStage3_uid909_i_unnamed_conv100_shift_x_q, rightShiftStage4Idx1_uid911_i_unnamed_conv100_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid913_i_unnamed_conv100_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid913_i_unnamed_conv100_shift_x_q <= rightShiftStage3_uid909_i_unnamed_conv100_shift_x_q;
            WHEN "1" => rightShiftStage4_uid913_i_unnamed_conv100_shift_x_q <= rightShiftStage4Idx1_uid911_i_unnamed_conv100_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid913_i_unnamed_conv100_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked27_conv(LOGICAL,583)@23
    i_mul10_masked27_conv_q <= rightShiftStage4_uid913_i_unnamed_conv100_shift_x_q and redist45_sync_in_aunroll_x_in_c0_eni1_1_10_q;

    -- leftShiftStage0_uid922_i_unnamed_conv102_shift_x(MUX,921)@23
    leftShiftStage0_uid922_i_unnamed_conv102_shift_x_s <= VCC_q;
    leftShiftStage0_uid922_i_unnamed_conv102_shift_x_combproc: PROCESS (leftShiftStage0_uid922_i_unnamed_conv102_shift_x_s, i_mul10_masked27_conv_q, leftShiftStage0Idx1_uid920_i_unnamed_conv102_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid922_i_unnamed_conv102_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid922_i_unnamed_conv102_shift_x_q <= i_mul10_masked27_conv_q;
            WHEN "1" => leftShiftStage0_uid922_i_unnamed_conv102_shift_x_q <= leftShiftStage0Idx1_uid920_i_unnamed_conv102_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid922_i_unnamed_conv102_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid927_i_unnamed_conv102_shift_x(MUX,926)@23
    leftShiftStage1_uid927_i_unnamed_conv102_shift_x_s <= VCC_q;
    leftShiftStage1_uid927_i_unnamed_conv102_shift_x_combproc: PROCESS (leftShiftStage1_uid927_i_unnamed_conv102_shift_x_s, leftShiftStage0_uid922_i_unnamed_conv102_shift_x_q, leftShiftStage1Idx1_uid925_i_unnamed_conv102_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid927_i_unnamed_conv102_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid927_i_unnamed_conv102_shift_x_q <= leftShiftStage0_uid922_i_unnamed_conv102_shift_x_q;
            WHEN "1" => leftShiftStage1_uid927_i_unnamed_conv102_shift_x_q <= leftShiftStage1Idx1_uid925_i_unnamed_conv102_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid927_i_unnamed_conv102_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid932_i_unnamed_conv102_shift_x(MUX,931)@23
    leftShiftStage2_uid932_i_unnamed_conv102_shift_x_s <= VCC_q;
    leftShiftStage2_uid932_i_unnamed_conv102_shift_x_combproc: PROCESS (leftShiftStage2_uid932_i_unnamed_conv102_shift_x_s, leftShiftStage1_uid927_i_unnamed_conv102_shift_x_q, leftShiftStage2Idx1_uid930_i_unnamed_conv102_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid932_i_unnamed_conv102_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid932_i_unnamed_conv102_shift_x_q <= leftShiftStage1_uid927_i_unnamed_conv102_shift_x_q;
            WHEN "1" => leftShiftStage2_uid932_i_unnamed_conv102_shift_x_q <= leftShiftStage2Idx1_uid930_i_unnamed_conv102_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid932_i_unnamed_conv102_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv101_vt_select_31(BITSELECT,642)@23
    i_unnamed_conv101_vt_select_31_b <= leftShiftStage2_uid932_i_unnamed_conv102_shift_x_q(31 downto 14);

    -- redist28_i_unnamed_conv101_vt_select_31_b_1(DELAY,2668)
    redist28_i_unnamed_conv101_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv101_vt_select_31_b, xout => redist28_i_unnamed_conv101_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv101_vt_join(BITJOIN,641)@24
    i_unnamed_conv101_vt_join_q <= redist28_i_unnamed_conv101_vt_select_31_b_1_q & i_unnamed_conv101_vt_const_13_q;

    -- leftShiftStage2Idx1Rng1_uid2592_i_unnamed_conv94_shift_x(BITSELECT,2591)@22
    leftShiftStage2Idx1Rng1_uid2592_i_unnamed_conv94_shift_x_in <= leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid2592_i_unnamed_conv94_shift_x_b <= leftShiftStage2Idx1Rng1_uid2592_i_unnamed_conv94_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid2593_i_unnamed_conv94_shift_x(BITJOIN,2592)@22
    leftShiftStage2Idx1_uid2593_i_unnamed_conv94_shift_x_q <= leftShiftStage2Idx1Rng1_uid2592_i_unnamed_conv94_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng4_uid2587_i_unnamed_conv94_shift_x(BITSELECT,2586)@22
    leftShiftStage1Idx1Rng4_uid2587_i_unnamed_conv94_shift_x_in <= leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid2587_i_unnamed_conv94_shift_x_b <= leftShiftStage1Idx1Rng4_uid2587_i_unnamed_conv94_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid2588_i_unnamed_conv94_shift_x(BITJOIN,2587)@22
    leftShiftStage1Idx1_uid2588_i_unnamed_conv94_shift_x_q <= leftShiftStage1Idx1Rng4_uid2587_i_unnamed_conv94_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid2582_i_unnamed_conv94_shift_x(BITSELECT,2581)@22
    leftShiftStage0Idx1Rng8_uid2582_i_unnamed_conv94_shift_x_in <= i_mul10_masked25_conv_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid2582_i_unnamed_conv94_shift_x_b <= leftShiftStage0Idx1Rng8_uid2582_i_unnamed_conv94_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid2583_i_unnamed_conv94_shift_x(BITJOIN,2582)@22
    leftShiftStage0Idx1_uid2583_i_unnamed_conv94_shift_x_q <= leftShiftStage0Idx1Rng8_uid2582_i_unnamed_conv94_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage2Idx1Rng1_uid2545_i_unnamed_conv90_shift_x(BITSELECT,2544)@22
    leftShiftStage2Idx1Rng1_uid2545_i_unnamed_conv90_shift_x_in <= leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid2545_i_unnamed_conv90_shift_x_b <= leftShiftStage2Idx1Rng1_uid2545_i_unnamed_conv90_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid2546_i_unnamed_conv90_shift_x(BITJOIN,2545)@22
    leftShiftStage2Idx1_uid2546_i_unnamed_conv90_shift_x_q <= leftShiftStage2Idx1Rng1_uid2545_i_unnamed_conv90_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng4_uid2540_i_unnamed_conv90_shift_x(BITSELECT,2539)@22
    leftShiftStage1Idx1Rng4_uid2540_i_unnamed_conv90_shift_x_in <= leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid2540_i_unnamed_conv90_shift_x_b <= leftShiftStage1Idx1Rng4_uid2540_i_unnamed_conv90_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid2541_i_unnamed_conv90_shift_x(BITJOIN,2540)@22
    leftShiftStage1Idx1_uid2541_i_unnamed_conv90_shift_x_q <= leftShiftStage1Idx1Rng4_uid2540_i_unnamed_conv90_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid2535_i_unnamed_conv90_shift_x(BITSELECT,2534)@22
    leftShiftStage0Idx1Rng16_uid2535_i_unnamed_conv90_shift_x_in <= i_syncbuf_n_elem_sync_buffer80_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2535_i_unnamed_conv90_shift_x_b <= leftShiftStage0Idx1Rng16_uid2535_i_unnamed_conv90_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2536_i_unnamed_conv90_shift_x(BITJOIN,2535)@22
    leftShiftStage0Idx1_uid2536_i_unnamed_conv90_shift_x_q <= leftShiftStage0Idx1Rng16_uid2535_i_unnamed_conv90_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer80_conv(BLACKBOX,626)@0
    -- in in_i_dependence@22
    -- in in_valid_in@22
    -- out out_buffer_out@22
    -- out out_valid_out@22
    thei_syncbuf_n_elem_sync_buffer80_conv : i_syncbuf_n_elem_sync_buffer80_conv87
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist64_sync_in_aunroll_x_in_i_valid_9_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer80_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid2538_i_unnamed_conv90_shift_x(MUX,2537)@22
    leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_s <= VCC_q;
    leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_combproc: PROCESS (leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_s, i_syncbuf_n_elem_sync_buffer80_conv_out_buffer_out, leftShiftStage0Idx1_uid2536_i_unnamed_conv90_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_q <= i_syncbuf_n_elem_sync_buffer80_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_q <= leftShiftStage0Idx1_uid2536_i_unnamed_conv90_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2543_i_unnamed_conv90_shift_x(MUX,2542)@22
    leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_s <= VCC_q;
    leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_combproc: PROCESS (leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_s, leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_q, leftShiftStage1Idx1_uid2541_i_unnamed_conv90_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_q <= leftShiftStage0_uid2538_i_unnamed_conv90_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_q <= leftShiftStage1Idx1_uid2541_i_unnamed_conv90_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2548_i_unnamed_conv90_shift_x(MUX,2547)@22
    leftShiftStage2_uid2548_i_unnamed_conv90_shift_x_s <= VCC_q;
    leftShiftStage2_uid2548_i_unnamed_conv90_shift_x_combproc: PROCESS (leftShiftStage2_uid2548_i_unnamed_conv90_shift_x_s, leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_q, leftShiftStage2Idx1_uid2546_i_unnamed_conv90_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2548_i_unnamed_conv90_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2548_i_unnamed_conv90_shift_x_q <= leftShiftStage1_uid2543_i_unnamed_conv90_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2548_i_unnamed_conv90_shift_x_q <= leftShiftStage2Idx1_uid2546_i_unnamed_conv90_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2548_i_unnamed_conv90_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv89_vt_select_31(BITSELECT,802)@22
    i_unnamed_conv89_vt_select_31_b <= leftShiftStage2_uid2548_i_unnamed_conv90_shift_x_q(31 downto 21);

    -- i_unnamed_conv89_vt_join(BITJOIN,801)@22
    i_unnamed_conv89_vt_join_q <= i_unnamed_conv89_vt_select_31_b & i_unnamed_conv157_vt_const_20_q;

    -- xMSB_uid2551_i_unnamed_conv92_shift_x(BITSELECT,2550)@22
    xMSB_uid2551_i_unnamed_conv92_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv89_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2573_i_unnamed_conv92_shift_x(BITSELECT,2572)@22
    rightShiftStage4Idx1Rng1_uid2573_i_unnamed_conv92_shift_x_b <= rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2574_i_unnamed_conv92_shift_x(BITJOIN,2573)@22
    rightShiftStage4Idx1_uid2574_i_unnamed_conv92_shift_x_q <= xMSB_uid2551_i_unnamed_conv92_shift_x_b & rightShiftStage4Idx1Rng1_uid2573_i_unnamed_conv92_shift_x_b;

    -- seMsb_to2_uid2568(BITSELECT,2567)@22
    seMsb_to2_uid2568_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2551_i_unnamed_conv92_shift_x_b(0)) & xMSB_uid2551_i_unnamed_conv92_shift_x_b));
    seMsb_to2_uid2568_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2568_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2569_i_unnamed_conv92_shift_x(BITSELECT,2568)@22
    rightShiftStage3Idx1Rng2_uid2569_i_unnamed_conv92_shift_x_b <= rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2570_i_unnamed_conv92_shift_x(BITJOIN,2569)@22
    rightShiftStage3Idx1_uid2570_i_unnamed_conv92_shift_x_q <= seMsb_to2_uid2568_b & rightShiftStage3Idx1Rng2_uid2569_i_unnamed_conv92_shift_x_b;

    -- seMsb_to4_uid2563(BITSELECT,2562)@22
    seMsb_to4_uid2563_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2551_i_unnamed_conv92_shift_x_b(0)) & xMSB_uid2551_i_unnamed_conv92_shift_x_b));
    seMsb_to4_uid2563_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2563_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2564_i_unnamed_conv92_shift_x(BITSELECT,2563)@22
    rightShiftStage2Idx1Rng4_uid2564_i_unnamed_conv92_shift_x_b <= rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2565_i_unnamed_conv92_shift_x(BITJOIN,2564)@22
    rightShiftStage2Idx1_uid2565_i_unnamed_conv92_shift_x_q <= seMsb_to4_uid2563_b & rightShiftStage2Idx1Rng4_uid2564_i_unnamed_conv92_shift_x_b;

    -- seMsb_to8_uid2558(BITSELECT,2557)@22
    seMsb_to8_uid2558_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2551_i_unnamed_conv92_shift_x_b(0)) & xMSB_uid2551_i_unnamed_conv92_shift_x_b));
    seMsb_to8_uid2558_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2558_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2559_i_unnamed_conv92_shift_x(BITSELECT,2558)@22
    rightShiftStage1Idx1Rng8_uid2559_i_unnamed_conv92_shift_x_b <= rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2560_i_unnamed_conv92_shift_x(BITJOIN,2559)@22
    rightShiftStage1Idx1_uid2560_i_unnamed_conv92_shift_x_q <= seMsb_to8_uid2558_b & rightShiftStage1Idx1Rng8_uid2559_i_unnamed_conv92_shift_x_b;

    -- seMsb_to16_uid2553(BITSELECT,2552)@22
    seMsb_to16_uid2553_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2551_i_unnamed_conv92_shift_x_b(0)) & xMSB_uid2551_i_unnamed_conv92_shift_x_b));
    seMsb_to16_uid2553_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2553_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2554_i_unnamed_conv92_shift_x(BITSELECT,2553)@22
    rightShiftStage0Idx1Rng16_uid2554_i_unnamed_conv92_shift_x_b <= i_unnamed_conv89_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2555_i_unnamed_conv92_shift_x(BITJOIN,2554)@22
    rightShiftStage0Idx1_uid2555_i_unnamed_conv92_shift_x_q <= seMsb_to16_uid2553_b & rightShiftStage0Idx1Rng16_uid2554_i_unnamed_conv92_shift_x_b;

    -- rightShiftStage0_uid2557_i_unnamed_conv92_shift_x(MUX,2556)@22
    rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_s <= VCC_q;
    rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_combproc: PROCESS (rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_s, i_unnamed_conv89_vt_join_q, rightShiftStage0Idx1_uid2555_i_unnamed_conv92_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_q <= i_unnamed_conv89_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_q <= rightShiftStage0Idx1_uid2555_i_unnamed_conv92_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2562_i_unnamed_conv92_shift_x(MUX,2561)@22
    rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_s <= VCC_q;
    rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_combproc: PROCESS (rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_s, rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_q, rightShiftStage1Idx1_uid2560_i_unnamed_conv92_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_q <= rightShiftStage0_uid2557_i_unnamed_conv92_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_q <= rightShiftStage1Idx1_uid2560_i_unnamed_conv92_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2567_i_unnamed_conv92_shift_x(MUX,2566)@22
    rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_s <= VCC_q;
    rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_combproc: PROCESS (rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_s, rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_q, rightShiftStage2Idx1_uid2565_i_unnamed_conv92_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_q <= rightShiftStage1_uid2562_i_unnamed_conv92_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_q <= rightShiftStage2Idx1_uid2565_i_unnamed_conv92_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2572_i_unnamed_conv92_shift_x(MUX,2571)@22
    rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_s <= VCC_q;
    rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_combproc: PROCESS (rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_s, rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_q, rightShiftStage3Idx1_uid2570_i_unnamed_conv92_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_q <= rightShiftStage2_uid2567_i_unnamed_conv92_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_q <= rightShiftStage3Idx1_uid2570_i_unnamed_conv92_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2576_i_unnamed_conv92_shift_x(MUX,2575)@22
    rightShiftStage4_uid2576_i_unnamed_conv92_shift_x_s <= VCC_q;
    rightShiftStage4_uid2576_i_unnamed_conv92_shift_x_combproc: PROCESS (rightShiftStage4_uid2576_i_unnamed_conv92_shift_x_s, rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_q, rightShiftStage4Idx1_uid2574_i_unnamed_conv92_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2576_i_unnamed_conv92_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2576_i_unnamed_conv92_shift_x_q <= rightShiftStage3_uid2572_i_unnamed_conv92_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2576_i_unnamed_conv92_shift_x_q <= rightShiftStage4Idx1_uid2574_i_unnamed_conv92_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2576_i_unnamed_conv92_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked25_conv(LOGICAL,582)@22
    i_mul10_masked25_conv_q <= rightShiftStage4_uid2576_i_unnamed_conv92_shift_x_q and redist44_sync_in_aunroll_x_in_c0_eni1_1_9_q;

    -- leftShiftStage0_uid2585_i_unnamed_conv94_shift_x(MUX,2584)@22
    leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_s <= VCC_q;
    leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_combproc: PROCESS (leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_s, i_mul10_masked25_conv_q, leftShiftStage0Idx1_uid2583_i_unnamed_conv94_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_q <= i_mul10_masked25_conv_q;
            WHEN "1" => leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_q <= leftShiftStage0Idx1_uid2583_i_unnamed_conv94_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2590_i_unnamed_conv94_shift_x(MUX,2589)@22
    leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_s <= VCC_q;
    leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_combproc: PROCESS (leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_s, leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_q, leftShiftStage1Idx1_uid2588_i_unnamed_conv94_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_q <= leftShiftStage0_uid2585_i_unnamed_conv94_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_q <= leftShiftStage1Idx1_uid2588_i_unnamed_conv94_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2595_i_unnamed_conv94_shift_x(MUX,2594)@22
    leftShiftStage2_uid2595_i_unnamed_conv94_shift_x_s <= VCC_q;
    leftShiftStage2_uid2595_i_unnamed_conv94_shift_x_combproc: PROCESS (leftShiftStage2_uid2595_i_unnamed_conv94_shift_x_s, leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_q, leftShiftStage2Idx1_uid2593_i_unnamed_conv94_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2595_i_unnamed_conv94_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2595_i_unnamed_conv94_shift_x_q <= leftShiftStage1_uid2590_i_unnamed_conv94_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2595_i_unnamed_conv94_shift_x_q <= leftShiftStage2Idx1_uid2593_i_unnamed_conv94_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2595_i_unnamed_conv94_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv93_vt_select_31(BITSELECT,805)@22
    i_unnamed_conv93_vt_select_31_b <= leftShiftStage2_uid2595_i_unnamed_conv94_shift_x_q(31 downto 13);

    -- redist0_i_unnamed_conv93_vt_select_31_b_1(DELAY,2640)
    redist0_i_unnamed_conv93_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv93_vt_select_31_b, xout => redist0_i_unnamed_conv93_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv93_vt_join(BITJOIN,804)@23
    i_unnamed_conv93_vt_join_q <= redist0_i_unnamed_conv93_vt_select_31_b_1_q & i_unnamed_conv153_vt_const_12_q;

    -- leftShiftStage1Idx1Rng4_uid2526_i_unnamed_conv86_shift_x(BITSELECT,2525)@21
    leftShiftStage1Idx1Rng4_uid2526_i_unnamed_conv86_shift_x_in <= leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid2526_i_unnamed_conv86_shift_x_b <= leftShiftStage1Idx1Rng4_uid2526_i_unnamed_conv86_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid2527_i_unnamed_conv86_shift_x(BITJOIN,2526)@21
    leftShiftStage1Idx1_uid2527_i_unnamed_conv86_shift_x_q <= leftShiftStage1Idx1Rng4_uid2526_i_unnamed_conv86_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng8_uid2521_i_unnamed_conv86_shift_x(BITSELECT,2520)@21
    leftShiftStage0Idx1Rng8_uid2521_i_unnamed_conv86_shift_x_in <= i_mul10_masked23_conv_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid2521_i_unnamed_conv86_shift_x_b <= leftShiftStage0Idx1Rng8_uid2521_i_unnamed_conv86_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid2522_i_unnamed_conv86_shift_x(BITJOIN,2521)@21
    leftShiftStage0Idx1_uid2522_i_unnamed_conv86_shift_x_q <= leftShiftStage0Idx1Rng8_uid2521_i_unnamed_conv86_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage2Idx1Rng2_uid2484_i_unnamed_conv82_shift_x(BITSELECT,2483)@21
    leftShiftStage2Idx1Rng2_uid2484_i_unnamed_conv82_shift_x_in <= leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid2484_i_unnamed_conv82_shift_x_b <= leftShiftStage2Idx1Rng2_uid2484_i_unnamed_conv82_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid2485_i_unnamed_conv82_shift_x(BITJOIN,2484)@21
    leftShiftStage2Idx1_uid2485_i_unnamed_conv82_shift_x_q <= leftShiftStage2Idx1Rng2_uid2484_i_unnamed_conv82_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid2479_i_unnamed_conv82_shift_x(BITSELECT,2478)@21
    leftShiftStage1Idx1Rng4_uid2479_i_unnamed_conv82_shift_x_in <= leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid2479_i_unnamed_conv82_shift_x_b <= leftShiftStage1Idx1Rng4_uid2479_i_unnamed_conv82_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid2480_i_unnamed_conv82_shift_x(BITJOIN,2479)@21
    leftShiftStage1Idx1_uid2480_i_unnamed_conv82_shift_x_q <= leftShiftStage1Idx1Rng4_uid2479_i_unnamed_conv82_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid2474_i_unnamed_conv82_shift_x(BITSELECT,2473)@21
    leftShiftStage0Idx1Rng16_uid2474_i_unnamed_conv82_shift_x_in <= i_syncbuf_n_elem_sync_buffer81_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2474_i_unnamed_conv82_shift_x_b <= leftShiftStage0Idx1Rng16_uid2474_i_unnamed_conv82_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2475_i_unnamed_conv82_shift_x(BITJOIN,2474)@21
    leftShiftStage0Idx1_uid2475_i_unnamed_conv82_shift_x_q <= leftShiftStage0Idx1Rng16_uid2474_i_unnamed_conv82_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer81_conv(BLACKBOX,627)@0
    -- in in_i_dependence@21
    -- in in_valid_in@21
    -- out out_buffer_out@21
    -- out out_valid_out@21
    thei_syncbuf_n_elem_sync_buffer81_conv : i_syncbuf_n_elem_sync_buffer81_conv79
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist63_sync_in_aunroll_x_in_i_valid_8_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer81_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid2477_i_unnamed_conv82_shift_x(MUX,2476)@21
    leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_s <= VCC_q;
    leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_combproc: PROCESS (leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_s, i_syncbuf_n_elem_sync_buffer81_conv_out_buffer_out, leftShiftStage0Idx1_uid2475_i_unnamed_conv82_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_q <= i_syncbuf_n_elem_sync_buffer81_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_q <= leftShiftStage0Idx1_uid2475_i_unnamed_conv82_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2482_i_unnamed_conv82_shift_x(MUX,2481)@21
    leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_s <= VCC_q;
    leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_combproc: PROCESS (leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_s, leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_q, leftShiftStage1Idx1_uid2480_i_unnamed_conv82_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_q <= leftShiftStage0_uid2477_i_unnamed_conv82_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_q <= leftShiftStage1Idx1_uid2480_i_unnamed_conv82_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2487_i_unnamed_conv82_shift_x(MUX,2486)@21
    leftShiftStage2_uid2487_i_unnamed_conv82_shift_x_s <= VCC_q;
    leftShiftStage2_uid2487_i_unnamed_conv82_shift_x_combproc: PROCESS (leftShiftStage2_uid2487_i_unnamed_conv82_shift_x_s, leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_q, leftShiftStage2Idx1_uid2485_i_unnamed_conv82_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2487_i_unnamed_conv82_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2487_i_unnamed_conv82_shift_x_q <= leftShiftStage1_uid2482_i_unnamed_conv82_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2487_i_unnamed_conv82_shift_x_q <= leftShiftStage2Idx1_uid2485_i_unnamed_conv82_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2487_i_unnamed_conv82_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv81_vt_select_31(BITSELECT,796)@21
    i_unnamed_conv81_vt_select_31_b <= leftShiftStage2_uid2487_i_unnamed_conv82_shift_x_q(31 downto 22);

    -- i_unnamed_conv81_vt_join(BITJOIN,795)@21
    i_unnamed_conv81_vt_join_q <= i_unnamed_conv81_vt_select_31_b & i_unnamed_conv165_vt_const_21_q;

    -- xMSB_uid2490_i_unnamed_conv84_shift_x(BITSELECT,2489)@21
    xMSB_uid2490_i_unnamed_conv84_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv81_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2512_i_unnamed_conv84_shift_x(BITSELECT,2511)@21
    rightShiftStage4Idx1Rng1_uid2512_i_unnamed_conv84_shift_x_b <= rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2513_i_unnamed_conv84_shift_x(BITJOIN,2512)@21
    rightShiftStage4Idx1_uid2513_i_unnamed_conv84_shift_x_q <= xMSB_uid2490_i_unnamed_conv84_shift_x_b & rightShiftStage4Idx1Rng1_uid2512_i_unnamed_conv84_shift_x_b;

    -- seMsb_to2_uid2507(BITSELECT,2506)@21
    seMsb_to2_uid2507_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2490_i_unnamed_conv84_shift_x_b(0)) & xMSB_uid2490_i_unnamed_conv84_shift_x_b));
    seMsb_to2_uid2507_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2507_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2508_i_unnamed_conv84_shift_x(BITSELECT,2507)@21
    rightShiftStage3Idx1Rng2_uid2508_i_unnamed_conv84_shift_x_b <= rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2509_i_unnamed_conv84_shift_x(BITJOIN,2508)@21
    rightShiftStage3Idx1_uid2509_i_unnamed_conv84_shift_x_q <= seMsb_to2_uid2507_b & rightShiftStage3Idx1Rng2_uid2508_i_unnamed_conv84_shift_x_b;

    -- seMsb_to4_uid2502(BITSELECT,2501)@21
    seMsb_to4_uid2502_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2490_i_unnamed_conv84_shift_x_b(0)) & xMSB_uid2490_i_unnamed_conv84_shift_x_b));
    seMsb_to4_uid2502_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2502_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2503_i_unnamed_conv84_shift_x(BITSELECT,2502)@21
    rightShiftStage2Idx1Rng4_uid2503_i_unnamed_conv84_shift_x_b <= rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2504_i_unnamed_conv84_shift_x(BITJOIN,2503)@21
    rightShiftStage2Idx1_uid2504_i_unnamed_conv84_shift_x_q <= seMsb_to4_uid2502_b & rightShiftStage2Idx1Rng4_uid2503_i_unnamed_conv84_shift_x_b;

    -- seMsb_to8_uid2497(BITSELECT,2496)@21
    seMsb_to8_uid2497_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2490_i_unnamed_conv84_shift_x_b(0)) & xMSB_uid2490_i_unnamed_conv84_shift_x_b));
    seMsb_to8_uid2497_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2497_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2498_i_unnamed_conv84_shift_x(BITSELECT,2497)@21
    rightShiftStage1Idx1Rng8_uid2498_i_unnamed_conv84_shift_x_b <= rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2499_i_unnamed_conv84_shift_x(BITJOIN,2498)@21
    rightShiftStage1Idx1_uid2499_i_unnamed_conv84_shift_x_q <= seMsb_to8_uid2497_b & rightShiftStage1Idx1Rng8_uid2498_i_unnamed_conv84_shift_x_b;

    -- seMsb_to16_uid2492(BITSELECT,2491)@21
    seMsb_to16_uid2492_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2490_i_unnamed_conv84_shift_x_b(0)) & xMSB_uid2490_i_unnamed_conv84_shift_x_b));
    seMsb_to16_uid2492_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2492_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2493_i_unnamed_conv84_shift_x(BITSELECT,2492)@21
    rightShiftStage0Idx1Rng16_uid2493_i_unnamed_conv84_shift_x_b <= i_unnamed_conv81_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2494_i_unnamed_conv84_shift_x(BITJOIN,2493)@21
    rightShiftStage0Idx1_uid2494_i_unnamed_conv84_shift_x_q <= seMsb_to16_uid2492_b & rightShiftStage0Idx1Rng16_uid2493_i_unnamed_conv84_shift_x_b;

    -- rightShiftStage0_uid2496_i_unnamed_conv84_shift_x(MUX,2495)@21
    rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_s <= VCC_q;
    rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_combproc: PROCESS (rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_s, i_unnamed_conv81_vt_join_q, rightShiftStage0Idx1_uid2494_i_unnamed_conv84_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_q <= i_unnamed_conv81_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_q <= rightShiftStage0Idx1_uid2494_i_unnamed_conv84_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2501_i_unnamed_conv84_shift_x(MUX,2500)@21
    rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_s <= VCC_q;
    rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_combproc: PROCESS (rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_s, rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_q, rightShiftStage1Idx1_uid2499_i_unnamed_conv84_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_q <= rightShiftStage0_uid2496_i_unnamed_conv84_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_q <= rightShiftStage1Idx1_uid2499_i_unnamed_conv84_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2506_i_unnamed_conv84_shift_x(MUX,2505)@21
    rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_s <= VCC_q;
    rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_combproc: PROCESS (rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_s, rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_q, rightShiftStage2Idx1_uid2504_i_unnamed_conv84_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_q <= rightShiftStage1_uid2501_i_unnamed_conv84_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_q <= rightShiftStage2Idx1_uid2504_i_unnamed_conv84_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2511_i_unnamed_conv84_shift_x(MUX,2510)@21
    rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_s <= VCC_q;
    rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_combproc: PROCESS (rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_s, rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_q, rightShiftStage3Idx1_uid2509_i_unnamed_conv84_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_q <= rightShiftStage2_uid2506_i_unnamed_conv84_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_q <= rightShiftStage3Idx1_uid2509_i_unnamed_conv84_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2515_i_unnamed_conv84_shift_x(MUX,2514)@21
    rightShiftStage4_uid2515_i_unnamed_conv84_shift_x_s <= VCC_q;
    rightShiftStage4_uid2515_i_unnamed_conv84_shift_x_combproc: PROCESS (rightShiftStage4_uid2515_i_unnamed_conv84_shift_x_s, rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_q, rightShiftStage4Idx1_uid2513_i_unnamed_conv84_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2515_i_unnamed_conv84_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2515_i_unnamed_conv84_shift_x_q <= rightShiftStage3_uid2511_i_unnamed_conv84_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2515_i_unnamed_conv84_shift_x_q <= rightShiftStage4Idx1_uid2513_i_unnamed_conv84_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2515_i_unnamed_conv84_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked23_conv(LOGICAL,581)@21
    i_mul10_masked23_conv_q <= rightShiftStage4_uid2515_i_unnamed_conv84_shift_x_q and redist43_sync_in_aunroll_x_in_c0_eni1_1_8_q;

    -- leftShiftStage0_uid2524_i_unnamed_conv86_shift_x(MUX,2523)@21
    leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_s <= VCC_q;
    leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_combproc: PROCESS (leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_s, i_mul10_masked23_conv_q, leftShiftStage0Idx1_uid2522_i_unnamed_conv86_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_q <= i_mul10_masked23_conv_q;
            WHEN "1" => leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_q <= leftShiftStage0Idx1_uid2522_i_unnamed_conv86_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2529_i_unnamed_conv86_shift_x(MUX,2528)@21
    leftShiftStage1_uid2529_i_unnamed_conv86_shift_x_s <= VCC_q;
    leftShiftStage1_uid2529_i_unnamed_conv86_shift_x_combproc: PROCESS (leftShiftStage1_uid2529_i_unnamed_conv86_shift_x_s, leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_q, leftShiftStage1Idx1_uid2527_i_unnamed_conv86_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2529_i_unnamed_conv86_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2529_i_unnamed_conv86_shift_x_q <= leftShiftStage0_uid2524_i_unnamed_conv86_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2529_i_unnamed_conv86_shift_x_q <= leftShiftStage1Idx1_uid2527_i_unnamed_conv86_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2529_i_unnamed_conv86_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv85_vt_select_31(BITSELECT,799)@21
    i_unnamed_conv85_vt_select_31_b <= leftShiftStage1_uid2529_i_unnamed_conv86_shift_x_q(31 downto 12);

    -- redist1_i_unnamed_conv85_vt_select_31_b_1(DELAY,2641)
    redist1_i_unnamed_conv85_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv85_vt_select_31_b, xout => redist1_i_unnamed_conv85_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv85_vt_join(BITJOIN,798)@22
    i_unnamed_conv85_vt_join_q <= redist1_i_unnamed_conv85_vt_select_31_b_1_q & i_unnamed_conv161_vt_const_11_q;

    -- leftShiftStage2Idx1Rng1_uid2465_i_unnamed_conv78_shift_x(BITSELECT,2464)@20
    leftShiftStage2Idx1Rng1_uid2465_i_unnamed_conv78_shift_x_in <= leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid2465_i_unnamed_conv78_shift_x_b <= leftShiftStage2Idx1Rng1_uid2465_i_unnamed_conv78_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid2466_i_unnamed_conv78_shift_x(BITJOIN,2465)@20
    leftShiftStage2Idx1_uid2466_i_unnamed_conv78_shift_x_q <= leftShiftStage2Idx1Rng1_uid2465_i_unnamed_conv78_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng2_uid2460_i_unnamed_conv78_shift_x(BITSELECT,2459)@20
    leftShiftStage1Idx1Rng2_uid2460_i_unnamed_conv78_shift_x_in <= leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid2460_i_unnamed_conv78_shift_x_b <= leftShiftStage1Idx1Rng2_uid2460_i_unnamed_conv78_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid2461_i_unnamed_conv78_shift_x(BITJOIN,2460)@20
    leftShiftStage1Idx1_uid2461_i_unnamed_conv78_shift_x_q <= leftShiftStage1Idx1Rng2_uid2460_i_unnamed_conv78_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng8_uid2455_i_unnamed_conv78_shift_x(BITSELECT,2454)@20
    leftShiftStage0Idx1Rng8_uid2455_i_unnamed_conv78_shift_x_in <= i_mul10_masked21_conv_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid2455_i_unnamed_conv78_shift_x_b <= leftShiftStage0Idx1Rng8_uid2455_i_unnamed_conv78_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid2456_i_unnamed_conv78_shift_x(BITJOIN,2455)@20
    leftShiftStage0Idx1_uid2456_i_unnamed_conv78_shift_x_q <= leftShiftStage0Idx1Rng8_uid2455_i_unnamed_conv78_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage3Idx1Rng1_uid2418_i_unnamed_conv74_shift_x(BITSELECT,2417)@20
    leftShiftStage3Idx1Rng1_uid2418_i_unnamed_conv74_shift_x_in <= leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid2418_i_unnamed_conv74_shift_x_b <= leftShiftStage3Idx1Rng1_uid2418_i_unnamed_conv74_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid2419_i_unnamed_conv74_shift_x(BITJOIN,2418)@20
    leftShiftStage3Idx1_uid2419_i_unnamed_conv74_shift_x_q <= leftShiftStage3Idx1Rng1_uid2418_i_unnamed_conv74_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid2413_i_unnamed_conv74_shift_x(BITSELECT,2412)@20
    leftShiftStage2Idx1Rng2_uid2413_i_unnamed_conv74_shift_x_in <= leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid2413_i_unnamed_conv74_shift_x_b <= leftShiftStage2Idx1Rng2_uid2413_i_unnamed_conv74_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid2414_i_unnamed_conv74_shift_x(BITJOIN,2413)@20
    leftShiftStage2Idx1_uid2414_i_unnamed_conv74_shift_x_q <= leftShiftStage2Idx1Rng2_uid2413_i_unnamed_conv74_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid2408_i_unnamed_conv74_shift_x(BITSELECT,2407)@20
    leftShiftStage1Idx1Rng4_uid2408_i_unnamed_conv74_shift_x_in <= leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid2408_i_unnamed_conv74_shift_x_b <= leftShiftStage1Idx1Rng4_uid2408_i_unnamed_conv74_shift_x_in(27 downto 0);

    -- leftShiftStage1Idx1_uid2409_i_unnamed_conv74_shift_x(BITJOIN,2408)@20
    leftShiftStage1Idx1_uid2409_i_unnamed_conv74_shift_x_q <= leftShiftStage1Idx1Rng4_uid2408_i_unnamed_conv74_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage0Idx1Rng16_uid2403_i_unnamed_conv74_shift_x(BITSELECT,2402)@20
    leftShiftStage0Idx1Rng16_uid2403_i_unnamed_conv74_shift_x_in <= i_syncbuf_n_elem_sync_buffer82_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2403_i_unnamed_conv74_shift_x_b <= leftShiftStage0Idx1Rng16_uid2403_i_unnamed_conv74_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2404_i_unnamed_conv74_shift_x(BITJOIN,2403)@20
    leftShiftStage0Idx1_uid2404_i_unnamed_conv74_shift_x_q <= leftShiftStage0Idx1Rng16_uid2403_i_unnamed_conv74_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer82_conv(BLACKBOX,628)@0
    -- in in_i_dependence@20
    -- in in_valid_in@20
    -- out out_buffer_out@20
    -- out out_valid_out@20
    thei_syncbuf_n_elem_sync_buffer82_conv : i_syncbuf_n_elem_sync_buffer82_conv71
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist62_sync_in_aunroll_x_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer82_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid2406_i_unnamed_conv74_shift_x(MUX,2405)@20
    leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_s <= VCC_q;
    leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_combproc: PROCESS (leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_s, i_syncbuf_n_elem_sync_buffer82_conv_out_buffer_out, leftShiftStage0Idx1_uid2404_i_unnamed_conv74_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_q <= i_syncbuf_n_elem_sync_buffer82_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_q <= leftShiftStage0Idx1_uid2404_i_unnamed_conv74_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2411_i_unnamed_conv74_shift_x(MUX,2410)@20
    leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_s <= VCC_q;
    leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_combproc: PROCESS (leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_s, leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_q, leftShiftStage1Idx1_uid2409_i_unnamed_conv74_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_q <= leftShiftStage0_uid2406_i_unnamed_conv74_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_q <= leftShiftStage1Idx1_uid2409_i_unnamed_conv74_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2416_i_unnamed_conv74_shift_x(MUX,2415)@20
    leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_s <= VCC_q;
    leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_combproc: PROCESS (leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_s, leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_q, leftShiftStage2Idx1_uid2414_i_unnamed_conv74_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_q <= leftShiftStage1_uid2411_i_unnamed_conv74_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_q <= leftShiftStage2Idx1_uid2414_i_unnamed_conv74_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid2421_i_unnamed_conv74_shift_x(MUX,2420)@20
    leftShiftStage3_uid2421_i_unnamed_conv74_shift_x_s <= VCC_q;
    leftShiftStage3_uid2421_i_unnamed_conv74_shift_x_combproc: PROCESS (leftShiftStage3_uid2421_i_unnamed_conv74_shift_x_s, leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_q, leftShiftStage3Idx1_uid2419_i_unnamed_conv74_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid2421_i_unnamed_conv74_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid2421_i_unnamed_conv74_shift_x_q <= leftShiftStage2_uid2416_i_unnamed_conv74_shift_x_q;
            WHEN "1" => leftShiftStage3_uid2421_i_unnamed_conv74_shift_x_q <= leftShiftStage3Idx1_uid2419_i_unnamed_conv74_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid2421_i_unnamed_conv74_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv73_vt_select_31(BITSELECT,790)@20
    i_unnamed_conv73_vt_select_31_b <= leftShiftStage3_uid2421_i_unnamed_conv74_shift_x_q(31 downto 23);

    -- i_unnamed_conv73_vt_join(BITJOIN,789)@20
    i_unnamed_conv73_vt_join_q <= i_unnamed_conv73_vt_select_31_b & i_unnamed_conv173_vt_const_22_q;

    -- xMSB_uid2424_i_unnamed_conv76_shift_x(BITSELECT,2423)@20
    xMSB_uid2424_i_unnamed_conv76_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv73_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2446_i_unnamed_conv76_shift_x(BITSELECT,2445)@20
    rightShiftStage4Idx1Rng1_uid2446_i_unnamed_conv76_shift_x_b <= rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2447_i_unnamed_conv76_shift_x(BITJOIN,2446)@20
    rightShiftStage4Idx1_uid2447_i_unnamed_conv76_shift_x_q <= xMSB_uid2424_i_unnamed_conv76_shift_x_b & rightShiftStage4Idx1Rng1_uid2446_i_unnamed_conv76_shift_x_b;

    -- seMsb_to2_uid2441(BITSELECT,2440)@20
    seMsb_to2_uid2441_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2424_i_unnamed_conv76_shift_x_b(0)) & xMSB_uid2424_i_unnamed_conv76_shift_x_b));
    seMsb_to2_uid2441_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2441_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2442_i_unnamed_conv76_shift_x(BITSELECT,2441)@20
    rightShiftStage3Idx1Rng2_uid2442_i_unnamed_conv76_shift_x_b <= rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2443_i_unnamed_conv76_shift_x(BITJOIN,2442)@20
    rightShiftStage3Idx1_uid2443_i_unnamed_conv76_shift_x_q <= seMsb_to2_uid2441_b & rightShiftStage3Idx1Rng2_uid2442_i_unnamed_conv76_shift_x_b;

    -- seMsb_to4_uid2436(BITSELECT,2435)@20
    seMsb_to4_uid2436_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2424_i_unnamed_conv76_shift_x_b(0)) & xMSB_uid2424_i_unnamed_conv76_shift_x_b));
    seMsb_to4_uid2436_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2436_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2437_i_unnamed_conv76_shift_x(BITSELECT,2436)@20
    rightShiftStage2Idx1Rng4_uid2437_i_unnamed_conv76_shift_x_b <= rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2438_i_unnamed_conv76_shift_x(BITJOIN,2437)@20
    rightShiftStage2Idx1_uid2438_i_unnamed_conv76_shift_x_q <= seMsb_to4_uid2436_b & rightShiftStage2Idx1Rng4_uid2437_i_unnamed_conv76_shift_x_b;

    -- seMsb_to8_uid2431(BITSELECT,2430)@20
    seMsb_to8_uid2431_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2424_i_unnamed_conv76_shift_x_b(0)) & xMSB_uid2424_i_unnamed_conv76_shift_x_b));
    seMsb_to8_uid2431_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2431_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2432_i_unnamed_conv76_shift_x(BITSELECT,2431)@20
    rightShiftStage1Idx1Rng8_uid2432_i_unnamed_conv76_shift_x_b <= rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2433_i_unnamed_conv76_shift_x(BITJOIN,2432)@20
    rightShiftStage1Idx1_uid2433_i_unnamed_conv76_shift_x_q <= seMsb_to8_uid2431_b & rightShiftStage1Idx1Rng8_uid2432_i_unnamed_conv76_shift_x_b;

    -- seMsb_to16_uid2426(BITSELECT,2425)@20
    seMsb_to16_uid2426_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2424_i_unnamed_conv76_shift_x_b(0)) & xMSB_uid2424_i_unnamed_conv76_shift_x_b));
    seMsb_to16_uid2426_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2426_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2427_i_unnamed_conv76_shift_x(BITSELECT,2426)@20
    rightShiftStage0Idx1Rng16_uid2427_i_unnamed_conv76_shift_x_b <= i_unnamed_conv73_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2428_i_unnamed_conv76_shift_x(BITJOIN,2427)@20
    rightShiftStage0Idx1_uid2428_i_unnamed_conv76_shift_x_q <= seMsb_to16_uid2426_b & rightShiftStage0Idx1Rng16_uid2427_i_unnamed_conv76_shift_x_b;

    -- rightShiftStage0_uid2430_i_unnamed_conv76_shift_x(MUX,2429)@20
    rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_s <= VCC_q;
    rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_combproc: PROCESS (rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_s, i_unnamed_conv73_vt_join_q, rightShiftStage0Idx1_uid2428_i_unnamed_conv76_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_q <= i_unnamed_conv73_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_q <= rightShiftStage0Idx1_uid2428_i_unnamed_conv76_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2435_i_unnamed_conv76_shift_x(MUX,2434)@20
    rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_s <= VCC_q;
    rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_combproc: PROCESS (rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_s, rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_q, rightShiftStage1Idx1_uid2433_i_unnamed_conv76_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_q <= rightShiftStage0_uid2430_i_unnamed_conv76_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_q <= rightShiftStage1Idx1_uid2433_i_unnamed_conv76_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2440_i_unnamed_conv76_shift_x(MUX,2439)@20
    rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_s <= VCC_q;
    rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_combproc: PROCESS (rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_s, rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_q, rightShiftStage2Idx1_uid2438_i_unnamed_conv76_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_q <= rightShiftStage1_uid2435_i_unnamed_conv76_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_q <= rightShiftStage2Idx1_uid2438_i_unnamed_conv76_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2445_i_unnamed_conv76_shift_x(MUX,2444)@20
    rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_s <= VCC_q;
    rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_combproc: PROCESS (rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_s, rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_q, rightShiftStage3Idx1_uid2443_i_unnamed_conv76_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_q <= rightShiftStage2_uid2440_i_unnamed_conv76_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_q <= rightShiftStage3Idx1_uid2443_i_unnamed_conv76_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2449_i_unnamed_conv76_shift_x(MUX,2448)@20
    rightShiftStage4_uid2449_i_unnamed_conv76_shift_x_s <= VCC_q;
    rightShiftStage4_uid2449_i_unnamed_conv76_shift_x_combproc: PROCESS (rightShiftStage4_uid2449_i_unnamed_conv76_shift_x_s, rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_q, rightShiftStage4Idx1_uid2447_i_unnamed_conv76_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2449_i_unnamed_conv76_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2449_i_unnamed_conv76_shift_x_q <= rightShiftStage3_uid2445_i_unnamed_conv76_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2449_i_unnamed_conv76_shift_x_q <= rightShiftStage4Idx1_uid2447_i_unnamed_conv76_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2449_i_unnamed_conv76_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked21_conv(LOGICAL,580)@20
    i_mul10_masked21_conv_q <= rightShiftStage4_uid2449_i_unnamed_conv76_shift_x_q and redist42_sync_in_aunroll_x_in_c0_eni1_1_7_q;

    -- leftShiftStage0_uid2458_i_unnamed_conv78_shift_x(MUX,2457)@20
    leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_s <= VCC_q;
    leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_combproc: PROCESS (leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_s, i_mul10_masked21_conv_q, leftShiftStage0Idx1_uid2456_i_unnamed_conv78_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_q <= i_mul10_masked21_conv_q;
            WHEN "1" => leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_q <= leftShiftStage0Idx1_uid2456_i_unnamed_conv78_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2463_i_unnamed_conv78_shift_x(MUX,2462)@20
    leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_s <= VCC_q;
    leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_combproc: PROCESS (leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_s, leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_q, leftShiftStage1Idx1_uid2461_i_unnamed_conv78_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_q <= leftShiftStage0_uid2458_i_unnamed_conv78_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_q <= leftShiftStage1Idx1_uid2461_i_unnamed_conv78_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2468_i_unnamed_conv78_shift_x(MUX,2467)@20
    leftShiftStage2_uid2468_i_unnamed_conv78_shift_x_s <= VCC_q;
    leftShiftStage2_uid2468_i_unnamed_conv78_shift_x_combproc: PROCESS (leftShiftStage2_uid2468_i_unnamed_conv78_shift_x_s, leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_q, leftShiftStage2Idx1_uid2466_i_unnamed_conv78_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2468_i_unnamed_conv78_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2468_i_unnamed_conv78_shift_x_q <= leftShiftStage1_uid2463_i_unnamed_conv78_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2468_i_unnamed_conv78_shift_x_q <= leftShiftStage2Idx1_uid2466_i_unnamed_conv78_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2468_i_unnamed_conv78_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv77_vt_select_31(BITSELECT,793)@20
    i_unnamed_conv77_vt_select_31_b <= leftShiftStage2_uid2468_i_unnamed_conv78_shift_x_q(31 downto 11);

    -- redist2_i_unnamed_conv77_vt_select_31_b_1(DELAY,2642)
    redist2_i_unnamed_conv77_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv77_vt_select_31_b, xout => redist2_i_unnamed_conv77_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv77_vt_join(BITJOIN,792)@21
    i_unnamed_conv77_vt_join_q <= redist2_i_unnamed_conv77_vt_select_31_b_1_q & i_unnamed_conv169_vt_const_10_q;

    -- leftShiftStage1Idx1Rng2_uid2394_i_unnamed_conv70_shift_x(BITSELECT,2393)@19
    leftShiftStage1Idx1Rng2_uid2394_i_unnamed_conv70_shift_x_in <= leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid2394_i_unnamed_conv70_shift_x_b <= leftShiftStage1Idx1Rng2_uid2394_i_unnamed_conv70_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid2395_i_unnamed_conv70_shift_x(BITJOIN,2394)@19
    leftShiftStage1Idx1_uid2395_i_unnamed_conv70_shift_x_q <= leftShiftStage1Idx1Rng2_uid2394_i_unnamed_conv70_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng8_uid2389_i_unnamed_conv70_shift_x(BITSELECT,2388)@19
    leftShiftStage0Idx1Rng8_uid2389_i_unnamed_conv70_shift_x_in <= i_mul10_masked19_conv_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid2389_i_unnamed_conv70_shift_x_b <= leftShiftStage0Idx1Rng8_uid2389_i_unnamed_conv70_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid2390_i_unnamed_conv70_shift_x(BITJOIN,2389)@19
    leftShiftStage0Idx1_uid2390_i_unnamed_conv70_shift_x_q <= leftShiftStage0Idx1Rng8_uid2389_i_unnamed_conv70_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage1Idx1Rng8_uid2352_i_unnamed_conv66_shift_x(BITSELECT,2351)@19
    leftShiftStage1Idx1Rng8_uid2352_i_unnamed_conv66_shift_x_in <= leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid2352_i_unnamed_conv66_shift_x_b <= leftShiftStage1Idx1Rng8_uid2352_i_unnamed_conv66_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid2353_i_unnamed_conv66_shift_x(BITJOIN,2352)@19
    leftShiftStage1Idx1_uid2353_i_unnamed_conv66_shift_x_q <= leftShiftStage1Idx1Rng8_uid2352_i_unnamed_conv66_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid2347_i_unnamed_conv66_shift_x(BITSELECT,2346)@19
    leftShiftStage0Idx1Rng16_uid2347_i_unnamed_conv66_shift_x_in <= i_syncbuf_n_elem_sync_buffer83_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2347_i_unnamed_conv66_shift_x_b <= leftShiftStage0Idx1Rng16_uid2347_i_unnamed_conv66_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2348_i_unnamed_conv66_shift_x(BITJOIN,2347)@19
    leftShiftStage0Idx1_uid2348_i_unnamed_conv66_shift_x_q <= leftShiftStage0Idx1Rng16_uid2347_i_unnamed_conv66_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer83_conv(BLACKBOX,629)@0
    -- in in_i_dependence@19
    -- in in_valid_in@19
    -- out out_buffer_out@19
    -- out out_valid_out@19
    thei_syncbuf_n_elem_sync_buffer83_conv : i_syncbuf_n_elem_sync_buffer83_conv63
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist61_sync_in_aunroll_x_in_i_valid_6_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer83_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid2350_i_unnamed_conv66_shift_x(MUX,2349)@19
    leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_s <= VCC_q;
    leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_combproc: PROCESS (leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_s, i_syncbuf_n_elem_sync_buffer83_conv_out_buffer_out, leftShiftStage0Idx1_uid2348_i_unnamed_conv66_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_q <= i_syncbuf_n_elem_sync_buffer83_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_q <= leftShiftStage0Idx1_uid2348_i_unnamed_conv66_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2355_i_unnamed_conv66_shift_x(MUX,2354)@19
    leftShiftStage1_uid2355_i_unnamed_conv66_shift_x_s <= VCC_q;
    leftShiftStage1_uid2355_i_unnamed_conv66_shift_x_combproc: PROCESS (leftShiftStage1_uid2355_i_unnamed_conv66_shift_x_s, leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_q, leftShiftStage1Idx1_uid2353_i_unnamed_conv66_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2355_i_unnamed_conv66_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2355_i_unnamed_conv66_shift_x_q <= leftShiftStage0_uid2350_i_unnamed_conv66_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2355_i_unnamed_conv66_shift_x_q <= leftShiftStage1Idx1_uid2353_i_unnamed_conv66_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2355_i_unnamed_conv66_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv65_vt_select_31(BITSELECT,784)@19
    i_unnamed_conv65_vt_select_31_b <= leftShiftStage1_uid2355_i_unnamed_conv66_shift_x_q(31 downto 24);

    -- i_unnamed_conv65_vt_join(BITJOIN,783)@19
    i_unnamed_conv65_vt_join_q <= i_unnamed_conv65_vt_select_31_b & i_unnamed_conv181_vt_const_23_q;

    -- xMSB_uid2358_i_unnamed_conv68_shift_x(BITSELECT,2357)@19
    xMSB_uid2358_i_unnamed_conv68_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv65_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2380_i_unnamed_conv68_shift_x(BITSELECT,2379)@19
    rightShiftStage4Idx1Rng1_uid2380_i_unnamed_conv68_shift_x_b <= rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2381_i_unnamed_conv68_shift_x(BITJOIN,2380)@19
    rightShiftStage4Idx1_uid2381_i_unnamed_conv68_shift_x_q <= xMSB_uid2358_i_unnamed_conv68_shift_x_b & rightShiftStage4Idx1Rng1_uid2380_i_unnamed_conv68_shift_x_b;

    -- seMsb_to2_uid2375(BITSELECT,2374)@19
    seMsb_to2_uid2375_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2358_i_unnamed_conv68_shift_x_b(0)) & xMSB_uid2358_i_unnamed_conv68_shift_x_b));
    seMsb_to2_uid2375_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2375_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2376_i_unnamed_conv68_shift_x(BITSELECT,2375)@19
    rightShiftStage3Idx1Rng2_uid2376_i_unnamed_conv68_shift_x_b <= rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2377_i_unnamed_conv68_shift_x(BITJOIN,2376)@19
    rightShiftStage3Idx1_uid2377_i_unnamed_conv68_shift_x_q <= seMsb_to2_uid2375_b & rightShiftStage3Idx1Rng2_uid2376_i_unnamed_conv68_shift_x_b;

    -- seMsb_to4_uid2370(BITSELECT,2369)@19
    seMsb_to4_uid2370_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2358_i_unnamed_conv68_shift_x_b(0)) & xMSB_uid2358_i_unnamed_conv68_shift_x_b));
    seMsb_to4_uid2370_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2370_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2371_i_unnamed_conv68_shift_x(BITSELECT,2370)@19
    rightShiftStage2Idx1Rng4_uid2371_i_unnamed_conv68_shift_x_b <= rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2372_i_unnamed_conv68_shift_x(BITJOIN,2371)@19
    rightShiftStage2Idx1_uid2372_i_unnamed_conv68_shift_x_q <= seMsb_to4_uid2370_b & rightShiftStage2Idx1Rng4_uid2371_i_unnamed_conv68_shift_x_b;

    -- seMsb_to8_uid2365(BITSELECT,2364)@19
    seMsb_to8_uid2365_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2358_i_unnamed_conv68_shift_x_b(0)) & xMSB_uid2358_i_unnamed_conv68_shift_x_b));
    seMsb_to8_uid2365_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2365_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2366_i_unnamed_conv68_shift_x(BITSELECT,2365)@19
    rightShiftStage1Idx1Rng8_uid2366_i_unnamed_conv68_shift_x_b <= rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2367_i_unnamed_conv68_shift_x(BITJOIN,2366)@19
    rightShiftStage1Idx1_uid2367_i_unnamed_conv68_shift_x_q <= seMsb_to8_uid2365_b & rightShiftStage1Idx1Rng8_uid2366_i_unnamed_conv68_shift_x_b;

    -- seMsb_to16_uid2360(BITSELECT,2359)@19
    seMsb_to16_uid2360_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2358_i_unnamed_conv68_shift_x_b(0)) & xMSB_uid2358_i_unnamed_conv68_shift_x_b));
    seMsb_to16_uid2360_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2360_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2361_i_unnamed_conv68_shift_x(BITSELECT,2360)@19
    rightShiftStage0Idx1Rng16_uid2361_i_unnamed_conv68_shift_x_b <= i_unnamed_conv65_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2362_i_unnamed_conv68_shift_x(BITJOIN,2361)@19
    rightShiftStage0Idx1_uid2362_i_unnamed_conv68_shift_x_q <= seMsb_to16_uid2360_b & rightShiftStage0Idx1Rng16_uid2361_i_unnamed_conv68_shift_x_b;

    -- rightShiftStage0_uid2364_i_unnamed_conv68_shift_x(MUX,2363)@19
    rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_s <= VCC_q;
    rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_combproc: PROCESS (rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_s, i_unnamed_conv65_vt_join_q, rightShiftStage0Idx1_uid2362_i_unnamed_conv68_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_q <= i_unnamed_conv65_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_q <= rightShiftStage0Idx1_uid2362_i_unnamed_conv68_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2369_i_unnamed_conv68_shift_x(MUX,2368)@19
    rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_s <= VCC_q;
    rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_combproc: PROCESS (rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_s, rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_q, rightShiftStage1Idx1_uid2367_i_unnamed_conv68_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_q <= rightShiftStage0_uid2364_i_unnamed_conv68_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_q <= rightShiftStage1Idx1_uid2367_i_unnamed_conv68_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2374_i_unnamed_conv68_shift_x(MUX,2373)@19
    rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_s <= VCC_q;
    rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_combproc: PROCESS (rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_s, rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_q, rightShiftStage2Idx1_uid2372_i_unnamed_conv68_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_q <= rightShiftStage1_uid2369_i_unnamed_conv68_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_q <= rightShiftStage2Idx1_uid2372_i_unnamed_conv68_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2379_i_unnamed_conv68_shift_x(MUX,2378)@19
    rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_s <= VCC_q;
    rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_combproc: PROCESS (rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_s, rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_q, rightShiftStage3Idx1_uid2377_i_unnamed_conv68_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_q <= rightShiftStage2_uid2374_i_unnamed_conv68_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_q <= rightShiftStage3Idx1_uid2377_i_unnamed_conv68_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2383_i_unnamed_conv68_shift_x(MUX,2382)@19
    rightShiftStage4_uid2383_i_unnamed_conv68_shift_x_s <= VCC_q;
    rightShiftStage4_uid2383_i_unnamed_conv68_shift_x_combproc: PROCESS (rightShiftStage4_uid2383_i_unnamed_conv68_shift_x_s, rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_q, rightShiftStage4Idx1_uid2381_i_unnamed_conv68_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2383_i_unnamed_conv68_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2383_i_unnamed_conv68_shift_x_q <= rightShiftStage3_uid2379_i_unnamed_conv68_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2383_i_unnamed_conv68_shift_x_q <= rightShiftStage4Idx1_uid2381_i_unnamed_conv68_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2383_i_unnamed_conv68_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked19_conv(LOGICAL,579)@19
    i_mul10_masked19_conv_q <= rightShiftStage4_uid2383_i_unnamed_conv68_shift_x_q and redist41_sync_in_aunroll_x_in_c0_eni1_1_6_q;

    -- leftShiftStage0_uid2392_i_unnamed_conv70_shift_x(MUX,2391)@19
    leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_s <= VCC_q;
    leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_combproc: PROCESS (leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_s, i_mul10_masked19_conv_q, leftShiftStage0Idx1_uid2390_i_unnamed_conv70_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_q <= i_mul10_masked19_conv_q;
            WHEN "1" => leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_q <= leftShiftStage0Idx1_uid2390_i_unnamed_conv70_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2397_i_unnamed_conv70_shift_x(MUX,2396)@19
    leftShiftStage1_uid2397_i_unnamed_conv70_shift_x_s <= VCC_q;
    leftShiftStage1_uid2397_i_unnamed_conv70_shift_x_combproc: PROCESS (leftShiftStage1_uid2397_i_unnamed_conv70_shift_x_s, leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_q, leftShiftStage1Idx1_uid2395_i_unnamed_conv70_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2397_i_unnamed_conv70_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2397_i_unnamed_conv70_shift_x_q <= leftShiftStage0_uid2392_i_unnamed_conv70_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2397_i_unnamed_conv70_shift_x_q <= leftShiftStage1Idx1_uid2395_i_unnamed_conv70_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2397_i_unnamed_conv70_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv69_vt_select_31(BITSELECT,787)@19
    i_unnamed_conv69_vt_select_31_b <= leftShiftStage1_uid2397_i_unnamed_conv70_shift_x_q(31 downto 10);

    -- redist3_i_unnamed_conv69_vt_select_31_b_1(DELAY,2643)
    redist3_i_unnamed_conv69_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 22, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv69_vt_select_31_b, xout => redist3_i_unnamed_conv69_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv69_vt_join(BITJOIN,786)@20
    i_unnamed_conv69_vt_join_q <= redist3_i_unnamed_conv69_vt_select_31_b_1_q & i_unnamed_conv177_vt_const_9_q;

    -- leftShiftStage1Idx1Rng1_uid2338_i_unnamed_conv62_shift_x(BITSELECT,2337)@18
    leftShiftStage1Idx1Rng1_uid2338_i_unnamed_conv62_shift_x_in <= leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid2338_i_unnamed_conv62_shift_x_b <= leftShiftStage1Idx1Rng1_uid2338_i_unnamed_conv62_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid2339_i_unnamed_conv62_shift_x(BITJOIN,2338)@18
    leftShiftStage1Idx1_uid2339_i_unnamed_conv62_shift_x_q <= leftShiftStage1Idx1Rng1_uid2338_i_unnamed_conv62_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng8_uid2333_i_unnamed_conv62_shift_x(BITSELECT,2332)@18
    leftShiftStage0Idx1Rng8_uid2333_i_unnamed_conv62_shift_x_in <= i_mul10_masked17_conv_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid2333_i_unnamed_conv62_shift_x_b <= leftShiftStage0Idx1Rng8_uid2333_i_unnamed_conv62_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid2334_i_unnamed_conv62_shift_x(BITJOIN,2333)@18
    leftShiftStage0Idx1_uid2334_i_unnamed_conv62_shift_x_q <= leftShiftStage0Idx1Rng8_uid2333_i_unnamed_conv62_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage2Idx1Rng1_uid2296_i_unnamed_conv58_shift_x(BITSELECT,2295)@18
    leftShiftStage2Idx1Rng1_uid2296_i_unnamed_conv58_shift_x_in <= leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid2296_i_unnamed_conv58_shift_x_b <= leftShiftStage2Idx1Rng1_uid2296_i_unnamed_conv58_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid2297_i_unnamed_conv58_shift_x(BITJOIN,2296)@18
    leftShiftStage2Idx1_uid2297_i_unnamed_conv58_shift_x_q <= leftShiftStage2Idx1Rng1_uid2296_i_unnamed_conv58_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng8_uid2291_i_unnamed_conv58_shift_x(BITSELECT,2290)@18
    leftShiftStage1Idx1Rng8_uid2291_i_unnamed_conv58_shift_x_in <= leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid2291_i_unnamed_conv58_shift_x_b <= leftShiftStage1Idx1Rng8_uid2291_i_unnamed_conv58_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid2292_i_unnamed_conv58_shift_x(BITJOIN,2291)@18
    leftShiftStage1Idx1_uid2292_i_unnamed_conv58_shift_x_q <= leftShiftStage1Idx1Rng8_uid2291_i_unnamed_conv58_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid2286_i_unnamed_conv58_shift_x(BITSELECT,2285)@18
    leftShiftStage0Idx1Rng16_uid2286_i_unnamed_conv58_shift_x_in <= i_syncbuf_n_elem_sync_buffer84_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2286_i_unnamed_conv58_shift_x_b <= leftShiftStage0Idx1Rng16_uid2286_i_unnamed_conv58_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2287_i_unnamed_conv58_shift_x(BITJOIN,2286)@18
    leftShiftStage0Idx1_uid2287_i_unnamed_conv58_shift_x_q <= leftShiftStage0Idx1Rng16_uid2286_i_unnamed_conv58_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer84_conv(BLACKBOX,630)@0
    -- in in_i_dependence@18
    -- in in_valid_in@18
    -- out out_buffer_out@18
    -- out out_valid_out@18
    thei_syncbuf_n_elem_sync_buffer84_conv : i_syncbuf_n_elem_sync_buffer84_conv55
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist60_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer84_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid2289_i_unnamed_conv58_shift_x(MUX,2288)@18
    leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_s <= VCC_q;
    leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_combproc: PROCESS (leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_s, i_syncbuf_n_elem_sync_buffer84_conv_out_buffer_out, leftShiftStage0Idx1_uid2287_i_unnamed_conv58_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_q <= i_syncbuf_n_elem_sync_buffer84_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_q <= leftShiftStage0Idx1_uid2287_i_unnamed_conv58_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2294_i_unnamed_conv58_shift_x(MUX,2293)@18
    leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_s <= VCC_q;
    leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_combproc: PROCESS (leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_s, leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_q, leftShiftStage1Idx1_uid2292_i_unnamed_conv58_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_q <= leftShiftStage0_uid2289_i_unnamed_conv58_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_q <= leftShiftStage1Idx1_uid2292_i_unnamed_conv58_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2299_i_unnamed_conv58_shift_x(MUX,2298)@18
    leftShiftStage2_uid2299_i_unnamed_conv58_shift_x_s <= VCC_q;
    leftShiftStage2_uid2299_i_unnamed_conv58_shift_x_combproc: PROCESS (leftShiftStage2_uid2299_i_unnamed_conv58_shift_x_s, leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_q, leftShiftStage2Idx1_uid2297_i_unnamed_conv58_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2299_i_unnamed_conv58_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2299_i_unnamed_conv58_shift_x_q <= leftShiftStage1_uid2294_i_unnamed_conv58_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2299_i_unnamed_conv58_shift_x_q <= leftShiftStage2Idx1_uid2297_i_unnamed_conv58_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2299_i_unnamed_conv58_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv57_vt_select_31(BITSELECT,778)@18
    i_unnamed_conv57_vt_select_31_b <= leftShiftStage2_uid2299_i_unnamed_conv58_shift_x_q(31 downto 25);

    -- i_unnamed_conv57_vt_join(BITJOIN,777)@18
    i_unnamed_conv57_vt_join_q <= i_unnamed_conv57_vt_select_31_b & i_unnamed_conv189_vt_const_24_q;

    -- xMSB_uid2302_i_unnamed_conv60_shift_x(BITSELECT,2301)@18
    xMSB_uid2302_i_unnamed_conv60_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv57_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2324_i_unnamed_conv60_shift_x(BITSELECT,2323)@18
    rightShiftStage4Idx1Rng1_uid2324_i_unnamed_conv60_shift_x_b <= rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2325_i_unnamed_conv60_shift_x(BITJOIN,2324)@18
    rightShiftStage4Idx1_uid2325_i_unnamed_conv60_shift_x_q <= xMSB_uid2302_i_unnamed_conv60_shift_x_b & rightShiftStage4Idx1Rng1_uid2324_i_unnamed_conv60_shift_x_b;

    -- seMsb_to2_uid2319(BITSELECT,2318)@18
    seMsb_to2_uid2319_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2302_i_unnamed_conv60_shift_x_b(0)) & xMSB_uid2302_i_unnamed_conv60_shift_x_b));
    seMsb_to2_uid2319_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2319_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2320_i_unnamed_conv60_shift_x(BITSELECT,2319)@18
    rightShiftStage3Idx1Rng2_uid2320_i_unnamed_conv60_shift_x_b <= rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2321_i_unnamed_conv60_shift_x(BITJOIN,2320)@18
    rightShiftStage3Idx1_uid2321_i_unnamed_conv60_shift_x_q <= seMsb_to2_uid2319_b & rightShiftStage3Idx1Rng2_uid2320_i_unnamed_conv60_shift_x_b;

    -- seMsb_to4_uid2314(BITSELECT,2313)@18
    seMsb_to4_uid2314_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2302_i_unnamed_conv60_shift_x_b(0)) & xMSB_uid2302_i_unnamed_conv60_shift_x_b));
    seMsb_to4_uid2314_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2314_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2315_i_unnamed_conv60_shift_x(BITSELECT,2314)@18
    rightShiftStage2Idx1Rng4_uid2315_i_unnamed_conv60_shift_x_b <= rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2316_i_unnamed_conv60_shift_x(BITJOIN,2315)@18
    rightShiftStage2Idx1_uid2316_i_unnamed_conv60_shift_x_q <= seMsb_to4_uid2314_b & rightShiftStage2Idx1Rng4_uid2315_i_unnamed_conv60_shift_x_b;

    -- seMsb_to8_uid2309(BITSELECT,2308)@18
    seMsb_to8_uid2309_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2302_i_unnamed_conv60_shift_x_b(0)) & xMSB_uid2302_i_unnamed_conv60_shift_x_b));
    seMsb_to8_uid2309_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2309_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2310_i_unnamed_conv60_shift_x(BITSELECT,2309)@18
    rightShiftStage1Idx1Rng8_uid2310_i_unnamed_conv60_shift_x_b <= rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2311_i_unnamed_conv60_shift_x(BITJOIN,2310)@18
    rightShiftStage1Idx1_uid2311_i_unnamed_conv60_shift_x_q <= seMsb_to8_uid2309_b & rightShiftStage1Idx1Rng8_uid2310_i_unnamed_conv60_shift_x_b;

    -- seMsb_to16_uid2304(BITSELECT,2303)@18
    seMsb_to16_uid2304_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2302_i_unnamed_conv60_shift_x_b(0)) & xMSB_uid2302_i_unnamed_conv60_shift_x_b));
    seMsb_to16_uid2304_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2304_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2305_i_unnamed_conv60_shift_x(BITSELECT,2304)@18
    rightShiftStage0Idx1Rng16_uid2305_i_unnamed_conv60_shift_x_b <= i_unnamed_conv57_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2306_i_unnamed_conv60_shift_x(BITJOIN,2305)@18
    rightShiftStage0Idx1_uid2306_i_unnamed_conv60_shift_x_q <= seMsb_to16_uid2304_b & rightShiftStage0Idx1Rng16_uid2305_i_unnamed_conv60_shift_x_b;

    -- rightShiftStage0_uid2308_i_unnamed_conv60_shift_x(MUX,2307)@18
    rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_s <= VCC_q;
    rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_combproc: PROCESS (rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_s, i_unnamed_conv57_vt_join_q, rightShiftStage0Idx1_uid2306_i_unnamed_conv60_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_q <= i_unnamed_conv57_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_q <= rightShiftStage0Idx1_uid2306_i_unnamed_conv60_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2313_i_unnamed_conv60_shift_x(MUX,2312)@18
    rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_s <= VCC_q;
    rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_combproc: PROCESS (rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_s, rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_q, rightShiftStage1Idx1_uid2311_i_unnamed_conv60_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_q <= rightShiftStage0_uid2308_i_unnamed_conv60_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_q <= rightShiftStage1Idx1_uid2311_i_unnamed_conv60_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2318_i_unnamed_conv60_shift_x(MUX,2317)@18
    rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_s <= VCC_q;
    rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_combproc: PROCESS (rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_s, rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_q, rightShiftStage2Idx1_uid2316_i_unnamed_conv60_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_q <= rightShiftStage1_uid2313_i_unnamed_conv60_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_q <= rightShiftStage2Idx1_uid2316_i_unnamed_conv60_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2323_i_unnamed_conv60_shift_x(MUX,2322)@18
    rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_s <= VCC_q;
    rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_combproc: PROCESS (rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_s, rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_q, rightShiftStage3Idx1_uid2321_i_unnamed_conv60_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_q <= rightShiftStage2_uid2318_i_unnamed_conv60_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_q <= rightShiftStage3Idx1_uid2321_i_unnamed_conv60_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2327_i_unnamed_conv60_shift_x(MUX,2326)@18
    rightShiftStage4_uid2327_i_unnamed_conv60_shift_x_s <= VCC_q;
    rightShiftStage4_uid2327_i_unnamed_conv60_shift_x_combproc: PROCESS (rightShiftStage4_uid2327_i_unnamed_conv60_shift_x_s, rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_q, rightShiftStage4Idx1_uid2325_i_unnamed_conv60_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2327_i_unnamed_conv60_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2327_i_unnamed_conv60_shift_x_q <= rightShiftStage3_uid2323_i_unnamed_conv60_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2327_i_unnamed_conv60_shift_x_q <= rightShiftStage4Idx1_uid2325_i_unnamed_conv60_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2327_i_unnamed_conv60_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked17_conv(LOGICAL,578)@18
    i_mul10_masked17_conv_q <= rightShiftStage4_uid2327_i_unnamed_conv60_shift_x_q and redist40_sync_in_aunroll_x_in_c0_eni1_1_5_q;

    -- leftShiftStage0_uid2336_i_unnamed_conv62_shift_x(MUX,2335)@18
    leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_s <= VCC_q;
    leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_combproc: PROCESS (leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_s, i_mul10_masked17_conv_q, leftShiftStage0Idx1_uid2334_i_unnamed_conv62_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_q <= i_mul10_masked17_conv_q;
            WHEN "1" => leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_q <= leftShiftStage0Idx1_uid2334_i_unnamed_conv62_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2341_i_unnamed_conv62_shift_x(MUX,2340)@18
    leftShiftStage1_uid2341_i_unnamed_conv62_shift_x_s <= VCC_q;
    leftShiftStage1_uid2341_i_unnamed_conv62_shift_x_combproc: PROCESS (leftShiftStage1_uid2341_i_unnamed_conv62_shift_x_s, leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_q, leftShiftStage1Idx1_uid2339_i_unnamed_conv62_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2341_i_unnamed_conv62_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2341_i_unnamed_conv62_shift_x_q <= leftShiftStage0_uid2336_i_unnamed_conv62_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2341_i_unnamed_conv62_shift_x_q <= leftShiftStage1Idx1_uid2339_i_unnamed_conv62_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2341_i_unnamed_conv62_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv61_vt_select_31(BITSELECT,781)@18
    i_unnamed_conv61_vt_select_31_b <= leftShiftStage1_uid2341_i_unnamed_conv62_shift_x_q(31 downto 9);

    -- redist4_i_unnamed_conv61_vt_select_31_b_1(DELAY,2644)
    redist4_i_unnamed_conv61_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv61_vt_select_31_b, xout => redist4_i_unnamed_conv61_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv61_vt_join(BITJOIN,780)@19
    i_unnamed_conv61_vt_join_q <= redist4_i_unnamed_conv61_vt_select_31_b_1_q & i_unnamed_conv185_vt_const_8_q;

    -- leftShiftStage0Idx1Rng8_uid2277_i_unnamed_conv54_shift_x(BITSELECT,2276)@17
    leftShiftStage0Idx1Rng8_uid2277_i_unnamed_conv54_shift_x_in <= i_mul10_masked15_conv_q(23 downto 0);
    leftShiftStage0Idx1Rng8_uid2277_i_unnamed_conv54_shift_x_b <= leftShiftStage0Idx1Rng8_uid2277_i_unnamed_conv54_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid2278_i_unnamed_conv54_shift_x(BITJOIN,2277)@17
    leftShiftStage0Idx1_uid2278_i_unnamed_conv54_shift_x_q <= leftShiftStage0Idx1Rng8_uid2277_i_unnamed_conv54_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage2Idx1Rng2_uid2240_i_unnamed_conv50_shift_x(BITSELECT,2239)@17
    leftShiftStage2Idx1Rng2_uid2240_i_unnamed_conv50_shift_x_in <= leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid2240_i_unnamed_conv50_shift_x_b <= leftShiftStage2Idx1Rng2_uid2240_i_unnamed_conv50_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid2241_i_unnamed_conv50_shift_x(BITJOIN,2240)@17
    leftShiftStage2Idx1_uid2241_i_unnamed_conv50_shift_x_q <= leftShiftStage2Idx1Rng2_uid2240_i_unnamed_conv50_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng8_uid2235_i_unnamed_conv50_shift_x(BITSELECT,2234)@17
    leftShiftStage1Idx1Rng8_uid2235_i_unnamed_conv50_shift_x_in <= leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid2235_i_unnamed_conv50_shift_x_b <= leftShiftStage1Idx1Rng8_uid2235_i_unnamed_conv50_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid2236_i_unnamed_conv50_shift_x(BITJOIN,2235)@17
    leftShiftStage1Idx1_uid2236_i_unnamed_conv50_shift_x_q <= leftShiftStage1Idx1Rng8_uid2235_i_unnamed_conv50_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid2230_i_unnamed_conv50_shift_x(BITSELECT,2229)@17
    leftShiftStage0Idx1Rng16_uid2230_i_unnamed_conv50_shift_x_in <= i_syncbuf_n_elem_sync_buffer85_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2230_i_unnamed_conv50_shift_x_b <= leftShiftStage0Idx1Rng16_uid2230_i_unnamed_conv50_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2231_i_unnamed_conv50_shift_x(BITJOIN,2230)@17
    leftShiftStage0Idx1_uid2231_i_unnamed_conv50_shift_x_q <= leftShiftStage0Idx1Rng16_uid2230_i_unnamed_conv50_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer85_conv(BLACKBOX,631)@0
    -- in in_i_dependence@17
    -- in in_valid_in@17
    -- out out_buffer_out@17
    -- out out_valid_out@17
    thei_syncbuf_n_elem_sync_buffer85_conv : i_syncbuf_n_elem_sync_buffer85_conv47
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist59_sync_in_aunroll_x_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer85_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid2233_i_unnamed_conv50_shift_x(MUX,2232)@17
    leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_s <= VCC_q;
    leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_combproc: PROCESS (leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_s, i_syncbuf_n_elem_sync_buffer85_conv_out_buffer_out, leftShiftStage0Idx1_uid2231_i_unnamed_conv50_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_q <= i_syncbuf_n_elem_sync_buffer85_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_q <= leftShiftStage0Idx1_uid2231_i_unnamed_conv50_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2238_i_unnamed_conv50_shift_x(MUX,2237)@17
    leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_s <= VCC_q;
    leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_combproc: PROCESS (leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_s, leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_q, leftShiftStage1Idx1_uid2236_i_unnamed_conv50_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_q <= leftShiftStage0_uid2233_i_unnamed_conv50_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_q <= leftShiftStage1Idx1_uid2236_i_unnamed_conv50_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2243_i_unnamed_conv50_shift_x(MUX,2242)@17
    leftShiftStage2_uid2243_i_unnamed_conv50_shift_x_s <= VCC_q;
    leftShiftStage2_uid2243_i_unnamed_conv50_shift_x_combproc: PROCESS (leftShiftStage2_uid2243_i_unnamed_conv50_shift_x_s, leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_q, leftShiftStage2Idx1_uid2241_i_unnamed_conv50_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2243_i_unnamed_conv50_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2243_i_unnamed_conv50_shift_x_q <= leftShiftStage1_uid2238_i_unnamed_conv50_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2243_i_unnamed_conv50_shift_x_q <= leftShiftStage2Idx1_uid2241_i_unnamed_conv50_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2243_i_unnamed_conv50_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv49_vt_select_31(BITSELECT,772)@17
    i_unnamed_conv49_vt_select_31_b <= leftShiftStage2_uid2243_i_unnamed_conv50_shift_x_q(31 downto 26);

    -- i_unnamed_conv49_vt_join(BITJOIN,771)@17
    i_unnamed_conv49_vt_join_q <= i_unnamed_conv49_vt_select_31_b & i_unnamed_conv197_vt_const_25_q;

    -- xMSB_uid2246_i_unnamed_conv52_shift_x(BITSELECT,2245)@17
    xMSB_uid2246_i_unnamed_conv52_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv49_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2268_i_unnamed_conv52_shift_x(BITSELECT,2267)@17
    rightShiftStage4Idx1Rng1_uid2268_i_unnamed_conv52_shift_x_b <= rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2269_i_unnamed_conv52_shift_x(BITJOIN,2268)@17
    rightShiftStage4Idx1_uid2269_i_unnamed_conv52_shift_x_q <= xMSB_uid2246_i_unnamed_conv52_shift_x_b & rightShiftStage4Idx1Rng1_uid2268_i_unnamed_conv52_shift_x_b;

    -- seMsb_to2_uid2263(BITSELECT,2262)@17
    seMsb_to2_uid2263_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2246_i_unnamed_conv52_shift_x_b(0)) & xMSB_uid2246_i_unnamed_conv52_shift_x_b));
    seMsb_to2_uid2263_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2263_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2264_i_unnamed_conv52_shift_x(BITSELECT,2263)@17
    rightShiftStage3Idx1Rng2_uid2264_i_unnamed_conv52_shift_x_b <= rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2265_i_unnamed_conv52_shift_x(BITJOIN,2264)@17
    rightShiftStage3Idx1_uid2265_i_unnamed_conv52_shift_x_q <= seMsb_to2_uid2263_b & rightShiftStage3Idx1Rng2_uid2264_i_unnamed_conv52_shift_x_b;

    -- seMsb_to4_uid2258(BITSELECT,2257)@17
    seMsb_to4_uid2258_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2246_i_unnamed_conv52_shift_x_b(0)) & xMSB_uid2246_i_unnamed_conv52_shift_x_b));
    seMsb_to4_uid2258_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2258_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2259_i_unnamed_conv52_shift_x(BITSELECT,2258)@17
    rightShiftStage2Idx1Rng4_uid2259_i_unnamed_conv52_shift_x_b <= rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2260_i_unnamed_conv52_shift_x(BITJOIN,2259)@17
    rightShiftStage2Idx1_uid2260_i_unnamed_conv52_shift_x_q <= seMsb_to4_uid2258_b & rightShiftStage2Idx1Rng4_uid2259_i_unnamed_conv52_shift_x_b;

    -- seMsb_to8_uid2253(BITSELECT,2252)@17
    seMsb_to8_uid2253_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2246_i_unnamed_conv52_shift_x_b(0)) & xMSB_uid2246_i_unnamed_conv52_shift_x_b));
    seMsb_to8_uid2253_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2253_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2254_i_unnamed_conv52_shift_x(BITSELECT,2253)@17
    rightShiftStage1Idx1Rng8_uid2254_i_unnamed_conv52_shift_x_b <= rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2255_i_unnamed_conv52_shift_x(BITJOIN,2254)@17
    rightShiftStage1Idx1_uid2255_i_unnamed_conv52_shift_x_q <= seMsb_to8_uid2253_b & rightShiftStage1Idx1Rng8_uid2254_i_unnamed_conv52_shift_x_b;

    -- seMsb_to16_uid2248(BITSELECT,2247)@17
    seMsb_to16_uid2248_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2246_i_unnamed_conv52_shift_x_b(0)) & xMSB_uid2246_i_unnamed_conv52_shift_x_b));
    seMsb_to16_uid2248_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2248_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2249_i_unnamed_conv52_shift_x(BITSELECT,2248)@17
    rightShiftStage0Idx1Rng16_uid2249_i_unnamed_conv52_shift_x_b <= i_unnamed_conv49_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2250_i_unnamed_conv52_shift_x(BITJOIN,2249)@17
    rightShiftStage0Idx1_uid2250_i_unnamed_conv52_shift_x_q <= seMsb_to16_uid2248_b & rightShiftStage0Idx1Rng16_uid2249_i_unnamed_conv52_shift_x_b;

    -- rightShiftStage0_uid2252_i_unnamed_conv52_shift_x(MUX,2251)@17
    rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_s <= VCC_q;
    rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_combproc: PROCESS (rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_s, i_unnamed_conv49_vt_join_q, rightShiftStage0Idx1_uid2250_i_unnamed_conv52_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_q <= i_unnamed_conv49_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_q <= rightShiftStage0Idx1_uid2250_i_unnamed_conv52_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2257_i_unnamed_conv52_shift_x(MUX,2256)@17
    rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_s <= VCC_q;
    rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_combproc: PROCESS (rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_s, rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_q, rightShiftStage1Idx1_uid2255_i_unnamed_conv52_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_q <= rightShiftStage0_uid2252_i_unnamed_conv52_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_q <= rightShiftStage1Idx1_uid2255_i_unnamed_conv52_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2262_i_unnamed_conv52_shift_x(MUX,2261)@17
    rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_s <= VCC_q;
    rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_combproc: PROCESS (rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_s, rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_q, rightShiftStage2Idx1_uid2260_i_unnamed_conv52_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_q <= rightShiftStage1_uid2257_i_unnamed_conv52_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_q <= rightShiftStage2Idx1_uid2260_i_unnamed_conv52_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2267_i_unnamed_conv52_shift_x(MUX,2266)@17
    rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_s <= VCC_q;
    rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_combproc: PROCESS (rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_s, rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_q, rightShiftStage3Idx1_uid2265_i_unnamed_conv52_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_q <= rightShiftStage2_uid2262_i_unnamed_conv52_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_q <= rightShiftStage3Idx1_uid2265_i_unnamed_conv52_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2271_i_unnamed_conv52_shift_x(MUX,2270)@17
    rightShiftStage4_uid2271_i_unnamed_conv52_shift_x_s <= VCC_q;
    rightShiftStage4_uid2271_i_unnamed_conv52_shift_x_combproc: PROCESS (rightShiftStage4_uid2271_i_unnamed_conv52_shift_x_s, rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_q, rightShiftStage4Idx1_uid2269_i_unnamed_conv52_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2271_i_unnamed_conv52_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2271_i_unnamed_conv52_shift_x_q <= rightShiftStage3_uid2267_i_unnamed_conv52_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2271_i_unnamed_conv52_shift_x_q <= rightShiftStage4Idx1_uid2269_i_unnamed_conv52_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2271_i_unnamed_conv52_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked15_conv(LOGICAL,577)@17
    i_mul10_masked15_conv_q <= rightShiftStage4_uid2271_i_unnamed_conv52_shift_x_q and redist39_sync_in_aunroll_x_in_c0_eni1_1_4_q;

    -- leftShiftStage0_uid2280_i_unnamed_conv54_shift_x(MUX,2279)@17
    leftShiftStage0_uid2280_i_unnamed_conv54_shift_x_s <= VCC_q;
    leftShiftStage0_uid2280_i_unnamed_conv54_shift_x_combproc: PROCESS (leftShiftStage0_uid2280_i_unnamed_conv54_shift_x_s, i_mul10_masked15_conv_q, leftShiftStage0Idx1_uid2278_i_unnamed_conv54_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2280_i_unnamed_conv54_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2280_i_unnamed_conv54_shift_x_q <= i_mul10_masked15_conv_q;
            WHEN "1" => leftShiftStage0_uid2280_i_unnamed_conv54_shift_x_q <= leftShiftStage0Idx1_uid2278_i_unnamed_conv54_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2280_i_unnamed_conv54_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv53_vt_select_31(BITSELECT,775)@17
    i_unnamed_conv53_vt_select_31_b <= leftShiftStage0_uid2280_i_unnamed_conv54_shift_x_q(31 downto 8);

    -- redist5_i_unnamed_conv53_vt_select_31_b_1(DELAY,2645)
    redist5_i_unnamed_conv53_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv53_vt_select_31_b, xout => redist5_i_unnamed_conv53_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv53_vt_join(BITJOIN,774)@18
    i_unnamed_conv53_vt_join_q <= redist5_i_unnamed_conv53_vt_select_31_b_1_q & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage2Idx1Rng1_uid2221_i_unnamed_conv46_shift_x(BITSELECT,2220)@16
    leftShiftStage2Idx1Rng1_uid2221_i_unnamed_conv46_shift_x_in <= leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid2221_i_unnamed_conv46_shift_x_b <= leftShiftStage2Idx1Rng1_uid2221_i_unnamed_conv46_shift_x_in(30 downto 0);

    -- leftShiftStage2Idx1_uid2222_i_unnamed_conv46_shift_x(BITJOIN,2221)@16
    leftShiftStage2Idx1_uid2222_i_unnamed_conv46_shift_x_q <= leftShiftStage2Idx1Rng1_uid2221_i_unnamed_conv46_shift_x_b & GND_q;

    -- leftShiftStage1Idx1Rng2_uid2216_i_unnamed_conv46_shift_x(BITSELECT,2215)@16
    leftShiftStage1Idx1Rng2_uid2216_i_unnamed_conv46_shift_x_in <= leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid2216_i_unnamed_conv46_shift_x_b <= leftShiftStage1Idx1Rng2_uid2216_i_unnamed_conv46_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid2217_i_unnamed_conv46_shift_x(BITJOIN,2216)@16
    leftShiftStage1Idx1_uid2217_i_unnamed_conv46_shift_x_q <= leftShiftStage1Idx1Rng2_uid2216_i_unnamed_conv46_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng4_uid2211_i_unnamed_conv46_shift_x(BITSELECT,2210)@16
    leftShiftStage0Idx1Rng4_uid2211_i_unnamed_conv46_shift_x_in <= i_mul10_masked13_conv_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid2211_i_unnamed_conv46_shift_x_b <= leftShiftStage0Idx1Rng4_uid2211_i_unnamed_conv46_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid2212_i_unnamed_conv46_shift_x(BITJOIN,2211)@16
    leftShiftStage0Idx1_uid2212_i_unnamed_conv46_shift_x_q <= leftShiftStage0Idx1Rng4_uid2211_i_unnamed_conv46_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage3Idx1Rng1_uid2174_i_unnamed_conv42_shift_x(BITSELECT,2173)@16
    leftShiftStage3Idx1Rng1_uid2174_i_unnamed_conv42_shift_x_in <= leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid2174_i_unnamed_conv42_shift_x_b <= leftShiftStage3Idx1Rng1_uid2174_i_unnamed_conv42_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid2175_i_unnamed_conv42_shift_x(BITJOIN,2174)@16
    leftShiftStage3Idx1_uid2175_i_unnamed_conv42_shift_x_q <= leftShiftStage3Idx1Rng1_uid2174_i_unnamed_conv42_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid2169_i_unnamed_conv42_shift_x(BITSELECT,2168)@16
    leftShiftStage2Idx1Rng2_uid2169_i_unnamed_conv42_shift_x_in <= leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_q(29 downto 0);
    leftShiftStage2Idx1Rng2_uid2169_i_unnamed_conv42_shift_x_b <= leftShiftStage2Idx1Rng2_uid2169_i_unnamed_conv42_shift_x_in(29 downto 0);

    -- leftShiftStage2Idx1_uid2170_i_unnamed_conv42_shift_x(BITJOIN,2169)@16
    leftShiftStage2Idx1_uid2170_i_unnamed_conv42_shift_x_q <= leftShiftStage2Idx1Rng2_uid2169_i_unnamed_conv42_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage1Idx1Rng8_uid2164_i_unnamed_conv42_shift_x(BITSELECT,2163)@16
    leftShiftStage1Idx1Rng8_uid2164_i_unnamed_conv42_shift_x_in <= leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid2164_i_unnamed_conv42_shift_x_b <= leftShiftStage1Idx1Rng8_uid2164_i_unnamed_conv42_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid2165_i_unnamed_conv42_shift_x(BITJOIN,2164)@16
    leftShiftStage1Idx1_uid2165_i_unnamed_conv42_shift_x_q <= leftShiftStage1Idx1Rng8_uid2164_i_unnamed_conv42_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid2159_i_unnamed_conv42_shift_x(BITSELECT,2158)@16
    leftShiftStage0Idx1Rng16_uid2159_i_unnamed_conv42_shift_x_in <= i_syncbuf_n_elem_sync_buffer86_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2159_i_unnamed_conv42_shift_x_b <= leftShiftStage0Idx1Rng16_uid2159_i_unnamed_conv42_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2160_i_unnamed_conv42_shift_x(BITJOIN,2159)@16
    leftShiftStage0Idx1_uid2160_i_unnamed_conv42_shift_x_q <= leftShiftStage0Idx1Rng16_uid2159_i_unnamed_conv42_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer86_conv(BLACKBOX,632)@0
    -- in in_i_dependence@16
    -- in in_valid_in@16
    -- out out_buffer_out@16
    -- out out_valid_out@16
    thei_syncbuf_n_elem_sync_buffer86_conv : i_syncbuf_n_elem_sync_buffer86_conv39
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist58_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer86_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid2162_i_unnamed_conv42_shift_x(MUX,2161)@16
    leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_s <= VCC_q;
    leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_combproc: PROCESS (leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_s, i_syncbuf_n_elem_sync_buffer86_conv_out_buffer_out, leftShiftStage0Idx1_uid2160_i_unnamed_conv42_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_q <= i_syncbuf_n_elem_sync_buffer86_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_q <= leftShiftStage0Idx1_uid2160_i_unnamed_conv42_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2167_i_unnamed_conv42_shift_x(MUX,2166)@16
    leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_s <= VCC_q;
    leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_combproc: PROCESS (leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_s, leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_q, leftShiftStage1Idx1_uid2165_i_unnamed_conv42_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_q <= leftShiftStage0_uid2162_i_unnamed_conv42_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_q <= leftShiftStage1Idx1_uid2165_i_unnamed_conv42_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2172_i_unnamed_conv42_shift_x(MUX,2171)@16
    leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_s <= VCC_q;
    leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_combproc: PROCESS (leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_s, leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_q, leftShiftStage2Idx1_uid2170_i_unnamed_conv42_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_q <= leftShiftStage1_uid2167_i_unnamed_conv42_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_q <= leftShiftStage2Idx1_uid2170_i_unnamed_conv42_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid2177_i_unnamed_conv42_shift_x(MUX,2176)@16
    leftShiftStage3_uid2177_i_unnamed_conv42_shift_x_s <= VCC_q;
    leftShiftStage3_uid2177_i_unnamed_conv42_shift_x_combproc: PROCESS (leftShiftStage3_uid2177_i_unnamed_conv42_shift_x_s, leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_q, leftShiftStage3Idx1_uid2175_i_unnamed_conv42_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid2177_i_unnamed_conv42_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid2177_i_unnamed_conv42_shift_x_q <= leftShiftStage2_uid2172_i_unnamed_conv42_shift_x_q;
            WHEN "1" => leftShiftStage3_uid2177_i_unnamed_conv42_shift_x_q <= leftShiftStage3Idx1_uid2175_i_unnamed_conv42_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid2177_i_unnamed_conv42_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv41_vt_select_31(BITSELECT,766)@16
    i_unnamed_conv41_vt_select_31_b <= leftShiftStage3_uid2177_i_unnamed_conv42_shift_x_q(31 downto 27);

    -- i_unnamed_conv41_vt_join(BITJOIN,765)@16
    i_unnamed_conv41_vt_join_q <= i_unnamed_conv41_vt_select_31_b & i_unnamed_conv205_vt_const_26_q;

    -- xMSB_uid2180_i_unnamed_conv44_shift_x(BITSELECT,2179)@16
    xMSB_uid2180_i_unnamed_conv44_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv41_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2202_i_unnamed_conv44_shift_x(BITSELECT,2201)@16
    rightShiftStage4Idx1Rng1_uid2202_i_unnamed_conv44_shift_x_b <= rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2203_i_unnamed_conv44_shift_x(BITJOIN,2202)@16
    rightShiftStage4Idx1_uid2203_i_unnamed_conv44_shift_x_q <= xMSB_uid2180_i_unnamed_conv44_shift_x_b & rightShiftStage4Idx1Rng1_uid2202_i_unnamed_conv44_shift_x_b;

    -- seMsb_to2_uid2197(BITSELECT,2196)@16
    seMsb_to2_uid2197_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2180_i_unnamed_conv44_shift_x_b(0)) & xMSB_uid2180_i_unnamed_conv44_shift_x_b));
    seMsb_to2_uid2197_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2197_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2198_i_unnamed_conv44_shift_x(BITSELECT,2197)@16
    rightShiftStage3Idx1Rng2_uid2198_i_unnamed_conv44_shift_x_b <= rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2199_i_unnamed_conv44_shift_x(BITJOIN,2198)@16
    rightShiftStage3Idx1_uid2199_i_unnamed_conv44_shift_x_q <= seMsb_to2_uid2197_b & rightShiftStage3Idx1Rng2_uid2198_i_unnamed_conv44_shift_x_b;

    -- seMsb_to4_uid2192(BITSELECT,2191)@16
    seMsb_to4_uid2192_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2180_i_unnamed_conv44_shift_x_b(0)) & xMSB_uid2180_i_unnamed_conv44_shift_x_b));
    seMsb_to4_uid2192_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2192_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2193_i_unnamed_conv44_shift_x(BITSELECT,2192)@16
    rightShiftStage2Idx1Rng4_uid2193_i_unnamed_conv44_shift_x_b <= rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2194_i_unnamed_conv44_shift_x(BITJOIN,2193)@16
    rightShiftStage2Idx1_uid2194_i_unnamed_conv44_shift_x_q <= seMsb_to4_uid2192_b & rightShiftStage2Idx1Rng4_uid2193_i_unnamed_conv44_shift_x_b;

    -- seMsb_to8_uid2187(BITSELECT,2186)@16
    seMsb_to8_uid2187_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2180_i_unnamed_conv44_shift_x_b(0)) & xMSB_uid2180_i_unnamed_conv44_shift_x_b));
    seMsb_to8_uid2187_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2187_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2188_i_unnamed_conv44_shift_x(BITSELECT,2187)@16
    rightShiftStage1Idx1Rng8_uid2188_i_unnamed_conv44_shift_x_b <= rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2189_i_unnamed_conv44_shift_x(BITJOIN,2188)@16
    rightShiftStage1Idx1_uid2189_i_unnamed_conv44_shift_x_q <= seMsb_to8_uid2187_b & rightShiftStage1Idx1Rng8_uid2188_i_unnamed_conv44_shift_x_b;

    -- seMsb_to16_uid2182(BITSELECT,2181)@16
    seMsb_to16_uid2182_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2180_i_unnamed_conv44_shift_x_b(0)) & xMSB_uid2180_i_unnamed_conv44_shift_x_b));
    seMsb_to16_uid2182_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2182_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2183_i_unnamed_conv44_shift_x(BITSELECT,2182)@16
    rightShiftStage0Idx1Rng16_uid2183_i_unnamed_conv44_shift_x_b <= i_unnamed_conv41_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2184_i_unnamed_conv44_shift_x(BITJOIN,2183)@16
    rightShiftStage0Idx1_uid2184_i_unnamed_conv44_shift_x_q <= seMsb_to16_uid2182_b & rightShiftStage0Idx1Rng16_uid2183_i_unnamed_conv44_shift_x_b;

    -- rightShiftStage0_uid2186_i_unnamed_conv44_shift_x(MUX,2185)@16
    rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_s <= VCC_q;
    rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_combproc: PROCESS (rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_s, i_unnamed_conv41_vt_join_q, rightShiftStage0Idx1_uid2184_i_unnamed_conv44_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_q <= i_unnamed_conv41_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_q <= rightShiftStage0Idx1_uid2184_i_unnamed_conv44_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2191_i_unnamed_conv44_shift_x(MUX,2190)@16
    rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_s <= VCC_q;
    rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_combproc: PROCESS (rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_s, rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_q, rightShiftStage1Idx1_uid2189_i_unnamed_conv44_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_q <= rightShiftStage0_uid2186_i_unnamed_conv44_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_q <= rightShiftStage1Idx1_uid2189_i_unnamed_conv44_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2196_i_unnamed_conv44_shift_x(MUX,2195)@16
    rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_s <= VCC_q;
    rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_combproc: PROCESS (rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_s, rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_q, rightShiftStage2Idx1_uid2194_i_unnamed_conv44_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_q <= rightShiftStage1_uid2191_i_unnamed_conv44_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_q <= rightShiftStage2Idx1_uid2194_i_unnamed_conv44_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2201_i_unnamed_conv44_shift_x(MUX,2200)@16
    rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_s <= VCC_q;
    rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_combproc: PROCESS (rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_s, rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_q, rightShiftStage3Idx1_uid2199_i_unnamed_conv44_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_q <= rightShiftStage2_uid2196_i_unnamed_conv44_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_q <= rightShiftStage3Idx1_uid2199_i_unnamed_conv44_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2205_i_unnamed_conv44_shift_x(MUX,2204)@16
    rightShiftStage4_uid2205_i_unnamed_conv44_shift_x_s <= VCC_q;
    rightShiftStage4_uid2205_i_unnamed_conv44_shift_x_combproc: PROCESS (rightShiftStage4_uid2205_i_unnamed_conv44_shift_x_s, rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_q, rightShiftStage4Idx1_uid2203_i_unnamed_conv44_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2205_i_unnamed_conv44_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2205_i_unnamed_conv44_shift_x_q <= rightShiftStage3_uid2201_i_unnamed_conv44_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2205_i_unnamed_conv44_shift_x_q <= rightShiftStage4Idx1_uid2203_i_unnamed_conv44_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2205_i_unnamed_conv44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked13_conv(LOGICAL,576)@16
    i_mul10_masked13_conv_q <= rightShiftStage4_uid2205_i_unnamed_conv44_shift_x_q and redist38_sync_in_aunroll_x_in_c0_eni1_1_3_q;

    -- leftShiftStage0_uid2214_i_unnamed_conv46_shift_x(MUX,2213)@16
    leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_s <= VCC_q;
    leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_combproc: PROCESS (leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_s, i_mul10_masked13_conv_q, leftShiftStage0Idx1_uid2212_i_unnamed_conv46_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_q <= i_mul10_masked13_conv_q;
            WHEN "1" => leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_q <= leftShiftStage0Idx1_uid2212_i_unnamed_conv46_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2219_i_unnamed_conv46_shift_x(MUX,2218)@16
    leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_s <= VCC_q;
    leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_combproc: PROCESS (leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_s, leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_q, leftShiftStage1Idx1_uid2217_i_unnamed_conv46_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_q <= leftShiftStage0_uid2214_i_unnamed_conv46_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_q <= leftShiftStage1Idx1_uid2217_i_unnamed_conv46_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2224_i_unnamed_conv46_shift_x(MUX,2223)@16
    leftShiftStage2_uid2224_i_unnamed_conv46_shift_x_s <= VCC_q;
    leftShiftStage2_uid2224_i_unnamed_conv46_shift_x_combproc: PROCESS (leftShiftStage2_uid2224_i_unnamed_conv46_shift_x_s, leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_q, leftShiftStage2Idx1_uid2222_i_unnamed_conv46_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2224_i_unnamed_conv46_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2224_i_unnamed_conv46_shift_x_q <= leftShiftStage1_uid2219_i_unnamed_conv46_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2224_i_unnamed_conv46_shift_x_q <= leftShiftStage2Idx1_uid2222_i_unnamed_conv46_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2224_i_unnamed_conv46_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv45_vt_select_31(BITSELECT,769)@16
    i_unnamed_conv45_vt_select_31_b <= leftShiftStage2_uid2224_i_unnamed_conv46_shift_x_q(31 downto 7);

    -- redist6_i_unnamed_conv45_vt_select_31_b_1(DELAY,2646)
    redist6_i_unnamed_conv45_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 25, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv45_vt_select_31_b, xout => redist6_i_unnamed_conv45_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv45_vt_join(BITJOIN,768)@17
    i_unnamed_conv45_vt_join_q <= redist6_i_unnamed_conv45_vt_select_31_b_1_q & i_unnamed_conv201_vt_const_6_q;

    -- leftShiftStage1Idx1Rng2_uid2150_i_unnamed_conv38_shift_x(BITSELECT,2149)@15
    leftShiftStage1Idx1Rng2_uid2150_i_unnamed_conv38_shift_x_in <= leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_q(29 downto 0);
    leftShiftStage1Idx1Rng2_uid2150_i_unnamed_conv38_shift_x_b <= leftShiftStage1Idx1Rng2_uid2150_i_unnamed_conv38_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx1_uid2151_i_unnamed_conv38_shift_x(BITJOIN,2150)@15
    leftShiftStage1Idx1_uid2151_i_unnamed_conv38_shift_x_q <= leftShiftStage1Idx1Rng2_uid2150_i_unnamed_conv38_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage0Idx1Rng4_uid2145_i_unnamed_conv38_shift_x(BITSELECT,2144)@15
    leftShiftStage0Idx1Rng4_uid2145_i_unnamed_conv38_shift_x_in <= i_mul10_masked11_conv_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid2145_i_unnamed_conv38_shift_x_b <= leftShiftStage0Idx1Rng4_uid2145_i_unnamed_conv38_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid2146_i_unnamed_conv38_shift_x(BITJOIN,2145)@15
    leftShiftStage0Idx1_uid2146_i_unnamed_conv38_shift_x_q <= leftShiftStage0Idx1Rng4_uid2145_i_unnamed_conv38_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage2Idx1Rng4_uid2108_i_unnamed_conv34_shift_x(BITSELECT,2107)@15
    leftShiftStage2Idx1Rng4_uid2108_i_unnamed_conv34_shift_x_in <= leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid2108_i_unnamed_conv34_shift_x_b <= leftShiftStage2Idx1Rng4_uid2108_i_unnamed_conv34_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid2109_i_unnamed_conv34_shift_x(BITJOIN,2108)@15
    leftShiftStage2Idx1_uid2109_i_unnamed_conv34_shift_x_q <= leftShiftStage2Idx1Rng4_uid2108_i_unnamed_conv34_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid2103_i_unnamed_conv34_shift_x(BITSELECT,2102)@15
    leftShiftStage1Idx1Rng8_uid2103_i_unnamed_conv34_shift_x_in <= leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid2103_i_unnamed_conv34_shift_x_b <= leftShiftStage1Idx1Rng8_uid2103_i_unnamed_conv34_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid2104_i_unnamed_conv34_shift_x(BITJOIN,2103)@15
    leftShiftStage1Idx1_uid2104_i_unnamed_conv34_shift_x_q <= leftShiftStage1Idx1Rng8_uid2103_i_unnamed_conv34_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid2098_i_unnamed_conv34_shift_x(BITSELECT,2097)@15
    leftShiftStage0Idx1Rng16_uid2098_i_unnamed_conv34_shift_x_in <= i_syncbuf_n_elem_sync_buffer87_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2098_i_unnamed_conv34_shift_x_b <= leftShiftStage0Idx1Rng16_uid2098_i_unnamed_conv34_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2099_i_unnamed_conv34_shift_x(BITJOIN,2098)@15
    leftShiftStage0Idx1_uid2099_i_unnamed_conv34_shift_x_q <= leftShiftStage0Idx1Rng16_uid2098_i_unnamed_conv34_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer87_conv(BLACKBOX,633)@0
    -- in in_i_dependence@15
    -- in in_valid_in@15
    -- out out_buffer_out@15
    -- out out_valid_out@15
    thei_syncbuf_n_elem_sync_buffer87_conv : i_syncbuf_n_elem_sync_buffer87_conv31
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist57_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer87_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid2101_i_unnamed_conv34_shift_x(MUX,2100)@15
    leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_s <= VCC_q;
    leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_combproc: PROCESS (leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_s, i_syncbuf_n_elem_sync_buffer87_conv_out_buffer_out, leftShiftStage0Idx1_uid2099_i_unnamed_conv34_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_q <= i_syncbuf_n_elem_sync_buffer87_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_q <= leftShiftStage0Idx1_uid2099_i_unnamed_conv34_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2106_i_unnamed_conv34_shift_x(MUX,2105)@15
    leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_s <= VCC_q;
    leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_combproc: PROCESS (leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_s, leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_q, leftShiftStage1Idx1_uid2104_i_unnamed_conv34_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_q <= leftShiftStage0_uid2101_i_unnamed_conv34_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_q <= leftShiftStage1Idx1_uid2104_i_unnamed_conv34_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2111_i_unnamed_conv34_shift_x(MUX,2110)@15
    leftShiftStage2_uid2111_i_unnamed_conv34_shift_x_s <= VCC_q;
    leftShiftStage2_uid2111_i_unnamed_conv34_shift_x_combproc: PROCESS (leftShiftStage2_uid2111_i_unnamed_conv34_shift_x_s, leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_q, leftShiftStage2Idx1_uid2109_i_unnamed_conv34_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2111_i_unnamed_conv34_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2111_i_unnamed_conv34_shift_x_q <= leftShiftStage1_uid2106_i_unnamed_conv34_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2111_i_unnamed_conv34_shift_x_q <= leftShiftStage2Idx1_uid2109_i_unnamed_conv34_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2111_i_unnamed_conv34_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv33_vt_select_31(BITSELECT,760)@15
    i_unnamed_conv33_vt_select_31_b <= leftShiftStage2_uid2111_i_unnamed_conv34_shift_x_q(31 downto 28);

    -- i_unnamed_conv33_vt_join(BITJOIN,759)@15
    i_unnamed_conv33_vt_join_q <= i_unnamed_conv33_vt_select_31_b & i_unnamed_conv213_vt_const_27_q;

    -- xMSB_uid2114_i_unnamed_conv36_shift_x(BITSELECT,2113)@15
    xMSB_uid2114_i_unnamed_conv36_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv33_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2136_i_unnamed_conv36_shift_x(BITSELECT,2135)@15
    rightShiftStage4Idx1Rng1_uid2136_i_unnamed_conv36_shift_x_b <= rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2137_i_unnamed_conv36_shift_x(BITJOIN,2136)@15
    rightShiftStage4Idx1_uid2137_i_unnamed_conv36_shift_x_q <= xMSB_uid2114_i_unnamed_conv36_shift_x_b & rightShiftStage4Idx1Rng1_uid2136_i_unnamed_conv36_shift_x_b;

    -- seMsb_to2_uid2131(BITSELECT,2130)@15
    seMsb_to2_uid2131_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2114_i_unnamed_conv36_shift_x_b(0)) & xMSB_uid2114_i_unnamed_conv36_shift_x_b));
    seMsb_to2_uid2131_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2131_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2132_i_unnamed_conv36_shift_x(BITSELECT,2131)@15
    rightShiftStage3Idx1Rng2_uid2132_i_unnamed_conv36_shift_x_b <= rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2133_i_unnamed_conv36_shift_x(BITJOIN,2132)@15
    rightShiftStage3Idx1_uid2133_i_unnamed_conv36_shift_x_q <= seMsb_to2_uid2131_b & rightShiftStage3Idx1Rng2_uid2132_i_unnamed_conv36_shift_x_b;

    -- seMsb_to4_uid2126(BITSELECT,2125)@15
    seMsb_to4_uid2126_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2114_i_unnamed_conv36_shift_x_b(0)) & xMSB_uid2114_i_unnamed_conv36_shift_x_b));
    seMsb_to4_uid2126_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2126_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2127_i_unnamed_conv36_shift_x(BITSELECT,2126)@15
    rightShiftStage2Idx1Rng4_uid2127_i_unnamed_conv36_shift_x_b <= rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2128_i_unnamed_conv36_shift_x(BITJOIN,2127)@15
    rightShiftStage2Idx1_uid2128_i_unnamed_conv36_shift_x_q <= seMsb_to4_uid2126_b & rightShiftStage2Idx1Rng4_uid2127_i_unnamed_conv36_shift_x_b;

    -- seMsb_to8_uid2121(BITSELECT,2120)@15
    seMsb_to8_uid2121_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2114_i_unnamed_conv36_shift_x_b(0)) & xMSB_uid2114_i_unnamed_conv36_shift_x_b));
    seMsb_to8_uid2121_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2121_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2122_i_unnamed_conv36_shift_x(BITSELECT,2121)@15
    rightShiftStage1Idx1Rng8_uid2122_i_unnamed_conv36_shift_x_b <= rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2123_i_unnamed_conv36_shift_x(BITJOIN,2122)@15
    rightShiftStage1Idx1_uid2123_i_unnamed_conv36_shift_x_q <= seMsb_to8_uid2121_b & rightShiftStage1Idx1Rng8_uid2122_i_unnamed_conv36_shift_x_b;

    -- seMsb_to16_uid2116(BITSELECT,2115)@15
    seMsb_to16_uid2116_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2114_i_unnamed_conv36_shift_x_b(0)) & xMSB_uid2114_i_unnamed_conv36_shift_x_b));
    seMsb_to16_uid2116_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2116_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2117_i_unnamed_conv36_shift_x(BITSELECT,2116)@15
    rightShiftStage0Idx1Rng16_uid2117_i_unnamed_conv36_shift_x_b <= i_unnamed_conv33_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2118_i_unnamed_conv36_shift_x(BITJOIN,2117)@15
    rightShiftStage0Idx1_uid2118_i_unnamed_conv36_shift_x_q <= seMsb_to16_uid2116_b & rightShiftStage0Idx1Rng16_uid2117_i_unnamed_conv36_shift_x_b;

    -- rightShiftStage0_uid2120_i_unnamed_conv36_shift_x(MUX,2119)@15
    rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_s <= VCC_q;
    rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_combproc: PROCESS (rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_s, i_unnamed_conv33_vt_join_q, rightShiftStage0Idx1_uid2118_i_unnamed_conv36_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_q <= i_unnamed_conv33_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_q <= rightShiftStage0Idx1_uid2118_i_unnamed_conv36_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2125_i_unnamed_conv36_shift_x(MUX,2124)@15
    rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_s <= VCC_q;
    rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_combproc: PROCESS (rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_s, rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_q, rightShiftStage1Idx1_uid2123_i_unnamed_conv36_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_q <= rightShiftStage0_uid2120_i_unnamed_conv36_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_q <= rightShiftStage1Idx1_uid2123_i_unnamed_conv36_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2130_i_unnamed_conv36_shift_x(MUX,2129)@15
    rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_s <= VCC_q;
    rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_combproc: PROCESS (rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_s, rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_q, rightShiftStage2Idx1_uid2128_i_unnamed_conv36_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_q <= rightShiftStage1_uid2125_i_unnamed_conv36_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_q <= rightShiftStage2Idx1_uid2128_i_unnamed_conv36_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2135_i_unnamed_conv36_shift_x(MUX,2134)@15
    rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_s <= VCC_q;
    rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_combproc: PROCESS (rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_s, rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_q, rightShiftStage3Idx1_uid2133_i_unnamed_conv36_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_q <= rightShiftStage2_uid2130_i_unnamed_conv36_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_q <= rightShiftStage3Idx1_uid2133_i_unnamed_conv36_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2139_i_unnamed_conv36_shift_x(MUX,2138)@15
    rightShiftStage4_uid2139_i_unnamed_conv36_shift_x_s <= VCC_q;
    rightShiftStage4_uid2139_i_unnamed_conv36_shift_x_combproc: PROCESS (rightShiftStage4_uid2139_i_unnamed_conv36_shift_x_s, rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_q, rightShiftStage4Idx1_uid2137_i_unnamed_conv36_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2139_i_unnamed_conv36_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2139_i_unnamed_conv36_shift_x_q <= rightShiftStage3_uid2135_i_unnamed_conv36_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2139_i_unnamed_conv36_shift_x_q <= rightShiftStage4Idx1_uid2137_i_unnamed_conv36_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2139_i_unnamed_conv36_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked11_conv(LOGICAL,575)@15
    i_mul10_masked11_conv_q <= rightShiftStage4_uid2139_i_unnamed_conv36_shift_x_q and redist37_sync_in_aunroll_x_in_c0_eni1_1_2_q;

    -- leftShiftStage0_uid2148_i_unnamed_conv38_shift_x(MUX,2147)@15
    leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_s <= VCC_q;
    leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_combproc: PROCESS (leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_s, i_mul10_masked11_conv_q, leftShiftStage0Idx1_uid2146_i_unnamed_conv38_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_q <= i_mul10_masked11_conv_q;
            WHEN "1" => leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_q <= leftShiftStage0Idx1_uid2146_i_unnamed_conv38_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2153_i_unnamed_conv38_shift_x(MUX,2152)@15
    leftShiftStage1_uid2153_i_unnamed_conv38_shift_x_s <= VCC_q;
    leftShiftStage1_uid2153_i_unnamed_conv38_shift_x_combproc: PROCESS (leftShiftStage1_uid2153_i_unnamed_conv38_shift_x_s, leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_q, leftShiftStage1Idx1_uid2151_i_unnamed_conv38_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2153_i_unnamed_conv38_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2153_i_unnamed_conv38_shift_x_q <= leftShiftStage0_uid2148_i_unnamed_conv38_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2153_i_unnamed_conv38_shift_x_q <= leftShiftStage1Idx1_uid2151_i_unnamed_conv38_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2153_i_unnamed_conv38_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv37_vt_select_31(BITSELECT,763)@15
    i_unnamed_conv37_vt_select_31_b <= leftShiftStage1_uid2153_i_unnamed_conv38_shift_x_q(31 downto 6);

    -- redist7_i_unnamed_conv37_vt_select_31_b_1(DELAY,2647)
    redist7_i_unnamed_conv37_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv37_vt_select_31_b, xout => redist7_i_unnamed_conv37_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv37_vt_join(BITJOIN,762)@16
    i_unnamed_conv37_vt_join_q <= redist7_i_unnamed_conv37_vt_select_31_b_1_q & i_unnamed_conv209_vt_const_5_q;

    -- leftShiftStage1Idx1Rng1_uid2089_i_unnamed_conv30_shift_x(BITSELECT,2088)@14
    leftShiftStage1Idx1Rng1_uid2089_i_unnamed_conv30_shift_x_in <= leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid2089_i_unnamed_conv30_shift_x_b <= leftShiftStage1Idx1Rng1_uid2089_i_unnamed_conv30_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid2090_i_unnamed_conv30_shift_x(BITJOIN,2089)@14
    leftShiftStage1Idx1_uid2090_i_unnamed_conv30_shift_x_q <= leftShiftStage1Idx1Rng1_uid2089_i_unnamed_conv30_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng4_uid2084_i_unnamed_conv30_shift_x(BITSELECT,2083)@14
    leftShiftStage0Idx1Rng4_uid2084_i_unnamed_conv30_shift_x_in <= i_mul10_masked9_conv_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid2084_i_unnamed_conv30_shift_x_b <= leftShiftStage0Idx1Rng4_uid2084_i_unnamed_conv30_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid2085_i_unnamed_conv30_shift_x(BITJOIN,2084)@14
    leftShiftStage0Idx1_uid2085_i_unnamed_conv30_shift_x_q <= leftShiftStage0Idx1Rng4_uid2084_i_unnamed_conv30_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage3Idx1Rng1_uid2047_i_unnamed_conv26_shift_x(BITSELECT,2046)@14
    leftShiftStage3Idx1Rng1_uid2047_i_unnamed_conv26_shift_x_in <= leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_q(30 downto 0);
    leftShiftStage3Idx1Rng1_uid2047_i_unnamed_conv26_shift_x_b <= leftShiftStage3Idx1Rng1_uid2047_i_unnamed_conv26_shift_x_in(30 downto 0);

    -- leftShiftStage3Idx1_uid2048_i_unnamed_conv26_shift_x(BITJOIN,2047)@14
    leftShiftStage3Idx1_uid2048_i_unnamed_conv26_shift_x_q <= leftShiftStage3Idx1Rng1_uid2047_i_unnamed_conv26_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng4_uid2042_i_unnamed_conv26_shift_x(BITSELECT,2041)@14
    leftShiftStage2Idx1Rng4_uid2042_i_unnamed_conv26_shift_x_in <= leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid2042_i_unnamed_conv26_shift_x_b <= leftShiftStage2Idx1Rng4_uid2042_i_unnamed_conv26_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid2043_i_unnamed_conv26_shift_x(BITJOIN,2042)@14
    leftShiftStage2Idx1_uid2043_i_unnamed_conv26_shift_x_q <= leftShiftStage2Idx1Rng4_uid2042_i_unnamed_conv26_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid2037_i_unnamed_conv26_shift_x(BITSELECT,2036)@14
    leftShiftStage1Idx1Rng8_uid2037_i_unnamed_conv26_shift_x_in <= leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid2037_i_unnamed_conv26_shift_x_b <= leftShiftStage1Idx1Rng8_uid2037_i_unnamed_conv26_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid2038_i_unnamed_conv26_shift_x(BITJOIN,2037)@14
    leftShiftStage1Idx1_uid2038_i_unnamed_conv26_shift_x_q <= leftShiftStage1Idx1Rng8_uid2037_i_unnamed_conv26_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid2032_i_unnamed_conv26_shift_x(BITSELECT,2031)@14
    leftShiftStage0Idx1Rng16_uid2032_i_unnamed_conv26_shift_x_in <= i_syncbuf_n_elem_sync_buffer88_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid2032_i_unnamed_conv26_shift_x_b <= leftShiftStage0Idx1Rng16_uid2032_i_unnamed_conv26_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid2033_i_unnamed_conv26_shift_x(BITJOIN,2032)@14
    leftShiftStage0Idx1_uid2033_i_unnamed_conv26_shift_x_q <= leftShiftStage0Idx1Rng16_uid2032_i_unnamed_conv26_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer88_conv(BLACKBOX,634)@0
    -- in in_i_dependence@14
    -- in in_valid_in@14
    -- out out_buffer_out@14
    -- out out_valid_out@14
    thei_syncbuf_n_elem_sync_buffer88_conv : i_syncbuf_n_elem_sync_buffer88_conv23
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist56_sync_in_aunroll_x_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer88_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid2035_i_unnamed_conv26_shift_x(MUX,2034)@14
    leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_s <= VCC_q;
    leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_combproc: PROCESS (leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_s, i_syncbuf_n_elem_sync_buffer88_conv_out_buffer_out, leftShiftStage0Idx1_uid2033_i_unnamed_conv26_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_q <= i_syncbuf_n_elem_sync_buffer88_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_q <= leftShiftStage0Idx1_uid2033_i_unnamed_conv26_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2040_i_unnamed_conv26_shift_x(MUX,2039)@14
    leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_s <= VCC_q;
    leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_combproc: PROCESS (leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_s, leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_q, leftShiftStage1Idx1_uid2038_i_unnamed_conv26_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_q <= leftShiftStage0_uid2035_i_unnamed_conv26_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_q <= leftShiftStage1Idx1_uid2038_i_unnamed_conv26_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid2045_i_unnamed_conv26_shift_x(MUX,2044)@14
    leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_s <= VCC_q;
    leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_combproc: PROCESS (leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_s, leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_q, leftShiftStage2Idx1_uid2043_i_unnamed_conv26_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_q <= leftShiftStage1_uid2040_i_unnamed_conv26_shift_x_q;
            WHEN "1" => leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_q <= leftShiftStage2Idx1_uid2043_i_unnamed_conv26_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid2050_i_unnamed_conv26_shift_x(MUX,2049)@14
    leftShiftStage3_uid2050_i_unnamed_conv26_shift_x_s <= VCC_q;
    leftShiftStage3_uid2050_i_unnamed_conv26_shift_x_combproc: PROCESS (leftShiftStage3_uid2050_i_unnamed_conv26_shift_x_s, leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_q, leftShiftStage3Idx1_uid2048_i_unnamed_conv26_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid2050_i_unnamed_conv26_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid2050_i_unnamed_conv26_shift_x_q <= leftShiftStage2_uid2045_i_unnamed_conv26_shift_x_q;
            WHEN "1" => leftShiftStage3_uid2050_i_unnamed_conv26_shift_x_q <= leftShiftStage3Idx1_uid2048_i_unnamed_conv26_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid2050_i_unnamed_conv26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv25_vt_select_31(BITSELECT,754)@14
    i_unnamed_conv25_vt_select_31_b <= leftShiftStage3_uid2050_i_unnamed_conv26_shift_x_q(31 downto 29);

    -- i_unnamed_conv25_vt_join(BITJOIN,753)@14
    i_unnamed_conv25_vt_join_q <= i_unnamed_conv25_vt_select_31_b & i_unnamed_conv221_vt_const_28_q;

    -- xMSB_uid2053_i_unnamed_conv28_shift_x(BITSELECT,2052)@14
    xMSB_uid2053_i_unnamed_conv28_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv25_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid2075_i_unnamed_conv28_shift_x(BITSELECT,2074)@14
    rightShiftStage4Idx1Rng1_uid2075_i_unnamed_conv28_shift_x_b <= rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid2076_i_unnamed_conv28_shift_x(BITJOIN,2075)@14
    rightShiftStage4Idx1_uid2076_i_unnamed_conv28_shift_x_q <= xMSB_uid2053_i_unnamed_conv28_shift_x_b & rightShiftStage4Idx1Rng1_uid2075_i_unnamed_conv28_shift_x_b;

    -- seMsb_to2_uid2070(BITSELECT,2069)@14
    seMsb_to2_uid2070_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid2053_i_unnamed_conv28_shift_x_b(0)) & xMSB_uid2053_i_unnamed_conv28_shift_x_b));
    seMsb_to2_uid2070_b <= STD_LOGIC_VECTOR(seMsb_to2_uid2070_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid2071_i_unnamed_conv28_shift_x(BITSELECT,2070)@14
    rightShiftStage3Idx1Rng2_uid2071_i_unnamed_conv28_shift_x_b <= rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid2072_i_unnamed_conv28_shift_x(BITJOIN,2071)@14
    rightShiftStage3Idx1_uid2072_i_unnamed_conv28_shift_x_q <= seMsb_to2_uid2070_b & rightShiftStage3Idx1Rng2_uid2071_i_unnamed_conv28_shift_x_b;

    -- seMsb_to4_uid2065(BITSELECT,2064)@14
    seMsb_to4_uid2065_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid2053_i_unnamed_conv28_shift_x_b(0)) & xMSB_uid2053_i_unnamed_conv28_shift_x_b));
    seMsb_to4_uid2065_b <= STD_LOGIC_VECTOR(seMsb_to4_uid2065_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid2066_i_unnamed_conv28_shift_x(BITSELECT,2065)@14
    rightShiftStage2Idx1Rng4_uid2066_i_unnamed_conv28_shift_x_b <= rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid2067_i_unnamed_conv28_shift_x(BITJOIN,2066)@14
    rightShiftStage2Idx1_uid2067_i_unnamed_conv28_shift_x_q <= seMsb_to4_uid2065_b & rightShiftStage2Idx1Rng4_uid2066_i_unnamed_conv28_shift_x_b;

    -- seMsb_to8_uid2060(BITSELECT,2059)@14
    seMsb_to8_uid2060_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid2053_i_unnamed_conv28_shift_x_b(0)) & xMSB_uid2053_i_unnamed_conv28_shift_x_b));
    seMsb_to8_uid2060_b <= STD_LOGIC_VECTOR(seMsb_to8_uid2060_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid2061_i_unnamed_conv28_shift_x(BITSELECT,2060)@14
    rightShiftStage1Idx1Rng8_uid2061_i_unnamed_conv28_shift_x_b <= rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid2062_i_unnamed_conv28_shift_x(BITJOIN,2061)@14
    rightShiftStage1Idx1_uid2062_i_unnamed_conv28_shift_x_q <= seMsb_to8_uid2060_b & rightShiftStage1Idx1Rng8_uid2061_i_unnamed_conv28_shift_x_b;

    -- seMsb_to16_uid2055(BITSELECT,2054)@14
    seMsb_to16_uid2055_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid2053_i_unnamed_conv28_shift_x_b(0)) & xMSB_uid2053_i_unnamed_conv28_shift_x_b));
    seMsb_to16_uid2055_b <= STD_LOGIC_VECTOR(seMsb_to16_uid2055_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid2056_i_unnamed_conv28_shift_x(BITSELECT,2055)@14
    rightShiftStage0Idx1Rng16_uid2056_i_unnamed_conv28_shift_x_b <= i_unnamed_conv25_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid2057_i_unnamed_conv28_shift_x(BITJOIN,2056)@14
    rightShiftStage0Idx1_uid2057_i_unnamed_conv28_shift_x_q <= seMsb_to16_uid2055_b & rightShiftStage0Idx1Rng16_uid2056_i_unnamed_conv28_shift_x_b;

    -- rightShiftStage0_uid2059_i_unnamed_conv28_shift_x(MUX,2058)@14
    rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_s <= VCC_q;
    rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_combproc: PROCESS (rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_s, i_unnamed_conv25_vt_join_q, rightShiftStage0Idx1_uid2057_i_unnamed_conv28_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_q <= i_unnamed_conv25_vt_join_q;
            WHEN "1" => rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_q <= rightShiftStage0Idx1_uid2057_i_unnamed_conv28_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid2064_i_unnamed_conv28_shift_x(MUX,2063)@14
    rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_s <= VCC_q;
    rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_combproc: PROCESS (rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_s, rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_q, rightShiftStage1Idx1_uid2062_i_unnamed_conv28_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_q <= rightShiftStage0_uid2059_i_unnamed_conv28_shift_x_q;
            WHEN "1" => rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_q <= rightShiftStage1Idx1_uid2062_i_unnamed_conv28_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid2069_i_unnamed_conv28_shift_x(MUX,2068)@14
    rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_s <= VCC_q;
    rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_combproc: PROCESS (rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_s, rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_q, rightShiftStage2Idx1_uid2067_i_unnamed_conv28_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_q <= rightShiftStage1_uid2064_i_unnamed_conv28_shift_x_q;
            WHEN "1" => rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_q <= rightShiftStage2Idx1_uid2067_i_unnamed_conv28_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid2074_i_unnamed_conv28_shift_x(MUX,2073)@14
    rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_s <= VCC_q;
    rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_combproc: PROCESS (rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_s, rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_q, rightShiftStage3Idx1_uid2072_i_unnamed_conv28_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_q <= rightShiftStage2_uid2069_i_unnamed_conv28_shift_x_q;
            WHEN "1" => rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_q <= rightShiftStage3Idx1_uid2072_i_unnamed_conv28_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid2078_i_unnamed_conv28_shift_x(MUX,2077)@14
    rightShiftStage4_uid2078_i_unnamed_conv28_shift_x_s <= VCC_q;
    rightShiftStage4_uid2078_i_unnamed_conv28_shift_x_combproc: PROCESS (rightShiftStage4_uid2078_i_unnamed_conv28_shift_x_s, rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_q, rightShiftStage4Idx1_uid2076_i_unnamed_conv28_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid2078_i_unnamed_conv28_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid2078_i_unnamed_conv28_shift_x_q <= rightShiftStage3_uid2074_i_unnamed_conv28_shift_x_q;
            WHEN "1" => rightShiftStage4_uid2078_i_unnamed_conv28_shift_x_q <= rightShiftStage4Idx1_uid2076_i_unnamed_conv28_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid2078_i_unnamed_conv28_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked9_conv(LOGICAL,605)@14
    i_mul10_masked9_conv_q <= rightShiftStage4_uid2078_i_unnamed_conv28_shift_x_q and redist36_sync_in_aunroll_x_in_c0_eni1_1_1_q;

    -- leftShiftStage0_uid2087_i_unnamed_conv30_shift_x(MUX,2086)@14
    leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_s <= VCC_q;
    leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_combproc: PROCESS (leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_s, i_mul10_masked9_conv_q, leftShiftStage0Idx1_uid2085_i_unnamed_conv30_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_q <= i_mul10_masked9_conv_q;
            WHEN "1" => leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_q <= leftShiftStage0Idx1_uid2085_i_unnamed_conv30_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid2092_i_unnamed_conv30_shift_x(MUX,2091)@14
    leftShiftStage1_uid2092_i_unnamed_conv30_shift_x_s <= VCC_q;
    leftShiftStage1_uid2092_i_unnamed_conv30_shift_x_combproc: PROCESS (leftShiftStage1_uid2092_i_unnamed_conv30_shift_x_s, leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_q, leftShiftStage1Idx1_uid2090_i_unnamed_conv30_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid2092_i_unnamed_conv30_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid2092_i_unnamed_conv30_shift_x_q <= leftShiftStage0_uid2087_i_unnamed_conv30_shift_x_q;
            WHEN "1" => leftShiftStage1_uid2092_i_unnamed_conv30_shift_x_q <= leftShiftStage1Idx1_uid2090_i_unnamed_conv30_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid2092_i_unnamed_conv30_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv29_vt_select_31(BITSELECT,757)@14
    i_unnamed_conv29_vt_select_31_b <= leftShiftStage1_uid2092_i_unnamed_conv30_shift_x_q(31 downto 5);

    -- redist8_i_unnamed_conv29_vt_select_31_b_1(DELAY,2648)
    redist8_i_unnamed_conv29_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv29_vt_select_31_b, xout => redist8_i_unnamed_conv29_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv29_vt_join(BITJOIN,756)@15
    i_unnamed_conv29_vt_join_q <= redist8_i_unnamed_conv29_vt_select_31_b_1_q & i_unnamed_conv217_vt_const_4_q;

    -- leftShiftStage0Idx1Rng4_uid1910_i_unnamed_conv22_shift_x(BITSELECT,1909)@13
    leftShiftStage0Idx1Rng4_uid1910_i_unnamed_conv22_shift_x_in <= i_mul10_masked7_conv_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid1910_i_unnamed_conv22_shift_x_b <= leftShiftStage0Idx1Rng4_uid1910_i_unnamed_conv22_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid1911_i_unnamed_conv22_shift_x(BITJOIN,1910)@13
    leftShiftStage0Idx1_uid1911_i_unnamed_conv22_shift_x_q <= leftShiftStage0Idx1Rng4_uid1910_i_unnamed_conv22_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage3Idx1Rng2_uid1568_i_unnamed_conv18_shift_x(BITSELECT,1567)@13
    leftShiftStage3Idx1Rng2_uid1568_i_unnamed_conv18_shift_x_in <= leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_q(29 downto 0);
    leftShiftStage3Idx1Rng2_uid1568_i_unnamed_conv18_shift_x_b <= leftShiftStage3Idx1Rng2_uid1568_i_unnamed_conv18_shift_x_in(29 downto 0);

    -- leftShiftStage3Idx1_uid1569_i_unnamed_conv18_shift_x(BITJOIN,1568)@13
    leftShiftStage3Idx1_uid1569_i_unnamed_conv18_shift_x_q <= leftShiftStage3Idx1Rng2_uid1568_i_unnamed_conv18_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage2Idx1Rng4_uid1563_i_unnamed_conv18_shift_x(BITSELECT,1562)@13
    leftShiftStage2Idx1Rng4_uid1563_i_unnamed_conv18_shift_x_in <= leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid1563_i_unnamed_conv18_shift_x_b <= leftShiftStage2Idx1Rng4_uid1563_i_unnamed_conv18_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid1564_i_unnamed_conv18_shift_x(BITJOIN,1563)@13
    leftShiftStage2Idx1_uid1564_i_unnamed_conv18_shift_x_q <= leftShiftStage2Idx1Rng4_uid1563_i_unnamed_conv18_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid1558_i_unnamed_conv18_shift_x(BITSELECT,1557)@13
    leftShiftStage1Idx1Rng8_uid1558_i_unnamed_conv18_shift_x_in <= leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid1558_i_unnamed_conv18_shift_x_b <= leftShiftStage1Idx1Rng8_uid1558_i_unnamed_conv18_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid1559_i_unnamed_conv18_shift_x(BITJOIN,1558)@13
    leftShiftStage1Idx1_uid1559_i_unnamed_conv18_shift_x_q <= leftShiftStage1Idx1Rng8_uid1558_i_unnamed_conv18_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid1553_i_unnamed_conv18_shift_x(BITSELECT,1552)@13
    leftShiftStage0Idx1Rng16_uid1553_i_unnamed_conv18_shift_x_in <= i_syncbuf_n_elem_sync_buffer89_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid1553_i_unnamed_conv18_shift_x_b <= leftShiftStage0Idx1Rng16_uid1553_i_unnamed_conv18_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid1554_i_unnamed_conv18_shift_x(BITJOIN,1553)@13
    leftShiftStage0Idx1_uid1554_i_unnamed_conv18_shift_x_q <= leftShiftStage0Idx1Rng16_uid1553_i_unnamed_conv18_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer89_conv(BLACKBOX,635)@0
    -- in in_i_dependence@13
    -- in in_valid_in@13
    -- out out_buffer_out@13
    -- out out_valid_out@13
    thei_syncbuf_n_elem_sync_buffer89_conv : i_syncbuf_n_elem_sync_buffer89_conv15
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer89_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid1556_i_unnamed_conv18_shift_x(MUX,1555)@13
    leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_s <= VCC_q;
    leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_combproc: PROCESS (leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_s, i_syncbuf_n_elem_sync_buffer89_conv_out_buffer_out, leftShiftStage0Idx1_uid1554_i_unnamed_conv18_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_q <= i_syncbuf_n_elem_sync_buffer89_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_q <= leftShiftStage0Idx1_uid1554_i_unnamed_conv18_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1561_i_unnamed_conv18_shift_x(MUX,1560)@13
    leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_s <= VCC_q;
    leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_combproc: PROCESS (leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_s, leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_q, leftShiftStage1Idx1_uid1559_i_unnamed_conv18_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_q <= leftShiftStage0_uid1556_i_unnamed_conv18_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_q <= leftShiftStage1Idx1_uid1559_i_unnamed_conv18_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1566_i_unnamed_conv18_shift_x(MUX,1565)@13
    leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_s <= VCC_q;
    leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_combproc: PROCESS (leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_s, leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_q, leftShiftStage2Idx1_uid1564_i_unnamed_conv18_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_q <= leftShiftStage1_uid1561_i_unnamed_conv18_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_q <= leftShiftStage2Idx1_uid1564_i_unnamed_conv18_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1571_i_unnamed_conv18_shift_x(MUX,1570)@13
    leftShiftStage3_uid1571_i_unnamed_conv18_shift_x_s <= VCC_q;
    leftShiftStage3_uid1571_i_unnamed_conv18_shift_x_combproc: PROCESS (leftShiftStage3_uid1571_i_unnamed_conv18_shift_x_s, leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_q, leftShiftStage3Idx1_uid1569_i_unnamed_conv18_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1571_i_unnamed_conv18_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1571_i_unnamed_conv18_shift_x_q <= leftShiftStage2_uid1566_i_unnamed_conv18_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1571_i_unnamed_conv18_shift_x_q <= leftShiftStage3Idx1_uid1569_i_unnamed_conv18_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1571_i_unnamed_conv18_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv17_vt_select_31(BITSELECT,705)@13
    i_unnamed_conv17_vt_select_31_b <= leftShiftStage3_uid1571_i_unnamed_conv18_shift_x_q(31 downto 30);

    -- i_unnamed_conv17_vt_join(BITJOIN,704)@13
    i_unnamed_conv17_vt_join_q <= i_unnamed_conv17_vt_select_31_b & i_unnamed_conv17_vt_const_29_q;

    -- xMSB_uid1733_i_unnamed_conv20_shift_x(BITSELECT,1732)@13
    xMSB_uid1733_i_unnamed_conv20_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv17_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1755_i_unnamed_conv20_shift_x(BITSELECT,1754)@13
    rightShiftStage4Idx1Rng1_uid1755_i_unnamed_conv20_shift_x_b <= rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1756_i_unnamed_conv20_shift_x(BITJOIN,1755)@13
    rightShiftStage4Idx1_uid1756_i_unnamed_conv20_shift_x_q <= xMSB_uid1733_i_unnamed_conv20_shift_x_b & rightShiftStage4Idx1Rng1_uid1755_i_unnamed_conv20_shift_x_b;

    -- seMsb_to2_uid1750(BITSELECT,1749)@13
    seMsb_to2_uid1750_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1733_i_unnamed_conv20_shift_x_b(0)) & xMSB_uid1733_i_unnamed_conv20_shift_x_b));
    seMsb_to2_uid1750_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1750_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1751_i_unnamed_conv20_shift_x(BITSELECT,1750)@13
    rightShiftStage3Idx1Rng2_uid1751_i_unnamed_conv20_shift_x_b <= rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1752_i_unnamed_conv20_shift_x(BITJOIN,1751)@13
    rightShiftStage3Idx1_uid1752_i_unnamed_conv20_shift_x_q <= seMsb_to2_uid1750_b & rightShiftStage3Idx1Rng2_uid1751_i_unnamed_conv20_shift_x_b;

    -- seMsb_to4_uid1745(BITSELECT,1744)@13
    seMsb_to4_uid1745_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1733_i_unnamed_conv20_shift_x_b(0)) & xMSB_uid1733_i_unnamed_conv20_shift_x_b));
    seMsb_to4_uid1745_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1745_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1746_i_unnamed_conv20_shift_x(BITSELECT,1745)@13
    rightShiftStage2Idx1Rng4_uid1746_i_unnamed_conv20_shift_x_b <= rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1747_i_unnamed_conv20_shift_x(BITJOIN,1746)@13
    rightShiftStage2Idx1_uid1747_i_unnamed_conv20_shift_x_q <= seMsb_to4_uid1745_b & rightShiftStage2Idx1Rng4_uid1746_i_unnamed_conv20_shift_x_b;

    -- seMsb_to8_uid1740(BITSELECT,1739)@13
    seMsb_to8_uid1740_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1733_i_unnamed_conv20_shift_x_b(0)) & xMSB_uid1733_i_unnamed_conv20_shift_x_b));
    seMsb_to8_uid1740_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1740_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1741_i_unnamed_conv20_shift_x(BITSELECT,1740)@13
    rightShiftStage1Idx1Rng8_uid1741_i_unnamed_conv20_shift_x_b <= rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1742_i_unnamed_conv20_shift_x(BITJOIN,1741)@13
    rightShiftStage1Idx1_uid1742_i_unnamed_conv20_shift_x_q <= seMsb_to8_uid1740_b & rightShiftStage1Idx1Rng8_uid1741_i_unnamed_conv20_shift_x_b;

    -- seMsb_to16_uid1735(BITSELECT,1734)@13
    seMsb_to16_uid1735_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1733_i_unnamed_conv20_shift_x_b(0)) & xMSB_uid1733_i_unnamed_conv20_shift_x_b));
    seMsb_to16_uid1735_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1735_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1736_i_unnamed_conv20_shift_x(BITSELECT,1735)@13
    rightShiftStage0Idx1Rng16_uid1736_i_unnamed_conv20_shift_x_b <= i_unnamed_conv17_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1737_i_unnamed_conv20_shift_x(BITJOIN,1736)@13
    rightShiftStage0Idx1_uid1737_i_unnamed_conv20_shift_x_q <= seMsb_to16_uid1735_b & rightShiftStage0Idx1Rng16_uid1736_i_unnamed_conv20_shift_x_b;

    -- rightShiftStage0_uid1739_i_unnamed_conv20_shift_x(MUX,1738)@13
    rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_s <= VCC_q;
    rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_combproc: PROCESS (rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_s, i_unnamed_conv17_vt_join_q, rightShiftStage0Idx1_uid1737_i_unnamed_conv20_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_q <= i_unnamed_conv17_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_q <= rightShiftStage0Idx1_uid1737_i_unnamed_conv20_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1744_i_unnamed_conv20_shift_x(MUX,1743)@13
    rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_s <= VCC_q;
    rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_combproc: PROCESS (rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_s, rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_q, rightShiftStage1Idx1_uid1742_i_unnamed_conv20_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_q <= rightShiftStage0_uid1739_i_unnamed_conv20_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_q <= rightShiftStage1Idx1_uid1742_i_unnamed_conv20_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1749_i_unnamed_conv20_shift_x(MUX,1748)@13
    rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_s <= VCC_q;
    rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_combproc: PROCESS (rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_s, rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_q, rightShiftStage2Idx1_uid1747_i_unnamed_conv20_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_q <= rightShiftStage1_uid1744_i_unnamed_conv20_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_q <= rightShiftStage2Idx1_uid1747_i_unnamed_conv20_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1754_i_unnamed_conv20_shift_x(MUX,1753)@13
    rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_s <= VCC_q;
    rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_combproc: PROCESS (rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_s, rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_q, rightShiftStage3Idx1_uid1752_i_unnamed_conv20_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_q <= rightShiftStage2_uid1749_i_unnamed_conv20_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_q <= rightShiftStage3Idx1_uid1752_i_unnamed_conv20_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1758_i_unnamed_conv20_shift_x(MUX,1757)@13
    rightShiftStage4_uid1758_i_unnamed_conv20_shift_x_s <= VCC_q;
    rightShiftStage4_uid1758_i_unnamed_conv20_shift_x_combproc: PROCESS (rightShiftStage4_uid1758_i_unnamed_conv20_shift_x_s, rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_q, rightShiftStage4Idx1_uid1756_i_unnamed_conv20_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1758_i_unnamed_conv20_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1758_i_unnamed_conv20_shift_x_q <= rightShiftStage3_uid1754_i_unnamed_conv20_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1758_i_unnamed_conv20_shift_x_q <= rightShiftStage4Idx1_uid1756_i_unnamed_conv20_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1758_i_unnamed_conv20_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked7_conv(LOGICAL,604)@13
    i_mul10_masked7_conv_q <= rightShiftStage4_uid1758_i_unnamed_conv20_shift_x_q and in_c0_eni1_1;

    -- leftShiftStage0_uid1913_i_unnamed_conv22_shift_x(MUX,1912)@13
    leftShiftStage0_uid1913_i_unnamed_conv22_shift_x_s <= VCC_q;
    leftShiftStage0_uid1913_i_unnamed_conv22_shift_x_combproc: PROCESS (leftShiftStage0_uid1913_i_unnamed_conv22_shift_x_s, i_mul10_masked7_conv_q, leftShiftStage0Idx1_uid1911_i_unnamed_conv22_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1913_i_unnamed_conv22_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1913_i_unnamed_conv22_shift_x_q <= i_mul10_masked7_conv_q;
            WHEN "1" => leftShiftStage0_uid1913_i_unnamed_conv22_shift_x_q <= leftShiftStage0Idx1_uid1911_i_unnamed_conv22_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1913_i_unnamed_conv22_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv21_vt_select_31(BITSELECT,738)@13
    i_unnamed_conv21_vt_select_31_b <= leftShiftStage0_uid1913_i_unnamed_conv22_shift_x_q(31 downto 4);

    -- redist12_i_unnamed_conv21_vt_select_31_b_1(DELAY,2652)
    redist12_i_unnamed_conv21_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv21_vt_select_31_b, xout => redist12_i_unnamed_conv21_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv21_vt_join(BITJOIN,737)@14
    i_unnamed_conv21_vt_join_q <= redist12_i_unnamed_conv21_vt_select_31_b_1_q & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage1Idx1Rng1_uid1224_i_unnamed_conv14_shift_x(BITSELECT,1223)@13
    leftShiftStage1Idx1Rng1_uid1224_i_unnamed_conv14_shift_x_in <= leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1224_i_unnamed_conv14_shift_x_b <= leftShiftStage1Idx1Rng1_uid1224_i_unnamed_conv14_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1225_i_unnamed_conv14_shift_x(BITJOIN,1224)@13
    leftShiftStage1Idx1_uid1225_i_unnamed_conv14_shift_x_q <= leftShiftStage1Idx1Rng1_uid1224_i_unnamed_conv14_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng2_uid1219_i_unnamed_conv14_shift_x(BITSELECT,1218)@13
    leftShiftStage0Idx1Rng2_uid1219_i_unnamed_conv14_shift_x_in <= i_mul10_masked5_conv_q(29 downto 0);
    leftShiftStage0Idx1Rng2_uid1219_i_unnamed_conv14_shift_x_b <= leftShiftStage0Idx1Rng2_uid1219_i_unnamed_conv14_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid1220_i_unnamed_conv14_shift_x(BITJOIN,1219)@13
    leftShiftStage0Idx1_uid1220_i_unnamed_conv14_shift_x_q <= leftShiftStage0Idx1Rng2_uid1219_i_unnamed_conv14_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage4Idx1Rng1_uid882_i_unnamed_conv10_shift_x(BITSELECT,881)@13
    leftShiftStage4Idx1Rng1_uid882_i_unnamed_conv10_shift_x_in <= leftShiftStage3_uid880_i_unnamed_conv10_shift_x_q(30 downto 0);
    leftShiftStage4Idx1Rng1_uid882_i_unnamed_conv10_shift_x_b <= leftShiftStage4Idx1Rng1_uid882_i_unnamed_conv10_shift_x_in(30 downto 0);

    -- leftShiftStage4Idx1_uid883_i_unnamed_conv10_shift_x(BITJOIN,882)@13
    leftShiftStage4Idx1_uid883_i_unnamed_conv10_shift_x_q <= leftShiftStage4Idx1Rng1_uid882_i_unnamed_conv10_shift_x_b & GND_q;

    -- leftShiftStage3Idx1Rng2_uid877_i_unnamed_conv10_shift_x(BITSELECT,876)@13
    leftShiftStage3Idx1Rng2_uid877_i_unnamed_conv10_shift_x_in <= leftShiftStage2_uid875_i_unnamed_conv10_shift_x_q(29 downto 0);
    leftShiftStage3Idx1Rng2_uid877_i_unnamed_conv10_shift_x_b <= leftShiftStage3Idx1Rng2_uid877_i_unnamed_conv10_shift_x_in(29 downto 0);

    -- leftShiftStage3Idx1_uid878_i_unnamed_conv10_shift_x(BITJOIN,877)@13
    leftShiftStage3Idx1_uid878_i_unnamed_conv10_shift_x_q <= leftShiftStage3Idx1Rng2_uid877_i_unnamed_conv10_shift_x_b & leftShiftStage3Idx1Pad2_uid833_i_mul10_masked6163_conv_conv231_shift_x_q;

    -- leftShiftStage2Idx1Rng4_uid872_i_unnamed_conv10_shift_x(BITSELECT,871)@13
    leftShiftStage2Idx1Rng4_uid872_i_unnamed_conv10_shift_x_in <= leftShiftStage1_uid870_i_unnamed_conv10_shift_x_q(27 downto 0);
    leftShiftStage2Idx1Rng4_uid872_i_unnamed_conv10_shift_x_b <= leftShiftStage2Idx1Rng4_uid872_i_unnamed_conv10_shift_x_in(27 downto 0);

    -- leftShiftStage2Idx1_uid873_i_unnamed_conv10_shift_x(BITJOIN,872)@13
    leftShiftStage2Idx1_uid873_i_unnamed_conv10_shift_x_q <= leftShiftStage2Idx1Rng4_uid872_i_unnamed_conv10_shift_x_b & i_unnamed_conv21_vt_const_3_q;

    -- leftShiftStage1Idx1Rng8_uid867_i_unnamed_conv10_shift_x(BITSELECT,866)@13
    leftShiftStage1Idx1Rng8_uid867_i_unnamed_conv10_shift_x_in <= leftShiftStage0_uid865_i_unnamed_conv10_shift_x_q(23 downto 0);
    leftShiftStage1Idx1Rng8_uid867_i_unnamed_conv10_shift_x_b <= leftShiftStage1Idx1Rng8_uid867_i_unnamed_conv10_shift_x_in(23 downto 0);

    -- leftShiftStage1Idx1_uid868_i_unnamed_conv10_shift_x(BITJOIN,867)@13
    leftShiftStage1Idx1_uid868_i_unnamed_conv10_shift_x_q <= leftShiftStage1Idx1Rng8_uid867_i_unnamed_conv10_shift_x_b & i_unnamed_conv193_vt_const_7_q;

    -- leftShiftStage0Idx1Rng16_uid862_i_unnamed_conv10_shift_x(BITSELECT,861)@13
    leftShiftStage0Idx1Rng16_uid862_i_unnamed_conv10_shift_x_in <= i_syncbuf_n_elem_sync_buffer90_conv_out_buffer_out(15 downto 0);
    leftShiftStage0Idx1Rng16_uid862_i_unnamed_conv10_shift_x_b <= leftShiftStage0Idx1Rng16_uid862_i_unnamed_conv10_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid863_i_unnamed_conv10_shift_x(BITJOIN,862)@13
    leftShiftStage0Idx1_uid863_i_unnamed_conv10_shift_x_q <= leftShiftStage0Idx1Rng16_uid862_i_unnamed_conv10_shift_x_b & i_unnamed_conv117_vt_const_15_q;

    -- i_syncbuf_n_elem_sync_buffer90_conv(BLACKBOX,636)@0
    -- in in_i_dependence@13
    -- in in_valid_in@13
    -- out out_buffer_out@13
    -- out out_valid_out@13
    thei_syncbuf_n_elem_sync_buffer90_conv : i_syncbuf_n_elem_sync_buffer90_conv7
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer90_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid865_i_unnamed_conv10_shift_x(MUX,864)@13
    leftShiftStage0_uid865_i_unnamed_conv10_shift_x_s <= VCC_q;
    leftShiftStage0_uid865_i_unnamed_conv10_shift_x_combproc: PROCESS (leftShiftStage0_uid865_i_unnamed_conv10_shift_x_s, i_syncbuf_n_elem_sync_buffer90_conv_out_buffer_out, leftShiftStage0Idx1_uid863_i_unnamed_conv10_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid865_i_unnamed_conv10_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid865_i_unnamed_conv10_shift_x_q <= i_syncbuf_n_elem_sync_buffer90_conv_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid865_i_unnamed_conv10_shift_x_q <= leftShiftStage0Idx1_uid863_i_unnamed_conv10_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid865_i_unnamed_conv10_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid870_i_unnamed_conv10_shift_x(MUX,869)@13
    leftShiftStage1_uid870_i_unnamed_conv10_shift_x_s <= VCC_q;
    leftShiftStage1_uid870_i_unnamed_conv10_shift_x_combproc: PROCESS (leftShiftStage1_uid870_i_unnamed_conv10_shift_x_s, leftShiftStage0_uid865_i_unnamed_conv10_shift_x_q, leftShiftStage1Idx1_uid868_i_unnamed_conv10_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid870_i_unnamed_conv10_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid870_i_unnamed_conv10_shift_x_q <= leftShiftStage0_uid865_i_unnamed_conv10_shift_x_q;
            WHEN "1" => leftShiftStage1_uid870_i_unnamed_conv10_shift_x_q <= leftShiftStage1Idx1_uid868_i_unnamed_conv10_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid870_i_unnamed_conv10_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid875_i_unnamed_conv10_shift_x(MUX,874)@13
    leftShiftStage2_uid875_i_unnamed_conv10_shift_x_s <= VCC_q;
    leftShiftStage2_uid875_i_unnamed_conv10_shift_x_combproc: PROCESS (leftShiftStage2_uid875_i_unnamed_conv10_shift_x_s, leftShiftStage1_uid870_i_unnamed_conv10_shift_x_q, leftShiftStage2Idx1_uid873_i_unnamed_conv10_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid875_i_unnamed_conv10_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid875_i_unnamed_conv10_shift_x_q <= leftShiftStage1_uid870_i_unnamed_conv10_shift_x_q;
            WHEN "1" => leftShiftStage2_uid875_i_unnamed_conv10_shift_x_q <= leftShiftStage2Idx1_uid873_i_unnamed_conv10_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid875_i_unnamed_conv10_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid880_i_unnamed_conv10_shift_x(MUX,879)@13
    leftShiftStage3_uid880_i_unnamed_conv10_shift_x_s <= VCC_q;
    leftShiftStage3_uid880_i_unnamed_conv10_shift_x_combproc: PROCESS (leftShiftStage3_uid880_i_unnamed_conv10_shift_x_s, leftShiftStage2_uid875_i_unnamed_conv10_shift_x_q, leftShiftStage3Idx1_uid878_i_unnamed_conv10_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid880_i_unnamed_conv10_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid880_i_unnamed_conv10_shift_x_q <= leftShiftStage2_uid875_i_unnamed_conv10_shift_x_q;
            WHEN "1" => leftShiftStage3_uid880_i_unnamed_conv10_shift_x_q <= leftShiftStage3Idx1_uid878_i_unnamed_conv10_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid880_i_unnamed_conv10_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage4_uid885_i_unnamed_conv10_shift_x(MUX,884)@13
    leftShiftStage4_uid885_i_unnamed_conv10_shift_x_s <= VCC_q;
    leftShiftStage4_uid885_i_unnamed_conv10_shift_x_combproc: PROCESS (leftShiftStage4_uid885_i_unnamed_conv10_shift_x_s, leftShiftStage3_uid880_i_unnamed_conv10_shift_x_q, leftShiftStage4Idx1_uid883_i_unnamed_conv10_shift_x_q)
    BEGIN
        CASE (leftShiftStage4_uid885_i_unnamed_conv10_shift_x_s) IS
            WHEN "0" => leftShiftStage4_uid885_i_unnamed_conv10_shift_x_q <= leftShiftStage3_uid880_i_unnamed_conv10_shift_x_q;
            WHEN "1" => leftShiftStage4_uid885_i_unnamed_conv10_shift_x_q <= leftShiftStage4Idx1_uid883_i_unnamed_conv10_shift_x_q;
            WHEN OTHERS => leftShiftStage4_uid885_i_unnamed_conv10_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv9_vt_select_31(BITSELECT,811)@13
    i_unnamed_conv9_vt_select_31_b <= leftShiftStage4_uid885_i_unnamed_conv10_shift_x_q(31 downto 31);

    -- i_unnamed_conv9_vt_join(BITJOIN,810)@13
    i_unnamed_conv9_vt_join_q <= i_unnamed_conv9_vt_select_31_b & i_mul10_masked6163_conv_vt_const_30_q;

    -- xMSB_uid1057_i_unnamed_conv12_shift_x(BITSELECT,1056)@13
    xMSB_uid1057_i_unnamed_conv12_shift_x_b <= STD_LOGIC_VECTOR(i_unnamed_conv9_vt_join_q(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid1079_i_unnamed_conv12_shift_x(BITSELECT,1078)@13
    rightShiftStage4Idx1Rng1_uid1079_i_unnamed_conv12_shift_x_b <= rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid1080_i_unnamed_conv12_shift_x(BITJOIN,1079)@13
    rightShiftStage4Idx1_uid1080_i_unnamed_conv12_shift_x_q <= xMSB_uid1057_i_unnamed_conv12_shift_x_b & rightShiftStage4Idx1Rng1_uid1079_i_unnamed_conv12_shift_x_b;

    -- seMsb_to2_uid1074(BITSELECT,1073)@13
    seMsb_to2_uid1074_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid1057_i_unnamed_conv12_shift_x_b(0)) & xMSB_uid1057_i_unnamed_conv12_shift_x_b));
    seMsb_to2_uid1074_b <= STD_LOGIC_VECTOR(seMsb_to2_uid1074_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid1075_i_unnamed_conv12_shift_x(BITSELECT,1074)@13
    rightShiftStage3Idx1Rng2_uid1075_i_unnamed_conv12_shift_x_b <= rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid1076_i_unnamed_conv12_shift_x(BITJOIN,1075)@13
    rightShiftStage3Idx1_uid1076_i_unnamed_conv12_shift_x_q <= seMsb_to2_uid1074_b & rightShiftStage3Idx1Rng2_uid1075_i_unnamed_conv12_shift_x_b;

    -- seMsb_to4_uid1069(BITSELECT,1068)@13
    seMsb_to4_uid1069_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid1057_i_unnamed_conv12_shift_x_b(0)) & xMSB_uid1057_i_unnamed_conv12_shift_x_b));
    seMsb_to4_uid1069_b <= STD_LOGIC_VECTOR(seMsb_to4_uid1069_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid1070_i_unnamed_conv12_shift_x(BITSELECT,1069)@13
    rightShiftStage2Idx1Rng4_uid1070_i_unnamed_conv12_shift_x_b <= rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid1071_i_unnamed_conv12_shift_x(BITJOIN,1070)@13
    rightShiftStage2Idx1_uid1071_i_unnamed_conv12_shift_x_q <= seMsb_to4_uid1069_b & rightShiftStage2Idx1Rng4_uid1070_i_unnamed_conv12_shift_x_b;

    -- seMsb_to8_uid1064(BITSELECT,1063)@13
    seMsb_to8_uid1064_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid1057_i_unnamed_conv12_shift_x_b(0)) & xMSB_uid1057_i_unnamed_conv12_shift_x_b));
    seMsb_to8_uid1064_b <= STD_LOGIC_VECTOR(seMsb_to8_uid1064_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid1065_i_unnamed_conv12_shift_x(BITSELECT,1064)@13
    rightShiftStage1Idx1Rng8_uid1065_i_unnamed_conv12_shift_x_b <= rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid1066_i_unnamed_conv12_shift_x(BITJOIN,1065)@13
    rightShiftStage1Idx1_uid1066_i_unnamed_conv12_shift_x_q <= seMsb_to8_uid1064_b & rightShiftStage1Idx1Rng8_uid1065_i_unnamed_conv12_shift_x_b;

    -- seMsb_to16_uid1059(BITSELECT,1058)@13
    seMsb_to16_uid1059_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid1057_i_unnamed_conv12_shift_x_b(0)) & xMSB_uid1057_i_unnamed_conv12_shift_x_b));
    seMsb_to16_uid1059_b <= STD_LOGIC_VECTOR(seMsb_to16_uid1059_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid1060_i_unnamed_conv12_shift_x(BITSELECT,1059)@13
    rightShiftStage0Idx1Rng16_uid1060_i_unnamed_conv12_shift_x_b <= i_unnamed_conv9_vt_join_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1061_i_unnamed_conv12_shift_x(BITJOIN,1060)@13
    rightShiftStage0Idx1_uid1061_i_unnamed_conv12_shift_x_q <= seMsb_to16_uid1059_b & rightShiftStage0Idx1Rng16_uid1060_i_unnamed_conv12_shift_x_b;

    -- rightShiftStage0_uid1063_i_unnamed_conv12_shift_x(MUX,1062)@13
    rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_s <= VCC_q;
    rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_combproc: PROCESS (rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_s, i_unnamed_conv9_vt_join_q, rightShiftStage0Idx1_uid1061_i_unnamed_conv12_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_q <= i_unnamed_conv9_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_q <= rightShiftStage0Idx1_uid1061_i_unnamed_conv12_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1068_i_unnamed_conv12_shift_x(MUX,1067)@13
    rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_s <= VCC_q;
    rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_combproc: PROCESS (rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_s, rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_q, rightShiftStage1Idx1_uid1066_i_unnamed_conv12_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_q <= rightShiftStage0_uid1063_i_unnamed_conv12_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_q <= rightShiftStage1Idx1_uid1066_i_unnamed_conv12_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1073_i_unnamed_conv12_shift_x(MUX,1072)@13
    rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_s <= VCC_q;
    rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_combproc: PROCESS (rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_s, rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_q, rightShiftStage2Idx1_uid1071_i_unnamed_conv12_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_q <= rightShiftStage1_uid1068_i_unnamed_conv12_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_q <= rightShiftStage2Idx1_uid1071_i_unnamed_conv12_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1078_i_unnamed_conv12_shift_x(MUX,1077)@13
    rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_s <= VCC_q;
    rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_combproc: PROCESS (rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_s, rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_q, rightShiftStage3Idx1_uid1076_i_unnamed_conv12_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_q <= rightShiftStage2_uid1073_i_unnamed_conv12_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_q <= rightShiftStage3Idx1_uid1076_i_unnamed_conv12_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid1082_i_unnamed_conv12_shift_x(MUX,1081)@13
    rightShiftStage4_uid1082_i_unnamed_conv12_shift_x_s <= VCC_q;
    rightShiftStage4_uid1082_i_unnamed_conv12_shift_x_combproc: PROCESS (rightShiftStage4_uid1082_i_unnamed_conv12_shift_x_s, rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_q, rightShiftStage4Idx1_uid1080_i_unnamed_conv12_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid1082_i_unnamed_conv12_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid1082_i_unnamed_conv12_shift_x_q <= rightShiftStage3_uid1078_i_unnamed_conv12_shift_x_q;
            WHEN "1" => rightShiftStage4_uid1082_i_unnamed_conv12_shift_x_q <= rightShiftStage4Idx1_uid1080_i_unnamed_conv12_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid1082_i_unnamed_conv12_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul10_masked5_conv(LOGICAL,600)@13
    i_mul10_masked5_conv_q <= rightShiftStage4_uid1082_i_unnamed_conv12_shift_x_q and in_c0_eni1_1;

    -- leftShiftStage0_uid1222_i_unnamed_conv14_shift_x(MUX,1221)@13
    leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_s <= VCC_q;
    leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_combproc: PROCESS (leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_s, i_mul10_masked5_conv_q, leftShiftStage0Idx1_uid1220_i_unnamed_conv14_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_q <= i_mul10_masked5_conv_q;
            WHEN "1" => leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_q <= leftShiftStage0Idx1_uid1220_i_unnamed_conv14_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1227_i_unnamed_conv14_shift_x(MUX,1226)@13
    leftShiftStage1_uid1227_i_unnamed_conv14_shift_x_s <= VCC_q;
    leftShiftStage1_uid1227_i_unnamed_conv14_shift_x_combproc: PROCESS (leftShiftStage1_uid1227_i_unnamed_conv14_shift_x_s, leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_q, leftShiftStage1Idx1_uid1225_i_unnamed_conv14_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1227_i_unnamed_conv14_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1227_i_unnamed_conv14_shift_x_q <= leftShiftStage0_uid1222_i_unnamed_conv14_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1227_i_unnamed_conv14_shift_x_q <= leftShiftStage1Idx1_uid1225_i_unnamed_conv14_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1227_i_unnamed_conv14_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv13_vt_select_31(BITSELECT,672)@13
    i_unnamed_conv13_vt_select_31_b <= leftShiftStage1_uid1227_i_unnamed_conv14_shift_x_q(31 downto 3);

    -- redist23_i_unnamed_conv13_vt_select_31_b_1(DELAY,2663)
    redist23_i_unnamed_conv13_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv13_vt_select_31_b, xout => redist23_i_unnamed_conv13_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv13_vt_join(BITJOIN,671)@14
    i_unnamed_conv13_vt_join_q <= redist23_i_unnamed_conv13_vt_select_31_b_1_q & i_mul10_add10_conv_vt_const_2_q;

    -- i_mul10_add8_conv(ADD,571)@14
    i_mul10_add8_conv_a <= STD_LOGIC_VECTOR("0" & i_unnamed_conv13_vt_join_q);
    i_mul10_add8_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv21_vt_join_q);
    i_mul10_add8_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add8_conv_a) + UNSIGNED(i_mul10_add8_conv_b));
    i_mul10_add8_conv_q <= i_mul10_add8_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add8_conv_sel_x(BITSELECT,30)@14
    bgTrunc_i_mul10_add8_conv_sel_x_b <= i_mul10_add8_conv_q(31 downto 0);

    -- i_mul10_add8_conv_vt_select_31(BITSELECT,574)@14
    i_mul10_add8_conv_vt_select_31_b <= bgTrunc_i_mul10_add8_conv_sel_x_b(31 downto 3);

    -- redist29_i_mul10_add8_conv_vt_select_31_b_1(DELAY,2669)
    redist29_i_mul10_add8_conv_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul10_add8_conv_vt_select_31_b, xout => redist29_i_mul10_add8_conv_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add8_conv_vt_join(BITJOIN,573)@15
    i_mul10_add8_conv_vt_join_q <= redist29_i_mul10_add8_conv_vt_select_31_b_1_q & i_mul10_add10_conv_vt_const_2_q;

    -- i_mul10_add10_conv(ADD,526)@15
    i_mul10_add10_conv_a <= STD_LOGIC_VECTOR("0" & i_mul10_add8_conv_vt_join_q);
    i_mul10_add10_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv29_vt_join_q);
    i_mul10_add10_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add10_conv_a) + UNSIGNED(i_mul10_add10_conv_b));
    i_mul10_add10_conv_q <= i_mul10_add10_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add10_conv_sel_x(BITSELECT,3)@15
    bgTrunc_i_mul10_add10_conv_sel_x_b <= i_mul10_add10_conv_q(31 downto 0);

    -- i_mul10_add10_conv_vt_select_31(BITSELECT,529)@15
    i_mul10_add10_conv_vt_select_31_b <= bgTrunc_i_mul10_add10_conv_sel_x_b(31 downto 3);

    -- redist35_i_mul10_add10_conv_vt_select_31_b_1(DELAY,2675)
    redist35_i_mul10_add10_conv_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul10_add10_conv_vt_select_31_b, xout => redist35_i_mul10_add10_conv_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add10_conv_vt_join(BITJOIN,528)@16
    i_mul10_add10_conv_vt_join_q <= redist35_i_mul10_add10_conv_vt_select_31_b_1_q & i_mul10_add10_conv_vt_const_2_q;

    -- i_mul10_add12_conv(ADD,530)@16
    i_mul10_add12_conv_a <= STD_LOGIC_VECTOR("0" & i_mul10_add10_conv_vt_join_q);
    i_mul10_add12_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv37_vt_join_q);
    i_mul10_add12_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add12_conv_a) + UNSIGNED(i_mul10_add12_conv_b));
    i_mul10_add12_conv_q <= i_mul10_add12_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add12_conv_sel_x(BITSELECT,4)@16
    bgTrunc_i_mul10_add12_conv_sel_x_b <= i_mul10_add12_conv_q(31 downto 0);

    -- i_mul10_add12_conv_vt_select_31(BITSELECT,533)@16
    i_mul10_add12_conv_vt_select_31_b <= bgTrunc_i_mul10_add12_conv_sel_x_b(31 downto 3);

    -- redist34_i_mul10_add12_conv_vt_select_31_b_1(DELAY,2674)
    redist34_i_mul10_add12_conv_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul10_add12_conv_vt_select_31_b, xout => redist34_i_mul10_add12_conv_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add12_conv_vt_join(BITJOIN,532)@17
    i_mul10_add12_conv_vt_join_q <= redist34_i_mul10_add12_conv_vt_select_31_b_1_q & i_mul10_add10_conv_vt_const_2_q;

    -- i_mul10_add14_conv(ADD,534)@17
    i_mul10_add14_conv_a <= STD_LOGIC_VECTOR("0" & i_mul10_add12_conv_vt_join_q);
    i_mul10_add14_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv45_vt_join_q);
    i_mul10_add14_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add14_conv_a) + UNSIGNED(i_mul10_add14_conv_b));
    i_mul10_add14_conv_q <= i_mul10_add14_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add14_conv_sel_x(BITSELECT,5)@17
    bgTrunc_i_mul10_add14_conv_sel_x_b <= i_mul10_add14_conv_q(31 downto 0);

    -- i_mul10_add14_conv_vt_select_31(BITSELECT,537)@17
    i_mul10_add14_conv_vt_select_31_b <= bgTrunc_i_mul10_add14_conv_sel_x_b(31 downto 3);

    -- redist33_i_mul10_add14_conv_vt_select_31_b_1(DELAY,2673)
    redist33_i_mul10_add14_conv_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul10_add14_conv_vt_select_31_b, xout => redist33_i_mul10_add14_conv_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add14_conv_vt_join(BITJOIN,536)@18
    i_mul10_add14_conv_vt_join_q <= redist33_i_mul10_add14_conv_vt_select_31_b_1_q & i_mul10_add10_conv_vt_const_2_q;

    -- i_mul10_add16_conv(ADD,538)@18
    i_mul10_add16_conv_a <= STD_LOGIC_VECTOR("0" & i_mul10_add14_conv_vt_join_q);
    i_mul10_add16_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv53_vt_join_q);
    i_mul10_add16_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add16_conv_a) + UNSIGNED(i_mul10_add16_conv_b));
    i_mul10_add16_conv_q <= i_mul10_add16_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add16_conv_sel_x(BITSELECT,6)@18
    bgTrunc_i_mul10_add16_conv_sel_x_b <= i_mul10_add16_conv_q(31 downto 0);

    -- i_mul10_add16_conv_vt_select_31(BITSELECT,541)@18
    i_mul10_add16_conv_vt_select_31_b <= bgTrunc_i_mul10_add16_conv_sel_x_b(31 downto 3);

    -- redist32_i_mul10_add16_conv_vt_select_31_b_1(DELAY,2672)
    redist32_i_mul10_add16_conv_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul10_add16_conv_vt_select_31_b, xout => redist32_i_mul10_add16_conv_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add16_conv_vt_join(BITJOIN,540)@19
    i_mul10_add16_conv_vt_join_q <= redist32_i_mul10_add16_conv_vt_select_31_b_1_q & i_mul10_add10_conv_vt_const_2_q;

    -- i_mul10_add18_conv(ADD,542)@19
    i_mul10_add18_conv_a <= STD_LOGIC_VECTOR("0" & i_mul10_add16_conv_vt_join_q);
    i_mul10_add18_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv61_vt_join_q);
    i_mul10_add18_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add18_conv_a) + UNSIGNED(i_mul10_add18_conv_b));
    i_mul10_add18_conv_q <= i_mul10_add18_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add18_conv_sel_x(BITSELECT,7)@19
    bgTrunc_i_mul10_add18_conv_sel_x_b <= i_mul10_add18_conv_q(31 downto 0);

    -- i_mul10_add18_conv_vt_select_31(BITSELECT,545)@19
    i_mul10_add18_conv_vt_select_31_b <= bgTrunc_i_mul10_add18_conv_sel_x_b(31 downto 3);

    -- redist31_i_mul10_add18_conv_vt_select_31_b_1(DELAY,2671)
    redist31_i_mul10_add18_conv_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul10_add18_conv_vt_select_31_b, xout => redist31_i_mul10_add18_conv_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add18_conv_vt_join(BITJOIN,544)@20
    i_mul10_add18_conv_vt_join_q <= redist31_i_mul10_add18_conv_vt_select_31_b_1_q & i_mul10_add10_conv_vt_const_2_q;

    -- i_mul10_add20_conv(ADD,546)@20
    i_mul10_add20_conv_a <= STD_LOGIC_VECTOR("0" & i_mul10_add18_conv_vt_join_q);
    i_mul10_add20_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv69_vt_join_q);
    i_mul10_add20_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add20_conv_a) + UNSIGNED(i_mul10_add20_conv_b));
    i_mul10_add20_conv_q <= i_mul10_add20_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add20_conv_sel_x(BITSELECT,8)@20
    bgTrunc_i_mul10_add20_conv_sel_x_b <= i_mul10_add20_conv_q(31 downto 0);

    -- i_mul10_add20_conv_vt_select_31(BITSELECT,549)@20
    i_mul10_add20_conv_vt_select_31_b <= bgTrunc_i_mul10_add20_conv_sel_x_b(31 downto 3);

    -- redist30_i_mul10_add20_conv_vt_select_31_b_1(DELAY,2670)
    redist30_i_mul10_add20_conv_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul10_add20_conv_vt_select_31_b, xout => redist30_i_mul10_add20_conv_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add20_conv_vt_join(BITJOIN,548)@21
    i_mul10_add20_conv_vt_join_q <= redist30_i_mul10_add20_conv_vt_select_31_b_1_q & i_mul10_add10_conv_vt_const_2_q;

    -- i_mul10_add22_conv(ADD,550)@21
    i_mul10_add22_conv_a <= STD_LOGIC_VECTOR("0" & i_mul10_add20_conv_vt_join_q);
    i_mul10_add22_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv77_vt_join_q);
    i_mul10_add22_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add22_conv_a) + UNSIGNED(i_mul10_add22_conv_b));
    i_mul10_add22_conv_q <= i_mul10_add22_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add22_conv_sel_x(BITSELECT,9)@21
    bgTrunc_i_mul10_add22_conv_sel_x_b <= i_mul10_add22_conv_q(31 downto 0);

    -- redist100_bgTrunc_i_mul10_add22_conv_sel_x_b_1(DELAY,2740)
    redist100_bgTrunc_i_mul10_add22_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add22_conv_sel_x_b, xout => redist100_bgTrunc_i_mul10_add22_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add24_conv(ADD,551)@22
    i_mul10_add24_conv_a <= STD_LOGIC_VECTOR("0" & redist100_bgTrunc_i_mul10_add22_conv_sel_x_b_1_q);
    i_mul10_add24_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv85_vt_join_q);
    i_mul10_add24_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add24_conv_a) + UNSIGNED(i_mul10_add24_conv_b));
    i_mul10_add24_conv_q <= i_mul10_add24_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add24_conv_sel_x(BITSELECT,10)@22
    bgTrunc_i_mul10_add24_conv_sel_x_b <= i_mul10_add24_conv_q(31 downto 0);

    -- redist99_bgTrunc_i_mul10_add24_conv_sel_x_b_1(DELAY,2739)
    redist99_bgTrunc_i_mul10_add24_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add24_conv_sel_x_b, xout => redist99_bgTrunc_i_mul10_add24_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add26_conv(ADD,552)@23
    i_mul10_add26_conv_a <= STD_LOGIC_VECTOR("0" & redist99_bgTrunc_i_mul10_add24_conv_sel_x_b_1_q);
    i_mul10_add26_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv93_vt_join_q);
    i_mul10_add26_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add26_conv_a) + UNSIGNED(i_mul10_add26_conv_b));
    i_mul10_add26_conv_q <= i_mul10_add26_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add26_conv_sel_x(BITSELECT,11)@23
    bgTrunc_i_mul10_add26_conv_sel_x_b <= i_mul10_add26_conv_q(31 downto 0);

    -- redist98_bgTrunc_i_mul10_add26_conv_sel_x_b_1(DELAY,2738)
    redist98_bgTrunc_i_mul10_add26_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add26_conv_sel_x_b, xout => redist98_bgTrunc_i_mul10_add26_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add28_conv(ADD,553)@24
    i_mul10_add28_conv_a <= STD_LOGIC_VECTOR("0" & redist98_bgTrunc_i_mul10_add26_conv_sel_x_b_1_q);
    i_mul10_add28_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv101_vt_join_q);
    i_mul10_add28_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add28_conv_a) + UNSIGNED(i_mul10_add28_conv_b));
    i_mul10_add28_conv_q <= i_mul10_add28_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add28_conv_sel_x(BITSELECT,12)@24
    bgTrunc_i_mul10_add28_conv_sel_x_b <= i_mul10_add28_conv_q(31 downto 0);

    -- redist97_bgTrunc_i_mul10_add28_conv_sel_x_b_1(DELAY,2737)
    redist97_bgTrunc_i_mul10_add28_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add28_conv_sel_x_b, xout => redist97_bgTrunc_i_mul10_add28_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add30_conv(ADD,554)@25
    i_mul10_add30_conv_a <= STD_LOGIC_VECTOR("0" & redist97_bgTrunc_i_mul10_add28_conv_sel_x_b_1_q);
    i_mul10_add30_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv109_vt_join_q);
    i_mul10_add30_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add30_conv_a) + UNSIGNED(i_mul10_add30_conv_b));
    i_mul10_add30_conv_q <= i_mul10_add30_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add30_conv_sel_x(BITSELECT,13)@25
    bgTrunc_i_mul10_add30_conv_sel_x_b <= i_mul10_add30_conv_q(31 downto 0);

    -- redist96_bgTrunc_i_mul10_add30_conv_sel_x_b_1(DELAY,2736)
    redist96_bgTrunc_i_mul10_add30_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add30_conv_sel_x_b, xout => redist96_bgTrunc_i_mul10_add30_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add32_conv(ADD,555)@26
    i_mul10_add32_conv_a <= STD_LOGIC_VECTOR("0" & redist96_bgTrunc_i_mul10_add30_conv_sel_x_b_1_q);
    i_mul10_add32_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv117_vt_join_q);
    i_mul10_add32_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add32_conv_a) + UNSIGNED(i_mul10_add32_conv_b));
    i_mul10_add32_conv_q <= i_mul10_add32_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add32_conv_sel_x(BITSELECT,14)@26
    bgTrunc_i_mul10_add32_conv_sel_x_b <= i_mul10_add32_conv_q(31 downto 0);

    -- redist95_bgTrunc_i_mul10_add32_conv_sel_x_b_1(DELAY,2735)
    redist95_bgTrunc_i_mul10_add32_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add32_conv_sel_x_b, xout => redist95_bgTrunc_i_mul10_add32_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add34_conv(ADD,556)@27
    i_mul10_add34_conv_a <= STD_LOGIC_VECTOR("0" & redist95_bgTrunc_i_mul10_add32_conv_sel_x_b_1_q);
    i_mul10_add34_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv125_vt_join_q);
    i_mul10_add34_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add34_conv_a) + UNSIGNED(i_mul10_add34_conv_b));
    i_mul10_add34_conv_q <= i_mul10_add34_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add34_conv_sel_x(BITSELECT,15)@27
    bgTrunc_i_mul10_add34_conv_sel_x_b <= i_mul10_add34_conv_q(31 downto 0);

    -- redist94_bgTrunc_i_mul10_add34_conv_sel_x_b_1(DELAY,2734)
    redist94_bgTrunc_i_mul10_add34_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add34_conv_sel_x_b, xout => redist94_bgTrunc_i_mul10_add34_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add36_conv(ADD,557)@28
    i_mul10_add36_conv_a <= STD_LOGIC_VECTOR("0" & redist94_bgTrunc_i_mul10_add34_conv_sel_x_b_1_q);
    i_mul10_add36_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv133_vt_join_q);
    i_mul10_add36_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add36_conv_a) + UNSIGNED(i_mul10_add36_conv_b));
    i_mul10_add36_conv_q <= i_mul10_add36_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add36_conv_sel_x(BITSELECT,16)@28
    bgTrunc_i_mul10_add36_conv_sel_x_b <= i_mul10_add36_conv_q(31 downto 0);

    -- redist93_bgTrunc_i_mul10_add36_conv_sel_x_b_1(DELAY,2733)
    redist93_bgTrunc_i_mul10_add36_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add36_conv_sel_x_b, xout => redist93_bgTrunc_i_mul10_add36_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add38_conv(ADD,558)@29
    i_mul10_add38_conv_a <= STD_LOGIC_VECTOR("0" & redist93_bgTrunc_i_mul10_add36_conv_sel_x_b_1_q);
    i_mul10_add38_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv141_vt_join_q);
    i_mul10_add38_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add38_conv_a) + UNSIGNED(i_mul10_add38_conv_b));
    i_mul10_add38_conv_q <= i_mul10_add38_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add38_conv_sel_x(BITSELECT,17)@29
    bgTrunc_i_mul10_add38_conv_sel_x_b <= i_mul10_add38_conv_q(31 downto 0);

    -- redist92_bgTrunc_i_mul10_add38_conv_sel_x_b_1(DELAY,2732)
    redist92_bgTrunc_i_mul10_add38_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add38_conv_sel_x_b, xout => redist92_bgTrunc_i_mul10_add38_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add40_conv(ADD,559)@30
    i_mul10_add40_conv_a <= STD_LOGIC_VECTOR("0" & redist92_bgTrunc_i_mul10_add38_conv_sel_x_b_1_q);
    i_mul10_add40_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv149_vt_join_q);
    i_mul10_add40_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add40_conv_a) + UNSIGNED(i_mul10_add40_conv_b));
    i_mul10_add40_conv_q <= i_mul10_add40_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add40_conv_sel_x(BITSELECT,18)@30
    bgTrunc_i_mul10_add40_conv_sel_x_b <= i_mul10_add40_conv_q(31 downto 0);

    -- redist91_bgTrunc_i_mul10_add40_conv_sel_x_b_1(DELAY,2731)
    redist91_bgTrunc_i_mul10_add40_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add40_conv_sel_x_b, xout => redist91_bgTrunc_i_mul10_add40_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add42_conv(ADD,560)@31
    i_mul10_add42_conv_a <= STD_LOGIC_VECTOR("0" & redist91_bgTrunc_i_mul10_add40_conv_sel_x_b_1_q);
    i_mul10_add42_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv157_vt_join_q);
    i_mul10_add42_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add42_conv_a) + UNSIGNED(i_mul10_add42_conv_b));
    i_mul10_add42_conv_q <= i_mul10_add42_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add42_conv_sel_x(BITSELECT,19)@31
    bgTrunc_i_mul10_add42_conv_sel_x_b <= i_mul10_add42_conv_q(31 downto 0);

    -- redist90_bgTrunc_i_mul10_add42_conv_sel_x_b_1(DELAY,2730)
    redist90_bgTrunc_i_mul10_add42_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add42_conv_sel_x_b, xout => redist90_bgTrunc_i_mul10_add42_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add44_conv(ADD,561)@32
    i_mul10_add44_conv_a <= STD_LOGIC_VECTOR("0" & redist90_bgTrunc_i_mul10_add42_conv_sel_x_b_1_q);
    i_mul10_add44_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv165_vt_join_q);
    i_mul10_add44_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add44_conv_a) + UNSIGNED(i_mul10_add44_conv_b));
    i_mul10_add44_conv_q <= i_mul10_add44_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add44_conv_sel_x(BITSELECT,20)@32
    bgTrunc_i_mul10_add44_conv_sel_x_b <= i_mul10_add44_conv_q(31 downto 0);

    -- redist89_bgTrunc_i_mul10_add44_conv_sel_x_b_1(DELAY,2729)
    redist89_bgTrunc_i_mul10_add44_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add44_conv_sel_x_b, xout => redist89_bgTrunc_i_mul10_add44_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add46_conv(ADD,562)@33
    i_mul10_add46_conv_a <= STD_LOGIC_VECTOR("0" & redist89_bgTrunc_i_mul10_add44_conv_sel_x_b_1_q);
    i_mul10_add46_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv173_vt_join_q);
    i_mul10_add46_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add46_conv_a) + UNSIGNED(i_mul10_add46_conv_b));
    i_mul10_add46_conv_q <= i_mul10_add46_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add46_conv_sel_x(BITSELECT,21)@33
    bgTrunc_i_mul10_add46_conv_sel_x_b <= i_mul10_add46_conv_q(31 downto 0);

    -- redist88_bgTrunc_i_mul10_add46_conv_sel_x_b_1(DELAY,2728)
    redist88_bgTrunc_i_mul10_add46_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add46_conv_sel_x_b, xout => redist88_bgTrunc_i_mul10_add46_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add48_conv(ADD,563)@34
    i_mul10_add48_conv_a <= STD_LOGIC_VECTOR("0" & redist88_bgTrunc_i_mul10_add46_conv_sel_x_b_1_q);
    i_mul10_add48_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv181_vt_join_q);
    i_mul10_add48_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add48_conv_a) + UNSIGNED(i_mul10_add48_conv_b));
    i_mul10_add48_conv_q <= i_mul10_add48_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add48_conv_sel_x(BITSELECT,22)@34
    bgTrunc_i_mul10_add48_conv_sel_x_b <= i_mul10_add48_conv_q(31 downto 0);

    -- redist87_bgTrunc_i_mul10_add48_conv_sel_x_b_1(DELAY,2727)
    redist87_bgTrunc_i_mul10_add48_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add48_conv_sel_x_b, xout => redist87_bgTrunc_i_mul10_add48_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add50_conv(ADD,564)@35
    i_mul10_add50_conv_a <= STD_LOGIC_VECTOR("0" & redist87_bgTrunc_i_mul10_add48_conv_sel_x_b_1_q);
    i_mul10_add50_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv189_vt_join_q);
    i_mul10_add50_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add50_conv_a) + UNSIGNED(i_mul10_add50_conv_b));
    i_mul10_add50_conv_q <= i_mul10_add50_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add50_conv_sel_x(BITSELECT,23)@35
    bgTrunc_i_mul10_add50_conv_sel_x_b <= i_mul10_add50_conv_q(31 downto 0);

    -- redist86_bgTrunc_i_mul10_add50_conv_sel_x_b_1(DELAY,2726)
    redist86_bgTrunc_i_mul10_add50_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add50_conv_sel_x_b, xout => redist86_bgTrunc_i_mul10_add50_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add52_conv(ADD,565)@36
    i_mul10_add52_conv_a <= STD_LOGIC_VECTOR("0" & redist86_bgTrunc_i_mul10_add50_conv_sel_x_b_1_q);
    i_mul10_add52_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv197_vt_join_q);
    i_mul10_add52_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add52_conv_a) + UNSIGNED(i_mul10_add52_conv_b));
    i_mul10_add52_conv_q <= i_mul10_add52_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add52_conv_sel_x(BITSELECT,24)@36
    bgTrunc_i_mul10_add52_conv_sel_x_b <= i_mul10_add52_conv_q(31 downto 0);

    -- redist85_bgTrunc_i_mul10_add52_conv_sel_x_b_1(DELAY,2725)
    redist85_bgTrunc_i_mul10_add52_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add52_conv_sel_x_b, xout => redist85_bgTrunc_i_mul10_add52_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add54_conv(ADD,566)@37
    i_mul10_add54_conv_a <= STD_LOGIC_VECTOR("0" & redist85_bgTrunc_i_mul10_add52_conv_sel_x_b_1_q);
    i_mul10_add54_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv205_vt_join_q);
    i_mul10_add54_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add54_conv_a) + UNSIGNED(i_mul10_add54_conv_b));
    i_mul10_add54_conv_q <= i_mul10_add54_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add54_conv_sel_x(BITSELECT,25)@37
    bgTrunc_i_mul10_add54_conv_sel_x_b <= i_mul10_add54_conv_q(31 downto 0);

    -- redist84_bgTrunc_i_mul10_add54_conv_sel_x_b_1(DELAY,2724)
    redist84_bgTrunc_i_mul10_add54_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add54_conv_sel_x_b, xout => redist84_bgTrunc_i_mul10_add54_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add56_conv(ADD,567)@38
    i_mul10_add56_conv_a <= STD_LOGIC_VECTOR("0" & redist84_bgTrunc_i_mul10_add54_conv_sel_x_b_1_q);
    i_mul10_add56_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv213_vt_join_q);
    i_mul10_add56_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add56_conv_a) + UNSIGNED(i_mul10_add56_conv_b));
    i_mul10_add56_conv_q <= i_mul10_add56_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add56_conv_sel_x(BITSELECT,26)@38
    bgTrunc_i_mul10_add56_conv_sel_x_b <= i_mul10_add56_conv_q(31 downto 0);

    -- redist83_bgTrunc_i_mul10_add56_conv_sel_x_b_1(DELAY,2723)
    redist83_bgTrunc_i_mul10_add56_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add56_conv_sel_x_b, xout => redist83_bgTrunc_i_mul10_add56_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add58_conv(ADD,568)@39
    i_mul10_add58_conv_a <= STD_LOGIC_VECTOR("0" & redist83_bgTrunc_i_mul10_add56_conv_sel_x_b_1_q);
    i_mul10_add58_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv221_vt_join_q);
    i_mul10_add58_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add58_conv_a) + UNSIGNED(i_mul10_add58_conv_b));
    i_mul10_add58_conv_q <= i_mul10_add58_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add58_conv_sel_x(BITSELECT,27)@39
    bgTrunc_i_mul10_add58_conv_sel_x_b <= i_mul10_add58_conv_q(31 downto 0);

    -- redist82_bgTrunc_i_mul10_add58_conv_sel_x_b_1(DELAY,2722)
    redist82_bgTrunc_i_mul10_add58_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add58_conv_sel_x_b, xout => redist82_bgTrunc_i_mul10_add58_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add60_conv(ADD,569)@40
    i_mul10_add60_conv_a <= STD_LOGIC_VECTOR("0" & redist82_bgTrunc_i_mul10_add58_conv_sel_x_b_1_q);
    i_mul10_add60_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv229_vt_join_q);
    i_mul10_add60_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add60_conv_a) + UNSIGNED(i_mul10_add60_conv_b));
    i_mul10_add60_conv_q <= i_mul10_add60_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add60_conv_sel_x(BITSELECT,28)@40
    bgTrunc_i_mul10_add60_conv_sel_x_b <= i_mul10_add60_conv_q(31 downto 0);

    -- redist81_bgTrunc_i_mul10_add60_conv_sel_x_b_1(DELAY,2721)
    redist81_bgTrunc_i_mul10_add60_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add60_conv_sel_x_b, xout => redist81_bgTrunc_i_mul10_add60_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul10_add62_conv(ADD,570)@41
    i_mul10_add62_conv_a <= STD_LOGIC_VECTOR("0" & redist81_bgTrunc_i_mul10_add60_conv_sel_x_b_1_q);
    i_mul10_add62_conv_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv232_vt_join_q);
    i_mul10_add62_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul10_add62_conv_a) + UNSIGNED(i_mul10_add62_conv_b));
    i_mul10_add62_conv_q <= i_mul10_add62_conv_o(32 downto 0);

    -- bgTrunc_i_mul10_add62_conv_sel_x(BITSELECT,29)@41
    bgTrunc_i_mul10_add62_conv_sel_x_b <= i_mul10_add62_conv_q(31 downto 0);

    -- redist79_bgTrunc_i_mul10_add62_conv_sel_x_b_1(DELAY,2719)
    redist79_bgTrunc_i_mul10_add62_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul10_add62_conv_sel_x_b, xout => redist79_bgTrunc_i_mul10_add62_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,504)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_syncbuf_n_elem_sync_buffer92_conv(BLACKBOX,637)@0
    -- in in_i_dependence@41
    -- in in_valid_in@41
    -- out out_buffer_out@41
    -- out out_valid_out@41
    thei_syncbuf_n_elem_sync_buffer92_conv : i_syncbuf_n_elem_sync_buffer92_conv233
    PORT MAP (
        in_buffer_in => in_N_elem,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist76_sync_in_aunroll_x_in_i_valid_28_q,
        out_buffer_out => i_syncbuf_n_elem_sync_buffer92_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add_conv(ADD,524)@41
    i_add_conv_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_n_elem_sync_buffer92_conv_out_buffer_out);
    i_add_conv_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_conv_a) + UNSIGNED(i_add_conv_b));
    i_add_conv_q <= i_add_conv_o(32 downto 0);

    -- bgTrunc_i_add_conv_sel_x(BITSELECT,2)@41
    bgTrunc_i_add_conv_sel_x_b <= i_add_conv_q(31 downto 0);

    -- redist101_bgTrunc_i_add_conv_sel_x_b_1(DELAY,2741)
    redist101_bgTrunc_i_add_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add_conv_sel_x_b, xout => redist101_bgTrunc_i_add_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub_conv(ADD,609)@42
    i_sub_conv_a <= STD_LOGIC_VECTOR("0" & redist101_bgTrunc_i_add_conv_sel_x_b_1_q);
    i_sub_conv_b <= STD_LOGIC_VECTOR("0" & redist79_bgTrunc_i_mul10_add62_conv_sel_x_b_1_q);
    i_sub_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_conv_a) + UNSIGNED(i_sub_conv_b));
    i_sub_conv_q <= i_sub_conv_o(32 downto 0);

    -- bgTrunc_i_sub_conv_sel_x(BITSELECT,31)@42
    bgTrunc_i_sub_conv_sel_x_b <= i_sub_conv_q(31 downto 0);

    -- redist78_bgTrunc_i_sub_conv_sel_x_b_1(DELAY,2718)
    redist78_bgTrunc_i_sub_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub_conv_sel_x_b, xout => redist78_bgTrunc_i_sub_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- redist80_bgTrunc_i_mul10_add62_conv_sel_x_b_2(DELAY,2720)
    redist80_bgTrunc_i_mul10_add62_conv_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist79_bgTrunc_i_mul10_add62_conv_sel_x_b_1_q, xout => redist80_bgTrunc_i_mul10_add62_conv_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,462)@43
    out_c0_exi3_0 <= GND_q;
    out_c0_exi3_1 <= redist80_bgTrunc_i_mul10_add62_conv_sel_x_b_2_q;
    out_c0_exi3_2 <= redist78_bgTrunc_i_sub_conv_sel_x_b_1_q;
    out_c0_exi3_3 <= i_cmp22_conv_c;
    out_o_valid <= redist77_sync_in_aunroll_x_in_i_valid_30_q;

END normal;
