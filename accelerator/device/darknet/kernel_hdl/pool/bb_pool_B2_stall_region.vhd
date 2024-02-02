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

-- VHDL created from bb_pool_B2_stall_region
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

entity bb_pool_B2_stall_region is
    port (
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe11 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe11330 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe25 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe37 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe410 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe115 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe11931 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe118 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe12532 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp619 : in std_logic_vector(0 downto 0);  -- ufix1
        in_col_1728 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_25 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_0926 : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp_223 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_34 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe11 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe11330 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe25 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe37 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe410 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe115 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe11931 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe141 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe118 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe12532 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp619 : out std_logic_vector(0 downto 0);  -- ufix1
        out_col_1728 : out std_logic_vector(31 downto 0);  -- ufix32
        out_inc : out std_logic_vector(31 downto 0);  -- ufix32
        out_row_0926 : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp_223 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_unnamed_pool1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_in_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_kernel_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_out_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_pool3_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_pool3_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_pool3_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_pool3_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_pool3_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_pool3_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_pool_B2_stall_region;

architecture normal of bb_pool_B2_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_body12_pool_c0_enter28_pool is
        port (
            in_c0_eni3_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni3_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni3_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni3_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_in_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_kernel_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit32_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit32_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_for_body12_pool_c1_enter36_pool is
        port (
            in_c1_eni3_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni3_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_eni3_2 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_c1_eni3_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit40_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit40_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B2_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_data_in_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_9 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_data_in_10 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_11 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_data_out_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_9 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_data_out_10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_11 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_pool3_pool53 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool3_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_pool3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_pool3_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_pool3_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_out_size_sync_buffer_pool37 is
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
    signal bgTrunc_i_inc_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_out_c0_exit32_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_out_c1_exit40_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_10 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_11 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_data_out_14 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_exitcond_guard_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_load_unnamed_pool3_pool_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_pool3_pool_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_pool3_pool_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_syncbuf_out_size_sync_buffer_pool_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_out_size_sync_buffer_pool_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_out_size_sync_buffer_pool_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_pool51_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_pool51_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_pool51_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_pool51_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_pool59_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_pool_B2_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (355 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_h : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_i : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_j : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_k : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_l : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_m : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_n : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_o : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B2_merge_reg_aunroll_x_p : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_pool3_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_pool3_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_out_size_sync_buffer_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_out_size_sync_buffer_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (355 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_h : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_i : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_j : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_k : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_l : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_m : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_n : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_o : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_p : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_toReg16 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_fromReg16 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_consumed16 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_or15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B2_merge_reg_aunroll_x_V16 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_pool_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_pool_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_pool_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_pool_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_exitcond_pool_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer_pool_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_out_size_sync_buffer_pool_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool51_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool51_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool51_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool51_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool51_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_pool51_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and12 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and13 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and14 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and15 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp : std_logic;
    signal SR_SE_i_exitcond_pool_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond_pool_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond_pool_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond_pool_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond_pool_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond_pool_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_exitcond_pool_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_exitcond_pool_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_D0 : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- c_i32_1gr(CONSTANT,22)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- SE_stall_entry(STALLENABLE,173)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= pool_B2_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,103)
    bubble_join_stall_entry_q <= in_tmp_34 & in_tmp_223 & in_row_0926 & in_i_25 & in_col_1728 & in_cmp619 & in_c2_exe12532 & in_c2_exe118 & in_c1_exe11931 & in_c1_exe115 & in_c0_exe410 & in_c0_exe37 & in_c0_exe25 & in_c0_exe11330 & in_c0_exe11;

    -- bubble_select_stall_entry(BITSELECT,104)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(63 downto 32));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(64 downto 64));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(65 downto 65));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(66 downto 66));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(98 downto 67));
    bubble_select_stall_entry_h <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(130 downto 99));
    bubble_select_stall_entry_i <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(162 downto 131));
    bubble_select_stall_entry_j <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(194 downto 163));
    bubble_select_stall_entry_k <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(195 downto 195));
    bubble_select_stall_entry_l <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(227 downto 196));
    bubble_select_stall_entry_m <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(259 downto 228));
    bubble_select_stall_entry_n <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(291 downto 260));
    bubble_select_stall_entry_o <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(323 downto 292));
    bubble_select_stall_entry_p <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(355 downto 324));

    -- pool_B2_merge_reg_aunroll_x(BLACKBOX,19)@0
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
    -- out out_data_out_13@1
    -- out out_data_out_14@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    thepool_B2_merge_reg_aunroll_x : pool_B2_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_m,
        in_data_in_1 => bubble_select_stall_entry_p,
        in_data_in_2 => bubble_select_stall_entry_b,
        in_data_in_3 => bubble_select_stall_entry_d,
        in_data_in_4 => bubble_select_stall_entry_e,
        in_data_in_5 => bubble_select_stall_entry_f,
        in_data_in_6 => bubble_select_stall_entry_g,
        in_data_in_7 => bubble_select_stall_entry_i,
        in_data_in_8 => bubble_select_stall_entry_k,
        in_data_in_9 => bubble_select_stall_entry_o,
        in_data_in_10 => bubble_select_stall_entry_n,
        in_data_in_11 => bubble_select_stall_entry_l,
        in_data_in_12 => bubble_select_stall_entry_c,
        in_data_in_13 => bubble_select_stall_entry_h,
        in_data_in_14 => bubble_select_stall_entry_j,
        in_stall_in => SE_out_pool_B2_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => pool_B2_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => pool_B2_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => pool_B2_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => pool_B2_merge_reg_aunroll_x_out_data_out_3,
        out_data_out_4 => pool_B2_merge_reg_aunroll_x_out_data_out_4,
        out_data_out_5 => pool_B2_merge_reg_aunroll_x_out_data_out_5,
        out_data_out_6 => pool_B2_merge_reg_aunroll_x_out_data_out_6,
        out_data_out_7 => pool_B2_merge_reg_aunroll_x_out_data_out_7,
        out_data_out_8 => pool_B2_merge_reg_aunroll_x_out_data_out_8,
        out_data_out_9 => pool_B2_merge_reg_aunroll_x_out_data_out_9,
        out_data_out_10 => pool_B2_merge_reg_aunroll_x_out_data_out_10,
        out_data_out_11 => pool_B2_merge_reg_aunroll_x_out_data_out_11,
        out_data_out_12 => pool_B2_merge_reg_aunroll_x_out_data_out_12,
        out_data_out_13 => pool_B2_merge_reg_aunroll_x_out_data_out_13,
        out_data_out_14 => pool_B2_merge_reg_aunroll_x_out_data_out_14,
        out_stall_out => pool_B2_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => pool_B2_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_pool_B2_merge_reg_aunroll_x(BITJOIN,92)
    bubble_join_pool_B2_merge_reg_aunroll_x_q <= pool_B2_merge_reg_aunroll_x_out_data_out_14 & pool_B2_merge_reg_aunroll_x_out_data_out_13 & pool_B2_merge_reg_aunroll_x_out_data_out_12 & pool_B2_merge_reg_aunroll_x_out_data_out_11 & pool_B2_merge_reg_aunroll_x_out_data_out_10 & pool_B2_merge_reg_aunroll_x_out_data_out_9 & pool_B2_merge_reg_aunroll_x_out_data_out_8 & pool_B2_merge_reg_aunroll_x_out_data_out_7 & pool_B2_merge_reg_aunroll_x_out_data_out_6 & pool_B2_merge_reg_aunroll_x_out_data_out_5 & pool_B2_merge_reg_aunroll_x_out_data_out_4 & pool_B2_merge_reg_aunroll_x_out_data_out_3 & pool_B2_merge_reg_aunroll_x_out_data_out_2 & pool_B2_merge_reg_aunroll_x_out_data_out_1 & pool_B2_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_pool_B2_merge_reg_aunroll_x(BITSELECT,93)
    bubble_select_pool_B2_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(31 downto 0));
    bubble_select_pool_B2_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(63 downto 32));
    bubble_select_pool_B2_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(95 downto 64));
    bubble_select_pool_B2_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(96 downto 96));
    bubble_select_pool_B2_merge_reg_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(97 downto 97));
    bubble_select_pool_B2_merge_reg_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(98 downto 98));
    bubble_select_pool_B2_merge_reg_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(130 downto 99));
    bubble_select_pool_B2_merge_reg_aunroll_x_i <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(162 downto 131));
    bubble_select_pool_B2_merge_reg_aunroll_x_j <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(163 downto 163));
    bubble_select_pool_B2_merge_reg_aunroll_x_k <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(195 downto 164));
    bubble_select_pool_B2_merge_reg_aunroll_x_l <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(227 downto 196));
    bubble_select_pool_B2_merge_reg_aunroll_x_m <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(259 downto 228));
    bubble_select_pool_B2_merge_reg_aunroll_x_n <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(291 downto 260));
    bubble_select_pool_B2_merge_reg_aunroll_x_o <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(323 downto 292));
    bubble_select_pool_B2_merge_reg_aunroll_x_p <= STD_LOGIC_VECTOR(bubble_join_pool_B2_merge_reg_aunroll_x_q(355 downto 324));

    -- i_inc_pool(ADD,29)@1
    i_inc_pool_a <= STD_LOGIC_VECTOR("0" & bubble_select_pool_B2_merge_reg_aunroll_x_b);
    i_inc_pool_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_pool_a) + UNSIGNED(i_inc_pool_b));
    i_inc_pool_q <= i_inc_pool_o(32 downto 0);

    -- bgTrunc_i_inc_pool_sel_x(BITSELECT,2)@1
    bgTrunc_i_inc_pool_sel_x_b <= i_inc_pool_q(31 downto 0);

    -- SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo(STALLENABLE,185)
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_fromReg0 <= (others => '0');
            SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_fromReg0 <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_toReg0;
            -- Succesor 1
            SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_fromReg1 <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_consumed0 <= (not (SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_backStall) and SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_wireValid) or SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_fromReg0;
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_consumed1 <= (not (redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_out) and SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_wireValid) or SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_fromReg1;
    -- Consuming
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_StallValid <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_backStall and SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_wireValid;
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_toReg0 <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_StallValid and SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_consumed0;
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_toReg1 <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_StallValid and SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_or0 <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_consumed0;
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_wireStall <= not (SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_consumed1 and SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_or0);
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_backStall <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_V0 <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_wireValid and not (SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_fromReg0);
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_V1 <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_wireValid and not (SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_wireValid <= redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out;

    -- SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x(STALLENABLE,159)
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_V0 <= SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_backStall <= i_load_unnamed_pool3_pool_out_o_stall or not (SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_and0 <= i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_out_o_valid;
    SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_wireValid <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_V0 and SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_and0;

    -- bubble_join_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo(BITJOIN,119)
    bubble_join_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_q <= redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_data_out;

    -- bubble_select_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo(BITSELECT,120)
    bubble_select_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_q(0 downto 0));

    -- bubble_join_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x(BITJOIN,85)
    bubble_join_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_q <= i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_out_c0_exit32_1;

    -- bubble_select_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x(BITSELECT,86)
    bubble_select_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_q(63 downto 0));

    -- i_load_unnamed_pool3_pool(BLACKBOX,30)@46
    -- in in_i_stall@20000000
    -- out out_o_readdata@182
    -- out out_o_stall@20000000
    -- out out_o_valid@182
    -- out out_unnamed_pool3_avm_address@20000000
    -- out out_unnamed_pool3_avm_burstcount@20000000
    -- out out_unnamed_pool3_avm_byteenable@20000000
    -- out out_unnamed_pool3_avm_enable@20000000
    -- out out_unnamed_pool3_avm_read@20000000
    -- out out_unnamed_pool3_avm_write@20000000
    -- out out_unnamed_pool3_avm_writedata@20000000
    thei_load_unnamed_pool3_pool : i_load_unnamed_pool3_pool53
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_b,
        in_i_predicate => bubble_select_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_b,
        in_i_stall => SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_backStall,
        in_i_valid => SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_V0,
        in_unnamed_pool3_avm_readdata => in_unnamed_pool3_avm_readdata,
        in_unnamed_pool3_avm_readdatavalid => in_unnamed_pool3_avm_readdatavalid,
        in_unnamed_pool3_avm_waitrequest => in_unnamed_pool3_avm_waitrequest,
        in_unnamed_pool3_avm_writeack => in_unnamed_pool3_avm_writeack,
        out_o_readdata => i_load_unnamed_pool3_pool_out_o_readdata,
        out_o_stall => i_load_unnamed_pool3_pool_out_o_stall,
        out_o_valid => i_load_unnamed_pool3_pool_out_o_valid,
        out_unnamed_pool3_avm_address => i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_address,
        out_unnamed_pool3_avm_burstcount => i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_burstcount,
        out_unnamed_pool3_avm_byteenable => i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_byteenable,
        out_unnamed_pool3_avm_enable => i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_enable,
        out_unnamed_pool3_avm_read => i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_read,
        out_unnamed_pool3_avm_write => i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_write,
        out_unnamed_pool3_avm_writedata => i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo(STALLENABLE,176)
    -- Valid signal propagation
    SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_V0 <= SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_backStall <= i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_out_o_stall or not (SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_and0 <= redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_out;
    SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_and1 <= i_load_unnamed_pool3_pool_out_o_valid and SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_and0;
    SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_wireValid <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_V0 and SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_and1;

    -- SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo(STALLENABLE,193)
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_fromReg0 <= (others => '0');
            SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_fromReg0 <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_toReg0;
            -- Succesor 1
            SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_fromReg1 <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_consumed0 <= (not (SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_backStall) and SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_wireValid) or SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_fromReg0;
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_consumed1 <= (not (redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_out) and SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_wireValid) or SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_fromReg1;
    -- Consuming
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_StallValid <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_backStall and SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_wireValid;
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_toReg0 <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_StallValid and SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_consumed0;
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_toReg1 <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_StallValid and SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_or0 <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_consumed0;
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_wireStall <= not (SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_consumed1 and SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_or0);
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_backStall <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_V0 <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_wireValid and not (SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_fromReg0);
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_V1 <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_wireValid and not (SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_wireValid <= redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_out;

    -- redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo(STALLFIFO,74)
    redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V9;
    redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_in <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_backStall;
    redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_j;
    redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_in_bitsignaltemp <= redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_in(0);
    redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_in_bitsignaltemp <= redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_in(0);
    redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_out(0) <= redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_out_bitsignaltemp;
    redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_out(0) <= redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_out_bitsignaltemp;
    theredist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 182,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_in_bitsignaltemp,
        stall_in => redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_j,
        valid_out => redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_valid_out_bitsignaltemp,
        stall_out => redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_out_bitsignaltemp,
        data_out => redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo(STALLFIFO,70)
    redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V6;
    redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_backStall;
    redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_g;
    redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in_bitsignaltemp <= redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in(0);
    redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in_bitsignaltemp <= redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in(0);
    redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out(0) <= redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out_bitsignaltemp;
    redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out(0) <= redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out_bitsignaltemp;
    theredist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 46,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_in_bitsignaltemp,
        stall_in => redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_g,
        valid_out => redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_valid_out_bitsignaltemp,
        stall_out => redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out_bitsignaltemp,
        data_out => redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo(BITJOIN,110)
    bubble_join_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_q <= redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_data_out;

    -- bubble_select_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo(BITSELECT,111)
    bubble_select_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_q(31 downto 0));

    -- SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0(STALLREG,314)
    SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_valid <= (others => '0');
            SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_valid <= SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backStall and (SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_valid or SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_i_valid);

            IF (SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_i_valid <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_V1;
    -- Stall signal propagation
    SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backStall <= SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_valid or not (SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_i_valid);

    -- Valid
    SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_V <= SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_valid WHEN SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_valid = "1" ELSE SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_i_valid;

    SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_D0 <= SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_data0 WHEN SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_r_valid = "1" ELSE bubble_select_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_b;

    -- SR_SE_i_exitcond_pool(STALLREG,313)
    SR_SE_i_exitcond_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_exitcond_pool_r_valid <= (others => '0');
            SR_SE_i_exitcond_pool_r_data0 <= (others => '-');
            SR_SE_i_exitcond_pool_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_exitcond_pool_r_valid <= SE_i_exitcond_pool_backStall and (SR_SE_i_exitcond_pool_r_valid or SR_SE_i_exitcond_pool_i_valid);

            IF (SR_SE_i_exitcond_pool_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_exitcond_pool_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_b);
                SR_SE_i_exitcond_pool_r_data1 <= STD_LOGIC_VECTOR(bubble_select_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_exitcond_pool_and0 <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_V0;
    SR_SE_i_exitcond_pool_i_valid <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_V0 and SR_SE_i_exitcond_pool_and0;
    -- Stall signal propagation
    SR_SE_i_exitcond_pool_backStall <= SR_SE_i_exitcond_pool_r_valid or not (SR_SE_i_exitcond_pool_i_valid);

    -- Valid
    SR_SE_i_exitcond_pool_V <= SR_SE_i_exitcond_pool_r_valid WHEN SR_SE_i_exitcond_pool_r_valid = "1" ELSE SR_SE_i_exitcond_pool_i_valid;

    -- Data0
    SR_SE_i_exitcond_pool_D0 <= SR_SE_i_exitcond_pool_r_data0 WHEN SR_SE_i_exitcond_pool_r_valid = "1" ELSE bubble_select_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_b;
    -- Data1
    SR_SE_i_exitcond_pool_D1 <= SR_SE_i_exitcond_pool_r_data1 WHEN SR_SE_i_exitcond_pool_r_valid = "1" ELSE bubble_select_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_b;

    -- SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo(STALLENABLE,178)
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_fromReg0 <= (others => '0');
            SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_fromReg0 <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_toReg0;
            -- Succesor 1
            SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_fromReg1 <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_consumed0 <= (not (SR_SE_i_exitcond_pool_backStall) and SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_wireValid) or SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_fromReg0;
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_consumed1 <= (not (SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backStall) and SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_wireValid) or SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_fromReg1;
    -- Consuming
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_StallValid <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_backStall and SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_wireValid;
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_toReg0 <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_StallValid and SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_consumed0;
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_toReg1 <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_StallValid and SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_or0 <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_consumed0;
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_wireStall <= not (SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_consumed1 and SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_or0);
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_backStall <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_V0 <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_wireValid and not (SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_fromReg0);
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_V1 <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_wireValid and not (SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_wireValid <= redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_out;

    -- redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo(STALLFIFO,66)
    redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V3;
    redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_in <= SE_out_redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_backStall;
    redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_d;
    redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_in_bitsignaltemp <= redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_in(0);
    redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_in_bitsignaltemp <= redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_in(0);
    redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_out(0) <= redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_out_bitsignaltemp;
    redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_out(0) <= redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_out_bitsignaltemp;
    theredist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 203,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_d,
        valid_out => redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_out_bitsignaltemp,
        data_out => redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo(STALLFIFO,65)
    redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V2;
    redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_in <= SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_backStall;
    redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_c;
    redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_in_bitsignaltemp <= redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_in(0);
    redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_in_bitsignaltemp <= redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_in(0);
    redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_out(0) <= redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_out_bitsignaltemp;
    redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_out(0) <= redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_out_bitsignaltemp;
    theredist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 182,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_c,
        valid_out => redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_out_bitsignaltemp,
        data_out => redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x(BLACKBOX,17)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit32_0@46
    -- out out_c0_exit32_1@46
    -- out out_o_stall@20000000
    -- out out_o_valid@46
    thei_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x : i_sfc_c0_for_body12_pool_c0_enter28_pool
    PORT MAP (
        in_c0_eni3_0 => GND_q,
        in_c0_eni3_1 => bubble_select_pool_B2_merge_reg_aunroll_x_b,
        in_c0_eni3_2 => bubble_select_pool_B2_merge_reg_aunroll_x_o,
        in_c0_eni3_3 => bubble_select_pool_B2_merge_reg_aunroll_x_p,
        in_i_stall => SE_out_i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_backStall,
        in_i_valid => SE_out_pool_B2_merge_reg_aunroll_x_V1,
        in_in_data => in_in_data,
        in_in_size => in_in_size,
        in_kernel_size => in_kernel_size,
        out_c0_exit32_1 => i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_out_c0_exit32_1,
        out_o_stall => i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_syncbuf_out_size_sync_buffer_pool(STALLENABLE,170)
    -- Valid signal propagation
    SE_out_i_syncbuf_out_size_sync_buffer_pool_V0 <= SE_out_i_syncbuf_out_size_sync_buffer_pool_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_out_size_sync_buffer_pool_backStall <= SE_i_unnamed_pool51_backStall or not (SE_out_i_syncbuf_out_size_sync_buffer_pool_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_out_size_sync_buffer_pool_wireValid <= i_syncbuf_out_size_sync_buffer_pool_out_valid_out;

    -- i_syncbuf_out_size_sync_buffer_pool(BLACKBOX,31)@203
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_out_size_sync_buffer_pool : i_syncbuf_out_size_sync_buffer_pool37
    PORT MAP (
        in_buffer_in => in_out_size,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_out_size_sync_buffer_pool_backStall,
        in_valid_in => SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1_V0,
        out_buffer_out => i_syncbuf_out_size_sync_buffer_pool_out_buffer_out,
        out_stall_out => i_syncbuf_out_size_sync_buffer_pool_out_stall_out,
        out_valid_out => i_syncbuf_out_size_sync_buffer_pool_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1(STALLENABLE,226)
    -- Valid signal propagation
    SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1_V0 <= SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1_backStall <= i_syncbuf_out_size_sync_buffer_pool_out_stall_out or not (SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1_wireValid <= bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_out;

    -- bubble_out_pool_B2_merge_reg_aunroll_x_1_reg(STALLFIFO,311)
    bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V0;
    bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_in <= SE_out_bubble_out_pool_B2_merge_reg_aunroll_x_1_backStall;
    bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp <= bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_in(0);
    bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp <= bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_in(0);
    bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_out(0) <= bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_out(0) <= bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    thebubble_out_pool_B2_merge_reg_aunroll_x_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 203,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_pool_B2_merge_reg_aunroll_x(STALLENABLE,163)
    SE_out_pool_B2_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg2 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg3 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg4 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg5 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg6 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg7 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg8 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg9 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg10 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg11 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg12 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg13 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg14 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg15 <= (others => '0');
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg16 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg2 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg3 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg4 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg5 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg5;
            -- Succesor 6
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg6 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg6;
            -- Succesor 7
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg7 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg7;
            -- Succesor 8
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg8 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg8;
            -- Succesor 9
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg9 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg9;
            -- Succesor 10
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg10 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg10;
            -- Succesor 11
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg11 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg11;
            -- Succesor 12
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg12 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg12;
            -- Succesor 13
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg13 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg13;
            -- Succesor 14
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg14 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg14;
            -- Succesor 15
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg15 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg15;
            -- Succesor 16
            SE_out_pool_B2_merge_reg_aunroll_x_fromReg16 <= SE_out_pool_B2_merge_reg_aunroll_x_toReg16;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_pool_B2_merge_reg_aunroll_x_consumed0 <= (not (bubble_out_pool_B2_merge_reg_aunroll_x_1_reg_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg0;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed1 <= (not (i_sfc_c0_for_body12_pool_c0_enter28_pool_aunroll_x_out_o_stall) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg1;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed2 <= (not (redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg2;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed3 <= (not (redist1_pool_B2_merge_reg_aunroll_x_out_data_out_2_202_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg3;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed4 <= (not (redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg4;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed5 <= (not (redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg5;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed6 <= (not (redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg6;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed7 <= (not (redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg7;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed8 <= (not (redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg8;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed9 <= (not (redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg9;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed10 <= (not (redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg10;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed11 <= (not (redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg11;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed12 <= (not (redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg12;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed13 <= (not (redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg13;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed14 <= (not (redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg14;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed15 <= (not (redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg15;
    SE_out_pool_B2_merge_reg_aunroll_x_consumed16 <= (not (redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_out) and SE_out_pool_B2_merge_reg_aunroll_x_wireValid) or SE_out_pool_B2_merge_reg_aunroll_x_fromReg16;
    -- Consuming
    SE_out_pool_B2_merge_reg_aunroll_x_StallValid <= SE_out_pool_B2_merge_reg_aunroll_x_backStall and SE_out_pool_B2_merge_reg_aunroll_x_wireValid;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg0 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed0;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg1 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed1;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg2 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed2;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg3 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed3;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg4 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed4;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg5 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed5;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg6 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed6;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg7 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed7;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg8 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed8;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg9 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed9;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg10 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed10;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg11 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed11;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg12 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed12;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg13 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed13;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg14 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed14;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg15 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed15;
    SE_out_pool_B2_merge_reg_aunroll_x_toReg16 <= SE_out_pool_B2_merge_reg_aunroll_x_StallValid and SE_out_pool_B2_merge_reg_aunroll_x_consumed16;
    -- Backward Stall generation
    SE_out_pool_B2_merge_reg_aunroll_x_or0 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed0;
    SE_out_pool_B2_merge_reg_aunroll_x_or1 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed1 and SE_out_pool_B2_merge_reg_aunroll_x_or0;
    SE_out_pool_B2_merge_reg_aunroll_x_or2 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed2 and SE_out_pool_B2_merge_reg_aunroll_x_or1;
    SE_out_pool_B2_merge_reg_aunroll_x_or3 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed3 and SE_out_pool_B2_merge_reg_aunroll_x_or2;
    SE_out_pool_B2_merge_reg_aunroll_x_or4 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed4 and SE_out_pool_B2_merge_reg_aunroll_x_or3;
    SE_out_pool_B2_merge_reg_aunroll_x_or5 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed5 and SE_out_pool_B2_merge_reg_aunroll_x_or4;
    SE_out_pool_B2_merge_reg_aunroll_x_or6 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed6 and SE_out_pool_B2_merge_reg_aunroll_x_or5;
    SE_out_pool_B2_merge_reg_aunroll_x_or7 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed7 and SE_out_pool_B2_merge_reg_aunroll_x_or6;
    SE_out_pool_B2_merge_reg_aunroll_x_or8 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed8 and SE_out_pool_B2_merge_reg_aunroll_x_or7;
    SE_out_pool_B2_merge_reg_aunroll_x_or9 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed9 and SE_out_pool_B2_merge_reg_aunroll_x_or8;
    SE_out_pool_B2_merge_reg_aunroll_x_or10 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed10 and SE_out_pool_B2_merge_reg_aunroll_x_or9;
    SE_out_pool_B2_merge_reg_aunroll_x_or11 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed11 and SE_out_pool_B2_merge_reg_aunroll_x_or10;
    SE_out_pool_B2_merge_reg_aunroll_x_or12 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed12 and SE_out_pool_B2_merge_reg_aunroll_x_or11;
    SE_out_pool_B2_merge_reg_aunroll_x_or13 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed13 and SE_out_pool_B2_merge_reg_aunroll_x_or12;
    SE_out_pool_B2_merge_reg_aunroll_x_or14 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed14 and SE_out_pool_B2_merge_reg_aunroll_x_or13;
    SE_out_pool_B2_merge_reg_aunroll_x_or15 <= SE_out_pool_B2_merge_reg_aunroll_x_consumed15 and SE_out_pool_B2_merge_reg_aunroll_x_or14;
    SE_out_pool_B2_merge_reg_aunroll_x_wireStall <= not (SE_out_pool_B2_merge_reg_aunroll_x_consumed16 and SE_out_pool_B2_merge_reg_aunroll_x_or15);
    SE_out_pool_B2_merge_reg_aunroll_x_backStall <= SE_out_pool_B2_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_pool_B2_merge_reg_aunroll_x_V0 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg0);
    SE_out_pool_B2_merge_reg_aunroll_x_V1 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg1);
    SE_out_pool_B2_merge_reg_aunroll_x_V2 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg2);
    SE_out_pool_B2_merge_reg_aunroll_x_V3 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg3);
    SE_out_pool_B2_merge_reg_aunroll_x_V4 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg4);
    SE_out_pool_B2_merge_reg_aunroll_x_V5 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg5);
    SE_out_pool_B2_merge_reg_aunroll_x_V6 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg6);
    SE_out_pool_B2_merge_reg_aunroll_x_V7 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg7);
    SE_out_pool_B2_merge_reg_aunroll_x_V8 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg8);
    SE_out_pool_B2_merge_reg_aunroll_x_V9 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg9);
    SE_out_pool_B2_merge_reg_aunroll_x_V10 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg10);
    SE_out_pool_B2_merge_reg_aunroll_x_V11 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg11);
    SE_out_pool_B2_merge_reg_aunroll_x_V12 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg12);
    SE_out_pool_B2_merge_reg_aunroll_x_V13 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg13);
    SE_out_pool_B2_merge_reg_aunroll_x_V14 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg14);
    SE_out_pool_B2_merge_reg_aunroll_x_V15 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg15);
    SE_out_pool_B2_merge_reg_aunroll_x_V16 <= SE_out_pool_B2_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B2_merge_reg_aunroll_x_fromReg16);
    -- Computing multiple Valid(s)
    SE_out_pool_B2_merge_reg_aunroll_x_wireValid <= pool_B2_merge_reg_aunroll_x_out_valid_out;

    -- redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo(STALLFIFO,82)
    redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V16;
    redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_in <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_backStall;
    redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_data_in <= bgTrunc_i_inc_pool_sel_x_b;
    redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_in_bitsignaltemp <= redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_in(0);
    redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_in_bitsignaltemp <= redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_in(0);
    redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_out(0) <= redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_out_bitsignaltemp;
    redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_out(0) <= redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_out_bitsignaltemp;
    theredist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 203,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_in_bitsignaltemp,
        stall_in => redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_in_bitsignaltemp,
        data_in => bgTrunc_i_inc_pool_sel_x_b,
        valid_out => redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_out_bitsignaltemp,
        stall_out => redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_stall_out_bitsignaltemp,
        data_out => redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo(BITJOIN,155)
    bubble_join_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_q <= redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_data_out;

    -- bubble_select_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo(BITSELECT,156)
    bubble_select_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_q(31 downto 0));

    -- SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo(STALLENABLE,209)
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_fromReg0 <= (others => '0');
            SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_fromReg0 <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_toReg0;
            -- Succesor 1
            SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_fromReg1 <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_consumed0 <= (not (SR_SE_i_exitcond_pool_backStall) and SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_wireValid) or SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_fromReg0;
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_consumed1 <= (not (SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backStall) and SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_wireValid) or SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_fromReg1;
    -- Consuming
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_StallValid <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_backStall and SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_wireValid;
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_toReg0 <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_StallValid and SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_consumed0;
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_toReg1 <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_StallValid and SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_or0 <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_consumed0;
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_wireStall <= not (SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_consumed1 and SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_or0);
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_backStall <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_V0 <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_wireValid and not (SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_fromReg0);
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_V1 <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_wireValid and not (SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_wireValid <= redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_valid_out;

    -- SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0(STALLREG,315)
    SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_valid <= (others => '0');
            SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_valid <= SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backStall and (SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_valid or SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_i_valid);

            IF (SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_i_valid <= SE_out_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_V1;
    -- Stall signal propagation
    SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backStall <= SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_valid or not (SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_i_valid);

    -- Valid
    SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_V <= SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_valid WHEN SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_valid = "1" ELSE SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_i_valid;

    SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_D0 <= SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_data0 WHEN SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_r_valid = "1" ELSE bubble_select_redist17_bgTrunc_i_inc_pool_sel_x_b_202_fifo_b;

    -- SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0(STALLENABLE,210)
    -- Valid signal propagation
    SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_V0 <= SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_R_v_0;
    -- Stall signal propagation
    SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_s_tv_0 <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall and SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_R_v_0;
    -- Backward Enable generation
    SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backEN <= not (SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_v_s_0 <= SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backEN and SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_V;
    -- Backward Stall generation
    SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backStall <= not (SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backEN);
    SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backEN = "0") THEN
                SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_R_v_0 <= SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_R_v_0 and SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_s_tv_0;
            ELSE
                SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_R_v_0 <= SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0(STALLENABLE,179)
    -- Valid signal propagation
    SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_V0 <= SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_R_v_0;
    -- Stall signal propagation
    SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_s_tv_0 <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall and SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_R_v_0;
    -- Backward Enable generation
    SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backEN <= not (SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_v_s_0 <= SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backEN and SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_V;
    -- Backward Stall generation
    SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backStall <= not (SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backEN);
    SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backEN = "0") THEN
                SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_R_v_0 <= SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_R_v_0 and SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_s_tv_0;
            ELSE
                SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_R_v_0 <= SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo(BITJOIN,131)
    bubble_join_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_q <= redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_data_out;

    -- bubble_select_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo(BITSELECT,132)
    bubble_select_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_q(0 downto 0));

    -- bubble_join_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo(BITJOIN,107)
    bubble_join_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_q <= redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_data_out;

    -- bubble_select_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo(BITSELECT,108)
    bubble_select_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_q(31 downto 0));

    -- bubble_join_i_load_unnamed_pool3_pool(BITJOIN,96)
    bubble_join_i_load_unnamed_pool3_pool_q <= i_load_unnamed_pool3_pool_out_o_readdata;

    -- bubble_select_i_load_unnamed_pool3_pool(BITSELECT,97)
    bubble_select_i_load_unnamed_pool3_pool_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_pool3_pool_q(31 downto 0));

    -- i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x(BLACKBOX,18)@182
    -- in in_i_stall@20000000
    -- out out_c1_exit40_0@204
    -- out out_c1_exit40_1@204
    -- out out_o_stall@20000000
    -- out out_o_valid@204
    thei_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x : i_sfc_c1_for_body12_pool_c1_enter36_pool
    PORT MAP (
        in_c1_eni3_0 => GND_q,
        in_c1_eni3_1 => bubble_select_i_load_unnamed_pool3_pool_b,
        in_c1_eni3_2 => bubble_select_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_b,
        in_c1_eni3_3 => bubble_select_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_b,
        in_i_stall => SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall,
        in_i_valid => SE_out_redist0_pool_B2_merge_reg_aunroll_x_out_data_out_1_181_fifo_V0,
        out_c1_exit40_1 => i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_out_c1_exit40_1,
        out_o_stall => i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo(STALLFIFO,68)
    redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V4;
    redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_e;
    redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_in_bitsignaltemp <= redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_in(0);
    redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_in_bitsignaltemp <= redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_in(0);
    redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_out(0) <= redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_out_bitsignaltemp;
    redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_out(0) <= redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_out_bitsignaltemp;
    theredist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 204,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_e,
        valid_out => redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_stall_out_bitsignaltemp,
        data_out => redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_i_unnamed_pool51(STALLENABLE,171)
    -- Valid signal propagation
    SE_i_unnamed_pool51_V0 <= SE_i_unnamed_pool51_R_v_0;
    -- Stall signal propagation
    SE_i_unnamed_pool51_s_tv_0 <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall and SE_i_unnamed_pool51_R_v_0;
    -- Backward Enable generation
    SE_i_unnamed_pool51_backEN <= not (SE_i_unnamed_pool51_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_unnamed_pool51_v_s_0 <= SE_i_unnamed_pool51_backEN and SE_out_i_syncbuf_out_size_sync_buffer_pool_V0;
    -- Backward Stall generation
    SE_i_unnamed_pool51_backStall <= not (SE_i_unnamed_pool51_v_s_0);
    SE_i_unnamed_pool51_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_unnamed_pool51_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_unnamed_pool51_backEN = "0") THEN
                SE_i_unnamed_pool51_R_v_0 <= SE_i_unnamed_pool51_R_v_0 and SE_i_unnamed_pool51_s_tv_0;
            ELSE
                SE_i_unnamed_pool51_R_v_0 <= SE_i_unnamed_pool51_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_exitcond_pool(STALLENABLE,165)
    -- Valid signal propagation
    SE_i_exitcond_pool_V0 <= SE_i_exitcond_pool_R_v_0;
    -- Stall signal propagation
    SE_i_exitcond_pool_s_tv_0 <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall and SE_i_exitcond_pool_R_v_0;
    -- Backward Enable generation
    SE_i_exitcond_pool_backEN <= not (SE_i_exitcond_pool_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_exitcond_pool_v_s_0 <= SE_i_exitcond_pool_backEN and SR_SE_i_exitcond_pool_V;
    -- Backward Stall generation
    SE_i_exitcond_pool_backStall <= not (SE_i_exitcond_pool_backEN);
    SE_i_exitcond_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_exitcond_pool_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_exitcond_pool_backEN = "0") THEN
                SE_i_exitcond_pool_R_v_0 <= SE_i_exitcond_pool_R_v_0 and SE_i_exitcond_pool_s_tv_0;
            ELSE
                SE_i_exitcond_pool_R_v_0 <= SE_i_exitcond_pool_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo(STALLFIFO,69)
    redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V5;
    redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_f;
    redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_in_bitsignaltemp <= redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_in(0);
    redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_in_bitsignaltemp <= redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_in(0);
    redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_out(0) <= redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_out_bitsignaltemp;
    redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_out(0) <= redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_out_bitsignaltemp;
    theredist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 204,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_f,
        valid_out => redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_stall_out_bitsignaltemp,
        data_out => redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo(STALLFIFO,71)
    redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_in <= SE_out_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_V1;
    redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_data_in <= bubble_select_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_b;
    redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_in_bitsignaltemp <= redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_in(0);
    redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_in_bitsignaltemp <= redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_in(0);
    redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_out(0) <= redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_out_bitsignaltemp;
    redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_out(0) <= redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_out_bitsignaltemp;
    theredist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 159,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist5_pool_B2_merge_reg_aunroll_x_out_data_out_5_45_fifo_b,
        valid_out => redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_stall_out_bitsignaltemp,
        data_out => redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo(STALLFIFO,72)
    redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V7;
    redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_h;
    redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_in_bitsignaltemp <= redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_in(0);
    redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_in_bitsignaltemp <= redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_in(0);
    redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_out(0) <= redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_out_bitsignaltemp;
    redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_out(0) <= redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_out_bitsignaltemp;
    theredist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 204,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_h,
        valid_out => redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_stall_out_bitsignaltemp,
        data_out => redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo(STALLFIFO,73)
    redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V8;
    redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_i;
    redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_in_bitsignaltemp <= redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_in(0);
    redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_in_bitsignaltemp <= redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_in(0);
    redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_out(0) <= redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_out_bitsignaltemp;
    redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_out(0) <= redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_out_bitsignaltemp;
    theredist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 204,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_i,
        valid_out => redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_stall_out_bitsignaltemp,
        data_out => redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo(STALLFIFO,75)
    redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_in <= SE_out_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_V1;
    redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_data_in <= bubble_select_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_b;
    redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_in_bitsignaltemp <= redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_in(0);
    redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_in_bitsignaltemp <= redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_in(0);
    redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_out(0) <= redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_out_bitsignaltemp;
    redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_out(0) <= redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_out_bitsignaltemp;
    theredist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 23,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_redist9_pool_B2_merge_reg_aunroll_x_out_data_out_8_181_fifo_b,
        valid_out => redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_stall_out_bitsignaltemp,
        data_out => redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo(STALLFIFO,76)
    redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V10;
    redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_k;
    redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_in_bitsignaltemp <= redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_in(0);
    redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_in_bitsignaltemp <= redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_in(0);
    redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_out(0) <= redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_out_bitsignaltemp;
    redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_out(0) <= redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_out_bitsignaltemp;
    theredist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 204,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_k,
        valid_out => redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_stall_out_bitsignaltemp,
        data_out => redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo(STALLFIFO,77)
    redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V11;
    redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_l;
    redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_in_bitsignaltemp <= redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_in(0);
    redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_in_bitsignaltemp <= redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_in(0);
    redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_out(0) <= redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_out_bitsignaltemp;
    redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_out(0) <= redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_out_bitsignaltemp;
    theredist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 204,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_l,
        valid_out => redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_stall_out_bitsignaltemp,
        data_out => redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo(STALLFIFO,78)
    redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V12;
    redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_m;
    redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_in_bitsignaltemp <= redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_in(0);
    redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_in_bitsignaltemp <= redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_in(0);
    redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_out(0) <= redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_out_bitsignaltemp;
    redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_out(0) <= redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_out_bitsignaltemp;
    theredist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 204,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_m,
        valid_out => redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_stall_out_bitsignaltemp,
        data_out => redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo(STALLFIFO,79)
    redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V13;
    redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_n;
    redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_in_bitsignaltemp <= redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_in(0);
    redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_in_bitsignaltemp <= redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_in(0);
    redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_out(0) <= redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_out_bitsignaltemp;
    redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_out(0) <= redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_out_bitsignaltemp;
    theredist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 204,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_n,
        valid_out => redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_stall_out_bitsignaltemp,
        data_out => redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo(STALLFIFO,80)
    redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V14;
    redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_o;
    redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_in_bitsignaltemp <= redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_in(0);
    redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_in_bitsignaltemp <= redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_in(0);
    redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_out(0) <= redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_out_bitsignaltemp;
    redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_out(0) <= redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_out_bitsignaltemp;
    theredist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 204,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_o,
        valid_out => redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_stall_out_bitsignaltemp,
        data_out => redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo(STALLFIFO,81)
    redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_in <= SE_out_pool_B2_merge_reg_aunroll_x_V15;
    redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_in <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall;
    redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_data_in <= bubble_select_pool_B2_merge_reg_aunroll_x_p;
    redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_in_bitsignaltemp <= redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_in(0);
    redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_in_bitsignaltemp <= redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_in(0);
    redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_out(0) <= redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_out_bitsignaltemp;
    redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_out(0) <= redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_out_bitsignaltemp;
    theredist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 204,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_in_bitsignaltemp,
        stall_in => redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_pool_B2_merge_reg_aunroll_x_p,
        valid_out => redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_out_bitsignaltemp,
        stall_out => redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_stall_out_bitsignaltemp,
        data_out => redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo(STALLENABLE,207)
    -- Valid signal propagation
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_V0 <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_backStall <= in_stall_in or not (SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and0 <= redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_valid_out;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and1 <= redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and0;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and2 <= redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and1;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and3 <= redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and2;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and4 <= redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and3;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and5 <= redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and4;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and6 <= redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and5;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and7 <= redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and6;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and8 <= redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and7;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and9 <= redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and8;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and10 <= redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and9;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and11 <= SE_i_exitcond_pool_V0 and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and10;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and12 <= SE_i_unnamed_pool51_V0 and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and11;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and13 <= redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_valid_out and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and12;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and14 <= i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_out_o_valid and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and13;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and15 <= SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_V0 and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and14;
    SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_wireValid <= SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_V0 and SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_and15;

    -- i_exitcond_pool(LOGICAL,28)@203 + 1
    i_exitcond_pool_qi <= "1" WHEN SR_SE_i_exitcond_pool_D0 = SR_SE_i_exitcond_pool_D1 ELSE "0";
    i_exitcond_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond_pool_qi, xout => i_exitcond_pool_q, ena => SE_i_exitcond_pool_backEN(0), clk => clock, aclr => resetn );

    -- i_exitcond_guard_pool(LOGICAL,27)@204
    i_exitcond_guard_pool_q <= i_exitcond_pool_q or bubble_select_redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_b;

    -- i_unnamed_pool59(LOGICAL,33)@204
    i_unnamed_pool59_q <= i_exitcond_guard_pool_q or i_unnamed_pool51_c;

    -- bubble_join_i_syncbuf_out_size_sync_buffer_pool(BITJOIN,99)
    bubble_join_i_syncbuf_out_size_sync_buffer_pool_q <= i_syncbuf_out_size_sync_buffer_pool_out_buffer_out;

    -- bubble_select_i_syncbuf_out_size_sync_buffer_pool(BITSELECT,100)
    bubble_select_i_syncbuf_out_size_sync_buffer_pool_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_out_size_sync_buffer_pool_q(31 downto 0));

    -- i_unnamed_pool51(COMPARE,32)@203 + 1
    i_unnamed_pool51_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => bubble_select_i_syncbuf_out_size_sync_buffer_pool_b(31)) & bubble_select_i_syncbuf_out_size_sync_buffer_pool_b));
    i_unnamed_pool51_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_unnamed_pool51_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_pool51_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_unnamed_pool51_backEN = "1") THEN
                i_unnamed_pool51_o <= STD_LOGIC_VECTOR(SIGNED(i_unnamed_pool51_a) - SIGNED(i_unnamed_pool51_b));
            END IF;
        END IF;
    END PROCESS;
    i_unnamed_pool51_c(0) <= i_unnamed_pool51_o(33);

    -- bubble_join_redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo(BITJOIN,137)
    bubble_join_redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_q <= redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_data_out;

    -- bubble_select_redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo(BITSELECT,138)
    bubble_select_redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_q(31 downto 0));

    -- bubble_join_redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo(BITJOIN,140)
    bubble_join_redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_q <= redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_data_out;

    -- bubble_select_redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo(BITSELECT,141)
    bubble_select_redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_q(31 downto 0));

    -- redist18_bgTrunc_i_inc_pool_sel_x_b_203_0(REG,83)
    redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_backEN = "1") THEN
                redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_q <= STD_LOGIC_VECTOR(SR_SE_redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo(BITJOIN,143)
    bubble_join_redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_q <= redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_data_out;

    -- bubble_select_redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo(BITSELECT,144)
    bubble_select_redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_q(31 downto 0));

    -- bubble_join_redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo(BITJOIN,134)
    bubble_join_redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_q <= redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_data_out;

    -- bubble_select_redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo(BITSELECT,135)
    bubble_select_redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_q(0 downto 0));

    -- bubble_join_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo(BITJOIN,152)
    bubble_join_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_q <= redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_data_out;

    -- bubble_select_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo(BITSELECT,153)
    bubble_select_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_q(31 downto 0));

    -- bubble_join_redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo(BITJOIN,128)
    bubble_join_redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_q <= redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_data_out;

    -- bubble_select_redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo(BITSELECT,129)
    bubble_select_redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_q(31 downto 0));

    -- bubble_join_i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x(BITJOIN,88)
    bubble_join_i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_q <= i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_out_c1_exit40_1;

    -- bubble_select_i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x(BITSELECT,89)
    bubble_select_i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_q(31 downto 0));

    -- bubble_join_redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo(BITJOIN,149)
    bubble_join_redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_q <= redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_data_out;

    -- bubble_select_redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo(BITSELECT,150)
    bubble_select_redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_q(31 downto 0));

    -- bubble_join_redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo(BITJOIN,125)
    bubble_join_redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_q <= redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_data_out;

    -- bubble_select_redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo(BITSELECT,126)
    bubble_select_redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_q(31 downto 0));

    -- bubble_join_redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo(BITJOIN,122)
    bubble_join_redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_q <= redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_data_out;

    -- bubble_select_redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo(BITSELECT,123)
    bubble_select_redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_q(0 downto 0));

    -- bubble_join_redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo(BITJOIN,116)
    bubble_join_redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_q <= redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_data_out;

    -- bubble_select_redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo(BITSELECT,117)
    bubble_select_redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_q(0 downto 0));

    -- bubble_join_redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo(BITJOIN,113)
    bubble_join_redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_q <= redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_data_out;

    -- bubble_select_redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo(BITSELECT,114)
    bubble_select_redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_q(0 downto 0));

    -- bubble_join_redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo(BITJOIN,146)
    bubble_join_redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_q <= redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_data_out;

    -- bubble_select_redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo(BITSELECT,147)
    bubble_select_redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_q(31 downto 0));

    -- redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0(REG,67)
    redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_backEN = "1") THEN
                redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_q <= STD_LOGIC_VECTOR(SR_SE_redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- dupName_0_sync_out_x(GPOUT,7)@204
    out_c0_exe11 <= redist2_pool_B2_merge_reg_aunroll_x_out_data_out_2_203_0_q;
    out_c0_exe11330 <= bubble_select_redist14_pool_B2_merge_reg_aunroll_x_out_data_out_12_203_fifo_b;
    out_c0_exe25 <= bubble_select_redist3_pool_B2_merge_reg_aunroll_x_out_data_out_3_203_fifo_b;
    out_c0_exe37 <= bubble_select_redist4_pool_B2_merge_reg_aunroll_x_out_data_out_4_203_fifo_b;
    out_c0_exe410 <= bubble_select_redist6_pool_B2_merge_reg_aunroll_x_out_data_out_5_203_fifo_b;
    out_c1_exe115 <= bubble_select_redist7_pool_B2_merge_reg_aunroll_x_out_data_out_6_203_fifo_b;
    out_c1_exe11931 <= bubble_select_redist15_pool_B2_merge_reg_aunroll_x_out_data_out_13_203_fifo_b;
    out_c1_exe141 <= bubble_select_i_sfc_c1_for_body12_pool_c1_enter36_pool_aunroll_x_b;
    out_c2_exe118 <= bubble_select_redist8_pool_B2_merge_reg_aunroll_x_out_data_out_7_203_fifo_b;
    out_c2_exe12532 <= bubble_select_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_b;
    out_cmp619 <= bubble_select_redist10_pool_B2_merge_reg_aunroll_x_out_data_out_8_203_fifo_b;
    out_col_1728 <= bubble_select_redist13_pool_B2_merge_reg_aunroll_x_out_data_out_11_203_fifo_b;
    out_inc <= redist18_bgTrunc_i_inc_pool_sel_x_b_203_0_q;
    out_row_0926 <= bubble_select_redist12_pool_B2_merge_reg_aunroll_x_out_data_out_10_203_fifo_b;
    out_tmp_223 <= bubble_select_redist11_pool_B2_merge_reg_aunroll_x_out_data_out_9_203_fifo_b;
    out_unnamed_pool1 <= i_unnamed_pool51_c;
    out_unnamed_pool2 <= i_unnamed_pool59_q;
    out_valid_out <= SE_out_redist16_pool_B2_merge_reg_aunroll_x_out_data_out_14_203_fifo_V0;

    -- ext_sig_sync_out(GPOUT,26)
    out_unnamed_pool3_avm_address <= i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_address;
    out_unnamed_pool3_avm_enable <= i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_enable;
    out_unnamed_pool3_avm_read <= i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_read;
    out_unnamed_pool3_avm_write <= i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_write;
    out_unnamed_pool3_avm_writedata <= i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_writedata;
    out_unnamed_pool3_avm_byteenable <= i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_byteenable;
    out_unnamed_pool3_avm_burstcount <= i_load_unnamed_pool3_pool_out_unnamed_pool3_avm_burstcount;

    -- sync_out(GPOUT,44)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
