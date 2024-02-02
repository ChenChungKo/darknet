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

-- VHDL created from batchnorm_function_cra_slave
-- VHDL created on Wed Nov 29 11:50:01 2023


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

entity batchnorm_function_cra_slave is
    port (
        acl_counter_full : in std_logic_vector(0 downto 0);  -- ufix1
        acl_counter_size : in std_logic_vector(31 downto 0);  -- ufix32
        avs_cra_address : in std_logic_vector(4 downto 0);  -- ufix5
        avs_cra_byteenable : in std_logic_vector(7 downto 0);  -- ufix8
        avs_cra_enable : in std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_read : in std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_write : in std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_writedata : in std_logic_vector(63 downto 0);  -- ufix64
        finish : in std_logic_vector(0 downto 0);  -- ufix1
        has_a_lsu_active : in std_logic_vector(0 downto 0);  -- ufix1
        has_a_write_pending : in std_logic_vector(0 downto 0);  -- ufix1
        valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        acl_counter_reset : out std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_readdata : out std_logic_vector(63 downto 0);  -- ufix64
        avs_cra_readdatavalid : out std_logic_vector(0 downto 0);  -- ufix1
        cra_irq : out std_logic_vector(0 downto 0);  -- ufix1
        global_offset_0 : out std_logic_vector(31 downto 0);  -- ufix32
        global_offset_1 : out std_logic_vector(31 downto 0);  -- ufix32
        global_offset_2 : out std_logic_vector(31 downto 0);  -- ufix32
        global_size_0 : out std_logic_vector(31 downto 0);  -- ufix32
        global_size_1 : out std_logic_vector(31 downto 0);  -- ufix32
        global_size_2 : out std_logic_vector(31 downto 0);  -- ufix32
        kernel_arguments : out std_logic_vector(479 downto 0);  -- ufix480
        local_size_0 : out std_logic_vector(31 downto 0);  -- ufix32
        local_size_1 : out std_logic_vector(31 downto 0);  -- ufix32
        local_size_2 : out std_logic_vector(31 downto 0);  -- ufix32
        num_groups_0 : out std_logic_vector(31 downto 0);  -- ufix32
        num_groups_1 : out std_logic_vector(31 downto 0);  -- ufix32
        num_groups_2 : out std_logic_vector(31 downto 0);  -- ufix32
        start : out std_logic_vector(0 downto 0);  -- ufix1
        status : out std_logic_vector(31 downto 0);  -- ufix32
        work_dim : out std_logic_vector(31 downto 0);  -- ufix32
        workgroup_size : out std_logic_vector(31 downto 0);  -- ufix32
        clock : in std_logic;
        resetn : in std_logic
    );
end batchnorm_function_cra_slave;

