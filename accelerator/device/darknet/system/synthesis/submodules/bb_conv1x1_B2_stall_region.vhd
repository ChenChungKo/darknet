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

-- VHDL created from bb_conv1x1_B2_stall_region
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

entity bb_conv1x1_B2_stall_region is
    port (
        in_unnamed_conv1x12_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x12_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x12_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x12_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x12_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x12_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x12_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x12_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x12_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x12_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x12_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe114054 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe17 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe255 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe362 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe464 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe565 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe117 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe126 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe134 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe242 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01053 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18 : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp_17 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
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
        out_unnamed_conv1x10 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_input_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv1x11_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x11_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x11_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x11_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x11_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x11_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_filter_weight : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B2_stall_region;

architecture normal of bb_conv1x1_B2_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv1x1_B2_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_data_in_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_data_out_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1 is
        port (
            in_c0_eni3_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni3_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni3_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni3_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_im : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit147_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit147_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1 is
        port (
            in_c1_eni4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni4_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_eni4_2 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_eni4_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni4_4 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit153_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit153_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_conv1x11_conv1x1291 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x11_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x11_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_conv1x12_conv1x1295 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x12_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x12_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_filter_weight_sync_buffer_conv1x1277 is
        port (
            in_buffer_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_input_channels_sync_buffer74_conv1x1279 is
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


    component acl_data_fifo is
        generic (
            DEPTH : INTEGER := 0;
            DATA_WIDTH : INTEGER := 32;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0;
            IMPL : STRING := "ram"
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            data_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            valid_out : out std_logic;
            stall_out : out std_logic;
            data_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            full : out std_logic;
            almost_full : out std_logic
        );
    end component;


















    component acl_valid_fifo_counter is
        generic (
            DEPTH : INTEGER := 0;
            ASYNC_RESET : INTEGER := 1;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            valid_out : out std_logic;
            stall_out : out std_logic;
            full : out std_logic
        );
    end component;



    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_inc_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_data_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom32_conv1x1_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_out_c0_exit147_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_out_c1_exit153_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add_ptr_sum_conv1x1_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr_sum_conv1x1_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr_sum_conv1x1_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr_sum_conv1x1_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_exitcond_conv1x1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_guard_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_load_unnamed_conv1x11_conv1x1_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_conv1x11_conv1x1_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1x11_conv1x1_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_load_unnamed_conv1x12_conv1x1_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_conv1x12_conv1x1_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1x12_conv1x1_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_syncbuf_filter_weight_sync_buffer_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_filter_weight_sync_buffer_conv1x1_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_filter_weight_sync_buffer_conv1x1_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_input_channels_sync_buffer74_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_input_channels_sync_buffer74_conv1x1_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_input_channels_sync_buffer74_conv1x1_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv1x1297_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_conv1x1_B2_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (324 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_f : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_i : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_j : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_k : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_l : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_m : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv1x1_B2_merge_reg_aunroll_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_conv1x11_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_conv1x11_conv1x1_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_conv1x12_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_conv1x12_conv1x1_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_filter_weight_sync_buffer_conv1x1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_filter_weight_sync_buffer_conv1x1_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_syncbuf_input_channels_sync_buffer74_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_input_channels_sync_buffer74_conv1x1_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (324 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_h : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_stall_entry_i : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_j : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_k : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_l : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_m : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_n : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_or14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv1x1_B2_merge_reg_aunroll_x_V15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add_ptr_sum_conv1x1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add_ptr_sum_conv1x1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add_ptr_sum_conv1x1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add_ptr_sum_conv1x1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_conv1x1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_conv1x1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_conv1x1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_conv1x1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_conv1x1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_conv1x1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond_conv1x1_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond_conv1x1_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond_conv1x1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond_conv1x1_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond_conv1x1_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond_conv1x1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond_conv1x1_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond_conv1x1_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond_conv1x1_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_data0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_D0 : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- bubble_join_conv1x1_B2_merge_reg_aunroll_x(BITJOIN,136)
    bubble_join_conv1x1_B2_merge_reg_aunroll_x_q <= conv1x1_B2_merge_reg_aunroll_x_out_data_out_12 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_11 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_10 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_9 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_8 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_7 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_6 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_5 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_4 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_3 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_2 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_1 & conv1x1_B2_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_conv1x1_B2_merge_reg_aunroll_x(BITSELECT,137)
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(31 downto 0));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(63 downto 32));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(127 downto 64));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(191 downto 128));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(223 downto 192));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(255 downto 224));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(256 downto 256));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_i <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(288 downto 257));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_j <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(320 downto 289));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_k <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(321 downto 321));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_l <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(322 downto 322));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_m <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(323 downto 323));
    bubble_select_conv1x1_B2_merge_reg_aunroll_x_n <= STD_LOGIC_VECTOR(bubble_join_conv1x1_B2_merge_reg_aunroll_x_q(324 downto 324));

    -- SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo(STALLENABLE,278)
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_fromReg0 <= (others => '0');
            SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_fromReg0 <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_toReg0;
            -- Succesor 1
            SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_fromReg1 <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_consumed0 <= (not (SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_backStall) and SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_wireValid) or SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_fromReg0;
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_consumed1 <= (not (redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_out) and SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_wireValid) or SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_fromReg1;
    -- Consuming
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_StallValid <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_backStall and SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_wireValid;
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_toReg0 <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_StallValid and SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_consumed0;
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_toReg1 <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_StallValid and SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_or0 <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_consumed0;
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_wireStall <= not (SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_consumed1 and SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_or0);
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_backStall <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_V0 <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_wireValid and not (SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_fromReg0);
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_V1 <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_wireValid and not (SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_wireValid <= redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_out;

    -- redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo(STALLFIFO,126)
    redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V12;
    redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_in <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_backStall;
    redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_k;
    redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_in_bitsignaltemp <= redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_in(0);
    redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_in_bitsignaltemp <= redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_in(0);
    redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_out(0) <= redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_out_bitsignaltemp;
    redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_out(0) <= redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_out_bitsignaltemp;
    theredist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 143,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_in_bitsignaltemp,
        stall_in => redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_k,
        valid_out => redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_valid_out_bitsignaltemp,
        stall_out => redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_out_bitsignaltemp,
        data_out => redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo(BITJOIN,174)
    bubble_join_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_q <= redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_data_out;

    -- bubble_select_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo(BITSELECT,175)
    bubble_select_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_q(63 downto 0));

    -- bubble_join_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo(BITJOIN,165)
    bubble_join_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_q <= redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_data_out;

    -- bubble_select_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo(BITSELECT,166)
    bubble_select_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_q(31 downto 0));

    -- i_idxprom32_conv1x1_sel_x(BITSELECT,35)@13
    i_idxprom32_conv1x1_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(bubble_select_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_b(31 downto 0)), 64)));

    -- i_add_ptr_sum_conv1x1(ADD,46)@13
    i_add_ptr_sum_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_idxprom32_conv1x1_sel_x_b);
    i_add_ptr_sum_conv1x1_b <= STD_LOGIC_VECTOR("0" & bubble_select_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_b);
    i_add_ptr_sum_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_ptr_sum_conv1x1_a) + UNSIGNED(i_add_ptr_sum_conv1x1_b));
    i_add_ptr_sum_conv1x1_q <= i_add_ptr_sum_conv1x1_o(64 downto 0);

    -- bgTrunc_i_add_ptr_sum_conv1x1_sel_x(BITSELECT,2)@13
    bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b <= i_add_ptr_sum_conv1x1_q(63 downto 0);

    -- SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0(STALLENABLE,291)
    -- Valid signal propagation
    SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_V0 <= SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_s_tv_0 <= SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_backStall and SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backEN <= not (SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_v_s_0 <= SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backEN and SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_V;
    -- Backward Stall generation
    SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backStall <= not (SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backEN);
    SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backEN = "0") THEN
                SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_R_v_0 <= SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_R_v_0 and SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_R_v_0 <= SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0(STALLREG,408)
    SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_valid <= (others => '0');
            SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_valid <= SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backStall and (SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_valid or SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_i_valid);

            IF (SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_data0 <= STD_LOGIC_VECTOR(bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_i_valid <= SE_i_add_ptr_sum_conv1x1_V0;
    -- Stall signal propagation
    SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backStall <= SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_valid or not (SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_i_valid);

    -- Valid
    SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_V <= SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_valid WHEN SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_valid = "1" ELSE SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_i_valid;

    SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_D0 <= SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_data0 WHEN SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_r_valid = "1" ELSE bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b;

    -- SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo(STALLENABLE,258)
    -- Valid signal propagation
    SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_V0 <= SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_backStall <= SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backStall or not (SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_wireValid <= redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_out;

    -- redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo(STALLFIFO,116)
    redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_in <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_V1;
    redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_in <= SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_backStall;
    redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_data_in <= bubble_select_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_b;
    redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_in_bitsignaltemp <= redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_in(0);
    redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_in_bitsignaltemp <= redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_in(0);
    redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_out(0) <= redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_out_bitsignaltemp;
    redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_out(0) <= redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_out_bitsignaltemp;
    theredist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 155,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_in_bitsignaltemp,
        stall_in => redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_b,
        valid_out => redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_valid_out_bitsignaltemp,
        stall_out => redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_out_bitsignaltemp,
        data_out => redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo(STALLENABLE,256)
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_fromReg0 <= (others => '0');
            SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_fromReg0 <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_toReg0;
            -- Succesor 1
            SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_fromReg1 <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_consumed0 <= (not (SE_i_add_ptr_sum_conv1x1_backStall) and SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_wireValid) or SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_fromReg0;
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_consumed1 <= (not (redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_stall_out) and SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_wireValid) or SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_fromReg1;
    -- Consuming
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_StallValid <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_backStall and SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_wireValid;
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_toReg0 <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_StallValid and SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_consumed0;
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_toReg1 <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_StallValid and SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_or0 <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_consumed0;
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_wireStall <= not (SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_consumed1 and SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_or0);
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_backStall <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_V0 <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_wireValid and not (SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_fromReg0);
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_V1 <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_wireValid and not (SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_wireValid <= redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_out;

    -- SE_i_add_ptr_sum_conv1x1(STALLENABLE,228)
    -- Valid signal propagation
    SE_i_add_ptr_sum_conv1x1_V0 <= SE_i_add_ptr_sum_conv1x1_wireValid;
    -- Backward Stall generation
    SE_i_add_ptr_sum_conv1x1_backStall <= SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backStall or not (SE_i_add_ptr_sum_conv1x1_wireValid);
    -- Computing multiple Valid(s)
    SE_i_add_ptr_sum_conv1x1_and0 <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_V0;
    SE_i_add_ptr_sum_conv1x1_wireValid <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_V0 and SE_i_add_ptr_sum_conv1x1_and0;

    -- SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo(STALLENABLE,262)
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_fromReg0 <= (others => '0');
            SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_fromReg0 <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_toReg0;
            -- Succesor 1
            SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_fromReg1 <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_consumed0 <= (not (SE_i_add_ptr_sum_conv1x1_backStall) and SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_wireValid) or SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_fromReg0;
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_consumed1 <= (not (redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_out) and SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_wireValid) or SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_fromReg1;
    -- Consuming
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_StallValid <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_backStall and SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_wireValid;
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_toReg0 <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_StallValid and SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_consumed0;
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_toReg1 <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_StallValid and SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_or0 <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_consumed0;
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_wireStall <= not (SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_consumed1 and SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_or0);
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_backStall <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_V0 <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_wireValid and not (SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_fromReg0);
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_V1 <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_wireValid and not (SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_wireValid <= redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_out;

    -- redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo(STALLFIFO,118)
    redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V5;
    redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_in <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_backStall;
    redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_d;
    redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_in_bitsignaltemp <= redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_in(0);
    redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_in_bitsignaltemp <= redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_in(0);
    redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_out(0) <= redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_out_bitsignaltemp;
    redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_out(0) <= redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_out_bitsignaltemp;
    theredist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 13,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_in_bitsignaltemp,
        stall_in => redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_d,
        valid_out => redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_valid_out_bitsignaltemp,
        stall_out => redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_out_bitsignaltemp,
        data_out => redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo(STALLFIFO,117)
    redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V4;
    redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_in <= SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_backStall;
    redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_c;
    redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_in_bitsignaltemp <= redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_in(0);
    redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_in_bitsignaltemp <= redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_in(0);
    redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_out(0) <= redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_out_bitsignaltemp;
    redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_out(0) <= redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_out_bitsignaltemp;
    theredist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 143,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_in_bitsignaltemp,
        stall_in => redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_c,
        valid_out => redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_out_bitsignaltemp,
        stall_out => redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_out_bitsignaltemp,
        data_out => redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo(STALLFIFO,115)
    redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V3;
    redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_in <= SE_out_redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_backStall;
    redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_b;
    redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_in_bitsignaltemp <= redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_in(0);
    redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_in_bitsignaltemp <= redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_in(0);
    redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_out(0) <= redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_out_bitsignaltemp;
    redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_out(0) <= redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_out_bitsignaltemp;
    theredist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 13,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_b,
        valid_out => redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_out_bitsignaltemp,
        data_out => redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x(BLACKBOX,36)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit147_0@15
    -- out out_c0_exit147_1@15
    -- out out_o_stall@20000000
    -- out out_o_valid@15
    thei_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x : i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1
    PORT MAP (
        in_c0_eni3_0 => GND_q,
        in_c0_eni3_1 => bubble_select_conv1x1_B2_merge_reg_aunroll_x_b,
        in_c0_eni3_2 => bubble_select_conv1x1_B2_merge_reg_aunroll_x_g,
        in_c0_eni3_3 => bubble_select_conv1x1_B2_merge_reg_aunroll_x_j,
        in_i_stall => SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_backStall,
        in_i_valid => SE_out_conv1x1_B2_merge_reg_aunroll_x_V2,
        in_input_im => in_input_im,
        in_input_size => in_input_size,
        out_c0_exit147_1 => i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_out_c0_exit147_1,
        out_o_stall => i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1(STALLENABLE,297)
    -- Valid signal propagation
    SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_V0 <= SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_backStall <= i_syncbuf_filter_weight_sync_buffer_conv1x1_out_stall_out or not (SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_wireValid <= bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_out;

    -- bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg(STALLFIFO,402)
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V0;
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_in <= SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_backStall;
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp <= bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_in(0);
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp <= bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_in(0);
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_out(0) <= bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_out(0) <= bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    thebubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 15,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,241)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= conv1x1_B2_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,161)
    bubble_join_stall_entry_q <= in_tmp_17 & in_k_18 & in_j_01053 & in_c3_exe242 & in_c3_exe134 & in_c2_exe126 & in_c1_exe117 & in_c0_exe565 & in_c0_exe464 & in_c0_exe362 & in_c0_exe255 & in_c0_exe17 & in_c0_exe114054;

    -- bubble_select_stall_entry(BITSELECT,162)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(95 downto 32));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(96 downto 96));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(97 downto 97));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(98 downto 98));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(99 downto 99));
    bubble_select_stall_entry_h <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(163 downto 100));
    bubble_select_stall_entry_i <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(195 downto 164));
    bubble_select_stall_entry_j <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(227 downto 196));
    bubble_select_stall_entry_k <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(228 downto 228));
    bubble_select_stall_entry_l <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(260 downto 229));
    bubble_select_stall_entry_m <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(292 downto 261));
    bubble_select_stall_entry_n <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(324 downto 293));

    -- conv1x1_B2_merge_reg_aunroll_x(BLACKBOX,4)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_data_out_2@1
    -- out out_data_out_3@1
    -- out out_data_out_4@1
    -- out out_data_out_5@1
    -- out out_data_out_6@1
    -- out out_data_out_7@1
    -- out out_data_out_8@1
    -- out out_data_out_9@1
    -- out out_data_out_10@1
    -- out out_data_out_11@1
    -- out out_data_out_12@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theconv1x1_B2_merge_reg_aunroll_x : conv1x1_B2_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_m,
        in_data_in_1 => bubble_select_stall_entry_n,
        in_data_in_2 => bubble_select_stall_entry_c,
        in_data_in_3 => bubble_select_stall_entry_h,
        in_data_in_4 => bubble_select_stall_entry_i,
        in_data_in_5 => bubble_select_stall_entry_j,
        in_data_in_6 => bubble_select_stall_entry_k,
        in_data_in_7 => bubble_select_stall_entry_l,
        in_data_in_8 => bubble_select_stall_entry_b,
        in_data_in_9 => bubble_select_stall_entry_d,
        in_data_in_10 => bubble_select_stall_entry_e,
        in_data_in_11 => bubble_select_stall_entry_f,
        in_data_in_12 => bubble_select_stall_entry_g,
        in_stall_in => SE_out_conv1x1_B2_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_3,
        out_data_out_4 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_4,
        out_data_out_5 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_5,
        out_data_out_6 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_6,
        out_data_out_7 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_7,
        out_data_out_8 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_8,
        out_data_out_9 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_9,
        out_data_out_10 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_10,
        out_data_out_11 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_11,
        out_data_out_12 => conv1x1_B2_merge_reg_aunroll_x_out_data_out_12,
        out_stall_out => conv1x1_B2_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => conv1x1_B2_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_conv1x1_B2_merge_reg_aunroll_x(STALLENABLE,218)
    SE_out_conv1x1_B2_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg2 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg3 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg4 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg5 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg6 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg7 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg8 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg9 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg10 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg11 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg12 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg13 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg14 <= (others => '0');
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg15 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg2 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg3 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg4 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg5 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg5;
            -- Succesor 6
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg6 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg6;
            -- Succesor 7
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg7 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg7;
            -- Succesor 8
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg8 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg8;
            -- Succesor 9
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg9 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg9;
            -- Succesor 10
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg10 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg10;
            -- Succesor 11
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg11 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg11;
            -- Succesor 12
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg12 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg12;
            -- Succesor 13
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg13 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg13;
            -- Succesor 14
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg14 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg14;
            -- Succesor 15
            SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg15 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg15;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed0 <= (not (bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_reg_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg0;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed1 <= (not (bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg1;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed2 <= (not (i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_out_o_stall) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg2;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed3 <= (not (redist1_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_12_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg3;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed4 <= (not (redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg4;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed5 <= (not (redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg5;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed6 <= (not (redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg6;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed7 <= (not (redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg7;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed8 <= (not (redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg8;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed9 <= (not (redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg9;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed10 <= (not (redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg10;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed11 <= (not (redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg11;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed12 <= (not (redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg12;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed13 <= (not (redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg13;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed14 <= (not (redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg14;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed15 <= (not (redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_out) and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid) or SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg15;
    -- Consuming
    SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid <= SE_out_conv1x1_B2_merge_reg_aunroll_x_backStall and SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg0 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed0;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg1 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed1;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg2 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed2;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg3 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed3;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg4 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed4;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg5 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed5;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg6 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed6;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg7 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed7;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg8 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed8;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg9 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed9;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg10 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed10;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg11 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed11;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg12 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed12;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg13 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed13;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg14 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed14;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_toReg15 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_StallValid and SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed15;
    -- Backward Stall generation
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or0 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed0;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or1 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed1 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or0;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or2 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed2 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or1;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or3 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed3 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or2;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or4 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed4 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or3;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or5 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed5 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or4;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or6 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed6 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or5;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or7 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed7 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or6;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or8 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed8 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or7;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or9 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed9 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or8;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or10 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed10 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or9;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or11 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed11 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or10;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or12 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed12 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or11;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or13 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed13 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or12;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_or14 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed14 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or13;
    SE_out_conv1x1_B2_merge_reg_aunroll_x_wireStall <= not (SE_out_conv1x1_B2_merge_reg_aunroll_x_consumed15 and SE_out_conv1x1_B2_merge_reg_aunroll_x_or14);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_backStall <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V0 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg0);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V1 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg1);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V2 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg2);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V3 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg3);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V4 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg4);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V5 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg5);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V6 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg6);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V7 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg7);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V8 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg8);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V9 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg9);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V10 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg10);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V11 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg11);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V12 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg12);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V13 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg13);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V14 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg14);
    SE_out_conv1x1_B2_merge_reg_aunroll_x_V15 <= SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid and not (SE_out_conv1x1_B2_merge_reg_aunroll_x_fromReg15);
    -- Computing multiple Valid(s)
    SE_out_conv1x1_B2_merge_reg_aunroll_x_wireValid <= conv1x1_B2_merge_reg_aunroll_x_out_valid_out;

    -- bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg(STALLFIFO,403)
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V1;
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_in <= SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_backStall;
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp <= bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_in(0);
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp <= bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_in(0);
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_out(0) <= bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_out(0) <= bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    thebubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 168,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2(STALLENABLE,299)
    -- Valid signal propagation
    SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_V0 <= SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_backStall <= i_syncbuf_input_channels_sync_buffer74_conv1x1_out_stall_out or not (SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_wireValid <= bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_reg_valid_out;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_syncbuf_input_channels_sync_buffer74_conv1x1(BLACKBOX,55)@168
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_input_channels_sync_buffer74_conv1x1 : i_syncbuf_input_channels_sync_buffer74_conv1x1279
    PORT MAP (
        in_buffer_in => in_input_channels,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_backStall,
        in_valid_in => SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_2_V0,
        out_buffer_out => i_syncbuf_input_channels_sync_buffer74_conv1x1_out_buffer_out,
        out_stall_out => i_syncbuf_input_channels_sync_buffer74_conv1x1_out_stall_out,
        out_valid_out => i_syncbuf_input_channels_sync_buffer74_conv1x1_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_syncbuf_input_channels_sync_buffer74_conv1x1(BITJOIN,157)
    bubble_join_i_syncbuf_input_channels_sync_buffer74_conv1x1_q <= i_syncbuf_input_channels_sync_buffer74_conv1x1_out_buffer_out;

    -- bubble_select_i_syncbuf_input_channels_sync_buffer74_conv1x1(BITSELECT,158)
    bubble_select_i_syncbuf_input_channels_sync_buffer74_conv1x1_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_input_channels_sync_buffer74_conv1x1_q(31 downto 0));

    -- redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0(REG,132)
    redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backEN = "1") THEN
                redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg(STALLREG,405)
    SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_r_valid <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_r_valid <= bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backStall and (SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_r_valid or SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_i_valid);

            IF (SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_r_valid = "0") THEN
                -- Data(s)
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_i_valid <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_V0;
    -- Stall signal propagation
    SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backStall <= SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_r_valid or not (SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_i_valid);

    -- Valid
    SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_V <= SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_r_valid WHEN SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_r_valid = "1" ELSE SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_i_valid;


    -- SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1(STALLENABLE,239)
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_fromReg0 <= (others => '0');
            SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_fromReg0 <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_toReg0;
            -- Succesor 1
            SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_fromReg1 <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_consumed0 <= (not (SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backStall) and SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_wireValid) or SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_fromReg0;
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_consumed1 <= (not (SR_SE_i_exitcond_conv1x1_backStall) and SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_wireValid) or SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_fromReg1;
    -- Consuming
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_StallValid <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_backStall and SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_wireValid;
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_toReg0 <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_StallValid and SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_consumed0;
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_toReg1 <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_StallValid and SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_consumed1;
    -- Backward Stall generation
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_or0 <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_consumed0;
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_wireStall <= not (SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_consumed1 and SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_or0);
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_backStall <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_wireStall;
    -- Valid signal propagation
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_V0 <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_wireValid and not (SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_fromReg0);
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_V1 <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_wireValid and not (SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_wireValid <= i_syncbuf_input_channels_sync_buffer74_conv1x1_out_valid_out;

    -- SR_SE_i_exitcond_conv1x1(STALLREG,407)
    SR_SE_i_exitcond_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_exitcond_conv1x1_r_valid <= (others => '0');
            SR_SE_i_exitcond_conv1x1_r_data0 <= (others => '-');
            SR_SE_i_exitcond_conv1x1_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_exitcond_conv1x1_r_valid <= SE_i_exitcond_conv1x1_backStall and (SR_SE_i_exitcond_conv1x1_r_valid or SR_SE_i_exitcond_conv1x1_i_valid);

            IF (SR_SE_i_exitcond_conv1x1_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_exitcond_conv1x1_r_data0 <= STD_LOGIC_VECTOR(redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_q);
                SR_SE_i_exitcond_conv1x1_r_data1 <= STD_LOGIC_VECTOR(bubble_select_i_syncbuf_input_channels_sync_buffer74_conv1x1_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_exitcond_conv1x1_and0 <= SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_V0;
    SR_SE_i_exitcond_conv1x1_i_valid <= SE_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_V1 and SR_SE_i_exitcond_conv1x1_and0;
    -- Stall signal propagation
    SR_SE_i_exitcond_conv1x1_backStall <= SR_SE_i_exitcond_conv1x1_r_valid or not (SR_SE_i_exitcond_conv1x1_i_valid);

    -- Valid
    SR_SE_i_exitcond_conv1x1_V <= SR_SE_i_exitcond_conv1x1_r_valid WHEN SR_SE_i_exitcond_conv1x1_r_valid = "1" ELSE SR_SE_i_exitcond_conv1x1_i_valid;

    -- Data0
    SR_SE_i_exitcond_conv1x1_D0 <= SR_SE_i_exitcond_conv1x1_r_data0 WHEN SR_SE_i_exitcond_conv1x1_r_valid = "1" ELSE redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_q;
    -- Data1
    SR_SE_i_exitcond_conv1x1_D1 <= SR_SE_i_exitcond_conv1x1_r_data1 WHEN SR_SE_i_exitcond_conv1x1_r_valid = "1" ELSE bubble_select_i_syncbuf_input_channels_sync_buffer74_conv1x1_b;

    -- c_i32_1gr(CONSTANT,41)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- bubble_join_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo(BITJOIN,168)
    bubble_join_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_q <= redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_data_out;

    -- bubble_select_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo(BITSELECT,169)
    bubble_select_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_q(31 downto 0));

    -- i_inc_conv1x1(ADD,51)@167
    i_inc_conv1x1_a <= STD_LOGIC_VECTOR("0" & bubble_select_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_b);
    i_inc_conv1x1_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_conv1x1_a) + UNSIGNED(i_inc_conv1x1_b));
    i_inc_conv1x1_q <= i_inc_conv1x1_o(32 downto 0);

    -- bgTrunc_i_inc_conv1x1_sel_x(BITSELECT,3)@167
    bgTrunc_i_inc_conv1x1_sel_x_b <= i_inc_conv1x1_q(31 downto 0);

    -- SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0(STALLREG,406)
    SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_valid <= (others => '0');
            SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_valid <= SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backStall and (SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_valid or SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_i_valid);

            IF (SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_data0 <= STD_LOGIC_VECTOR(bgTrunc_i_inc_conv1x1_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_i_valid <= SE_out_redist2_conv1x1_B2_merge_reg_aunroll_x_out_data_out_0_166_fifo_V0;
    -- Stall signal propagation
    SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backStall <= SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_valid or not (SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_i_valid);

    -- Valid
    SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_V <= SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_valid WHEN SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_valid = "1" ELSE SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_i_valid;

    SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_D0 <= SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_data0 WHEN SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_r_valid = "1" ELSE bgTrunc_i_inc_conv1x1_sel_x_b;

    -- SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0(STALLENABLE,289)
    -- Valid signal propagation
    SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_V0 <= SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_0;
    SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_V1 <= SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_s_tv_0 <= SR_SE_i_exitcond_conv1x1_backStall and SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_0;
    SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_s_tv_1 <= SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_backStall and SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_or0 <= SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_s_tv_0;
    SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backEN <= not (SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_s_tv_1 or SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_v_s_0 <= SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backEN and SR_SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_V;
    -- Backward Stall generation
    SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backStall <= not (SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backEN);
    SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_0 <= (others => '0');
            SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backEN = "0") THEN
                SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_0 <= SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_0 and SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_0 <= SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_v_s_0;
            END IF;

            IF (SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_backEN = "0") THEN
                SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_1 <= SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_1 and SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_s_tv_1;
            ELSE
                SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_R_v_1 <= SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0(STALLENABLE,290)
    -- Valid signal propagation
    SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_V0 <= SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_R_v_0;
    -- Stall signal propagation
    SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_s_tv_0 <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall and SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_R_v_0;
    -- Backward Enable generation
    SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_backEN <= not (SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_v_s_0 <= SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_backEN and SE_redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_V1;
    -- Backward Stall generation
    SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_backStall <= not (SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_v_s_0);
    SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_backEN = "0") THEN
                SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_R_v_0 <= SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_R_v_0 and SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_s_tv_0;
            ELSE
                SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_R_v_0 <= SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo(BITJOIN,171)
    bubble_join_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_q <= redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_data_out;

    -- bubble_select_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo(BITSELECT,172)
    bubble_select_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_q(31 downto 0));

    -- bubble_join_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo(BITJOIN,198)
    bubble_join_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_q <= redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_data_out;

    -- bubble_select_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo(BITSELECT,199)
    bubble_select_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_q(0 downto 0));

    -- bubble_join_i_load_unnamed_conv1x12_conv1x1(BITJOIN,151)
    bubble_join_i_load_unnamed_conv1x12_conv1x1_q <= i_load_unnamed_conv1x12_conv1x1_out_o_readdata;

    -- bubble_select_i_load_unnamed_conv1x12_conv1x1(BITSELECT,152)
    bubble_select_i_load_unnamed_conv1x12_conv1x1_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_conv1x12_conv1x1_q(31 downto 0));

    -- bubble_join_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x(BITJOIN,141)
    bubble_join_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_q <= i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_out_c0_exit147_1;

    -- bubble_select_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x(BITSELECT,142)
    bubble_select_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_q(63 downto 0));

    -- i_load_unnamed_conv1x11_conv1x1(BLACKBOX,52)@15
    -- in in_i_stall@20000000
    -- out out_o_readdata@143
    -- out out_o_stall@20000000
    -- out out_o_valid@143
    -- out out_unnamed_conv1x11_avm_address@20000000
    -- out out_unnamed_conv1x11_avm_burstcount@20000000
    -- out out_unnamed_conv1x11_avm_byteenable@20000000
    -- out out_unnamed_conv1x11_avm_enable@20000000
    -- out out_unnamed_conv1x11_avm_read@20000000
    -- out out_unnamed_conv1x11_avm_write@20000000
    -- out out_unnamed_conv1x11_avm_writedata@20000000
    thei_load_unnamed_conv1x11_conv1x1 : i_load_unnamed_conv1x11_conv1x1291
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_b,
        in_i_predicate => bubble_select_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_b,
        in_i_stall => SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_backStall,
        in_i_valid => SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_V0,
        in_unnamed_conv1x11_avm_readdata => in_unnamed_conv1x11_avm_readdata,
        in_unnamed_conv1x11_avm_readdatavalid => in_unnamed_conv1x11_avm_readdatavalid,
        in_unnamed_conv1x11_avm_waitrequest => in_unnamed_conv1x11_avm_waitrequest,
        in_unnamed_conv1x11_avm_writeack => in_unnamed_conv1x11_avm_writeack,
        out_o_readdata => i_load_unnamed_conv1x11_conv1x1_out_o_readdata,
        out_o_stall => i_load_unnamed_conv1x11_conv1x1_out_o_stall,
        out_o_valid => i_load_unnamed_conv1x11_conv1x1_out_o_valid,
        out_unnamed_conv1x11_avm_address => i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_address,
        out_unnamed_conv1x11_avm_burstcount => i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_burstcount,
        out_unnamed_conv1x11_avm_byteenable => i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_byteenable,
        out_unnamed_conv1x11_avm_enable => i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_enable,
        out_unnamed_conv1x11_avm_read => i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_read,
        out_unnamed_conv1x11_avm_write => i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_write,
        out_unnamed_conv1x11_avm_writedata => i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_load_unnamed_conv1x11_conv1x1(BITJOIN,148)
    bubble_join_i_load_unnamed_conv1x11_conv1x1_q <= i_load_unnamed_conv1x11_conv1x1_out_o_readdata;

    -- bubble_select_i_load_unnamed_conv1x11_conv1x1(BITSELECT,149)
    bubble_select_i_load_unnamed_conv1x11_conv1x1_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_conv1x11_conv1x1_q(31 downto 0));

    -- i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x(BLACKBOX,37)@143
    -- in in_i_stall@20000000
    -- out out_c1_exit153_0@169
    -- out out_c1_exit153_1@169
    -- out out_o_stall@20000000
    -- out out_o_valid@169
    thei_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x : i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1
    PORT MAP (
        in_c1_eni4_0 => GND_q,
        in_c1_eni4_1 => bubble_select_i_load_unnamed_conv1x11_conv1x1_b,
        in_c1_eni4_2 => bubble_select_i_load_unnamed_conv1x12_conv1x1_b,
        in_c1_eni4_3 => bubble_select_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_b,
        in_c1_eni4_4 => bubble_select_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_b,
        in_i_stall => SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall,
        in_i_valid => SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_V0,
        out_c1_exit153_1 => i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_out_c1_exit153_1,
        out_o_stall => i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_i_exitcond_conv1x1(STALLENABLE,229)
    -- Valid signal propagation
    SE_i_exitcond_conv1x1_V0 <= SE_i_exitcond_conv1x1_R_v_0;
    -- Stall signal propagation
    SE_i_exitcond_conv1x1_s_tv_0 <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall and SE_i_exitcond_conv1x1_R_v_0;
    -- Backward Enable generation
    SE_i_exitcond_conv1x1_backEN <= not (SE_i_exitcond_conv1x1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_exitcond_conv1x1_v_s_0 <= SE_i_exitcond_conv1x1_backEN and SR_SE_i_exitcond_conv1x1_V;
    -- Backward Stall generation
    SE_i_exitcond_conv1x1_backStall <= not (SE_i_exitcond_conv1x1_backEN);
    SE_i_exitcond_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_exitcond_conv1x1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_exitcond_conv1x1_backEN = "0") THEN
                SE_i_exitcond_conv1x1_R_v_0 <= SE_i_exitcond_conv1x1_R_v_0 and SE_i_exitcond_conv1x1_s_tv_0;
            ELSE
                SE_i_exitcond_conv1x1_R_v_0 <= SE_i_exitcond_conv1x1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo(STALLFIFO,119)
    redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_in <= SE_out_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_V1;
    redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_data_in <= bubble_select_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_b;
    redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_in_bitsignaltemp <= redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_in(0);
    redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_in_bitsignaltemp <= redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_in(0);
    redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_out(0) <= redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_out_bitsignaltemp;
    redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_out(0) <= redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_out_bitsignaltemp;
    theredist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 157,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist4_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_12_fifo_b,
        valid_out => redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_stall_out_bitsignaltemp,
        data_out => redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo(STALLFIFO,120)
    redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V6;
    redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_e;
    redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_in_bitsignaltemp <= redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_in(0);
    redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_in_bitsignaltemp <= redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_in(0);
    redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_out(0) <= redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_out_bitsignaltemp;
    redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_out(0) <= redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_out_bitsignaltemp;
    theredist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 169,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_e,
        valid_out => redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_stall_out_bitsignaltemp,
        data_out => redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo(STALLFIFO,121)
    redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V7;
    redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_f;
    redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_in_bitsignaltemp <= redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_in(0);
    redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_in_bitsignaltemp <= redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_in(0);
    redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_out(0) <= redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_out_bitsignaltemp;
    redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_out(0) <= redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_out_bitsignaltemp;
    theredist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 169,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_f,
        valid_out => redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_stall_out_bitsignaltemp,
        data_out => redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo(STALLFIFO,122)
    redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V8;
    redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_g;
    redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_in_bitsignaltemp <= redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_in(0);
    redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_in_bitsignaltemp <= redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_in(0);
    redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_out(0) <= redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_out_bitsignaltemp;
    redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_out(0) <= redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_out_bitsignaltemp;
    theredist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 169,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_g,
        valid_out => redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_stall_out_bitsignaltemp,
        data_out => redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo(STALLFIFO,123)
    redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V9;
    redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_h;
    redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_in_bitsignaltemp <= redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_in(0);
    redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_in_bitsignaltemp <= redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_in(0);
    redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_out(0) <= redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_out_bitsignaltemp;
    redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_out(0) <= redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_out_bitsignaltemp;
    theredist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 169,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_h,
        valid_out => redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_stall_out_bitsignaltemp,
        data_out => redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo(STALLFIFO,124)
    redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V10;
    redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_i;
    redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_in_bitsignaltemp <= redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_in(0);
    redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_in_bitsignaltemp <= redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_in(0);
    redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_out(0) <= redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_out_bitsignaltemp;
    redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_out(0) <= redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_out_bitsignaltemp;
    theredist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 169,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_i,
        valid_out => redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_stall_out_bitsignaltemp,
        data_out => redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo(STALLFIFO,125)
    redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V11;
    redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_j;
    redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_in_bitsignaltemp <= redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_in(0);
    redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_in_bitsignaltemp <= redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_in(0);
    redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_out(0) <= redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_out_bitsignaltemp;
    redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_out(0) <= redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_out_bitsignaltemp;
    theredist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 169,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_j,
        valid_out => redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_stall_out_bitsignaltemp,
        data_out => redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo(STALLFIFO,127)
    redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_in <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_V1;
    redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_data_in <= bubble_select_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_b;
    redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_in_bitsignaltemp <= redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_in(0);
    redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_in_bitsignaltemp <= redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_in(0);
    redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_out(0) <= redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_out_bitsignaltemp;
    redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_out(0) <= redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_out_bitsignaltemp;
    theredist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 27,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_b,
        valid_out => redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_stall_out_bitsignaltemp,
        data_out => redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo(STALLFIFO,128)
    redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V13;
    redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_l;
    redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_in_bitsignaltemp <= redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_in(0);
    redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_in_bitsignaltemp <= redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_in(0);
    redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_out(0) <= redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_out_bitsignaltemp;
    redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_out(0) <= redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_out_bitsignaltemp;
    theredist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 169,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_l,
        valid_out => redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_stall_out_bitsignaltemp,
        data_out => redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo(STALLFIFO,129)
    redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V14;
    redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_m;
    redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_in_bitsignaltemp <= redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_in(0);
    redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_in_bitsignaltemp <= redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_in(0);
    redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_out(0) <= redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_out_bitsignaltemp;
    redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_out(0) <= redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_out_bitsignaltemp;
    theredist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 169,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_m,
        valid_out => redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_stall_out_bitsignaltemp,
        data_out => redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg(STALLENABLE,404)
    -- Valid signal propagation
    bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_V0 <= bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_s_tv_0 <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall and bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backEN <= not (bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_v_s_0 <= bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backEN and SR_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_V;
    -- Backward Stall generation
    bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backStall <= not (bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backEN);
    bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_backEN = "0") THEN
                bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_R_v_0 <= bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_R_v_0 and bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_s_tv_0;
            ELSE
                bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_R_v_0 <= bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1(STALLENABLE,327)
    -- Valid signal propagation
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_V0 <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall <= in_stall_in or not (SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and0 <= bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_reg_V0;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and1 <= redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and0;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and2 <= redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and1;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and3 <= redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and2;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and4 <= redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and3;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and5 <= redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and4;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and6 <= redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and5;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and7 <= redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and6;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and8 <= redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and7;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and9 <= redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and8;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and10 <= redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and9;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and11 <= redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_valid_out and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and10;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and12 <= SE_i_exitcond_conv1x1_V0 and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and11;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and13 <= i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_out_o_valid and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and12;
    SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_wireValid <= SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_V0 and SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_and13;

    -- redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo(STALLFIFO,131)
    redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_in <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_V2;
    redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_in <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_backStall;
    redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_data_in <= bubble_select_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_b;
    redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_in_bitsignaltemp <= redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_in(0);
    redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_in_bitsignaltemp <= redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_in(0);
    redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_out(0) <= redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_out_bitsignaltemp;
    redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_out(0) <= redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_out_bitsignaltemp;
    theredist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 155,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_in_bitsignaltemp,
        stall_in => redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_b,
        valid_out => redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_valid_out_bitsignaltemp,
        stall_out => redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_out_bitsignaltemp,
        data_out => redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x(STALLENABLE,225)
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_V0 <= SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_backStall <= i_load_unnamed_conv1x11_conv1x1_out_o_stall or not (SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_and0 <= i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_out_o_valid;
    SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_wireValid <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_V0 and SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_and0;

    -- redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo(STALLFIFO,130)
    redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_in <= SE_out_conv1x1_B2_merge_reg_aunroll_x_V15;
    redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_in <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_backStall;
    redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_data_in <= bubble_select_conv1x1_B2_merge_reg_aunroll_x_n;
    redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_in_bitsignaltemp <= redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_in(0);
    redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_in_bitsignaltemp <= redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_in(0);
    redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_out(0) <= redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_out_bitsignaltemp;
    redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_out(0) <= redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_out_bitsignaltemp;
    theredist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 15,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_in_bitsignaltemp,
        stall_in => redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv1x1_B2_merge_reg_aunroll_x_n,
        valid_out => redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_out_bitsignaltemp,
        stall_out => redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_stall_out_bitsignaltemp,
        data_out => redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo(STALLENABLE,286)
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg0 <= (others => '0');
            SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg1 <= (others => '0');
            SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg0 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_toReg0;
            -- Succesor 1
            SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg1 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_toReg1;
            -- Succesor 2
            SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg2 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed0 <= (not (SE_out_i_sfc_c0_for_body12_conv1x1_c0_enter143_conv1x1_aunroll_x_backStall) and SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireValid) or SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg0;
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed1 <= (not (SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_backStall) and SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireValid) or SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg1;
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed2 <= (not (redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_stall_out) and SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireValid) or SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg2;
    -- Consuming
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_StallValid <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_backStall and SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireValid;
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_toReg0 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_StallValid and SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed0;
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_toReg1 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_StallValid and SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed1;
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_toReg2 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_StallValid and SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed2;
    -- Backward Stall generation
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_or0 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed0;
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_or1 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed1 and SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_or0;
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireStall <= not (SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_consumed2 and SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_or1);
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_backStall <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_V0 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireValid and not (SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg0);
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_V1 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireValid and not (SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg1);
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_V2 <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireValid and not (SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_wireValid <= redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_valid_out;

    -- SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0(STALLENABLE,254)
    -- Valid signal propagation
    SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_V0 <= SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_s_tv_0 <= SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_backStall and SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_backEN <= not (SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_v_s_0 <= SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_backEN and SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_V0;
    -- Backward Stall generation
    SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_backStall <= not (SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_v_s_0);
    SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_R_v_0 <= SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_R_v_0 and SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_R_v_0 <= SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- i_syncbuf_filter_weight_sync_buffer_conv1x1(BLACKBOX,54)@15
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_filter_weight_sync_buffer_conv1x1 : i_syncbuf_filter_weight_sync_buffer_conv1x1277
    PORT MAP (
        in_buffer_in => in_filter_weight,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_backStall,
        in_valid_in => SE_out_bubble_out_conv1x1_B2_merge_reg_aunroll_x_1_V0,
        out_buffer_out => i_syncbuf_filter_weight_sync_buffer_conv1x1_out_buffer_out,
        out_stall_out => i_syncbuf_filter_weight_sync_buffer_conv1x1_out_stall_out,
        out_valid_out => i_syncbuf_filter_weight_sync_buffer_conv1x1_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1(STALLENABLE,237)
    -- Valid signal propagation
    SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_V0 <= SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_backStall <= i_load_unnamed_conv1x12_conv1x1_out_o_stall or not (SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_and0 <= i_syncbuf_filter_weight_sync_buffer_conv1x1_out_valid_out;
    SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_and1 <= SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_V0 and SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_and0;
    SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_wireValid <= SE_out_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_V1 and SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_and1;

    -- SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo(STALLENABLE,260)
    -- Valid signal propagation
    SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_V0 <= SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_backStall <= i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_out_o_stall or not (SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_and0 <= redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_valid_out;
    SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_and1 <= i_load_unnamed_conv1x12_conv1x1_out_o_valid and SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_and0;
    SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_and2 <= i_load_unnamed_conv1x11_conv1x1_out_o_valid and SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_and1;
    SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_wireValid <= SE_out_redist12_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_142_fifo_V0 and SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_and2;

    -- bubble_join_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo(BITJOIN,210)
    bubble_join_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_q <= redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_data_out;

    -- bubble_select_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo(BITSELECT,211)
    bubble_select_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_q(0 downto 0));

    -- i_arrayidx33_conv1x1_conv1x1294_mult_multconst_x(CONSTANT,29)
    i_arrayidx33_conv1x1_conv1x1294_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0(REG,134)
    redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_backEN = "1") THEN
                redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select(BITSELECT,92)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_b <= redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_q(17 downto 0);
    i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_c <= redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_q(63 downto 54);
    i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_d <= redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_q(35 downto 18);
    i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_e <= redist20_bgTrunc_i_add_ptr_sum_conv1x1_sel_x_b_1_0_q(53 downto 36);

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_im3_shift0(BITSHIFT,89)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_im3_shift0_qint <= i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx33_conv1x1_conv1x1294_mult_x_im3_shift0_q <= i_arrayidx33_conv1x1_conv1x1294_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_align_15(BITSHIFT,82)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx33_conv1x1_conv1x1294_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx33_conv1x1_conv1x1294_mult_x_align_15_q <= i_arrayidx33_conv1x1_conv1x1294_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_im6_shift0(BITSHIFT,90)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_im6_shift0_qint <= i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx33_conv1x1_conv1x1294_mult_x_im6_shift0_q <= i_arrayidx33_conv1x1_conv1x1294_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_align_14(BITSHIFT,81)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx33_conv1x1_conv1x1294_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx33_conv1x1_conv1x1294_mult_x_align_14_q <= i_arrayidx33_conv1x1_conv1x1294_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_join_16(BITJOIN,83)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_join_16_q <= i_arrayidx33_conv1x1_conv1x1294_mult_x_align_15_q & i_arrayidx33_conv1x1_conv1x1294_mult_x_align_14_q;

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_im9_shift0(BITSHIFT,91)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_im9_shift0_qint <= i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx33_conv1x1_conv1x1294_mult_x_im9_shift0_q <= i_arrayidx33_conv1x1_conv1x1294_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_align_12(BITSHIFT,79)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx33_conv1x1_conv1x1294_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx33_conv1x1_conv1x1294_mult_x_align_12_q <= i_arrayidx33_conv1x1_conv1x1294_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_im0_shift0(BITSHIFT,88)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_im0_shift0_qint <= i_arrayidx33_conv1x1_conv1x1294_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx33_conv1x1_conv1x1294_mult_x_im0_shift0_q <= i_arrayidx33_conv1x1_conv1x1294_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_join_13(BITJOIN,80)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_join_13_q <= i_arrayidx33_conv1x1_conv1x1294_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx33_conv1x1_conv1x1294_mult_x_im0_shift0_q);

    -- i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0(ADD,84)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx33_conv1x1_conv1x1294_mult_x_join_13_q);
    i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx33_conv1x1_conv1x1294_mult_x_join_16_q);
    i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_b));
    i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_q <= i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx33_conv1x1_conv1x1294_mult_extender_x(BITJOIN,28)@14
    i_arrayidx33_conv1x1_conv1x1294_mult_extender_x_q <= i_arrayidx33_conv1x1_conv1x1294_mult_multconst_x_q & i_arrayidx33_conv1x1_conv1x1294_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x(BITSELECT,30)@14
    i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b <= i_arrayidx33_conv1x1_conv1x1294_mult_extender_x_q(63 downto 0);

    -- redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0(REG,114)
    redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_syncbuf_filter_weight_sync_buffer_conv1x1(BITJOIN,154)
    bubble_join_i_syncbuf_filter_weight_sync_buffer_conv1x1_q <= i_syncbuf_filter_weight_sync_buffer_conv1x1_out_buffer_out;

    -- bubble_select_i_syncbuf_filter_weight_sync_buffer_conv1x1(BITSELECT,155)
    bubble_select_i_syncbuf_filter_weight_sync_buffer_conv1x1_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_filter_weight_sync_buffer_conv1x1_q(63 downto 0));

    -- i_arrayidx33_conv1x1_conv1x1294_add_x(ADD,31)@15
    i_arrayidx33_conv1x1_conv1x1294_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_filter_weight_sync_buffer_conv1x1_b);
    i_arrayidx33_conv1x1_conv1x1294_add_x_b <= STD_LOGIC_VECTOR("0" & redist0_i_arrayidx33_conv1x1_conv1x1294_trunc_sel_x_b_1_0_q);
    i_arrayidx33_conv1x1_conv1x1294_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx33_conv1x1_conv1x1294_add_x_a) + UNSIGNED(i_arrayidx33_conv1x1_conv1x1294_add_x_b));
    i_arrayidx33_conv1x1_conv1x1294_add_x_q <= i_arrayidx33_conv1x1_conv1x1294_add_x_o(64 downto 0);

    -- i_arrayidx33_conv1x1_conv1x1294_dupName_0_trunc_sel_x(BITSELECT,25)@15
    i_arrayidx33_conv1x1_conv1x1294_dupName_0_trunc_sel_x_b <= i_arrayidx33_conv1x1_conv1x1294_add_x_q(63 downto 0);

    -- i_load_unnamed_conv1x12_conv1x1(BLACKBOX,53)@15
    -- in in_i_stall@20000000
    -- out out_o_readdata@143
    -- out out_o_stall@20000000
    -- out out_o_valid@143
    -- out out_unnamed_conv1x12_avm_address@20000000
    -- out out_unnamed_conv1x12_avm_burstcount@20000000
    -- out out_unnamed_conv1x12_avm_byteenable@20000000
    -- out out_unnamed_conv1x12_avm_enable@20000000
    -- out out_unnamed_conv1x12_avm_read@20000000
    -- out out_unnamed_conv1x12_avm_write@20000000
    -- out out_unnamed_conv1x12_avm_writedata@20000000
    thei_load_unnamed_conv1x12_conv1x1 : i_load_unnamed_conv1x12_conv1x1295
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx33_conv1x1_conv1x1294_dupName_0_trunc_sel_x_b,
        in_i_predicate => bubble_select_redist16_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_14_fifo_b,
        in_i_stall => SE_out_redist3_conv1x1_B2_merge_reg_aunroll_x_out_data_out_1_142_fifo_backStall,
        in_i_valid => SE_out_i_syncbuf_filter_weight_sync_buffer_conv1x1_V0,
        in_unnamed_conv1x12_avm_readdata => in_unnamed_conv1x12_avm_readdata,
        in_unnamed_conv1x12_avm_readdatavalid => in_unnamed_conv1x12_avm_readdatavalid,
        in_unnamed_conv1x12_avm_waitrequest => in_unnamed_conv1x12_avm_waitrequest,
        in_unnamed_conv1x12_avm_writeack => in_unnamed_conv1x12_avm_writeack,
        out_o_readdata => i_load_unnamed_conv1x12_conv1x1_out_o_readdata,
        out_o_stall => i_load_unnamed_conv1x12_conv1x1_out_o_stall,
        out_o_valid => i_load_unnamed_conv1x12_conv1x1_out_o_valid,
        out_unnamed_conv1x12_avm_address => i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_address,
        out_unnamed_conv1x12_avm_burstcount => i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_burstcount,
        out_unnamed_conv1x12_avm_byteenable => i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_byteenable,
        out_unnamed_conv1x12_avm_enable => i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_enable,
        out_unnamed_conv1x12_avm_read => i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_read,
        out_unnamed_conv1x12_avm_write => i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_write,
        out_unnamed_conv1x12_avm_writedata => i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,6)
    out_unnamed_conv1x12_avm_address <= i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_address;
    out_unnamed_conv1x12_avm_enable <= i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_enable;
    out_unnamed_conv1x12_avm_read <= i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_read;
    out_unnamed_conv1x12_avm_write <= i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_write;
    out_unnamed_conv1x12_avm_writedata <= i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_writedata;
    out_unnamed_conv1x12_avm_byteenable <= i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_byteenable;
    out_unnamed_conv1x12_avm_burstcount <= i_load_unnamed_conv1x12_conv1x1_out_unnamed_conv1x12_avm_burstcount;

    -- i_exitcond_conv1x1(LOGICAL,47)@168 + 1
    i_exitcond_conv1x1_qi <= "1" WHEN SR_SE_i_exitcond_conv1x1_D0 = SR_SE_i_exitcond_conv1x1_D1 ELSE "0";
    i_exitcond_conv1x1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond_conv1x1_qi, xout => i_exitcond_conv1x1_q, ena => SE_i_exitcond_conv1x1_backEN(0), clk => clock, aclr => resetn );

    -- i_exitcond_guard_conv1x1(LOGICAL,48)@169
    i_exitcond_guard_conv1x1_q <= i_exitcond_conv1x1_q or bubble_select_redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_b;

    -- i_unnamed_conv1x1297(LOGICAL,56)@169
    i_unnamed_conv1x1297_q <= i_exitcond_guard_conv1x1_q or bubble_select_redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_b;

    -- bubble_join_redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo(BITJOIN,192)
    bubble_join_redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_q <= redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_data_out;

    -- bubble_select_redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo(BITSELECT,193)
    bubble_select_redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_q(31 downto 0));

    -- redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0(REG,133)
    redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_backEN = "1") THEN
                redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_q <= STD_LOGIC_VECTOR(redist18_bgTrunc_i_inc_conv1x1_sel_x_b_1_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo(BITJOIN,189)
    bubble_join_redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_q <= redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_data_out;

    -- bubble_select_redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo(BITSELECT,190)
    bubble_select_redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_q(0 downto 0));

    -- bubble_join_redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo(BITJOIN,186)
    bubble_join_redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_q <= redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_data_out;

    -- bubble_select_redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo(BITSELECT,187)
    bubble_select_redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_q(31 downto 0));

    -- bubble_join_redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo(BITJOIN,183)
    bubble_join_redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_q <= redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_data_out;

    -- bubble_select_redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo(BITSELECT,184)
    bubble_select_redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_q(31 downto 0));

    -- bubble_join_redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo(BITJOIN,180)
    bubble_join_redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_q <= redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_data_out;

    -- bubble_select_redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo(BITSELECT,181)
    bubble_select_redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_q(63 downto 0));

    -- bubble_join_i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x(BITJOIN,144)
    bubble_join_i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_q <= i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_out_c1_exit153_1;

    -- bubble_select_i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x(BITSELECT,145)
    bubble_select_i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_q(31 downto 0));

    -- bubble_join_redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo(BITJOIN,213)
    bubble_join_redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_q <= redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_data_out;

    -- bubble_select_redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo(BITSELECT,214)
    bubble_select_redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_q(0 downto 0));

    -- bubble_join_redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo(BITJOIN,207)
    bubble_join_redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_q <= redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_data_out;

    -- bubble_select_redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo(BITSELECT,208)
    bubble_select_redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_q(0 downto 0));

    -- bubble_join_redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo(BITJOIN,204)
    bubble_join_redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_q <= redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_data_out;

    -- bubble_select_redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo(BITSELECT,205)
    bubble_select_redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_q(0 downto 0));

    -- bubble_join_redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo(BITJOIN,201)
    bubble_join_redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_q <= redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_data_out;

    -- bubble_select_redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo(BITSELECT,202)
    bubble_select_redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_q(0 downto 0));

    -- bubble_join_redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo(BITJOIN,177)
    bubble_join_redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_q <= redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_data_out;

    -- bubble_select_redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo(BITSELECT,178)
    bubble_select_redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_q(63 downto 0));

    -- bubble_join_redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo(BITJOIN,195)
    bubble_join_redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_q <= redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_data_out;

    -- bubble_select_redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo(BITSELECT,196)
    bubble_select_redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_q(31 downto 0));

    -- dupName_0_sync_out_x(GPOUT,11)@169
    out_c0_exe114054 <= bubble_select_redist11_conv1x1_B2_merge_reg_aunroll_x_out_data_out_8_168_fifo_b;
    out_c0_exe17 <= bubble_select_redist5_conv1x1_B2_merge_reg_aunroll_x_out_data_out_2_168_fifo_b;
    out_c0_exe255 <= bubble_select_redist13_conv1x1_B2_merge_reg_aunroll_x_out_data_out_9_168_fifo_b;
    out_c0_exe362 <= bubble_select_redist14_conv1x1_B2_merge_reg_aunroll_x_out_data_out_10_168_fifo_b;
    out_c0_exe464 <= bubble_select_redist15_conv1x1_B2_merge_reg_aunroll_x_out_data_out_11_168_fifo_b;
    out_c0_exe565 <= bubble_select_redist17_conv1x1_B2_merge_reg_aunroll_x_out_data_out_12_168_fifo_b;
    out_c1_exe1154 <= bubble_select_i_sfc_c1_for_body12_conv1x1_c1_enter150_conv1x1_aunroll_x_b;
    out_c1_exe117 <= bubble_select_redist6_conv1x1_B2_merge_reg_aunroll_x_out_data_out_3_168_fifo_b;
    out_c2_exe126 <= bubble_select_redist7_conv1x1_B2_merge_reg_aunroll_x_out_data_out_4_168_fifo_b;
    out_c3_exe134 <= bubble_select_redist8_conv1x1_B2_merge_reg_aunroll_x_out_data_out_5_168_fifo_b;
    out_c3_exe242 <= bubble_select_redist9_conv1x1_B2_merge_reg_aunroll_x_out_data_out_6_168_fifo_b;
    out_inc <= redist19_bgTrunc_i_inc_conv1x1_sel_x_b_2_0_q;
    out_j_01053 <= bubble_select_redist10_conv1x1_B2_merge_reg_aunroll_x_out_data_out_7_168_fifo_b;
    out_unnamed_conv1x10 <= i_unnamed_conv1x1297_q;
    out_valid_out <= SE_out_bubble_out_i_syncbuf_input_channels_sync_buffer74_conv1x1_1_V0;

    -- ext_sig_sync_out(GPOUT,45)
    out_unnamed_conv1x11_avm_address <= i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_address;
    out_unnamed_conv1x11_avm_enable <= i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_enable;
    out_unnamed_conv1x11_avm_read <= i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_read;
    out_unnamed_conv1x11_avm_write <= i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_write;
    out_unnamed_conv1x11_avm_writedata <= i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_writedata;
    out_unnamed_conv1x11_avm_byteenable <= i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_byteenable;
    out_unnamed_conv1x11_avm_burstcount <= i_load_unnamed_conv1x11_conv1x1_out_unnamed_conv1x11_avm_burstcount;

    -- sync_out(GPOUT,66)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
