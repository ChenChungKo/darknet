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

-- VHDL created from bb_pool_B0_stall_region
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

entity bb_pool_B0_stall_region is
    port (
        in_kernel_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_2 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_out_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_pool_type : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_pool_B0_stall_region;

architecture normal of bb_pool_B0_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_entry_pool_c0_enter_pool is
        port (
            in_unnamed_pool0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_kernel_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_entry_pool_c1_enter_pool is
        port (
            in_c1_eni1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni1_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_out_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c2_entry_pool_c2_enter_pool is
        port (
            in_c2_eni1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c2_eni1_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_in_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c2_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c2_exit_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component pool_B0_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_pool_type_sync_buffer_pool0 is
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
    signal i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_out_c1_exit_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_out_c2_exit_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B0_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_B0_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B0_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal c_float_0_000000e_00_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_float_1_000000e_02_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cmp6_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp6_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_pool_type_sync_buffer_pool_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pool_type_sync_buffer_pool_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_pool_type_sync_buffer_pool_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp_2_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp_2_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_q : STD_LOGIC_VECTOR (34 downto 0);
    signal bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_pool_B0_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_pool_B0_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_pool_type_sync_buffer_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_pool_type_sync_buffer_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_pool_B0_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp6_pool_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp6_pool_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp6_pool_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp6_pool_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp6_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp6_pool_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_pool_type_sync_buffer_pool_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_pool_type_sync_buffer_pool_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_pool_type_sync_buffer_pool_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp : std_logic;

begin


    -- SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1(STALLENABLE,82)
    -- Valid signal propagation
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_V0 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_0;
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_V1 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_1;
    -- Stall signal propagation
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_s_tv_0 <= i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_out_o_stall and SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_0;
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_s_tv_1 <= i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_out_o_stall and SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_1;
    -- Backward Enable generation
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_or0 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_s_tv_0;
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_backEN <= not (SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_s_tv_1 or SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_v_s_0 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_backEN and SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_V0;
    -- Backward Stall generation
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_backStall <= not (SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_v_s_0);
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_0 <= (others => '0');
            SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_backEN = "0") THEN
                SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_0 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_0 and SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_s_tv_0;
            ELSE
                SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_0 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_v_s_0;
            END IF;

            IF (SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_backEN = "0") THEN
                SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_1 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_1 and SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_s_tv_1;
            ELSE
                SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_R_v_1 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0(STALLENABLE,81)
    -- Valid signal propagation
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_V0 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_R_v_0;
    -- Stall signal propagation
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_s_tv_0 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_backStall and SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_R_v_0;
    -- Backward Enable generation
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_backEN <= not (SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_v_s_0 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_backEN and SE_out_pool_B0_merge_reg_aunroll_x_V2;
    -- Backward Stall generation
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_backStall <= not (SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_v_s_0);
    SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_backEN = "0") THEN
                SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_R_v_0 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_R_v_0 and SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_s_tv_0;
            ELSE
                SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_R_v_0 <= SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_stall_entry(STALLENABLE,79)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= pool_B0_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,62)
    bubble_join_stall_entry_q <= in_global_id_0;

    -- bubble_select_stall_entry(BITSELECT,63)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));

    -- pool_B0_merge_reg_aunroll_x(BLACKBOX,18)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    thepool_B0_merge_reg_aunroll_x : pool_B0_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_pool_B0_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => pool_B0_merge_reg_aunroll_x_out_data_out_0,
        out_stall_out => pool_B0_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => pool_B0_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_pool_B0_merge_reg_aunroll_x(STALLENABLE,72)
    SE_out_pool_B0_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_pool_B0_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_pool_B0_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_pool_B0_merge_reg_aunroll_x_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_pool_B0_merge_reg_aunroll_x_fromReg0 <= SE_out_pool_B0_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_pool_B0_merge_reg_aunroll_x_fromReg1 <= SE_out_pool_B0_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_pool_B0_merge_reg_aunroll_x_fromReg2 <= SE_out_pool_B0_merge_reg_aunroll_x_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_pool_B0_merge_reg_aunroll_x_consumed0 <= (not (i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_o_stall) and SE_out_pool_B0_merge_reg_aunroll_x_wireValid) or SE_out_pool_B0_merge_reg_aunroll_x_fromReg0;
    SE_out_pool_B0_merge_reg_aunroll_x_consumed1 <= (not (bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_out) and SE_out_pool_B0_merge_reg_aunroll_x_wireValid) or SE_out_pool_B0_merge_reg_aunroll_x_fromReg1;
    SE_out_pool_B0_merge_reg_aunroll_x_consumed2 <= (not (SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_backStall) and SE_out_pool_B0_merge_reg_aunroll_x_wireValid) or SE_out_pool_B0_merge_reg_aunroll_x_fromReg2;
    -- Consuming
    SE_out_pool_B0_merge_reg_aunroll_x_StallValid <= SE_out_pool_B0_merge_reg_aunroll_x_backStall and SE_out_pool_B0_merge_reg_aunroll_x_wireValid;
    SE_out_pool_B0_merge_reg_aunroll_x_toReg0 <= SE_out_pool_B0_merge_reg_aunroll_x_StallValid and SE_out_pool_B0_merge_reg_aunroll_x_consumed0;
    SE_out_pool_B0_merge_reg_aunroll_x_toReg1 <= SE_out_pool_B0_merge_reg_aunroll_x_StallValid and SE_out_pool_B0_merge_reg_aunroll_x_consumed1;
    SE_out_pool_B0_merge_reg_aunroll_x_toReg2 <= SE_out_pool_B0_merge_reg_aunroll_x_StallValid and SE_out_pool_B0_merge_reg_aunroll_x_consumed2;
    -- Backward Stall generation
    SE_out_pool_B0_merge_reg_aunroll_x_or0 <= SE_out_pool_B0_merge_reg_aunroll_x_consumed0;
    SE_out_pool_B0_merge_reg_aunroll_x_or1 <= SE_out_pool_B0_merge_reg_aunroll_x_consumed1 and SE_out_pool_B0_merge_reg_aunroll_x_or0;
    SE_out_pool_B0_merge_reg_aunroll_x_wireStall <= not (SE_out_pool_B0_merge_reg_aunroll_x_consumed2 and SE_out_pool_B0_merge_reg_aunroll_x_or1);
    SE_out_pool_B0_merge_reg_aunroll_x_backStall <= SE_out_pool_B0_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_pool_B0_merge_reg_aunroll_x_V0 <= SE_out_pool_B0_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B0_merge_reg_aunroll_x_fromReg0);
    SE_out_pool_B0_merge_reg_aunroll_x_V1 <= SE_out_pool_B0_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B0_merge_reg_aunroll_x_fromReg1);
    SE_out_pool_B0_merge_reg_aunroll_x_V2 <= SE_out_pool_B0_merge_reg_aunroll_x_wireValid and not (SE_out_pool_B0_merge_reg_aunroll_x_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_pool_B0_merge_reg_aunroll_x_wireValid <= pool_B0_merge_reg_aunroll_x_out_valid_out;

    -- bubble_out_pool_B0_merge_reg_aunroll_x_1_reg(STALLFIFO,121)
    bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_in <= SE_out_pool_B0_merge_reg_aunroll_x_V1;
    bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_in <= SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1_backStall;
    bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp <= bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_in(0);
    bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp <= bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_in(0);
    bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_out(0) <= bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_out(0) <= bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    thebubble_out_pool_B0_merge_reg_aunroll_x_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 8,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1(STALLENABLE,106)
    -- Valid signal propagation
    SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1_V0 <= SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1_backStall <= i_syncbuf_pool_type_sync_buffer_pool_out_stall_out or not (SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1_wireValid <= bubble_out_pool_B0_merge_reg_aunroll_x_1_reg_valid_out;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_syncbuf_pool_type_sync_buffer_pool(BLACKBOX,26)@8
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_pool_type_sync_buffer_pool : i_syncbuf_pool_type_sync_buffer_pool0
    PORT MAP (
        in_buffer_in => in_pool_type,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_pool_type_sync_buffer_pool_backStall,
        in_valid_in => SE_out_bubble_out_pool_B0_merge_reg_aunroll_x_1_V0,
        out_buffer_out => i_syncbuf_pool_type_sync_buffer_pool_out_buffer_out,
        out_stall_out => i_syncbuf_pool_type_sync_buffer_pool_out_stall_out,
        out_valid_out => i_syncbuf_pool_type_sync_buffer_pool_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_syncbuf_pool_type_sync_buffer_pool(STALLENABLE,77)
    -- Valid signal propagation
    SE_out_i_syncbuf_pool_type_sync_buffer_pool_V0 <= SE_out_i_syncbuf_pool_type_sync_buffer_pool_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_pool_type_sync_buffer_pool_backStall <= SE_i_cmp6_pool_backStall or not (SE_out_i_syncbuf_pool_type_sync_buffer_pool_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_pool_type_sync_buffer_pool_wireValid <= i_syncbuf_pool_type_sync_buffer_pool_out_valid_out;

    -- SE_i_cmp6_pool(STALLENABLE,75)
    -- Valid signal propagation
    SE_i_cmp6_pool_V0 <= SE_i_cmp6_pool_R_v_0;
    -- Stall signal propagation
    SE_i_cmp6_pool_s_tv_0 <= SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_backStall and SE_i_cmp6_pool_R_v_0;
    -- Backward Enable generation
    SE_i_cmp6_pool_backEN <= not (SE_i_cmp6_pool_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_cmp6_pool_v_s_0 <= SE_i_cmp6_pool_backEN and SE_out_i_syncbuf_pool_type_sync_buffer_pool_V0;
    -- Backward Stall generation
    SE_i_cmp6_pool_backStall <= not (SE_i_cmp6_pool_v_s_0);
    SE_i_cmp6_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_cmp6_pool_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp6_pool_backEN = "0") THEN
                SE_i_cmp6_pool_R_v_0 <= SE_i_cmp6_pool_R_v_0 and SE_i_cmp6_pool_s_tv_0;
            ELSE
                SE_i_cmp6_pool_R_v_0 <= SE_i_cmp6_pool_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x(BLACKBOX,15)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit_0@9
    -- out out_c0_exit_1@9
    -- out out_c0_exit_2@9
    -- out out_c0_exit_3@9
    -- out out_c0_exit_4@9
    -- out out_o_stall@20000000
    -- out out_o_valid@9
    thei_sfc_c0_entry_pool_c0_enter_pool_aunroll_x : i_sfc_c0_entry_pool_c0_enter_pool
    PORT MAP (
        in_unnamed_pool0_0 => GND_q,
        in_i_stall => SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_backStall,
        in_i_valid => SE_out_pool_B0_merge_reg_aunroll_x_V0,
        in_kernel_size => in_kernel_size,
        in_out_size => in_out_size,
        out_c0_exit_1 => i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_1,
        out_c0_exit_2 => i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_2,
        out_c0_exit_3 => i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_3,
        out_c0_exit_4 => i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_4,
        out_o_stall => i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_pool_B0_merge_reg_aunroll_x(BITJOIN,53)
    bubble_join_pool_B0_merge_reg_aunroll_x_q <= pool_B0_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_pool_B0_merge_reg_aunroll_x(BITSELECT,54)
    bubble_select_pool_B0_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_pool_B0_merge_reg_aunroll_x_q(31 downto 0));

    -- redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0(REG,38)
    redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_backEN = "1") THEN
                redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_q <= STD_LOGIC_VECTOR(bubble_select_pool_B0_merge_reg_aunroll_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1(REG,39)
    redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_backEN = "1") THEN
                redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_q <= STD_LOGIC_VECTOR(redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x(BLACKBOX,16)@3
    -- in in_i_stall@20000000
    -- out out_c1_exit_0@9
    -- out out_c1_exit_1@9
    -- out out_o_stall@20000000
    -- out out_o_valid@9
    thei_sfc_c1_entry_pool_c1_enter_pool_aunroll_x : i_sfc_c1_entry_pool_c1_enter_pool
    PORT MAP (
        in_c1_eni1_0 => GND_q,
        in_c1_eni1_1 => redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_q,
        in_i_stall => SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_backStall,
        in_i_valid => SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_V0,
        in_out_size => in_out_size,
        out_c1_exit_1 => i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_out_c1_exit_1,
        out_o_stall => i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x(BLACKBOX,17)@3
    -- in in_i_stall@20000000
    -- out out_c2_exit_0@9
    -- out out_c2_exit_1@9
    -- out out_o_stall@20000000
    -- out out_o_valid@9
    thei_sfc_c2_entry_pool_c2_enter_pool_aunroll_x : i_sfc_c2_entry_pool_c2_enter_pool
    PORT MAP (
        in_c2_eni1_0 => GND_q,
        in_c2_eni1_1 => redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_q,
        in_i_stall => SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_backStall,
        in_i_valid => SE_redist0_pool_B0_merge_reg_aunroll_x_out_data_out_0_2_1_V1,
        in_in_size => in_in_size,
        out_c2_exit_1 => i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_out_c2_exit_1,
        out_o_stall => i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x(STALLENABLE,70)
    -- Valid signal propagation
    SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_V0 <= SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_backStall <= in_stall_in or not (SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_and0 <= i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_out_o_valid;
    SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_and1 <= i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_out_o_valid and SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_and0;
    SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_and2 <= i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_o_valid and SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_and1;
    SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_wireValid <= SE_i_cmp6_pool_V0 and SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_and2;

    -- c_float_0_000000e_00(FLOATCONSTANT,19)
    c_float_0_000000e_00_q <= "00000000000000000000000000000000";

    -- c_float_1_000000e_02(FLOATCONSTANT,20)
    c_float_1_000000e_02_q <= "11000010110010000000000000000000";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_tmp_2_pool(MUX,27)@9
    i_tmp_2_pool_s <= i_cmp6_pool_q;
    i_tmp_2_pool_combproc: PROCESS (i_tmp_2_pool_s, c_float_1_000000e_02_q, c_float_0_000000e_00_q)
    BEGIN
        CASE (i_tmp_2_pool_s) IS
            WHEN "0" => i_tmp_2_pool_q <= c_float_1_000000e_02_q;
            WHEN "1" => i_tmp_2_pool_q <= c_float_0_000000e_00_q;
            WHEN OTHERS => i_tmp_2_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i32_1gr(CONSTANT,22)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- bubble_join_i_syncbuf_pool_type_sync_buffer_pool(BITJOIN,58)
    bubble_join_i_syncbuf_pool_type_sync_buffer_pool_q <= i_syncbuf_pool_type_sync_buffer_pool_out_buffer_out;

    -- bubble_select_i_syncbuf_pool_type_sync_buffer_pool(BITSELECT,59)
    bubble_select_i_syncbuf_pool_type_sync_buffer_pool_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_pool_type_sync_buffer_pool_q(31 downto 0));

    -- i_cmp6_pool(LOGICAL,25)@8 + 1
    i_cmp6_pool_qi <= "1" WHEN bubble_select_i_syncbuf_pool_type_sync_buffer_pool_b = c_i32_1gr_q ELSE "0";
    i_cmp6_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp6_pool_qi, xout => i_cmp6_pool_q, ena => SE_i_cmp6_pool_backEN(0), clk => clock, aclr => resetn );

    -- bubble_join_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x(BITJOIN,49)
    bubble_join_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_q <= i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_out_c2_exit_1;

    -- bubble_select_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x(BITSELECT,50)
    bubble_select_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_q(31 downto 0));

    -- bubble_join_i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x(BITJOIN,45)
    bubble_join_i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_q <= i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_out_c1_exit_1;

    -- bubble_select_i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x(BITSELECT,46)
    bubble_select_i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_q(31 downto 0));

    -- bubble_join_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x(BITJOIN,41)
    bubble_join_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_q <= i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_4 & i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_3 & i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_2 & i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_out_c0_exit_1;

    -- bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x(BITSELECT,42)
    bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_q(31 downto 0));
    bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_q(32 downto 32));
    bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_q(33 downto 33));
    bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_q(34 downto 34));

    -- dupName_0_sync_out_x(GPOUT,6)@9
    out_c0_exe1 <= bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_b;
    out_c0_exe2 <= bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_c;
    out_c0_exe3 <= bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_d;
    out_c0_exe4 <= bubble_select_i_sfc_c0_entry_pool_c0_enter_pool_aunroll_x_e;
    out_c1_exe1 <= bubble_select_i_sfc_c1_entry_pool_c1_enter_pool_aunroll_x_b;
    out_c2_exe1 <= bubble_select_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_b;
    out_cmp6 <= i_cmp6_pool_q;
    out_tmp_2 <= i_tmp_2_pool_q;
    out_valid_out <= SE_out_i_sfc_c2_entry_pool_c2_enter_pool_aunroll_x_V0;

    -- sync_out(GPOUT,36)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
