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

-- VHDL created from bb_conv1x1_B9_stall_region
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

entity bb_conv1x1_B9_stall_region is
    port (
        out_lsu_unnamed_conv1x115_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        in_output_im : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe116867 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe1254105 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe19 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe221293 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2255107 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321397 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417175 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517281 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe110 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe1280112 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe119 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe136 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe244 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01046 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe19 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe2295 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe3296 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe110 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe119 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe136 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe244 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv1x115_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv1x115_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x115_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x115_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv1x115_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv1x115_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv1x115_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv1x115_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv1x1_B9_stall_region;

architecture normal of bb_conv1x1_B9_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1 is
        port (
            in_c0_eni8_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni8_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni8_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni8_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni8_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni8_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni8_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni8_7 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c0_eni8_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_output_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit293_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit293_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_c0_exit293_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit293_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_unnamed_conv1x115_conv1x1448 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv1x115_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv1x115_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv1x115_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv1x115_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_output_im_sync_buffer72_conv1x1436 is
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
    signal bgTrunc_i_add37_3_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom38_3_conv1x1_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add37_3_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_3_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_3_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_3_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_ptr6_sum_3_conv1x1_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr6_sum_3_conv1x1_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr6_sum_3_conv1x1_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_ptr6_sum_3_conv1x1_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_store_unnamed_conv1x115_conv1x1_out_lsu_unnamed_conv1x115_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x115_conv1x1_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x115_conv1x1_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_syncbuf_output_im_sync_buffer72_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_output_im_sync_buffer72_conv1x1_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_output_im_sync_buffer72_conv1x1_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_stall_entry_o5_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_stall_entry_o6_49_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o6_49_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o6_49_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o6_49_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o6_49_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist1_stall_entry_o6_49_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o6_49_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o6_49_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_stall_entry_o6_49_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_stall_entry_o6_49_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist2_stall_entry_o8_5_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o8_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o8_5_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o8_5_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o8_5_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o12_3_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist3_stall_entry_o12_3_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist3_stall_entry_o12_3_2_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_stall_entry_o12_49_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o12_49_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist4_stall_entry_o12_49_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o12_49_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist4_stall_entry_o12_49_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_stall_entry_o12_49_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o12_49_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist4_stall_entry_o12_49_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o12_49_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist4_stall_entry_o12_49_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_stall_entry_o14_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_stall_entry_o14_49_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o14_49_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist6_stall_entry_o14_49_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o14_49_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist6_stall_entry_o14_49_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_stall_entry_o14_49_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o14_49_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist6_stall_entry_o14_49_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o14_49_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist6_stall_entry_o14_49_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_stall_entry_o15_49_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o15_49_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o15_49_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o15_49_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o15_49_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_stall_entry_o15_49_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o15_49_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o15_49_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_stall_entry_o15_49_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist7_stall_entry_o15_49_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_stall_entry_o16_49_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o16_49_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o16_49_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o16_49_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o16_49_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o16_49_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o16_49_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o16_49_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_stall_entry_o16_49_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist8_stall_entry_o16_49_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_arrayidx39_3_conv1x1_conv1x1447_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist12_bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_syncbuf_output_im_sync_buffer72_conv1x1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_output_im_sync_buffer72_conv1x1_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (294 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (63 downto 0);
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
    signal bubble_join_redist1_stall_entry_o6_49_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist1_stall_entry_o6_49_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist4_stall_entry_o12_49_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist4_stall_entry_o12_49_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist6_stall_entry_o14_49_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist6_stall_entry_o14_49_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist7_stall_entry_o15_49_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist7_stall_entry_o15_49_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist8_stall_entry_o16_49_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist8_stall_entry_o16_49_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_V0 : STD_LOGIC_VECTOR (0 downto 0);
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
    signal SE_stall_entry_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o5_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o5_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o5_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o5_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o5_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o5_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o5_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o5_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o5_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o5_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_2_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_2_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_2_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_2_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_3_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_3_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_3_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_3_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_4_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_4_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_4_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_4_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_stall_entry_o8_5_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
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
    signal SR_SE_redist2_stall_entry_o8_5_1_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_1_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_1_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_1_r_data1 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_1_r_data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_1_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_1_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_1_D1 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_1_D2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_3_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_3_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_3_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_3_r_data1 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_3_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_3_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_stall_entry_o8_5_3_D1 : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- redist8_stall_entry_o16_49_fifo(STALLFIFO,100)
    redist8_stall_entry_o16_49_fifo_valid_in <= SE_stall_entry_V5;
    redist8_stall_entry_o16_49_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_backStall;
    redist8_stall_entry_o16_49_fifo_data_in <= bubble_select_stall_entry_n;
    redist8_stall_entry_o16_49_fifo_valid_in_bitsignaltemp <= redist8_stall_entry_o16_49_fifo_valid_in(0);
    redist8_stall_entry_o16_49_fifo_stall_in_bitsignaltemp <= redist8_stall_entry_o16_49_fifo_stall_in(0);
    redist8_stall_entry_o16_49_fifo_valid_out(0) <= redist8_stall_entry_o16_49_fifo_valid_out_bitsignaltemp;
    redist8_stall_entry_o16_49_fifo_stall_out(0) <= redist8_stall_entry_o16_49_fifo_stall_out_bitsignaltemp;
    theredist8_stall_entry_o16_49_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 50,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist8_stall_entry_o16_49_fifo_valid_in_bitsignaltemp,
        stall_in => redist8_stall_entry_o16_49_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_n,
        valid_out => redist8_stall_entry_o16_49_fifo_valid_out_bitsignaltemp,
        stall_out => redist8_stall_entry_o16_49_fifo_stall_out_bitsignaltemp,
        data_out => redist8_stall_entry_o16_49_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist7_stall_entry_o15_49_fifo(STALLFIFO,99)
    redist7_stall_entry_o15_49_fifo_valid_in <= SE_stall_entry_V4;
    redist7_stall_entry_o15_49_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_backStall;
    redist7_stall_entry_o15_49_fifo_data_in <= bubble_select_stall_entry_m;
    redist7_stall_entry_o15_49_fifo_valid_in_bitsignaltemp <= redist7_stall_entry_o15_49_fifo_valid_in(0);
    redist7_stall_entry_o15_49_fifo_stall_in_bitsignaltemp <= redist7_stall_entry_o15_49_fifo_stall_in(0);
    redist7_stall_entry_o15_49_fifo_valid_out(0) <= redist7_stall_entry_o15_49_fifo_valid_out_bitsignaltemp;
    redist7_stall_entry_o15_49_fifo_stall_out(0) <= redist7_stall_entry_o15_49_fifo_stall_out_bitsignaltemp;
    theredist7_stall_entry_o15_49_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 50,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist7_stall_entry_o15_49_fifo_valid_in_bitsignaltemp,
        stall_in => redist7_stall_entry_o15_49_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_m,
        valid_out => redist7_stall_entry_o15_49_fifo_valid_out_bitsignaltemp,
        stall_out => redist7_stall_entry_o15_49_fifo_stall_out_bitsignaltemp,
        data_out => redist7_stall_entry_o15_49_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist1_stall_entry_o6_49_fifo(STALLFIFO,87)
    redist1_stall_entry_o6_49_fifo_valid_in <= SE_stall_entry_V3;
    redist1_stall_entry_o6_49_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_backStall;
    redist1_stall_entry_o6_49_fifo_data_in <= bubble_select_stall_entry_d;
    redist1_stall_entry_o6_49_fifo_valid_in_bitsignaltemp <= redist1_stall_entry_o6_49_fifo_valid_in(0);
    redist1_stall_entry_o6_49_fifo_stall_in_bitsignaltemp <= redist1_stall_entry_o6_49_fifo_stall_in(0);
    redist1_stall_entry_o6_49_fifo_valid_out(0) <= redist1_stall_entry_o6_49_fifo_valid_out_bitsignaltemp;
    redist1_stall_entry_o6_49_fifo_stall_out(0) <= redist1_stall_entry_o6_49_fifo_stall_out_bitsignaltemp;
    theredist1_stall_entry_o6_49_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 50,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_stall_entry_o6_49_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_stall_entry_o6_49_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_d,
        valid_out => redist1_stall_entry_o6_49_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_stall_entry_o6_49_fifo_stall_out_bitsignaltemp,
        data_out => redist1_stall_entry_o6_49_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist5_stall_entry_o14_1_0(REG,97)
    redist5_stall_entry_o14_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o14_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o5_1_0_backEN = "1") THEN
                redist5_stall_entry_o14_1_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_l);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_stall_entry_o14_49_fifo(STALLFIFO,98)
    redist6_stall_entry_o14_49_fifo_valid_in <= SE_redist0_stall_entry_o5_1_0_V1;
    redist6_stall_entry_o14_49_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_backStall;
    redist6_stall_entry_o14_49_fifo_data_in <= redist5_stall_entry_o14_1_0_q;
    redist6_stall_entry_o14_49_fifo_valid_in_bitsignaltemp <= redist6_stall_entry_o14_49_fifo_valid_in(0);
    redist6_stall_entry_o14_49_fifo_stall_in_bitsignaltemp <= redist6_stall_entry_o14_49_fifo_stall_in(0);
    redist6_stall_entry_o14_49_fifo_valid_out(0) <= redist6_stall_entry_o14_49_fifo_valid_out_bitsignaltemp;
    redist6_stall_entry_o14_49_fifo_stall_out(0) <= redist6_stall_entry_o14_49_fifo_stall_out_bitsignaltemp;
    theredist6_stall_entry_o14_49_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 49,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist6_stall_entry_o14_49_fifo_valid_in_bitsignaltemp,
        stall_in => redist6_stall_entry_o14_49_fifo_stall_in_bitsignaltemp,
        data_in => redist5_stall_entry_o14_1_0_q,
        valid_out => redist6_stall_entry_o14_49_fifo_valid_out_bitsignaltemp,
        stall_out => redist6_stall_entry_o14_49_fifo_stall_out_bitsignaltemp,
        data_out => redist6_stall_entry_o14_49_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist0_stall_entry_o5_1_0(REG,86)
    redist0_stall_entry_o5_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_stall_entry_o5_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o5_1_0_backEN = "1") THEN
                redist0_stall_entry_o5_1_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_c);
            END IF;
        END IF;
    END PROCESS;

    -- i_add37_3_conv1x1(ADD,32)@1
    i_add37_3_conv1x1_a <= STD_LOGIC_VECTOR("0" & redist0_stall_entry_o5_1_0_q);
    i_add37_3_conv1x1_b <= STD_LOGIC_VECTOR("0" & redist5_stall_entry_o14_1_0_q);
    i_add37_3_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add37_3_conv1x1_a) + UNSIGNED(i_add37_3_conv1x1_b));
    i_add37_3_conv1x1_q <= i_add37_3_conv1x1_o(32 downto 0);

    -- bgTrunc_i_add37_3_conv1x1_sel_x(BITSELECT,2)@1
    bgTrunc_i_add37_3_conv1x1_sel_x_b <= i_add37_3_conv1x1_q(31 downto 0);

    -- redist3_stall_entry_o12_3_0(REG,93)
    redist3_stall_entry_o12_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_stall_entry_o12_3_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o5_1_0_backEN = "1") THEN
                redist3_stall_entry_o12_3_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_j);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_stall_entry_o8_5_0(REG,88)
    redist2_stall_entry_o8_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_stall_entry_o8_5_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o5_1_0_backEN = "1") THEN
                redist2_stall_entry_o8_5_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_f);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_stall_entry_o12_3_1(REG,94)
    redist3_stall_entry_o12_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_stall_entry_o12_3_1_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_1_backEN = "1") THEN
                redist3_stall_entry_o12_3_1_q <= STD_LOGIC_VECTOR(SR_SE_redist2_stall_entry_o8_5_1_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_stall_entry_o12_3_2(REG,95)
    redist3_stall_entry_o12_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_stall_entry_o12_3_2_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_2_backEN = "1") THEN
                redist3_stall_entry_o12_3_2_q <= STD_LOGIC_VECTOR(redist3_stall_entry_o12_3_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_stall_entry_o12_49_fifo(STALLFIFO,96)
    redist4_stall_entry_o12_49_fifo_valid_in <= SE_redist2_stall_entry_o8_5_2_V1;
    redist4_stall_entry_o12_49_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_backStall;
    redist4_stall_entry_o12_49_fifo_data_in <= redist3_stall_entry_o12_3_2_q;
    redist4_stall_entry_o12_49_fifo_valid_in_bitsignaltemp <= redist4_stall_entry_o12_49_fifo_valid_in(0);
    redist4_stall_entry_o12_49_fifo_stall_in_bitsignaltemp <= redist4_stall_entry_o12_49_fifo_stall_in(0);
    redist4_stall_entry_o12_49_fifo_valid_out(0) <= redist4_stall_entry_o12_49_fifo_valid_out_bitsignaltemp;
    redist4_stall_entry_o12_49_fifo_stall_out(0) <= redist4_stall_entry_o12_49_fifo_stall_out_bitsignaltemp;
    theredist4_stall_entry_o12_49_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 47,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist4_stall_entry_o12_49_fifo_valid_in_bitsignaltemp,
        stall_in => redist4_stall_entry_o12_49_fifo_stall_in_bitsignaltemp,
        data_in => redist3_stall_entry_o12_3_2_q,
        valid_out => redist4_stall_entry_o12_49_fifo_valid_out_bitsignaltemp,
        stall_out => redist4_stall_entry_o12_49_fifo_stall_out_bitsignaltemp,
        data_out => redist4_stall_entry_o12_49_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_0(REG,105)
    redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_1_backEN = "1") THEN
                redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_0_q <= STD_LOGIC_VECTOR(SR_SE_redist2_stall_entry_o8_5_1_D2);
            END IF;
        END IF;
    END PROCESS;

    -- redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_1(REG,106)
    redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_2_backEN = "1") THEN
                redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_1_q <= STD_LOGIC_VECTOR(redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- i_idxprom38_3_conv1x1_sel_x(BITSELECT,23)@3
    i_idxprom38_3_conv1x1_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist13_bgTrunc_i_add37_3_conv1x1_sel_x_b_2_1_q(31 downto 0)), 64)));

    -- i_add_ptr6_sum_3_conv1x1(ADD,33)@3
    i_add_ptr6_sum_3_conv1x1_a <= STD_LOGIC_VECTOR("0" & i_idxprom38_3_conv1x1_sel_x_b);
    i_add_ptr6_sum_3_conv1x1_b <= STD_LOGIC_VECTOR("0" & redist3_stall_entry_o12_3_2_q);
    i_add_ptr6_sum_3_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_ptr6_sum_3_conv1x1_a) + UNSIGNED(i_add_ptr6_sum_3_conv1x1_b));
    i_add_ptr6_sum_3_conv1x1_q <= i_add_ptr6_sum_3_conv1x1_o(64 downto 0);

    -- bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x(BITSELECT,3)@3
    bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b <= i_add_ptr6_sum_3_conv1x1_q(63 downto 0);

    -- redist2_stall_entry_o8_5_1(REG,89)
    redist2_stall_entry_o8_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_stall_entry_o8_5_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_1_backEN = "1") THEN
                redist2_stall_entry_o8_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist2_stall_entry_o8_5_1_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_stall_entry_o8_5_2(REG,90)
    redist2_stall_entry_o8_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_stall_entry_o8_5_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_2_backEN = "1") THEN
                redist2_stall_entry_o8_5_2_q <= STD_LOGIC_VECTOR(redist2_stall_entry_o8_5_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist2_stall_entry_o8_5_4(STALLENABLE,175)
    -- Valid signal propagation
    SE_redist2_stall_entry_o8_5_4_V0 <= SE_redist2_stall_entry_o8_5_4_R_v_0;
    -- Stall signal propagation
    SE_redist2_stall_entry_o8_5_4_s_tv_0 <= SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_backStall and SE_redist2_stall_entry_o8_5_4_R_v_0;
    -- Backward Enable generation
    SE_redist2_stall_entry_o8_5_4_backEN <= not (SE_redist2_stall_entry_o8_5_4_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist2_stall_entry_o8_5_4_v_s_0 <= SE_redist2_stall_entry_o8_5_4_backEN and SE_redist2_stall_entry_o8_5_3_V0;
    -- Backward Stall generation
    SE_redist2_stall_entry_o8_5_4_backStall <= not (SE_redist2_stall_entry_o8_5_4_v_s_0);
    SE_redist2_stall_entry_o8_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist2_stall_entry_o8_5_4_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_4_backEN = "0") THEN
                SE_redist2_stall_entry_o8_5_4_R_v_0 <= SE_redist2_stall_entry_o8_5_4_R_v_0 and SE_redist2_stall_entry_o8_5_4_s_tv_0;
            ELSE
                SE_redist2_stall_entry_o8_5_4_R_v_0 <= SE_redist2_stall_entry_o8_5_4_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist2_stall_entry_o8_5_3(STALLENABLE,174)
    -- Valid signal propagation
    SE_redist2_stall_entry_o8_5_3_V0 <= SE_redist2_stall_entry_o8_5_3_R_v_0;
    -- Stall signal propagation
    SE_redist2_stall_entry_o8_5_3_s_tv_0 <= SE_redist2_stall_entry_o8_5_4_backStall and SE_redist2_stall_entry_o8_5_3_R_v_0;
    -- Backward Enable generation
    SE_redist2_stall_entry_o8_5_3_backEN <= not (SE_redist2_stall_entry_o8_5_3_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist2_stall_entry_o8_5_3_v_s_0 <= SE_redist2_stall_entry_o8_5_3_backEN and SR_SE_redist2_stall_entry_o8_5_3_V;
    -- Backward Stall generation
    SE_redist2_stall_entry_o8_5_3_backStall <= not (SE_redist2_stall_entry_o8_5_3_backEN);
    SE_redist2_stall_entry_o8_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist2_stall_entry_o8_5_3_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_3_backEN = "0") THEN
                SE_redist2_stall_entry_o8_5_3_R_v_0 <= SE_redist2_stall_entry_o8_5_3_R_v_0 and SE_redist2_stall_entry_o8_5_3_s_tv_0;
            ELSE
                SE_redist2_stall_entry_o8_5_3_R_v_0 <= SE_redist2_stall_entry_o8_5_3_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist2_stall_entry_o8_5_3(STALLREG,244)
    SR_SE_redist2_stall_entry_o8_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist2_stall_entry_o8_5_3_r_valid <= (others => '0');
            SR_SE_redist2_stall_entry_o8_5_3_r_data0 <= (others => '-');
            SR_SE_redist2_stall_entry_o8_5_3_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist2_stall_entry_o8_5_3_r_valid <= SE_redist2_stall_entry_o8_5_3_backStall and (SR_SE_redist2_stall_entry_o8_5_3_r_valid or SR_SE_redist2_stall_entry_o8_5_3_i_valid);

            IF (SR_SE_redist2_stall_entry_o8_5_3_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist2_stall_entry_o8_5_3_r_data0 <= STD_LOGIC_VECTOR(redist2_stall_entry_o8_5_2_q);
                SR_SE_redist2_stall_entry_o8_5_3_r_data1 <= STD_LOGIC_VECTOR(bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist2_stall_entry_o8_5_3_i_valid <= SE_redist2_stall_entry_o8_5_2_V0;
    -- Stall signal propagation
    SR_SE_redist2_stall_entry_o8_5_3_backStall <= SR_SE_redist2_stall_entry_o8_5_3_r_valid or not (SR_SE_redist2_stall_entry_o8_5_3_i_valid);

    -- Valid
    SR_SE_redist2_stall_entry_o8_5_3_V <= SR_SE_redist2_stall_entry_o8_5_3_r_valid WHEN SR_SE_redist2_stall_entry_o8_5_3_r_valid = "1" ELSE SR_SE_redist2_stall_entry_o8_5_3_i_valid;

    -- Data0
    SR_SE_redist2_stall_entry_o8_5_3_D0 <= SR_SE_redist2_stall_entry_o8_5_3_r_data0 WHEN SR_SE_redist2_stall_entry_o8_5_3_r_valid = "1" ELSE redist2_stall_entry_o8_5_2_q;
    -- Data1
    SR_SE_redist2_stall_entry_o8_5_3_D1 <= SR_SE_redist2_stall_entry_o8_5_3_r_data1 WHEN SR_SE_redist2_stall_entry_o8_5_3_r_valid = "1" ELSE bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b;

    -- SE_redist2_stall_entry_o8_5_2(STALLENABLE,173)
    -- Valid signal propagation
    SE_redist2_stall_entry_o8_5_2_V0 <= SE_redist2_stall_entry_o8_5_2_R_v_0;
    SE_redist2_stall_entry_o8_5_2_V1 <= SE_redist2_stall_entry_o8_5_2_R_v_1;
    -- Stall signal propagation
    SE_redist2_stall_entry_o8_5_2_s_tv_0 <= SR_SE_redist2_stall_entry_o8_5_3_backStall and SE_redist2_stall_entry_o8_5_2_R_v_0;
    SE_redist2_stall_entry_o8_5_2_s_tv_1 <= redist4_stall_entry_o12_49_fifo_stall_out and SE_redist2_stall_entry_o8_5_2_R_v_1;
    -- Backward Enable generation
    SE_redist2_stall_entry_o8_5_2_or0 <= SE_redist2_stall_entry_o8_5_2_s_tv_0;
    SE_redist2_stall_entry_o8_5_2_backEN <= not (SE_redist2_stall_entry_o8_5_2_s_tv_1 or SE_redist2_stall_entry_o8_5_2_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist2_stall_entry_o8_5_2_v_s_0 <= SE_redist2_stall_entry_o8_5_2_backEN and SE_redist2_stall_entry_o8_5_1_V0;
    -- Backward Stall generation
    SE_redist2_stall_entry_o8_5_2_backStall <= not (SE_redist2_stall_entry_o8_5_2_v_s_0);
    SE_redist2_stall_entry_o8_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist2_stall_entry_o8_5_2_R_v_0 <= (others => '0');
            SE_redist2_stall_entry_o8_5_2_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_2_backEN = "0") THEN
                SE_redist2_stall_entry_o8_5_2_R_v_0 <= SE_redist2_stall_entry_o8_5_2_R_v_0 and SE_redist2_stall_entry_o8_5_2_s_tv_0;
            ELSE
                SE_redist2_stall_entry_o8_5_2_R_v_0 <= SE_redist2_stall_entry_o8_5_2_v_s_0;
            END IF;

            IF (SE_redist2_stall_entry_o8_5_2_backEN = "0") THEN
                SE_redist2_stall_entry_o8_5_2_R_v_1 <= SE_redist2_stall_entry_o8_5_2_R_v_1 and SE_redist2_stall_entry_o8_5_2_s_tv_1;
            ELSE
                SE_redist2_stall_entry_o8_5_2_R_v_1 <= SE_redist2_stall_entry_o8_5_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist2_stall_entry_o8_5_1(STALLENABLE,172)
    -- Valid signal propagation
    SE_redist2_stall_entry_o8_5_1_V0 <= SE_redist2_stall_entry_o8_5_1_R_v_0;
    -- Stall signal propagation
    SE_redist2_stall_entry_o8_5_1_s_tv_0 <= SE_redist2_stall_entry_o8_5_2_backStall and SE_redist2_stall_entry_o8_5_1_R_v_0;
    -- Backward Enable generation
    SE_redist2_stall_entry_o8_5_1_backEN <= not (SE_redist2_stall_entry_o8_5_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist2_stall_entry_o8_5_1_v_s_0 <= SE_redist2_stall_entry_o8_5_1_backEN and SR_SE_redist2_stall_entry_o8_5_1_V;
    -- Backward Stall generation
    SE_redist2_stall_entry_o8_5_1_backStall <= not (SE_redist2_stall_entry_o8_5_1_backEN);
    SE_redist2_stall_entry_o8_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist2_stall_entry_o8_5_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_1_backEN = "0") THEN
                SE_redist2_stall_entry_o8_5_1_R_v_0 <= SE_redist2_stall_entry_o8_5_1_R_v_0 and SE_redist2_stall_entry_o8_5_1_s_tv_0;
            ELSE
                SE_redist2_stall_entry_o8_5_1_R_v_0 <= SE_redist2_stall_entry_o8_5_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist2_stall_entry_o8_5_1(STALLREG,243)
    SR_SE_redist2_stall_entry_o8_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist2_stall_entry_o8_5_1_r_valid <= (others => '0');
            SR_SE_redist2_stall_entry_o8_5_1_r_data0 <= (others => '-');
            SR_SE_redist2_stall_entry_o8_5_1_r_data1 <= (others => '-');
            SR_SE_redist2_stall_entry_o8_5_1_r_data2 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist2_stall_entry_o8_5_1_r_valid <= SE_redist2_stall_entry_o8_5_1_backStall and (SR_SE_redist2_stall_entry_o8_5_1_r_valid or SR_SE_redist2_stall_entry_o8_5_1_i_valid);

            IF (SR_SE_redist2_stall_entry_o8_5_1_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist2_stall_entry_o8_5_1_r_data0 <= STD_LOGIC_VECTOR(redist2_stall_entry_o8_5_0_q);
                SR_SE_redist2_stall_entry_o8_5_1_r_data1 <= STD_LOGIC_VECTOR(redist3_stall_entry_o12_3_0_q);
                SR_SE_redist2_stall_entry_o8_5_1_r_data2 <= STD_LOGIC_VECTOR(bgTrunc_i_add37_3_conv1x1_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist2_stall_entry_o8_5_1_i_valid <= SE_redist0_stall_entry_o5_1_0_V0;
    -- Stall signal propagation
    SR_SE_redist2_stall_entry_o8_5_1_backStall <= SR_SE_redist2_stall_entry_o8_5_1_r_valid or not (SR_SE_redist2_stall_entry_o8_5_1_i_valid);

    -- Valid
    SR_SE_redist2_stall_entry_o8_5_1_V <= SR_SE_redist2_stall_entry_o8_5_1_r_valid WHEN SR_SE_redist2_stall_entry_o8_5_1_r_valid = "1" ELSE SR_SE_redist2_stall_entry_o8_5_1_i_valid;

    -- Data0
    SR_SE_redist2_stall_entry_o8_5_1_D0 <= SR_SE_redist2_stall_entry_o8_5_1_r_data0 WHEN SR_SE_redist2_stall_entry_o8_5_1_r_valid = "1" ELSE redist2_stall_entry_o8_5_0_q;
    -- Data1
    SR_SE_redist2_stall_entry_o8_5_1_D1 <= SR_SE_redist2_stall_entry_o8_5_1_r_data1 WHEN SR_SE_redist2_stall_entry_o8_5_1_r_valid = "1" ELSE redist3_stall_entry_o12_3_0_q;
    -- Data2
    SR_SE_redist2_stall_entry_o8_5_1_D2 <= SR_SE_redist2_stall_entry_o8_5_1_r_data2 WHEN SR_SE_redist2_stall_entry_o8_5_1_r_valid = "1" ELSE bgTrunc_i_add37_3_conv1x1_sel_x_b;

    -- SE_redist0_stall_entry_o5_1_0(STALLENABLE,168)
    -- Valid signal propagation
    SE_redist0_stall_entry_o5_1_0_V0 <= SE_redist0_stall_entry_o5_1_0_R_v_0;
    SE_redist0_stall_entry_o5_1_0_V1 <= SE_redist0_stall_entry_o5_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist0_stall_entry_o5_1_0_s_tv_0 <= SR_SE_redist2_stall_entry_o8_5_1_backStall and SE_redist0_stall_entry_o5_1_0_R_v_0;
    SE_redist0_stall_entry_o5_1_0_s_tv_1 <= redist6_stall_entry_o14_49_fifo_stall_out and SE_redist0_stall_entry_o5_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist0_stall_entry_o5_1_0_or0 <= SE_redist0_stall_entry_o5_1_0_s_tv_0;
    SE_redist0_stall_entry_o5_1_0_backEN <= not (SE_redist0_stall_entry_o5_1_0_s_tv_1 or SE_redist0_stall_entry_o5_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_stall_entry_o5_1_0_v_s_0 <= SE_redist0_stall_entry_o5_1_0_backEN and SE_stall_entry_V1;
    -- Backward Stall generation
    SE_redist0_stall_entry_o5_1_0_backStall <= not (SE_redist0_stall_entry_o5_1_0_v_s_0);
    SE_redist0_stall_entry_o5_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_stall_entry_o5_1_0_R_v_0 <= (others => '0');
            SE_redist0_stall_entry_o5_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o5_1_0_backEN = "0") THEN
                SE_redist0_stall_entry_o5_1_0_R_v_0 <= SE_redist0_stall_entry_o5_1_0_R_v_0 and SE_redist0_stall_entry_o5_1_0_s_tv_0;
            ELSE
                SE_redist0_stall_entry_o5_1_0_R_v_0 <= SE_redist0_stall_entry_o5_1_0_v_s_0;
            END IF;

            IF (SE_redist0_stall_entry_o5_1_0_backEN = "0") THEN
                SE_redist0_stall_entry_o5_1_0_R_v_1 <= SE_redist0_stall_entry_o5_1_0_R_v_1 and SE_redist0_stall_entry_o5_1_0_s_tv_1;
            ELSE
                SE_redist0_stall_entry_o5_1_0_R_v_1 <= SE_redist0_stall_entry_o5_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- i_syncbuf_output_im_sync_buffer72_conv1x1(BLACKBOX,37)@5
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_output_im_sync_buffer72_conv1x1 : i_syncbuf_output_im_sync_buffer72_conv1x1436
    PORT MAP (
        in_buffer_in => in_output_im,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_backStall,
        in_valid_in => SE_out_bubble_out_stall_entry_1_V0,
        out_buffer_out => i_syncbuf_output_im_sync_buffer72_conv1x1_out_buffer_out,
        out_stall_out => i_syncbuf_output_im_sync_buffer72_conv1x1_out_stall_out,
        out_valid_out => i_syncbuf_output_im_sync_buffer72_conv1x1_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_stall_entry_1(STALLENABLE,211)
    -- Valid signal propagation
    SE_out_bubble_out_stall_entry_1_V0 <= SE_out_bubble_out_stall_entry_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_stall_entry_1_backStall <= i_syncbuf_output_im_sync_buffer72_conv1x1_out_stall_out or not (SE_out_bubble_out_stall_entry_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_stall_entry_1_wireValid <= bubble_out_stall_entry_1_reg_valid_out;

    -- bubble_out_stall_entry_1_reg(STALLFIFO,242)
    bubble_out_stall_entry_1_reg_valid_in <= SE_stall_entry_V0;
    bubble_out_stall_entry_1_reg_stall_in <= SE_out_bubble_out_stall_entry_1_backStall;
    bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp <= bubble_out_stall_entry_1_reg_valid_in(0);
    bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp <= bubble_out_stall_entry_1_reg_stall_in(0);
    bubble_out_stall_entry_1_reg_valid_out(0) <= bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    bubble_out_stall_entry_1_reg_stall_out(0) <= bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    thebubble_out_stall_entry_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 6,
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

    -- SE_stall_entry(STALLENABLE,155)
    SE_stall_entry_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_stall_entry_fromReg0 <= (others => '0');
            SE_stall_entry_fromReg1 <= (others => '0');
            SE_stall_entry_fromReg2 <= (others => '0');
            SE_stall_entry_fromReg3 <= (others => '0');
            SE_stall_entry_fromReg4 <= (others => '0');
            SE_stall_entry_fromReg5 <= (others => '0');
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
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_stall_entry_consumed0 <= (not (bubble_out_stall_entry_1_reg_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg0;
    SE_stall_entry_consumed1 <= (not (SE_redist0_stall_entry_o5_1_0_backStall) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg1;
    SE_stall_entry_consumed2 <= (not (i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_o_stall) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg2;
    SE_stall_entry_consumed3 <= (not (redist1_stall_entry_o6_49_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg3;
    SE_stall_entry_consumed4 <= (not (redist7_stall_entry_o15_49_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg4;
    SE_stall_entry_consumed5 <= (not (redist8_stall_entry_o16_49_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg5;
    -- Consuming
    SE_stall_entry_StallValid <= SE_stall_entry_backStall and SE_stall_entry_wireValid;
    SE_stall_entry_toReg0 <= SE_stall_entry_StallValid and SE_stall_entry_consumed0;
    SE_stall_entry_toReg1 <= SE_stall_entry_StallValid and SE_stall_entry_consumed1;
    SE_stall_entry_toReg2 <= SE_stall_entry_StallValid and SE_stall_entry_consumed2;
    SE_stall_entry_toReg3 <= SE_stall_entry_StallValid and SE_stall_entry_consumed3;
    SE_stall_entry_toReg4 <= SE_stall_entry_StallValid and SE_stall_entry_consumed4;
    SE_stall_entry_toReg5 <= SE_stall_entry_StallValid and SE_stall_entry_consumed5;
    -- Backward Stall generation
    SE_stall_entry_or0 <= SE_stall_entry_consumed0;
    SE_stall_entry_or1 <= SE_stall_entry_consumed1 and SE_stall_entry_or0;
    SE_stall_entry_or2 <= SE_stall_entry_consumed2 and SE_stall_entry_or1;
    SE_stall_entry_or3 <= SE_stall_entry_consumed3 and SE_stall_entry_or2;
    SE_stall_entry_or4 <= SE_stall_entry_consumed4 and SE_stall_entry_or3;
    SE_stall_entry_wireStall <= not (SE_stall_entry_consumed5 and SE_stall_entry_or4);
    SE_stall_entry_backStall <= SE_stall_entry_wireStall;
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg0);
    SE_stall_entry_V1 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg1);
    SE_stall_entry_V2 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg2);
    SE_stall_entry_V3 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg3);
    SE_stall_entry_V4 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg4);
    SE_stall_entry_V5 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg5);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo(STALLFIFO,102)
    redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_in <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_V2;
    redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_backStall;
    redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_data_in <= bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_d;
    redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_in_bitsignaltemp <= redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_in(0);
    redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_in_bitsignaltemp <= redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_in(0);
    redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_out(0) <= redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_out_bitsignaltemp;
    redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_out(0) <= redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_out_bitsignaltemp;
    theredist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_d,
        valid_out => redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_out_bitsignaltemp,
        data_out => redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo(STALLFIFO,101)
    redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_in <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_V1;
    redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_backStall;
    redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_data_in <= bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_c;
    redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_in_bitsignaltemp <= redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_in(0);
    redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_in_bitsignaltemp <= redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_in(0);
    redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_out(0) <= redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_out_bitsignaltemp;
    redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_out(0) <= redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_out_bitsignaltemp;
    theredist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 45,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_in_bitsignaltemp,
        stall_in => redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_c,
        valid_out => redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_out_bitsignaltemp,
        stall_out => redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_out_bitsignaltemp,
        data_out => redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x(STALLENABLE,148)
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg1 <= (others => '0');
            SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg0 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg1 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg2 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed0 <= (not (SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_backStall) and SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg0;
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed1 <= (not (redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_stall_out) and SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg1;
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed2 <= (not (redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_stall_out) and SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg2;
    -- Consuming
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_StallValid <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_backStall and SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireValid;
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_toReg0 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_toReg1 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed1;
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_toReg2 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_StallValid and SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed2;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_or0 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_or1 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed1 and SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_or0;
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireStall <= not (SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_consumed2 and SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_or1);
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_backStall <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_V0 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg0);
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_V1 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg1);
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_V2 <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_wireValid <= i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_o_valid;

    -- bubble_join_stall_entry(BITJOIN,115)
    bubble_join_stall_entry_q <= in_j_01046 & in_c3_exe244 & in_c3_exe136 & in_c2_exe119 & in_c1_exe1280112 & in_c1_exe110 & in_c0_exe517281 & in_c0_exe417175 & in_c0_exe321397 & in_c0_exe2255107 & in_c0_exe221293 & in_c0_exe19 & in_c0_exe1254105 & in_c0_exe116867;

    -- bubble_select_stall_entry(BITSELECT,116)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(32 downto 1));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(96 downto 33));
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

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x(BLACKBOX,24)@0
    -- in in_i_stall@20000000
    -- out out_c0_exit293_0@5
    -- out out_c0_exit293_1@5
    -- out out_c0_exit293_2@5
    -- out out_c0_exit293_3@5
    -- out out_o_stall@20000000
    -- out out_o_valid@5
    thei_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x : i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1
    PORT MAP (
        in_c0_eni8_0 => GND_q,
        in_c0_eni8_1 => bubble_select_stall_entry_f,
        in_c0_eni8_2 => bubble_select_stall_entry_b,
        in_c0_eni8_3 => bubble_select_stall_entry_g,
        in_c0_eni8_4 => bubble_select_stall_entry_h,
        in_c0_eni8_5 => bubble_select_stall_entry_e,
        in_c0_eni8_6 => bubble_select_stall_entry_i,
        in_c0_eni8_7 => bubble_select_stall_entry_k,
        in_c0_eni8_8 => bubble_select_stall_entry_o,
        in_i_stall => SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_backStall,
        in_i_valid => SE_stall_entry_V2,
        in_output_size => in_output_size,
        out_c0_exit293_1 => i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_1,
        out_c0_exit293_2 => i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2,
        out_c0_exit293_3 => i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3,
        out_o_stall => i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x(BITJOIN,108)
    bubble_join_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_q <= i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3 & i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2 & i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_1;

    -- bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x(BITSELECT,109)
    bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_q(31 downto 0));
    bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_q(63 downto 32));
    bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_q(64 downto 64));

    -- SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1(STALLENABLE,154)
    -- Valid signal propagation
    SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_V0 <= SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_backStall <= i_store_unnamed_conv1x115_conv1x1_out_o_stall or not (SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_and0 <= i_syncbuf_output_im_sync_buffer72_conv1x1_out_valid_out;
    SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_and1 <= SE_redist2_stall_entry_o8_5_4_V0 and SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_and0;
    SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_wireValid <= SE_out_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_V0 and SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_and1;

    -- SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo(STALLENABLE,191)
    -- Valid signal propagation
    SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_V0 <= SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_backStall <= in_stall_in or not (SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and0 <= redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_valid_out;
    SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and1 <= redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and0;
    SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and2 <= redist8_stall_entry_o16_49_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and1;
    SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and3 <= redist7_stall_entry_o15_49_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and2;
    SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and4 <= redist6_stall_entry_o14_49_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and3;
    SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and5 <= redist4_stall_entry_o12_49_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and4;
    SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and6 <= redist1_stall_entry_o6_49_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and5;
    SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_wireValid <= i_store_unnamed_conv1x115_conv1x1_out_o_valid and SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_and6;

    -- redist2_stall_entry_o8_5_3(REG,91)
    redist2_stall_entry_o8_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_stall_entry_o8_5_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_3_backEN = "1") THEN
                redist2_stall_entry_o8_5_3_q <= STD_LOGIC_VECTOR(SR_SE_redist2_stall_entry_o8_5_3_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_stall_entry_o8_5_4(REG,92)
    redist2_stall_entry_o8_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_stall_entry_o8_5_4_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_4_backEN = "1") THEN
                redist2_stall_entry_o8_5_4_q <= STD_LOGIC_VECTOR(redist2_stall_entry_o8_5_3_q);
            END IF;
        END IF;
    END PROCESS;

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_multconst_x(CONSTANT,17)
    i_arrayidx39_3_conv1x1_conv1x1447_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist12_bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b_1_0(REG,104)
    redist12_bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_3_backEN = "1") THEN
                redist12_bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist2_stall_entry_o8_5_3_D1);
            END IF;
        END IF;
    END PROCESS;

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select(BITSELECT,71)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_b <= redist12_bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b_1_0_q(17 downto 0);
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_c <= redist12_bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b_1_0_q(63 downto 54);
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_d <= redist12_bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b_1_0_q(35 downto 18);
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_e <= redist12_bgTrunc_i_add_ptr6_sum_3_conv1x1_sel_x_b_1_0_q(53 downto 36);

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im3_shift0(BITSHIFT,68)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im3_shift0_qint <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im3_shift0_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_15(BITSHIFT,61)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_15_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im6_shift0(BITSHIFT,69)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im6_shift0_qint <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im6_shift0_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_14(BITSHIFT,60)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_14_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_join_16(BITJOIN,62)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_join_16_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_15_q & i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_14_q;

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im9_shift0(BITSHIFT,70)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im9_shift0_qint <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im9_shift0_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_12(BITSHIFT,58)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_12_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im0_shift0(BITSHIFT,67)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im0_shift0_qint <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im0_shift0_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_join_13(BITJOIN,59)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_join_13_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx39_3_conv1x1_conv1x1447_mult_x_im0_shift0_q);

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0(ADD,63)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx39_3_conv1x1_conv1x1447_mult_x_join_13_q);
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx39_3_conv1x1_conv1x1447_mult_x_join_16_q);
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_b));
    i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx39_3_conv1x1_conv1x1447_mult_extender_x(BITJOIN,16)@4
    i_arrayidx39_3_conv1x1_conv1x1447_mult_extender_x_q <= i_arrayidx39_3_conv1x1_conv1x1447_mult_multconst_x_q & i_arrayidx39_3_conv1x1_conv1x1447_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx39_3_conv1x1_conv1x1447_trunc_sel_x(BITSELECT,18)@4
    i_arrayidx39_3_conv1x1_conv1x1447_trunc_sel_x_b <= i_arrayidx39_3_conv1x1_conv1x1447_mult_extender_x_q(63 downto 0);

    -- redist11_i_arrayidx39_3_conv1x1_conv1x1447_trunc_sel_x_b_1_0(REG,103)
    redist11_i_arrayidx39_3_conv1x1_conv1x1447_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_i_arrayidx39_3_conv1x1_conv1x1447_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_stall_entry_o8_5_4_backEN = "1") THEN
                redist11_i_arrayidx39_3_conv1x1_conv1x1447_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(i_arrayidx39_3_conv1x1_conv1x1447_trunc_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_syncbuf_output_im_sync_buffer72_conv1x1(BITJOIN,112)
    bubble_join_i_syncbuf_output_im_sync_buffer72_conv1x1_q <= i_syncbuf_output_im_sync_buffer72_conv1x1_out_buffer_out;

    -- bubble_select_i_syncbuf_output_im_sync_buffer72_conv1x1(BITSELECT,113)
    bubble_select_i_syncbuf_output_im_sync_buffer72_conv1x1_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_output_im_sync_buffer72_conv1x1_q(63 downto 0));

    -- i_arrayidx39_3_conv1x1_conv1x1447_add_x(ADD,19)@5
    i_arrayidx39_3_conv1x1_conv1x1447_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_output_im_sync_buffer72_conv1x1_b);
    i_arrayidx39_3_conv1x1_conv1x1447_add_x_b <= STD_LOGIC_VECTOR("0" & redist11_i_arrayidx39_3_conv1x1_conv1x1447_trunc_sel_x_b_1_0_q);
    i_arrayidx39_3_conv1x1_conv1x1447_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx39_3_conv1x1_conv1x1447_add_x_a) + UNSIGNED(i_arrayidx39_3_conv1x1_conv1x1447_add_x_b));
    i_arrayidx39_3_conv1x1_conv1x1447_add_x_q <= i_arrayidx39_3_conv1x1_conv1x1447_add_x_o(64 downto 0);

    -- i_arrayidx39_3_conv1x1_conv1x1447_dupName_0_trunc_sel_x(BITSELECT,13)@5
    i_arrayidx39_3_conv1x1_conv1x1447_dupName_0_trunc_sel_x_b <= i_arrayidx39_3_conv1x1_conv1x1447_add_x_q(63 downto 0);

    -- i_store_unnamed_conv1x115_conv1x1(BLACKBOX,36)@5
    -- in in_i_stall@20000000
    -- out out_lsu_unnamed_conv1x115_o_active@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@49
    -- out out_unnamed_conv1x115_avm_address@20000000
    -- out out_unnamed_conv1x115_avm_burstcount@20000000
    -- out out_unnamed_conv1x115_avm_byteenable@20000000
    -- out out_unnamed_conv1x115_avm_enable@20000000
    -- out out_unnamed_conv1x115_avm_read@20000000
    -- out out_unnamed_conv1x115_avm_write@20000000
    -- out out_unnamed_conv1x115_avm_writedata@20000000
    thei_store_unnamed_conv1x115_conv1x1 : i_store_unnamed_conv1x115_conv1x1448
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx39_3_conv1x1_conv1x1447_dupName_0_trunc_sel_x_b,
        in_i_predicate => redist2_stall_entry_o8_5_4_q,
        in_i_stall => SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_backStall,
        in_i_valid => SE_out_i_syncbuf_output_im_sync_buffer72_conv1x1_V0,
        in_i_writedata => bubble_select_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_b,
        in_unnamed_conv1x115_avm_readdata => in_unnamed_conv1x115_avm_readdata,
        in_unnamed_conv1x115_avm_readdatavalid => in_unnamed_conv1x115_avm_readdatavalid,
        in_unnamed_conv1x115_avm_waitrequest => in_unnamed_conv1x115_avm_waitrequest,
        in_unnamed_conv1x115_avm_writeack => in_unnamed_conv1x115_avm_writeack,
        out_lsu_unnamed_conv1x115_o_active => i_store_unnamed_conv1x115_conv1x1_out_lsu_unnamed_conv1x115_o_active,
        out_o_stall => i_store_unnamed_conv1x115_conv1x1_out_o_stall,
        out_o_valid => i_store_unnamed_conv1x115_conv1x1_out_o_valid,
        out_unnamed_conv1x115_avm_address => i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_address,
        out_unnamed_conv1x115_avm_burstcount => i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_burstcount,
        out_unnamed_conv1x115_avm_byteenable => i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_byteenable,
        out_unnamed_conv1x115_avm_enable => i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_enable,
        out_unnamed_conv1x115_avm_read => i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_read,
        out_unnamed_conv1x115_avm_write => i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_write,
        out_unnamed_conv1x115_avm_writedata => i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_lsu_unnamed_conv1x115_o_active <= i_store_unnamed_conv1x115_conv1x1_out_lsu_unnamed_conv1x115_o_active;

    -- bubble_join_redist8_stall_entry_o16_49_fifo(BITJOIN,132)
    bubble_join_redist8_stall_entry_o16_49_fifo_q <= redist8_stall_entry_o16_49_fifo_data_out;

    -- bubble_select_redist8_stall_entry_o16_49_fifo(BITSELECT,133)
    bubble_select_redist8_stall_entry_o16_49_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist8_stall_entry_o16_49_fifo_q(0 downto 0));

    -- bubble_join_redist7_stall_entry_o15_49_fifo(BITJOIN,129)
    bubble_join_redist7_stall_entry_o15_49_fifo_q <= redist7_stall_entry_o15_49_fifo_data_out;

    -- bubble_select_redist7_stall_entry_o15_49_fifo(BITSELECT,130)
    bubble_select_redist7_stall_entry_o15_49_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist7_stall_entry_o15_49_fifo_q(31 downto 0));

    -- bubble_join_redist6_stall_entry_o14_49_fifo(BITJOIN,126)
    bubble_join_redist6_stall_entry_o14_49_fifo_q <= redist6_stall_entry_o14_49_fifo_data_out;

    -- bubble_select_redist6_stall_entry_o14_49_fifo(BITSELECT,127)
    bubble_select_redist6_stall_entry_o14_49_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist6_stall_entry_o14_49_fifo_q(31 downto 0));

    -- bubble_join_redist4_stall_entry_o12_49_fifo(BITJOIN,123)
    bubble_join_redist4_stall_entry_o12_49_fifo_q <= redist4_stall_entry_o12_49_fifo_data_out;

    -- bubble_select_redist4_stall_entry_o12_49_fifo(BITSELECT,124)
    bubble_select_redist4_stall_entry_o12_49_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist4_stall_entry_o12_49_fifo_q(63 downto 0));

    -- bubble_join_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo(BITJOIN,138)
    bubble_join_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_q <= redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_data_out;

    -- bubble_select_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo(BITSELECT,139)
    bubble_select_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_q(0 downto 0));

    -- bubble_join_redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo(BITJOIN,135)
    bubble_join_redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_q <= redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_data_out;

    -- bubble_select_redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo(BITSELECT,136)
    bubble_select_redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_q(31 downto 0));

    -- bubble_join_redist1_stall_entry_o6_49_fifo(BITJOIN,120)
    bubble_join_redist1_stall_entry_o6_49_fifo_q <= redist1_stall_entry_o6_49_fifo_data_out;

    -- bubble_select_redist1_stall_entry_o6_49_fifo(BITSELECT,121)
    bubble_select_redist1_stall_entry_o6_49_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_stall_entry_o6_49_fifo_q(63 downto 0));

    -- dupName_0_sync_out_x(GPOUT,9)@49
    out_c0_exe19 <= bubble_select_redist1_stall_entry_o6_49_fifo_b;
    out_c0_exe2295 <= bubble_select_redist9_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_2_44_fifo_b;
    out_c0_exe3296 <= bubble_select_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_b;
    out_c1_exe110 <= bubble_select_redist4_stall_entry_o12_49_fifo_b;
    out_c2_exe119 <= bubble_select_redist6_stall_entry_o14_49_fifo_b;
    out_c3_exe136 <= bubble_select_redist7_stall_entry_o15_49_fifo_b;
    out_c3_exe244 <= bubble_select_redist8_stall_entry_o16_49_fifo_b;
    out_valid_out <= SE_out_redist10_i_sfc_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1_aunroll_x_out_c0_exit293_3_44_fifo_V0;

    -- ext_sig_sync_out(GPOUT,31)
    out_unnamed_conv1x115_avm_address <= i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_address;
    out_unnamed_conv1x115_avm_enable <= i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_enable;
    out_unnamed_conv1x115_avm_read <= i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_read;
    out_unnamed_conv1x115_avm_write <= i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_write;
    out_unnamed_conv1x115_avm_writedata <= i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_writedata;
    out_unnamed_conv1x115_avm_byteenable <= i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_byteenable;
    out_unnamed_conv1x115_avm_burstcount <= i_store_unnamed_conv1x115_conv1x1_out_unnamed_conv1x115_avm_burstcount;

    -- sync_out(GPOUT,45)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
