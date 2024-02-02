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

-- VHDL created from bb_pool_B3_stall_region
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

entity bb_pool_B3_stall_region is
    port (
        out_lsu_unnamed_pool5_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        in_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe11329 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe13 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe24 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe39 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe412 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe114 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe14133 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe117 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp621 : in std_logic_vector(0 downto 0);  -- ufix1
        in_col_1727 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_0925 : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp_222 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_unnamed_pool4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe13 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe24 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe39 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe412 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe114 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe117 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp621 : out std_logic_vector(0 downto 0);  -- ufix1
        out_col_17_LC_InnerPHI : out std_logic_vector(31 downto 0);  -- ufix32
        out_for_end47_loopexit_loopexit_LC_COND : out std_logic_vector(0 downto 0);  -- ufix1
        out_row_09_LC_OuterPHI : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp_222 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_out_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_pool5_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_pool5_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool5_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_pool5_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool5_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool5_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool5_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_pool5_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_pool5_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_pool_B3_stall_region;

architecture normal of bb_pool_B3_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_store_unnamed_pool5_pool63 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_pool5_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_pool5_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool5_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_out_data_sync_buffer_pool60 is
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


    component i_syncbuf_out_size_sync_buffer8_pool65 is
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


    component i_syncbuf_out_size_sync_buffer9_pool69 is
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
    signal bgTrunc_i_add39_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_inc43_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_inc46_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx41_pool_pool62_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx41_pool_pool62_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx41_pool_pool62_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx41_pool_pool62_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx41_pool_pool62_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx41_pool_pool62_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx41_pool_pool62_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx41_pool_pool62_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom40_pool_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add39_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add39_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add39_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add39_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_col_17_lc_innerphi_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_col_17_lc_innerphi_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_exitcond10_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond10_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond11_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond11_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_for_end47_loopexit_loopexit_lc_cond_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc43_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc43_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc43_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc43_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc46_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc46_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc46_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc46_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_row_09_lc_outerphi_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_row_09_lc_outerphi_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_select12_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select12_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_pool5_pool_out_lsu_unnamed_pool5_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_pool5_pool_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_pool5_pool_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_syncbuf_out_data_sync_buffer_pool_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_out_data_sync_buffer_pool_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_out_data_sync_buffer_pool_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_out_size_sync_buffer8_pool_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_out_size_sync_buffer8_pool_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_out_size_sync_buffer8_pool_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_out_size_sync_buffer9_pool_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_out_size_sync_buffer9_pool_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_out_size_sync_buffer9_pool_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_pool68_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_pool72_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_stall_entry_o4_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_stall_entry_o5_5_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_stall_entry_o5_5_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_stall_entry_o5_5_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_stall_entry_o5_5_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_stall_entry_o5_5_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_stall_entry_o6_3_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o6_3_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_stall_entry_o6_3_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o6_5_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_stall_entry_o6_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o7_5_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o7_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o7_5_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o7_5_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_stall_entry_o7_5_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_stall_entry_o8_5_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_stall_entry_o8_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_stall_entry_o8_5_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_stall_entry_o8_5_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_stall_entry_o8_5_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_stall_entry_o9_5_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_stall_entry_o9_5_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_stall_entry_o9_5_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_stall_entry_o9_5_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_stall_entry_o9_5_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_stall_entry_o10_3_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_stall_entry_o10_3_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_stall_entry_o10_3_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_stall_entry_o11_5_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_stall_entry_o11_5_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_stall_entry_o11_5_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_stall_entry_o11_5_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_stall_entry_o11_5_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_stall_entry_o12_5_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o12_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o12_5_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o12_5_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_stall_entry_o12_5_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_stall_entry_o13_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_stall_entry_o13_2_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_stall_entry_o14_3_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_stall_entry_o14_3_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_stall_entry_o14_3_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_stall_entry_o14_4_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_stall_entry_o15_3_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_stall_entry_o15_3_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_stall_entry_o15_3_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_stall_entry_o15_5_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_stall_entry_o15_5_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_stall_entry_o16_3_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_stall_entry_o16_3_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_stall_entry_o16_3_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_stall_entry_o16_4_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_stall_entry_o16_5_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_unnamed_pool68_q_1_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_i_arrayidx41_pool_pool62_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist21_bgTrunc_i_inc46_pool_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist22_bgTrunc_i_inc43_pool_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist23_bgTrunc_i_inc43_pool_sel_x_b_3_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist23_bgTrunc_i_inc43_pool_sel_x_b_3_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist24_bgTrunc_i_add39_pool_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_out_data_sync_buffer_pool_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_out_data_sync_buffer_pool_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_syncbuf_out_size_sync_buffer8_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_out_size_sync_buffer8_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_out_size_sync_buffer9_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_out_size_sync_buffer9_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (260 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_h : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_i : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_j : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_k : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_l : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_m : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_n : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond10_pool_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond10_pool_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond10_pool_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond10_pool_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond10_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond10_pool_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond11_pool_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond11_pool_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond11_pool_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond11_pool_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond11_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond11_pool_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_row_09_lc_outerphi_pool_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_row_09_lc_outerphi_pool_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_row_09_lc_outerphi_pool_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_row_09_lc_outerphi_pool_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_row_09_lc_outerphi_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_row_09_lc_outerphi_pool_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_data_sync_buffer_pool_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_data_sync_buffer_pool_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_data_sync_buffer_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_data_sync_buffer_pool_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer8_pool_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer9_pool_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool68_V1 : STD_LOGIC_VECTOR (0 downto 0);
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
    signal SE_stall_entry_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_stall_entry_o4_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_2_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_R_v_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_s_tv_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_3_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_4_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_4_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_4_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_4_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_stall_entry_o5_5_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_i_unnamed_pool68_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_i_unnamed_pool68_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_i_unnamed_pool68_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_i_unnamed_pool68_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_i_unnamed_pool68_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist19_i_unnamed_pool68_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_2_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_3_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
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
    signal bubble_out_stall_entry_3_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_3_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_3_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_3_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_3_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_3_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_3_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_3_reg_stall_out_bitsignaltemp : std_logic;
    signal SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data4 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data5 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data6 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data8 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data10 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_r_data12 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D4 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D5 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D6 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D8 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D10 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_1_D12 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data4 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data5 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data6 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data8 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data11 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_r_data12 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D4 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D5 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D6 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D8 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D11 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_2_D12 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data4 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data5 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data7 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data8 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data10 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_r_data11 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D4 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D5 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D7 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D8 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D10 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_3_D11 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond11_pool_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond11_pool_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond11_pool_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond11_pool_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond11_pool_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond11_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond11_pool_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond11_pool_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond11_pool_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond10_pool_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond10_pool_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond10_pool_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond10_pool_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond10_pool_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond10_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond10_pool_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond10_pool_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond10_pool_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist19_i_unnamed_pool68_q_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist19_i_unnamed_pool68_q_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist19_i_unnamed_pool68_q_1_0_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist19_i_unnamed_pool68_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist19_i_unnamed_pool68_q_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist19_i_unnamed_pool68_q_1_0_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_data2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_data3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_data4 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_data5 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_data6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_data7 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_data8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_r_data9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_D2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_D3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_D4 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_D5 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_D6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_D7 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_D8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_stall_entry_o5_5_4_D9 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_r_data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_row_09_lc_outerphi_pool_D2 : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- bubble_join_stall_entry(BITJOIN,193)
    bubble_join_stall_entry_q <= in_unnamed_pool4 & in_tmp_222 & in_row_0925 & in_col_1727 & in_cmp621 & in_c2_exe117 & in_c1_exe14133 & in_c1_exe114 & in_c0_exe412 & in_c0_exe39 & in_c0_exe24 & in_c0_exe13 & in_c0_exe11329;

    -- bubble_select_stall_entry(BITSELECT,194)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(63 downto 32));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(64 downto 64));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(65 downto 65));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(66 downto 66));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(98 downto 67));
    bubble_select_stall_entry_h <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(130 downto 99));
    bubble_select_stall_entry_i <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(162 downto 131));
    bubble_select_stall_entry_j <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(163 downto 163));
    bubble_select_stall_entry_k <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(195 downto 164));
    bubble_select_stall_entry_l <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(227 downto 196));
    bubble_select_stall_entry_m <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(259 downto 228));
    bubble_select_stall_entry_n <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(260 downto 260));

    -- redist0_stall_entry_o4_1_0(REG,118)
    redist0_stall_entry_o4_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_stall_entry_o4_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist0_stall_entry_o4_1_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_add39_pool(ADD,37)@1
    i_add39_pool_a <= STD_LOGIC_VECTOR("0" & redist10_stall_entry_o13_1_0_q);
    i_add39_pool_b <= STD_LOGIC_VECTOR("0" & redist0_stall_entry_o4_1_0_q);
    i_add39_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add39_pool_a) + UNSIGNED(i_add39_pool_b));
    i_add39_pool_q <= i_add39_pool_o(32 downto 0);

    -- bgTrunc_i_add39_pool_sel_x(BITSELECT,2)@1
    bgTrunc_i_add39_pool_sel_x_b <= i_add39_pool_q(31 downto 0);

    -- redist16_stall_entry_o16_3_0(REG,168)
    redist16_stall_entry_o16_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_stall_entry_o16_3_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist16_stall_entry_o16_3_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_n);
            END IF;
        END IF;
    END PROCESS;

    -- redist14_stall_entry_o15_3_0(REG,163)
    redist14_stall_entry_o15_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_stall_entry_o15_3_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist14_stall_entry_o15_3_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_m);
            END IF;
        END IF;
    END PROCESS;

    -- redist12_stall_entry_o14_3_0(REG,159)
    redist12_stall_entry_o14_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_stall_entry_o14_3_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist12_stall_entry_o14_3_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_l);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_stall_entry_o13_1_0(REG,157)
    redist10_stall_entry_o13_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_stall_entry_o13_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist10_stall_entry_o13_1_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_k);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_stall_entry_o12_5_0(REG,152)
    redist9_stall_entry_o12_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_5_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist9_stall_entry_o12_5_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_j);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_stall_entry_o11_5_0(REG,147)
    redist8_stall_entry_o11_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_stall_entry_o11_5_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist8_stall_entry_o11_5_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_i);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_stall_entry_o10_3_0(REG,144)
    redist7_stall_entry_o10_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_stall_entry_o10_3_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist7_stall_entry_o10_3_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_h);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_stall_entry_o9_5_0(REG,139)
    redist6_stall_entry_o9_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_stall_entry_o9_5_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist6_stall_entry_o9_5_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_g);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o8_5_0(REG,134)
    redist5_stall_entry_o8_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o8_5_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist5_stall_entry_o8_5_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_f);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_stall_entry_o7_5_0(REG,129)
    redist4_stall_entry_o7_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_stall_entry_o7_5_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist4_stall_entry_o7_5_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_e);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_stall_entry_o6_3_0(REG,124)
    redist2_stall_entry_o6_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_stall_entry_o6_3_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist2_stall_entry_o6_3_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_d);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_stall_entry_o5_5_0(REG,119)
    redist1_stall_entry_o5_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_stall_entry_o5_5_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "1") THEN
                redist1_stall_entry_o5_5_0_q <= STD_LOGIC_VECTOR(bubble_select_stall_entry_c);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist1_stall_entry_o5_5_1(STALLENABLE,240)
    -- Valid signal propagation
    SE_redist1_stall_entry_o5_5_1_V0 <= SE_redist1_stall_entry_o5_5_1_R_v_0;
    -- Stall signal propagation
    SE_redist1_stall_entry_o5_5_1_s_tv_0 <= SR_SE_redist1_stall_entry_o5_5_2_backStall and SE_redist1_stall_entry_o5_5_1_R_v_0;
    -- Backward Enable generation
    SE_redist1_stall_entry_o5_5_1_backEN <= not (SE_redist1_stall_entry_o5_5_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_stall_entry_o5_5_1_v_s_0 <= SE_redist1_stall_entry_o5_5_1_backEN and SR_SE_redist1_stall_entry_o5_5_1_V;
    -- Backward Stall generation
    SE_redist1_stall_entry_o5_5_1_backStall <= not (SE_redist1_stall_entry_o5_5_1_backEN);
    SE_redist1_stall_entry_o5_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_stall_entry_o5_5_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "0") THEN
                SE_redist1_stall_entry_o5_5_1_R_v_0 <= SE_redist1_stall_entry_o5_5_1_R_v_0 and SE_redist1_stall_entry_o5_5_1_s_tv_0;
            ELSE
                SE_redist1_stall_entry_o5_5_1_R_v_0 <= SE_redist1_stall_entry_o5_5_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist1_stall_entry_o5_5_1(STALLREG,334)
    SR_SE_redist1_stall_entry_o5_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist1_stall_entry_o5_5_1_r_valid <= (others => '0');
            SR_SE_redist1_stall_entry_o5_5_1_r_data0 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data1 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data2 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data3 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data4 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data5 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data6 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data7 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data8 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data9 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data10 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data11 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_1_r_data12 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist1_stall_entry_o5_5_1_r_valid <= SE_redist1_stall_entry_o5_5_1_backStall and (SR_SE_redist1_stall_entry_o5_5_1_r_valid or SR_SE_redist1_stall_entry_o5_5_1_i_valid);

            IF (SR_SE_redist1_stall_entry_o5_5_1_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist1_stall_entry_o5_5_1_r_data0 <= STD_LOGIC_VECTOR(redist1_stall_entry_o5_5_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data1 <= STD_LOGIC_VECTOR(redist2_stall_entry_o6_3_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data2 <= STD_LOGIC_VECTOR(redist4_stall_entry_o7_5_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data3 <= STD_LOGIC_VECTOR(redist5_stall_entry_o8_5_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data4 <= STD_LOGIC_VECTOR(redist6_stall_entry_o9_5_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data5 <= STD_LOGIC_VECTOR(redist7_stall_entry_o10_3_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data6 <= STD_LOGIC_VECTOR(redist8_stall_entry_o11_5_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data7 <= STD_LOGIC_VECTOR(redist9_stall_entry_o12_5_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data8 <= STD_LOGIC_VECTOR(redist10_stall_entry_o13_1_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data9 <= STD_LOGIC_VECTOR(redist12_stall_entry_o14_3_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data10 <= STD_LOGIC_VECTOR(redist14_stall_entry_o15_3_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data11 <= STD_LOGIC_VECTOR(redist16_stall_entry_o16_3_0_q);
                SR_SE_redist1_stall_entry_o5_5_1_r_data12 <= STD_LOGIC_VECTOR(bgTrunc_i_add39_pool_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist1_stall_entry_o5_5_1_i_valid <= SE_redist0_stall_entry_o4_1_0_V0;
    -- Stall signal propagation
    SR_SE_redist1_stall_entry_o5_5_1_backStall <= SR_SE_redist1_stall_entry_o5_5_1_r_valid or not (SR_SE_redist1_stall_entry_o5_5_1_i_valid);

    -- Valid
    SR_SE_redist1_stall_entry_o5_5_1_V <= SR_SE_redist1_stall_entry_o5_5_1_r_valid WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE SR_SE_redist1_stall_entry_o5_5_1_i_valid;

    -- Data0
    SR_SE_redist1_stall_entry_o5_5_1_D0 <= SR_SE_redist1_stall_entry_o5_5_1_r_data0 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist1_stall_entry_o5_5_0_q;
    -- Data1
    SR_SE_redist1_stall_entry_o5_5_1_D1 <= SR_SE_redist1_stall_entry_o5_5_1_r_data1 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist2_stall_entry_o6_3_0_q;
    -- Data2
    SR_SE_redist1_stall_entry_o5_5_1_D2 <= SR_SE_redist1_stall_entry_o5_5_1_r_data2 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist4_stall_entry_o7_5_0_q;
    -- Data3
    SR_SE_redist1_stall_entry_o5_5_1_D3 <= SR_SE_redist1_stall_entry_o5_5_1_r_data3 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist5_stall_entry_o8_5_0_q;
    -- Data4
    SR_SE_redist1_stall_entry_o5_5_1_D4 <= SR_SE_redist1_stall_entry_o5_5_1_r_data4 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist6_stall_entry_o9_5_0_q;
    -- Data5
    SR_SE_redist1_stall_entry_o5_5_1_D5 <= SR_SE_redist1_stall_entry_o5_5_1_r_data5 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist7_stall_entry_o10_3_0_q;
    -- Data6
    SR_SE_redist1_stall_entry_o5_5_1_D6 <= SR_SE_redist1_stall_entry_o5_5_1_r_data6 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist8_stall_entry_o11_5_0_q;
    -- Data7
    SR_SE_redist1_stall_entry_o5_5_1_D7 <= SR_SE_redist1_stall_entry_o5_5_1_r_data7 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist9_stall_entry_o12_5_0_q;
    -- Data8
    SR_SE_redist1_stall_entry_o5_5_1_D8 <= SR_SE_redist1_stall_entry_o5_5_1_r_data8 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist10_stall_entry_o13_1_0_q;
    -- Data9
    SR_SE_redist1_stall_entry_o5_5_1_D9 <= SR_SE_redist1_stall_entry_o5_5_1_r_data9 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist12_stall_entry_o14_3_0_q;
    -- Data10
    SR_SE_redist1_stall_entry_o5_5_1_D10 <= SR_SE_redist1_stall_entry_o5_5_1_r_data10 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist14_stall_entry_o15_3_0_q;
    -- Data11
    SR_SE_redist1_stall_entry_o5_5_1_D11 <= SR_SE_redist1_stall_entry_o5_5_1_r_data11 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE redist16_stall_entry_o16_3_0_q;
    -- Data12
    SR_SE_redist1_stall_entry_o5_5_1_D12 <= SR_SE_redist1_stall_entry_o5_5_1_r_data12 WHEN SR_SE_redist1_stall_entry_o5_5_1_r_valid = "1" ELSE bgTrunc_i_add39_pool_sel_x_b;

    -- SE_redist0_stall_entry_o4_1_0(STALLENABLE,238)
    -- Valid signal propagation
    SE_redist0_stall_entry_o4_1_0_V0 <= SE_redist0_stall_entry_o4_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist0_stall_entry_o4_1_0_s_tv_0 <= SR_SE_redist1_stall_entry_o5_5_1_backStall and SE_redist0_stall_entry_o4_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist0_stall_entry_o4_1_0_backEN <= not (SE_redist0_stall_entry_o4_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_stall_entry_o4_1_0_v_s_0 <= SE_redist0_stall_entry_o4_1_0_backEN and SE_stall_entry_V3;
    -- Backward Stall generation
    SE_redist0_stall_entry_o4_1_0_backStall <= not (SE_redist0_stall_entry_o4_1_0_v_s_0);
    SE_redist0_stall_entry_o4_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_stall_entry_o4_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_stall_entry_o4_1_0_backEN = "0") THEN
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_R_v_0 and SE_redist0_stall_entry_o4_1_0_s_tv_0;
            ELSE
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_i_syncbuf_out_size_sync_buffer9_pool(BITJOIN,189)
    bubble_join_i_syncbuf_out_size_sync_buffer9_pool_q <= i_syncbuf_out_size_sync_buffer9_pool_out_buffer_out;

    -- bubble_select_i_syncbuf_out_size_sync_buffer9_pool(BITSELECT,190)
    bubble_select_i_syncbuf_out_size_sync_buffer9_pool_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_out_size_sync_buffer9_pool_q(31 downto 0));

    -- redist21_bgTrunc_i_inc46_pool_sel_x_b_1_0(REG,175)
    redist21_bgTrunc_i_inc46_pool_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist21_bgTrunc_i_inc46_pool_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist21_bgTrunc_i_inc46_pool_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D11);
            END IF;
        END IF;
    END PROCESS;

    -- redist17_stall_entry_o16_4_0(REG,171)
    redist17_stall_entry_o16_4_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist17_stall_entry_o16_4_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist17_stall_entry_o16_4_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D9);
            END IF;
        END IF;
    END PROCESS;

    -- i_exitcond10_pool(LOGICAL,39)@3 + 1
    i_exitcond10_pool_qi <= "1" WHEN SR_SE_i_exitcond10_pool_D0 = SR_SE_i_exitcond10_pool_D1 ELSE "0";
    i_exitcond10_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond10_pool_qi, xout => i_exitcond10_pool_q, ena => SE_i_exitcond10_pool_backEN(0), clk => clock, aclr => resetn );

    -- i_unnamed_pool68(LOGICAL,52)@4
    i_unnamed_pool68_q <= i_exitcond10_pool_q or redist17_stall_entry_o16_4_0_q;

    -- SE_redist19_i_unnamed_pool68_q_1_0(STALLENABLE,293)
    -- Valid signal propagation
    SE_redist19_i_unnamed_pool68_q_1_0_V0 <= SE_redist19_i_unnamed_pool68_q_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist19_i_unnamed_pool68_q_1_0_s_tv_0 <= SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_backStall and SE_redist19_i_unnamed_pool68_q_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist19_i_unnamed_pool68_q_1_0_backEN <= not (SE_redist19_i_unnamed_pool68_q_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist19_i_unnamed_pool68_q_1_0_v_s_0 <= SE_redist19_i_unnamed_pool68_q_1_0_backEN and SR_SE_redist19_i_unnamed_pool68_q_1_0_V;
    -- Backward Stall generation
    SE_redist19_i_unnamed_pool68_q_1_0_backStall <= not (SE_redist19_i_unnamed_pool68_q_1_0_backEN);
    SE_redist19_i_unnamed_pool68_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist19_i_unnamed_pool68_q_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist19_i_unnamed_pool68_q_1_0_backEN = "0") THEN
                SE_redist19_i_unnamed_pool68_q_1_0_R_v_0 <= SE_redist19_i_unnamed_pool68_q_1_0_R_v_0 and SE_redist19_i_unnamed_pool68_q_1_0_s_tv_0;
            ELSE
                SE_redist19_i_unnamed_pool68_q_1_0_R_v_0 <= SE_redist19_i_unnamed_pool68_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist19_i_unnamed_pool68_q_1_0(STALLREG,339)
    SR_SE_redist19_i_unnamed_pool68_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist19_i_unnamed_pool68_q_1_0_r_valid <= (others => '0');
            SR_SE_redist19_i_unnamed_pool68_q_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist19_i_unnamed_pool68_q_1_0_r_valid <= SE_redist19_i_unnamed_pool68_q_1_0_backStall and (SR_SE_redist19_i_unnamed_pool68_q_1_0_r_valid or SR_SE_redist19_i_unnamed_pool68_q_1_0_i_valid);

            IF (SR_SE_redist19_i_unnamed_pool68_q_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist19_i_unnamed_pool68_q_1_0_r_data0 <= STD_LOGIC_VECTOR(i_unnamed_pool68_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist19_i_unnamed_pool68_q_1_0_i_valid <= SE_i_unnamed_pool68_V1;
    -- Stall signal propagation
    SR_SE_redist19_i_unnamed_pool68_q_1_0_backStall <= SR_SE_redist19_i_unnamed_pool68_q_1_0_r_valid or not (SR_SE_redist19_i_unnamed_pool68_q_1_0_i_valid);

    -- Valid
    SR_SE_redist19_i_unnamed_pool68_q_1_0_V <= SR_SE_redist19_i_unnamed_pool68_q_1_0_r_valid WHEN SR_SE_redist19_i_unnamed_pool68_q_1_0_r_valid = "1" ELSE SR_SE_redist19_i_unnamed_pool68_q_1_0_i_valid;

    SR_SE_redist19_i_unnamed_pool68_q_1_0_D0 <= SR_SE_redist19_i_unnamed_pool68_q_1_0_r_data0 WHEN SR_SE_redist19_i_unnamed_pool68_q_1_0_r_valid = "1" ELSE i_unnamed_pool68_q;

    -- SE_i_unnamed_pool68(STALLENABLE,223)
    SE_i_unnamed_pool68_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_unnamed_pool68_fromReg0 <= (others => '0');
            SE_i_unnamed_pool68_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_i_unnamed_pool68_fromReg0 <= SE_i_unnamed_pool68_toReg0;
            -- Succesor 1
            SE_i_unnamed_pool68_fromReg1 <= SE_i_unnamed_pool68_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_i_unnamed_pool68_consumed0 <= (not (SR_SE_i_row_09_lc_outerphi_pool_backStall) and SE_i_unnamed_pool68_wireValid) or SE_i_unnamed_pool68_fromReg0;
    SE_i_unnamed_pool68_consumed1 <= (not (SR_SE_redist19_i_unnamed_pool68_q_1_0_backStall) and SE_i_unnamed_pool68_wireValid) or SE_i_unnamed_pool68_fromReg1;
    -- Consuming
    SE_i_unnamed_pool68_StallValid <= SE_i_unnamed_pool68_backStall and SE_i_unnamed_pool68_wireValid;
    SE_i_unnamed_pool68_toReg0 <= SE_i_unnamed_pool68_StallValid and SE_i_unnamed_pool68_consumed0;
    SE_i_unnamed_pool68_toReg1 <= SE_i_unnamed_pool68_StallValid and SE_i_unnamed_pool68_consumed1;
    -- Backward Stall generation
    SE_i_unnamed_pool68_or0 <= SE_i_unnamed_pool68_consumed0;
    SE_i_unnamed_pool68_wireStall <= not (SE_i_unnamed_pool68_consumed1 and SE_i_unnamed_pool68_or0);
    SE_i_unnamed_pool68_backStall <= SE_i_unnamed_pool68_wireStall;
    -- Valid signal propagation
    SE_i_unnamed_pool68_V0 <= SE_i_unnamed_pool68_wireValid and not (SE_i_unnamed_pool68_fromReg0);
    SE_i_unnamed_pool68_V1 <= SE_i_unnamed_pool68_wireValid and not (SE_i_unnamed_pool68_fromReg1);
    -- Computing multiple Valid(s)
    SE_i_unnamed_pool68_and0 <= SE_i_exitcond10_pool_V0;
    SE_i_unnamed_pool68_wireValid <= SE_redist1_stall_entry_o5_5_3_V2 and SE_i_unnamed_pool68_and0;

    -- redist13_stall_entry_o14_4_0(REG,162)
    redist13_stall_entry_o14_4_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_stall_entry_o14_4_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist13_stall_entry_o14_4_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D7);
            END IF;
        END IF;
    END PROCESS;

    -- SE_i_row_09_lc_outerphi_pool(STALLENABLE,213)
    -- Valid signal propagation
    SE_i_row_09_lc_outerphi_pool_V0 <= SE_i_row_09_lc_outerphi_pool_R_v_0;
    -- Stall signal propagation
    SE_i_row_09_lc_outerphi_pool_s_tv_0 <= SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_backStall and SE_i_row_09_lc_outerphi_pool_R_v_0;
    -- Backward Enable generation
    SE_i_row_09_lc_outerphi_pool_backEN <= not (SE_i_row_09_lc_outerphi_pool_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_row_09_lc_outerphi_pool_v_s_0 <= SE_i_row_09_lc_outerphi_pool_backEN and SR_SE_i_row_09_lc_outerphi_pool_V;
    -- Backward Stall generation
    SE_i_row_09_lc_outerphi_pool_backStall <= not (SE_i_row_09_lc_outerphi_pool_backEN);
    SE_i_row_09_lc_outerphi_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_row_09_lc_outerphi_pool_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_row_09_lc_outerphi_pool_backEN = "0") THEN
                SE_i_row_09_lc_outerphi_pool_R_v_0 <= SE_i_row_09_lc_outerphi_pool_R_v_0 and SE_i_row_09_lc_outerphi_pool_s_tv_0;
            ELSE
                SE_i_row_09_lc_outerphi_pool_R_v_0 <= SE_i_row_09_lc_outerphi_pool_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_row_09_lc_outerphi_pool(STALLREG,341)
    SR_SE_i_row_09_lc_outerphi_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_row_09_lc_outerphi_pool_r_valid <= (others => '0');
            SR_SE_i_row_09_lc_outerphi_pool_r_data0 <= (others => '-');
            SR_SE_i_row_09_lc_outerphi_pool_r_data1 <= (others => '-');
            SR_SE_i_row_09_lc_outerphi_pool_r_data2 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_row_09_lc_outerphi_pool_r_valid <= SE_i_row_09_lc_outerphi_pool_backStall and (SR_SE_i_row_09_lc_outerphi_pool_r_valid or SR_SE_i_row_09_lc_outerphi_pool_i_valid);

            IF (SR_SE_i_row_09_lc_outerphi_pool_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_row_09_lc_outerphi_pool_r_data0 <= i_unnamed_pool68_q;
                SR_SE_i_row_09_lc_outerphi_pool_r_data1 <= redist13_stall_entry_o14_4_0_q;
                SR_SE_i_row_09_lc_outerphi_pool_r_data2 <= redist21_bgTrunc_i_inc46_pool_sel_x_b_1_0_q;
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_row_09_lc_outerphi_pool_and0 <= SE_i_unnamed_pool68_V0;
    SR_SE_i_row_09_lc_outerphi_pool_i_valid <= SE_redist1_stall_entry_o5_5_3_V1 and SR_SE_i_row_09_lc_outerphi_pool_and0;
    -- Stall signal propagation
    SR_SE_i_row_09_lc_outerphi_pool_backStall <= SR_SE_i_row_09_lc_outerphi_pool_r_valid or not (SR_SE_i_row_09_lc_outerphi_pool_i_valid);

    -- Valid
    SR_SE_i_row_09_lc_outerphi_pool_V <= SR_SE_i_row_09_lc_outerphi_pool_r_valid WHEN SR_SE_i_row_09_lc_outerphi_pool_r_valid = "1" ELSE SR_SE_i_row_09_lc_outerphi_pool_i_valid;

    -- Data0
    SR_SE_i_row_09_lc_outerphi_pool_D0 <= SR_SE_i_row_09_lc_outerphi_pool_r_data0 WHEN SR_SE_i_row_09_lc_outerphi_pool_r_valid = "1" ELSE i_unnamed_pool68_q;
    -- Data1
    SR_SE_i_row_09_lc_outerphi_pool_D1 <= SR_SE_i_row_09_lc_outerphi_pool_r_data1 WHEN SR_SE_i_row_09_lc_outerphi_pool_r_valid = "1" ELSE redist13_stall_entry_o14_4_0_q;
    -- Data2
    SR_SE_i_row_09_lc_outerphi_pool_D2 <= SR_SE_i_row_09_lc_outerphi_pool_r_data2 WHEN SR_SE_i_row_09_lc_outerphi_pool_r_valid = "1" ELSE redist21_bgTrunc_i_inc46_pool_sel_x_b_1_0_q;

    -- redist23_bgTrunc_i_inc43_pool_sel_x_b_3_0(REG,177)
    redist23_bgTrunc_i_inc43_pool_sel_x_b_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist23_bgTrunc_i_inc43_pool_sel_x_b_3_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist23_bgTrunc_i_inc43_pool_sel_x_b_3_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D10);
            END IF;
        END IF;
    END PROCESS;

    -- redist15_stall_entry_o15_5_0(REG,166)
    redist15_stall_entry_o15_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist15_stall_entry_o15_5_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist15_stall_entry_o15_5_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D8);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_stall_entry_o12_5_3(REG,155)
    redist9_stall_entry_o12_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_5_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist9_stall_entry_o12_5_3_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D6);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_stall_entry_o11_5_3(REG,150)
    redist8_stall_entry_o11_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_stall_entry_o11_5_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist8_stall_entry_o11_5_3_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D5);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_stall_entry_o9_5_3(REG,142)
    redist6_stall_entry_o9_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_stall_entry_o9_5_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist6_stall_entry_o9_5_3_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D4);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o8_5_3(REG,137)
    redist5_stall_entry_o8_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o8_5_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist5_stall_entry_o8_5_3_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D3);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_stall_entry_o7_5_3(REG,132)
    redist4_stall_entry_o7_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_stall_entry_o7_5_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist4_stall_entry_o7_5_3_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D2);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_stall_entry_o6_5_0(REG,127)
    redist3_stall_entry_o6_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_stall_entry_o6_5_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist3_stall_entry_o6_5_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_stall_entry_o5_5_3(REG,122)
    redist1_stall_entry_o5_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_stall_entry_o5_5_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "1") THEN
                redist1_stall_entry_o5_5_3_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_3_D0);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist1_stall_entry_o5_5_4(STALLENABLE,243)
    -- Valid signal propagation
    SE_redist1_stall_entry_o5_5_4_V0 <= SE_redist1_stall_entry_o5_5_4_R_v_0;
    -- Stall signal propagation
    SE_redist1_stall_entry_o5_5_4_s_tv_0 <= SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_backStall and SE_redist1_stall_entry_o5_5_4_R_v_0;
    -- Backward Enable generation
    SE_redist1_stall_entry_o5_5_4_backEN <= not (SE_redist1_stall_entry_o5_5_4_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_stall_entry_o5_5_4_v_s_0 <= SE_redist1_stall_entry_o5_5_4_backEN and SR_SE_redist1_stall_entry_o5_5_4_V;
    -- Backward Stall generation
    SE_redist1_stall_entry_o5_5_4_backStall <= not (SE_redist1_stall_entry_o5_5_4_backEN);
    SE_redist1_stall_entry_o5_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_stall_entry_o5_5_4_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "0") THEN
                SE_redist1_stall_entry_o5_5_4_R_v_0 <= SE_redist1_stall_entry_o5_5_4_R_v_0 and SE_redist1_stall_entry_o5_5_4_s_tv_0;
            ELSE
                SE_redist1_stall_entry_o5_5_4_R_v_0 <= SE_redist1_stall_entry_o5_5_4_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist1_stall_entry_o5_5_4(STALLREG,340)
    SR_SE_redist1_stall_entry_o5_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist1_stall_entry_o5_5_4_r_valid <= (others => '0');
            SR_SE_redist1_stall_entry_o5_5_4_r_data0 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_4_r_data1 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_4_r_data2 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_4_r_data3 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_4_r_data4 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_4_r_data5 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_4_r_data6 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_4_r_data7 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_4_r_data8 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_4_r_data9 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist1_stall_entry_o5_5_4_r_valid <= SE_redist1_stall_entry_o5_5_4_backStall and (SR_SE_redist1_stall_entry_o5_5_4_r_valid or SR_SE_redist1_stall_entry_o5_5_4_i_valid);

            IF (SR_SE_redist1_stall_entry_o5_5_4_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist1_stall_entry_o5_5_4_r_data0 <= STD_LOGIC_VECTOR(redist1_stall_entry_o5_5_3_q);
                SR_SE_redist1_stall_entry_o5_5_4_r_data1 <= STD_LOGIC_VECTOR(redist3_stall_entry_o6_5_0_q);
                SR_SE_redist1_stall_entry_o5_5_4_r_data2 <= STD_LOGIC_VECTOR(redist4_stall_entry_o7_5_3_q);
                SR_SE_redist1_stall_entry_o5_5_4_r_data3 <= STD_LOGIC_VECTOR(redist5_stall_entry_o8_5_3_q);
                SR_SE_redist1_stall_entry_o5_5_4_r_data4 <= STD_LOGIC_VECTOR(redist6_stall_entry_o9_5_3_q);
                SR_SE_redist1_stall_entry_o5_5_4_r_data5 <= STD_LOGIC_VECTOR(redist8_stall_entry_o11_5_3_q);
                SR_SE_redist1_stall_entry_o5_5_4_r_data6 <= STD_LOGIC_VECTOR(redist9_stall_entry_o12_5_3_q);
                SR_SE_redist1_stall_entry_o5_5_4_r_data7 <= STD_LOGIC_VECTOR(redist15_stall_entry_o15_5_0_q);
                SR_SE_redist1_stall_entry_o5_5_4_r_data8 <= STD_LOGIC_VECTOR(redist17_stall_entry_o16_4_0_q);
                SR_SE_redist1_stall_entry_o5_5_4_r_data9 <= STD_LOGIC_VECTOR(redist23_bgTrunc_i_inc43_pool_sel_x_b_3_0_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist1_stall_entry_o5_5_4_i_valid <= SE_redist1_stall_entry_o5_5_3_V0;
    -- Stall signal propagation
    SR_SE_redist1_stall_entry_o5_5_4_backStall <= SR_SE_redist1_stall_entry_o5_5_4_r_valid or not (SR_SE_redist1_stall_entry_o5_5_4_i_valid);

    -- Valid
    SR_SE_redist1_stall_entry_o5_5_4_V <= SR_SE_redist1_stall_entry_o5_5_4_r_valid WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE SR_SE_redist1_stall_entry_o5_5_4_i_valid;

    -- Data0
    SR_SE_redist1_stall_entry_o5_5_4_D0 <= SR_SE_redist1_stall_entry_o5_5_4_r_data0 WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE redist1_stall_entry_o5_5_3_q;
    -- Data1
    SR_SE_redist1_stall_entry_o5_5_4_D1 <= SR_SE_redist1_stall_entry_o5_5_4_r_data1 WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE redist3_stall_entry_o6_5_0_q;
    -- Data2
    SR_SE_redist1_stall_entry_o5_5_4_D2 <= SR_SE_redist1_stall_entry_o5_5_4_r_data2 WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE redist4_stall_entry_o7_5_3_q;
    -- Data3
    SR_SE_redist1_stall_entry_o5_5_4_D3 <= SR_SE_redist1_stall_entry_o5_5_4_r_data3 WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE redist5_stall_entry_o8_5_3_q;
    -- Data4
    SR_SE_redist1_stall_entry_o5_5_4_D4 <= SR_SE_redist1_stall_entry_o5_5_4_r_data4 WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE redist6_stall_entry_o9_5_3_q;
    -- Data5
    SR_SE_redist1_stall_entry_o5_5_4_D5 <= SR_SE_redist1_stall_entry_o5_5_4_r_data5 WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE redist8_stall_entry_o11_5_3_q;
    -- Data6
    SR_SE_redist1_stall_entry_o5_5_4_D6 <= SR_SE_redist1_stall_entry_o5_5_4_r_data6 WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE redist9_stall_entry_o12_5_3_q;
    -- Data7
    SR_SE_redist1_stall_entry_o5_5_4_D7 <= SR_SE_redist1_stall_entry_o5_5_4_r_data7 WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE redist15_stall_entry_o15_5_0_q;
    -- Data8
    SR_SE_redist1_stall_entry_o5_5_4_D8 <= SR_SE_redist1_stall_entry_o5_5_4_r_data8 WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE redist17_stall_entry_o16_4_0_q;
    -- Data9
    SR_SE_redist1_stall_entry_o5_5_4_D9 <= SR_SE_redist1_stall_entry_o5_5_4_r_data9 WHEN SR_SE_redist1_stall_entry_o5_5_4_r_valid = "1" ELSE redist23_bgTrunc_i_inc43_pool_sel_x_b_3_0_q;

    -- SE_redist1_stall_entry_o5_5_3(STALLENABLE,242)
    -- Valid signal propagation
    SE_redist1_stall_entry_o5_5_3_V0 <= SE_redist1_stall_entry_o5_5_3_R_v_0;
    SE_redist1_stall_entry_o5_5_3_V1 <= SE_redist1_stall_entry_o5_5_3_R_v_1;
    SE_redist1_stall_entry_o5_5_3_V2 <= SE_redist1_stall_entry_o5_5_3_R_v_2;
    SE_redist1_stall_entry_o5_5_3_V3 <= SE_redist1_stall_entry_o5_5_3_R_v_3;
    -- Stall signal propagation
    SE_redist1_stall_entry_o5_5_3_s_tv_0 <= SR_SE_redist1_stall_entry_o5_5_4_backStall and SE_redist1_stall_entry_o5_5_3_R_v_0;
    SE_redist1_stall_entry_o5_5_3_s_tv_1 <= SR_SE_i_row_09_lc_outerphi_pool_backStall and SE_redist1_stall_entry_o5_5_3_R_v_1;
    SE_redist1_stall_entry_o5_5_3_s_tv_2 <= SE_i_unnamed_pool68_backStall and SE_redist1_stall_entry_o5_5_3_R_v_2;
    SE_redist1_stall_entry_o5_5_3_s_tv_3 <= SR_SE_i_exitcond11_pool_backStall and SE_redist1_stall_entry_o5_5_3_R_v_3;
    -- Backward Enable generation
    SE_redist1_stall_entry_o5_5_3_or0 <= SE_redist1_stall_entry_o5_5_3_s_tv_0;
    SE_redist1_stall_entry_o5_5_3_or1 <= SE_redist1_stall_entry_o5_5_3_s_tv_1 or SE_redist1_stall_entry_o5_5_3_or0;
    SE_redist1_stall_entry_o5_5_3_or2 <= SE_redist1_stall_entry_o5_5_3_s_tv_2 or SE_redist1_stall_entry_o5_5_3_or1;
    SE_redist1_stall_entry_o5_5_3_backEN <= not (SE_redist1_stall_entry_o5_5_3_s_tv_3 or SE_redist1_stall_entry_o5_5_3_or2);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_stall_entry_o5_5_3_v_s_0 <= SE_redist1_stall_entry_o5_5_3_backEN and SR_SE_redist1_stall_entry_o5_5_3_V;
    -- Backward Stall generation
    SE_redist1_stall_entry_o5_5_3_backStall <= not (SE_redist1_stall_entry_o5_5_3_backEN);
    SE_redist1_stall_entry_o5_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_stall_entry_o5_5_3_R_v_0 <= (others => '0');
            SE_redist1_stall_entry_o5_5_3_R_v_1 <= (others => '0');
            SE_redist1_stall_entry_o5_5_3_R_v_2 <= (others => '0');
            SE_redist1_stall_entry_o5_5_3_R_v_3 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_3_backEN = "0") THEN
                SE_redist1_stall_entry_o5_5_3_R_v_0 <= SE_redist1_stall_entry_o5_5_3_R_v_0 and SE_redist1_stall_entry_o5_5_3_s_tv_0;
            ELSE
                SE_redist1_stall_entry_o5_5_3_R_v_0 <= SE_redist1_stall_entry_o5_5_3_v_s_0;
            END IF;

            IF (SE_redist1_stall_entry_o5_5_3_backEN = "0") THEN
                SE_redist1_stall_entry_o5_5_3_R_v_1 <= SE_redist1_stall_entry_o5_5_3_R_v_1 and SE_redist1_stall_entry_o5_5_3_s_tv_1;
            ELSE
                SE_redist1_stall_entry_o5_5_3_R_v_1 <= SE_redist1_stall_entry_o5_5_3_v_s_0;
            END IF;

            IF (SE_redist1_stall_entry_o5_5_3_backEN = "0") THEN
                SE_redist1_stall_entry_o5_5_3_R_v_2 <= SE_redist1_stall_entry_o5_5_3_R_v_2 and SE_redist1_stall_entry_o5_5_3_s_tv_2;
            ELSE
                SE_redist1_stall_entry_o5_5_3_R_v_2 <= SE_redist1_stall_entry_o5_5_3_v_s_0;
            END IF;

            IF (SE_redist1_stall_entry_o5_5_3_backEN = "0") THEN
                SE_redist1_stall_entry_o5_5_3_R_v_3 <= SE_redist1_stall_entry_o5_5_3_R_v_3 and SE_redist1_stall_entry_o5_5_3_s_tv_3;
            ELSE
                SE_redist1_stall_entry_o5_5_3_R_v_3 <= SE_redist1_stall_entry_o5_5_3_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_exitcond11_pool(STALLENABLE,209)
    -- Valid signal propagation
    SE_i_exitcond11_pool_V0 <= SE_i_exitcond11_pool_R_v_0;
    -- Stall signal propagation
    SE_i_exitcond11_pool_s_tv_0 <= SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_backStall and SE_i_exitcond11_pool_R_v_0;
    -- Backward Enable generation
    SE_i_exitcond11_pool_backEN <= not (SE_i_exitcond11_pool_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_exitcond11_pool_v_s_0 <= SE_i_exitcond11_pool_backEN and SR_SE_i_exitcond11_pool_V;
    -- Backward Stall generation
    SE_i_exitcond11_pool_backStall <= not (SE_i_exitcond11_pool_backEN);
    SE_i_exitcond11_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_exitcond11_pool_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_exitcond11_pool_backEN = "0") THEN
                SE_i_exitcond11_pool_R_v_0 <= SE_i_exitcond11_pool_R_v_0 and SE_i_exitcond11_pool_s_tv_0;
            ELSE
                SE_i_exitcond11_pool_R_v_0 <= SE_i_exitcond11_pool_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_exitcond11_pool(STALLREG,337)
    SR_SE_i_exitcond11_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_exitcond11_pool_r_valid <= (others => '0');
            SR_SE_i_exitcond11_pool_r_data0 <= (others => '-');
            SR_SE_i_exitcond11_pool_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_exitcond11_pool_r_valid <= SE_i_exitcond11_pool_backStall and (SR_SE_i_exitcond11_pool_r_valid or SR_SE_i_exitcond11_pool_i_valid);

            IF (SR_SE_i_exitcond11_pool_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_exitcond11_pool_r_data0 <= STD_LOGIC_VECTOR(redist21_bgTrunc_i_inc46_pool_sel_x_b_1_0_q);
                SR_SE_i_exitcond11_pool_r_data1 <= STD_LOGIC_VECTOR(bubble_select_i_syncbuf_out_size_sync_buffer9_pool_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_exitcond11_pool_and0 <= SE_redist1_stall_entry_o5_5_3_V3;
    SR_SE_i_exitcond11_pool_i_valid <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_V1 and SR_SE_i_exitcond11_pool_and0;
    -- Stall signal propagation
    SR_SE_i_exitcond11_pool_backStall <= SR_SE_i_exitcond11_pool_r_valid or not (SR_SE_i_exitcond11_pool_i_valid);

    -- Valid
    SR_SE_i_exitcond11_pool_V <= SR_SE_i_exitcond11_pool_r_valid WHEN SR_SE_i_exitcond11_pool_r_valid = "1" ELSE SR_SE_i_exitcond11_pool_i_valid;

    -- Data0
    SR_SE_i_exitcond11_pool_D0 <= SR_SE_i_exitcond11_pool_r_data0 WHEN SR_SE_i_exitcond11_pool_r_valid = "1" ELSE redist21_bgTrunc_i_inc46_pool_sel_x_b_1_0_q;
    -- Data1
    SR_SE_i_exitcond11_pool_D1 <= SR_SE_i_exitcond11_pool_r_data1 WHEN SR_SE_i_exitcond11_pool_r_valid = "1" ELSE bubble_select_i_syncbuf_out_size_sync_buffer9_pool_b;

    -- bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg(STALLENABLE,329)
    -- Valid signal propagation
    bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_V0 <= bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_s_tv_0 <= SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_backStall and bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backEN <= not (bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_v_s_0 <= bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backEN and SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_V;
    -- Backward Stall generation
    bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backStall <= not (bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backEN);
    bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backEN = "0") THEN
                bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_R_v_0 <= bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_R_v_0 and bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_s_tv_0;
            ELSE
                bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_R_v_0 <= bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg(STALLREG,333)
    SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_r_valid <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_r_valid <= bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backStall and (SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_r_valid or SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_i_valid);

            IF (SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_r_valid = "0") THEN
                -- Data(s)
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_i_valid <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_V0;
    -- Stall signal propagation
    SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backStall <= SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_r_valid or not (SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_i_valid);

    -- Valid
    SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_V <= SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_r_valid WHEN SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_r_valid = "1" ELSE SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_i_valid;


    -- SE_out_i_syncbuf_out_size_sync_buffer9_pool(STALLENABLE,222)
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_syncbuf_out_size_sync_buffer9_pool_fromReg0 <= (others => '0');
            SE_out_i_syncbuf_out_size_sync_buffer9_pool_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_syncbuf_out_size_sync_buffer9_pool_fromReg0 <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_toReg0;
            -- Succesor 1
            SE_out_i_syncbuf_out_size_sync_buffer9_pool_fromReg1 <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_consumed0 <= (not (SR_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_backStall) and SE_out_i_syncbuf_out_size_sync_buffer9_pool_wireValid) or SE_out_i_syncbuf_out_size_sync_buffer9_pool_fromReg0;
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_consumed1 <= (not (SR_SE_i_exitcond11_pool_backStall) and SE_out_i_syncbuf_out_size_sync_buffer9_pool_wireValid) or SE_out_i_syncbuf_out_size_sync_buffer9_pool_fromReg1;
    -- Consuming
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_StallValid <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_backStall and SE_out_i_syncbuf_out_size_sync_buffer9_pool_wireValid;
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_toReg0 <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_StallValid and SE_out_i_syncbuf_out_size_sync_buffer9_pool_consumed0;
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_toReg1 <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_StallValid and SE_out_i_syncbuf_out_size_sync_buffer9_pool_consumed1;
    -- Backward Stall generation
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_or0 <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_consumed0;
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_wireStall <= not (SE_out_i_syncbuf_out_size_sync_buffer9_pool_consumed1 and SE_out_i_syncbuf_out_size_sync_buffer9_pool_or0);
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_backStall <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_wireStall;
    -- Valid signal propagation
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_V0 <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_wireValid and not (SE_out_i_syncbuf_out_size_sync_buffer9_pool_fromReg0);
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_V1 <= SE_out_i_syncbuf_out_size_sync_buffer9_pool_wireValid and not (SE_out_i_syncbuf_out_size_sync_buffer9_pool_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_out_size_sync_buffer9_pool_wireValid <= i_syncbuf_out_size_sync_buffer9_pool_out_valid_out;

    -- i_syncbuf_out_size_sync_buffer9_pool(BLACKBOX,51)@4
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_out_size_sync_buffer9_pool : i_syncbuf_out_size_sync_buffer9_pool69
    PORT MAP (
        in_buffer_in => in_out_size,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_out_size_sync_buffer9_pool_backStall,
        in_valid_in => SE_out_bubble_out_stall_entry_3_V0,
        out_buffer_out => i_syncbuf_out_size_sync_buffer9_pool_out_buffer_out,
        out_stall_out => i_syncbuf_out_size_sync_buffer9_pool_out_stall_out,
        out_valid_out => i_syncbuf_out_size_sync_buffer9_pool_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_stall_entry_3(STALLENABLE,327)
    -- Valid signal propagation
    SE_out_bubble_out_stall_entry_3_V0 <= SE_out_bubble_out_stall_entry_3_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_stall_entry_3_backStall <= i_syncbuf_out_size_sync_buffer9_pool_out_stall_out or not (SE_out_bubble_out_stall_entry_3_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_stall_entry_3_wireValid <= bubble_out_stall_entry_3_reg_valid_out;

    -- bubble_out_stall_entry_3_reg(STALLFIFO,332)
    bubble_out_stall_entry_3_reg_valid_in <= SE_stall_entry_V2;
    bubble_out_stall_entry_3_reg_stall_in <= SE_out_bubble_out_stall_entry_3_backStall;
    bubble_out_stall_entry_3_reg_valid_in_bitsignaltemp <= bubble_out_stall_entry_3_reg_valid_in(0);
    bubble_out_stall_entry_3_reg_stall_in_bitsignaltemp <= bubble_out_stall_entry_3_reg_stall_in(0);
    bubble_out_stall_entry_3_reg_valid_out(0) <= bubble_out_stall_entry_3_reg_valid_out_bitsignaltemp;
    bubble_out_stall_entry_3_reg_stall_out(0) <= bubble_out_stall_entry_3_reg_stall_out_bitsignaltemp;
    thebubble_out_stall_entry_3_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 5,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_stall_entry_3_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_stall_entry_3_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_stall_entry_3_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_stall_entry_3_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- i_syncbuf_out_data_sync_buffer_pool(BLACKBOX,49)@3
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_out_data_sync_buffer_pool : i_syncbuf_out_data_sync_buffer_pool60
    PORT MAP (
        in_buffer_in => in_out_data,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_out_data_sync_buffer_pool_backStall,
        in_valid_in => SE_out_bubble_out_stall_entry_1_V0,
        out_buffer_out => i_syncbuf_out_data_sync_buffer_pool_out_buffer_out,
        out_stall_out => i_syncbuf_out_data_sync_buffer_pool_out_stall_out,
        out_valid_out => i_syncbuf_out_data_sync_buffer_pool_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_stall_entry_1(STALLENABLE,323)
    -- Valid signal propagation
    SE_out_bubble_out_stall_entry_1_V0 <= SE_out_bubble_out_stall_entry_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_stall_entry_1_backStall <= i_syncbuf_out_data_sync_buffer_pool_out_stall_out or not (SE_out_bubble_out_stall_entry_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_stall_entry_1_wireValid <= bubble_out_stall_entry_1_reg_valid_out;

    -- bubble_out_stall_entry_1_reg(STALLFIFO,330)
    bubble_out_stall_entry_1_reg_valid_in <= SE_stall_entry_V0;
    bubble_out_stall_entry_1_reg_stall_in <= SE_out_bubble_out_stall_entry_1_backStall;
    bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp <= bubble_out_stall_entry_1_reg_valid_in(0);
    bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp <= bubble_out_stall_entry_1_reg_stall_in(0);
    bubble_out_stall_entry_1_reg_valid_out(0) <= bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    bubble_out_stall_entry_1_reg_stall_out(0) <= bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    thebubble_out_stall_entry_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 4,
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

    -- SE_stall_entry(STALLENABLE,225)
    SE_stall_entry_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_stall_entry_fromReg0 <= (others => '0');
            SE_stall_entry_fromReg1 <= (others => '0');
            SE_stall_entry_fromReg2 <= (others => '0');
            SE_stall_entry_fromReg3 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            -- Succesor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            -- Succesor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            -- Succesor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_stall_entry_consumed0 <= (not (bubble_out_stall_entry_1_reg_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg0;
    SE_stall_entry_consumed1 <= (not (bubble_out_stall_entry_2_reg_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg1;
    SE_stall_entry_consumed2 <= (not (bubble_out_stall_entry_3_reg_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg2;
    SE_stall_entry_consumed3 <= (not (SE_redist0_stall_entry_o4_1_0_backStall) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg3;
    -- Consuming
    SE_stall_entry_StallValid <= SE_stall_entry_backStall and SE_stall_entry_wireValid;
    SE_stall_entry_toReg0 <= SE_stall_entry_StallValid and SE_stall_entry_consumed0;
    SE_stall_entry_toReg1 <= SE_stall_entry_StallValid and SE_stall_entry_consumed1;
    SE_stall_entry_toReg2 <= SE_stall_entry_StallValid and SE_stall_entry_consumed2;
    SE_stall_entry_toReg3 <= SE_stall_entry_StallValid and SE_stall_entry_consumed3;
    -- Backward Stall generation
    SE_stall_entry_or0 <= SE_stall_entry_consumed0;
    SE_stall_entry_or1 <= SE_stall_entry_consumed1 and SE_stall_entry_or0;
    SE_stall_entry_or2 <= SE_stall_entry_consumed2 and SE_stall_entry_or1;
    SE_stall_entry_wireStall <= not (SE_stall_entry_consumed3 and SE_stall_entry_or2);
    SE_stall_entry_backStall <= SE_stall_entry_wireStall;
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg0);
    SE_stall_entry_V1 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg1);
    SE_stall_entry_V2 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg2);
    SE_stall_entry_V3 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg3);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_out_stall_entry_2_reg(STALLFIFO,331)
    bubble_out_stall_entry_2_reg_valid_in <= SE_stall_entry_V1;
    bubble_out_stall_entry_2_reg_stall_in <= SE_out_bubble_out_stall_entry_2_backStall;
    bubble_out_stall_entry_2_reg_valid_in_bitsignaltemp <= bubble_out_stall_entry_2_reg_valid_in(0);
    bubble_out_stall_entry_2_reg_stall_in_bitsignaltemp <= bubble_out_stall_entry_2_reg_stall_in(0);
    bubble_out_stall_entry_2_reg_valid_out(0) <= bubble_out_stall_entry_2_reg_valid_out_bitsignaltemp;
    bubble_out_stall_entry_2_reg_stall_out(0) <= bubble_out_stall_entry_2_reg_stall_out_bitsignaltemp;
    thebubble_out_stall_entry_2_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 4,
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

    -- SE_out_bubble_out_stall_entry_2(STALLENABLE,325)
    -- Valid signal propagation
    SE_out_bubble_out_stall_entry_2_V0 <= SE_out_bubble_out_stall_entry_2_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_stall_entry_2_backStall <= i_syncbuf_out_size_sync_buffer8_pool_out_stall_out or not (SE_out_bubble_out_stall_entry_2_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_stall_entry_2_wireValid <= bubble_out_stall_entry_2_reg_valid_out;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_syncbuf_out_size_sync_buffer8_pool(BLACKBOX,50)@3
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_out_size_sync_buffer8_pool : i_syncbuf_out_size_sync_buffer8_pool65
    PORT MAP (
        in_buffer_in => in_out_size,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_out_size_sync_buffer8_pool_backStall,
        in_valid_in => SE_out_bubble_out_stall_entry_2_V0,
        out_buffer_out => i_syncbuf_out_size_sync_buffer8_pool_out_buffer_out,
        out_stall_out => i_syncbuf_out_size_sync_buffer8_pool_out_stall_out,
        out_valid_out => i_syncbuf_out_size_sync_buffer8_pool_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_syncbuf_out_size_sync_buffer8_pool(BITJOIN,185)
    bubble_join_i_syncbuf_out_size_sync_buffer8_pool_q <= i_syncbuf_out_size_sync_buffer8_pool_out_buffer_out;

    -- bubble_select_i_syncbuf_out_size_sync_buffer8_pool(BITSELECT,186)
    bubble_select_i_syncbuf_out_size_sync_buffer8_pool_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_out_size_sync_buffer8_pool_q(31 downto 0));

    -- redist22_bgTrunc_i_inc43_pool_sel_x_b_1_0(REG,176)
    redist22_bgTrunc_i_inc43_pool_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist22_bgTrunc_i_inc43_pool_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist22_bgTrunc_i_inc43_pool_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D11);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg(STALLFIFO,328)
    bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_in <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_V0;
    bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_in <= SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_backStall;
    bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_in_bitsignaltemp <= bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_in(0);
    bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_in_bitsignaltemp <= bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_in(0);
    bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_out(0) <= bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_out(0) <= bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 3,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_syncbuf_out_size_sync_buffer8_pool(STALLENABLE,220)
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_syncbuf_out_size_sync_buffer8_pool_fromReg0 <= (others => '0');
            SE_out_i_syncbuf_out_size_sync_buffer8_pool_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_syncbuf_out_size_sync_buffer8_pool_fromReg0 <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_toReg0;
            -- Succesor 1
            SE_out_i_syncbuf_out_size_sync_buffer8_pool_fromReg1 <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_consumed0 <= (not (bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_stall_out) and SE_out_i_syncbuf_out_size_sync_buffer8_pool_wireValid) or SE_out_i_syncbuf_out_size_sync_buffer8_pool_fromReg0;
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_consumed1 <= (not (SR_SE_i_exitcond10_pool_backStall) and SE_out_i_syncbuf_out_size_sync_buffer8_pool_wireValid) or SE_out_i_syncbuf_out_size_sync_buffer8_pool_fromReg1;
    -- Consuming
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_StallValid <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_backStall and SE_out_i_syncbuf_out_size_sync_buffer8_pool_wireValid;
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_toReg0 <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_StallValid and SE_out_i_syncbuf_out_size_sync_buffer8_pool_consumed0;
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_toReg1 <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_StallValid and SE_out_i_syncbuf_out_size_sync_buffer8_pool_consumed1;
    -- Backward Stall generation
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_or0 <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_consumed0;
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_wireStall <= not (SE_out_i_syncbuf_out_size_sync_buffer8_pool_consumed1 and SE_out_i_syncbuf_out_size_sync_buffer8_pool_or0);
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_backStall <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_wireStall;
    -- Valid signal propagation
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_V0 <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_wireValid and not (SE_out_i_syncbuf_out_size_sync_buffer8_pool_fromReg0);
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_V1 <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_wireValid and not (SE_out_i_syncbuf_out_size_sync_buffer8_pool_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_out_size_sync_buffer8_pool_wireValid <= i_syncbuf_out_size_sync_buffer8_pool_out_valid_out;

    -- SE_i_exitcond10_pool(STALLENABLE,208)
    -- Valid signal propagation
    SE_i_exitcond10_pool_V0 <= SE_i_exitcond10_pool_R_v_0;
    -- Stall signal propagation
    SE_i_exitcond10_pool_s_tv_0 <= SE_i_unnamed_pool68_backStall and SE_i_exitcond10_pool_R_v_0;
    -- Backward Enable generation
    SE_i_exitcond10_pool_backEN <= not (SE_i_exitcond10_pool_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_exitcond10_pool_v_s_0 <= SE_i_exitcond10_pool_backEN and SR_SE_i_exitcond10_pool_V;
    -- Backward Stall generation
    SE_i_exitcond10_pool_backStall <= not (SE_i_exitcond10_pool_backEN);
    SE_i_exitcond10_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_exitcond10_pool_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_exitcond10_pool_backEN = "0") THEN
                SE_i_exitcond10_pool_R_v_0 <= SE_i_exitcond10_pool_R_v_0 and SE_i_exitcond10_pool_s_tv_0;
            ELSE
                SE_i_exitcond10_pool_R_v_0 <= SE_i_exitcond10_pool_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_exitcond10_pool(STALLREG,338)
    SR_SE_i_exitcond10_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_exitcond10_pool_r_valid <= (others => '0');
            SR_SE_i_exitcond10_pool_r_data0 <= (others => '-');
            SR_SE_i_exitcond10_pool_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_exitcond10_pool_r_valid <= SE_i_exitcond10_pool_backStall and (SR_SE_i_exitcond10_pool_r_valid or SR_SE_i_exitcond10_pool_i_valid);

            IF (SR_SE_i_exitcond10_pool_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_exitcond10_pool_r_data0 <= STD_LOGIC_VECTOR(redist22_bgTrunc_i_inc43_pool_sel_x_b_1_0_q);
                SR_SE_i_exitcond10_pool_r_data1 <= STD_LOGIC_VECTOR(bubble_select_i_syncbuf_out_size_sync_buffer8_pool_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_exitcond10_pool_and0 <= SE_redist1_stall_entry_o5_5_2_V2;
    SR_SE_i_exitcond10_pool_i_valid <= SE_out_i_syncbuf_out_size_sync_buffer8_pool_V1 and SR_SE_i_exitcond10_pool_and0;
    -- Stall signal propagation
    SR_SE_i_exitcond10_pool_backStall <= SR_SE_i_exitcond10_pool_r_valid or not (SR_SE_i_exitcond10_pool_i_valid);

    -- Valid
    SR_SE_i_exitcond10_pool_V <= SR_SE_i_exitcond10_pool_r_valid WHEN SR_SE_i_exitcond10_pool_r_valid = "1" ELSE SR_SE_i_exitcond10_pool_i_valid;

    -- Data0
    SR_SE_i_exitcond10_pool_D0 <= SR_SE_i_exitcond10_pool_r_data0 WHEN SR_SE_i_exitcond10_pool_r_valid = "1" ELSE redist22_bgTrunc_i_inc43_pool_sel_x_b_1_0_q;
    -- Data1
    SR_SE_i_exitcond10_pool_D1 <= SR_SE_i_exitcond10_pool_r_data1 WHEN SR_SE_i_exitcond10_pool_r_valid = "1" ELSE bubble_select_i_syncbuf_out_size_sync_buffer8_pool_b;

    -- c_i32_1gr(CONSTANT,32)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_inc46_pool(ADD,45)@3
    i_inc46_pool_a <= STD_LOGIC_VECTOR("0" & redist12_stall_entry_o14_3_2_q);
    i_inc46_pool_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc46_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc46_pool_a) + UNSIGNED(i_inc46_pool_b));
    i_inc46_pool_q <= i_inc46_pool_o(32 downto 0);

    -- bgTrunc_i_inc46_pool_sel_x(BITSELECT,4)@3
    bgTrunc_i_inc46_pool_sel_x_b <= i_inc46_pool_q(31 downto 0);

    -- redist12_stall_entry_o14_3_2(REG,161)
    redist12_stall_entry_o14_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_stall_entry_o14_3_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist12_stall_entry_o14_3_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D8);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_stall_entry_o12_5_2(REG,154)
    redist9_stall_entry_o12_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_5_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist9_stall_entry_o12_5_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D7);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_stall_entry_o11_5_2(REG,149)
    redist8_stall_entry_o11_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_stall_entry_o11_5_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist8_stall_entry_o11_5_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D6);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_stall_entry_o9_5_2(REG,141)
    redist6_stall_entry_o9_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_stall_entry_o9_5_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist6_stall_entry_o9_5_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D4);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o8_5_2(REG,136)
    redist5_stall_entry_o8_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o8_5_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist5_stall_entry_o8_5_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D3);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_stall_entry_o7_5_2(REG,131)
    redist4_stall_entry_o7_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_stall_entry_o7_5_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist4_stall_entry_o7_5_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D2);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_stall_entry_o5_5_2(REG,121)
    redist1_stall_entry_o5_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_stall_entry_o5_5_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist1_stall_entry_o5_5_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D0);
            END IF;
        END IF;
    END PROCESS;

    -- SR_SE_redist1_stall_entry_o5_5_3(STALLREG,336)
    SR_SE_redist1_stall_entry_o5_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist1_stall_entry_o5_5_3_r_valid <= (others => '0');
            SR_SE_redist1_stall_entry_o5_5_3_r_data0 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data1 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data2 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data3 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data4 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data5 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data6 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data7 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data8 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data9 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data10 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_3_r_data11 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist1_stall_entry_o5_5_3_r_valid <= SE_redist1_stall_entry_o5_5_3_backStall and (SR_SE_redist1_stall_entry_o5_5_3_r_valid or SR_SE_redist1_stall_entry_o5_5_3_i_valid);

            IF (SR_SE_redist1_stall_entry_o5_5_3_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist1_stall_entry_o5_5_3_r_data0 <= STD_LOGIC_VECTOR(redist1_stall_entry_o5_5_2_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data1 <= STD_LOGIC_VECTOR(redist2_stall_entry_o6_3_2_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data2 <= STD_LOGIC_VECTOR(redist4_stall_entry_o7_5_2_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data3 <= STD_LOGIC_VECTOR(redist5_stall_entry_o8_5_2_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data4 <= STD_LOGIC_VECTOR(redist6_stall_entry_o9_5_2_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data5 <= STD_LOGIC_VECTOR(redist8_stall_entry_o11_5_2_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data6 <= STD_LOGIC_VECTOR(redist9_stall_entry_o12_5_2_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data7 <= STD_LOGIC_VECTOR(redist12_stall_entry_o14_3_2_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data8 <= STD_LOGIC_VECTOR(redist14_stall_entry_o15_3_2_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data9 <= STD_LOGIC_VECTOR(redist16_stall_entry_o16_3_2_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data10 <= STD_LOGIC_VECTOR(redist22_bgTrunc_i_inc43_pool_sel_x_b_1_0_q);
                SR_SE_redist1_stall_entry_o5_5_3_r_data11 <= STD_LOGIC_VECTOR(bgTrunc_i_inc46_pool_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist1_stall_entry_o5_5_3_i_valid <= SE_redist1_stall_entry_o5_5_2_V0;
    -- Stall signal propagation
    SR_SE_redist1_stall_entry_o5_5_3_backStall <= SR_SE_redist1_stall_entry_o5_5_3_r_valid or not (SR_SE_redist1_stall_entry_o5_5_3_i_valid);

    -- Valid
    SR_SE_redist1_stall_entry_o5_5_3_V <= SR_SE_redist1_stall_entry_o5_5_3_r_valid WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE SR_SE_redist1_stall_entry_o5_5_3_i_valid;

    -- Data0
    SR_SE_redist1_stall_entry_o5_5_3_D0 <= SR_SE_redist1_stall_entry_o5_5_3_r_data0 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist1_stall_entry_o5_5_2_q;
    -- Data1
    SR_SE_redist1_stall_entry_o5_5_3_D1 <= SR_SE_redist1_stall_entry_o5_5_3_r_data1 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist2_stall_entry_o6_3_2_q;
    -- Data2
    SR_SE_redist1_stall_entry_o5_5_3_D2 <= SR_SE_redist1_stall_entry_o5_5_3_r_data2 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist4_stall_entry_o7_5_2_q;
    -- Data3
    SR_SE_redist1_stall_entry_o5_5_3_D3 <= SR_SE_redist1_stall_entry_o5_5_3_r_data3 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist5_stall_entry_o8_5_2_q;
    -- Data4
    SR_SE_redist1_stall_entry_o5_5_3_D4 <= SR_SE_redist1_stall_entry_o5_5_3_r_data4 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist6_stall_entry_o9_5_2_q;
    -- Data5
    SR_SE_redist1_stall_entry_o5_5_3_D5 <= SR_SE_redist1_stall_entry_o5_5_3_r_data5 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist8_stall_entry_o11_5_2_q;
    -- Data6
    SR_SE_redist1_stall_entry_o5_5_3_D6 <= SR_SE_redist1_stall_entry_o5_5_3_r_data6 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist9_stall_entry_o12_5_2_q;
    -- Data7
    SR_SE_redist1_stall_entry_o5_5_3_D7 <= SR_SE_redist1_stall_entry_o5_5_3_r_data7 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist12_stall_entry_o14_3_2_q;
    -- Data8
    SR_SE_redist1_stall_entry_o5_5_3_D8 <= SR_SE_redist1_stall_entry_o5_5_3_r_data8 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist14_stall_entry_o15_3_2_q;
    -- Data9
    SR_SE_redist1_stall_entry_o5_5_3_D9 <= SR_SE_redist1_stall_entry_o5_5_3_r_data9 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist16_stall_entry_o16_3_2_q;
    -- Data10
    SR_SE_redist1_stall_entry_o5_5_3_D10 <= SR_SE_redist1_stall_entry_o5_5_3_r_data10 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE redist22_bgTrunc_i_inc43_pool_sel_x_b_1_0_q;
    -- Data11
    SR_SE_redist1_stall_entry_o5_5_3_D11 <= SR_SE_redist1_stall_entry_o5_5_3_r_data11 WHEN SR_SE_redist1_stall_entry_o5_5_3_r_valid = "1" ELSE bgTrunc_i_inc46_pool_sel_x_b;

    -- SE_redist1_stall_entry_o5_5_2(STALLENABLE,241)
    -- Valid signal propagation
    SE_redist1_stall_entry_o5_5_2_V0 <= SE_redist1_stall_entry_o5_5_2_R_v_0;
    SE_redist1_stall_entry_o5_5_2_V1 <= SE_redist1_stall_entry_o5_5_2_R_v_1;
    SE_redist1_stall_entry_o5_5_2_V2 <= SE_redist1_stall_entry_o5_5_2_R_v_2;
    -- Stall signal propagation
    SE_redist1_stall_entry_o5_5_2_s_tv_0 <= SR_SE_redist1_stall_entry_o5_5_3_backStall and SE_redist1_stall_entry_o5_5_2_R_v_0;
    SE_redist1_stall_entry_o5_5_2_s_tv_1 <= SE_out_i_syncbuf_out_data_sync_buffer_pool_backStall and SE_redist1_stall_entry_o5_5_2_R_v_1;
    SE_redist1_stall_entry_o5_5_2_s_tv_2 <= SR_SE_i_exitcond10_pool_backStall and SE_redist1_stall_entry_o5_5_2_R_v_2;
    -- Backward Enable generation
    SE_redist1_stall_entry_o5_5_2_or0 <= SE_redist1_stall_entry_o5_5_2_s_tv_0;
    SE_redist1_stall_entry_o5_5_2_or1 <= SE_redist1_stall_entry_o5_5_2_s_tv_1 or SE_redist1_stall_entry_o5_5_2_or0;
    SE_redist1_stall_entry_o5_5_2_backEN <= not (SE_redist1_stall_entry_o5_5_2_s_tv_2 or SE_redist1_stall_entry_o5_5_2_or1);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_stall_entry_o5_5_2_v_s_0 <= SE_redist1_stall_entry_o5_5_2_backEN and SR_SE_redist1_stall_entry_o5_5_2_V;
    -- Backward Stall generation
    SE_redist1_stall_entry_o5_5_2_backStall <= not (SE_redist1_stall_entry_o5_5_2_backEN);
    SE_redist1_stall_entry_o5_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_stall_entry_o5_5_2_R_v_0 <= (others => '0');
            SE_redist1_stall_entry_o5_5_2_R_v_1 <= (others => '0');
            SE_redist1_stall_entry_o5_5_2_R_v_2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "0") THEN
                SE_redist1_stall_entry_o5_5_2_R_v_0 <= SE_redist1_stall_entry_o5_5_2_R_v_0 and SE_redist1_stall_entry_o5_5_2_s_tv_0;
            ELSE
                SE_redist1_stall_entry_o5_5_2_R_v_0 <= SE_redist1_stall_entry_o5_5_2_v_s_0;
            END IF;

            IF (SE_redist1_stall_entry_o5_5_2_backEN = "0") THEN
                SE_redist1_stall_entry_o5_5_2_R_v_1 <= SE_redist1_stall_entry_o5_5_2_R_v_1 and SE_redist1_stall_entry_o5_5_2_s_tv_1;
            ELSE
                SE_redist1_stall_entry_o5_5_2_R_v_1 <= SE_redist1_stall_entry_o5_5_2_v_s_0;
            END IF;

            IF (SE_redist1_stall_entry_o5_5_2_backEN = "0") THEN
                SE_redist1_stall_entry_o5_5_2_R_v_2 <= SE_redist1_stall_entry_o5_5_2_R_v_2 and SE_redist1_stall_entry_o5_5_2_s_tv_2;
            ELSE
                SE_redist1_stall_entry_o5_5_2_R_v_2 <= SE_redist1_stall_entry_o5_5_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- i_arrayidx41_pool_pool62_mult_multconst_x(CONSTANT,20)
    i_arrayidx41_pool_pool62_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- redist24_bgTrunc_i_add39_pool_sel_x_b_1_0(REG,179)
    redist24_bgTrunc_i_add39_pool_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist24_bgTrunc_i_add39_pool_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist24_bgTrunc_i_add39_pool_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D12);
            END IF;
        END IF;
    END PROCESS;

    -- i_idxprom40_pool_sel_x(BITSELECT,26)@2
    i_idxprom40_pool_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist24_bgTrunc_i_add39_pool_sel_x_b_1_0_q(31 downto 0)), 64)));

    -- i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select(BITSELECT,92)@2
    i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_b <= i_idxprom40_pool_sel_x_b(17 downto 0);
    i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_c <= i_idxprom40_pool_sel_x_b(63 downto 54);
    i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_d <= i_idxprom40_pool_sel_x_b(35 downto 18);
    i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_e <= i_idxprom40_pool_sel_x_b(53 downto 36);

    -- i_arrayidx41_pool_pool62_mult_x_im3_shift0(BITSHIFT,89)@2
    i_arrayidx41_pool_pool62_mult_x_im3_shift0_qint <= i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx41_pool_pool62_mult_x_im3_shift0_q <= i_arrayidx41_pool_pool62_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx41_pool_pool62_mult_x_align_15(BITSHIFT,81)@2
    i_arrayidx41_pool_pool62_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx41_pool_pool62_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx41_pool_pool62_mult_x_align_15_q <= i_arrayidx41_pool_pool62_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx41_pool_pool62_mult_x_im6_shift0(BITSHIFT,90)@2
    i_arrayidx41_pool_pool62_mult_x_im6_shift0_qint <= i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx41_pool_pool62_mult_x_im6_shift0_q <= i_arrayidx41_pool_pool62_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx41_pool_pool62_mult_x_align_14(BITSHIFT,80)@2
    i_arrayidx41_pool_pool62_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx41_pool_pool62_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx41_pool_pool62_mult_x_align_14_q <= i_arrayidx41_pool_pool62_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx41_pool_pool62_mult_x_join_16(BITJOIN,82)@2
    i_arrayidx41_pool_pool62_mult_x_join_16_q <= i_arrayidx41_pool_pool62_mult_x_align_15_q & i_arrayidx41_pool_pool62_mult_x_align_14_q;

    -- i_arrayidx41_pool_pool62_mult_x_im9_shift0(BITSHIFT,91)@2
    i_arrayidx41_pool_pool62_mult_x_im9_shift0_qint <= i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx41_pool_pool62_mult_x_im9_shift0_q <= i_arrayidx41_pool_pool62_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx41_pool_pool62_mult_x_align_12(BITSHIFT,78)@2
    i_arrayidx41_pool_pool62_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx41_pool_pool62_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx41_pool_pool62_mult_x_align_12_q <= i_arrayidx41_pool_pool62_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx41_pool_pool62_mult_x_im0_shift0(BITSHIFT,88)@2
    i_arrayidx41_pool_pool62_mult_x_im0_shift0_qint <= i_arrayidx41_pool_pool62_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx41_pool_pool62_mult_x_im0_shift0_q <= i_arrayidx41_pool_pool62_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx41_pool_pool62_mult_x_join_13(BITJOIN,79)@2
    i_arrayidx41_pool_pool62_mult_x_join_13_q <= i_arrayidx41_pool_pool62_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx41_pool_pool62_mult_x_im0_shift0_q);

    -- i_arrayidx41_pool_pool62_mult_x_result_add_0_0(ADD,83)@2
    i_arrayidx41_pool_pool62_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx41_pool_pool62_mult_x_join_13_q);
    i_arrayidx41_pool_pool62_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx41_pool_pool62_mult_x_join_16_q);
    i_arrayidx41_pool_pool62_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx41_pool_pool62_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx41_pool_pool62_mult_x_result_add_0_0_b));
    i_arrayidx41_pool_pool62_mult_x_result_add_0_0_q <= i_arrayidx41_pool_pool62_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx41_pool_pool62_mult_extender_x(BITJOIN,19)@2
    i_arrayidx41_pool_pool62_mult_extender_x_q <= i_arrayidx41_pool_pool62_mult_multconst_x_q & i_arrayidx41_pool_pool62_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx41_pool_pool62_trunc_sel_x(BITSELECT,21)@2
    i_arrayidx41_pool_pool62_trunc_sel_x_b <= i_arrayidx41_pool_pool62_mult_extender_x_q(63 downto 0);

    -- redist11_stall_entry_o13_2_0(REG,158)
    redist11_stall_entry_o13_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_stall_entry_o13_2_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist11_stall_entry_o13_2_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D8);
            END IF;
        END IF;
    END PROCESS;

    -- i_inc43_pool(ADD,44)@2
    i_inc43_pool_a <= STD_LOGIC_VECTOR("0" & redist11_stall_entry_o13_2_0_q);
    i_inc43_pool_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc43_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc43_pool_a) + UNSIGNED(i_inc43_pool_b));
    i_inc43_pool_q <= i_inc43_pool_o(32 downto 0);

    -- bgTrunc_i_inc43_pool_sel_x(BITSELECT,3)@2
    bgTrunc_i_inc43_pool_sel_x_b <= i_inc43_pool_q(31 downto 0);

    -- redist16_stall_entry_o16_3_1(REG,169)
    redist16_stall_entry_o16_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_stall_entry_o16_3_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist16_stall_entry_o16_3_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D11);
            END IF;
        END IF;
    END PROCESS;

    -- redist14_stall_entry_o15_3_1(REG,164)
    redist14_stall_entry_o15_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_stall_entry_o15_3_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist14_stall_entry_o15_3_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D10);
            END IF;
        END IF;
    END PROCESS;

    -- redist12_stall_entry_o14_3_1(REG,160)
    redist12_stall_entry_o14_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_stall_entry_o14_3_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist12_stall_entry_o14_3_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D9);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_stall_entry_o12_5_1(REG,153)
    redist9_stall_entry_o12_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_5_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist9_stall_entry_o12_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D7);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_stall_entry_o11_5_1(REG,148)
    redist8_stall_entry_o11_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_stall_entry_o11_5_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist8_stall_entry_o11_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D6);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_stall_entry_o10_3_1(REG,145)
    redist7_stall_entry_o10_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_stall_entry_o10_3_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist7_stall_entry_o10_3_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D5);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_stall_entry_o9_5_1(REG,140)
    redist6_stall_entry_o9_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_stall_entry_o9_5_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist6_stall_entry_o9_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D4);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o8_5_1(REG,135)
    redist5_stall_entry_o8_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o8_5_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist5_stall_entry_o8_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D3);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_stall_entry_o7_5_1(REG,130)
    redist4_stall_entry_o7_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_stall_entry_o7_5_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist4_stall_entry_o7_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D2);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_stall_entry_o6_3_1(REG,125)
    redist2_stall_entry_o6_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_stall_entry_o6_3_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist2_stall_entry_o6_3_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_stall_entry_o5_5_1(REG,120)
    redist1_stall_entry_o5_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_stall_entry_o5_5_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_1_backEN = "1") THEN
                redist1_stall_entry_o5_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_1_D0);
            END IF;
        END IF;
    END PROCESS;

    -- SR_SE_redist1_stall_entry_o5_5_2(STALLREG,335)
    SR_SE_redist1_stall_entry_o5_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist1_stall_entry_o5_5_2_r_valid <= (others => '0');
            SR_SE_redist1_stall_entry_o5_5_2_r_data0 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data1 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data2 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data3 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data4 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data5 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data6 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data7 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data8 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data9 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data10 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data11 <= (others => '-');
            SR_SE_redist1_stall_entry_o5_5_2_r_data12 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist1_stall_entry_o5_5_2_r_valid <= SE_redist1_stall_entry_o5_5_2_backStall and (SR_SE_redist1_stall_entry_o5_5_2_r_valid or SR_SE_redist1_stall_entry_o5_5_2_i_valid);

            IF (SR_SE_redist1_stall_entry_o5_5_2_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist1_stall_entry_o5_5_2_r_data0 <= STD_LOGIC_VECTOR(redist1_stall_entry_o5_5_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data1 <= STD_LOGIC_VECTOR(redist2_stall_entry_o6_3_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data2 <= STD_LOGIC_VECTOR(redist4_stall_entry_o7_5_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data3 <= STD_LOGIC_VECTOR(redist5_stall_entry_o8_5_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data4 <= STD_LOGIC_VECTOR(redist6_stall_entry_o9_5_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data5 <= STD_LOGIC_VECTOR(redist7_stall_entry_o10_3_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data6 <= STD_LOGIC_VECTOR(redist8_stall_entry_o11_5_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data7 <= STD_LOGIC_VECTOR(redist9_stall_entry_o12_5_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data8 <= STD_LOGIC_VECTOR(redist12_stall_entry_o14_3_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data9 <= STD_LOGIC_VECTOR(redist14_stall_entry_o15_3_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data10 <= STD_LOGIC_VECTOR(redist16_stall_entry_o16_3_1_q);
                SR_SE_redist1_stall_entry_o5_5_2_r_data11 <= STD_LOGIC_VECTOR(bgTrunc_i_inc43_pool_sel_x_b);
                SR_SE_redist1_stall_entry_o5_5_2_r_data12 <= STD_LOGIC_VECTOR(i_arrayidx41_pool_pool62_trunc_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist1_stall_entry_o5_5_2_i_valid <= SE_redist1_stall_entry_o5_5_1_V0;
    -- Stall signal propagation
    SR_SE_redist1_stall_entry_o5_5_2_backStall <= SR_SE_redist1_stall_entry_o5_5_2_r_valid or not (SR_SE_redist1_stall_entry_o5_5_2_i_valid);

    -- Valid
    SR_SE_redist1_stall_entry_o5_5_2_V <= SR_SE_redist1_stall_entry_o5_5_2_r_valid WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE SR_SE_redist1_stall_entry_o5_5_2_i_valid;

    -- Data0
    SR_SE_redist1_stall_entry_o5_5_2_D0 <= SR_SE_redist1_stall_entry_o5_5_2_r_data0 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist1_stall_entry_o5_5_1_q;
    -- Data1
    SR_SE_redist1_stall_entry_o5_5_2_D1 <= SR_SE_redist1_stall_entry_o5_5_2_r_data1 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist2_stall_entry_o6_3_1_q;
    -- Data2
    SR_SE_redist1_stall_entry_o5_5_2_D2 <= SR_SE_redist1_stall_entry_o5_5_2_r_data2 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist4_stall_entry_o7_5_1_q;
    -- Data3
    SR_SE_redist1_stall_entry_o5_5_2_D3 <= SR_SE_redist1_stall_entry_o5_5_2_r_data3 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist5_stall_entry_o8_5_1_q;
    -- Data4
    SR_SE_redist1_stall_entry_o5_5_2_D4 <= SR_SE_redist1_stall_entry_o5_5_2_r_data4 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist6_stall_entry_o9_5_1_q;
    -- Data5
    SR_SE_redist1_stall_entry_o5_5_2_D5 <= SR_SE_redist1_stall_entry_o5_5_2_r_data5 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist7_stall_entry_o10_3_1_q;
    -- Data6
    SR_SE_redist1_stall_entry_o5_5_2_D6 <= SR_SE_redist1_stall_entry_o5_5_2_r_data6 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist8_stall_entry_o11_5_1_q;
    -- Data7
    SR_SE_redist1_stall_entry_o5_5_2_D7 <= SR_SE_redist1_stall_entry_o5_5_2_r_data7 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist9_stall_entry_o12_5_1_q;
    -- Data8
    SR_SE_redist1_stall_entry_o5_5_2_D8 <= SR_SE_redist1_stall_entry_o5_5_2_r_data8 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist12_stall_entry_o14_3_1_q;
    -- Data9
    SR_SE_redist1_stall_entry_o5_5_2_D9 <= SR_SE_redist1_stall_entry_o5_5_2_r_data9 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist14_stall_entry_o15_3_1_q;
    -- Data10
    SR_SE_redist1_stall_entry_o5_5_2_D10 <= SR_SE_redist1_stall_entry_o5_5_2_r_data10 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE redist16_stall_entry_o16_3_1_q;
    -- Data11
    SR_SE_redist1_stall_entry_o5_5_2_D11 <= SR_SE_redist1_stall_entry_o5_5_2_r_data11 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE bgTrunc_i_inc43_pool_sel_x_b;
    -- Data12
    SR_SE_redist1_stall_entry_o5_5_2_D12 <= SR_SE_redist1_stall_entry_o5_5_2_r_data12 WHEN SR_SE_redist1_stall_entry_o5_5_2_r_valid = "1" ELSE i_arrayidx41_pool_pool62_trunc_sel_x_b;

    -- redist7_stall_entry_o10_3_2(REG,146)
    redist7_stall_entry_o10_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_stall_entry_o10_3_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist7_stall_entry_o10_3_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D5);
            END IF;
        END IF;
    END PROCESS;

    -- redist14_stall_entry_o15_3_2(REG,165)
    redist14_stall_entry_o15_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_stall_entry_o15_3_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist14_stall_entry_o15_3_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D9);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_stall_entry_o6_3_2(REG,126)
    redist2_stall_entry_o6_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_stall_entry_o6_3_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist2_stall_entry_o6_3_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D1);
            END IF;
        END IF;
    END PROCESS;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_select12_pool(MUX,47)@3
    i_select12_pool_s <= redist2_stall_entry_o6_3_2_q;
    i_select12_pool_combproc: PROCESS (i_select12_pool_s, redist14_stall_entry_o15_3_2_q, redist7_stall_entry_o10_3_2_q)
    BEGIN
        CASE (i_select12_pool_s) IS
            WHEN "0" => i_select12_pool_q <= redist14_stall_entry_o15_3_2_q;
            WHEN "1" => i_select12_pool_q <= redist7_stall_entry_o10_3_2_q;
            WHEN OTHERS => i_select12_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- SE_out_i_syncbuf_out_data_sync_buffer_pool(STALLENABLE,218)
    -- Valid signal propagation
    SE_out_i_syncbuf_out_data_sync_buffer_pool_V0 <= SE_out_i_syncbuf_out_data_sync_buffer_pool_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_out_data_sync_buffer_pool_backStall <= i_store_unnamed_pool5_pool_out_o_stall or not (SE_out_i_syncbuf_out_data_sync_buffer_pool_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_out_data_sync_buffer_pool_and0 <= i_syncbuf_out_data_sync_buffer_pool_out_valid_out;
    SE_out_i_syncbuf_out_data_sync_buffer_pool_wireValid <= SE_redist1_stall_entry_o5_5_2_V1 and SE_out_i_syncbuf_out_data_sync_buffer_pool_and0;

    -- SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1(STALLENABLE,317)
    -- Valid signal propagation
    SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_V0 <= SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_backStall <= in_stall_in or not (SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and0 <= bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_reg_V0;
    SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and1 <= bubble_out_i_syncbuf_out_size_sync_buffer8_pool_1_reg_valid_out and SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and0;
    SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and2 <= SE_i_exitcond11_pool_V0 and SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and1;
    SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and3 <= SE_redist19_i_unnamed_pool68_q_1_0_V0 and SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and2;
    SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and4 <= i_store_unnamed_pool5_pool_out_o_valid and SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and3;
    SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and5 <= SE_redist1_stall_entry_o5_5_4_V0 and SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and4;
    SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_wireValid <= SE_i_row_09_lc_outerphi_pool_V0 and SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_and5;

    -- redist16_stall_entry_o16_3_2(REG,170)
    redist16_stall_entry_o16_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist16_stall_entry_o16_3_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist16_stall_entry_o16_3_2_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D10);
            END IF;
        END IF;
    END PROCESS;

    -- redist20_i_arrayidx41_pool_pool62_trunc_sel_x_b_1_0(REG,174)
    redist20_i_arrayidx41_pool_pool62_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist20_i_arrayidx41_pool_pool62_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_2_backEN = "1") THEN
                redist20_i_arrayidx41_pool_pool62_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_2_D12);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_syncbuf_out_data_sync_buffer_pool(BITJOIN,182)
    bubble_join_i_syncbuf_out_data_sync_buffer_pool_q <= i_syncbuf_out_data_sync_buffer_pool_out_buffer_out;

    -- bubble_select_i_syncbuf_out_data_sync_buffer_pool(BITSELECT,183)
    bubble_select_i_syncbuf_out_data_sync_buffer_pool_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_out_data_sync_buffer_pool_q(63 downto 0));

    -- i_arrayidx41_pool_pool62_add_x(ADD,22)@3
    i_arrayidx41_pool_pool62_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_out_data_sync_buffer_pool_b);
    i_arrayidx41_pool_pool62_add_x_b <= STD_LOGIC_VECTOR("0" & redist20_i_arrayidx41_pool_pool62_trunc_sel_x_b_1_0_q);
    i_arrayidx41_pool_pool62_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx41_pool_pool62_add_x_a) + UNSIGNED(i_arrayidx41_pool_pool62_add_x_b));
    i_arrayidx41_pool_pool62_add_x_q <= i_arrayidx41_pool_pool62_add_x_o(64 downto 0);

    -- i_arrayidx41_pool_pool62_dupName_0_trunc_sel_x(BITSELECT,16)@3
    i_arrayidx41_pool_pool62_dupName_0_trunc_sel_x_b <= i_arrayidx41_pool_pool62_add_x_q(63 downto 0);

    -- i_store_unnamed_pool5_pool(BLACKBOX,48)@3
    -- in in_i_stall@20000000
    -- out out_lsu_unnamed_pool5_o_active@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@5
    -- out out_unnamed_pool5_avm_address@20000000
    -- out out_unnamed_pool5_avm_burstcount@20000000
    -- out out_unnamed_pool5_avm_byteenable@20000000
    -- out out_unnamed_pool5_avm_enable@20000000
    -- out out_unnamed_pool5_avm_read@20000000
    -- out out_unnamed_pool5_avm_write@20000000
    -- out out_unnamed_pool5_avm_writedata@20000000
    thei_store_unnamed_pool5_pool : i_store_unnamed_pool5_pool63
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx41_pool_pool62_dupName_0_trunc_sel_x_b,
        in_i_predicate => redist16_stall_entry_o16_3_2_q,
        in_i_stall => SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_backStall,
        in_i_valid => SE_out_i_syncbuf_out_data_sync_buffer_pool_V0,
        in_i_writedata => i_select12_pool_q,
        in_unnamed_pool5_avm_readdata => in_unnamed_pool5_avm_readdata,
        in_unnamed_pool5_avm_readdatavalid => in_unnamed_pool5_avm_readdatavalid,
        in_unnamed_pool5_avm_waitrequest => in_unnamed_pool5_avm_waitrequest,
        in_unnamed_pool5_avm_writeack => in_unnamed_pool5_avm_writeack,
        out_lsu_unnamed_pool5_o_active => i_store_unnamed_pool5_pool_out_lsu_unnamed_pool5_o_active,
        out_o_stall => i_store_unnamed_pool5_pool_out_o_stall,
        out_o_valid => i_store_unnamed_pool5_pool_out_o_valid,
        out_unnamed_pool5_avm_address => i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_address,
        out_unnamed_pool5_avm_burstcount => i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_burstcount,
        out_unnamed_pool5_avm_byteenable => i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_byteenable,
        out_unnamed_pool5_avm_enable => i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_enable,
        out_unnamed_pool5_avm_read => i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_read,
        out_unnamed_pool5_avm_write => i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_write,
        out_unnamed_pool5_avm_writedata => i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,5)
    out_lsu_unnamed_pool5_o_active <= i_store_unnamed_pool5_pool_out_lsu_unnamed_pool5_o_active;

    -- redist15_stall_entry_o15_5_1(REG,167)
    redist15_stall_entry_o15_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist15_stall_entry_o15_5_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "1") THEN
                redist15_stall_entry_o15_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_4_D7);
            END IF;
        END IF;
    END PROCESS;

    -- i_row_09_lc_outerphi_pool(MUX,46)@4 + 1
    i_row_09_lc_outerphi_pool_s <= SR_SE_i_row_09_lc_outerphi_pool_D0;
    i_row_09_lc_outerphi_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_row_09_lc_outerphi_pool_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_row_09_lc_outerphi_pool_backEN = "1") THEN
                CASE (i_row_09_lc_outerphi_pool_s) IS
                    WHEN "0" => i_row_09_lc_outerphi_pool_q <= SR_SE_i_row_09_lc_outerphi_pool_D1;
                    WHEN "1" => i_row_09_lc_outerphi_pool_q <= SR_SE_i_row_09_lc_outerphi_pool_D2;
                    WHEN OTHERS => i_row_09_lc_outerphi_pool_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- redist18_stall_entry_o16_5_0(REG,172)
    redist18_stall_entry_o16_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_stall_entry_o16_5_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "1") THEN
                redist18_stall_entry_o16_5_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_4_D8);
            END IF;
        END IF;
    END PROCESS;

    -- i_exitcond11_pool(LOGICAL,40)@4 + 1
    i_exitcond11_pool_qi <= "1" WHEN SR_SE_i_exitcond11_pool_D0 = SR_SE_i_exitcond11_pool_D1 ELSE "0";
    i_exitcond11_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond11_pool_qi, xout => i_exitcond11_pool_q, ena => SE_i_exitcond11_pool_backEN(0), clk => clock, aclr => resetn );

    -- i_unnamed_pool72(LOGICAL,53)@5
    i_unnamed_pool72_q <= i_exitcond11_pool_q or redist18_stall_entry_o16_5_0_q;

    -- redist19_i_unnamed_pool68_q_1_0(REG,173)
    redist19_i_unnamed_pool68_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_i_unnamed_pool68_q_1_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist19_i_unnamed_pool68_q_1_0_backEN = "1") THEN
                redist19_i_unnamed_pool68_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist19_i_unnamed_pool68_q_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_for_end47_loopexit_loopexit_lc_cond_pool(LOGICAL,41)@5
    i_for_end47_loopexit_loopexit_lc_cond_pool_q <= redist19_i_unnamed_pool68_q_1_0_q and i_unnamed_pool72_q;

    -- c_i32_0gr(CONSTANT,31)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- redist23_bgTrunc_i_inc43_pool_sel_x_b_3_1(REG,178)
    redist23_bgTrunc_i_inc43_pool_sel_x_b_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist23_bgTrunc_i_inc43_pool_sel_x_b_3_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "1") THEN
                redist23_bgTrunc_i_inc43_pool_sel_x_b_3_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_4_D9);
            END IF;
        END IF;
    END PROCESS;

    -- i_col_17_lc_innerphi_pool(MUX,38)@5
    i_col_17_lc_innerphi_pool_s <= redist19_i_unnamed_pool68_q_1_0_q;
    i_col_17_lc_innerphi_pool_combproc: PROCESS (i_col_17_lc_innerphi_pool_s, redist23_bgTrunc_i_inc43_pool_sel_x_b_3_1_q, c_i32_0gr_q)
    BEGIN
        CASE (i_col_17_lc_innerphi_pool_s) IS
            WHEN "0" => i_col_17_lc_innerphi_pool_q <= redist23_bgTrunc_i_inc43_pool_sel_x_b_3_1_q;
            WHEN "1" => i_col_17_lc_innerphi_pool_q <= c_i32_0gr_q;
            WHEN OTHERS => i_col_17_lc_innerphi_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist9_stall_entry_o12_5_4(REG,156)
    redist9_stall_entry_o12_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_stall_entry_o12_5_4_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "1") THEN
                redist9_stall_entry_o12_5_4_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_4_D6);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_stall_entry_o11_5_4(REG,151)
    redist8_stall_entry_o11_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_stall_entry_o11_5_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "1") THEN
                redist8_stall_entry_o11_5_4_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_4_D5);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_stall_entry_o9_5_4(REG,143)
    redist6_stall_entry_o9_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_stall_entry_o9_5_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "1") THEN
                redist6_stall_entry_o9_5_4_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_4_D4);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_stall_entry_o8_5_4(REG,138)
    redist5_stall_entry_o8_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_stall_entry_o8_5_4_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "1") THEN
                redist5_stall_entry_o8_5_4_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_4_D3);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_stall_entry_o7_5_4(REG,133)
    redist4_stall_entry_o7_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_stall_entry_o7_5_4_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "1") THEN
                redist4_stall_entry_o7_5_4_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_4_D2);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_stall_entry_o6_5_1(REG,128)
    redist3_stall_entry_o6_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_stall_entry_o6_5_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "1") THEN
                redist3_stall_entry_o6_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_4_D1);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_stall_entry_o5_5_4(REG,123)
    redist1_stall_entry_o5_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_stall_entry_o5_5_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_stall_entry_o5_5_4_backEN = "1") THEN
                redist1_stall_entry_o5_5_4_q <= STD_LOGIC_VECTOR(SR_SE_redist1_stall_entry_o5_5_4_D0);
            END IF;
        END IF;
    END PROCESS;

    -- dupName_0_sync_out_x(GPOUT,10)@5
    out_c0_exe13 <= redist1_stall_entry_o5_5_4_q;
    out_c0_exe24 <= redist3_stall_entry_o6_5_1_q;
    out_c0_exe39 <= redist4_stall_entry_o7_5_4_q;
    out_c0_exe412 <= redist5_stall_entry_o8_5_4_q;
    out_c1_exe114 <= redist6_stall_entry_o9_5_4_q;
    out_c2_exe117 <= redist8_stall_entry_o11_5_4_q;
    out_cmp621 <= redist9_stall_entry_o12_5_4_q;
    out_col_17_LC_InnerPHI <= i_col_17_lc_innerphi_pool_q;
    out_for_end47_loopexit_loopexit_LC_COND <= i_for_end47_loopexit_loopexit_lc_cond_pool_q;
    out_row_09_LC_OuterPHI <= i_row_09_lc_outerphi_pool_q;
    out_tmp_222 <= redist15_stall_entry_o15_5_1_q;
    out_valid_out <= SE_out_bubble_out_i_syncbuf_out_size_sync_buffer9_pool_1_V0;

    -- ext_sig_sync_out(GPOUT,36)
    out_unnamed_pool5_avm_address <= i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_address;
    out_unnamed_pool5_avm_enable <= i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_enable;
    out_unnamed_pool5_avm_read <= i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_read;
    out_unnamed_pool5_avm_write <= i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_write;
    out_unnamed_pool5_avm_writedata <= i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_writedata;
    out_unnamed_pool5_avm_byteenable <= i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_byteenable;
    out_unnamed_pool5_avm_burstcount <= i_store_unnamed_pool5_pool_out_unnamed_pool5_avm_burstcount;

    -- sync_out(GPOUT,65)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