architecture normal of batchnorm_function_cra_slave is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_arg_bit_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_0_extracted_high_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_mask1_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_1_arg_bit_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_1_extracted_high_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_1_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_1_mask1_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_1_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_2_arg_bit_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_2_extracted_high_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_2_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_2_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_3_arg_bit_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_3_extracted_high_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_3_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_3_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_4_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_4_arg_bit_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_4_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_extracted_high_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_4_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_4_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_5_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_5_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_5_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_6_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_6_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_6_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_6_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_6_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_7_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_7_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_7_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_7_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_7_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_8_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_8_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_8_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_8_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_8_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_9_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_9_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_9_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_9_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_9_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_10_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_10_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_10_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_10_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_10_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_11_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_11_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_11_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_11_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_11_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_12_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_12_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_12_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_12_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_12_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_13_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_13_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_13_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_13_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_13_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_14_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_14_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_14_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_14_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_14_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_15_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_15_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_15_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_15_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_15_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_16_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_16_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_16_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_16_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_16_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_17_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_17_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_17_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_17_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_17_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_18_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_18_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_18_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_18_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_18_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_19_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_19_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_20_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_20_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_21_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_21_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_22_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_22_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_23_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_23_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_24_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_24_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_25_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_25_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_26_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_26_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_27_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_27_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_28_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_28_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal NO_NAME_q : STD_LOGIC_VECTOR (0 downto 0);
    signal address_ref_q : STD_LOGIC_VECTOR (4 downto 0);
    signal arg_bit_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal arguments_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_10_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_11_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_12_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_13_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_14_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_7_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_8_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_9_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bit_enable_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bit_enable_bar_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bit_enable_bottom_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bit_enable_bottom_bar_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bit_enable_top_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bit_enable_top_bar_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bus_high_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bus_low_b : STD_LOGIC_VECTOR (31 downto 0);
    signal can_write_q : STD_LOGIC_VECTOR (0 downto 0);
    signal compute_finished_q : STD_LOGIC_VECTOR (0 downto 0);
    signal compute_running_q : STD_LOGIC_VECTOR (0 downto 0);
    signal compute_running_done_q : STD_LOGIC_VECTOR (0 downto 0);
    signal const_padding_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cra_output_readdata_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal cra_output_readdatavalid_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cra_stage1_data_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal done_or_printf_irq_signal_q : STD_LOGIC_VECTOR (0 downto 0);
    signal extracted_high_b : STD_LOGIC_VECTOR (31 downto 0);
    signal finished_bit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal global_offset_reg_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal global_offset_reg_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal global_offset_reg_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal global_size_reg_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal global_size_reg_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal global_size_reg_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal kernel_arg_bit_join_q : STD_LOGIC_VECTOR (479 downto 0);
    signal local_size_reg_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal local_size_reg_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal local_size_reg_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal mask0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal mask_finished_when_not_running_q : STD_LOGIC_VECTOR (0 downto 0);
    signal new_data_q : STD_LOGIC_VECTOR (31 downto 0);
    signal next_start_reg_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal next_started_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_finished_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_start_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_started_q : STD_LOGIC_VECTOR (0 downto 0);
    signal num_groups_reg_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal num_groups_reg_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal num_groups_reg_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal printf_bit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_bit_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_bit_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_counter_reset_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_counter_reset_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_reset_bit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal readdata_bus_out_q : STD_LOGIC_VECTOR (63 downto 0);
    signal readdata_upper_bits_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal readdata_upper_bits_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal readdata_valid_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal running_bit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_2_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_3_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_4_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_5_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_6_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_7_b : STD_LOGIC_VECTOR (0 downto 0);
    signal start_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal start_bit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal start_bit_computation_q : STD_LOGIC_VECTOR (0 downto 0);
    signal start_is_or_going_high_q : STD_LOGIC_VECTOR (0 downto 0);
    signal started_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal status_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (31 downto 0);
    signal status_bit_2_b : STD_LOGIC_VECTOR (0 downto 0);
    signal status_from_cra_q : STD_LOGIC_VECTOR (31 downto 0);
    signal status_low_b : STD_LOGIC_VECTOR (15 downto 0);
    signal status_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal status_select_q : STD_LOGIC_VECTOR (31 downto 0);
    signal status_self_update_q : STD_LOGIC_VECTOR (31 downto 0);
    signal unchanged_status_data_b : STD_LOGIC_VECTOR (6 downto 0);
    signal version_number_q : STD_LOGIC_VECTOR (15 downto 0);
    signal will_be_started_q : STD_LOGIC_VECTOR (0 downto 0);
    signal work_dim_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (31 downto 0);
    signal workgroup_size_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- version_number(CONSTANT,271)
    version_number_q <= "0000000000000011";

    -- bus_low(BITSELECT,171)
    bus_low_b <= avs_cra_writedata(31 downto 0);

    -- select_7(BITSELECT,256)
    select_7_b <= avs_cra_byteenable(7 downto 7);

    -- select_6(BITSELECT,255)
    select_6_b <= avs_cra_byteenable(6 downto 6);

    -- select_5(BITSELECT,254)
    select_5_b <= avs_cra_byteenable(5 downto 5);

    -- select_4(BITSELECT,253)
    select_4_b <= avs_cra_byteenable(4 downto 4);

    -- select_3(BITSELECT,252)
    select_3_b <= avs_cra_byteenable(3 downto 3);

    -- select_2(BITSELECT,251)
    select_2_b <= avs_cra_byteenable(2 downto 2);

    -- select_1(BITSELECT,250)
    select_1_b <= avs_cra_byteenable(1 downto 1);

    -- select_0(BITSELECT,249)
    select_0_b <= avs_cra_byteenable(0 downto 0);

    -- bit_enable(BITJOIN,164)
    bit_enable_q <= select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b;

    -- bit_enable_bottom(BITSELECT,166)
    bit_enable_bottom_b <= bit_enable_q(31 downto 0);

    -- dupName_0_mask1_x(LOGICAL,6)
    dupName_0_mask1_x_q <= bit_enable_bottom_b and bus_low_b;

    -- bit_enable_bar(LOGICAL,165)
    bit_enable_bar_q <= not (bit_enable_q);

    -- bit_enable_bottom_bar(BITSELECT,167)
    bit_enable_bottom_bar_b <= bit_enable_bar_q(31 downto 0);

    -- mask0(LOGICAL,208)
    mask0_q <= bit_enable_bottom_bar_b and status_NO_SHIFT_REG_q;

    -- new_data(LOGICAL,211)
    new_data_q <= mask0_q or dupName_0_mask1_x_q;

    -- status_low(BITSELECT,266)
    status_low_b <= new_data_q(15 downto 0);

    -- status_from_cra(BITJOIN,265)
    status_from_cra_q <= version_number_q & status_low_b;

    -- running_bit(BITSELECT,248)
    running_bit_b <= status_NO_SHIFT_REG_q(15 downto 15);

    -- not_finished(LOGICAL,214)
    not_finished_q <= not (finish);

    -- compute_running_done(LOGICAL,176)
    compute_running_done_q <= not_finished_q and running_bit_b;

    -- start_bit(BITSELECT,258)
    start_bit_b <= status_NO_SHIFT_REG_q(0 downto 0);

    -- compute_running(LOGICAL,175)
    compute_running_q <= start_bit_b or compute_running_done_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- unchanged_status_data(BITSELECT,270)
    unchanged_status_data_b <= status_NO_SHIFT_REG_q(11 downto 5);

    -- printf_counter_reset_mux(MUX,243)
    printf_counter_reset_mux_s <= printf_reset_bit_b;
    printf_counter_reset_mux_combproc: PROCESS (printf_counter_reset_mux_s, printf_reset_bit_b, GND_q)
    BEGIN
        CASE (printf_counter_reset_mux_s) IS
            WHEN "0" => printf_counter_reset_mux_q <= printf_reset_bit_b;
            WHEN "1" => printf_counter_reset_mux_q <= GND_q;
            WHEN OTHERS => printf_counter_reset_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- printf_bit(BITSELECT,241)
    printf_bit_b <= status_NO_SHIFT_REG_q(3 downto 3);

    -- printf_bit_mux(MUX,242)
    printf_bit_mux_s <= acl_counter_full;
    printf_bit_mux_combproc: PROCESS (printf_bit_mux_s, printf_bit_b, VCC_q)
    BEGIN
        CASE (printf_bit_mux_s) IS
            WHEN "0" => printf_bit_mux_q <= printf_bit_b;
            WHEN "1" => printf_bit_mux_q <= VCC_q;
            WHEN OTHERS => printf_bit_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- status_bit_2(BITSELECT,263)
    status_bit_2_b <= status_NO_SHIFT_REG_q(2 downto 2);

    -- finished_bit(BITSELECT,185)
    finished_bit_b <= status_NO_SHIFT_REG_q(1 downto 1);

    -- mask_finished_when_not_running(LOGICAL,210)
    mask_finished_when_not_running_q <= finish and running_bit_b;

    -- compute_finished(LOGICAL,174)
    compute_finished_q <= mask_finished_when_not_running_q or finished_bit_b;

    -- not_start(LOGICAL,215)
    not_start_q <= not (start_bit_b);

    -- start_bit_computation(LOGICAL,259)
    start_bit_computation_q <= not_start_q and start_bit_b;

    -- status_self_update(BITJOIN,269)
    status_self_update_q <= version_number_q & compute_running_q & GND_q & has_a_write_pending & has_a_lsu_active & unchanged_status_data_b & printf_counter_reset_mux_q & printf_bit_mux_q & status_bit_2_b & compute_finished_q & start_bit_computation_q;

    -- address_ref(CONSTANT,147)
    address_ref_q <= "00000";

    -- NO_NAME(LOGICAL,145)
    NO_NAME_q <= "1" WHEN avs_cra_address = address_ref_q ELSE "0";

    -- can_write(LOGICAL,172)
    can_write_q <= NO_NAME_q and avs_cra_write;

    -- status_select(MUX,268)
    status_select_s <= can_write_q;
    status_select_combproc: PROCESS (status_select_s, status_self_update_q, status_from_cra_q)
    BEGIN
        CASE (status_select_s) IS
            WHEN "0" => status_select_q <= status_self_update_q;
            WHEN "1" => status_select_q <= status_from_cra_q;
            WHEN OTHERS => status_select_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- status_NO_SHIFT_REG(REG,262)
    status_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            status_NO_SHIFT_REG_q <= "00000000000000110000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            status_NO_SHIFT_REG_q <= status_select_q;
        END IF;
    END PROCESS;

    -- printf_reset_bit(BITSELECT,244)
    printf_reset_bit_b <= status_NO_SHIFT_REG_q(4 downto 4);

    -- acl_counter_reset(GPOUT,220)
    acl_counter_reset <= printf_reset_bit_b;

    -- const_padding(CONSTANT,179)
    const_padding_q <= "00000000000000000000000000000000";

    -- readdata_upper_bits_mux(MUX,246)
    readdata_upper_bits_mux_s <= NO_NAME_q;
    readdata_upper_bits_mux_combproc: PROCESS (readdata_upper_bits_mux_s, const_padding_q, acl_counter_size)
    BEGIN
        CASE (readdata_upper_bits_mux_s) IS
            WHEN "0" => readdata_upper_bits_mux_q <= const_padding_q;
            WHEN "1" => readdata_upper_bits_mux_q <= acl_counter_size;
            WHEN OTHERS => readdata_upper_bits_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- readdata_bus_out(BITJOIN,245)
    readdata_bus_out_q <= readdata_upper_bits_mux_q & status_NO_SHIFT_REG_q;

    -- cra_stage1_data_reg(REG,182)
    cra_stage1_data_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            cra_stage1_data_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            cra_stage1_data_reg_q <= readdata_bus_out_q;
        END IF;
    END PROCESS;

    -- cra_output_readdata_reg(REG,180)
    cra_output_readdata_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            cra_output_readdata_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            cra_output_readdata_reg_q <= cra_stage1_data_reg_q;
        END IF;
    END PROCESS;

    -- avs_cra_readdata(GPOUT,221)
    avs_cra_readdata <= cra_output_readdata_reg_q;

    -- readdata_valid_reg(REG,247)
    readdata_valid_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            readdata_valid_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            readdata_valid_reg_q <= avs_cra_read;
        END IF;
    END PROCESS;

    -- cra_output_readdatavalid_reg(REG,181)
    cra_output_readdatavalid_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            cra_output_readdatavalid_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            cra_output_readdatavalid_reg_q <= readdata_valid_reg_q;
        END IF;
    END PROCESS;

    -- avs_cra_readdatavalid(GPOUT,222)
    avs_cra_readdatavalid <= cra_output_readdatavalid_reg_q;

    -- done_or_printf_irq_signal(LOGICAL,183)
    done_or_printf_irq_signal_q <= finished_bit_b or printf_bit_b;

    -- cra_irq(GPOUT,223)
    cra_irq <= done_or_printf_irq_signal_q;

    -- dupName_9_address_ref_x(CONSTANT,56)
    dupName_9_address_ref_x_q <= "01010";

    -- dupName_9_NO_NAME_x(LOGICAL,55)
    dupName_9_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_9_address_ref_x_q ELSE "0";

    -- dupName_9_can_write_x(LOGICAL,57)
    dupName_9_can_write_x_q <= dupName_9_NO_NAME_x_q and avs_cra_write;

    -- bus_high(BITSELECT,170)
    bus_high_b <= avs_cra_writedata(63 downto 32);

    -- bit_enable_top(BITSELECT,168)
    bit_enable_top_b <= bit_enable_q(63 downto 32);

    -- dupName_1_mask1_x(LOGICAL,11)
    dupName_1_mask1_x_q <= bit_enable_top_b and bus_high_b;

    -- bit_enable_top_bar(BITSELECT,169)
    bit_enable_top_bar_b <= bit_enable_bar_q(63 downto 32);

    -- dupName_11_mask0_x(LOGICAL,70)
    dupName_11_mask0_x_q <= bit_enable_top_bar_b and global_offset_reg_0_q;

    -- dupName_11_new_data_x(LOGICAL,72)
    dupName_11_new_data_x_q <= dupName_11_mask0_x_q or dupName_1_mask1_x_q;

    -- global_offset_reg_0(REG,186)
    global_offset_reg_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            global_offset_reg_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_9_can_write_x_q = "1") THEN
                global_offset_reg_0_q <= dupName_11_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- global_offset_0(GPOUT,224)
    global_offset_0 <= global_offset_reg_0_q;

    -- dupName_10_address_ref_x(CONSTANT,62)
    dupName_10_address_ref_x_q <= "01011";

    -- dupName_10_NO_NAME_x(LOGICAL,61)
    dupName_10_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_10_address_ref_x_q ELSE "0";

    -- dupName_10_can_write_x(LOGICAL,63)
    dupName_10_can_write_x_q <= dupName_10_NO_NAME_x_q and avs_cra_write;

    -- dupName_12_mask0_x(LOGICAL,76)
    dupName_12_mask0_x_q <= bit_enable_bottom_bar_b and global_offset_reg_1_q;

    -- dupName_12_new_data_x(LOGICAL,78)
    dupName_12_new_data_x_q <= dupName_12_mask0_x_q or dupName_0_mask1_x_q;

    -- global_offset_reg_1(REG,187)
    global_offset_reg_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            global_offset_reg_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_10_can_write_x_q = "1") THEN
                global_offset_reg_1_q <= dupName_12_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- global_offset_1(GPOUT,225)
    global_offset_1 <= global_offset_reg_1_q;

    -- dupName_13_mask0_x(LOGICAL,82)
    dupName_13_mask0_x_q <= bit_enable_top_bar_b and global_offset_reg_2_q;

    -- dupName_13_new_data_x(LOGICAL,84)
    dupName_13_new_data_x_q <= dupName_13_mask0_x_q or dupName_1_mask1_x_q;

    -- global_offset_reg_2(REG,188)
    global_offset_reg_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            global_offset_reg_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_10_can_write_x_q = "1") THEN
                global_offset_reg_2_q <= dupName_13_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- global_offset_2(GPOUT,226)
    global_offset_2 <= global_offset_reg_2_q;

    -- dupName_5_address_ref_x(CONSTANT,32)
    dupName_5_address_ref_x_q <= "00110";

    -- dupName_5_NO_NAME_x(LOGICAL,31)
    dupName_5_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_5_address_ref_x_q ELSE "0";

    -- dupName_5_can_write_x(LOGICAL,33)
    dupName_5_can_write_x_q <= dupName_5_NO_NAME_x_q and avs_cra_write;

    -- dupName_2_mask0_x(LOGICAL,15)
    dupName_2_mask0_x_q <= bit_enable_bottom_bar_b and global_size_reg_0_q;

    -- dupName_2_new_data_x(LOGICAL,17)
    dupName_2_new_data_x_q <= dupName_2_mask0_x_q or dupName_0_mask1_x_q;

    -- global_size_reg_0(REG,189)
    global_size_reg_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            global_size_reg_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_5_can_write_x_q = "1") THEN
                global_size_reg_0_q <= dupName_2_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- global_size_0(GPOUT,227)
    global_size_0 <= global_size_reg_0_q;

    -- dupName_3_mask0_x(LOGICAL,20)
    dupName_3_mask0_x_q <= bit_enable_top_bar_b and global_size_reg_1_q;

    -- dupName_3_new_data_x(LOGICAL,22)
    dupName_3_new_data_x_q <= dupName_3_mask0_x_q or dupName_1_mask1_x_q;

    -- global_size_reg_1(REG,190)
    global_size_reg_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            global_size_reg_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_5_can_write_x_q = "1") THEN
                global_size_reg_1_q <= dupName_3_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- global_size_1(GPOUT,228)
    global_size_1 <= global_size_reg_1_q;

    -- dupName_6_address_ref_x(CONSTANT,38)
    dupName_6_address_ref_x_q <= "00111";

    -- dupName_6_NO_NAME_x(LOGICAL,37)
    dupName_6_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_6_address_ref_x_q ELSE "0";

    -- dupName_6_can_write_x(LOGICAL,39)
    dupName_6_can_write_x_q <= dupName_6_NO_NAME_x_q and avs_cra_write;

    -- dupName_4_mask0_x(LOGICAL,28)
    dupName_4_mask0_x_q <= bit_enable_bottom_bar_b and global_size_reg_2_q;

    -- dupName_4_new_data_x(LOGICAL,30)
    dupName_4_new_data_x_q <= dupName_4_mask0_x_q or dupName_0_mask1_x_q;

    -- global_size_reg_2(REG,191)
    global_size_reg_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            global_size_reg_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_6_can_write_x_q = "1") THEN
                global_size_reg_2_q <= dupName_4_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- global_size_2(GPOUT,229)
    global_size_2 <= global_size_reg_2_q;

    -- dupName_18_address_ref_x(CONSTANT,110)
    dupName_18_address_ref_x_q <= "10011";

    -- dupName_18_NO_NAME_x(LOGICAL,109)
    dupName_18_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_18_address_ref_x_q ELSE "0";

    -- dupName_18_can_write_x(LOGICAL,111)
    dupName_18_can_write_x_q <= dupName_18_NO_NAME_x_q and avs_cra_write;

    -- dupName_28_mask0_x(LOGICAL,142)
    dupName_28_mask0_x_q <= bit_enable_bottom_bar_b and arguments_14_q;

    -- dupName_28_new_data_x(LOGICAL,144)
    dupName_28_new_data_x_q <= dupName_28_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_14(REG,155)
    arguments_14_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_14_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_18_can_write_x_q = "1") THEN
                arguments_14_q <= dupName_28_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_17_address_ref_x(CONSTANT,104)
    dupName_17_address_ref_x_q <= "10010";

    -- dupName_17_NO_NAME_x(LOGICAL,103)
    dupName_17_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_17_address_ref_x_q ELSE "0";

    -- dupName_17_can_write_x(LOGICAL,105)
    dupName_17_can_write_x_q <= dupName_17_NO_NAME_x_q and avs_cra_write;

    -- dupName_27_mask0_x(LOGICAL,139)
    dupName_27_mask0_x_q <= bit_enable_top_bar_b and arguments_13_q;

    -- dupName_27_new_data_x(LOGICAL,141)
    dupName_27_new_data_x_q <= dupName_27_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_13(REG,154)
    arguments_13_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_13_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_17_can_write_x_q = "1") THEN
                arguments_13_q <= dupName_27_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_26_mask0_x(LOGICAL,136)
    dupName_26_mask0_x_q <= bit_enable_bottom_bar_b and arguments_12_q;

    -- dupName_26_new_data_x(LOGICAL,138)
    dupName_26_new_data_x_q <= dupName_26_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_12(REG,153)
    arguments_12_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_12_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_17_can_write_x_q = "1") THEN
                arguments_12_q <= dupName_26_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_16_address_ref_x(CONSTANT,98)
    dupName_16_address_ref_x_q <= "10001";

    -- dupName_16_NO_NAME_x(LOGICAL,97)
    dupName_16_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_16_address_ref_x_q ELSE "0";

    -- dupName_16_can_write_x(LOGICAL,99)
    dupName_16_can_write_x_q <= dupName_16_NO_NAME_x_q and avs_cra_write;

    -- dupName_25_mask0_x(LOGICAL,133)
    dupName_25_mask0_x_q <= bit_enable_top_bar_b and arguments_11_q;

    -- dupName_25_new_data_x(LOGICAL,135)
    dupName_25_new_data_x_q <= dupName_25_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_11(REG,152)
    arguments_11_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_11_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_16_can_write_x_q = "1") THEN
                arguments_11_q <= dupName_25_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_4_extracted_high_x(BITSELECT,27)
    dupName_4_extracted_high_x_b <= arguments_11_q(31 downto 0);

    -- dupName_24_mask0_x(LOGICAL,130)
    dupName_24_mask0_x_q <= bit_enable_bottom_bar_b and arguments_10_q;

    -- dupName_24_new_data_x(LOGICAL,132)
    dupName_24_new_data_x_q <= dupName_24_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_10(REG,151)
    arguments_10_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_10_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_16_can_write_x_q = "1") THEN
                arguments_10_q <= dupName_24_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_4_arg_bit_join_x(BITJOIN,25)
    dupName_4_arg_bit_join_x_q <= dupName_4_extracted_high_x_b & arguments_10_q;

    -- dupName_15_address_ref_x(CONSTANT,92)
    dupName_15_address_ref_x_q <= "10000";

    -- dupName_15_NO_NAME_x(LOGICAL,91)
    dupName_15_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_15_address_ref_x_q ELSE "0";

    -- dupName_15_can_write_x(LOGICAL,93)
    dupName_15_can_write_x_q <= dupName_15_NO_NAME_x_q and avs_cra_write;

    -- dupName_23_mask0_x(LOGICAL,127)
    dupName_23_mask0_x_q <= bit_enable_top_bar_b and arguments_9_q;

    -- dupName_23_new_data_x(LOGICAL,129)
    dupName_23_new_data_x_q <= dupName_23_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_9(REG,163)
    arguments_9_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_9_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_15_can_write_x_q = "1") THEN
                arguments_9_q <= dupName_23_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_3_extracted_high_x(BITSELECT,19)
    dupName_3_extracted_high_x_b <= arguments_9_q(31 downto 0);

    -- dupName_22_mask0_x(LOGICAL,124)
    dupName_22_mask0_x_q <= bit_enable_bottom_bar_b and arguments_8_q;

    -- dupName_22_new_data_x(LOGICAL,126)
    dupName_22_new_data_x_q <= dupName_22_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_8(REG,162)
    arguments_8_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_8_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_15_can_write_x_q = "1") THEN
                arguments_8_q <= dupName_22_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_3_arg_bit_join_x(BITJOIN,18)
    dupName_3_arg_bit_join_x_q <= dupName_3_extracted_high_x_b & arguments_8_q;

    -- dupName_14_address_ref_x(CONSTANT,86)
    dupName_14_address_ref_x_q <= "01111";

    -- dupName_14_NO_NAME_x(LOGICAL,85)
    dupName_14_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_14_address_ref_x_q ELSE "0";

    -- dupName_14_can_write_x(LOGICAL,87)
    dupName_14_can_write_x_q <= dupName_14_NO_NAME_x_q and avs_cra_write;

    -- dupName_21_mask0_x(LOGICAL,121)
    dupName_21_mask0_x_q <= bit_enable_top_bar_b and arguments_7_q;

    -- dupName_21_new_data_x(LOGICAL,123)
    dupName_21_new_data_x_q <= dupName_21_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_7(REG,161)
    arguments_7_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_7_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_14_can_write_x_q = "1") THEN
                arguments_7_q <= dupName_21_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_2_extracted_high_x(BITSELECT,14)
    dupName_2_extracted_high_x_b <= arguments_7_q(31 downto 0);

    -- dupName_20_mask0_x(LOGICAL,118)
    dupName_20_mask0_x_q <= bit_enable_bottom_bar_b and arguments_6_q;

    -- dupName_20_new_data_x(LOGICAL,120)
    dupName_20_new_data_x_q <= dupName_20_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_6(REG,160)
    arguments_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_6_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_14_can_write_x_q = "1") THEN
                arguments_6_q <= dupName_20_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_2_arg_bit_join_x(BITJOIN,13)
    dupName_2_arg_bit_join_x_q <= dupName_2_extracted_high_x_b & arguments_6_q;

    -- dupName_13_address_ref_x(CONSTANT,80)
    dupName_13_address_ref_x_q <= "01110";

    -- dupName_13_NO_NAME_x(LOGICAL,79)
    dupName_13_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_13_address_ref_x_q ELSE "0";

    -- dupName_13_can_write_x(LOGICAL,81)
    dupName_13_can_write_x_q <= dupName_13_NO_NAME_x_q and avs_cra_write;

    -- dupName_19_mask0_x(LOGICAL,115)
    dupName_19_mask0_x_q <= bit_enable_top_bar_b and arguments_5_q;

    -- dupName_19_new_data_x(LOGICAL,117)
    dupName_19_new_data_x_q <= dupName_19_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_5(REG,159)
    arguments_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_5_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_13_can_write_x_q = "1") THEN
                arguments_5_q <= dupName_19_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_1_extracted_high_x(BITSELECT,9)
    dupName_1_extracted_high_x_b <= arguments_5_q(31 downto 0);

    -- dupName_18_mask0_x(LOGICAL,112)
    dupName_18_mask0_x_q <= bit_enable_bottom_bar_b and arguments_4_q;

    -- dupName_18_new_data_x(LOGICAL,114)
    dupName_18_new_data_x_q <= dupName_18_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_4(REG,158)
    arguments_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_13_can_write_x_q = "1") THEN
                arguments_4_q <= dupName_18_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_1_arg_bit_join_x(BITJOIN,8)
    dupName_1_arg_bit_join_x_q <= dupName_1_extracted_high_x_b & arguments_4_q;

    -- dupName_12_address_ref_x(CONSTANT,74)
    dupName_12_address_ref_x_q <= "01101";

    -- dupName_12_NO_NAME_x(LOGICAL,73)
    dupName_12_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_12_address_ref_x_q ELSE "0";

    -- dupName_12_can_write_x(LOGICAL,75)
    dupName_12_can_write_x_q <= dupName_12_NO_NAME_x_q and avs_cra_write;

    -- dupName_17_mask0_x(LOGICAL,106)
    dupName_17_mask0_x_q <= bit_enable_top_bar_b and arguments_3_q;

    -- dupName_17_new_data_x(LOGICAL,108)
    dupName_17_new_data_x_q <= dupName_17_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_3(REG,157)
    arguments_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_12_can_write_x_q = "1") THEN
                arguments_3_q <= dupName_17_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_0_extracted_high_x(BITSELECT,4)
    dupName_0_extracted_high_x_b <= arguments_3_q(31 downto 0);

    -- dupName_16_mask0_x(LOGICAL,100)
    dupName_16_mask0_x_q <= bit_enable_bottom_bar_b and arguments_2_q;

    -- dupName_16_new_data_x(LOGICAL,102)
    dupName_16_new_data_x_q <= dupName_16_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_2(REG,156)
    arguments_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_12_can_write_x_q = "1") THEN
                arguments_2_q <= dupName_16_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_0_arg_bit_join_x(BITJOIN,2)
    dupName_0_arg_bit_join_x_q <= dupName_0_extracted_high_x_b & arguments_2_q;

    -- dupName_11_address_ref_x(CONSTANT,68)
    dupName_11_address_ref_x_q <= "01100";

    -- dupName_11_NO_NAME_x(LOGICAL,67)
    dupName_11_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_11_address_ref_x_q ELSE "0";

    -- dupName_11_can_write_x(LOGICAL,69)
    dupName_11_can_write_x_q <= dupName_11_NO_NAME_x_q and avs_cra_write;

    -- dupName_15_mask0_x(LOGICAL,94)
    dupName_15_mask0_x_q <= bit_enable_top_bar_b and arguments_1_q;

    -- dupName_15_new_data_x(LOGICAL,96)
    dupName_15_new_data_x_q <= dupName_15_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_1(REG,150)
    arguments_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_11_can_write_x_q = "1") THEN
                arguments_1_q <= dupName_15_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- extracted_high(BITSELECT,184)
    extracted_high_b <= arguments_1_q(31 downto 0);

    -- dupName_14_mask0_x(LOGICAL,88)
    dupName_14_mask0_x_q <= bit_enable_bottom_bar_b and arguments_0_q;

    -- dupName_14_new_data_x(LOGICAL,90)
    dupName_14_new_data_x_q <= dupName_14_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_0(REG,149)
    arguments_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_11_can_write_x_q = "1") THEN
                arguments_0_q <= dupName_14_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- arg_bit_join(BITJOIN,148)
    arg_bit_join_q <= extracted_high_b & arguments_0_q;

    -- kernel_arg_bit_join(BITJOIN,204)
    kernel_arg_bit_join_q <= arguments_14_q & arguments_13_q & arguments_12_q & dupName_4_arg_bit_join_x_q & dupName_3_arg_bit_join_x_q & dupName_2_arg_bit_join_x_q & dupName_1_arg_bit_join_x_q & dupName_0_arg_bit_join_x_q & arg_bit_join_q;

    -- kernel_arguments(GPOUT,230)
    kernel_arguments <= kernel_arg_bit_join_q;

    -- dupName_8_address_ref_x(CONSTANT,50)
    dupName_8_address_ref_x_q <= "01001";

    -- dupName_8_NO_NAME_x(LOGICAL,49)
    dupName_8_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_8_address_ref_x_q ELSE "0";

    -- dupName_8_can_write_x(LOGICAL,51)
    dupName_8_can_write_x_q <= dupName_8_NO_NAME_x_q and avs_cra_write;

    -- dupName_8_mask0_x(LOGICAL,52)
    dupName_8_mask0_x_q <= bit_enable_bottom_bar_b and local_size_reg_0_q;

    -- dupName_8_new_data_x(LOGICAL,54)
    dupName_8_new_data_x_q <= dupName_8_mask0_x_q or dupName_0_mask1_x_q;

    -- local_size_reg_0(REG,205)
    local_size_reg_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            local_size_reg_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_8_can_write_x_q = "1") THEN
                local_size_reg_0_q <= dupName_8_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- local_size_0(GPOUT,231)
    local_size_0 <= local_size_reg_0_q;

    -- dupName_9_mask0_x(LOGICAL,58)
    dupName_9_mask0_x_q <= bit_enable_top_bar_b and local_size_reg_1_q;

    -- dupName_9_new_data_x(LOGICAL,60)
    dupName_9_new_data_x_q <= dupName_9_mask0_x_q or dupName_1_mask1_x_q;

    -- local_size_reg_1(REG,206)
    local_size_reg_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            local_size_reg_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_8_can_write_x_q = "1") THEN
                local_size_reg_1_q <= dupName_9_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- local_size_1(GPOUT,232)
    local_size_1 <= local_size_reg_1_q;

    -- dupName_10_mask0_x(LOGICAL,64)
    dupName_10_mask0_x_q <= bit_enable_bottom_bar_b and local_size_reg_2_q;

    -- dupName_10_new_data_x(LOGICAL,66)
    dupName_10_new_data_x_q <= dupName_10_mask0_x_q or dupName_0_mask1_x_q;

    -- local_size_reg_2(REG,207)
    local_size_reg_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            local_size_reg_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_9_can_write_x_q = "1") THEN
                local_size_reg_2_q <= dupName_10_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- local_size_2(GPOUT,233)
    local_size_2 <= local_size_reg_2_q;

    -- dupName_5_mask0_x(LOGICAL,34)
    dupName_5_mask0_x_q <= bit_enable_top_bar_b and num_groups_reg_0_q;

    -- dupName_5_new_data_x(LOGICAL,36)
    dupName_5_new_data_x_q <= dupName_5_mask0_x_q or dupName_1_mask1_x_q;

    -- num_groups_reg_0(REG,217)
    num_groups_reg_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            num_groups_reg_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_6_can_write_x_q = "1") THEN
                num_groups_reg_0_q <= dupName_5_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- num_groups_0(GPOUT,234)
    num_groups_0 <= num_groups_reg_0_q;

    -- dupName_7_address_ref_x(CONSTANT,44)
    dupName_7_address_ref_x_q <= "01000";

    -- dupName_7_NO_NAME_x(LOGICAL,43)
    dupName_7_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_7_address_ref_x_q ELSE "0";

    -- dupName_7_can_write_x(LOGICAL,45)
    dupName_7_can_write_x_q <= dupName_7_NO_NAME_x_q and avs_cra_write;

    -- dupName_6_mask0_x(LOGICAL,40)
    dupName_6_mask0_x_q <= bit_enable_bottom_bar_b and num_groups_reg_1_q;

    -- dupName_6_new_data_x(LOGICAL,42)
    dupName_6_new_data_x_q <= dupName_6_mask0_x_q or dupName_0_mask1_x_q;

    -- num_groups_reg_1(REG,218)
    num_groups_reg_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            num_groups_reg_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_7_can_write_x_q = "1") THEN
                num_groups_reg_1_q <= dupName_6_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- num_groups_1(GPOUT,235)
    num_groups_1 <= num_groups_reg_1_q;

    -- dupName_7_mask0_x(LOGICAL,46)
    dupName_7_mask0_x_q <= bit_enable_top_bar_b and num_groups_reg_2_q;

    -- dupName_7_new_data_x(LOGICAL,48)
    dupName_7_new_data_x_q <= dupName_7_mask0_x_q or dupName_1_mask1_x_q;

    -- num_groups_reg_2(REG,219)
    num_groups_reg_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            num_groups_reg_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_7_can_write_x_q = "1") THEN
                num_groups_reg_2_q <= dupName_7_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- num_groups_2(GPOUT,236)
    num_groups_2 <= num_groups_reg_2_q;

    -- will_be_started(LOGICAL,272)
    will_be_started_q <= start_NO_SHIFT_REG_q or started_NO_SHIFT_REG_q;

    -- next_started_value(LOGICAL,213)
    next_started_value_q <= will_be_started_q and not_finished_q;

    -- started_NO_SHIFT_REG(REG,261)
    started_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            started_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            started_NO_SHIFT_REG_q <= next_started_value_q;
        END IF;
    END PROCESS;

    -- not_started(LOGICAL,216)
    not_started_q <= not (started_NO_SHIFT_REG_q);

    -- start_is_or_going_high(LOGICAL,260)
    start_is_or_going_high_q <= start_bit_b or start_NO_SHIFT_REG_q;

    -- next_start_reg_value(LOGICAL,212)
    next_start_reg_value_q <= start_is_or_going_high_q and not_started_q;

    -- start_NO_SHIFT_REG(REG,257)
    start_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            start_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            start_NO_SHIFT_REG_q <= next_start_reg_value_q;
        END IF;
    END PROCESS;

    -- start(GPOUT,237)
    start <= start_NO_SHIFT_REG_q;

    -- status(GPOUT,238)
    status <= status_NO_SHIFT_REG_q;

    -- dupName_4_address_ref_x(CONSTANT,24)
    dupName_4_address_ref_x_q <= "00101";

    -- dupName_4_NO_NAME_x(LOGICAL,23)
    dupName_4_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_4_address_ref_x_q ELSE "0";

    -- dupName_4_can_write_x(LOGICAL,26)
    dupName_4_can_write_x_q <= dupName_4_NO_NAME_x_q and avs_cra_write;

    -- dupName_0_mask0_x(LOGICAL,5)
    dupName_0_mask0_x_q <= bit_enable_bottom_bar_b and work_dim_NO_SHIFT_REG_q;

    -- dupName_0_new_data_x(LOGICAL,7)
    dupName_0_new_data_x_q <= dupName_0_mask0_x_q or dupName_0_mask1_x_q;

    -- work_dim_NO_SHIFT_REG(REG,273)
    work_dim_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            work_dim_NO_SHIFT_REG_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_4_can_write_x_q = "1") THEN
                work_dim_NO_SHIFT_REG_q <= dupName_0_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- work_dim(GPOUT,239)
    work_dim <= work_dim_NO_SHIFT_REG_q;

    -- dupName_1_mask0_x(LOGICAL,10)
    dupName_1_mask0_x_q <= bit_enable_top_bar_b and workgroup_size_NO_SHIFT_REG_q;

    -- dupName_1_new_data_x(LOGICAL,12)
    dupName_1_new_data_x_q <= dupName_1_mask0_x_q or dupName_1_mask1_x_q;

    -- workgroup_size_NO_SHIFT_REG(REG,274)
    workgroup_size_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            workgroup_size_NO_SHIFT_REG_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_4_can_write_x_q = "1") THEN
                workgroup_size_NO_SHIFT_REG_q <= dupName_1_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- workgroup_size(GPOUT,240)
    workgroup_size <= workgroup_size_NO_SHIFT_REG_q;

END normal;
