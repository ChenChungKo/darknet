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

-- VHDL created from bb_conv1x1_B7_stall_region
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

entity bb_conv1x1_B7_stall_region is
    port (
        out_lsu_unnamed_conv1x111_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        in_input_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe116869 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe12 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe121191 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe221295 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321399 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe357 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417177 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517283 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe112 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe1238104 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe121 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe129 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe237 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01048 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116869 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe12 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe1254 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe221295 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2255 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe321399 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3256 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe357 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417177 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4257 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe517283 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5258 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe112 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe121 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe129 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe237 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01048 : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv1x111_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x111_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x111_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x111_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x111_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x111_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x111_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x111_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B7_stall_region;

architecture normal of bb_conv1x1_B7_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1 is
        port (
            in_c0_eni4242_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni4242_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni4242_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni4242_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni4242_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit253_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit253_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit253_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit253_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit253_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit253_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_unnamed_conv1x111_conv1x1410 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x111_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x111_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv1x111_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x111_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_output_im_sync_buffer71_conv1x1392 is
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
    signal bgTrunc_i_add37_2_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom38_2_conv1x1_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal c_float_0_000000e_00_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add37_2_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_2_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_2_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_2_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_ptr6_sum_2_conv1x1_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr6_sum_2_conv1x1_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr6_sum_2_conv1x1_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr6_sum_2_conv1x1_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_c0_exe1254_conv1x1_vt_const_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_c0_exe1254_conv1x1_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_c0_exe1254_conv1x1_vt_select_31_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_select54_conv1x1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select54_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_conv1x111_conv1x1_out_lsu_unnamed_conv1x111_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x111_conv1x1_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x111_conv1x1_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_syncbuf_output_im_sync_buffer71_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_output_im_sync_buffer71_conv1x1_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_output_im_sync_buffer71_conv1x1_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_stall_entry_o4_4_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_4_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_4_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_4_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o4_38_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o4_38_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o4_38_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o4_38_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o4_38_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o4_38_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o4_38_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o4_38_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o4_38_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o4_38_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o4_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o4_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist2_stall_entry_o4_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o4_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist2_stall_entry_o4_48_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o4_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o4_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist2_stall_entry_o4_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o4_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist2_stall_entry_o4_48_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o5_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o5_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist3_stall_entry_o5_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o5_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist3_stall_entry_o5_48_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist3_stall_entry_o5_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o5_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist3_stall_entry_o5_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o5_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist3_stall_entry_o5_48_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_stall_entry_o6_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_stall_entry_o7_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_stall_entry_o7_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist5_stall_entry_o7_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_stall_entry_o7_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist5_stall_entry_o7_48_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_stall_entry_o7_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_stall_entry_o7_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist5_stall_entry_o7_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_stall_entry_o7_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist5_stall_entry_o7_48_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o8_4_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o8_4_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o8_4_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o8_4_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o8_38_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o8_38_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o8_38_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o8_38_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o8_38_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o8_38_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o8_38_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o8_38_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o8_38_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o8_38_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o8_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o8_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o8_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o8_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o8_48_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o8_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o8_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o8_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o8_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o8_48_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o9_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o9_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist9_stall_entry_o9_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o9_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist9_stall_entry_o9_48_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o9_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o9_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist9_stall_entry_o9_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o9_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist9_stall_entry_o9_48_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o10_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o10_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist10_stall_entry_o10_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o10_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist10_stall_entry_o10_48_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o10_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o10_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist10_stall_entry_o10_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o10_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist10_stall_entry_o10_48_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_stall_entry_o11_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_stall_entry_o11_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist11_stall_entry_o11_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_stall_entry_o11_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist11_stall_entry_o11_48_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_stall_entry_o11_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_stall_entry_o11_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist11_stall_entry_o11_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_stall_entry_o11_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist11_stall_entry_o11_48_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_stall_entry_o12_2_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist12_stall_entry_o12_2_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_stall_entry_o12_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_stall_entry_o12_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist13_stall_entry_o12_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_stall_entry_o12_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist13_stall_entry_o12_48_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_stall_entry_o12_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_stall_entry_o12_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist13_stall_entry_o12_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_stall_entry_o12_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist13_stall_entry_o12_48_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist14_stall_entry_o13_4_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_stall_entry_o13_4_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_stall_entry_o13_4_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_stall_entry_o13_4_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_stall_entry_o14_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_stall_entry_o14_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_stall_entry_o14_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist16_stall_entry_o14_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_stall_entry_o14_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist16_stall_entry_o14_48_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_stall_entry_o14_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_stall_entry_o14_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist16_stall_entry_o14_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_stall_entry_o14_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist16_stall_entry_o14_48_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_stall_entry_o15_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_stall_entry_o15_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist17_stall_entry_o15_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_stall_entry_o15_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist17_stall_entry_o15_48_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_stall_entry_o15_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_stall_entry_o15_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist17_stall_entry_o15_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_stall_entry_o15_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist17_stall_entry_o15_48_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_stall_entry_o16_38_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_stall_entry_o16_38_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist18_stall_entry_o16_38_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_stall_entry_o16_38_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist18_stall_entry_o16_38_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_stall_entry_o16_38_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_stall_entry_o16_38_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist18_stall_entry_o16_38_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_stall_entry_o16_38_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist18_stall_entry_o16_38_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_stall_entry_o16_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_stall_entry_o16_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist19_stall_entry_o16_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_stall_entry_o16_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist19_stall_entry_o16_48_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_stall_entry_o16_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_stall_entry_o16_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist19_stall_entry_o16_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_stall_entry_o16_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist19_stall_entry_o16_48_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_stall_entry_o17_38_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_stall_entry_o17_38_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist20_stall_entry_o17_38_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_stall_entry_o17_38_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist20_stall_entry_o17_38_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_stall_entry_o17_38_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_stall_entry_o17_38_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist20_stall_entry_o17_38_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_stall_entry_o17_38_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist20_stall_entry_o17_38_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist21_stall_entry_o17_48_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_stall_entry_o17_48_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist21_stall_entry_o17_48_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_stall_entry_o17_48_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist21_stall_entry_o17_48_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist21_stall_entry_o17_48_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_stall_entry_o17_48_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist21_stall_entry_o17_48_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_stall_entry_o17_48_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist21_stall_entry_o17_48_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist22_i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist23_bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist24_bgTrunc_i_add37_2_conv1x1_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_q : STD_LOGIC_VECTOR (66 downto 0);
    signal bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_syncbuf_output_im_sync_buffer71_conv1x1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_output_im_sync_buffer71_conv1x1_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (294 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_i : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_j : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_stall_entry_k : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_l : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_m : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_n : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_o : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist1_stall_entry_o4_38_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist1_stall_entry_o4_38_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist2_stall_entry_o4_48_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist2_stall_entry_o4_48_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist3_stall_entry_o5_48_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist3_stall_entry_o5_48_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist5_stall_entry_o7_48_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist5_stall_entry_o7_48_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist7_stall_entry_o8_38_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist7_stall_entry_o8_38_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist8_stall_entry_o8_48_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist8_stall_entry_o8_48_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist9_stall_entry_o9_48_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist9_stall_entry_o9_48_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist10_stall_entry_o10_48_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist10_stall_entry_o10_48_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist11_stall_entry_o11_48_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist11_stall_entry_o11_48_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist13_stall_entry_o12_48_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist13_stall_entry_o12_48_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist16_stall_entry_o14_48_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist16_stall_entry_o14_48_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist17_stall_entry_o15_48_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist17_stall_entry_o15_48_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist18_stall_entry_o16_38_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist18_stall_entry_o16_38_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist19_stall_entry_o16_48_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist19_stall_entry_o16_48_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist20_stall_entry_o17_38_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist20_stall_entry_o17_38_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist21_stall_entry_o17_48_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist21_stall_entry_o17_48_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_V0 : STD_LOGIC_VECTOR (0 downto 0);
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
    signal SE_stall_entry_toReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or9 : STD_LOGIC_VECTOR (0 downto 0);
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
    signal SE_stall_entry_V9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_1_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_1_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_1_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_1_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_4_3_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_stall_entry_o4_38_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist7_stall_entry_o8_38_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist18_stall_entry_o16_38_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist20_stall_entry_o17_38_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_and12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist21_stall_entry_o17_48_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_2_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_2_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_2_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_2_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_2_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_2_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_2_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_2_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_2_reg_stall_out_bitsignaltemp : std_logic;
    signal SR_SE_redist0_stall_entry_o4_4_1_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_r_data2 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_r_data3 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_r_data4 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_D2 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_D3 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_1_D4 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_r_data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_r_data3 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_D2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist0_stall_entry_o4_4_3_D3 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_r_data2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_r_data3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_D2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_bubble_out_stall_entry_2_D3 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- bubble_join_redist7_stall_entry_o8_38_fifo(BITJOIN,166)
    bubble_join_redist7_stall_entry_o8_38_fifo_q <= redist7_stall_entry_o8_38_fifo_data_out;

    -- bubble_select_redist7_stall_entry_o8_38_fifo(BITSELECT,167)
    bubble_select_redist7_stall_entry_o8_38_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist7_stall_entry_o8_38_fifo_q(0 downto 0));

    -- redist8_stall_entry_o8_48_fifo(STALLFIFO,119)
    redist8_stall_entry_o8_48_fifo_valid_in <= SE_out_redist7_stall_entry_o8_38_fifo_V1;
    redist8_stall_entry_o8_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist8_stall_entry_o8_48_fifo_data_in <= bubble_select_redist7_stall_entry_o8_38_fifo_b;
    redist8_stall_entry_o8_48_fifo_valid_in_bitsignaltemp <= redist8_stall_entry_o8_48_fifo_valid_in(0);
    redist8_stall_entry_o8_48_fifo_stall_in_bitsignaltemp <= redist8_stall_entry_o8_48_fifo_stall_in(0);
    redist8_stall_entry_o8_48_fifo_valid_out(0) <= redist8_stall_entry_o8_48_fifo_valid_out_bitsignaltemp;
    redist8_stall_entry_o8_48_fifo_stall_out(0) <= redist8_stall_entry_o8_48_fifo_stall_out_bitsignaltemp;
    theredist8_stall_entry_o8_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 11,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist8_stall_entry_o8_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist8_stall_entry_o8_48_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist7_stall_entry_o8_38_fifo_b,
        valid_out => redist8_stall_entry_o8_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist8_stall_entry_o8_48_fifo_stall_out_bitsignaltemp,
        data_out => redist8_stall_entry_o8_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist1_stall_entry_o4_38_fifo(BITJOIN,154)
    bubble_join_redist1_stall_entry_o4_38_fifo_q <= redist1_stall_entry_o4_38_fifo_data_out;

    -- bubble_select_redist1_stall_entry_o4_38_fifo(BITSELECT,155)
    bubble_select_redist1_stall_entry_o4_38_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_stall_entry_o4_38_fifo_q(0 downto 0));

    -- bubble_join_stall_entry(BITJOIN,149)
    bubble_join_stall_entry_q <= in_j_01048 & in_c3_exe237 & in_c3_exe129 & in_c2_exe121 & in_c1_exe1238104 & in_c1_exe112 & in_c0_exe517283 & in_c0_exe417177 & in_c0_exe357 & in_c0_exe321399 & in_c0_exe221295 & in_c0_exe121191 & in_c0_exe12 & in_c0_exe116869;

    -- bubble_select_stall_entry(BITSELECT,150)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(64 downto 1));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(96 downto 65));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(97 downto 97));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(98 downto 98));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(99 downto 99));
    bubble_select_stall_entry_h <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(100 downto 100));
    bubble_select_stall_entry_i <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(101 downto 101));
    bubble_select_stall_entry_j <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(165 downto 102));
    bubble_select_stall_entry_k <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(197 downto 166));
    bubble_select_stall_entry_l <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(229 downto 198));
    bubble_select_stall_entry_m <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(261 downto 230));
    bubble_select_stall_entry_n <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(262 downto 262));
    bubble_select_stall_entry_o <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(294 downto 263));

    -- redist20_stall_entry_o17_38_fifo(STALLFIFO,135)
    redist20_stall_entry_o17_38_fifo_valid_in <= SE_stall_entry_V10;
    redist20_stall_entry_o17_38_fifo_stall_in <= SE_out_redist20_stall_entry_o17_38_fifo_backStall;
    redist20_stall_entry_o17_38_fifo_data_in <= bubble_select_stall_entry_o;
    redist20_stall_entry_o17_38_fifo_valid_in_bitsignaltemp <= redist20_stall_entry_o17_38_fifo_valid_in(0);
    redist20_stall_entry_o17_38_fifo_stall_in_bitsignaltemp <= redist20_stall_entry_o17_38_fifo_stall_in(0);
    redist20_stall_entry_o17_38_fifo_valid_out(0) <= redist20_stall_entry_o17_38_fifo_valid_out_bitsignaltemp;
    redist20_stall_entry_o17_38_fifo_stall_out(0) <= redist20_stall_entry_o17_38_fifo_stall_out_bitsignaltemp;
    theredist20_stall_entry_o17_38_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 39,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist20_stall_entry_o17_38_fifo_valid_in_bitsignaltemp,
        stall_in => redist20_stall_entry_o17_38_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_o,
        valid_out => redist20_stall_entry_o17_38_fifo_valid_out_bitsignaltemp,
        stall_out => redist20_stall_entry_o17_38_fifo_stall_out_bitsignaltemp,
        data_out => redist20_stall_entry_o17_38_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist17_stall_entry_o15_48_fifo(STALLFIFO,132)
    redist17_stall_entry_o15_48_fifo_valid_in <= SE_stall_entry_V8;
    redist17_stall_entry_o15_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist17_stall_entry_o15_48_fifo_data_in <= bubble_select_stall_entry_m;
    redist17_stall_entry_o15_48_fifo_valid_in_bitsignaltemp <= redist17_stall_entry_o15_48_fifo_valid_in(0);
    redist17_stall_entry_o15_48_fifo_stall_in_bitsignaltemp <= redist17_stall_entry_o15_48_fifo_stall_in(0);
    redist17_stall_entry_o15_48_fifo_valid_out(0) <= redist17_stall_entry_o15_48_fifo_valid_out_bitsignaltemp;
    redist17_stall_entry_o15_48_fifo_stall_out(0) <= redist17_stall_entry_o15_48_fifo_stall_out_bitsignaltemp;
    theredist17_stall_entry_o15_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 49,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist17_stall_entry_o15_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist17_stall_entry_o15_48_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_m,
        valid_out => redist17_stall_entry_o15_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist17_stall_entry_o15_48_fifo_stall_out_bitsignaltemp,
        data_out => redist17_stall_entry_o15_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist11_stall_entry_o11_48_fifo(STALLFIFO,122)
    redist11_stall_entry_o11_48_fifo_valid_in <= SE_stall_entry_V7;
    redist11_stall_entry_o11_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist11_stall_entry_o11_48_fifo_data_in <= bubble_select_stall_entry_i;
    redist11_stall_entry_o11_48_fifo_valid_in_bitsignaltemp <= redist11_stall_entry_o11_48_fifo_valid_in(0);
    redist11_stall_entry_o11_48_fifo_stall_in_bitsignaltemp <= redist11_stall_entry_o11_48_fifo_stall_in(0);
    redist11_stall_entry_o11_48_fifo_valid_out(0) <= redist11_stall_entry_o11_48_fifo_valid_out_bitsignaltemp;
    redist11_stall_entry_o11_48_fifo_stall_out(0) <= redist11_stall_entry_o11_48_fifo_stall_out_bitsignaltemp;
    theredist11_stall_entry_o11_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 49,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist11_stall_entry_o11_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist11_stall_entry_o11_48_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_i,
        valid_out => redist11_stall_entry_o11_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist11_stall_entry_o11_48_fifo_stall_out_bitsignaltemp,
        data_out => redist11_stall_entry_o11_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist10_stall_entry_o10_48_fifo(STALLFIFO,121)
    redist10_stall_entry_o10_48_fifo_valid_in <= SE_stall_entry_V6;
    redist10_stall_entry_o10_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist10_stall_entry_o10_48_fifo_data_in <= bubble_select_stall_entry_h;
    redist10_stall_entry_o10_48_fifo_valid_in_bitsignaltemp <= redist10_stall_entry_o10_48_fifo_valid_in(0);
    redist10_stall_entry_o10_48_fifo_stall_in_bitsignaltemp <= redist10_stall_entry_o10_48_fifo_stall_in(0);
    redist10_stall_entry_o10_48_fifo_valid_out(0) <= redist10_stall_entry_o10_48_fifo_valid_out_bitsignaltemp;
    redist10_stall_entry_o10_48_fifo_stall_out(0) <= redist10_stall_entry_o10_48_fifo_stall_out_bitsignaltemp;
    theredist10_stall_entry_o10_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 49,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist10_stall_entry_o10_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist10_stall_entry_o10_48_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_h,
        valid_out => redist10_stall_entry_o10_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist10_stall_entry_o10_48_fifo_stall_out_bitsignaltemp,
        data_out => redist10_stall_entry_o10_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist9_stall_entry_o9_48_fifo(STALLFIFO,120)
    redist9_stall_entry_o9_48_fifo_valid_in <= SE_stall_entry_V5;
    redist9_stall_entry_o9_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist9_stall_entry_o9_48_fifo_data_in <= bubble_select_stall_entry_g;
    redist9_stall_entry_o9_48_fifo_valid_in_bitsignaltemp <= redist9_stall_entry_o9_48_fifo_valid_in(0);
    redist9_stall_entry_o9_48_fifo_stall_in_bitsignaltemp <= redist9_stall_entry_o9_48_fifo_stall_in(0);
    redist9_stall_entry_o9_48_fifo_valid_out(0) <= redist9_stall_entry_o9_48_fifo_valid_out_bitsignaltemp;
    redist9_stall_entry_o9_48_fifo_stall_out(0) <= redist9_stall_entry_o9_48_fifo_stall_out_bitsignaltemp;
    theredist9_stall_entry_o9_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 49,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist9_stall_entry_o9_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist9_stall_entry_o9_48_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_g,
        valid_out => redist9_stall_entry_o9_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist9_stall_entry_o9_48_fifo_stall_out_bitsignaltemp,
        data_out => redist9_stall_entry_o9_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist5_stall_entry_o7_48_fifo(STALLFIFO,113)
    redist5_stall_entry_o7_48_fifo_valid_in <= SE_stall_entry_V4;
    redist5_stall_entry_o7_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist5_stall_entry_o7_48_fifo_data_in <= bubble_select_stall_entry_e;
    redist5_stall_entry_o7_48_fifo_valid_in_bitsignaltemp <= redist5_stall_entry_o7_48_fifo_valid_in(0);
    redist5_stall_entry_o7_48_fifo_stall_in_bitsignaltemp <= redist5_stall_entry_o7_48_fifo_stall_in(0);
    redist5_stall_entry_o7_48_fifo_valid_out(0) <= redist5_stall_entry_o7_48_fifo_valid_out_bitsignaltemp;
    redist5_stall_entry_o7_48_fifo_stall_out(0) <= redist5_stall_entry_o7_48_fifo_stall_out_bitsignaltemp;
    theredist5_stall_entry_o7_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 49,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist5_stall_entry_o7_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist5_stall_entry_o7_48_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_e,
        valid_out => redist5_stall_entry_o7_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist5_stall_entry_o7_48_fifo_stall_out_bitsignaltemp,
        data_out => redist5_stall_entry_o7_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist3_stall_entry_o5_48_fifo(STALLFIFO,111)
    redist3_stall_entry_o5_48_fifo_valid_in <= SE_stall_entry_V3;
    redist3_stall_entry_o5_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist3_stall_entry_o5_48_fifo_data_in <= bubble_select_stall_entry_c;
    redist3_stall_entry_o5_48_fifo_valid_in_bitsignaltemp <= redist3_stall_entry_o5_48_fifo_valid_in(0);
    redist3_stall_entry_o5_48_fifo_stall_in_bitsignaltemp <= redist3_stall_entry_o5_48_fifo_stall_in(0);
    redist3_stall_entry_o5_48_fifo_valid_out(0) <= redist3_stall_entry_o5_48_fifo_valid_out_bitsignaltemp;
    redist3_stall_entry_o5_48_fifo_stall_out(0) <= redist3_stall_entry_o5_48_fifo_stall_out_bitsignaltemp;
    theredist3_stall_entry_o5_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 49,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist3_stall_entry_o5_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist3_stall_entry_o5_48_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_c,
        valid_out => redist3_stall_entry_o5_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist3_stall_entry_o5_48_fifo_stall_out_bitsignaltemp,
        data_out => redist3_stall_entry_o5_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist15_stall_entry_o14_1_0(REG,130)
    redist15_stall_entry_o14_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist15_stall_entry_o14_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_0_backEN = "1") THEN
                redist15_stall_entry_o14_1_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_l);
            END IF;
        END IF;
    END PROCESS;

    -- redist16_stall_entry_o14_48_fifo(STALLFIFO,131)
    redist16_stall_entry_o14_48_fifo_valid_in <= SE_redist0_stall_entry_o4_4_0_V1;
    redist16_stall_entry_o14_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist16_stall_entry_o14_48_fifo_data_in <= redist15_stall_entry_o14_1_0_q;
    redist16_stall_entry_o14_48_fifo_valid_in_bitsignaltemp <= redist16_stall_entry_o14_48_fifo_valid_in(0);
    redist16_stall_entry_o14_48_fifo_stall_in_bitsignaltemp <= redist16_stall_entry_o14_48_fifo_stall_in(0);
    redist16_stall_entry_o14_48_fifo_valid_out(0) <= redist16_stall_entry_o14_48_fifo_valid_out_bitsignaltemp;
    redist16_stall_entry_o14_48_fifo_stall_out(0) <= redist16_stall_entry_o14_48_fifo_stall_out_bitsignaltemp;
    theredist16_stall_entry_o14_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 48,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist16_stall_entry_o14_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist16_stall_entry_o14_48_fifo_stall_in_bitsignaltemp,
        data_in => redist15_stall_entry_o14_1_0_q,
        valid_out => redist16_stall_entry_o14_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist16_stall_entry_o14_48_fifo_stall_out_bitsignaltemp,
        data_out => redist16_stall_entry_o14_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist4_stall_entry_o6_1_0(REG,112)
    redist4_stall_entry_o6_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_stall_entry_o6_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_0_backEN = "1") THEN
                redist4_stall_entry_o6_1_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_d);
            END IF;
        END IF;
    END PROCESS;

    -- i_add37_2_conv1x1(ADD,36)@1
    i_add37_2_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist4_stall_entry_o6_1_0_q);
    i_add37_2_conv1x1_b <= STD_LOGIC_VECTOR("0" & redist15_stall_entry_o14_1_0_q);
    i_add37_2_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add37_2_conv1x1_a) + UNSIGNED(i_add37_2_conv1x1_b));
    i_add37_2_conv1x1_q <= i_add37_2_conv1x1_o(32 downto 0);

    -- bgTrunc_i_add37_2_conv1x1_sel_x(BITSELECT,2)@1
    bgTrunc_i_add37_2_conv1x1_sel_x_b <= i_add37_2_conv1x1_q(31 downto 0);

    -- redist14_stall_entry_o13_4_0(REG,126)
    redist14_stall_entry_o13_4_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_stall_entry_o13_4_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_0_backEN = "1") THEN
                redist14_stall_entry_o13_4_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_k);
            END IF;
        END IF;
    END PROCESS;

    -- redist12_stall_entry_o12_2_0(REG,123)
    redist12_stall_entry_o12_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_stall_entry_o12_2_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_0_backEN = "1") THEN
                redist12_stall_entry_o12_2_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_j);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_stall_entry_o8_4_0(REG,114)
    redist6_stall_entry_o8_4_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_stall_entry_o8_4_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_0_backEN = "1") THEN
                redist6_stall_entry_o8_4_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_f);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_stall_entry_o4_4_0(REG,105)
    redist0_stall_entry_o4_4_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_stall_entry_o4_4_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_0_backEN = "1") THEN
                redist0_stall_entry_o4_4_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_b);
            END IF;
        END IF;
    END PROCESS;

    -- redist12_stall_entry_o12_2_1(REG,124)
    redist12_stall_entry_o12_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_stall_entry_o12_2_1_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_1_backEN = "1") THEN
                redist12_stall_entry_o12_2_1_q <= STD_LOGIC_VECTOR(SR_SE_redist0_stall_entry_o4_4_1_D2);
            END IF;
        END IF;
    END PROCESS;

    -- redist13_stall_entry_o12_48_fifo(STALLFIFO,125)
    redist13_stall_entry_o12_48_fifo_valid_in <= SE_redist0_stall_entry_o4_4_1_V1;
    redist13_stall_entry_o12_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist13_stall_entry_o12_48_fifo_data_in <= redist12_stall_entry_o12_2_1_q;
    redist13_stall_entry_o12_48_fifo_valid_in_bitsignaltemp <= redist13_stall_entry_o12_48_fifo_valid_in(0);
    redist13_stall_entry_o12_48_fifo_stall_in_bitsignaltemp <= redist13_stall_entry_o12_48_fifo_stall_in(0);
    redist13_stall_entry_o12_48_fifo_valid_out(0) <= redist13_stall_entry_o12_48_fifo_valid_out_bitsignaltemp;
    redist13_stall_entry_o12_48_fifo_stall_out(0) <= redist13_stall_entry_o12_48_fifo_stall_out_bitsignaltemp;
    theredist13_stall_entry_o12_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 47,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist13_stall_entry_o12_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist13_stall_entry_o12_48_fifo_stall_in_bitsignaltemp,
        data_in => redist12_stall_entry_o12_2_1_q,
        valid_out => redist13_stall_entry_o12_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist13_stall_entry_o12_48_fifo_stall_out_bitsignaltemp,
        data_out => redist13_stall_entry_o12_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist0_stall_entry_o4_4_2(STALLENABLE,235)
    -- Valid signal propagation
    SE_redist0_stall_entry_o4_4_2_V0 <= SE_redist0_stall_entry_o4_4_2_R_v_0;
    -- Stall signal propagation
    SE_redist0_stall_entry_o4_4_2_s_tv_0 <= SR_SE_redist0_stall_entry_o4_4_3_backStall and SE_redist0_stall_entry_o4_4_2_R_v_0;
    -- Backward Enable generation
    SE_redist0_stall_entry_o4_4_2_backEN <= not (SE_redist0_stall_entry_o4_4_2_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_stall_entry_o4_4_2_v_s_0 <= SE_redist0_stall_entry_o4_4_2_backEN and SE_redist0_stall_entry_o4_4_1_V0;
    -- Backward Stall generation
    SE_redist0_stall_entry_o4_4_2_backStall <= not (SE_redist0_stall_entry_o4_4_2_v_s_0);
    SE_redist0_stall_entry_o4_4_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_stall_entry_o4_4_2_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_2_backEN = "0") THEN
                SE_redist0_stall_entry_o4_4_2_R_v_0 <= SE_redist0_stall_entry_o4_4_2_R_v_0 and SE_redist0_stall_entry_o4_4_2_s_tv_0;
            ELSE
                SE_redist0_stall_entry_o4_4_2_R_v_0 <= SE_redist0_stall_entry_o4_4_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist0_stall_entry_o4_4_1(STALLENABLE,234)
    -- Valid signal propagation
    SE_redist0_stall_entry_o4_4_1_V0 <= SE_redist0_stall_entry_o4_4_1_R_v_0;
    SE_redist0_stall_entry_o4_4_1_V1 <= SE_redist0_stall_entry_o4_4_1_R_v_1;
    -- Stall signal propagation
    SE_redist0_stall_entry_o4_4_1_s_tv_0 <= SE_redist0_stall_entry_o4_4_2_backStall and SE_redist0_stall_entry_o4_4_1_R_v_0;
    SE_redist0_stall_entry_o4_4_1_s_tv_1 <= redist13_stall_entry_o12_48_fifo_stall_out and SE_redist0_stall_entry_o4_4_1_R_v_1;
    -- Backward Enable generation
    SE_redist0_stall_entry_o4_4_1_or0 <= SE_redist0_stall_entry_o4_4_1_s_tv_0;
    SE_redist0_stall_entry_o4_4_1_backEN <= not (SE_redist0_stall_entry_o4_4_1_s_tv_1 or SE_redist0_stall_entry_o4_4_1_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_stall_entry_o4_4_1_v_s_0 <= SE_redist0_stall_entry_o4_4_1_backEN and SR_SE_redist0_stall_entry_o4_4_1_V;
    -- Backward Stall generation
    SE_redist0_stall_entry_o4_4_1_backStall <= not (SE_redist0_stall_entry_o4_4_1_backEN);
    SE_redist0_stall_entry_o4_4_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_stall_entry_o4_4_1_R_v_0 <= (others => '0');
            SE_redist0_stall_entry_o4_4_1_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_1_backEN = "0") THEN
                SE_redist0_stall_entry_o4_4_1_R_v_0 <= SE_redist0_stall_entry_o4_4_1_R_v_0 and SE_redist0_stall_entry_o4_4_1_s_tv_0;
            ELSE
                SE_redist0_stall_entry_o4_4_1_R_v_0 <= SE_redist0_stall_entry_o4_4_1_v_s_0;
            END IF;

            IF (SE_redist0_stall_entry_o4_4_1_backEN = "0") THEN
                SE_redist0_stall_entry_o4_4_1_R_v_1 <= SE_redist0_stall_entry_o4_4_1_R_v_1 and SE_redist0_stall_entry_o4_4_1_s_tv_1;
            ELSE
                SE_redist0_stall_entry_o4_4_1_R_v_1 <= SE_redist0_stall_entry_o4_4_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist0_stall_entry_o4_4_1(STALLREG,370)
    SR_SE_redist0_stall_entry_o4_4_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist0_stall_entry_o4_4_1_r_valid <= (others => '0');
            SR_SE_redist0_stall_entry_o4_4_1_r_data0 <= (others => '-');
            SR_SE_redist0_stall_entry_o4_4_1_r_data1 <= (others => '-');
            SR_SE_redist0_stall_entry_o4_4_1_r_data2 <= (others => '-');
            SR_SE_redist0_stall_entry_o4_4_1_r_data3 <= (others => '-');
            SR_SE_redist0_stall_entry_o4_4_1_r_data4 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist0_stall_entry_o4_4_1_r_valid <= SE_redist0_stall_entry_o4_4_1_backStall and (SR_SE_redist0_stall_entry_o4_4_1_r_valid or SR_SE_redist0_stall_entry_o4_4_1_i_valid);

            IF (SR_SE_redist0_stall_entry_o4_4_1_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist0_stall_entry_o4_4_1_r_data0 <= STD_LOGIC_VECTOR(redist0_stall_entry_o4_4_0_q);
                SR_SE_redist0_stall_entry_o4_4_1_r_data1 <= STD_LOGIC_VECTOR(redist6_stall_entry_o8_4_0_q);
                SR_SE_redist0_stall_entry_o4_4_1_r_data2 <= STD_LOGIC_VECTOR(redist12_stall_entry_o12_2_0_q);
                SR_SE_redist0_stall_entry_o4_4_1_r_data3 <= STD_LOGIC_VECTOR(redist14_stall_entry_o13_4_0_q);
                SR_SE_redist0_stall_entry_o4_4_1_r_data4 <= STD_LOGIC_VECTOR(bgTrunc_i_add37_2_conv1x1_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist0_stall_entry_o4_4_1_i_valid <= SE_redist0_stall_entry_o4_4_0_V0;
    -- Stall signal propagation
    SR_SE_redist0_stall_entry_o4_4_1_backStall <= SR_SE_redist0_stall_entry_o4_4_1_r_valid or not (SR_SE_redist0_stall_entry_o4_4_1_i_valid);

    -- Valid
    SR_SE_redist0_stall_entry_o4_4_1_V <= SR_SE_redist0_stall_entry_o4_4_1_r_valid WHEN SR_SE_redist0_stall_entry_o4_4_1_r_valid = "1" ELSE SR_SE_redist0_stall_entry_o4_4_1_i_valid;

    -- Data0
    SR_SE_redist0_stall_entry_o4_4_1_D0 <= SR_SE_redist0_stall_entry_o4_4_1_r_data0 WHEN SR_SE_redist0_stall_entry_o4_4_1_r_valid = "1" ELSE redist0_stall_entry_o4_4_0_q;
    -- Data1
    SR_SE_redist0_stall_entry_o4_4_1_D1 <= SR_SE_redist0_stall_entry_o4_4_1_r_data1 WHEN SR_SE_redist0_stall_entry_o4_4_1_r_valid = "1" ELSE redist6_stall_entry_o8_4_0_q;
    -- Data2
    SR_SE_redist0_stall_entry_o4_4_1_D2 <= SR_SE_redist0_stall_entry_o4_4_1_r_data2 WHEN SR_SE_redist0_stall_entry_o4_4_1_r_valid = "1" ELSE redist12_stall_entry_o12_2_0_q;
    -- Data3
    SR_SE_redist0_stall_entry_o4_4_1_D3 <= SR_SE_redist0_stall_entry_o4_4_1_r_data3 WHEN SR_SE_redist0_stall_entry_o4_4_1_r_valid = "1" ELSE redist14_stall_entry_o13_4_0_q;
    -- Data4
    SR_SE_redist0_stall_entry_o4_4_1_D4 <= SR_SE_redist0_stall_entry_o4_4_1_r_data4 WHEN SR_SE_redist0_stall_entry_o4_4_1_r_valid = "1" ELSE bgTrunc_i_add37_2_conv1x1_sel_x_b;

    -- SE_redist0_stall_entry_o4_4_0(STALLENABLE,233)
    -- Valid signal propagation
    SE_redist0_stall_entry_o4_4_0_V0 <= SE_redist0_stall_entry_o4_4_0_R_v_0;
    SE_redist0_stall_entry_o4_4_0_V1 <= SE_redist0_stall_entry_o4_4_0_R_v_1;
    -- Stall signal propagation
    SE_redist0_stall_entry_o4_4_0_s_tv_0 <= SR_SE_redist0_stall_entry_o4_4_1_backStall and SE_redist0_stall_entry_o4_4_0_R_v_0;
    SE_redist0_stall_entry_o4_4_0_s_tv_1 <= redist16_stall_entry_o14_48_fifo_stall_out and SE_redist0_stall_entry_o4_4_0_R_v_1;
    -- Backward Enable generation
    SE_redist0_stall_entry_o4_4_0_or0 <= SE_redist0_stall_entry_o4_4_0_s_tv_0;
    SE_redist0_stall_entry_o4_4_0_backEN <= not (SE_redist0_stall_entry_o4_4_0_s_tv_1 or SE_redist0_stall_entry_o4_4_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_stall_entry_o4_4_0_v_s_0 <= SE_redist0_stall_entry_o4_4_0_backEN and SE_stall_entry_V2;
    -- Backward Stall generation
    SE_redist0_stall_entry_o4_4_0_backStall <= not (SE_redist0_stall_entry_o4_4_0_v_s_0);
    SE_redist0_stall_entry_o4_4_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_stall_entry_o4_4_0_R_v_0 <= (others => '0');
            SE_redist0_stall_entry_o4_4_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_0_backEN = "0") THEN
                SE_redist0_stall_entry_o4_4_0_R_v_0 <= SE_redist0_stall_entry_o4_4_0_R_v_0 and SE_redist0_stall_entry_o4_4_0_s_tv_0;
            ELSE
                SE_redist0_stall_entry_o4_4_0_R_v_0 <= SE_redist0_stall_entry_o4_4_0_v_s_0;
            END IF;

            IF (SE_redist0_stall_entry_o4_4_0_backEN = "0") THEN
                SE_redist0_stall_entry_o4_4_0_R_v_1 <= SE_redist0_stall_entry_o4_4_0_R_v_1 and SE_redist0_stall_entry_o4_4_0_s_tv_1;
            ELSE
                SE_redist0_stall_entry_o4_4_0_R_v_1 <= SE_redist0_stall_entry_o4_4_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_syncbuf_output_im_sync_buffer71_conv1x1(BLACKBOX,45)@4
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_output_im_sync_buffer71_conv1x1 : i_syncbuf_output_im_sync_buffer71_conv1x1392
    PORT MAP (
        in_buffer_in => in_output_im,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_backStall,
        in_valid_in => SE_out_bubble_out_stall_entry_1_V0,
        out_buffer_out => i_syncbuf_output_im_sync_buffer71_conv1x1_out_buffer_out,
        out_stall_out => i_syncbuf_output_im_sync_buffer71_conv1x1_out_stall_out,
        out_valid_out => i_syncbuf_output_im_sync_buffer71_conv1x1_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_stall_entry_1(STALLENABLE,301)
    -- Valid signal propagation
    SE_out_bubble_out_stall_entry_1_V0 <= SE_out_bubble_out_stall_entry_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_stall_entry_1_backStall <= i_syncbuf_output_im_sync_buffer71_conv1x1_out_stall_out or not (SE_out_bubble_out_stall_entry_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_stall_entry_1_wireValid <= bubble_out_stall_entry_1_reg_valid_out;

    -- bubble_out_stall_entry_1_reg(STALLFIFO,368)
    bubble_out_stall_entry_1_reg_valid_in <= SE_stall_entry_V0;
    bubble_out_stall_entry_1_reg_stall_in <= SE_out_bubble_out_stall_entry_1_backStall;
    bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp <= bubble_out_stall_entry_1_reg_valid_in(0);
    bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp <= bubble_out_stall_entry_1_reg_stall_in(0);
    bubble_out_stall_entry_1_reg_valid_out(0) <= bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    bubble_out_stall_entry_1_reg_stall_out(0) <= bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    thebubble_out_stall_entry_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 5,
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

    -- SE_stall_entry(STALLENABLE,220)
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
            SE_stall_entry_fromReg9 <= (others => '0');
            SE_stall_entry_fromReg10 <= (others => '0');
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
            -- Succesor 9
            SE_stall_entry_fromReg9 <= SE_stall_entry_toReg9;
            -- Succesor 10
            SE_stall_entry_fromReg10 <= SE_stall_entry_toReg10;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_stall_entry_consumed0 <= (not (bubble_out_stall_entry_1_reg_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg0;
    SE_stall_entry_consumed1 <= (not (bubble_out_stall_entry_2_reg_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg1;
    SE_stall_entry_consumed2 <= (not (SE_redist0_stall_entry_o4_4_0_backStall) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg2;
    SE_stall_entry_consumed3 <= (not (redist3_stall_entry_o5_48_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg3;
    SE_stall_entry_consumed4 <= (not (redist5_stall_entry_o7_48_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg4;
    SE_stall_entry_consumed5 <= (not (redist9_stall_entry_o9_48_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg5;
    SE_stall_entry_consumed6 <= (not (redist10_stall_entry_o10_48_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg6;
    SE_stall_entry_consumed7 <= (not (redist11_stall_entry_o11_48_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg7;
    SE_stall_entry_consumed8 <= (not (redist17_stall_entry_o15_48_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg8;
    SE_stall_entry_consumed9 <= (not (redist18_stall_entry_o16_38_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg9;
    SE_stall_entry_consumed10 <= (not (redist20_stall_entry_o17_38_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg10;
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
    SE_stall_entry_toReg9 <= SE_stall_entry_StallValid and SE_stall_entry_consumed9;
    SE_stall_entry_toReg10 <= SE_stall_entry_StallValid and SE_stall_entry_consumed10;
    -- Backward Stall generation
    SE_stall_entry_or0 <= SE_stall_entry_consumed0;
    SE_stall_entry_or1 <= SE_stall_entry_consumed1 and SE_stall_entry_or0;
    SE_stall_entry_or2 <= SE_stall_entry_consumed2 and SE_stall_entry_or1;
    SE_stall_entry_or3 <= SE_stall_entry_consumed3 and SE_stall_entry_or2;
    SE_stall_entry_or4 <= SE_stall_entry_consumed4 and SE_stall_entry_or3;
    SE_stall_entry_or5 <= SE_stall_entry_consumed5 and SE_stall_entry_or4;
    SE_stall_entry_or6 <= SE_stall_entry_consumed6 and SE_stall_entry_or5;
    SE_stall_entry_or7 <= SE_stall_entry_consumed7 and SE_stall_entry_or6;
    SE_stall_entry_or8 <= SE_stall_entry_consumed8 and SE_stall_entry_or7;
    SE_stall_entry_or9 <= SE_stall_entry_consumed9 and SE_stall_entry_or8;
    SE_stall_entry_wireStall <= not (SE_stall_entry_consumed10 and SE_stall_entry_or9);
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
    SE_stall_entry_V9 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg9);
    SE_stall_entry_V10 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg10);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- redist18_stall_entry_o16_38_fifo(STALLFIFO,133)
    redist18_stall_entry_o16_38_fifo_valid_in <= SE_stall_entry_V9;
    redist18_stall_entry_o16_38_fifo_stall_in <= SE_out_redist18_stall_entry_o16_38_fifo_backStall;
    redist18_stall_entry_o16_38_fifo_data_in <= bubble_select_stall_entry_n;
    redist18_stall_entry_o16_38_fifo_valid_in_bitsignaltemp <= redist18_stall_entry_o16_38_fifo_valid_in(0);
    redist18_stall_entry_o16_38_fifo_stall_in_bitsignaltemp <= redist18_stall_entry_o16_38_fifo_stall_in(0);
    redist18_stall_entry_o16_38_fifo_valid_out(0) <= redist18_stall_entry_o16_38_fifo_valid_out_bitsignaltemp;
    redist18_stall_entry_o16_38_fifo_stall_out(0) <= redist18_stall_entry_o16_38_fifo_stall_out_bitsignaltemp;
    theredist18_stall_entry_o16_38_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 39,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist18_stall_entry_o16_38_fifo_valid_in_bitsignaltemp,
        stall_in => redist18_stall_entry_o16_38_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_n,
        valid_out => redist18_stall_entry_o16_38_fifo_valid_out_bitsignaltemp,
        stall_out => redist18_stall_entry_o16_38_fifo_stall_out_bitsignaltemp,
        data_out => redist18_stall_entry_o16_38_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist18_stall_entry_o16_38_fifo(BITJOIN,190)
    bubble_join_redist18_stall_entry_o16_38_fifo_q <= redist18_stall_entry_o16_38_fifo_data_out;

    -- bubble_select_redist18_stall_entry_o16_38_fifo(BITSELECT,191)
    bubble_select_redist18_stall_entry_o16_38_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist18_stall_entry_o16_38_fifo_q(0 downto 0));

    -- bubble_join_redist20_stall_entry_o17_38_fifo(BITJOIN,196)
    bubble_join_redist20_stall_entry_o17_38_fifo_q <= redist20_stall_entry_o17_38_fifo_data_out;

    -- bubble_select_redist20_stall_entry_o17_38_fifo(BITSELECT,197)
    bubble_select_redist20_stall_entry_o17_38_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist20_stall_entry_o17_38_fifo_q(31 downto 0));

    -- redist21_stall_entry_o17_48_fifo(STALLFIFO,136)
    redist21_stall_entry_o17_48_fifo_valid_in <= SE_out_redist20_stall_entry_o17_38_fifo_V1;
    redist21_stall_entry_o17_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist21_stall_entry_o17_48_fifo_data_in <= bubble_select_redist20_stall_entry_o17_38_fifo_b;
    redist21_stall_entry_o17_48_fifo_valid_in_bitsignaltemp <= redist21_stall_entry_o17_48_fifo_valid_in(0);
    redist21_stall_entry_o17_48_fifo_stall_in_bitsignaltemp <= redist21_stall_entry_o17_48_fifo_stall_in(0);
    redist21_stall_entry_o17_48_fifo_valid_out(0) <= redist21_stall_entry_o17_48_fifo_valid_out_bitsignaltemp;
    redist21_stall_entry_o17_48_fifo_stall_out(0) <= redist21_stall_entry_o17_48_fifo_stall_out_bitsignaltemp;
    theredist21_stall_entry_o17_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 11,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist21_stall_entry_o17_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist21_stall_entry_o17_48_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist20_stall_entry_o17_38_fifo_b,
        valid_out => redist21_stall_entry_o17_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist21_stall_entry_o17_48_fifo_stall_out_bitsignaltemp,
        data_out => redist21_stall_entry_o17_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist20_stall_entry_o17_38_fifo(STALLENABLE,278)
    SE_out_redist20_stall_entry_o17_38_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist20_stall_entry_o17_38_fifo_fromReg0 <= (others => '0');
            SE_out_redist20_stall_entry_o17_38_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist20_stall_entry_o17_38_fifo_fromReg0 <= SE_out_redist20_stall_entry_o17_38_fifo_toReg0;
            -- Succesor 1
            SE_out_redist20_stall_entry_o17_38_fifo_fromReg1 <= SE_out_redist20_stall_entry_o17_38_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist20_stall_entry_o17_38_fifo_consumed0 <= (not (SR_SE_out_bubble_out_stall_entry_2_backStall) and SE_out_redist20_stall_entry_o17_38_fifo_wireValid) or SE_out_redist20_stall_entry_o17_38_fifo_fromReg0;
    SE_out_redist20_stall_entry_o17_38_fifo_consumed1 <= (not (redist21_stall_entry_o17_48_fifo_stall_out) and SE_out_redist20_stall_entry_o17_38_fifo_wireValid) or SE_out_redist20_stall_entry_o17_38_fifo_fromReg1;
    -- Consuming
    SE_out_redist20_stall_entry_o17_38_fifo_StallValid <= SE_out_redist20_stall_entry_o17_38_fifo_backStall and SE_out_redist20_stall_entry_o17_38_fifo_wireValid;
    SE_out_redist20_stall_entry_o17_38_fifo_toReg0 <= SE_out_redist20_stall_entry_o17_38_fifo_StallValid and SE_out_redist20_stall_entry_o17_38_fifo_consumed0;
    SE_out_redist20_stall_entry_o17_38_fifo_toReg1 <= SE_out_redist20_stall_entry_o17_38_fifo_StallValid and SE_out_redist20_stall_entry_o17_38_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist20_stall_entry_o17_38_fifo_or0 <= SE_out_redist20_stall_entry_o17_38_fifo_consumed0;
    SE_out_redist20_stall_entry_o17_38_fifo_wireStall <= not (SE_out_redist20_stall_entry_o17_38_fifo_consumed1 and SE_out_redist20_stall_entry_o17_38_fifo_or0);
    SE_out_redist20_stall_entry_o17_38_fifo_backStall <= SE_out_redist20_stall_entry_o17_38_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist20_stall_entry_o17_38_fifo_V0 <= SE_out_redist20_stall_entry_o17_38_fifo_wireValid and not (SE_out_redist20_stall_entry_o17_38_fifo_fromReg0);
    SE_out_redist20_stall_entry_o17_38_fifo_V1 <= SE_out_redist20_stall_entry_o17_38_fifo_wireValid and not (SE_out_redist20_stall_entry_o17_38_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist20_stall_entry_o17_38_fifo_wireValid <= redist20_stall_entry_o17_38_fifo_valid_out;

    -- redist19_stall_entry_o16_48_fifo(STALLFIFO,134)
    redist19_stall_entry_o16_48_fifo_valid_in <= SE_out_redist18_stall_entry_o16_38_fifo_V1;
    redist19_stall_entry_o16_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist19_stall_entry_o16_48_fifo_data_in <= bubble_select_redist18_stall_entry_o16_38_fifo_b;
    redist19_stall_entry_o16_48_fifo_valid_in_bitsignaltemp <= redist19_stall_entry_o16_48_fifo_valid_in(0);
    redist19_stall_entry_o16_48_fifo_stall_in_bitsignaltemp <= redist19_stall_entry_o16_48_fifo_stall_in(0);
    redist19_stall_entry_o16_48_fifo_valid_out(0) <= redist19_stall_entry_o16_48_fifo_valid_out_bitsignaltemp;
    redist19_stall_entry_o16_48_fifo_stall_out(0) <= redist19_stall_entry_o16_48_fifo_stall_out_bitsignaltemp;
    theredist19_stall_entry_o16_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 11,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist19_stall_entry_o16_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist19_stall_entry_o16_48_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist18_stall_entry_o16_38_fifo_b,
        valid_out => redist19_stall_entry_o16_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist19_stall_entry_o16_48_fifo_stall_out_bitsignaltemp,
        data_out => redist19_stall_entry_o16_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist18_stall_entry_o16_38_fifo(STALLENABLE,274)
    SE_out_redist18_stall_entry_o16_38_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist18_stall_entry_o16_38_fifo_fromReg0 <= (others => '0');
            SE_out_redist18_stall_entry_o16_38_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist18_stall_entry_o16_38_fifo_fromReg0 <= SE_out_redist18_stall_entry_o16_38_fifo_toReg0;
            -- Succesor 1
            SE_out_redist18_stall_entry_o16_38_fifo_fromReg1 <= SE_out_redist18_stall_entry_o16_38_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist18_stall_entry_o16_38_fifo_consumed0 <= (not (SR_SE_out_bubble_out_stall_entry_2_backStall) and SE_out_redist18_stall_entry_o16_38_fifo_wireValid) or SE_out_redist18_stall_entry_o16_38_fifo_fromReg0;
    SE_out_redist18_stall_entry_o16_38_fifo_consumed1 <= (not (redist19_stall_entry_o16_48_fifo_stall_out) and SE_out_redist18_stall_entry_o16_38_fifo_wireValid) or SE_out_redist18_stall_entry_o16_38_fifo_fromReg1;
    -- Consuming
    SE_out_redist18_stall_entry_o16_38_fifo_StallValid <= SE_out_redist18_stall_entry_o16_38_fifo_backStall and SE_out_redist18_stall_entry_o16_38_fifo_wireValid;
    SE_out_redist18_stall_entry_o16_38_fifo_toReg0 <= SE_out_redist18_stall_entry_o16_38_fifo_StallValid and SE_out_redist18_stall_entry_o16_38_fifo_consumed0;
    SE_out_redist18_stall_entry_o16_38_fifo_toReg1 <= SE_out_redist18_stall_entry_o16_38_fifo_StallValid and SE_out_redist18_stall_entry_o16_38_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist18_stall_entry_o16_38_fifo_or0 <= SE_out_redist18_stall_entry_o16_38_fifo_consumed0;
    SE_out_redist18_stall_entry_o16_38_fifo_wireStall <= not (SE_out_redist18_stall_entry_o16_38_fifo_consumed1 and SE_out_redist18_stall_entry_o16_38_fifo_or0);
    SE_out_redist18_stall_entry_o16_38_fifo_backStall <= SE_out_redist18_stall_entry_o16_38_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist18_stall_entry_o16_38_fifo_V0 <= SE_out_redist18_stall_entry_o16_38_fifo_wireValid and not (SE_out_redist18_stall_entry_o16_38_fifo_fromReg0);
    SE_out_redist18_stall_entry_o16_38_fifo_V1 <= SE_out_redist18_stall_entry_o16_38_fifo_wireValid and not (SE_out_redist18_stall_entry_o16_38_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist18_stall_entry_o16_38_fifo_wireValid <= redist18_stall_entry_o16_38_fifo_valid_out;

    -- redist2_stall_entry_o4_48_fifo(STALLFIFO,110)
    redist2_stall_entry_o4_48_fifo_valid_in <= SE_out_redist1_stall_entry_o4_38_fifo_V1;
    redist2_stall_entry_o4_48_fifo_stall_in <= SE_out_redist21_stall_entry_o17_48_fifo_backStall;
    redist2_stall_entry_o4_48_fifo_data_in <= bubble_select_redist1_stall_entry_o4_38_fifo_b;
    redist2_stall_entry_o4_48_fifo_valid_in_bitsignaltemp <= redist2_stall_entry_o4_48_fifo_valid_in(0);
    redist2_stall_entry_o4_48_fifo_stall_in_bitsignaltemp <= redist2_stall_entry_o4_48_fifo_stall_in(0);
    redist2_stall_entry_o4_48_fifo_valid_out(0) <= redist2_stall_entry_o4_48_fifo_valid_out_bitsignaltemp;
    redist2_stall_entry_o4_48_fifo_stall_out(0) <= redist2_stall_entry_o4_48_fifo_stall_out_bitsignaltemp;
    theredist2_stall_entry_o4_48_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 11,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist2_stall_entry_o4_48_fifo_valid_in_bitsignaltemp,
        stall_in => redist2_stall_entry_o4_48_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist1_stall_entry_o4_38_fifo_b,
        valid_out => redist2_stall_entry_o4_48_fifo_valid_out_bitsignaltemp,
        stall_out => redist2_stall_entry_o4_48_fifo_stall_out_bitsignaltemp,
        data_out => redist2_stall_entry_o4_48_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist1_stall_entry_o4_38_fifo(STALLENABLE,238)
    SE_out_redist1_stall_entry_o4_38_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist1_stall_entry_o4_38_fifo_fromReg0 <= (others => '0');
            SE_out_redist1_stall_entry_o4_38_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist1_stall_entry_o4_38_fifo_fromReg0 <= SE_out_redist1_stall_entry_o4_38_fifo_toReg0;
            -- Succesor 1
            SE_out_redist1_stall_entry_o4_38_fifo_fromReg1 <= SE_out_redist1_stall_entry_o4_38_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist1_stall_entry_o4_38_fifo_consumed0 <= (not (SR_SE_out_bubble_out_stall_entry_2_backStall) and SE_out_redist1_stall_entry_o4_38_fifo_wireValid) or SE_out_redist1_stall_entry_o4_38_fifo_fromReg0;
    SE_out_redist1_stall_entry_o4_38_fifo_consumed1 <= (not (redist2_stall_entry_o4_48_fifo_stall_out) and SE_out_redist1_stall_entry_o4_38_fifo_wireValid) or SE_out_redist1_stall_entry_o4_38_fifo_fromReg1;
    -- Consuming
    SE_out_redist1_stall_entry_o4_38_fifo_StallValid <= SE_out_redist1_stall_entry_o4_38_fifo_backStall and SE_out_redist1_stall_entry_o4_38_fifo_wireValid;
    SE_out_redist1_stall_entry_o4_38_fifo_toReg0 <= SE_out_redist1_stall_entry_o4_38_fifo_StallValid and SE_out_redist1_stall_entry_o4_38_fifo_consumed0;
    SE_out_redist1_stall_entry_o4_38_fifo_toReg1 <= SE_out_redist1_stall_entry_o4_38_fifo_StallValid and SE_out_redist1_stall_entry_o4_38_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist1_stall_entry_o4_38_fifo_or0 <= SE_out_redist1_stall_entry_o4_38_fifo_consumed0;
    SE_out_redist1_stall_entry_o4_38_fifo_wireStall <= not (SE_out_redist1_stall_entry_o4_38_fifo_consumed1 and SE_out_redist1_stall_entry_o4_38_fifo_or0);
    SE_out_redist1_stall_entry_o4_38_fifo_backStall <= SE_out_redist1_stall_entry_o4_38_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist1_stall_entry_o4_38_fifo_V0 <= SE_out_redist1_stall_entry_o4_38_fifo_wireValid and not (SE_out_redist1_stall_entry_o4_38_fifo_fromReg0);
    SE_out_redist1_stall_entry_o4_38_fifo_V1 <= SE_out_redist1_stall_entry_o4_38_fifo_wireValid and not (SE_out_redist1_stall_entry_o4_38_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist1_stall_entry_o4_38_fifo_wireValid <= redist1_stall_entry_o4_38_fifo_valid_out;

    -- bubble_out_stall_entry_2_reg(STALLFIFO,369)
    bubble_out_stall_entry_2_reg_valid_in <= SE_stall_entry_V1;
    bubble_out_stall_entry_2_reg_stall_in <= SR_SE_out_bubble_out_stall_entry_2_backStall;
    bubble_out_stall_entry_2_reg_valid_in_bitsignaltemp <= bubble_out_stall_entry_2_reg_valid_in(0);
    bubble_out_stall_entry_2_reg_stall_in_bitsignaltemp <= bubble_out_stall_entry_2_reg_stall_in(0);
    bubble_out_stall_entry_2_reg_valid_out(0) <= bubble_out_stall_entry_2_reg_valid_out_bitsignaltemp;
    bubble_out_stall_entry_2_reg_stall_out(0) <= bubble_out_stall_entry_2_reg_stall_out_bitsignaltemp;
    thebubble_out_stall_entry_2_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 39,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_stall_entry_2_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_stall_entry_2_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_stall_entry_2_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_stall_entry_2_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x(BLACKBOX,27)@38
    -- in in_i_stall@20000000
    -- out out_c0_exit253_0@48
    -- out out_c0_exit253_1@48
    -- out out_c0_exit253_2@48
    -- out out_c0_exit253_3@48
    -- out out_c0_exit253_4@48
    -- out out_c0_exit253_5@48
    -- out out_o_stall@20000000
    -- out out_o_valid@48
    thei_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x : i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1
    PORT MAP (
        in_c0_eni4242_0 => GND_q,
        in_c0_eni4242_1 => SR_SE_out_bubble_out_stall_entry_2_D0,
        in_c0_eni4242_2 => SR_SE_out_bubble_out_stall_entry_2_D1,
        in_c0_eni4242_3 => SR_SE_out_bubble_out_stall_entry_2_D2,
        in_c0_eni4242_4 => SR_SE_out_bubble_out_stall_entry_2_D3,
        in_i_stall => SE_out_redist21_stall_entry_o17_48_fifo_backStall,
        in_i_valid => SE_out_bubble_out_stall_entry_2_V0,
        in_input_size => in_input_size,
        in_output_size => in_output_size,
        in_pad => in_pad,
        in_stride => in_stride,
        out_c0_exit253_1 => i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_1,
        out_c0_exit253_2 => i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_2,
        out_c0_exit253_3 => i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_3,
        out_c0_exit253_4 => i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_4,
        out_c0_exit253_5 => i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_5,
        out_o_stall => i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_stall_entry_2(STALLENABLE,303)
    -- Valid signal propagation
    SE_out_bubble_out_stall_entry_2_V0 <= SE_out_bubble_out_stall_entry_2_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_stall_entry_2_backStall <= i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_o_stall or not (SE_out_bubble_out_stall_entry_2_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_stall_entry_2_wireValid <= SR_SE_out_bubble_out_stall_entry_2_V;

    -- SR_SE_out_bubble_out_stall_entry_2(STALLREG,372)
    SR_SE_out_bubble_out_stall_entry_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_out_bubble_out_stall_entry_2_r_valid <= (others => '0');
            SR_SE_out_bubble_out_stall_entry_2_r_data0 <= (others => '-');
            SR_SE_out_bubble_out_stall_entry_2_r_data1 <= (others => '-');
            SR_SE_out_bubble_out_stall_entry_2_r_data2 <= (others => '-');
            SR_SE_out_bubble_out_stall_entry_2_r_data3 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_out_bubble_out_stall_entry_2_r_valid <= SE_out_bubble_out_stall_entry_2_backStall and (SR_SE_out_bubble_out_stall_entry_2_r_valid or SR_SE_out_bubble_out_stall_entry_2_i_valid);

            IF (SR_SE_out_bubble_out_stall_entry_2_r_valid = "0") THEN
                -- Data(s)
                SR_SE_out_bubble_out_stall_entry_2_r_data0 <= bubble_select_redist20_stall_entry_o17_38_fifo_b;
                SR_SE_out_bubble_out_stall_entry_2_r_data1 <= bubble_select_redist7_stall_entry_o8_38_fifo_b;
                SR_SE_out_bubble_out_stall_entry_2_r_data2 <= bubble_select_redist18_stall_entry_o16_38_fifo_b;
                SR_SE_out_bubble_out_stall_entry_2_r_data3 <= bubble_select_redist1_stall_entry_o4_38_fifo_b;
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_out_bubble_out_stall_entry_2_and0 <= bubble_out_stall_entry_2_reg_valid_out;
    SR_SE_out_bubble_out_stall_entry_2_and1 <= SE_out_redist1_stall_entry_o4_38_fifo_V0 and SR_SE_out_bubble_out_stall_entry_2_and0;
    SR_SE_out_bubble_out_stall_entry_2_and2 <= SE_out_redist7_stall_entry_o8_38_fifo_V0 and SR_SE_out_bubble_out_stall_entry_2_and1;
    SR_SE_out_bubble_out_stall_entry_2_and3 <= SE_out_redist18_stall_entry_o16_38_fifo_V0 and SR_SE_out_bubble_out_stall_entry_2_and2;
    SR_SE_out_bubble_out_stall_entry_2_i_valid <= SE_out_redist20_stall_entry_o17_38_fifo_V0 and SR_SE_out_bubble_out_stall_entry_2_and3;
    -- Stall signal propagation
    SR_SE_out_bubble_out_stall_entry_2_backStall <= SR_SE_out_bubble_out_stall_entry_2_r_valid or not (SR_SE_out_bubble_out_stall_entry_2_i_valid);

    -- Valid
    SR_SE_out_bubble_out_stall_entry_2_V <= SR_SE_out_bubble_out_stall_entry_2_r_valid WHEN SR_SE_out_bubble_out_stall_entry_2_r_valid = "1" ELSE SR_SE_out_bubble_out_stall_entry_2_i_valid;

    -- Data0
    SR_SE_out_bubble_out_stall_entry_2_D0 <= SR_SE_out_bubble_out_stall_entry_2_r_data0 WHEN SR_SE_out_bubble_out_stall_entry_2_r_valid = "1" ELSE bubble_select_redist20_stall_entry_o17_38_fifo_b;
    -- Data1
    SR_SE_out_bubble_out_stall_entry_2_D1 <= SR_SE_out_bubble_out_stall_entry_2_r_data1 WHEN SR_SE_out_bubble_out_stall_entry_2_r_valid = "1" ELSE bubble_select_redist7_stall_entry_o8_38_fifo_b;
    -- Data2
    SR_SE_out_bubble_out_stall_entry_2_D2 <= SR_SE_out_bubble_out_stall_entry_2_r_data2 WHEN SR_SE_out_bubble_out_stall_entry_2_r_valid = "1" ELSE bubble_select_redist18_stall_entry_o16_38_fifo_b;
    -- Data3
    SR_SE_out_bubble_out_stall_entry_2_D3 <= SR_SE_out_bubble_out_stall_entry_2_r_data3 WHEN SR_SE_out_bubble_out_stall_entry_2_r_valid = "1" ELSE bubble_select_redist1_stall_entry_o4_38_fifo_b;

    -- SE_out_redist7_stall_entry_o8_38_fifo(STALLENABLE,251)
    SE_out_redist7_stall_entry_o8_38_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist7_stall_entry_o8_38_fifo_fromReg0 <= (others => '0');
            SE_out_redist7_stall_entry_o8_38_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist7_stall_entry_o8_38_fifo_fromReg0 <= SE_out_redist7_stall_entry_o8_38_fifo_toReg0;
            -- Succesor 1
            SE_out_redist7_stall_entry_o8_38_fifo_fromReg1 <= SE_out_redist7_stall_entry_o8_38_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist7_stall_entry_o8_38_fifo_consumed0 <= (not (SR_SE_out_bubble_out_stall_entry_2_backStall) and SE_out_redist7_stall_entry_o8_38_fifo_wireValid) or SE_out_redist7_stall_entry_o8_38_fifo_fromReg0;
    SE_out_redist7_stall_entry_o8_38_fifo_consumed1 <= (not (redist8_stall_entry_o8_48_fifo_stall_out) and SE_out_redist7_stall_entry_o8_38_fifo_wireValid) or SE_out_redist7_stall_entry_o8_38_fifo_fromReg1;
    -- Consuming
    SE_out_redist7_stall_entry_o8_38_fifo_StallValid <= SE_out_redist7_stall_entry_o8_38_fifo_backStall and SE_out_redist7_stall_entry_o8_38_fifo_wireValid;
    SE_out_redist7_stall_entry_o8_38_fifo_toReg0 <= SE_out_redist7_stall_entry_o8_38_fifo_StallValid and SE_out_redist7_stall_entry_o8_38_fifo_consumed0;
    SE_out_redist7_stall_entry_o8_38_fifo_toReg1 <= SE_out_redist7_stall_entry_o8_38_fifo_StallValid and SE_out_redist7_stall_entry_o8_38_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist7_stall_entry_o8_38_fifo_or0 <= SE_out_redist7_stall_entry_o8_38_fifo_consumed0;
    SE_out_redist7_stall_entry_o8_38_fifo_wireStall <= not (SE_out_redist7_stall_entry_o8_38_fifo_consumed1 and SE_out_redist7_stall_entry_o8_38_fifo_or0);
    SE_out_redist7_stall_entry_o8_38_fifo_backStall <= SE_out_redist7_stall_entry_o8_38_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist7_stall_entry_o8_38_fifo_V0 <= SE_out_redist7_stall_entry_o8_38_fifo_wireValid and not (SE_out_redist7_stall_entry_o8_38_fifo_fromReg0);
    SE_out_redist7_stall_entry_o8_38_fifo_V1 <= SE_out_redist7_stall_entry_o8_38_fifo_wireValid and not (SE_out_redist7_stall_entry_o8_38_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist7_stall_entry_o8_38_fifo_wireValid <= redist7_stall_entry_o8_38_fifo_valid_out;

    -- redist7_stall_entry_o8_38_fifo(STALLFIFO,118)
    redist7_stall_entry_o8_38_fifo_valid_in <= SE_redist0_stall_entry_o4_4_3_V2;
    redist7_stall_entry_o8_38_fifo_stall_in <= SE_out_redist7_stall_entry_o8_38_fifo_backStall;
    redist7_stall_entry_o8_38_fifo_data_in <= redist6_stall_entry_o8_4_3_q;
    redist7_stall_entry_o8_38_fifo_valid_in_bitsignaltemp <= redist7_stall_entry_o8_38_fifo_valid_in(0);
    redist7_stall_entry_o8_38_fifo_stall_in_bitsignaltemp <= redist7_stall_entry_o8_38_fifo_stall_in(0);
    redist7_stall_entry_o8_38_fifo_valid_out(0) <= redist7_stall_entry_o8_38_fifo_valid_out_bitsignaltemp;
    redist7_stall_entry_o8_38_fifo_stall_out(0) <= redist7_stall_entry_o8_38_fifo_stall_out_bitsignaltemp;
    theredist7_stall_entry_o8_38_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 35,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist7_stall_entry_o8_38_fifo_valid_in_bitsignaltemp,
        stall_in => redist7_stall_entry_o8_38_fifo_stall_in_bitsignaltemp,
        data_in => redist6_stall_entry_o8_4_3_q,
        valid_out => redist7_stall_entry_o8_38_fifo_valid_out_bitsignaltemp,
        stall_out => redist7_stall_entry_o8_38_fifo_stall_out_bitsignaltemp,
        data_out => redist7_stall_entry_o8_38_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist1_stall_entry_o4_38_fifo(STALLFIFO,109)
    redist1_stall_entry_o4_38_fifo_valid_in <= SE_redist0_stall_entry_o4_4_3_V1;
    redist1_stall_entry_o4_38_fifo_stall_in <= SE_out_redist1_stall_entry_o4_38_fifo_backStall;
    redist1_stall_entry_o4_38_fifo_data_in <= redist0_stall_entry_o4_4_3_q;
    redist1_stall_entry_o4_38_fifo_valid_in_bitsignaltemp <= redist1_stall_entry_o4_38_fifo_valid_in(0);
    redist1_stall_entry_o4_38_fifo_stall_in_bitsignaltemp <= redist1_stall_entry_o4_38_fifo_stall_in(0);
    redist1_stall_entry_o4_38_fifo_valid_out(0) <= redist1_stall_entry_o4_38_fifo_valid_out_bitsignaltemp;
    redist1_stall_entry_o4_38_fifo_stall_out(0) <= redist1_stall_entry_o4_38_fifo_stall_out_bitsignaltemp;
    theredist1_stall_entry_o4_38_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 35,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_stall_entry_o4_38_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_stall_entry_o4_38_fifo_stall_in_bitsignaltemp,
        data_in => redist0_stall_entry_o4_4_3_q,
        valid_out => redist1_stall_entry_o4_38_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_stall_entry_o4_38_fifo_stall_out_bitsignaltemp,
        data_out => redist1_stall_entry_o4_38_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist0_stall_entry_o4_4_3(STALLENABLE,236)
    -- Valid signal propagation
    SE_redist0_stall_entry_o4_4_3_V0 <= SE_redist0_stall_entry_o4_4_3_R_v_0;
    SE_redist0_stall_entry_o4_4_3_V1 <= SE_redist0_stall_entry_o4_4_3_R_v_1;
    SE_redist0_stall_entry_o4_4_3_V2 <= SE_redist0_stall_entry_o4_4_3_R_v_2;
    -- Stall signal propagation
    SE_redist0_stall_entry_o4_4_3_s_tv_0 <= SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_backStall and SE_redist0_stall_entry_o4_4_3_R_v_0;
    SE_redist0_stall_entry_o4_4_3_s_tv_1 <= redist1_stall_entry_o4_38_fifo_stall_out and SE_redist0_stall_entry_o4_4_3_R_v_1;
    SE_redist0_stall_entry_o4_4_3_s_tv_2 <= redist7_stall_entry_o8_38_fifo_stall_out and SE_redist0_stall_entry_o4_4_3_R_v_2;
    -- Backward Enable generation
    SE_redist0_stall_entry_o4_4_3_or0 <= SE_redist0_stall_entry_o4_4_3_s_tv_0;
    SE_redist0_stall_entry_o4_4_3_or1 <= SE_redist0_stall_entry_o4_4_3_s_tv_1 or SE_redist0_stall_entry_o4_4_3_or0;
    SE_redist0_stall_entry_o4_4_3_backEN <= not (SE_redist0_stall_entry_o4_4_3_s_tv_2 or SE_redist0_stall_entry_o4_4_3_or1);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_stall_entry_o4_4_3_v_s_0 <= SE_redist0_stall_entry_o4_4_3_backEN and SR_SE_redist0_stall_entry_o4_4_3_V;
    -- Backward Stall generation
    SE_redist0_stall_entry_o4_4_3_backStall <= not (SE_redist0_stall_entry_o4_4_3_backEN);
    SE_redist0_stall_entry_o4_4_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_stall_entry_o4_4_3_R_v_0 <= (others => '0');
            SE_redist0_stall_entry_o4_4_3_R_v_1 <= (others => '0');
            SE_redist0_stall_entry_o4_4_3_R_v_2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_3_backEN = "0") THEN
                SE_redist0_stall_entry_o4_4_3_R_v_0 <= SE_redist0_stall_entry_o4_4_3_R_v_0 and SE_redist0_stall_entry_o4_4_3_s_tv_0;
            ELSE
                SE_redist0_stall_entry_o4_4_3_R_v_0 <= SE_redist0_stall_entry_o4_4_3_v_s_0;
            END IF;

            IF (SE_redist0_stall_entry_o4_4_3_backEN = "0") THEN
                SE_redist0_stall_entry_o4_4_3_R_v_1 <= SE_redist0_stall_entry_o4_4_3_R_v_1 and SE_redist0_stall_entry_o4_4_3_s_tv_1;
            ELSE
                SE_redist0_stall_entry_o4_4_3_R_v_1 <= SE_redist0_stall_entry_o4_4_3_v_s_0;
            END IF;

            IF (SE_redist0_stall_entry_o4_4_3_backEN = "0") THEN
                SE_redist0_stall_entry_o4_4_3_R_v_2 <= SE_redist0_stall_entry_o4_4_3_R_v_2 and SE_redist0_stall_entry_o4_4_3_s_tv_2;
            ELSE
                SE_redist0_stall_entry_o4_4_3_R_v_2 <= SE_redist0_stall_entry_o4_4_3_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_multconst_x(CONSTANT,20)
    i_arrayidx39_2_conv1x1_conv1x1409_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- redist24_bgTrunc_i_add37_2_conv1x1_sel_x_b_1_0(REG,139)
    redist24_bgTrunc_i_add37_2_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist24_bgTrunc_i_add37_2_conv1x1_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_1_backEN = "1") THEN
                redist24_bgTrunc_i_add37_2_conv1x1_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist0_stall_entry_o4_4_1_D4);
            END IF;
        END IF;
    END PROCESS;

    -- i_idxprom38_2_conv1x1_sel_x(BITSELECT,26)@2
    i_idxprom38_2_conv1x1_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist24_bgTrunc_i_add37_2_conv1x1_sel_x_b_1_0_q(31 downto 0)), 64)));

    -- i_add_ptr6_sum_2_conv1x1(ADD,37)@2
    i_add_ptr6_sum_2_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_idxprom38_2_conv1x1_sel_x_b);
    i_add_ptr6_sum_2_conv1x1_b <= STD_LOGIC_VECTOR("0" & redist12_stall_entry_o12_2_1_q);
    i_add_ptr6_sum_2_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_ptr6_sum_2_conv1x1_a) + UNSIGNED(i_add_ptr6_sum_2_conv1x1_b));
    i_add_ptr6_sum_2_conv1x1_q <= i_add_ptr6_sum_2_conv1x1_o(64 downto 0);

    -- bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x(BITSELECT,3)@2
    bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b <= i_add_ptr6_sum_2_conv1x1_q(63 downto 0);

    -- redist23_bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b_1_0(REG,138)
    redist23_bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist23_bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_2_backEN = "1") THEN
                redist23_bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select(BITSELECT,79)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_b <= redist23_bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b_1_0_q(17 downto 0);
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_c <= redist23_bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b_1_0_q(63 downto 54);
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_d <= redist23_bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b_1_0_q(35 downto 18);
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_e <= redist23_bgTrunc_i_add_ptr6_sum_2_conv1x1_sel_x_b_1_0_q(53 downto 36);

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im3_shift0(BITSHIFT,76)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im3_shift0_qint <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im3_shift0_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_15(BITSHIFT,69)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_15_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im6_shift0(BITSHIFT,77)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im6_shift0_qint <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im6_shift0_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_14(BITSHIFT,68)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_14_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_join_16(BITJOIN,70)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_join_16_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_15_q & i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_14_q;

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im9_shift0(BITSHIFT,78)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im9_shift0_qint <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im9_shift0_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_12(BITSHIFT,66)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_12_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im0_shift0(BITSHIFT,75)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im0_shift0_qint <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im0_shift0_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_join_13(BITJOIN,67)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_join_13_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx39_2_conv1x1_conv1x1409_mult_x_im0_shift0_q);

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0(ADD,71)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx39_2_conv1x1_conv1x1409_mult_x_join_13_q);
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx39_2_conv1x1_conv1x1409_mult_x_join_16_q);
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_b));
    i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx39_2_conv1x1_conv1x1409_mult_extender_x(BITJOIN,19)@3
    i_arrayidx39_2_conv1x1_conv1x1409_mult_extender_x_q <= i_arrayidx39_2_conv1x1_conv1x1409_mult_multconst_x_q & i_arrayidx39_2_conv1x1_conv1x1409_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x(BITSELECT,21)@3
    i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x_b <= i_arrayidx39_2_conv1x1_conv1x1409_mult_extender_x_q(63 downto 0);

    -- redist14_stall_entry_o13_4_1(REG,127)
    redist14_stall_entry_o13_4_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_stall_entry_o13_4_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_1_backEN = "1") THEN
                redist14_stall_entry_o13_4_1_q <= STD_LOGIC_VECTOR(SR_SE_redist0_stall_entry_o4_4_1_D3);
            END IF;
        END IF;
    END PROCESS;

    -- redist14_stall_entry_o13_4_2(REG,128)
    redist14_stall_entry_o13_4_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_stall_entry_o13_4_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_2_backEN = "1") THEN
                redist14_stall_entry_o13_4_2_q <= STD_LOGIC_VECTOR(redist14_stall_entry_o13_4_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_stall_entry_o8_4_1(REG,115)
    redist6_stall_entry_o8_4_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_stall_entry_o8_4_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_1_backEN = "1") THEN
                redist6_stall_entry_o8_4_1_q <= STD_LOGIC_VECTOR(SR_SE_redist0_stall_entry_o4_4_1_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_stall_entry_o8_4_2(REG,116)
    redist6_stall_entry_o8_4_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_stall_entry_o8_4_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_2_backEN = "1") THEN
                redist6_stall_entry_o8_4_2_q <= STD_LOGIC_VECTOR(redist6_stall_entry_o8_4_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_stall_entry_o4_4_1(REG,106)
    redist0_stall_entry_o4_4_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_stall_entry_o4_4_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_1_backEN = "1") THEN
                redist0_stall_entry_o4_4_1_q <= STD_LOGIC_VECTOR(SR_SE_redist0_stall_entry_o4_4_1_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_stall_entry_o4_4_2(REG,107)
    redist0_stall_entry_o4_4_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_stall_entry_o4_4_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_2_backEN = "1") THEN
                redist0_stall_entry_o4_4_2_q <= STD_LOGIC_VECTOR(redist0_stall_entry_o4_4_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- SR_SE_redist0_stall_entry_o4_4_3(STALLREG,371)
    SR_SE_redist0_stall_entry_o4_4_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist0_stall_entry_o4_4_3_r_valid <= (others => '0');
            SR_SE_redist0_stall_entry_o4_4_3_r_data0 <= (others => '-');
            SR_SE_redist0_stall_entry_o4_4_3_r_data1 <= (others => '-');
            SR_SE_redist0_stall_entry_o4_4_3_r_data2 <= (others => '-');
            SR_SE_redist0_stall_entry_o4_4_3_r_data3 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist0_stall_entry_o4_4_3_r_valid <= SE_redist0_stall_entry_o4_4_3_backStall and (SR_SE_redist0_stall_entry_o4_4_3_r_valid or SR_SE_redist0_stall_entry_o4_4_3_i_valid);

            IF (SR_SE_redist0_stall_entry_o4_4_3_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist0_stall_entry_o4_4_3_r_data0 <= STD_LOGIC_VECTOR(redist0_stall_entry_o4_4_2_q);
                SR_SE_redist0_stall_entry_o4_4_3_r_data1 <= STD_LOGIC_VECTOR(redist6_stall_entry_o8_4_2_q);
                SR_SE_redist0_stall_entry_o4_4_3_r_data2 <= STD_LOGIC_VECTOR(redist14_stall_entry_o13_4_2_q);
                SR_SE_redist0_stall_entry_o4_4_3_r_data3 <= STD_LOGIC_VECTOR(i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist0_stall_entry_o4_4_3_i_valid <= SE_redist0_stall_entry_o4_4_2_V0;
    -- Stall signal propagation
    SR_SE_redist0_stall_entry_o4_4_3_backStall <= SR_SE_redist0_stall_entry_o4_4_3_r_valid or not (SR_SE_redist0_stall_entry_o4_4_3_i_valid);

    -- Valid
    SR_SE_redist0_stall_entry_o4_4_3_V <= SR_SE_redist0_stall_entry_o4_4_3_r_valid WHEN SR_SE_redist0_stall_entry_o4_4_3_r_valid = "1" ELSE SR_SE_redist0_stall_entry_o4_4_3_i_valid;

    -- Data0
    SR_SE_redist0_stall_entry_o4_4_3_D0 <= SR_SE_redist0_stall_entry_o4_4_3_r_data0 WHEN SR_SE_redist0_stall_entry_o4_4_3_r_valid = "1" ELSE redist0_stall_entry_o4_4_2_q;
    -- Data1
    SR_SE_redist0_stall_entry_o4_4_3_D1 <= SR_SE_redist0_stall_entry_o4_4_3_r_data1 WHEN SR_SE_redist0_stall_entry_o4_4_3_r_valid = "1" ELSE redist6_stall_entry_o8_4_2_q;
    -- Data2
    SR_SE_redist0_stall_entry_o4_4_3_D2 <= SR_SE_redist0_stall_entry_o4_4_3_r_data2 WHEN SR_SE_redist0_stall_entry_o4_4_3_r_valid = "1" ELSE redist14_stall_entry_o13_4_2_q;
    -- Data3
    SR_SE_redist0_stall_entry_o4_4_3_D3 <= SR_SE_redist0_stall_entry_o4_4_3_r_data3 WHEN SR_SE_redist0_stall_entry_o4_4_3_r_valid = "1" ELSE i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x_b;

    -- redist14_stall_entry_o13_4_3(REG,129)
    redist14_stall_entry_o13_4_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_stall_entry_o13_4_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_3_backEN = "1") THEN
                redist14_stall_entry_o13_4_3_q <= STD_LOGIC_VECTOR(SR_SE_redist0_stall_entry_o4_4_3_D2);
            END IF;
        END IF;
    END PROCESS;

    -- c_float_0_000000e_00(FLOATCONSTANT,30)
    c_float_0_000000e_00_q <= "00000000000000000000000000000000";

    -- redist0_stall_entry_o4_4_3(REG,108)
    redist0_stall_entry_o4_4_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_stall_entry_o4_4_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_3_backEN = "1") THEN
                redist0_stall_entry_o4_4_3_q <= STD_LOGIC_VECTOR(SR_SE_redist0_stall_entry_o4_4_3_D0);
            END IF;
        END IF;
    END PROCESS;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_select54_conv1x1(MUX,43)@4
    i_select54_conv1x1_s <= redist0_stall_entry_o4_4_3_q;
    i_select54_conv1x1_combproc: PROCESS (i_select54_conv1x1_s, c_float_0_000000e_00_q, redist14_stall_entry_o13_4_3_q)
    BEGIN
        CASE (i_select54_conv1x1_s) IS
            WHEN "0" => i_select54_conv1x1_q <= c_float_0_000000e_00_q;
            WHEN "1" => i_select54_conv1x1_q <= redist14_stall_entry_o13_4_3_q;
            WHEN OTHERS => i_select54_conv1x1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1(STALLENABLE,219)
    -- Valid signal propagation
    SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_V0 <= SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_backStall <= i_store_unnamed_conv1x111_conv1x1_out_o_stall or not (SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_and0 <= i_syncbuf_output_im_sync_buffer71_conv1x1_out_valid_out;
    SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_wireValid <= SE_redist0_stall_entry_o4_4_3_V0 and SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_and0;

    -- SE_out_redist21_stall_entry_o17_48_fifo(STALLENABLE,280)
    -- Valid signal propagation
    SE_out_redist21_stall_entry_o17_48_fifo_V0 <= SE_out_redist21_stall_entry_o17_48_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist21_stall_entry_o17_48_fifo_backStall <= in_stall_in or not (SE_out_redist21_stall_entry_o17_48_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist21_stall_entry_o17_48_fifo_and0 <= redist21_stall_entry_o17_48_fifo_valid_out;
    SE_out_redist21_stall_entry_o17_48_fifo_and1 <= redist19_stall_entry_o16_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and0;
    SE_out_redist21_stall_entry_o17_48_fifo_and2 <= redist17_stall_entry_o15_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and1;
    SE_out_redist21_stall_entry_o17_48_fifo_and3 <= redist16_stall_entry_o14_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and2;
    SE_out_redist21_stall_entry_o17_48_fifo_and4 <= redist13_stall_entry_o12_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and3;
    SE_out_redist21_stall_entry_o17_48_fifo_and5 <= redist11_stall_entry_o11_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and4;
    SE_out_redist21_stall_entry_o17_48_fifo_and6 <= redist10_stall_entry_o10_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and5;
    SE_out_redist21_stall_entry_o17_48_fifo_and7 <= redist9_stall_entry_o9_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and6;
    SE_out_redist21_stall_entry_o17_48_fifo_and8 <= redist8_stall_entry_o8_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and7;
    SE_out_redist21_stall_entry_o17_48_fifo_and9 <= redist5_stall_entry_o7_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and8;
    SE_out_redist21_stall_entry_o17_48_fifo_and10 <= redist3_stall_entry_o5_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and9;
    SE_out_redist21_stall_entry_o17_48_fifo_and11 <= redist2_stall_entry_o4_48_fifo_valid_out and SE_out_redist21_stall_entry_o17_48_fifo_and10;
    SE_out_redist21_stall_entry_o17_48_fifo_and12 <= i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_o_valid and SE_out_redist21_stall_entry_o17_48_fifo_and11;
    SE_out_redist21_stall_entry_o17_48_fifo_wireValid <= i_store_unnamed_conv1x111_conv1x1_out_o_valid and SE_out_redist21_stall_entry_o17_48_fifo_and12;

    -- redist6_stall_entry_o8_4_3(REG,117)
    redist6_stall_entry_o8_4_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_stall_entry_o8_4_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_3_backEN = "1") THEN
                redist6_stall_entry_o8_4_3_q <= STD_LOGIC_VECTOR(SR_SE_redist0_stall_entry_o4_4_3_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist22_i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x_b_1_0(REG,137)
    redist22_i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist22_i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_4_3_backEN = "1") THEN
                redist22_i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist0_stall_entry_o4_4_3_D3);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_syncbuf_output_im_sync_buffer71_conv1x1(BITJOIN,146)
    bubble_join_i_syncbuf_output_im_sync_buffer71_conv1x1_q <= i_syncbuf_output_im_sync_buffer71_conv1x1_out_buffer_out;

    -- bubble_select_i_syncbuf_output_im_sync_buffer71_conv1x1(BITSELECT,147)
    bubble_select_i_syncbuf_output_im_sync_buffer71_conv1x1_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_output_im_sync_buffer71_conv1x1_q(63 downto 0));

    -- i_arrayidx39_2_conv1x1_conv1x1409_add_x(ADD,22)@4
    i_arrayidx39_2_conv1x1_conv1x1409_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_output_im_sync_buffer71_conv1x1_b);
    i_arrayidx39_2_conv1x1_conv1x1409_add_x_b <= STD_LOGIC_VECTOR("0" & redist22_i_arrayidx39_2_conv1x1_conv1x1409_trunc_sel_x_b_1_0_q);
    i_arrayidx39_2_conv1x1_conv1x1409_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx39_2_conv1x1_conv1x1409_add_x_a) + UNSIGNED(i_arrayidx39_2_conv1x1_conv1x1409_add_x_b));
    i_arrayidx39_2_conv1x1_conv1x1409_add_x_q <= i_arrayidx39_2_conv1x1_conv1x1409_add_x_o(64 downto 0);

    -- i_arrayidx39_2_conv1x1_conv1x1409_dupName_0_trunc_sel_x(BITSELECT,16)@4
    i_arrayidx39_2_conv1x1_conv1x1409_dupName_0_trunc_sel_x_b <= i_arrayidx39_2_conv1x1_conv1x1409_add_x_q(63 downto 0);

    -- i_store_unnamed_conv1x111_conv1x1(BLACKBOX,44)@4
    -- in in_i_stall@20000000
    -- out out_lsu_unnamed_conv1x111_o_active@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@48
    -- out out_unnamed_conv1x111_avm_address@20000000
    -- out out_unnamed_conv1x111_avm_burstcount@20000000
    -- out out_unnamed_conv1x111_avm_byteenable@20000000
    -- out out_unnamed_conv1x111_avm_enable@20000000
    -- out out_unnamed_conv1x111_avm_read@20000000
    -- out out_unnamed_conv1x111_avm_write@20000000
    -- out out_unnamed_conv1x111_avm_writedata@20000000
    thei_store_unnamed_conv1x111_conv1x1 : i_store_unnamed_conv1x111_conv1x1410
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx39_2_conv1x1_conv1x1409_dupName_0_trunc_sel_x_b,
        in_i_predicate => redist6_stall_entry_o8_4_3_q,
        in_i_stall => SE_out_redist21_stall_entry_o17_48_fifo_backStall,
        in_i_valid => SE_out_i_syncbuf_output_im_sync_buffer71_conv1x1_V0,
        in_i_writedata => i_select54_conv1x1_q,
        in_unnamed_conv1x111_avm_readdata => in_unnamed_conv1x111_avm_readdata,
        in_unnamed_conv1x111_avm_readdatavalid => in_unnamed_conv1x111_avm_readdatavalid,
        in_unnamed_conv1x111_avm_waitrequest => in_unnamed_conv1x111_avm_waitrequest,
        in_unnamed_conv1x111_avm_writeack => in_unnamed_conv1x111_avm_writeack,
        out_lsu_unnamed_conv1x111_o_active => i_store_unnamed_conv1x111_conv1x1_out_lsu_unnamed_conv1x111_o_active,
        out_o_stall => i_store_unnamed_conv1x111_conv1x1_out_o_stall,
        out_o_valid => i_store_unnamed_conv1x111_conv1x1_out_o_valid,
        out_unnamed_conv1x111_avm_address => i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_address,
        out_unnamed_conv1x111_avm_burstcount => i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_burstcount,
        out_unnamed_conv1x111_avm_byteenable => i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_byteenable,
        out_unnamed_conv1x111_avm_enable => i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_enable,
        out_unnamed_conv1x111_avm_read => i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_read,
        out_unnamed_conv1x111_avm_write => i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_write,
        out_unnamed_conv1x111_avm_writedata => i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_lsu_unnamed_conv1x111_o_active <= i_store_unnamed_conv1x111_conv1x1_out_lsu_unnamed_conv1x111_o_active;

    -- bubble_join_redist21_stall_entry_o17_48_fifo(BITJOIN,199)
    bubble_join_redist21_stall_entry_o17_48_fifo_q <= redist21_stall_entry_o17_48_fifo_data_out;

    -- bubble_select_redist21_stall_entry_o17_48_fifo(BITSELECT,200)
    bubble_select_redist21_stall_entry_o17_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist21_stall_entry_o17_48_fifo_q(31 downto 0));

    -- bubble_join_redist19_stall_entry_o16_48_fifo(BITJOIN,193)
    bubble_join_redist19_stall_entry_o16_48_fifo_q <= redist19_stall_entry_o16_48_fifo_data_out;

    -- bubble_select_redist19_stall_entry_o16_48_fifo(BITSELECT,194)
    bubble_select_redist19_stall_entry_o16_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist19_stall_entry_o16_48_fifo_q(0 downto 0));

    -- bubble_join_redist17_stall_entry_o15_48_fifo(BITJOIN,187)
    bubble_join_redist17_stall_entry_o15_48_fifo_q <= redist17_stall_entry_o15_48_fifo_data_out;

    -- bubble_select_redist17_stall_entry_o15_48_fifo(BITSELECT,188)
    bubble_select_redist17_stall_entry_o15_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist17_stall_entry_o15_48_fifo_q(31 downto 0));

    -- bubble_join_redist16_stall_entry_o14_48_fifo(BITJOIN,184)
    bubble_join_redist16_stall_entry_o14_48_fifo_q <= redist16_stall_entry_o14_48_fifo_data_out;

    -- bubble_select_redist16_stall_entry_o14_48_fifo(BITSELECT,185)
    bubble_select_redist16_stall_entry_o14_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist16_stall_entry_o14_48_fifo_q(31 downto 0));

    -- bubble_join_redist13_stall_entry_o12_48_fifo(BITJOIN,181)
    bubble_join_redist13_stall_entry_o12_48_fifo_q <= redist13_stall_entry_o12_48_fifo_data_out;

    -- bubble_select_redist13_stall_entry_o12_48_fifo(BITSELECT,182)
    bubble_select_redist13_stall_entry_o12_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist13_stall_entry_o12_48_fifo_q(63 downto 0));

    -- bubble_join_redist11_stall_entry_o11_48_fifo(BITJOIN,178)
    bubble_join_redist11_stall_entry_o11_48_fifo_q <= redist11_stall_entry_o11_48_fifo_data_out;

    -- bubble_select_redist11_stall_entry_o11_48_fifo(BITSELECT,179)
    bubble_select_redist11_stall_entry_o11_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist11_stall_entry_o11_48_fifo_q(0 downto 0));

    -- bubble_join_redist10_stall_entry_o10_48_fifo(BITJOIN,175)
    bubble_join_redist10_stall_entry_o10_48_fifo_q <= redist10_stall_entry_o10_48_fifo_data_out;

    -- bubble_select_redist10_stall_entry_o10_48_fifo(BITSELECT,176)
    bubble_select_redist10_stall_entry_o10_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist10_stall_entry_o10_48_fifo_q(0 downto 0));

    -- bubble_join_redist9_stall_entry_o9_48_fifo(BITJOIN,172)
    bubble_join_redist9_stall_entry_o9_48_fifo_q <= redist9_stall_entry_o9_48_fifo_data_out;

    -- bubble_select_redist9_stall_entry_o9_48_fifo(BITSELECT,173)
    bubble_select_redist9_stall_entry_o9_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist9_stall_entry_o9_48_fifo_q(0 downto 0));

    -- bubble_join_redist8_stall_entry_o8_48_fifo(BITJOIN,169)
    bubble_join_redist8_stall_entry_o8_48_fifo_q <= redist8_stall_entry_o8_48_fifo_data_out;

    -- bubble_select_redist8_stall_entry_o8_48_fifo(BITSELECT,170)
    bubble_select_redist8_stall_entry_o8_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist8_stall_entry_o8_48_fifo_q(0 downto 0));

    -- bubble_join_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x(BITJOIN,141)
    bubble_join_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_q <= i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_5 & i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_4 & i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_3 & i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_2 & i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_out_c0_exit253_1;

    -- bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x(BITSELECT,142)
    bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_q(31 downto 0));
    bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_q(32 downto 32));
    bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_q(64 downto 33));
    bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_q(65 downto 65));
    bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_q(66 downto 66));

    -- bubble_join_redist5_stall_entry_o7_48_fifo(BITJOIN,163)
    bubble_join_redist5_stall_entry_o7_48_fifo_q <= redist5_stall_entry_o7_48_fifo_data_out;

    -- bubble_select_redist5_stall_entry_o7_48_fifo(BITSELECT,164)
    bubble_select_redist5_stall_entry_o7_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist5_stall_entry_o7_48_fifo_q(0 downto 0));

    -- i_c0_exe1254_conv1x1_vt_select_31(BITSELECT,40)@48
    i_c0_exe1254_conv1x1_vt_select_31_b <= bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_b(31 downto 2);

    -- i_c0_exe1254_conv1x1_vt_const_1(CONSTANT,38)
    i_c0_exe1254_conv1x1_vt_const_1_q <= "11";

    -- i_c0_exe1254_conv1x1_vt_join(BITJOIN,39)@48
    i_c0_exe1254_conv1x1_vt_join_q <= i_c0_exe1254_conv1x1_vt_select_31_b & i_c0_exe1254_conv1x1_vt_const_1_q;

    -- bubble_join_redist3_stall_entry_o5_48_fifo(BITJOIN,160)
    bubble_join_redist3_stall_entry_o5_48_fifo_q <= redist3_stall_entry_o5_48_fifo_data_out;

    -- bubble_select_redist3_stall_entry_o5_48_fifo(BITSELECT,161)
    bubble_select_redist3_stall_entry_o5_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist3_stall_entry_o5_48_fifo_q(63 downto 0));

    -- bubble_join_redist2_stall_entry_o4_48_fifo(BITJOIN,157)
    bubble_join_redist2_stall_entry_o4_48_fifo_q <= redist2_stall_entry_o4_48_fifo_data_out;

    -- bubble_select_redist2_stall_entry_o4_48_fifo(BITSELECT,158)
    bubble_select_redist2_stall_entry_o4_48_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist2_stall_entry_o4_48_fifo_q(0 downto 0));

    -- dupName_0_sync_out_x(GPOUT,9)@48
    out_c0_exe116869 <= bubble_select_redist2_stall_entry_o4_48_fifo_b;
    out_c0_exe12 <= bubble_select_redist3_stall_entry_o5_48_fifo_b;
    out_c0_exe1254 <= i_c0_exe1254_conv1x1_vt_join_q;
    out_c0_exe221295 <= bubble_select_redist5_stall_entry_o7_48_fifo_b;
    out_c0_exe2255 <= bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_c;
    out_c0_exe321399 <= bubble_select_redist8_stall_entry_o8_48_fifo_b;
    out_c0_exe3256 <= bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_d;
    out_c0_exe357 <= bubble_select_redist9_stall_entry_o9_48_fifo_b;
    out_c0_exe417177 <= bubble_select_redist10_stall_entry_o10_48_fifo_b;
    out_c0_exe4257 <= bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_e;
    out_c0_exe517283 <= bubble_select_redist11_stall_entry_o11_48_fifo_b;
    out_c0_exe5258 <= bubble_select_i_sfc_c0_for_end_2_loopexit_conv1x1_c0_enter243_conv1x1_aunroll_x_f;
    out_c1_exe112 <= bubble_select_redist13_stall_entry_o12_48_fifo_b;
    out_c2_exe121 <= bubble_select_redist16_stall_entry_o14_48_fifo_b;
    out_c3_exe129 <= bubble_select_redist17_stall_entry_o15_48_fifo_b;
    out_c3_exe237 <= bubble_select_redist19_stall_entry_o16_48_fifo_b;
    out_j_01048 <= bubble_select_redist21_stall_entry_o17_48_fifo_b;
    out_valid_out <= SE_out_redist21_stall_entry_o17_48_fifo_V0;

    -- ext_sig_sync_out(GPOUT,35)
    out_unnamed_conv1x111_avm_address <= i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_address;
    out_unnamed_conv1x111_avm_enable <= i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_enable;
    out_unnamed_conv1x111_avm_read <= i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_read;
    out_unnamed_conv1x111_avm_write <= i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_write;
    out_unnamed_conv1x111_avm_writedata <= i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_writedata;
    out_unnamed_conv1x111_avm_byteenable <= i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_byteenable;
    out_unnamed_conv1x111_avm_burstcount <= i_store_unnamed_conv1x111_conv1x1_out_unnamed_conv1x111_avm_burstcount;

    -- sync_out(GPOUT,53)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
