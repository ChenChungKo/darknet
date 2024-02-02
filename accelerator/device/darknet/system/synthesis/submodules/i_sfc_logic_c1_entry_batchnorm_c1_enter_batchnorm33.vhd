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

-- VHDL created from i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33
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

entity i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33 is
    port (
        in_c1_eni5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni5_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_eni5_2 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_eni5_3 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_eni5_4 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_eni5_5 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_eps : in std_logic_vector(31 downto 0);  -- float32_m23
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_relu_type : in std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exi1_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1_1 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33;

architecture normal of i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_sqrtBlock_typA0Z4ge26154ge2a150m4e5u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_addBlock_typeA0Zu2ocpq6c0ouq0cd06uzo is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;



    component floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_divideBlock_tA0Zqcdo6u2ocpq6c0ouq3cz is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_multBlock_typA0Zqcdo6u2ocpq6c0ouq3cz is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;



    component floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_subBlock_typeA0Zdo6u2ocpq6c0ouq0dpzc is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_eps_sync_buffer_batchnorm35 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Floating Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_relu_type_sync_buffer_batchnorm38 is
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
    signal c_float_0_000000e_00_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_float_0x3FB99999A0000000_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_float_1_000000e_00_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2139095040_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_4_batchnorm_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_4_batchnorm_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_sqrtf_call_i_batchnorm_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add14_batchnorm_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add9_batchnorm_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and_i_i_batchnorm_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and_i_i_batchnorm_vt_const_22_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_and_i_i_batchnorm_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and_i_i_batchnorm_vt_select_30_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_astype1_i_i_batchnorm_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_astype1_i_i_batchnorm_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cmp16_p_batchnorm_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp16_p_batchnorm_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cmp_batchnorm_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_i_i_batchnorm_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_i_i_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_div_batchnorm_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul11_batchnorm_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul18_m_batchnorm_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub_batchnorm_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_eps_sync_buffer_batchnorm_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_relu_type_sync_buffer_batchnorm_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal cstAllOWE_uid38_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstAllZWE_uid40_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_x_uid41_i_cmp16_batchnorm_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid42_i_cmp16_batchnorm_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expXIsZero_uid43_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid44_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid45_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid46_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid47_i_cmp16_batchnorm_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid47_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid49_i_cmp16_batchnorm_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid49_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_y_uid58_i_cmp16_batchnorm_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_y_uid59_i_cmp16_batchnorm_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expXIsZero_uid60_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid61_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid62_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid63_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid64_i_cmp16_batchnorm_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid64_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid66_i_cmp16_batchnorm_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid66_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneIsNaN_uid72_i_cmp16_batchnorm_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal oneIsNaN_uid72_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracX_uid77_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (30 downto 0);
    signal expFracY_uid79_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (30 downto 0);
    signal efxGTefy_uid81_i_cmp16_batchnorm_a : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid81_i_cmp16_batchnorm_b : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid81_i_cmp16_batchnorm_o : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid81_i_cmp16_batchnorm_c : STD_LOGIC_VECTOR (0 downto 0);
    signal efxLTefy_uid82_i_cmp16_batchnorm_a : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid82_i_cmp16_batchnorm_b : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid82_i_cmp16_batchnorm_o : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid82_i_cmp16_batchnorm_c : STD_LOGIC_VECTOR (0 downto 0);
    signal signX_uid86_i_cmp16_batchnorm_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid87_i_cmp16_batchnorm_b : STD_LOGIC_VECTOR (0 downto 0);
    signal two_uid88_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (1 downto 0);
    signal concSXSY_uid89_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sxLTsy_uid90_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xorSigns_uid91_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sxEQsy_uid92_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracCompMux_uid93_i_cmp16_batchnorm_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracCompMux_uid93_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcYZ_uid94_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcXZ_uid95_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneNonZero_uid96_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rc2_uid97_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sxEQsyExpFracCompMux_uid98_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid99_i_cmp16_batchnorm_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid99_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rPostExc_uid100_i_cmp16_batchnorm_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rPostExc_uid100_i_cmp16_batchnorm_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_mul18_m_batchnorm_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_mul11_batchnorm_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_div_batchnorm_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_add9_batchnorm_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_add14_batchnorm_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_add14_batchnorm_out_primWireOut_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_add14_batchnorm_out_primWireOut_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_sync_in_aunroll_x_in_i_valid_88_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_sync_in_aunroll_x_in_i_valid_89_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_mem_reset0 : std_logic;
    signal redist0_i_sub_batchnorm_out_primWireOut_28_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_i : signal is true;
    signal redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_eq : std_logic;
    attribute preserve of redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_eq : signal is true;
    signal redist0_i_sub_batchnorm_out_primWireOut_28_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sub_batchnorm_out_primWireOut_28_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist0_i_sub_batchnorm_out_primWireOut_28_sticky_ena_q : signal is true;
    signal redist0_i_sub_batchnorm_out_primWireOut_28_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_mem_reset0 : std_logic;
    signal redist8_i_add14_batchnorm_out_primWireOut_12_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_i : signal is true;
    signal redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_eq : std_logic;
    attribute preserve of redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_eq : signal is true;
    signal redist8_i_add14_batchnorm_out_primWireOut_12_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_add14_batchnorm_out_primWireOut_12_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist8_i_add14_batchnorm_out_primWireOut_12_sticky_ena_q : signal is true;
    signal redist8_i_add14_batchnorm_out_primWireOut_12_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_reset0 : std_logic;
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_i : UNSIGNED (5 downto 0);
    attribute preserve of redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_i : signal is true;
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_eq : std_logic;
    attribute preserve of redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_eq : signal is true;
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_wraddr_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_last_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmp_b : STD_LOGIC_VECTOR (6 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_c1_eni5_4_55_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_reset0 : std_logic;
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_i : UNSIGNED (5 downto 0);
    attribute preserve of redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_i : signal is true;
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_eq : std_logic;
    attribute preserve of redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_eq : signal is true;
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_wraddr_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_last_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmp_b : STD_LOGIC_VECTOR (6 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_sync_in_aunroll_x_in_c1_eni5_5_63_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist13_sync_in_aunroll_x_in_i_valid_88(DELAY,114)
    redist13_sync_in_aunroll_x_in_i_valid_88 : dspba_delay
    GENERIC MAP ( width => 1, depth => 88, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist13_sync_in_aunroll_x_in_i_valid_88_q, clk => clock, aclr => resetn );

    -- redist14_sync_in_aunroll_x_in_i_valid_89(DELAY,115)
    redist14_sync_in_aunroll_x_in_i_valid_89 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist13_sync_in_aunroll_x_in_i_valid_88_q, xout => redist14_sync_in_aunroll_x_in_i_valid_89_q, clk => clock, aclr => resetn );

    -- c_float_1_000000e_00(FLOATCONSTANT,7)
    c_float_1_000000e_00_q <= "00111111100000000000000000000000";

    -- c_float_0x3FB99999A0000000(FLOATCONSTANT,6)
    c_float_0x3FB99999A0000000_q <= "00111101110011001100110011001101";

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_notEnable(LOGICAL,157)
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_nor(LOGICAL,158)
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_nor_q <= not (redist12_sync_in_aunroll_x_in_c1_eni5_5_63_notEnable_q or redist12_sync_in_aunroll_x_in_c1_eni5_5_63_sticky_ena_q);

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_last(CONSTANT,154)
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_last_q <= "0111011";

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmp(LOGICAL,155)
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmp_b <= STD_LOGIC_VECTOR("0" & redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_q);
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmp_q <= "1" WHEN redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_last_q = redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmp_b ELSE "0";

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmpReg(REG,156)
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmpReg_q <= STD_LOGIC_VECTOR(redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmp_q);
        END IF;
    END PROCESS;

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_sticky_ena(REG,159)
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_sync_in_aunroll_x_in_c1_eni5_5_63_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist12_sync_in_aunroll_x_in_c1_eni5_5_63_nor_q = "1") THEN
                redist12_sync_in_aunroll_x_in_c1_eni5_5_63_sticky_ena_q <= STD_LOGIC_VECTOR(redist12_sync_in_aunroll_x_in_c1_eni5_5_63_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_enaAnd(LOGICAL,160)
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_enaAnd_q <= redist12_sync_in_aunroll_x_in_c1_eni5_5_63_sticky_ena_q and VCC_q;

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt(COUNTER,152)
    -- low=0, high=60, step=1, init=0
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_i <= TO_UNSIGNED(0, 6);
            redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_i = TO_UNSIGNED(59, 6)) THEN
                redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_eq <= '1';
            ELSE
                redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_eq <= '0';
            END IF;
            IF (redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_eq = '1') THEN
                redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_i <= redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_i + 4;
            ELSE
                redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_i <= redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_i, 6)));

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_wraddr(REG,153)
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_sync_in_aunroll_x_in_c1_eni5_5_63_wraddr_q <= "111100";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist12_sync_in_aunroll_x_in_c1_eni5_5_63_wraddr_q <= STD_LOGIC_VECTOR(redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem(DUALMEM,151)
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_ia <= STD_LOGIC_VECTOR(in_c1_eni5_5);
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_aa <= redist12_sync_in_aunroll_x_in_c1_eni5_5_63_wraddr_q;
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_ab <= redist12_sync_in_aunroll_x_in_c1_eni5_5_63_rdcnt_q;
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_reset0 <= not (resetn);
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 6,
        numwords_a => 61,
        width_b => 32,
        widthad_b => 6,
        numwords_b => 61,
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
        clocken1 => redist12_sync_in_aunroll_x_in_c1_eni5_5_63_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_reset0,
        clock1 => clock,
        address_a => redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_aa,
        data_a => redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_ab,
        q_b => redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_iq
    );
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_q <= redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_iq(31 downto 0);

    -- redist12_sync_in_aunroll_x_in_c1_eni5_5_63_outputreg(DELAY,150)
    redist12_sync_in_aunroll_x_in_c1_eni5_5_63_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist12_sync_in_aunroll_x_in_c1_eni5_5_63_mem_q, xout => redist12_sync_in_aunroll_x_in_c1_eni5_5_63_outputreg_q, clk => clock, aclr => resetn );

    -- c_float_0_000000e_00(FLOATCONSTANT,5)
    c_float_0_000000e_00_q <= "00000000000000000000000000000000";

    -- i_syncbuf_eps_sync_buffer_batchnorm(BLACKBOX,31)@0
    -- in in_i_dependence@210
    -- in in_valid_in@210
    -- out out_buffer_out@210
    -- out out_valid_out@210
    thei_syncbuf_eps_sync_buffer_batchnorm : i_syncbuf_eps_sync_buffer_batchnorm35
    PORT MAP (
        in_buffer_in => in_eps,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_eps_sync_buffer_batchnorm_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add9_batchnorm(BLACKBOX,15)@210
    -- out out_primWireOut@224
    thei_add9_batchnorm : floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_addBlock_typeA0Zu2ocpq6c0ouq0cd06uzo
    PORT MAP (
        in_0 => in_c1_eni5_3,
        in_1 => i_syncbuf_eps_sync_buffer_batchnorm_out_buffer_out,
        out_primWireOut => i_add9_batchnorm_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_add9_batchnorm_out_primWireOut_1(DELAY,105)
    redist4_i_add9_batchnorm_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add9_batchnorm_out_primWireOut, xout => redist4_i_add9_batchnorm_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_acl_sqrtf_call_i_batchnorm(BLACKBOX,13)@225
    -- out out_primWireOut@240
    thei_acl_sqrtf_call_i_batchnorm : floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_sqrtBlock_typA0Z4ge26154ge2a150m4e5u
    PORT MAP (
        in_0 => redist4_i_add9_batchnorm_out_primWireOut_1_q,
        out_primWireOut => i_acl_sqrtf_call_i_batchnorm_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist9_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_1(DELAY,110)
    redist9_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_sqrtf_call_i_batchnorm_out_primWireOut, xout => redist9_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- redist10_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_2(DELAY,111)
    redist10_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_1_q, xout => redist10_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_2_q, clk => clock, aclr => resetn );

    -- c_i32_0gr(CONSTANT,9)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- c_i32_2139095040(CONSTANT,11)
    c_i32_2139095040_q <= "01111111100000000000000000000000";

    -- i_and_i_i_batchnorm(LOGICAL,16)@241
    i_and_i_i_batchnorm_q <= redist9_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_1_q and c_i32_2139095040_q;

    -- i_and_i_i_batchnorm_vt_select_30(BITSELECT,20)@241
    i_and_i_i_batchnorm_vt_select_30_b <= i_and_i_i_batchnorm_q(30 downto 23);

    -- i_and_i_i_batchnorm_vt_join(BITJOIN,19)@241
    i_and_i_i_batchnorm_vt_join_q <= GND_q & i_and_i_i_batchnorm_vt_select_30_b & i_and_i_i_batchnorm_vt_const_22_q;

    -- i_cmp_i_i_batchnorm(LOGICAL,26)@241 + 1
    i_cmp_i_i_batchnorm_qi <= "1" WHEN i_and_i_i_batchnorm_vt_join_q = c_i32_0gr_q ELSE "0";
    i_cmp_i_i_batchnorm_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp_i_i_batchnorm_qi, xout => i_cmp_i_i_batchnorm_q, clk => clock, aclr => resetn );

    -- i_astype1_i_i_batchnorm(MUX,21)@242 + 1
    i_astype1_i_i_batchnorm_s <= i_cmp_i_i_batchnorm_q;
    i_astype1_i_i_batchnorm_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_astype1_i_i_batchnorm_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_astype1_i_i_batchnorm_s) IS
                WHEN "0" => i_astype1_i_i_batchnorm_q <= redist10_i_acl_sqrtf_call_i_batchnorm_out_primWireOut_2_q;
                WHEN "1" => i_astype1_i_i_batchnorm_q <= c_float_0_000000e_00_q;
                WHEN OTHERS => i_astype1_i_i_batchnorm_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist0_i_sub_batchnorm_out_primWireOut_28_notEnable(LOGICAL,124)
    redist0_i_sub_batchnorm_out_primWireOut_28_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_i_sub_batchnorm_out_primWireOut_28_nor(LOGICAL,125)
    redist0_i_sub_batchnorm_out_primWireOut_28_nor_q <= not (redist0_i_sub_batchnorm_out_primWireOut_28_notEnable_q or redist0_i_sub_batchnorm_out_primWireOut_28_sticky_ena_q);

    -- redist0_i_sub_batchnorm_out_primWireOut_28_mem_last(CONSTANT,121)
    redist0_i_sub_batchnorm_out_primWireOut_28_mem_last_q <= "010111";

    -- redist0_i_sub_batchnorm_out_primWireOut_28_cmp(LOGICAL,122)
    redist0_i_sub_batchnorm_out_primWireOut_28_cmp_b <= STD_LOGIC_VECTOR("0" & redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_q);
    redist0_i_sub_batchnorm_out_primWireOut_28_cmp_q <= "1" WHEN redist0_i_sub_batchnorm_out_primWireOut_28_mem_last_q = redist0_i_sub_batchnorm_out_primWireOut_28_cmp_b ELSE "0";

    -- redist0_i_sub_batchnorm_out_primWireOut_28_cmpReg(REG,123)
    redist0_i_sub_batchnorm_out_primWireOut_28_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_sub_batchnorm_out_primWireOut_28_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_sub_batchnorm_out_primWireOut_28_cmpReg_q <= STD_LOGIC_VECTOR(redist0_i_sub_batchnorm_out_primWireOut_28_cmp_q);
        END IF;
    END PROCESS;

    -- redist0_i_sub_batchnorm_out_primWireOut_28_sticky_ena(REG,126)
    redist0_i_sub_batchnorm_out_primWireOut_28_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_sub_batchnorm_out_primWireOut_28_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_sub_batchnorm_out_primWireOut_28_nor_q = "1") THEN
                redist0_i_sub_batchnorm_out_primWireOut_28_sticky_ena_q <= STD_LOGIC_VECTOR(redist0_i_sub_batchnorm_out_primWireOut_28_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_sub_batchnorm_out_primWireOut_28_enaAnd(LOGICAL,127)
    redist0_i_sub_batchnorm_out_primWireOut_28_enaAnd_q <= redist0_i_sub_batchnorm_out_primWireOut_28_sticky_ena_q and VCC_q;

    -- redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt(COUNTER,119)
    -- low=0, high=24, step=1, init=0
    redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_i = TO_UNSIGNED(23, 5)) THEN
                redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_eq <= '1';
            ELSE
                redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_eq <= '0';
            END IF;
            IF (redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_eq = '1') THEN
                redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_i <= redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_i + 8;
            ELSE
                redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_i <= redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_i, 5)));

    -- i_sub_batchnorm(BLACKBOX,30)@210
    -- out out_primWireOut@224
    thei_sub_batchnorm : floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_subBlock_typeA0Zdo6u2ocpq6c0ouq0dpzc
    PORT MAP (
        in_0 => in_c1_eni5_1,
        in_1 => in_c1_eni5_2,
        out_primWireOut => i_sub_batchnorm_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist0_i_sub_batchnorm_out_primWireOut_28_inputreg(DELAY,116)
    redist0_i_sub_batchnorm_out_primWireOut_28_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_sub_batchnorm_out_primWireOut, xout => redist0_i_sub_batchnorm_out_primWireOut_28_inputreg_q, clk => clock, aclr => resetn );

    -- redist0_i_sub_batchnorm_out_primWireOut_28_wraddr(REG,120)
    redist0_i_sub_batchnorm_out_primWireOut_28_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_sub_batchnorm_out_primWireOut_28_wraddr_q <= "11000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_sub_batchnorm_out_primWireOut_28_wraddr_q <= STD_LOGIC_VECTOR(redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_i_sub_batchnorm_out_primWireOut_28_mem(DUALMEM,118)
    redist0_i_sub_batchnorm_out_primWireOut_28_mem_ia <= STD_LOGIC_VECTOR(redist0_i_sub_batchnorm_out_primWireOut_28_inputreg_q);
    redist0_i_sub_batchnorm_out_primWireOut_28_mem_aa <= redist0_i_sub_batchnorm_out_primWireOut_28_wraddr_q;
    redist0_i_sub_batchnorm_out_primWireOut_28_mem_ab <= redist0_i_sub_batchnorm_out_primWireOut_28_rdcnt_q;
    redist0_i_sub_batchnorm_out_primWireOut_28_mem_reset0 <= not (resetn);
    redist0_i_sub_batchnorm_out_primWireOut_28_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 25,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 25,
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
        clocken1 => redist0_i_sub_batchnorm_out_primWireOut_28_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist0_i_sub_batchnorm_out_primWireOut_28_mem_reset0,
        clock1 => clock,
        address_a => redist0_i_sub_batchnorm_out_primWireOut_28_mem_aa,
        data_a => redist0_i_sub_batchnorm_out_primWireOut_28_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist0_i_sub_batchnorm_out_primWireOut_28_mem_ab,
        q_b => redist0_i_sub_batchnorm_out_primWireOut_28_mem_iq
    );
    redist0_i_sub_batchnorm_out_primWireOut_28_mem_q <= redist0_i_sub_batchnorm_out_primWireOut_28_mem_iq(31 downto 0);

    -- redist0_i_sub_batchnorm_out_primWireOut_28_outputreg(DELAY,117)
    redist0_i_sub_batchnorm_out_primWireOut_28_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_sub_batchnorm_out_primWireOut_28_mem_q, xout => redist0_i_sub_batchnorm_out_primWireOut_28_outputreg_q, clk => clock, aclr => resetn );

    -- i_div_batchnorm(BLACKBOX,27)@243
    -- in in_0@252
    -- out out_primWireOut@264
    thei_div_batchnorm : floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_divideBlock_tA0Zqcdo6u2ocpq6c0ouq3cz
    PORT MAP (
        in_0 => redist0_i_sub_batchnorm_out_primWireOut_28_outputreg_q,
        in_1 => i_astype1_i_i_batchnorm_q,
        out_primWireOut => i_div_batchnorm_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_div_batchnorm_out_primWireOut_1(DELAY,104)
    redist3_i_div_batchnorm_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_div_batchnorm_out_primWireOut, xout => redist3_i_div_batchnorm_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_notEnable(LOGICAL,146)
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_nor(LOGICAL,147)
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_nor_q <= not (redist11_sync_in_aunroll_x_in_c1_eni5_4_55_notEnable_q or redist11_sync_in_aunroll_x_in_c1_eni5_4_55_sticky_ena_q);

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_last(CONSTANT,143)
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_last_q <= "0110011";

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmp(LOGICAL,144)
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmp_b <= STD_LOGIC_VECTOR("0" & redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_q);
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmp_q <= "1" WHEN redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_last_q = redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmp_b ELSE "0";

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmpReg(REG,145)
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmpReg_q <= STD_LOGIC_VECTOR(redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmp_q);
        END IF;
    END PROCESS;

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_sticky_ena(REG,148)
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_sync_in_aunroll_x_in_c1_eni5_4_55_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist11_sync_in_aunroll_x_in_c1_eni5_4_55_nor_q = "1") THEN
                redist11_sync_in_aunroll_x_in_c1_eni5_4_55_sticky_ena_q <= STD_LOGIC_VECTOR(redist11_sync_in_aunroll_x_in_c1_eni5_4_55_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_enaAnd(LOGICAL,149)
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_enaAnd_q <= redist11_sync_in_aunroll_x_in_c1_eni5_4_55_sticky_ena_q and VCC_q;

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt(COUNTER,141)
    -- low=0, high=52, step=1, init=0
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_i <= TO_UNSIGNED(0, 6);
            redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_i = TO_UNSIGNED(51, 6)) THEN
                redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_eq <= '1';
            ELSE
                redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_eq <= '0';
            END IF;
            IF (redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_eq = '1') THEN
                redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_i <= redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_i + 12;
            ELSE
                redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_i <= redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_i, 6)));

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_wraddr(REG,142)
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_sync_in_aunroll_x_in_c1_eni5_4_55_wraddr_q <= "110100";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist11_sync_in_aunroll_x_in_c1_eni5_4_55_wraddr_q <= STD_LOGIC_VECTOR(redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem(DUALMEM,140)
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_ia <= STD_LOGIC_VECTOR(in_c1_eni5_4);
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_aa <= redist11_sync_in_aunroll_x_in_c1_eni5_4_55_wraddr_q;
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_ab <= redist11_sync_in_aunroll_x_in_c1_eni5_4_55_rdcnt_q;
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_reset0 <= not (resetn);
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 6,
        numwords_a => 53,
        width_b => 32,
        widthad_b => 6,
        numwords_b => 53,
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
        clocken1 => redist11_sync_in_aunroll_x_in_c1_eni5_4_55_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_reset0,
        clock1 => clock,
        address_a => redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_aa,
        data_a => redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_ab,
        q_b => redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_iq
    );
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_q <= redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_iq(31 downto 0);

    -- redist11_sync_in_aunroll_x_in_c1_eni5_4_55_outputreg(DELAY,139)
    redist11_sync_in_aunroll_x_in_c1_eni5_4_55_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist11_sync_in_aunroll_x_in_c1_eni5_4_55_mem_q, xout => redist11_sync_in_aunroll_x_in_c1_eni5_4_55_outputreg_q, clk => clock, aclr => resetn );

    -- i_mul11_batchnorm(BLACKBOX,28)@265
    -- out out_primWireOut@272
    thei_mul11_batchnorm : floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_multBlock_typA0Zqcdo6u2ocpq6c0ouq3cz
    PORT MAP (
        in_0 => redist11_sync_in_aunroll_x_in_c1_eni5_4_55_outputreg_q,
        in_1 => redist3_i_div_batchnorm_out_primWireOut_1_q,
        out_primWireOut => i_mul11_batchnorm_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist2_i_mul11_batchnorm_out_primWireOut_1(DELAY,103)
    redist2_i_mul11_batchnorm_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul11_batchnorm_out_primWireOut, xout => redist2_i_mul11_batchnorm_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_add14_batchnorm(BLACKBOX,14)@273
    -- out out_primWireOut@287
    thei_add14_batchnorm : floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_addBlock_typeA0Zu2ocpq6c0ouq0cd06uzo
    PORT MAP (
        in_0 => redist2_i_mul11_batchnorm_out_primWireOut_1_q,
        in_1 => redist12_sync_in_aunroll_x_in_c1_eni5_5_63_outputreg_q,
        out_primWireOut => i_add14_batchnorm_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_add14_batchnorm_out_primWireOut_1(DELAY,106)
    redist5_i_add14_batchnorm_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add14_batchnorm_out_primWireOut, xout => redist5_i_add14_batchnorm_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- frac_y_uid59_i_cmp16_batchnorm(BITSELECT,58)@288
    frac_y_uid59_i_cmp16_batchnorm_b <= redist5_i_add14_batchnorm_out_primWireOut_1_q(22 downto 0);

    -- i_and_i_i_batchnorm_vt_const_22(CONSTANT,17)
    i_and_i_i_batchnorm_vt_const_22_q <= "00000000000000000000000";

    -- fracXIsZero_uid62_i_cmp16_batchnorm(LOGICAL,61)@288
    fracXIsZero_uid62_i_cmp16_batchnorm_q <= "1" WHEN i_and_i_i_batchnorm_vt_const_22_q = frac_y_uid59_i_cmp16_batchnorm_b ELSE "0";

    -- cstAllZWE_uid40_i_cmp16_batchnorm(CONSTANT,39)
    cstAllZWE_uid40_i_cmp16_batchnorm_q <= "00000000";

    -- exp_y_uid58_i_cmp16_batchnorm(BITSELECT,57)@288
    exp_y_uid58_i_cmp16_batchnorm_b <= redist5_i_add14_batchnorm_out_primWireOut_1_q(30 downto 23);

    -- expXIsZero_uid60_i_cmp16_batchnorm(LOGICAL,59)@288
    expXIsZero_uid60_i_cmp16_batchnorm_q <= "1" WHEN exp_y_uid58_i_cmp16_batchnorm_b = cstAllZWE_uid40_i_cmp16_batchnorm_q ELSE "0";

    -- excZ_y_uid64_i_cmp16_batchnorm(LOGICAL,63)@288 + 1
    excZ_y_uid64_i_cmp16_batchnorm_qi <= expXIsZero_uid60_i_cmp16_batchnorm_q and fracXIsZero_uid62_i_cmp16_batchnorm_q;
    excZ_y_uid64_i_cmp16_batchnorm_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_y_uid64_i_cmp16_batchnorm_qi, xout => excZ_y_uid64_i_cmp16_batchnorm_q, clk => clock, aclr => resetn );

    -- invExcYZ_uid94_i_cmp16_batchnorm(LOGICAL,93)@289
    invExcYZ_uid94_i_cmp16_batchnorm_q <= not (excZ_y_uid64_i_cmp16_batchnorm_q);

    -- frac_x_uid42_i_cmp16_batchnorm(BITSELECT,41)@288
    frac_x_uid42_i_cmp16_batchnorm_b <= c_float_0_000000e_00_q(22 downto 0);

    -- fracXIsZero_uid45_i_cmp16_batchnorm(LOGICAL,44)@288
    fracXIsZero_uid45_i_cmp16_batchnorm_q <= "1" WHEN i_and_i_i_batchnorm_vt_const_22_q = frac_x_uid42_i_cmp16_batchnorm_b ELSE "0";

    -- exp_x_uid41_i_cmp16_batchnorm(BITSELECT,40)@288
    exp_x_uid41_i_cmp16_batchnorm_b <= c_float_0_000000e_00_q(30 downto 23);

    -- expXIsZero_uid43_i_cmp16_batchnorm(LOGICAL,42)@288
    expXIsZero_uid43_i_cmp16_batchnorm_q <= "1" WHEN exp_x_uid41_i_cmp16_batchnorm_b = cstAllZWE_uid40_i_cmp16_batchnorm_q ELSE "0";

    -- excZ_x_uid47_i_cmp16_batchnorm(LOGICAL,46)@288 + 1
    excZ_x_uid47_i_cmp16_batchnorm_qi <= expXIsZero_uid43_i_cmp16_batchnorm_q and fracXIsZero_uid45_i_cmp16_batchnorm_q;
    excZ_x_uid47_i_cmp16_batchnorm_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_x_uid47_i_cmp16_batchnorm_qi, xout => excZ_x_uid47_i_cmp16_batchnorm_q, clk => clock, aclr => resetn );

    -- invExcXZ_uid95_i_cmp16_batchnorm(LOGICAL,94)@289
    invExcXZ_uid95_i_cmp16_batchnorm_q <= not (excZ_x_uid47_i_cmp16_batchnorm_q);

    -- oneNonZero_uid96_i_cmp16_batchnorm(LOGICAL,95)@289
    oneNonZero_uid96_i_cmp16_batchnorm_q <= invExcXZ_uid95_i_cmp16_batchnorm_q or invExcYZ_uid94_i_cmp16_batchnorm_q;

    -- two_uid88_i_cmp16_batchnorm(CONSTANT,87)
    two_uid88_i_cmp16_batchnorm_q <= "10";

    -- signX_uid86_i_cmp16_batchnorm(BITSELECT,85)@289
    signX_uid86_i_cmp16_batchnorm_b <= STD_LOGIC_VECTOR(c_float_0_000000e_00_q(31 downto 31));

    -- redist6_i_add14_batchnorm_out_primWireOut_2(DELAY,107)
    redist6_i_add14_batchnorm_out_primWireOut_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_i_add14_batchnorm_out_primWireOut_1_q, xout => redist6_i_add14_batchnorm_out_primWireOut_2_q, clk => clock, aclr => resetn );

    -- signY_uid87_i_cmp16_batchnorm(BITSELECT,86)@289
    signY_uid87_i_cmp16_batchnorm_b <= STD_LOGIC_VECTOR(redist6_i_add14_batchnorm_out_primWireOut_2_q(31 downto 31));

    -- concSXSY_uid89_i_cmp16_batchnorm(BITJOIN,88)@289
    concSXSY_uid89_i_cmp16_batchnorm_q <= signX_uid86_i_cmp16_batchnorm_b & signY_uid87_i_cmp16_batchnorm_b;

    -- sxLTsy_uid90_i_cmp16_batchnorm(LOGICAL,89)@289
    sxLTsy_uid90_i_cmp16_batchnorm_q <= "1" WHEN concSXSY_uid89_i_cmp16_batchnorm_q = two_uid88_i_cmp16_batchnorm_q ELSE "0";

    -- rc2_uid97_i_cmp16_batchnorm(LOGICAL,96)@289
    rc2_uid97_i_cmp16_batchnorm_q <= sxLTsy_uid90_i_cmp16_batchnorm_q and oneNonZero_uid96_i_cmp16_batchnorm_q;

    -- expFracX_uid77_i_cmp16_batchnorm(BITJOIN,76)@288
    expFracX_uid77_i_cmp16_batchnorm_q <= exp_x_uid41_i_cmp16_batchnorm_b & frac_x_uid42_i_cmp16_batchnorm_b;

    -- expFracY_uid79_i_cmp16_batchnorm(BITJOIN,78)@288
    expFracY_uid79_i_cmp16_batchnorm_q <= exp_y_uid58_i_cmp16_batchnorm_b & frac_y_uid59_i_cmp16_batchnorm_b;

    -- efxGTefy_uid81_i_cmp16_batchnorm(COMPARE,80)@288 + 1
    efxGTefy_uid81_i_cmp16_batchnorm_a <= STD_LOGIC_VECTOR("00" & expFracY_uid79_i_cmp16_batchnorm_q);
    efxGTefy_uid81_i_cmp16_batchnorm_b <= STD_LOGIC_VECTOR("00" & expFracX_uid77_i_cmp16_batchnorm_q);
    efxGTefy_uid81_i_cmp16_batchnorm_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            efxGTefy_uid81_i_cmp16_batchnorm_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            efxGTefy_uid81_i_cmp16_batchnorm_o <= STD_LOGIC_VECTOR(UNSIGNED(efxGTefy_uid81_i_cmp16_batchnorm_a) - UNSIGNED(efxGTefy_uid81_i_cmp16_batchnorm_b));
        END IF;
    END PROCESS;
    efxGTefy_uid81_i_cmp16_batchnorm_c(0) <= efxGTefy_uid81_i_cmp16_batchnorm_o(32);

    -- efxLTefy_uid82_i_cmp16_batchnorm(COMPARE,81)@288 + 1
    efxLTefy_uid82_i_cmp16_batchnorm_a <= STD_LOGIC_VECTOR("00" & expFracX_uid77_i_cmp16_batchnorm_q);
    efxLTefy_uid82_i_cmp16_batchnorm_b <= STD_LOGIC_VECTOR("00" & expFracY_uid79_i_cmp16_batchnorm_q);
    efxLTefy_uid82_i_cmp16_batchnorm_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            efxLTefy_uid82_i_cmp16_batchnorm_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            efxLTefy_uid82_i_cmp16_batchnorm_o <= STD_LOGIC_VECTOR(UNSIGNED(efxLTefy_uid82_i_cmp16_batchnorm_a) - UNSIGNED(efxLTefy_uid82_i_cmp16_batchnorm_b));
        END IF;
    END PROCESS;
    efxLTefy_uid82_i_cmp16_batchnorm_c(0) <= efxLTefy_uid82_i_cmp16_batchnorm_o(32);

    -- expFracCompMux_uid93_i_cmp16_batchnorm(MUX,92)@289
    expFracCompMux_uid93_i_cmp16_batchnorm_s <= signX_uid86_i_cmp16_batchnorm_b;
    expFracCompMux_uid93_i_cmp16_batchnorm_combproc: PROCESS (expFracCompMux_uid93_i_cmp16_batchnorm_s, efxLTefy_uid82_i_cmp16_batchnorm_c, efxGTefy_uid81_i_cmp16_batchnorm_c)
    BEGIN
        CASE (expFracCompMux_uid93_i_cmp16_batchnorm_s) IS
            WHEN "0" => expFracCompMux_uid93_i_cmp16_batchnorm_q <= efxLTefy_uid82_i_cmp16_batchnorm_c;
            WHEN "1" => expFracCompMux_uid93_i_cmp16_batchnorm_q <= efxGTefy_uid81_i_cmp16_batchnorm_c;
            WHEN OTHERS => expFracCompMux_uid93_i_cmp16_batchnorm_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- xorSigns_uid91_i_cmp16_batchnorm(LOGICAL,90)@289
    xorSigns_uid91_i_cmp16_batchnorm_q <= signX_uid86_i_cmp16_batchnorm_b xor signY_uid87_i_cmp16_batchnorm_b;

    -- sxEQsy_uid92_i_cmp16_batchnorm(LOGICAL,91)@289
    sxEQsy_uid92_i_cmp16_batchnorm_q <= not (xorSigns_uid91_i_cmp16_batchnorm_q);

    -- sxEQsyExpFracCompMux_uid98_i_cmp16_batchnorm(LOGICAL,97)@289
    sxEQsyExpFracCompMux_uid98_i_cmp16_batchnorm_q <= sxEQsy_uid92_i_cmp16_batchnorm_q and expFracCompMux_uid93_i_cmp16_batchnorm_q;

    -- r_uid99_i_cmp16_batchnorm(LOGICAL,98)@289 + 1
    r_uid99_i_cmp16_batchnorm_qi <= sxEQsyExpFracCompMux_uid98_i_cmp16_batchnorm_q or rc2_uid97_i_cmp16_batchnorm_q;
    r_uid99_i_cmp16_batchnorm_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => r_uid99_i_cmp16_batchnorm_qi, xout => r_uid99_i_cmp16_batchnorm_q, clk => clock, aclr => resetn );

    -- fracXIsNotZero_uid63_i_cmp16_batchnorm(LOGICAL,62)@288
    fracXIsNotZero_uid63_i_cmp16_batchnorm_q <= not (fracXIsZero_uid62_i_cmp16_batchnorm_q);

    -- cstAllOWE_uid38_i_cmp16_batchnorm(CONSTANT,37)
    cstAllOWE_uid38_i_cmp16_batchnorm_q <= "11111111";

    -- expXIsMax_uid61_i_cmp16_batchnorm(LOGICAL,60)@288
    expXIsMax_uid61_i_cmp16_batchnorm_q <= "1" WHEN exp_y_uid58_i_cmp16_batchnorm_b = cstAllOWE_uid38_i_cmp16_batchnorm_q ELSE "0";

    -- excN_y_uid66_i_cmp16_batchnorm(LOGICAL,65)@288 + 1
    excN_y_uid66_i_cmp16_batchnorm_qi <= expXIsMax_uid61_i_cmp16_batchnorm_q and fracXIsNotZero_uid63_i_cmp16_batchnorm_q;
    excN_y_uid66_i_cmp16_batchnorm_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_y_uid66_i_cmp16_batchnorm_qi, xout => excN_y_uid66_i_cmp16_batchnorm_q, clk => clock, aclr => resetn );

    -- fracXIsNotZero_uid46_i_cmp16_batchnorm(LOGICAL,45)@288
    fracXIsNotZero_uid46_i_cmp16_batchnorm_q <= not (fracXIsZero_uid45_i_cmp16_batchnorm_q);

    -- expXIsMax_uid44_i_cmp16_batchnorm(LOGICAL,43)@288
    expXIsMax_uid44_i_cmp16_batchnorm_q <= "1" WHEN exp_x_uid41_i_cmp16_batchnorm_b = cstAllOWE_uid38_i_cmp16_batchnorm_q ELSE "0";

    -- excN_x_uid49_i_cmp16_batchnorm(LOGICAL,48)@288 + 1
    excN_x_uid49_i_cmp16_batchnorm_qi <= expXIsMax_uid44_i_cmp16_batchnorm_q and fracXIsNotZero_uid46_i_cmp16_batchnorm_q;
    excN_x_uid49_i_cmp16_batchnorm_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_x_uid49_i_cmp16_batchnorm_qi, xout => excN_x_uid49_i_cmp16_batchnorm_q, clk => clock, aclr => resetn );

    -- oneIsNaN_uid72_i_cmp16_batchnorm(LOGICAL,71)@289 + 1
    oneIsNaN_uid72_i_cmp16_batchnorm_qi <= excN_x_uid49_i_cmp16_batchnorm_q or excN_y_uid66_i_cmp16_batchnorm_q;
    oneIsNaN_uid72_i_cmp16_batchnorm_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => oneIsNaN_uid72_i_cmp16_batchnorm_qi, xout => oneIsNaN_uid72_i_cmp16_batchnorm_q, clk => clock, aclr => resetn );

    -- rPostExc_uid100_i_cmp16_batchnorm(MUX,99)@290
    rPostExc_uid100_i_cmp16_batchnorm_s <= oneIsNaN_uid72_i_cmp16_batchnorm_q;
    rPostExc_uid100_i_cmp16_batchnorm_combproc: PROCESS (rPostExc_uid100_i_cmp16_batchnorm_s, r_uid99_i_cmp16_batchnorm_q, GND_q)
    BEGIN
        CASE (rPostExc_uid100_i_cmp16_batchnorm_s) IS
            WHEN "0" => rPostExc_uid100_i_cmp16_batchnorm_q <= r_uid99_i_cmp16_batchnorm_q;
            WHEN "1" => rPostExc_uid100_i_cmp16_batchnorm_q <= GND_q;
            WHEN OTHERS => rPostExc_uid100_i_cmp16_batchnorm_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_cmp16_p_batchnorm(MUX,24)@290 + 1
    i_cmp16_p_batchnorm_s <= rPostExc_uid100_i_cmp16_batchnorm_q;
    i_cmp16_p_batchnorm_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp16_p_batchnorm_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_cmp16_p_batchnorm_s) IS
                WHEN "0" => i_cmp16_p_batchnorm_q <= c_float_0x3FB99999A0000000_q;
                WHEN "1" => i_cmp16_p_batchnorm_q <= c_float_1_000000e_00_q;
                WHEN OTHERS => i_cmp16_p_batchnorm_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist7_i_add14_batchnorm_out_primWireOut_4(DELAY,108)
    redist7_i_add14_batchnorm_out_primWireOut_4 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_i_add14_batchnorm_out_primWireOut_2_q, xout => redist7_i_add14_batchnorm_out_primWireOut_4_q, clk => clock, aclr => resetn );

    -- i_mul18_m_batchnorm(BLACKBOX,29)@291
    -- out out_primWireOut@298
    thei_mul18_m_batchnorm : floatComponent_i_sfc_logic_c1_entry_batchnorm_c1_enter_batchnorm33_multBlock_typA0Zqcdo6u2ocpq6c0ouq3cz
    PORT MAP (
        in_0 => redist7_i_add14_batchnorm_out_primWireOut_4_q,
        in_1 => i_cmp16_p_batchnorm_q,
        out_primWireOut => i_mul18_m_batchnorm_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist1_i_mul18_m_batchnorm_out_primWireOut_1(DELAY,102)
    redist1_i_mul18_m_batchnorm_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul18_m_batchnorm_out_primWireOut, xout => redist1_i_mul18_m_batchnorm_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- redist8_i_add14_batchnorm_out_primWireOut_12_notEnable(LOGICAL,135)
    redist8_i_add14_batchnorm_out_primWireOut_12_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist8_i_add14_batchnorm_out_primWireOut_12_nor(LOGICAL,136)
    redist8_i_add14_batchnorm_out_primWireOut_12_nor_q <= not (redist8_i_add14_batchnorm_out_primWireOut_12_notEnable_q or redist8_i_add14_batchnorm_out_primWireOut_12_sticky_ena_q);

    -- redist8_i_add14_batchnorm_out_primWireOut_12_mem_last(CONSTANT,132)
    redist8_i_add14_batchnorm_out_primWireOut_12_mem_last_q <= "0100";

    -- redist8_i_add14_batchnorm_out_primWireOut_12_cmp(LOGICAL,133)
    redist8_i_add14_batchnorm_out_primWireOut_12_cmp_b <= STD_LOGIC_VECTOR("0" & redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_q);
    redist8_i_add14_batchnorm_out_primWireOut_12_cmp_q <= "1" WHEN redist8_i_add14_batchnorm_out_primWireOut_12_mem_last_q = redist8_i_add14_batchnorm_out_primWireOut_12_cmp_b ELSE "0";

    -- redist8_i_add14_batchnorm_out_primWireOut_12_cmpReg(REG,134)
    redist8_i_add14_batchnorm_out_primWireOut_12_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_add14_batchnorm_out_primWireOut_12_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist8_i_add14_batchnorm_out_primWireOut_12_cmpReg_q <= STD_LOGIC_VECTOR(redist8_i_add14_batchnorm_out_primWireOut_12_cmp_q);
        END IF;
    END PROCESS;

    -- redist8_i_add14_batchnorm_out_primWireOut_12_sticky_ena(REG,137)
    redist8_i_add14_batchnorm_out_primWireOut_12_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_add14_batchnorm_out_primWireOut_12_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist8_i_add14_batchnorm_out_primWireOut_12_nor_q = "1") THEN
                redist8_i_add14_batchnorm_out_primWireOut_12_sticky_ena_q <= STD_LOGIC_VECTOR(redist8_i_add14_batchnorm_out_primWireOut_12_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_i_add14_batchnorm_out_primWireOut_12_enaAnd(LOGICAL,138)
    redist8_i_add14_batchnorm_out_primWireOut_12_enaAnd_q <= redist8_i_add14_batchnorm_out_primWireOut_12_sticky_ena_q and VCC_q;

    -- redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt(COUNTER,130)
    -- low=0, high=5, step=1, init=0
    redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_i = TO_UNSIGNED(4, 3)) THEN
                redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_eq <= '1';
            ELSE
                redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_eq <= '0';
            END IF;
            IF (redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_eq = '1') THEN
                redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_i <= redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_i + 3;
            ELSE
                redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_i <= redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_i, 3)));

    -- redist8_i_add14_batchnorm_out_primWireOut_12_wraddr(REG,131)
    redist8_i_add14_batchnorm_out_primWireOut_12_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_add14_batchnorm_out_primWireOut_12_wraddr_q <= "101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist8_i_add14_batchnorm_out_primWireOut_12_wraddr_q <= STD_LOGIC_VECTOR(redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist8_i_add14_batchnorm_out_primWireOut_12_mem(DUALMEM,129)
    redist8_i_add14_batchnorm_out_primWireOut_12_mem_ia <= STD_LOGIC_VECTOR(redist7_i_add14_batchnorm_out_primWireOut_4_q);
    redist8_i_add14_batchnorm_out_primWireOut_12_mem_aa <= redist8_i_add14_batchnorm_out_primWireOut_12_wraddr_q;
    redist8_i_add14_batchnorm_out_primWireOut_12_mem_ab <= redist8_i_add14_batchnorm_out_primWireOut_12_rdcnt_q;
    redist8_i_add14_batchnorm_out_primWireOut_12_mem_reset0 <= not (resetn);
    redist8_i_add14_batchnorm_out_primWireOut_12_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 6,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 6,
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
        clocken1 => redist8_i_add14_batchnorm_out_primWireOut_12_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist8_i_add14_batchnorm_out_primWireOut_12_mem_reset0,
        clock1 => clock,
        address_a => redist8_i_add14_batchnorm_out_primWireOut_12_mem_aa,
        data_a => redist8_i_add14_batchnorm_out_primWireOut_12_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist8_i_add14_batchnorm_out_primWireOut_12_mem_ab,
        q_b => redist8_i_add14_batchnorm_out_primWireOut_12_mem_iq
    );
    redist8_i_add14_batchnorm_out_primWireOut_12_mem_q <= redist8_i_add14_batchnorm_out_primWireOut_12_mem_iq(31 downto 0);

    -- redist8_i_add14_batchnorm_out_primWireOut_12_outputreg(DELAY,128)
    redist8_i_add14_batchnorm_out_primWireOut_12_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_i_add14_batchnorm_out_primWireOut_12_mem_q, xout => redist8_i_add14_batchnorm_out_primWireOut_12_outputreg_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,10)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_syncbuf_relu_type_sync_buffer_batchnorm(BLACKBOX,32)@0
    -- in in_i_dependence@298
    -- in in_valid_in@298
    -- out out_buffer_out@298
    -- out out_valid_out@298
    thei_syncbuf_relu_type_sync_buffer_batchnorm : i_syncbuf_relu_type_sync_buffer_batchnorm38
    PORT MAP (
        in_buffer_in => in_relu_type,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist13_sync_in_aunroll_x_in_i_valid_88_q,
        out_buffer_out => i_syncbuf_relu_type_sync_buffer_batchnorm_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp_batchnorm(LOGICAL,25)@298 + 1
    i_cmp_batchnorm_qi <= "1" WHEN i_syncbuf_relu_type_sync_buffer_batchnorm_out_buffer_out = c_i32_1gr_q ELSE "0";
    i_cmp_batchnorm_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp_batchnorm_qi, xout => i_cmp_batchnorm_q, clk => clock, aclr => resetn );

    -- i_acl_4_batchnorm(MUX,12)@299
    i_acl_4_batchnorm_s <= i_cmp_batchnorm_q;
    i_acl_4_batchnorm_combproc: PROCESS (i_acl_4_batchnorm_s, redist8_i_add14_batchnorm_out_primWireOut_12_outputreg_q, redist1_i_mul18_m_batchnorm_out_primWireOut_1_q)
    BEGIN
        CASE (i_acl_4_batchnorm_s) IS
            WHEN "0" => i_acl_4_batchnorm_q <= redist8_i_add14_batchnorm_out_primWireOut_12_outputreg_q;
            WHEN "1" => i_acl_4_batchnorm_q <= redist1_i_mul18_m_batchnorm_out_primWireOut_1_q;
            WHEN OTHERS => i_acl_4_batchnorm_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,4)@299
    out_c1_exi1_0 <= GND_q;
    out_c1_exi1_1 <= i_acl_4_batchnorm_q;
    out_o_valid <= redist14_sync_in_aunroll_x_in_i_valid_89_q;

END normal;
