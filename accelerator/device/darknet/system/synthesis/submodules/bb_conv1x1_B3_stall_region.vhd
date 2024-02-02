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

-- VHDL created from bb_conv1x1_B3_stall_region
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

entity bb_conv1x1_B3_stall_region is
    port (
        out_lsu_unnamed_conv1x13_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        in_input_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe16 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe361 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe463 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe115466 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_exe116 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe125 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe133 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe241 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01052 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1168 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe16 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe3170 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe361 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4171 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5172 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe116 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe125 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe133 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe241 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01052 : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv1x13_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x13_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x13_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x13_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x13_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x13_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x13_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x13_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B3_stall_region;

architecture normal of bb_conv1x1_B3_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1 is
        port (
            in_c0_eni4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni4_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c0_eni4_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni4_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni4_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit167_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit167_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit167_2 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c0_exit167_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit167_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit167_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit167_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit167_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit167_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_unnamed_conv1x13_conv1x1322 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x13_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x13_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv1x13_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x13_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_output_im_sync_buffer_conv1x1301 is
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
    signal bgTrunc_i_add37_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom38_conv1x1_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add37_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_ptr6_sum_conv1x1_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr6_sum_conv1x1_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr6_sum_conv1x1_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr6_sum_conv1x1_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_store_unnamed_conv1x13_conv1x1_out_lsu_unnamed_conv1x13_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x13_conv1x1_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x13_conv1x1_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_syncbuf_output_im_sync_buffer_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_output_im_sync_buffer_conv1x1_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_output_im_sync_buffer_conv1x1_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_stall_entry_o4_54_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_54_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_stall_entry_o4_54_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_54_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_stall_entry_o4_54_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist0_stall_entry_o4_54_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_54_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_stall_entry_o4_54_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_54_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_stall_entry_o4_54_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist1_stall_entry_o5_54_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o5_54_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o5_54_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o5_54_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o5_54_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o5_54_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o5_54_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o5_54_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o5_54_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o5_54_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o6_10_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o6_10_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist2_stall_entry_o6_10_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o6_10_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist2_stall_entry_o6_10_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o6_10_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o6_10_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist2_stall_entry_o6_10_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o6_10_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist2_stall_entry_o6_10_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o8_8_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o8_8_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist3_stall_entry_o8_8_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o8_8_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist3_stall_entry_o8_8_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist3_stall_entry_o8_8_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o8_8_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist3_stall_entry_o8_8_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o8_8_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist3_stall_entry_o8_8_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_stall_entry_o8_54_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o8_54_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist4_stall_entry_o8_54_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o8_54_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist4_stall_entry_o8_54_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_stall_entry_o8_54_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o8_54_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist4_stall_entry_o8_54_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o8_54_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist4_stall_entry_o8_54_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_stall_entry_o9_7_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_stall_entry_o9_7_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_stall_entry_o9_7_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_stall_entry_o9_7_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_stall_entry_o9_7_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_stall_entry_o9_7_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_stall_entry_o9_7_6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_stall_entry_o9_54_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o9_54_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist6_stall_entry_o9_54_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o9_54_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist6_stall_entry_o9_54_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_stall_entry_o9_54_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o9_54_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist6_stall_entry_o9_54_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o9_54_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist6_stall_entry_o9_54_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_stall_entry_o10_54_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o10_54_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o10_54_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o10_54_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o10_54_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_stall_entry_o10_54_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o10_54_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o10_54_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o10_54_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o10_54_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_stall_entry_o11_54_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o11_54_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o11_54_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o11_54_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o11_54_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o11_54_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o11_54_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o11_54_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o11_54_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o11_54_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o12_7_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_stall_entry_o12_7_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_stall_entry_o12_7_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_stall_entry_o12_7_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_stall_entry_o12_7_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_stall_entry_o12_7_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_stall_entry_o12_7_6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_stall_entry_o12_54_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o12_54_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist10_stall_entry_o12_54_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o12_54_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist10_stall_entry_o12_54_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_stall_entry_o12_54_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o12_54_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist10_stall_entry_o12_54_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o12_54_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist10_stall_entry_o12_54_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_q : STD_LOGIC_VECTOR (100 downto 0);
    signal bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_i : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_syncbuf_output_im_sync_buffer_conv1x1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_output_im_sync_buffer_conv1x1_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (258 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_h : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_i : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_j : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist0_stall_entry_o4_54_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist0_stall_entry_o4_54_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist1_stall_entry_o5_54_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist1_stall_entry_o5_54_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist2_stall_entry_o6_10_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist2_stall_entry_o6_10_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist3_stall_entry_o8_8_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist3_stall_entry_o8_8_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist4_stall_entry_o8_54_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist4_stall_entry_o8_54_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist6_stall_entry_o9_54_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist6_stall_entry_o9_54_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist7_stall_entry_o10_54_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist7_stall_entry_o10_54_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist8_stall_entry_o11_54_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist8_stall_entry_o11_54_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist10_stall_entry_o12_54_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist10_stall_entry_o12_54_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_idxprom38_conv1x1_sel_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_idxprom38_conv1x1_sel_x_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_idxprom38_conv1x1_sel_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_idxprom38_conv1x1_sel_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_stall_entry_o6_10_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_stall_entry_o6_10_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_stall_entry_o6_10_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_stall_entry_o6_10_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_stall_entry_o6_10_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_stall_entry_o6_10_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist3_stall_entry_o8_8_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_3_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_3_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_3_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_3_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_4_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_4_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_4_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_4_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_5_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_5_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_5_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_5_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_5_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_5_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_stall_entry_o9_7_6_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp : std_logic;
    signal SR_SE_redist5_stall_entry_o9_7_1_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_1_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_1_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_1_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_1_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_1_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_1_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_3_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_3_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_3_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_3_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_3_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_3_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_3_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_5_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_5_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_5_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_5_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_5_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_5_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_5_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_5_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_6_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_6_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_6_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_6_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_6_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_6_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_6_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_stall_entry_o9_7_6_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_data0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_D0 : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- redist8_stall_entry_o11_54_fifo(STALLFIFO,111)
    redist8_stall_entry_o11_54_fifo_valid_in <= SE_stall_entry_V8;
    redist8_stall_entry_o11_54_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist8_stall_entry_o11_54_fifo_data_in <= bubble_select_stall_entry_i;
    redist8_stall_entry_o11_54_fifo_valid_in_bitsignaltemp <= redist8_stall_entry_o11_54_fifo_valid_in(0);
    redist8_stall_entry_o11_54_fifo_stall_in_bitsignaltemp <= redist8_stall_entry_o11_54_fifo_stall_in(0);
    redist8_stall_entry_o11_54_fifo_valid_out(0) <= redist8_stall_entry_o11_54_fifo_valid_out_bitsignaltemp;
    redist8_stall_entry_o11_54_fifo_stall_out(0) <= redist8_stall_entry_o11_54_fifo_stall_out_bitsignaltemp;
    theredist8_stall_entry_o11_54_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 55,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist8_stall_entry_o11_54_fifo_valid_in_bitsignaltemp,
        stall_in => redist8_stall_entry_o11_54_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_i,
        valid_out => redist8_stall_entry_o11_54_fifo_valid_out_bitsignaltemp,
        stall_out => redist8_stall_entry_o11_54_fifo_stall_out_bitsignaltemp,
        data_out => redist8_stall_entry_o11_54_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist7_stall_entry_o10_54_fifo(STALLFIFO,110)
    redist7_stall_entry_o10_54_fifo_valid_in <= SE_stall_entry_V7;
    redist7_stall_entry_o10_54_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist7_stall_entry_o10_54_fifo_data_in <= bubble_select_stall_entry_h;
    redist7_stall_entry_o10_54_fifo_valid_in_bitsignaltemp <= redist7_stall_entry_o10_54_fifo_valid_in(0);
    redist7_stall_entry_o10_54_fifo_stall_in_bitsignaltemp <= redist7_stall_entry_o10_54_fifo_stall_in(0);
    redist7_stall_entry_o10_54_fifo_valid_out(0) <= redist7_stall_entry_o10_54_fifo_valid_out_bitsignaltemp;
    redist7_stall_entry_o10_54_fifo_stall_out(0) <= redist7_stall_entry_o10_54_fifo_stall_out_bitsignaltemp;
    theredist7_stall_entry_o10_54_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 55,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist7_stall_entry_o10_54_fifo_valid_in_bitsignaltemp,
        stall_in => redist7_stall_entry_o10_54_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_h,
        valid_out => redist7_stall_entry_o10_54_fifo_valid_out_bitsignaltemp,
        stall_out => redist7_stall_entry_o10_54_fifo_stall_out_bitsignaltemp,
        data_out => redist7_stall_entry_o10_54_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist3_stall_entry_o8_8_fifo(BITJOIN,152)
    bubble_join_redist3_stall_entry_o8_8_fifo_q <= redist3_stall_entry_o8_8_fifo_data_out;

    -- bubble_select_redist3_stall_entry_o8_8_fifo(BITSELECT,153)
    bubble_select_redist3_stall_entry_o8_8_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist3_stall_entry_o8_8_fifo_q(63 downto 0));

    -- redist4_stall_entry_o8_54_fifo(STALLFIFO,101)
    redist4_stall_entry_o8_54_fifo_valid_in <= SE_out_redist3_stall_entry_o8_8_fifo_V1;
    redist4_stall_entry_o8_54_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist4_stall_entry_o8_54_fifo_data_in <= bubble_select_redist3_stall_entry_o8_8_fifo_b;
    redist4_stall_entry_o8_54_fifo_valid_in_bitsignaltemp <= redist4_stall_entry_o8_54_fifo_valid_in(0);
    redist4_stall_entry_o8_54_fifo_stall_in_bitsignaltemp <= redist4_stall_entry_o8_54_fifo_stall_in(0);
    redist4_stall_entry_o8_54_fifo_valid_out(0) <= redist4_stall_entry_o8_54_fifo_valid_out_bitsignaltemp;
    redist4_stall_entry_o8_54_fifo_stall_out(0) <= redist4_stall_entry_o8_54_fifo_stall_out_bitsignaltemp;
    theredist4_stall_entry_o8_54_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 47,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist4_stall_entry_o8_54_fifo_valid_in_bitsignaltemp,
        stall_in => redist4_stall_entry_o8_54_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist3_stall_entry_o8_8_fifo_b,
        valid_out => redist4_stall_entry_o8_54_fifo_valid_out_bitsignaltemp,
        stall_out => redist4_stall_entry_o8_54_fifo_stall_out_bitsignaltemp,
        data_out => redist4_stall_entry_o8_54_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist5_stall_entry_o9_7_3(STALLENABLE,231)
    -- Valid signal propagation
    SE_redist5_stall_entry_o9_7_3_V0 <= SE_redist5_stall_entry_o9_7_3_R_v_0;
    -- Stall signal propagation
    SE_redist5_stall_entry_o9_7_3_s_tv_0 <= SE_redist5_stall_entry_o9_7_4_backStall and SE_redist5_stall_entry_o9_7_3_R_v_0;
    -- Backward Enable generation
    SE_redist5_stall_entry_o9_7_3_backEN <= not (SE_redist5_stall_entry_o9_7_3_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_stall_entry_o9_7_3_v_s_0 <= SE_redist5_stall_entry_o9_7_3_backEN and SR_SE_redist5_stall_entry_o9_7_3_V;
    -- Backward Stall generation
    SE_redist5_stall_entry_o9_7_3_backStall <= not (SE_redist5_stall_entry_o9_7_3_backEN);
    SE_redist5_stall_entry_o9_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_stall_entry_o9_7_3_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_3_backEN = "0") THEN
                SE_redist5_stall_entry_o9_7_3_R_v_0 <= SE_redist5_stall_entry_o9_7_3_R_v_0 and SE_redist5_stall_entry_o9_7_3_s_tv_0;
            ELSE
                SE_redist5_stall_entry_o9_7_3_R_v_0 <= SE_redist5_stall_entry_o9_7_3_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist5_stall_entry_o9_7_1(STALLENABLE,229)
    -- Valid signal propagation
    SE_redist5_stall_entry_o9_7_1_V0 <= SE_redist5_stall_entry_o9_7_1_R_v_0;
    -- Stall signal propagation
    SE_redist5_stall_entry_o9_7_1_s_tv_0 <= SE_redist5_stall_entry_o9_7_2_backStall and SE_redist5_stall_entry_o9_7_1_R_v_0;
    -- Backward Enable generation
    SE_redist5_stall_entry_o9_7_1_backEN <= not (SE_redist5_stall_entry_o9_7_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_stall_entry_o9_7_1_v_s_0 <= SE_redist5_stall_entry_o9_7_1_backEN and SR_SE_redist5_stall_entry_o9_7_1_V;
    -- Backward Stall generation
    SE_redist5_stall_entry_o9_7_1_backStall <= not (SE_redist5_stall_entry_o9_7_1_backEN);
    SE_redist5_stall_entry_o9_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_stall_entry_o9_7_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_1_backEN = "0") THEN
                SE_redist5_stall_entry_o9_7_1_R_v_0 <= SE_redist5_stall_entry_o9_7_1_R_v_0 and SE_redist5_stall_entry_o9_7_1_s_tv_0;
            ELSE
                SE_redist5_stall_entry_o9_7_1_R_v_0 <= SE_redist5_stall_entry_o9_7_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- redist9_stall_entry_o12_7_0(REG,112)
    redist9_stall_entry_o12_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_7_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_0_backEN = "1") THEN
                redist9_stall_entry_o12_7_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_j);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o9_7_0(REG,102)
    redist5_stall_entry_o9_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o9_7_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_0_backEN = "1") THEN
                redist5_stall_entry_o9_7_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_g);
            END IF;
        END IF;
    END PROCESS;

    -- SR_SE_redist5_stall_entry_o9_7_1(STALLREG,350)
    SR_SE_redist5_stall_entry_o9_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist5_stall_entry_o9_7_1_r_valid <= (others => '0');
            SR_SE_redist5_stall_entry_o9_7_1_r_data0 <= (others => '-');
            SR_SE_redist5_stall_entry_o9_7_1_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist5_stall_entry_o9_7_1_r_valid <= SE_redist5_stall_entry_o9_7_1_backStall and (SR_SE_redist5_stall_entry_o9_7_1_r_valid or SR_SE_redist5_stall_entry_o9_7_1_i_valid);

            IF (SR_SE_redist5_stall_entry_o9_7_1_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist5_stall_entry_o9_7_1_r_data0 <= STD_LOGIC_VECTOR(redist5_stall_entry_o9_7_0_q);
                SR_SE_redist5_stall_entry_o9_7_1_r_data1 <= STD_LOGIC_VECTOR(redist9_stall_entry_o12_7_0_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist5_stall_entry_o9_7_1_i_valid <= SE_redist5_stall_entry_o9_7_0_V0;
    -- Stall signal propagation
    SR_SE_redist5_stall_entry_o9_7_1_backStall <= SR_SE_redist5_stall_entry_o9_7_1_r_valid or not (SR_SE_redist5_stall_entry_o9_7_1_i_valid);

    -- Valid
    SR_SE_redist5_stall_entry_o9_7_1_V <= SR_SE_redist5_stall_entry_o9_7_1_r_valid WHEN SR_SE_redist5_stall_entry_o9_7_1_r_valid = "1" ELSE SR_SE_redist5_stall_entry_o9_7_1_i_valid;

    -- Data0
    SR_SE_redist5_stall_entry_o9_7_1_D0 <= SR_SE_redist5_stall_entry_o9_7_1_r_data0 WHEN SR_SE_redist5_stall_entry_o9_7_1_r_valid = "1" ELSE redist5_stall_entry_o9_7_0_q;
    -- Data1
    SR_SE_redist5_stall_entry_o9_7_1_D1 <= SR_SE_redist5_stall_entry_o9_7_1_r_data1 WHEN SR_SE_redist5_stall_entry_o9_7_1_r_valid = "1" ELSE redist9_stall_entry_o12_7_0_q;

    -- redist9_stall_entry_o12_7_1(REG,113)
    redist9_stall_entry_o12_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_7_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_1_backEN = "1") THEN
                redist9_stall_entry_o12_7_1_q <= STD_LOGIC_VECTOR(SR_SE_redist5_stall_entry_o9_7_1_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_stall_entry_o12_7_2(REG,114)
    redist9_stall_entry_o12_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_7_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_2_backEN = "1") THEN
                redist9_stall_entry_o12_7_2_q <= STD_LOGIC_VECTOR(redist9_stall_entry_o12_7_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o9_7_1(REG,103)
    redist5_stall_entry_o9_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o9_7_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_1_backEN = "1") THEN
                redist5_stall_entry_o9_7_1_q <= STD_LOGIC_VECTOR(SR_SE_redist5_stall_entry_o9_7_1_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o9_7_2(REG,104)
    redist5_stall_entry_o9_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o9_7_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_2_backEN = "1") THEN
                redist5_stall_entry_o9_7_2_q <= STD_LOGIC_VECTOR(redist5_stall_entry_o9_7_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist5_stall_entry_o9_7_2(STALLENABLE,230)
    -- Valid signal propagation
    SE_redist5_stall_entry_o9_7_2_V0 <= SE_redist5_stall_entry_o9_7_2_R_v_0;
    -- Stall signal propagation
    SE_redist5_stall_entry_o9_7_2_s_tv_0 <= SR_SE_redist5_stall_entry_o9_7_3_backStall and SE_redist5_stall_entry_o9_7_2_R_v_0;
    -- Backward Enable generation
    SE_redist5_stall_entry_o9_7_2_backEN <= not (SE_redist5_stall_entry_o9_7_2_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_stall_entry_o9_7_2_v_s_0 <= SE_redist5_stall_entry_o9_7_2_backEN and SE_redist5_stall_entry_o9_7_1_V0;
    -- Backward Stall generation
    SE_redist5_stall_entry_o9_7_2_backStall <= not (SE_redist5_stall_entry_o9_7_2_v_s_0);
    SE_redist5_stall_entry_o9_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_stall_entry_o9_7_2_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_2_backEN = "0") THEN
                SE_redist5_stall_entry_o9_7_2_R_v_0 <= SE_redist5_stall_entry_o9_7_2_R_v_0 and SE_redist5_stall_entry_o9_7_2_s_tv_0;
            ELSE
                SE_redist5_stall_entry_o9_7_2_R_v_0 <= SE_redist5_stall_entry_o9_7_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist5_stall_entry_o9_7_3(STALLREG,351)
    SR_SE_redist5_stall_entry_o9_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist5_stall_entry_o9_7_3_r_valid <= (others => '0');
            SR_SE_redist5_stall_entry_o9_7_3_r_data0 <= (others => '-');
            SR_SE_redist5_stall_entry_o9_7_3_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist5_stall_entry_o9_7_3_r_valid <= SE_redist5_stall_entry_o9_7_3_backStall and (SR_SE_redist5_stall_entry_o9_7_3_r_valid or SR_SE_redist5_stall_entry_o9_7_3_i_valid);

            IF (SR_SE_redist5_stall_entry_o9_7_3_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist5_stall_entry_o9_7_3_r_data0 <= STD_LOGIC_VECTOR(redist5_stall_entry_o9_7_2_q);
                SR_SE_redist5_stall_entry_o9_7_3_r_data1 <= STD_LOGIC_VECTOR(redist9_stall_entry_o12_7_2_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist5_stall_entry_o9_7_3_i_valid <= SE_redist5_stall_entry_o9_7_2_V0;
    -- Stall signal propagation
    SR_SE_redist5_stall_entry_o9_7_3_backStall <= SR_SE_redist5_stall_entry_o9_7_3_r_valid or not (SR_SE_redist5_stall_entry_o9_7_3_i_valid);

    -- Valid
    SR_SE_redist5_stall_entry_o9_7_3_V <= SR_SE_redist5_stall_entry_o9_7_3_r_valid WHEN SR_SE_redist5_stall_entry_o9_7_3_r_valid = "1" ELSE SR_SE_redist5_stall_entry_o9_7_3_i_valid;

    -- Data0
    SR_SE_redist5_stall_entry_o9_7_3_D0 <= SR_SE_redist5_stall_entry_o9_7_3_r_data0 WHEN SR_SE_redist5_stall_entry_o9_7_3_r_valid = "1" ELSE redist5_stall_entry_o9_7_2_q;
    -- Data1
    SR_SE_redist5_stall_entry_o9_7_3_D1 <= SR_SE_redist5_stall_entry_o9_7_3_r_data1 WHEN SR_SE_redist5_stall_entry_o9_7_3_r_valid = "1" ELSE redist9_stall_entry_o12_7_2_q;

    -- redist9_stall_entry_o12_7_3(REG,115)
    redist9_stall_entry_o12_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_7_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_3_backEN = "1") THEN
                redist9_stall_entry_o12_7_3_q <= STD_LOGIC_VECTOR(SR_SE_redist5_stall_entry_o9_7_3_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_stall_entry_o12_7_4(REG,116)
    redist9_stall_entry_o12_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_7_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_4_backEN = "1") THEN
                redist9_stall_entry_o12_7_4_q <= STD_LOGIC_VECTOR(redist9_stall_entry_o12_7_3_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o9_7_3(REG,105)
    redist5_stall_entry_o9_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o9_7_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_3_backEN = "1") THEN
                redist5_stall_entry_o9_7_3_q <= STD_LOGIC_VECTOR(SR_SE_redist5_stall_entry_o9_7_3_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o9_7_4(REG,106)
    redist5_stall_entry_o9_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o9_7_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_4_backEN = "1") THEN
                redist5_stall_entry_o9_7_4_q <= STD_LOGIC_VECTOR(redist5_stall_entry_o9_7_3_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist5_stall_entry_o9_7_4(STALLENABLE,232)
    -- Valid signal propagation
    SE_redist5_stall_entry_o9_7_4_V0 <= SE_redist5_stall_entry_o9_7_4_R_v_0;
    -- Stall signal propagation
    SE_redist5_stall_entry_o9_7_4_s_tv_0 <= SR_SE_redist5_stall_entry_o9_7_5_backStall and SE_redist5_stall_entry_o9_7_4_R_v_0;
    -- Backward Enable generation
    SE_redist5_stall_entry_o9_7_4_backEN <= not (SE_redist5_stall_entry_o9_7_4_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_stall_entry_o9_7_4_v_s_0 <= SE_redist5_stall_entry_o9_7_4_backEN and SE_redist5_stall_entry_o9_7_3_V0;
    -- Backward Stall generation
    SE_redist5_stall_entry_o9_7_4_backStall <= not (SE_redist5_stall_entry_o9_7_4_v_s_0);
    SE_redist5_stall_entry_o9_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_stall_entry_o9_7_4_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_4_backEN = "0") THEN
                SE_redist5_stall_entry_o9_7_4_R_v_0 <= SE_redist5_stall_entry_o9_7_4_R_v_0 and SE_redist5_stall_entry_o9_7_4_s_tv_0;
            ELSE
                SE_redist5_stall_entry_o9_7_4_R_v_0 <= SE_redist5_stall_entry_o9_7_4_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist5_stall_entry_o9_7_5(STALLREG,352)
    SR_SE_redist5_stall_entry_o9_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist5_stall_entry_o9_7_5_r_valid <= (others => '0');
            SR_SE_redist5_stall_entry_o9_7_5_r_data0 <= (others => '-');
            SR_SE_redist5_stall_entry_o9_7_5_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist5_stall_entry_o9_7_5_r_valid <= SE_redist5_stall_entry_o9_7_5_backStall and (SR_SE_redist5_stall_entry_o9_7_5_r_valid or SR_SE_redist5_stall_entry_o9_7_5_i_valid);

            IF (SR_SE_redist5_stall_entry_o9_7_5_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist5_stall_entry_o9_7_5_r_data0 <= STD_LOGIC_VECTOR(redist5_stall_entry_o9_7_4_q);
                SR_SE_redist5_stall_entry_o9_7_5_r_data1 <= STD_LOGIC_VECTOR(redist9_stall_entry_o12_7_4_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist5_stall_entry_o9_7_5_i_valid <= SE_redist5_stall_entry_o9_7_4_V0;
    -- Stall signal propagation
    SR_SE_redist5_stall_entry_o9_7_5_backStall <= SR_SE_redist5_stall_entry_o9_7_5_r_valid or not (SR_SE_redist5_stall_entry_o9_7_5_i_valid);

    -- Valid
    SR_SE_redist5_stall_entry_o9_7_5_V <= SR_SE_redist5_stall_entry_o9_7_5_r_valid WHEN SR_SE_redist5_stall_entry_o9_7_5_r_valid = "1" ELSE SR_SE_redist5_stall_entry_o9_7_5_i_valid;

    -- Data0
    SR_SE_redist5_stall_entry_o9_7_5_D0 <= SR_SE_redist5_stall_entry_o9_7_5_r_data0 WHEN SR_SE_redist5_stall_entry_o9_7_5_r_valid = "1" ELSE redist5_stall_entry_o9_7_4_q;
    -- Data1
    SR_SE_redist5_stall_entry_o9_7_5_D1 <= SR_SE_redist5_stall_entry_o9_7_5_r_data1 WHEN SR_SE_redist5_stall_entry_o9_7_5_r_valid = "1" ELSE redist9_stall_entry_o12_7_4_q;

    -- redist9_stall_entry_o12_7_5(REG,117)
    redist9_stall_entry_o12_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_7_5_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_5_backEN = "1") THEN
                redist9_stall_entry_o12_7_5_q <= STD_LOGIC_VECTOR(SR_SE_redist5_stall_entry_o9_7_5_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o9_7_5(REG,107)
    redist5_stall_entry_o9_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o9_7_5_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_5_backEN = "1") THEN
                redist5_stall_entry_o9_7_5_q <= STD_LOGIC_VECTOR(SR_SE_redist5_stall_entry_o9_7_5_D0);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist5_stall_entry_o9_7_5(STALLENABLE,233)
    -- Valid signal propagation
    SE_redist5_stall_entry_o9_7_5_V0 <= SE_redist5_stall_entry_o9_7_5_R_v_0;
    -- Stall signal propagation
    SE_redist5_stall_entry_o9_7_5_s_tv_0 <= SR_SE_redist5_stall_entry_o9_7_6_backStall and SE_redist5_stall_entry_o9_7_5_R_v_0;
    -- Backward Enable generation
    SE_redist5_stall_entry_o9_7_5_backEN <= not (SE_redist5_stall_entry_o9_7_5_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_stall_entry_o9_7_5_v_s_0 <= SE_redist5_stall_entry_o9_7_5_backEN and SR_SE_redist5_stall_entry_o9_7_5_V;
    -- Backward Stall generation
    SE_redist5_stall_entry_o9_7_5_backStall <= not (SE_redist5_stall_entry_o9_7_5_backEN);
    SE_redist5_stall_entry_o9_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_stall_entry_o9_7_5_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_5_backEN = "0") THEN
                SE_redist5_stall_entry_o9_7_5_R_v_0 <= SE_redist5_stall_entry_o9_7_5_R_v_0 and SE_redist5_stall_entry_o9_7_5_s_tv_0;
            ELSE
                SE_redist5_stall_entry_o9_7_5_R_v_0 <= SE_redist5_stall_entry_o9_7_5_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist5_stall_entry_o9_7_6(STALLREG,353)
    SR_SE_redist5_stall_entry_o9_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist5_stall_entry_o9_7_6_r_valid <= (others => '0');
            SR_SE_redist5_stall_entry_o9_7_6_r_data0 <= (others => '-');
            SR_SE_redist5_stall_entry_o9_7_6_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist5_stall_entry_o9_7_6_r_valid <= SE_redist5_stall_entry_o9_7_6_backStall and (SR_SE_redist5_stall_entry_o9_7_6_r_valid or SR_SE_redist5_stall_entry_o9_7_6_i_valid);

            IF (SR_SE_redist5_stall_entry_o9_7_6_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist5_stall_entry_o9_7_6_r_data0 <= STD_LOGIC_VECTOR(redist5_stall_entry_o9_7_5_q);
                SR_SE_redist5_stall_entry_o9_7_6_r_data1 <= STD_LOGIC_VECTOR(redist9_stall_entry_o12_7_5_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist5_stall_entry_o9_7_6_i_valid <= SE_redist5_stall_entry_o9_7_5_V0;
    -- Stall signal propagation
    SR_SE_redist5_stall_entry_o9_7_6_backStall <= SR_SE_redist5_stall_entry_o9_7_6_r_valid or not (SR_SE_redist5_stall_entry_o9_7_6_i_valid);

    -- Valid
    SR_SE_redist5_stall_entry_o9_7_6_V <= SR_SE_redist5_stall_entry_o9_7_6_r_valid WHEN SR_SE_redist5_stall_entry_o9_7_6_r_valid = "1" ELSE SR_SE_redist5_stall_entry_o9_7_6_i_valid;

    -- Data0
    SR_SE_redist5_stall_entry_o9_7_6_D0 <= SR_SE_redist5_stall_entry_o9_7_6_r_data0 WHEN SR_SE_redist5_stall_entry_o9_7_6_r_valid = "1" ELSE redist5_stall_entry_o9_7_5_q;
    -- Data1
    SR_SE_redist5_stall_entry_o9_7_6_D1 <= SR_SE_redist5_stall_entry_o9_7_6_r_data1 WHEN SR_SE_redist5_stall_entry_o9_7_6_r_valid = "1" ELSE redist9_stall_entry_o12_7_5_q;

    -- redist5_stall_entry_o9_7_6(REG,108)
    redist5_stall_entry_o9_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o9_7_6_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_6_backEN = "1") THEN
                redist5_stall_entry_o9_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist5_stall_entry_o9_7_6_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_stall_entry_o12_7_6(REG,118)
    redist9_stall_entry_o12_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_7_6_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_6_backEN = "1") THEN
                redist9_stall_entry_o12_7_6_q <= STD_LOGIC_VECTOR(SR_SE_redist5_stall_entry_o9_7_6_D1);
            END IF;
        END IF;
    END PROCESS;

    -- i_add37_conv1x1(ADD,36)@7
    i_add37_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist9_stall_entry_o12_7_6_q);
    i_add37_conv1x1_b <= STD_LOGIC_VECTOR("0" & redist5_stall_entry_o9_7_6_q);
    i_add37_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add37_conv1x1_a) + UNSIGNED(i_add37_conv1x1_b));
    i_add37_conv1x1_q <= i_add37_conv1x1_o(32 downto 0);

    -- bgTrunc_i_add37_conv1x1_sel_x(BITSELECT,2)@7
    bgTrunc_i_add37_conv1x1_sel_x_b <= i_add37_conv1x1_q(31 downto 0);

    -- redist10_stall_entry_o12_54_fifo(STALLFIFO,119)
    redist10_stall_entry_o12_54_fifo_valid_in <= SE_redist5_stall_entry_o9_7_6_V1;
    redist10_stall_entry_o12_54_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist10_stall_entry_o12_54_fifo_data_in <= redist9_stall_entry_o12_7_6_q;
    redist10_stall_entry_o12_54_fifo_valid_in_bitsignaltemp <= redist10_stall_entry_o12_54_fifo_valid_in(0);
    redist10_stall_entry_o12_54_fifo_stall_in_bitsignaltemp <= redist10_stall_entry_o12_54_fifo_stall_in(0);
    redist10_stall_entry_o12_54_fifo_valid_out(0) <= redist10_stall_entry_o12_54_fifo_valid_out_bitsignaltemp;
    redist10_stall_entry_o12_54_fifo_stall_out(0) <= redist10_stall_entry_o12_54_fifo_stall_out_bitsignaltemp;
    theredist10_stall_entry_o12_54_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 48,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist10_stall_entry_o12_54_fifo_valid_in_bitsignaltemp,
        stall_in => redist10_stall_entry_o12_54_fifo_stall_in_bitsignaltemp,
        data_in => redist9_stall_entry_o12_7_6_q,
        valid_out => redist10_stall_entry_o12_54_fifo_valid_out_bitsignaltemp,
        stall_out => redist10_stall_entry_o12_54_fifo_stall_out_bitsignaltemp,
        data_out => redist10_stall_entry_o12_54_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist6_stall_entry_o9_54_fifo(STALLFIFO,109)
    redist6_stall_entry_o9_54_fifo_valid_in <= SE_redist5_stall_entry_o9_7_6_V0;
    redist6_stall_entry_o9_54_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist6_stall_entry_o9_54_fifo_data_in <= redist5_stall_entry_o9_7_6_q;
    redist6_stall_entry_o9_54_fifo_valid_in_bitsignaltemp <= redist6_stall_entry_o9_54_fifo_valid_in(0);
    redist6_stall_entry_o9_54_fifo_stall_in_bitsignaltemp <= redist6_stall_entry_o9_54_fifo_stall_in(0);
    redist6_stall_entry_o9_54_fifo_valid_out(0) <= redist6_stall_entry_o9_54_fifo_valid_out_bitsignaltemp;
    redist6_stall_entry_o9_54_fifo_stall_out(0) <= redist6_stall_entry_o9_54_fifo_stall_out_bitsignaltemp;
    theredist6_stall_entry_o9_54_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 48,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist6_stall_entry_o9_54_fifo_valid_in_bitsignaltemp,
        stall_in => redist6_stall_entry_o9_54_fifo_stall_in_bitsignaltemp,
        data_in => redist5_stall_entry_o9_7_6_q,
        valid_out => redist6_stall_entry_o9_54_fifo_valid_out_bitsignaltemp,
        stall_out => redist6_stall_entry_o9_54_fifo_stall_out_bitsignaltemp,
        data_out => redist6_stall_entry_o9_54_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist5_stall_entry_o9_7_6(STALLENABLE,234)
    -- Valid signal propagation
    SE_redist5_stall_entry_o9_7_6_V0 <= SE_redist5_stall_entry_o9_7_6_R_v_0;
    SE_redist5_stall_entry_o9_7_6_V1 <= SE_redist5_stall_entry_o9_7_6_R_v_1;
    SE_redist5_stall_entry_o9_7_6_V2 <= SE_redist5_stall_entry_o9_7_6_R_v_2;
    -- Stall signal propagation
    SE_redist5_stall_entry_o9_7_6_s_tv_0 <= redist6_stall_entry_o9_54_fifo_stall_out and SE_redist5_stall_entry_o9_7_6_R_v_0;
    SE_redist5_stall_entry_o9_7_6_s_tv_1 <= redist10_stall_entry_o12_54_fifo_stall_out and SE_redist5_stall_entry_o9_7_6_R_v_1;
    SE_redist5_stall_entry_o9_7_6_s_tv_2 <= SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backStall and SE_redist5_stall_entry_o9_7_6_R_v_2;
    -- Backward Enable generation
    SE_redist5_stall_entry_o9_7_6_or0 <= SE_redist5_stall_entry_o9_7_6_s_tv_0;
    SE_redist5_stall_entry_o9_7_6_or1 <= SE_redist5_stall_entry_o9_7_6_s_tv_1 or SE_redist5_stall_entry_o9_7_6_or0;
    SE_redist5_stall_entry_o9_7_6_backEN <= not (SE_redist5_stall_entry_o9_7_6_s_tv_2 or SE_redist5_stall_entry_o9_7_6_or1);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_stall_entry_o9_7_6_v_s_0 <= SE_redist5_stall_entry_o9_7_6_backEN and SR_SE_redist5_stall_entry_o9_7_6_V;
    -- Backward Stall generation
    SE_redist5_stall_entry_o9_7_6_backStall <= not (SE_redist5_stall_entry_o9_7_6_backEN);
    SE_redist5_stall_entry_o9_7_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_stall_entry_o9_7_6_R_v_0 <= (others => '0');
            SE_redist5_stall_entry_o9_7_6_R_v_1 <= (others => '0');
            SE_redist5_stall_entry_o9_7_6_R_v_2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_6_backEN = "0") THEN
                SE_redist5_stall_entry_o9_7_6_R_v_0 <= SE_redist5_stall_entry_o9_7_6_R_v_0 and SE_redist5_stall_entry_o9_7_6_s_tv_0;
            ELSE
                SE_redist5_stall_entry_o9_7_6_R_v_0 <= SE_redist5_stall_entry_o9_7_6_v_s_0;
            END IF;

            IF (SE_redist5_stall_entry_o9_7_6_backEN = "0") THEN
                SE_redist5_stall_entry_o9_7_6_R_v_1 <= SE_redist5_stall_entry_o9_7_6_R_v_1 and SE_redist5_stall_entry_o9_7_6_s_tv_1;
            ELSE
                SE_redist5_stall_entry_o9_7_6_R_v_1 <= SE_redist5_stall_entry_o9_7_6_v_s_0;
            END IF;

            IF (SE_redist5_stall_entry_o9_7_6_backEN = "0") THEN
                SE_redist5_stall_entry_o9_7_6_R_v_2 <= SE_redist5_stall_entry_o9_7_6_R_v_2 and SE_redist5_stall_entry_o9_7_6_s_tv_2;
            ELSE
                SE_redist5_stall_entry_o9_7_6_R_v_2 <= SE_redist5_stall_entry_o9_7_6_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0(STALLREG,354)
    SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_valid <= (others => '0');
            SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_valid <= SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backStall and (SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_valid or SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_i_valid);

            IF (SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_data0 <= STD_LOGIC_VECTOR(bgTrunc_i_add37_conv1x1_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_i_valid <= SE_redist5_stall_entry_o9_7_6_V2;
    -- Stall signal propagation
    SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backStall <= SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_valid or not (SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_i_valid);

    -- Valid
    SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_V <= SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_valid WHEN SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_valid = "1" ELSE SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_i_valid;

    SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_D0 <= SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_data0 WHEN SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_r_valid = "1" ELSE bgTrunc_i_add37_conv1x1_sel_x_b;

    -- redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0(REG,129)
    redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backEN = "1") THEN
                redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_idxprom38_conv1x1_sel_x(BITSELECT,27)@8
    i_idxprom38_conv1x1_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_q(31 downto 0)), 64)));

    -- i_add_ptr6_sum_conv1x1(ADD,37)@8
    i_add_ptr6_sum_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_idxprom38_conv1x1_sel_x_b);
    i_add_ptr6_sum_conv1x1_b <= STD_LOGIC_VECTOR("0" & bubble_select_redist3_stall_entry_o8_8_fifo_b);
    i_add_ptr6_sum_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_ptr6_sum_conv1x1_a) + UNSIGNED(i_add_ptr6_sum_conv1x1_b));
    i_add_ptr6_sum_conv1x1_q <= i_add_ptr6_sum_conv1x1_o(64 downto 0);

    -- bgTrunc_i_add_ptr6_sum_conv1x1_sel_x(BITSELECT,3)@8
    bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b <= i_add_ptr6_sum_conv1x1_q(63 downto 0);

    -- SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0(STALLENABLE,264)
    -- Valid signal propagation
    SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_V0 <= SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_s_tv_0 <= SE_out_redist2_stall_entry_o6_10_fifo_backStall and SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_backEN <= not (SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_v_s_0 <= SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_backEN and SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_V0;
    -- Backward Stall generation
    SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_backStall <= not (SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_v_s_0);
    SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_R_v_0 <= SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_R_v_0 and SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_R_v_0 <= SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0(STALLENABLE,265)
    -- Valid signal propagation
    SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_V0 <= SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_s_tv_0 <= SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_backStall and SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backEN <= not (SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_v_s_0 <= SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backEN and SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_V;
    -- Backward Stall generation
    SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backStall <= not (SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backEN);
    SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backEN = "0") THEN
                SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_R_v_0 <= SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_R_v_0 and SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_R_v_0 <= SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0(STALLREG,355)
    SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_valid <= (others => '0');
            SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_valid <= SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backStall and (SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_valid or SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_i_valid);

            IF (SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_data0 <= STD_LOGIC_VECTOR(bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_i_valid <= SE_i_idxprom38_conv1x1_sel_x_V0;
    -- Stall signal propagation
    SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backStall <= SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_valid or not (SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_i_valid);

    -- Valid
    SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_V <= SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_valid WHEN SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_valid = "1" ELSE SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_i_valid;

    SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_D0 <= SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_data0 WHEN SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_r_valid = "1" ELSE bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b;

    -- SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0(STALLENABLE,266)
    -- Valid signal propagation
    SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_V0 <= SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_s_tv_0 <= SE_i_idxprom38_conv1x1_sel_x_backStall and SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backEN <= not (SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_v_s_0 <= SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backEN and SR_SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_V;
    -- Backward Stall generation
    SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backStall <= not (SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backEN);
    SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_backEN = "0") THEN
                SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_R_v_0 <= SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_R_v_0 and SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_R_v_0 <= SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_idxprom38_conv1x1_sel_x(STALLENABLE,196)
    -- Valid signal propagation
    SE_i_idxprom38_conv1x1_sel_x_V0 <= SE_i_idxprom38_conv1x1_sel_x_wireValid;
    -- Backward Stall generation
    SE_i_idxprom38_conv1x1_sel_x_backStall <= SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backStall or not (SE_i_idxprom38_conv1x1_sel_x_wireValid);
    -- Computing multiple Valid(s)
    SE_i_idxprom38_conv1x1_sel_x_and0 <= SE_redist20_bgTrunc_i_add37_conv1x1_sel_x_b_1_0_V0;
    SE_i_idxprom38_conv1x1_sel_x_wireValid <= SE_out_redist3_stall_entry_o8_8_fifo_V0 and SE_i_idxprom38_conv1x1_sel_x_and0;

    -- SE_out_redist3_stall_entry_o8_8_fifo(STALLENABLE,225)
    SE_out_redist3_stall_entry_o8_8_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist3_stall_entry_o8_8_fifo_fromReg0 <= (others => '0');
            SE_out_redist3_stall_entry_o8_8_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist3_stall_entry_o8_8_fifo_fromReg0 <= SE_out_redist3_stall_entry_o8_8_fifo_toReg0;
            -- Succesor 1
            SE_out_redist3_stall_entry_o8_8_fifo_fromReg1 <= SE_out_redist3_stall_entry_o8_8_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist3_stall_entry_o8_8_fifo_consumed0 <= (not (SE_i_idxprom38_conv1x1_sel_x_backStall) and SE_out_redist3_stall_entry_o8_8_fifo_wireValid) or SE_out_redist3_stall_entry_o8_8_fifo_fromReg0;
    SE_out_redist3_stall_entry_o8_8_fifo_consumed1 <= (not (redist4_stall_entry_o8_54_fifo_stall_out) and SE_out_redist3_stall_entry_o8_8_fifo_wireValid) or SE_out_redist3_stall_entry_o8_8_fifo_fromReg1;
    -- Consuming
    SE_out_redist3_stall_entry_o8_8_fifo_StallValid <= SE_out_redist3_stall_entry_o8_8_fifo_backStall and SE_out_redist3_stall_entry_o8_8_fifo_wireValid;
    SE_out_redist3_stall_entry_o8_8_fifo_toReg0 <= SE_out_redist3_stall_entry_o8_8_fifo_StallValid and SE_out_redist3_stall_entry_o8_8_fifo_consumed0;
    SE_out_redist3_stall_entry_o8_8_fifo_toReg1 <= SE_out_redist3_stall_entry_o8_8_fifo_StallValid and SE_out_redist3_stall_entry_o8_8_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist3_stall_entry_o8_8_fifo_or0 <= SE_out_redist3_stall_entry_o8_8_fifo_consumed0;
    SE_out_redist3_stall_entry_o8_8_fifo_wireStall <= not (SE_out_redist3_stall_entry_o8_8_fifo_consumed1 and SE_out_redist3_stall_entry_o8_8_fifo_or0);
    SE_out_redist3_stall_entry_o8_8_fifo_backStall <= SE_out_redist3_stall_entry_o8_8_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist3_stall_entry_o8_8_fifo_V0 <= SE_out_redist3_stall_entry_o8_8_fifo_wireValid and not (SE_out_redist3_stall_entry_o8_8_fifo_fromReg0);
    SE_out_redist3_stall_entry_o8_8_fifo_V1 <= SE_out_redist3_stall_entry_o8_8_fifo_wireValid and not (SE_out_redist3_stall_entry_o8_8_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist3_stall_entry_o8_8_fifo_wireValid <= redist3_stall_entry_o8_8_fifo_valid_out;

    -- redist3_stall_entry_o8_8_fifo(STALLFIFO,100)
    redist3_stall_entry_o8_8_fifo_valid_in <= SE_stall_entry_V6;
    redist3_stall_entry_o8_8_fifo_stall_in <= SE_out_redist3_stall_entry_o8_8_fifo_backStall;
    redist3_stall_entry_o8_8_fifo_data_in <= bubble_select_stall_entry_f;
    redist3_stall_entry_o8_8_fifo_valid_in_bitsignaltemp <= redist3_stall_entry_o8_8_fifo_valid_in(0);
    redist3_stall_entry_o8_8_fifo_stall_in_bitsignaltemp <= redist3_stall_entry_o8_8_fifo_stall_in(0);
    redist3_stall_entry_o8_8_fifo_valid_out(0) <= redist3_stall_entry_o8_8_fifo_valid_out_bitsignaltemp;
    redist3_stall_entry_o8_8_fifo_stall_out(0) <= redist3_stall_entry_o8_8_fifo_stall_out_bitsignaltemp;
    theredist3_stall_entry_o8_8_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 9,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist3_stall_entry_o8_8_fifo_valid_in_bitsignaltemp,
        stall_in => redist3_stall_entry_o8_8_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_f,
        valid_out => redist3_stall_entry_o8_8_fifo_valid_out_bitsignaltemp,
        stall_out => redist3_stall_entry_o8_8_fifo_stall_out_bitsignaltemp,
        data_out => redist3_stall_entry_o8_8_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist2_stall_entry_o6_10_fifo(STALLFIFO,99)
    redist2_stall_entry_o6_10_fifo_valid_in <= SE_stall_entry_V5;
    redist2_stall_entry_o6_10_fifo_stall_in <= SE_out_redist2_stall_entry_o6_10_fifo_backStall;
    redist2_stall_entry_o6_10_fifo_data_in <= bubble_select_stall_entry_d;
    redist2_stall_entry_o6_10_fifo_valid_in_bitsignaltemp <= redist2_stall_entry_o6_10_fifo_valid_in(0);
    redist2_stall_entry_o6_10_fifo_stall_in_bitsignaltemp <= redist2_stall_entry_o6_10_fifo_stall_in(0);
    redist2_stall_entry_o6_10_fifo_valid_out(0) <= redist2_stall_entry_o6_10_fifo_valid_out_bitsignaltemp;
    redist2_stall_entry_o6_10_fifo_stall_out(0) <= redist2_stall_entry_o6_10_fifo_stall_out_bitsignaltemp;
    theredist2_stall_entry_o6_10_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 11,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist2_stall_entry_o6_10_fifo_valid_in_bitsignaltemp,
        stall_in => redist2_stall_entry_o6_10_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_d,
        valid_out => redist2_stall_entry_o6_10_fifo_valid_out_bitsignaltemp,
        stall_out => redist2_stall_entry_o6_10_fifo_stall_out_bitsignaltemp,
        data_out => redist2_stall_entry_o6_10_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist1_stall_entry_o5_54_fifo(STALLFIFO,98)
    redist1_stall_entry_o5_54_fifo_valid_in <= SE_stall_entry_V4;
    redist1_stall_entry_o5_54_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist1_stall_entry_o5_54_fifo_data_in <= bubble_select_stall_entry_c;
    redist1_stall_entry_o5_54_fifo_valid_in_bitsignaltemp <= redist1_stall_entry_o5_54_fifo_valid_in(0);
    redist1_stall_entry_o5_54_fifo_stall_in_bitsignaltemp <= redist1_stall_entry_o5_54_fifo_stall_in(0);
    redist1_stall_entry_o5_54_fifo_valid_out(0) <= redist1_stall_entry_o5_54_fifo_valid_out_bitsignaltemp;
    redist1_stall_entry_o5_54_fifo_stall_out(0) <= redist1_stall_entry_o5_54_fifo_stall_out_bitsignaltemp;
    theredist1_stall_entry_o5_54_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 55,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_stall_entry_o5_54_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_stall_entry_o5_54_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_c,
        valid_out => redist1_stall_entry_o5_54_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_stall_entry_o5_54_fifo_stall_out_bitsignaltemp,
        data_out => redist1_stall_entry_o5_54_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist0_stall_entry_o4_54_fifo(STALLFIFO,97)
    redist0_stall_entry_o4_54_fifo_valid_in <= SE_stall_entry_V3;
    redist0_stall_entry_o4_54_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist0_stall_entry_o4_54_fifo_data_in <= bubble_select_stall_entry_b;
    redist0_stall_entry_o4_54_fifo_valid_in_bitsignaltemp <= redist0_stall_entry_o4_54_fifo_valid_in(0);
    redist0_stall_entry_o4_54_fifo_stall_in_bitsignaltemp <= redist0_stall_entry_o4_54_fifo_stall_in(0);
    redist0_stall_entry_o4_54_fifo_valid_out(0) <= redist0_stall_entry_o4_54_fifo_valid_out_bitsignaltemp;
    redist0_stall_entry_o4_54_fifo_stall_out(0) <= redist0_stall_entry_o4_54_fifo_stall_out_bitsignaltemp;
    theredist0_stall_entry_o4_54_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 55,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_stall_entry_o4_54_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_stall_entry_o4_54_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_b,
        valid_out => redist0_stall_entry_o4_54_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_stall_entry_o4_54_fifo_stall_out_bitsignaltemp,
        data_out => redist0_stall_entry_o4_54_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist5_stall_entry_o9_7_0(STALLENABLE,228)
    -- Valid signal propagation
    SE_redist5_stall_entry_o9_7_0_V0 <= SE_redist5_stall_entry_o9_7_0_R_v_0;
    -- Stall signal propagation
    SE_redist5_stall_entry_o9_7_0_s_tv_0 <= SR_SE_redist5_stall_entry_o9_7_1_backStall and SE_redist5_stall_entry_o9_7_0_R_v_0;
    -- Backward Enable generation
    SE_redist5_stall_entry_o9_7_0_backEN <= not (SE_redist5_stall_entry_o9_7_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_stall_entry_o9_7_0_v_s_0 <= SE_redist5_stall_entry_o9_7_0_backEN and SE_stall_entry_V1;
    -- Backward Stall generation
    SE_redist5_stall_entry_o9_7_0_backStall <= not (SE_redist5_stall_entry_o9_7_0_v_s_0);
    SE_redist5_stall_entry_o9_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_stall_entry_o9_7_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_stall_entry_o9_7_0_backEN = "0") THEN
                SE_redist5_stall_entry_o9_7_0_R_v_0 <= SE_redist5_stall_entry_o9_7_0_R_v_0 and SE_redist5_stall_entry_o9_7_0_s_tv_0;
            ELSE
                SE_redist5_stall_entry_o9_7_0_R_v_0 <= SE_redist5_stall_entry_o9_7_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- i_syncbuf_output_im_sync_buffer_conv1x1(BLACKBOX,41)@10
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_output_im_sync_buffer_conv1x1 : i_syncbuf_output_im_sync_buffer_conv1x1301
    PORT MAP (
        in_buffer_in => in_output_im,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_redist2_stall_entry_o6_10_fifo_backStall,
        in_valid_in => SE_out_bubble_out_stall_entry_1_V0,
        out_buffer_out => i_syncbuf_output_im_sync_buffer_conv1x1_out_buffer_out,
        out_stall_out => i_syncbuf_output_im_sync_buffer_conv1x1_out_stall_out,
        out_valid_out => i_syncbuf_output_im_sync_buffer_conv1x1_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_stall_entry_1(STALLENABLE,282)
    -- Valid signal propagation
    SE_out_bubble_out_stall_entry_1_V0 <= SE_out_bubble_out_stall_entry_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_stall_entry_1_backStall <= i_syncbuf_output_im_sync_buffer_conv1x1_out_stall_out or not (SE_out_bubble_out_stall_entry_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_stall_entry_1_wireValid <= bubble_out_stall_entry_1_reg_valid_out;

    -- bubble_out_stall_entry_1_reg(STALLFIFO,349)
    bubble_out_stall_entry_1_reg_valid_in <= SE_stall_entry_V0;
    bubble_out_stall_entry_1_reg_stall_in <= SE_out_bubble_out_stall_entry_1_backStall;
    bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp <= bubble_out_stall_entry_1_reg_valid_in(0);
    bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp <= bubble_out_stall_entry_1_reg_stall_in(0);
    bubble_out_stall_entry_1_reg_valid_out(0) <= bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    bubble_out_stall_entry_1_reg_stall_out(0) <= bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    thebubble_out_stall_entry_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 11,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,205)
    SE_stall_entry_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_stall_entry_fromReg0 <= (others => '0');
            SE_stall_entry_fromReg1 <= (others => '0');
            SE_stall_entry_fromReg2 <= (others => '0');
            SE_stall_entry_fromReg3 <= (others => '0');
            SE_stall_entry_fromReg4 <= (others => '0');
            SE_stall_entry_fromReg5 <= (others => '0');
            SE_stall_entry_fromReg6 <= (others => '0');
            SE_stall_entry_fromReg7 <= (others => '0');
            SE_stall_entry_fromReg8 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            -- Succesor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            -- Succesor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            -- Succesor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            -- Succesor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            -- Succesor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
            -- Succesor 6
            SE_stall_entry_fromReg6 <= SE_stall_entry_toReg6;
            -- Succesor 7
            SE_stall_entry_fromReg7 <= SE_stall_entry_toReg7;
            -- Succesor 8
            SE_stall_entry_fromReg8 <= SE_stall_entry_toReg8;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_stall_entry_consumed0 <= (not (bubble_out_stall_entry_1_reg_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg0;
    SE_stall_entry_consumed1 <= (not (SE_redist5_stall_entry_o9_7_0_backStall) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg1;
    SE_stall_entry_consumed2 <= (not (i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_o_stall) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg2;
    SE_stall_entry_consumed3 <= (not (redist0_stall_entry_o4_54_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg3;
    SE_stall_entry_consumed4 <= (not (redist1_stall_entry_o5_54_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg4;
    SE_stall_entry_consumed5 <= (not (redist2_stall_entry_o6_10_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg5;
    SE_stall_entry_consumed6 <= (not (redist3_stall_entry_o8_8_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg6;
    SE_stall_entry_consumed7 <= (not (redist7_stall_entry_o10_54_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg7;
    SE_stall_entry_consumed8 <= (not (redist8_stall_entry_o11_54_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg8;
    -- Consuming
    SE_stall_entry_StallValid <= SE_stall_entry_backStall and SE_stall_entry_wireValid;
    SE_stall_entry_toReg0 <= SE_stall_entry_StallValid and SE_stall_entry_consumed0;
    SE_stall_entry_toReg1 <= SE_stall_entry_StallValid and SE_stall_entry_consumed1;
    SE_stall_entry_toReg2 <= SE_stall_entry_StallValid and SE_stall_entry_consumed2;
    SE_stall_entry_toReg3 <= SE_stall_entry_StallValid and SE_stall_entry_consumed3;
    SE_stall_entry_toReg4 <= SE_stall_entry_StallValid and SE_stall_entry_consumed4;
    SE_stall_entry_toReg5 <= SE_stall_entry_StallValid and SE_stall_entry_consumed5;
    SE_stall_entry_toReg6 <= SE_stall_entry_StallValid and SE_stall_entry_consumed6;
    SE_stall_entry_toReg7 <= SE_stall_entry_StallValid and SE_stall_entry_consumed7;
    SE_stall_entry_toReg8 <= SE_stall_entry_StallValid and SE_stall_entry_consumed8;
    -- Backward Stall generation
    SE_stall_entry_or0 <= SE_stall_entry_consumed0;
    SE_stall_entry_or1 <= SE_stall_entry_consumed1 and SE_stall_entry_or0;
    SE_stall_entry_or2 <= SE_stall_entry_consumed2 and SE_stall_entry_or1;
    SE_stall_entry_or3 <= SE_stall_entry_consumed3 and SE_stall_entry_or2;
    SE_stall_entry_or4 <= SE_stall_entry_consumed4 and SE_stall_entry_or3;
    SE_stall_entry_or5 <= SE_stall_entry_consumed5 and SE_stall_entry_or4;
    SE_stall_entry_or6 <= SE_stall_entry_consumed6 and SE_stall_entry_or5;
    SE_stall_entry_or7 <= SE_stall_entry_consumed7 and SE_stall_entry_or6;
    SE_stall_entry_wireStall <= not (SE_stall_entry_consumed8 and SE_stall_entry_or7);
    SE_stall_entry_backStall <= SE_stall_entry_wireStall;
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg0);
    SE_stall_entry_V1 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg1);
    SE_stall_entry_V2 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg2);
    SE_stall_entry_V3 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg3);
    SE_stall_entry_V4 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg4);
    SE_stall_entry_V5 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg5);
    SE_stall_entry_V6 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg6);
    SE_stall_entry_V7 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg7);
    SE_stall_entry_V8 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg8);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo(STALLFIFO,126)
    redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_in <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V7;
    redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_data_in <= bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_i;
    redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_in_bitsignaltemp <= redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_in(0);
    redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_in_bitsignaltemp <= redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_in(0);
    redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_out(0) <= redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_out_bitsignaltemp;
    redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_out(0) <= redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_out_bitsignaltemp;
    theredist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_i,
        valid_out => redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_out_bitsignaltemp,
        data_out => redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo(STALLFIFO,125)
    redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_in <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V6;
    redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_data_in <= bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_h;
    redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_in_bitsignaltemp <= redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_in(0);
    redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_in_bitsignaltemp <= redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_in(0);
    redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_out(0) <= redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_out_bitsignaltemp;
    redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_out(0) <= redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_out_bitsignaltemp;
    theredist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_h,
        valid_out => redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_out_bitsignaltemp,
        data_out => redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo(STALLFIFO,124)
    redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_in <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V5;
    redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_data_in <= bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_g;
    redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_in_bitsignaltemp <= redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_in(0);
    redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_in_bitsignaltemp <= redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_in(0);
    redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_out(0) <= redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_out_bitsignaltemp;
    redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_out(0) <= redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_out_bitsignaltemp;
    theredist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_g,
        valid_out => redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_out_bitsignaltemp,
        data_out => redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo(STALLFIFO,123)
    redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_in <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V4;
    redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_data_in <= bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_f;
    redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_in_bitsignaltemp <= redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_in(0);
    redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_in_bitsignaltemp <= redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_in(0);
    redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_out(0) <= redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_out_bitsignaltemp;
    redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_out(0) <= redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_out_bitsignaltemp;
    theredist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_f,
        valid_out => redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_out_bitsignaltemp,
        data_out => redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo(STALLFIFO,122)
    redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_in <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V3;
    redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_data_in <= bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_e;
    redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_in_bitsignaltemp <= redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_in(0);
    redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_in_bitsignaltemp <= redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_in(0);
    redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_out(0) <= redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_out_bitsignaltemp;
    redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_out(0) <= redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_out_bitsignaltemp;
    theredist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_e,
        valid_out => redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_out_bitsignaltemp,
        data_out => redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo(STALLFIFO,121)
    redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_in <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V2;
    redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_data_in <= bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_d;
    redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_in_bitsignaltemp <= redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_in(0);
    redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_in_bitsignaltemp <= redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_in(0);
    redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_out(0) <= redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_out_bitsignaltemp;
    redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_out(0) <= redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_out_bitsignaltemp;
    theredist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_d,
        valid_out => redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_out_bitsignaltemp,
        data_out => redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo(STALLFIFO,120)
    redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_in <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V1;
    redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_in <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall;
    redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_data_in <= bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_b;
    redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_in_bitsignaltemp <= redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_in(0);
    redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_in_bitsignaltemp <= redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_in(0);
    redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_out(0) <= redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_out_bitsignaltemp;
    redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_out(0) <= redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_out_bitsignaltemp;
    theredist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_b,
        valid_out => redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_out_bitsignaltemp,
        data_out => redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x(STALLENABLE,198)
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg1 <= (others => '0');
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg2 <= (others => '0');
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg3 <= (others => '0');
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg4 <= (others => '0');
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg5 <= (others => '0');
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg6 <= (others => '0');
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg7 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg0 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg1 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg2 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg3 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg4 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg5 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg5;
            -- Succesor 6
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg6 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg6;
            -- Succesor 7
            SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg7 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg7;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed0 <= (not (SE_out_redist2_stall_entry_o6_10_fifo_backStall) and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg0;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed1 <= (not (redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_stall_out) and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg1;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed2 <= (not (redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_stall_out) and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg2;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed3 <= (not (redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_stall_out) and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg3;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed4 <= (not (redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_stall_out) and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg4;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed5 <= (not (redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_stall_out) and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg5;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed6 <= (not (redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_stall_out) and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg6;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed7 <= (not (redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_stall_out) and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg7;
    -- Consuming
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_StallValid <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_backStall and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg0 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg1 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed1;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg2 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed2;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg3 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed3;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg4 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed4;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg5 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed5;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg6 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed6;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_toReg7 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed7;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or0 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or1 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed1 and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or0;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or2 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed2 and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or1;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or3 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed3 and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or2;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or4 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed4 and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or3;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or5 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed5 and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or4;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or6 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed6 and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or5;
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireStall <= not (SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_consumed7 and SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_or6);
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_backStall <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V0 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg0);
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V1 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg1);
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V2 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg2);
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V3 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg3);
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V4 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg4);
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V5 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg5);
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V6 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg6);
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V7 <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_fromReg7);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_wireValid <= i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_o_valid;

    -- bubble_join_stall_entry(BITJOIN,138)
    bubble_join_stall_entry_q <= in_j_01052 & in_c3_exe241 & in_c3_exe133 & in_c2_exe125 & in_c1_exe116 & in_c1_exe115466 & in_c0_exe463 & in_c0_exe361 & in_c0_exe16;

    -- bubble_select_stall_entry(BITSELECT,139)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(63 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(64 downto 64));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(65 downto 65));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(97 downto 66));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(161 downto 98));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(193 downto 162));
    bubble_select_stall_entry_h <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(225 downto 194));
    bubble_select_stall_entry_i <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(226 downto 226));
    bubble_select_stall_entry_j <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(258 downto 227));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x(BLACKBOX,28)@0
    -- in in_i_stall@20000000
    -- out out_c0_exit167_0@10
    -- out out_c0_exit167_1@10
    -- out out_c0_exit167_2@10
    -- out out_c0_exit167_3@10
    -- out out_c0_exit167_4@10
    -- out out_c0_exit167_5@10
    -- out out_c0_exit167_6@10
    -- out out_c0_exit167_7@10
    -- out out_c0_exit167_8@10
    -- out out_o_stall@20000000
    -- out out_o_valid@10
    thei_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x : i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1
    PORT MAP (
        in_c0_eni4_0 => GND_q,
        in_c0_eni4_1 => bubble_select_stall_entry_e,
        in_c0_eni4_2 => bubble_select_stall_entry_j,
        in_c0_eni4_3 => bubble_select_stall_entry_d,
        in_c0_eni4_4 => bubble_select_stall_entry_i,
        in_i_stall => SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_backStall,
        in_i_valid => SE_stall_entry_V2,
        in_input_channels => in_input_channels,
        in_input_size => in_input_size,
        in_output_size => in_output_size,
        in_pad => in_pad,
        in_stride => in_stride,
        out_c0_exit167_1 => i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1,
        out_c0_exit167_2 => i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_2,
        out_c0_exit167_3 => i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3,
        out_c0_exit167_4 => i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4,
        out_c0_exit167_5 => i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5,
        out_c0_exit167_6 => i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6,
        out_c0_exit167_7 => i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7,
        out_c0_exit167_8 => i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8,
        out_o_stall => i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x(BITJOIN,131)
    bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_q <= i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8 & i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7 & i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6 & i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5 & i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4 & i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3 & i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_2 & i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1;

    -- bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x(BITSELECT,132)
    bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_q(0 downto 0));
    bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_q(32 downto 1));
    bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_q(64 downto 33));
    bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_q(65 downto 65));
    bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_q(66 downto 66));
    bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_q(98 downto 67));
    bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_q(99 downto 99));
    bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_i <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_q(100 downto 100));

    -- SE_out_redist2_stall_entry_o6_10_fifo(STALLENABLE,223)
    -- Valid signal propagation
    SE_out_redist2_stall_entry_o6_10_fifo_V0 <= SE_out_redist2_stall_entry_o6_10_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist2_stall_entry_o6_10_fifo_backStall <= i_store_unnamed_conv1x13_conv1x1_out_o_stall or not (SE_out_redist2_stall_entry_o6_10_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist2_stall_entry_o6_10_fifo_and0 <= redist2_stall_entry_o6_10_fifo_valid_out;
    SE_out_redist2_stall_entry_o6_10_fifo_and1 <= i_syncbuf_output_im_sync_buffer_conv1x1_out_valid_out and SE_out_redist2_stall_entry_o6_10_fifo_and0;
    SE_out_redist2_stall_entry_o6_10_fifo_and2 <= SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_V0 and SE_out_redist2_stall_entry_o6_10_fifo_and1;
    SE_out_redist2_stall_entry_o6_10_fifo_wireValid <= SE_out_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_V0 and SE_out_redist2_stall_entry_o6_10_fifo_and2;

    -- SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo(STALLENABLE,263)
    -- Valid signal propagation
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_V0 <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall <= in_stall_in or not (SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and0 <= redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_valid_out;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and1 <= redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and0;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and2 <= redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and1;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and3 <= redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and2;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and4 <= redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and3;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and5 <= redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and4;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and6 <= redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and5;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and7 <= redist10_stall_entry_o12_54_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and6;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and8 <= redist8_stall_entry_o11_54_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and7;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and9 <= redist7_stall_entry_o10_54_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and8;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and10 <= redist6_stall_entry_o9_54_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and9;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and11 <= redist4_stall_entry_o8_54_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and10;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and12 <= redist1_stall_entry_o5_54_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and11;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and13 <= redist0_stall_entry_o4_54_fifo_valid_out and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and12;
    SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_wireValid <= i_store_unnamed_conv1x13_conv1x1_out_o_valid and SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_and13;

    -- bubble_join_redist2_stall_entry_o6_10_fifo(BITJOIN,149)
    bubble_join_redist2_stall_entry_o6_10_fifo_q <= redist2_stall_entry_o6_10_fifo_data_out;

    -- bubble_select_redist2_stall_entry_o6_10_fifo(BITSELECT,150)
    bubble_select_redist2_stall_entry_o6_10_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist2_stall_entry_o6_10_fifo_q(0 downto 0));

    -- i_arrayidx39_conv1x1_conv1x1321_mult_multconst_x(CONSTANT,21)
    i_arrayidx39_conv1x1_conv1x1321_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0(REG,128)
    redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_backEN = "1") THEN
                redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select(BITSELECT,75)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_b <= redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_q(17 downto 0);
    i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_c <= redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_q(63 downto 54);
    i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_d <= redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_q(35 downto 18);
    i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_e <= redist19_bgTrunc_i_add_ptr6_sum_conv1x1_sel_x_b_1_0_q(53 downto 36);

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_im3_shift0(BITSHIFT,72)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_im3_shift0_qint <= i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx39_conv1x1_conv1x1321_mult_x_im3_shift0_q <= i_arrayidx39_conv1x1_conv1x1321_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_align_15(BITSHIFT,65)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx39_conv1x1_conv1x1321_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx39_conv1x1_conv1x1321_mult_x_align_15_q <= i_arrayidx39_conv1x1_conv1x1321_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_im6_shift0(BITSHIFT,73)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_im6_shift0_qint <= i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx39_conv1x1_conv1x1321_mult_x_im6_shift0_q <= i_arrayidx39_conv1x1_conv1x1321_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_align_14(BITSHIFT,64)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx39_conv1x1_conv1x1321_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx39_conv1x1_conv1x1321_mult_x_align_14_q <= i_arrayidx39_conv1x1_conv1x1321_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_join_16(BITJOIN,66)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_join_16_q <= i_arrayidx39_conv1x1_conv1x1321_mult_x_align_15_q & i_arrayidx39_conv1x1_conv1x1321_mult_x_align_14_q;

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_im9_shift0(BITSHIFT,74)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_im9_shift0_qint <= i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx39_conv1x1_conv1x1321_mult_x_im9_shift0_q <= i_arrayidx39_conv1x1_conv1x1321_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_align_12(BITSHIFT,62)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx39_conv1x1_conv1x1321_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx39_conv1x1_conv1x1321_mult_x_align_12_q <= i_arrayidx39_conv1x1_conv1x1321_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_im0_shift0(BITSHIFT,71)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_im0_shift0_qint <= i_arrayidx39_conv1x1_conv1x1321_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx39_conv1x1_conv1x1321_mult_x_im0_shift0_q <= i_arrayidx39_conv1x1_conv1x1321_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_join_13(BITJOIN,63)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_join_13_q <= i_arrayidx39_conv1x1_conv1x1321_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx39_conv1x1_conv1x1321_mult_x_im0_shift0_q);

    -- i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0(ADD,67)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx39_conv1x1_conv1x1321_mult_x_join_13_q);
    i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx39_conv1x1_conv1x1321_mult_x_join_16_q);
    i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_b));
    i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_q <= i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx39_conv1x1_conv1x1321_mult_extender_x(BITJOIN,20)@9
    i_arrayidx39_conv1x1_conv1x1321_mult_extender_x_q <= i_arrayidx39_conv1x1_conv1x1321_mult_multconst_x_q & i_arrayidx39_conv1x1_conv1x1321_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x(BITSELECT,22)@9
    i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b <= i_arrayidx39_conv1x1_conv1x1321_mult_extender_x_q(63 downto 0);

    -- redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0(REG,127)
    redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_syncbuf_output_im_sync_buffer_conv1x1(BITJOIN,135)
    bubble_join_i_syncbuf_output_im_sync_buffer_conv1x1_q <= i_syncbuf_output_im_sync_buffer_conv1x1_out_buffer_out;

    -- bubble_select_i_syncbuf_output_im_sync_buffer_conv1x1(BITSELECT,136)
    bubble_select_i_syncbuf_output_im_sync_buffer_conv1x1_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_output_im_sync_buffer_conv1x1_q(63 downto 0));

    -- i_arrayidx39_conv1x1_conv1x1321_add_x(ADD,23)@10
    i_arrayidx39_conv1x1_conv1x1321_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_output_im_sync_buffer_conv1x1_b);
    i_arrayidx39_conv1x1_conv1x1321_add_x_b <= STD_LOGIC_VECTOR("0" & redist18_i_arrayidx39_conv1x1_conv1x1321_trunc_sel_x_b_1_0_q);
    i_arrayidx39_conv1x1_conv1x1321_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx39_conv1x1_conv1x1321_add_x_a) + UNSIGNED(i_arrayidx39_conv1x1_conv1x1321_add_x_b));
    i_arrayidx39_conv1x1_conv1x1321_add_x_q <= i_arrayidx39_conv1x1_conv1x1321_add_x_o(64 downto 0);

    -- i_arrayidx39_conv1x1_conv1x1321_dupName_0_trunc_sel_x(BITSELECT,17)@10
    i_arrayidx39_conv1x1_conv1x1321_dupName_0_trunc_sel_x_b <= i_arrayidx39_conv1x1_conv1x1321_add_x_q(63 downto 0);

    -- i_store_unnamed_conv1x13_conv1x1(BLACKBOX,40)@10
    -- in in_i_stall@20000000
    -- out out_lsu_unnamed_conv1x13_o_active@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@54
    -- out out_unnamed_conv1x13_avm_address@20000000
    -- out out_unnamed_conv1x13_avm_burstcount@20000000
    -- out out_unnamed_conv1x13_avm_byteenable@20000000
    -- out out_unnamed_conv1x13_avm_enable@20000000
    -- out out_unnamed_conv1x13_avm_read@20000000
    -- out out_unnamed_conv1x13_avm_write@20000000
    -- out out_unnamed_conv1x13_avm_writedata@20000000
    thei_store_unnamed_conv1x13_conv1x1 : i_store_unnamed_conv1x13_conv1x1322
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx39_conv1x1_conv1x1321_dupName_0_trunc_sel_x_b,
        in_i_predicate => bubble_select_redist2_stall_entry_o6_10_fifo_b,
        in_i_stall => SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_backStall,
        in_i_valid => SE_out_redist2_stall_entry_o6_10_fifo_V0,
        in_i_writedata => bubble_select_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_c,
        in_unnamed_conv1x13_avm_readdata => in_unnamed_conv1x13_avm_readdata,
        in_unnamed_conv1x13_avm_readdatavalid => in_unnamed_conv1x13_avm_readdatavalid,
        in_unnamed_conv1x13_avm_waitrequest => in_unnamed_conv1x13_avm_waitrequest,
        in_unnamed_conv1x13_avm_writeack => in_unnamed_conv1x13_avm_writeack,
        out_lsu_unnamed_conv1x13_o_active => i_store_unnamed_conv1x13_conv1x1_out_lsu_unnamed_conv1x13_o_active,
        out_o_stall => i_store_unnamed_conv1x13_conv1x1_out_o_stall,
        out_o_valid => i_store_unnamed_conv1x13_conv1x1_out_o_valid,
        out_unnamed_conv1x13_avm_address => i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_address,
        out_unnamed_conv1x13_avm_burstcount => i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_burstcount,
        out_unnamed_conv1x13_avm_byteenable => i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_byteenable,
        out_unnamed_conv1x13_avm_enable => i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_enable,
        out_unnamed_conv1x13_avm_read => i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_read,
        out_unnamed_conv1x13_avm_write => i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_write,
        out_unnamed_conv1x13_avm_writedata => i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_lsu_unnamed_conv1x13_o_active <= i_store_unnamed_conv1x13_conv1x1_out_lsu_unnamed_conv1x13_o_active;

    -- bubble_join_redist10_stall_entry_o12_54_fifo(BITJOIN,167)
    bubble_join_redist10_stall_entry_o12_54_fifo_q <= redist10_stall_entry_o12_54_fifo_data_out;

    -- bubble_select_redist10_stall_entry_o12_54_fifo(BITSELECT,168)
    bubble_select_redist10_stall_entry_o12_54_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist10_stall_entry_o12_54_fifo_q(31 downto 0));

    -- bubble_join_redist8_stall_entry_o11_54_fifo(BITJOIN,164)
    bubble_join_redist8_stall_entry_o11_54_fifo_q <= redist8_stall_entry_o11_54_fifo_data_out;

    -- bubble_select_redist8_stall_entry_o11_54_fifo(BITSELECT,165)
    bubble_select_redist8_stall_entry_o11_54_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist8_stall_entry_o11_54_fifo_q(0 downto 0));

    -- bubble_join_redist7_stall_entry_o10_54_fifo(BITJOIN,161)
    bubble_join_redist7_stall_entry_o10_54_fifo_q <= redist7_stall_entry_o10_54_fifo_data_out;

    -- bubble_select_redist7_stall_entry_o10_54_fifo(BITSELECT,162)
    bubble_select_redist7_stall_entry_o10_54_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist7_stall_entry_o10_54_fifo_q(31 downto 0));

    -- bubble_join_redist6_stall_entry_o9_54_fifo(BITJOIN,158)
    bubble_join_redist6_stall_entry_o9_54_fifo_q <= redist6_stall_entry_o9_54_fifo_data_out;

    -- bubble_select_redist6_stall_entry_o9_54_fifo(BITSELECT,159)
    bubble_select_redist6_stall_entry_o9_54_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist6_stall_entry_o9_54_fifo_q(31 downto 0));

    -- bubble_join_redist4_stall_entry_o8_54_fifo(BITJOIN,155)
    bubble_join_redist4_stall_entry_o8_54_fifo_q <= redist4_stall_entry_o8_54_fifo_data_out;

    -- bubble_select_redist4_stall_entry_o8_54_fifo(BITSELECT,156)
    bubble_select_redist4_stall_entry_o8_54_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist4_stall_entry_o8_54_fifo_q(63 downto 0));

    -- bubble_join_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo(BITJOIN,188)
    bubble_join_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_q <= redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_data_out;

    -- bubble_select_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo(BITSELECT,189)
    bubble_select_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_q(0 downto 0));

    -- bubble_join_redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo(BITJOIN,185)
    bubble_join_redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_q <= redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_data_out;

    -- bubble_select_redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo(BITSELECT,186)
    bubble_select_redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_q(0 downto 0));

    -- bubble_join_redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo(BITJOIN,182)
    bubble_join_redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_q <= redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_data_out;

    -- bubble_select_redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo(BITSELECT,183)
    bubble_select_redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_q(31 downto 0));

    -- bubble_join_redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo(BITJOIN,179)
    bubble_join_redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_q <= redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_data_out;

    -- bubble_select_redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo(BITSELECT,180)
    bubble_select_redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_q(0 downto 0));

    -- bubble_join_redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo(BITJOIN,176)
    bubble_join_redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_q <= redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_data_out;

    -- bubble_select_redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo(BITSELECT,177)
    bubble_select_redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_q(0 downto 0));

    -- bubble_join_redist1_stall_entry_o5_54_fifo(BITJOIN,146)
    bubble_join_redist1_stall_entry_o5_54_fifo_q <= redist1_stall_entry_o5_54_fifo_data_out;

    -- bubble_select_redist1_stall_entry_o5_54_fifo(BITSELECT,147)
    bubble_select_redist1_stall_entry_o5_54_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_stall_entry_o5_54_fifo_q(0 downto 0));

    -- bubble_join_redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo(BITJOIN,173)
    bubble_join_redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_q <= redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_data_out;

    -- bubble_select_redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo(BITSELECT,174)
    bubble_select_redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_q(31 downto 0));

    -- bubble_join_redist0_stall_entry_o4_54_fifo(BITJOIN,143)
    bubble_join_redist0_stall_entry_o4_54_fifo_q <= redist0_stall_entry_o4_54_fifo_data_out;

    -- bubble_select_redist0_stall_entry_o4_54_fifo(BITSELECT,144)
    bubble_select_redist0_stall_entry_o4_54_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_stall_entry_o4_54_fifo_q(63 downto 0));

    -- bubble_join_redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo(BITJOIN,170)
    bubble_join_redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_q <= redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_data_out;

    -- bubble_select_redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo(BITSELECT,171)
    bubble_select_redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_q(0 downto 0));

    -- dupName_0_sync_out_x(GPOUT,9)@54
    out_c0_exe1168 <= bubble_select_redist11_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_1_44_fifo_b;
    out_c0_exe16 <= bubble_select_redist0_stall_entry_o4_54_fifo_b;
    out_c0_exe3170 <= bubble_select_redist12_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_3_44_fifo_b;
    out_c0_exe361 <= bubble_select_redist1_stall_entry_o5_54_fifo_b;
    out_c0_exe4171 <= bubble_select_redist13_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_4_44_fifo_b;
    out_c0_exe5172 <= bubble_select_redist14_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_5_44_fifo_b;
    out_c0_exe6 <= bubble_select_redist15_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_6_44_fifo_b;
    out_c0_exe7 <= bubble_select_redist16_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_7_44_fifo_b;
    out_c0_exe8 <= bubble_select_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_b;
    out_c1_exe116 <= bubble_select_redist4_stall_entry_o8_54_fifo_b;
    out_c2_exe125 <= bubble_select_redist6_stall_entry_o9_54_fifo_b;
    out_c3_exe133 <= bubble_select_redist7_stall_entry_o10_54_fifo_b;
    out_c3_exe241 <= bubble_select_redist8_stall_entry_o11_54_fifo_b;
    out_j_01052 <= bubble_select_redist10_stall_entry_o12_54_fifo_b;
    out_valid_out <= SE_out_redist17_i_sfc_c0_for_end_loopexit_conv1x1_c0_enter158_conv1x1_aunroll_x_out_c0_exit167_8_44_fifo_V0;

    -- ext_sig_sync_out(GPOUT,35)
    out_unnamed_conv1x13_avm_address <= i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_address;
    out_unnamed_conv1x13_avm_enable <= i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_enable;
    out_unnamed_conv1x13_avm_read <= i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_read;
    out_unnamed_conv1x13_avm_write <= i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_write;
    out_unnamed_conv1x13_avm_writedata <= i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_writedata;
    out_unnamed_conv1x13_avm_byteenable <= i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_byteenable;
    out_unnamed_conv1x13_avm_burstcount <= i_store_unnamed_conv1x13_conv1x1_out_unnamed_conv1x13_avm_burstcount;

    -- sync_out(GPOUT,49)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
