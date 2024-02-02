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

-- VHDL created from i_sfc_logic_c0_entry_pool_c0_enter_pool2
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

entity i_sfc_logic_c0_entry_pool_c0_enter_pool2 is
    port (
        out_c0_exi4_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi4_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_kernel_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_out_size : in std_logic_vector(31 downto 0);  -- ufix32
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_entry_pool_c0_enter_pool2;

architecture normal of i_sfc_logic_c0_entry_pool_c0_enter_pool2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_syncbuf_kernel_size_sync_buffer2_pool7 is
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


    component i_syncbuf_out_size_sync_buffer7_pool4 is
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
    signal bgTrunc_i_mul_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cmp103_pool_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp103_pool_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp103_pool_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp103_pool_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp8_phi_decision16_xor_or_demorgan_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp8_phi_decision16_xor_or_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp8_pool_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp8_pool_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp8_pool_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp8_pool_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_neg_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_kernel_size_sync_buffer2_pool_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_out_size_sync_buffer7_pool_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul_pool_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul_pool_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul_pool_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul_pool_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul_pool_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul_pool_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul_pool_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul_pool_bs6_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul_pool_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul_pool_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul_pool_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul_pool_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul_pool_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul_pool_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul_pool_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul_pool_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul_pool_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul_pool_im0_cma_reset : std_logic;
    type i_mul_pool_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul_pool_im0_cma_a0 : i_mul_pool_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_mul_pool_im0_cma_a0 : signal is true;
    signal i_mul_pool_im0_cma_c0 : i_mul_pool_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul_pool_im0_cma_c0 : signal is true;
    type i_mul_pool_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul_pool_im0_cma_p : i_mul_pool_im0_cma_ptype(0 to 0);
    signal i_mul_pool_im0_cma_u : i_mul_pool_im0_cma_ptype(0 to 0);
    signal i_mul_pool_im0_cma_w : i_mul_pool_im0_cma_ptype(0 to 0);
    signal i_mul_pool_im0_cma_x : i_mul_pool_im0_cma_ptype(0 to 0);
    signal i_mul_pool_im0_cma_y : i_mul_pool_im0_cma_ptype(0 to 0);
    signal i_mul_pool_im0_cma_s : i_mul_pool_im0_cma_ptype(0 to 0);
    signal i_mul_pool_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul_pool_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul_pool_im0_cma_ena0 : std_logic;
    signal i_mul_pool_im0_cma_ena1 : std_logic;
    signal i_mul_pool_im10_cma_reset : std_logic;
    type i_mul_pool_im10_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal i_mul_pool_im10_cma_a0 : i_mul_pool_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul_pool_im10_cma_a0 : signal is true;
    signal i_mul_pool_im10_cma_c0 : i_mul_pool_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul_pool_im10_cma_c0 : signal is true;
    type i_mul_pool_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_mul_pool_im10_cma_p : i_mul_pool_im10_cma_ptype(0 to 0);
    signal i_mul_pool_im10_cma_u : i_mul_pool_im10_cma_ptype(0 to 0);
    signal i_mul_pool_im10_cma_w : i_mul_pool_im10_cma_ptype(0 to 0);
    signal i_mul_pool_im10_cma_x : i_mul_pool_im10_cma_ptype(0 to 0);
    signal i_mul_pool_im10_cma_y : i_mul_pool_im10_cma_ptype(0 to 0);
    signal i_mul_pool_im10_cma_s : i_mul_pool_im10_cma_ptype(0 to 0);
    signal i_mul_pool_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul_pool_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul_pool_im10_cma_ena0 : std_logic;
    signal i_mul_pool_im10_cma_ena1 : std_logic;
    signal i_mul_pool_ma3_cma_reset : std_logic;
    signal i_mul_pool_ma3_cma_a0 : i_mul_pool_im10_cma_a0type(0 to 1);
    attribute preserve of i_mul_pool_ma3_cma_a0 : signal is true;
    type i_mul_pool_ma3_cma_c0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_mul_pool_ma3_cma_c0 : i_mul_pool_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul_pool_ma3_cma_c0 : signal is true;
    type i_mul_pool_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal i_mul_pool_ma3_cma_l : i_mul_pool_ma3_cma_ltype(0 to 1);
    type i_mul_pool_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_mul_pool_ma3_cma_p : i_mul_pool_ma3_cma_ptype(0 to 1);
    type i_mul_pool_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_mul_pool_ma3_cma_u : i_mul_pool_ma3_cma_utype(0 to 1);
    signal i_mul_pool_ma3_cma_w : i_mul_pool_ma3_cma_utype(0 to 0);
    signal i_mul_pool_ma3_cma_x : i_mul_pool_ma3_cma_utype(0 to 0);
    signal i_mul_pool_ma3_cma_y : i_mul_pool_ma3_cma_utype(0 to 0);
    signal i_mul_pool_ma3_cma_s : i_mul_pool_ma3_cma_utype(0 to 0);
    signal i_mul_pool_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul_pool_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul_pool_ma3_cma_ena0 : std_logic;
    signal i_mul_pool_ma3_cma_ena1 : std_logic;
    signal redist0_i_mul_pool_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist1_i_mul_pool_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist2_i_mul_pool_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist3_sync_in_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_bgTrunc_i_mul_pool_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_bgTrunc_i_mul_pool_sel_x_b_2_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist3_sync_in_in_i_valid_4(DELAY,46)
    redist3_sync_in_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist3_sync_in_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist4_sync_in_in_i_valid_5(DELAY,47)
    redist4_sync_in_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_sync_in_in_i_valid_4_q, xout => redist4_sync_in_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- i_syncbuf_out_size_sync_buffer7_pool(BLACKBOX,16)@0
    -- in in_i_dependence@5
    -- in in_valid_in@5
    -- out out_buffer_out@5
    -- out out_valid_out@5
    thei_syncbuf_out_size_sync_buffer7_pool : i_syncbuf_out_size_sync_buffer7_pool4
    PORT MAP (
        in_buffer_in => in_out_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist3_sync_in_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_out_size_sync_buffer7_pool_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,8)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_cmp8_pool(COMPARE,12)@5 + 1
    i_cmp8_pool_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp8_pool_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_out_size_sync_buffer7_pool_out_buffer_out(31)) & i_syncbuf_out_size_sync_buffer7_pool_out_buffer_out));
    i_cmp8_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp8_pool_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp8_pool_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp8_pool_a) - SIGNED(i_cmp8_pool_b));
        END IF;
    END PROCESS;
    i_cmp8_pool_c(0) <= i_cmp8_pool_o(33);

    -- i_cmp8_phi_decision16_xor_or_demorgan_pool(LOGICAL,10)@6
    i_cmp8_phi_decision16_xor_or_demorgan_pool_q <= i_cmp103_pool_c and i_cmp8_pool_c;

    -- i_cmp8_phi_decision16_xor_or_pool(LOGICAL,11)@6
    i_cmp8_phi_decision16_xor_or_pool_q <= i_cmp8_phi_decision16_xor_or_demorgan_pool_q xor VCC_q;

    -- i_exitcond_neg_pool(LOGICAL,13)@6
    i_exitcond_neg_pool_q <= i_cmp103_pool_c xor VCC_q;

    -- i_syncbuf_kernel_size_sync_buffer2_pool(BLACKBOX,15)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_kernel_size_sync_buffer2_pool : i_syncbuf_kernel_size_sync_buffer2_pool7
    PORT MAP (
        in_buffer_in => in_kernel_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_kernel_size_sync_buffer2_pool_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul_pool_bs4(BITSELECT,27)@1
    i_mul_pool_bs4_in <= STD_LOGIC_VECTOR(i_syncbuf_kernel_size_sync_buffer2_pool_out_buffer_out(17 downto 0));
    i_mul_pool_bs4_b <= STD_LOGIC_VECTOR(i_mul_pool_bs4_in(17 downto 0));

    -- i_mul_pool_bjA5(BITJOIN,28)@1
    i_mul_pool_bjA5_q <= GND_q & i_mul_pool_bs4_b;

    -- i_mul_pool_bs6(BITSELECT,29)@1
    i_mul_pool_bs6_b <= i_syncbuf_kernel_size_sync_buffer2_pool_out_buffer_out(31 downto 18);

    -- i_mul_pool_bs1(BITSELECT,24)@1
    i_mul_pool_bs1_in <= i_syncbuf_kernel_size_sync_buffer2_pool_out_buffer_out(17 downto 0);
    i_mul_pool_bs1_b <= i_mul_pool_bs1_in(17 downto 0);

    -- i_mul_pool_bjB9(BITJOIN,32)@1
    i_mul_pool_bjB9_q <= GND_q & i_mul_pool_bs1_b;

    -- i_mul_pool_bs7(BITSELECT,30)@1
    i_mul_pool_bs7_b <= STD_LOGIC_VECTOR(i_syncbuf_kernel_size_sync_buffer2_pool_out_buffer_out(31 downto 18));

    -- i_mul_pool_ma3_cma(CHAINMULTADD,42)@1 + 2
    i_mul_pool_ma3_cma_reset <= not (resetn);
    i_mul_pool_ma3_cma_ena0 <= '1';
    i_mul_pool_ma3_cma_ena1 <= i_mul_pool_ma3_cma_ena0;
    i_mul_pool_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul_pool_ma3_cma_a0(0),15));
    i_mul_pool_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul_pool_ma3_cma_a0(1),15));
    i_mul_pool_ma3_cma_p(0) <= i_mul_pool_ma3_cma_l(0) * i_mul_pool_ma3_cma_c0(0);
    i_mul_pool_ma3_cma_p(1) <= i_mul_pool_ma3_cma_l(1) * i_mul_pool_ma3_cma_c0(1);
    i_mul_pool_ma3_cma_u(0) <= RESIZE(i_mul_pool_ma3_cma_p(0),35);
    i_mul_pool_ma3_cma_u(1) <= RESIZE(i_mul_pool_ma3_cma_p(1),35);
    i_mul_pool_ma3_cma_w(0) <= i_mul_pool_ma3_cma_u(0) + i_mul_pool_ma3_cma_u(1);
    i_mul_pool_ma3_cma_x(0) <= i_mul_pool_ma3_cma_w(0);
    i_mul_pool_ma3_cma_y(0) <= i_mul_pool_ma3_cma_x(0);
    i_mul_pool_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_pool_ma3_cma_a0 <= (others => (others => '0'));
            i_mul_pool_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_pool_ma3_cma_ena0 = '1') THEN
                i_mul_pool_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul_pool_bs7_b),14);
                i_mul_pool_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul_pool_bs6_b),14);
                i_mul_pool_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul_pool_bjB9_q),19);
                i_mul_pool_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul_pool_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul_pool_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_pool_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_pool_ma3_cma_ena1 = '1') THEN
                i_mul_pool_ma3_cma_s(0) <= i_mul_pool_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul_pool_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul_pool_ma3_cma_s(0)(33 downto 0)), xout => i_mul_pool_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul_pool_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul_pool_ma3_cma_qq(33 downto 0));

    -- redist0_i_mul_pool_ma3_cma_q_1(DELAY,43)
    redist0_i_mul_pool_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul_pool_ma3_cma_q, xout => redist0_i_mul_pool_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul_pool_align_14(BITSHIFT,37)@4
    i_mul_pool_align_14_qint <= redist0_i_mul_pool_ma3_cma_q_1_q & "000000000000000000";
    i_mul_pool_align_14_q <= i_mul_pool_align_14_qint(51 downto 0);

    -- i_mul_pool_im10_cma(CHAINMULTADD,41)@1 + 2
    i_mul_pool_im10_cma_reset <= not (resetn);
    i_mul_pool_im10_cma_ena0 <= '1';
    i_mul_pool_im10_cma_ena1 <= i_mul_pool_im10_cma_ena0;
    i_mul_pool_im10_cma_p(0) <= i_mul_pool_im10_cma_a0(0) * i_mul_pool_im10_cma_c0(0);
    i_mul_pool_im10_cma_u(0) <= RESIZE(i_mul_pool_im10_cma_p(0),28);
    i_mul_pool_im10_cma_w(0) <= i_mul_pool_im10_cma_u(0);
    i_mul_pool_im10_cma_x(0) <= i_mul_pool_im10_cma_w(0);
    i_mul_pool_im10_cma_y(0) <= i_mul_pool_im10_cma_x(0);
    i_mul_pool_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_pool_im10_cma_a0 <= (others => (others => '0'));
            i_mul_pool_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_pool_im10_cma_ena0 = '1') THEN
                i_mul_pool_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul_pool_bs6_b),14);
                i_mul_pool_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul_pool_bs6_b),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul_pool_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_pool_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_pool_im10_cma_ena1 = '1') THEN
                i_mul_pool_im10_cma_s(0) <= i_mul_pool_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul_pool_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul_pool_im10_cma_s(0)(27 downto 0)), xout => i_mul_pool_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul_pool_im10_cma_q <= STD_LOGIC_VECTOR(i_mul_pool_im10_cma_qq(27 downto 0));

    -- redist1_i_mul_pool_im10_cma_q_1(DELAY,44)
    redist1_i_mul_pool_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul_pool_im10_cma_q, xout => redist1_i_mul_pool_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul_pool_im0_cma(CHAINMULTADD,40)@1 + 2
    i_mul_pool_im0_cma_reset <= not (resetn);
    i_mul_pool_im0_cma_ena0 <= '1';
    i_mul_pool_im0_cma_ena1 <= i_mul_pool_im0_cma_ena0;
    i_mul_pool_im0_cma_p(0) <= i_mul_pool_im0_cma_a0(0) * i_mul_pool_im0_cma_c0(0);
    i_mul_pool_im0_cma_u(0) <= RESIZE(i_mul_pool_im0_cma_p(0),36);
    i_mul_pool_im0_cma_w(0) <= i_mul_pool_im0_cma_u(0);
    i_mul_pool_im0_cma_x(0) <= i_mul_pool_im0_cma_w(0);
    i_mul_pool_im0_cma_y(0) <= i_mul_pool_im0_cma_x(0);
    i_mul_pool_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_pool_im0_cma_a0 <= (others => (others => '0'));
            i_mul_pool_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_pool_im0_cma_ena0 = '1') THEN
                i_mul_pool_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul_pool_bs1_b),18);
                i_mul_pool_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul_pool_bs1_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul_pool_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_pool_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul_pool_im0_cma_ena1 = '1') THEN
                i_mul_pool_im0_cma_s(0) <= i_mul_pool_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul_pool_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul_pool_im0_cma_s(0)(35 downto 0)), xout => i_mul_pool_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul_pool_im0_cma_q <= STD_LOGIC_VECTOR(i_mul_pool_im0_cma_qq(35 downto 0));

    -- redist2_i_mul_pool_im0_cma_q_1(DELAY,45)
    redist2_i_mul_pool_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul_pool_im0_cma_q, xout => redist2_i_mul_pool_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul_pool_join_13(BITJOIN,36)@4
    i_mul_pool_join_13_q <= redist1_i_mul_pool_im10_cma_q_1_q & redist2_i_mul_pool_im0_cma_q_1_q;

    -- i_mul_pool_result_add_0_0(ADD,39)@4
    i_mul_pool_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul_pool_join_13_q));
    i_mul_pool_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul_pool_align_14_q(51)) & i_mul_pool_align_14_q));
    i_mul_pool_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul_pool_result_add_0_0_a) + SIGNED(i_mul_pool_result_add_0_0_b));
    i_mul_pool_result_add_0_0_q <= i_mul_pool_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul_pool_rnd_sel(BITSELECT,22)@4
    bgTrunc_i_mul_pool_rnd_sel_in <= i_mul_pool_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul_pool_rnd_sel_b <= bgTrunc_i_mul_pool_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul_pool_sel_x(BITSELECT,2)@4
    bgTrunc_i_mul_pool_sel_x_b <= bgTrunc_i_mul_pool_rnd_sel_b(31 downto 0);

    -- redist5_bgTrunc_i_mul_pool_sel_x_b_1(DELAY,48)
    redist5_bgTrunc_i_mul_pool_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul_pool_sel_x_b, xout => redist5_bgTrunc_i_mul_pool_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp103_pool(COMPARE,9)@5 + 1
    i_cmp103_pool_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp103_pool_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist5_bgTrunc_i_mul_pool_sel_x_b_1_q(31)) & redist5_bgTrunc_i_mul_pool_sel_x_b_1_q));
    i_cmp103_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp103_pool_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp103_pool_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp103_pool_a) - SIGNED(i_cmp103_pool_b));
        END IF;
    END PROCESS;
    i_cmp103_pool_c(0) <= i_cmp103_pool_o(33);

    -- redist6_bgTrunc_i_mul_pool_sel_x_b_2(DELAY,49)
    redist6_bgTrunc_i_mul_pool_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_bgTrunc_i_mul_pool_sel_x_b_1_q, xout => redist6_bgTrunc_i_mul_pool_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,4)@6
    out_c0_exi4_0 <= GND_q;
    out_c0_exi4_1 <= redist6_bgTrunc_i_mul_pool_sel_x_b_2_q;
    out_c0_exi4_2 <= i_cmp103_pool_c;
    out_c0_exi4_3 <= i_exitcond_neg_pool_q;
    out_c0_exi4_4 <= i_cmp8_phi_decision16_xor_or_pool_q;
    out_o_valid <= redist4_sync_in_in_i_valid_5_q;

END normal;
