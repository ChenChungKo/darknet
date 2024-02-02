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

-- VHDL created from i_sfc_logic_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1438
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

entity i_sfc_logic_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1438 is
    port (
        in_c0_eni8_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_7 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c0_eni8_8 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_output_size : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi3292_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3292_1 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c0_exi3292_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi3292_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1438;

architecture normal of i_sfc_logic_c0_for_end_3_loopexit_loopexit_conv1x1_c0_enter285_conv1x1438 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_syncbuf_output_size_sync_buffer133_conv1x1443 is
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


    component i_syncbuf_output_size_sync_buffer134_conv1x1440 is
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
    signal bgTrunc_i_inc41_3_conv1x1_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_float_0_000000e_00_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_4gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_came_from_for_end_1_select_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_came_from_for_end_2_select99_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp9_rm171_conv1x1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_rm171_conv1x1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_rm171_conv1x1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_rm171_conv1x1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_do_directly_for_end_3_loopexit_select126_conv1x1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_do_directly_for_end_3_loopexit_select126_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_do_directly_for_end_3_loopexit_select_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_do_directly_for_end_3_select127_demorgan_conv1x1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_do_directly_for_end_3_select127_demorgan_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_do_directly_for_end_3_select_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_do_for_end_3_from_for_end_3_loopexit_conv1x1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_do_for_end_3_from_for_end_3_loopexit_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond11_1_not_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond11_3_conv1x1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond11_3_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond11_not_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_for_cond9_preheader_branch_back68697071_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_from_for_end_331_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc41_3_conv1x1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc41_3_conv1x1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc41_3_conv1x1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc41_3_conv1x1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_not_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_not_phi_decision89_select_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv1x1_0_conv1x1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv1x1_0_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv1x1_1_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv1x1_2_conv1x1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select51_conv1x1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select51_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_output_size_sync_buffer133_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_output_size_sync_buffer134_conv1x1_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_reduction_conv1x1_0_conv1x1_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_not_phi_decision89_select_conv1x1_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_sync_in_aunroll_x_in_c0_eni8_4_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_c0_eni8_7_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_bgTrunc_i_inc41_3_conv1x1_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_bgTrunc_i_inc41_3_conv1x1_sel_x_b_2_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist4_sync_in_aunroll_x_in_i_valid_1(DELAY,43)
    redist4_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist4_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist5_sync_in_aunroll_x_in_i_valid_2(DELAY,44)
    redist5_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_sync_in_aunroll_x_in_i_valid_1_q, xout => redist5_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- i_do_directly_for_end_3_select127_demorgan_conv1x1(LOGICAL,17)@0 + 1
    i_do_directly_for_end_3_select127_demorgan_conv1x1_qi <= in_c0_eni8_1 or in_c0_eni8_2;
    i_do_directly_for_end_3_select127_demorgan_conv1x1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_do_directly_for_end_3_select127_demorgan_conv1x1_qi, xout => i_do_directly_for_end_3_select127_demorgan_conv1x1_q, clk => clock, aclr => resetn );

    -- i_do_directly_for_end_3_select_conv1x1(LOGICAL,18)@1
    i_do_directly_for_end_3_select_conv1x1_q <= i_do_directly_for_end_3_select127_demorgan_conv1x1_q xor VCC_q;

    -- redist2_sync_in_aunroll_x_in_c0_eni8_4_1(DELAY,41)
    redist2_sync_in_aunroll_x_in_c0_eni8_4_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni8_4, xout => redist2_sync_in_aunroll_x_in_c0_eni8_4_1_q, clk => clock, aclr => resetn );

    -- i_exitcond11_not_conv1x1(LOGICAL,22)@1
    i_exitcond11_not_conv1x1_q <= redist2_sync_in_aunroll_x_in_c0_eni8_4_1_q xor VCC_q;

    -- i_syncbuf_output_size_sync_buffer134_conv1x1(BLACKBOX,33)@0
    thei_syncbuf_output_size_sync_buffer134_conv1x1 : i_syncbuf_output_size_sync_buffer134_conv1x1440
    PORT MAP (
        in_buffer_in => in_output_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_output_size_sync_buffer134_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,10)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_cmp9_rm171_conv1x1(COMPARE,14)@0 + 1
    i_cmp9_rm171_conv1x1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp9_rm171_conv1x1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_output_size_sync_buffer134_conv1x1_out_buffer_out(31)) & i_syncbuf_output_size_sync_buffer134_conv1x1_out_buffer_out));
    i_cmp9_rm171_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp9_rm171_conv1x1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp9_rm171_conv1x1_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp9_rm171_conv1x1_a) - SIGNED(i_cmp9_rm171_conv1x1_b));
        END IF;
    END PROCESS;
    i_cmp9_rm171_conv1x1_c(0) <= i_cmp9_rm171_conv1x1_o(33);

    -- i_not_phi_decision89_select_conv1x1(LOGICAL,27)@1
    i_not_phi_decision89_select_conv1x1_q <= i_cmp9_rm171_conv1x1_c and i_exitcond11_not_conv1x1_q;

    -- i_not_conv1x1(LOGICAL,26)@0
    i_not_conv1x1_q <= in_c0_eni8_1 xor VCC_q;

    -- i_do_directly_for_end_3_loopexit_select126_conv1x1(LOGICAL,15)@0 + 1
    i_do_directly_for_end_3_loopexit_select126_conv1x1_qi <= in_c0_eni8_2 and i_not_conv1x1_q;
    i_do_directly_for_end_3_loopexit_select126_conv1x1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_do_directly_for_end_3_loopexit_select126_conv1x1_qi, xout => i_do_directly_for_end_3_loopexit_select126_conv1x1_q, clk => clock, aclr => resetn );

    -- i_do_directly_for_end_3_loopexit_select_conv1x1(LOGICAL,16)@1
    i_do_directly_for_end_3_loopexit_select_conv1x1_q <= i_do_directly_for_end_3_loopexit_select126_conv1x1_q and i_not_phi_decision89_select_conv1x1_q;

    -- i_do_for_end_3_from_for_end_3_loopexit_conv1x1(LOGICAL,19)@1 + 1
    i_do_for_end_3_from_for_end_3_loopexit_conv1x1_qi <= i_do_directly_for_end_3_loopexit_select_conv1x1_q or i_do_directly_for_end_3_select_conv1x1_q;
    i_do_for_end_3_from_for_end_3_loopexit_conv1x1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_do_for_end_3_from_for_end_3_loopexit_conv1x1_qi, xout => i_do_for_end_3_from_for_end_3_loopexit_conv1x1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_output_size_sync_buffer133_conv1x1(BLACKBOX,32)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_output_size_sync_buffer133_conv1x1 : i_syncbuf_output_size_sync_buffer133_conv1x1443
    PORT MAP (
        in_buffer_in => in_output_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist4_sync_in_aunroll_x_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_output_size_sync_buffer133_conv1x1_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_4gr(CONSTANT,11)
    c_i32_4gr_q <= "00000000000000000000000000000100";

    -- i_inc41_3_conv1x1(ADD,25)@0
    i_inc41_3_conv1x1_a <= STD_LOGIC_VECTOR("0" & in_c0_eni8_8);
    i_inc41_3_conv1x1_b <= STD_LOGIC_VECTOR("0" & c_i32_4gr_q);
    i_inc41_3_conv1x1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc41_3_conv1x1_a) + UNSIGNED(i_inc41_3_conv1x1_b));
    i_inc41_3_conv1x1_q <= i_inc41_3_conv1x1_o(32 downto 0);

    -- bgTrunc_i_inc41_3_conv1x1_sel_x(BITSELECT,2)@0
    bgTrunc_i_inc41_3_conv1x1_sel_x_b <= i_inc41_3_conv1x1_q(31 downto 0);

    -- redist6_bgTrunc_i_inc41_3_conv1x1_sel_x_b_1(DELAY,45)
    redist6_bgTrunc_i_inc41_3_conv1x1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_inc41_3_conv1x1_sel_x_b, xout => redist6_bgTrunc_i_inc41_3_conv1x1_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_exitcond11_3_conv1x1(LOGICAL,21)@1 + 1
    i_exitcond11_3_conv1x1_qi <= "1" WHEN redist6_bgTrunc_i_inc41_3_conv1x1_sel_x_b_1_q = i_syncbuf_output_size_sync_buffer133_conv1x1_out_buffer_out ELSE "0";
    i_exitcond11_3_conv1x1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond11_3_conv1x1_qi, xout => i_exitcond11_3_conv1x1_q, clk => clock, aclr => resetn );

    -- i_from_for_end_331_conv1x1(LOGICAL,24)@2
    i_from_for_end_331_conv1x1_q <= i_exitcond11_3_conv1x1_q and i_do_for_end_3_from_for_end_3_loopexit_conv1x1_q;

    -- i_for_cond9_preheader_branch_back68697071_conv1x1(LOGICAL,23)@2
    i_for_cond9_preheader_branch_back68697071_conv1x1_q <= i_from_for_end_331_conv1x1_q xor VCC_q;

    -- redist1_i_not_phi_decision89_select_conv1x1_q_1(DELAY,40)
    redist1_i_not_phi_decision89_select_conv1x1_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_not_phi_decision89_select_conv1x1_q, xout => redist1_i_not_phi_decision89_select_conv1x1_q_1_q, clk => clock, aclr => resetn );

    -- i_reduction_conv1x1_1_conv1x1(LOGICAL,29)@2
    i_reduction_conv1x1_1_conv1x1_q <= redist1_i_not_phi_decision89_select_conv1x1_q_1_q and i_for_cond9_preheader_branch_back68697071_conv1x1_q;

    -- i_exitcond11_1_not_conv1x1(LOGICAL,20)@0
    i_exitcond11_1_not_conv1x1_q <= in_c0_eni8_5 xor VCC_q;

    -- i_came_from_for_end_1_select_conv1x1(LOGICAL,12)@0
    i_came_from_for_end_1_select_conv1x1_q <= in_c0_eni8_6 or i_exitcond11_1_not_conv1x1_q;

    -- i_came_from_for_end_2_select99_conv1x1(LOGICAL,13)@0
    i_came_from_for_end_2_select99_conv1x1_q <= in_c0_eni8_3 or i_not_conv1x1_q;

    -- i_reduction_conv1x1_0_conv1x1(LOGICAL,28)@0 + 1
    i_reduction_conv1x1_0_conv1x1_qi <= i_came_from_for_end_2_select99_conv1x1_q and i_came_from_for_end_1_select_conv1x1_q;
    i_reduction_conv1x1_0_conv1x1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_conv1x1_0_conv1x1_qi, xout => i_reduction_conv1x1_0_conv1x1_q, clk => clock, aclr => resetn );

    -- redist0_i_reduction_conv1x1_0_conv1x1_q_2(DELAY,39)
    redist0_i_reduction_conv1x1_0_conv1x1_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_conv1x1_0_conv1x1_q, xout => redist0_i_reduction_conv1x1_0_conv1x1_q_2_q, clk => clock, aclr => resetn );

    -- i_reduction_conv1x1_2_conv1x1(LOGICAL,30)@2
    i_reduction_conv1x1_2_conv1x1_q <= redist0_i_reduction_conv1x1_0_conv1x1_q_2_q and i_reduction_conv1x1_1_conv1x1_q;

    -- redist7_bgTrunc_i_inc41_3_conv1x1_sel_x_b_2(DELAY,46)
    redist7_bgTrunc_i_inc41_3_conv1x1_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_bgTrunc_i_inc41_3_conv1x1_sel_x_b_1_q, xout => redist7_bgTrunc_i_inc41_3_conv1x1_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- redist3_sync_in_aunroll_x_in_c0_eni8_7_1(DELAY,42)
    redist3_sync_in_aunroll_x_in_c0_eni8_7_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni8_7, xout => redist3_sync_in_aunroll_x_in_c0_eni8_7_1_q, clk => clock, aclr => resetn );

    -- c_float_0_000000e_00(FLOATCONSTANT,7)
    c_float_0_000000e_00_q <= "00000000000000000000000000000000";

    -- i_select51_conv1x1(MUX,31)@1 + 1
    i_select51_conv1x1_s <= i_do_directly_for_end_3_loopexit_select_conv1x1_q;
    i_select51_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_select51_conv1x1_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_select51_conv1x1_s) IS
                WHEN "0" => i_select51_conv1x1_q <= c_float_0_000000e_00_q;
                WHEN "1" => i_select51_conv1x1_q <= redist3_sync_in_aunroll_x_in_c0_eni8_7_1_q;
                WHEN OTHERS => i_select51_conv1x1_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,5)@2
    out_c0_exi3292_0 <= GND_q;
    out_c0_exi3292_1 <= i_select51_conv1x1_q;
    out_c0_exi3292_2 <= redist7_bgTrunc_i_inc41_3_conv1x1_sel_x_b_2_q;
    out_c0_exi3292_3 <= i_reduction_conv1x1_2_conv1x1_q;
    out_o_valid <= redist5_sync_in_aunroll_x_in_i_valid_2_q;

END normal;
