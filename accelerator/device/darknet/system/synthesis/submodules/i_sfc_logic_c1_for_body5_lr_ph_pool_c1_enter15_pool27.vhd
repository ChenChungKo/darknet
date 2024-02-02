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

-- VHDL created from i_sfc_logic_c1_for_body5_lr_ph_pool_c1_enter15_pool27
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

entity i_sfc_logic_c1_for_body5_lr_ph_pool_c1_enter15_pool27 is
    port (
        in_c1_eni2_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni2_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_eni2_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exi117_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi117_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_for_body5_lr_ph_pool_c1_enter15_pool27;

architecture normal of i_sfc_logic_c1_for_body5_lr_ph_pool_c1_enter15_pool27 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_syncbuf_stride_sync_buffer_pool29 is
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
    signal bgTrunc_i_add_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul19_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_stride_sync_buffer_pool_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul19_pool_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul19_pool_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul19_pool_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul19_pool_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul19_pool_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul19_pool_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul19_pool_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul19_pool_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul19_pool_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul19_pool_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul19_pool_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul19_pool_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul19_pool_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul19_pool_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul19_pool_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul19_pool_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul19_pool_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul19_pool_im0_cma_reset : std_logic;
    type i_mul19_pool_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul19_pool_im0_cma_a0 : i_mul19_pool_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_mul19_pool_im0_cma_a0 : signal is true;
    signal i_mul19_pool_im0_cma_c0 : i_mul19_pool_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul19_pool_im0_cma_c0 : signal is true;
    type i_mul19_pool_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul19_pool_im0_cma_p : i_mul19_pool_im0_cma_ptype(0 to 0);
    signal i_mul19_pool_im0_cma_u : i_mul19_pool_im0_cma_ptype(0 to 0);
    signal i_mul19_pool_im0_cma_w : i_mul19_pool_im0_cma_ptype(0 to 0);
    signal i_mul19_pool_im0_cma_x : i_mul19_pool_im0_cma_ptype(0 to 0);
    signal i_mul19_pool_im0_cma_y : i_mul19_pool_im0_cma_ptype(0 to 0);
    signal i_mul19_pool_im0_cma_s : i_mul19_pool_im0_cma_ptype(0 to 0);
    signal i_mul19_pool_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul19_pool_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul19_pool_im0_cma_ena0 : std_logic;
    signal i_mul19_pool_im0_cma_ena1 : std_logic;
    signal i_mul19_pool_im10_cma_reset : std_logic;
    type i_mul19_pool_im10_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal i_mul19_pool_im10_cma_a0 : i_mul19_pool_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul19_pool_im10_cma_a0 : signal is true;
    signal i_mul19_pool_im10_cma_c0 : i_mul19_pool_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul19_pool_im10_cma_c0 : signal is true;
    type i_mul19_pool_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_mul19_pool_im10_cma_p : i_mul19_pool_im10_cma_ptype(0 to 0);
    signal i_mul19_pool_im10_cma_u : i_mul19_pool_im10_cma_ptype(0 to 0);
    signal i_mul19_pool_im10_cma_w : i_mul19_pool_im10_cma_ptype(0 to 0);
    signal i_mul19_pool_im10_cma_x : i_mul19_pool_im10_cma_ptype(0 to 0);
    signal i_mul19_pool_im10_cma_y : i_mul19_pool_im10_cma_ptype(0 to 0);
    signal i_mul19_pool_im10_cma_s : i_mul19_pool_im10_cma_ptype(0 to 0);
    signal i_mul19_pool_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul19_pool_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul19_pool_im10_cma_ena0 : std_logic;
    signal i_mul19_pool_im10_cma_ena1 : std_logic;
    signal i_mul19_pool_ma3_cma_reset : std_logic;
    signal i_mul19_pool_ma3_cma_a0 : i_mul19_pool_im10_cma_a0type(0 to 1);
    attribute preserve of i_mul19_pool_ma3_cma_a0 : signal is true;
    type i_mul19_pool_ma3_cma_c0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_mul19_pool_ma3_cma_c0 : i_mul19_pool_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul19_pool_ma3_cma_c0 : signal is true;
    type i_mul19_pool_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal i_mul19_pool_ma3_cma_l : i_mul19_pool_ma3_cma_ltype(0 to 1);
    type i_mul19_pool_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_mul19_pool_ma3_cma_p : i_mul19_pool_ma3_cma_ptype(0 to 1);
    type i_mul19_pool_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_mul19_pool_ma3_cma_u : i_mul19_pool_ma3_cma_utype(0 to 1);
    signal i_mul19_pool_ma3_cma_w : i_mul19_pool_ma3_cma_utype(0 to 0);
    signal i_mul19_pool_ma3_cma_x : i_mul19_pool_ma3_cma_utype(0 to 0);
    signal i_mul19_pool_ma3_cma_y : i_mul19_pool_ma3_cma_utype(0 to 0);
    signal i_mul19_pool_ma3_cma_s : i_mul19_pool_ma3_cma_utype(0 to 0);
    signal i_mul19_pool_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul19_pool_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul19_pool_ma3_cma_ena0 : std_logic;
    signal i_mul19_pool_ma3_cma_ena1 : std_logic;
    signal i_mul19_pool_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul19_pool_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal redist0_i_mul19_pool_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist1_i_mul19_pool_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist2_i_mul19_pool_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist4_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_bgTrunc_i_mul19_pool_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_reset0 : std_logic;
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_i : signal is true;
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist3_sync_in_aunroll_x_in_c1_eni2_2_4_sticky_ena_q : signal is true;
    signal redist3_sync_in_aunroll_x_in_c1_eni2_2_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist4_sync_in_aunroll_x_in_i_valid_4(DELAY,39)
    redist4_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist4_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist3_sync_in_aunroll_x_in_c1_eni2_2_4_notEnable(LOGICAL,46)
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_sync_in_aunroll_x_in_c1_eni2_2_4_nor(LOGICAL,47)
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_nor_q <= not (redist3_sync_in_aunroll_x_in_c1_eni2_2_4_notEnable_q or redist3_sync_in_aunroll_x_in_c1_eni2_2_4_sticky_ena_q);

    -- redist3_sync_in_aunroll_x_in_c1_eni2_2_4_cmpReg(REG,45)
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_sync_in_aunroll_x_in_c1_eni2_2_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_sync_in_aunroll_x_in_c1_eni2_2_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist3_sync_in_aunroll_x_in_c1_eni2_2_4_sticky_ena(REG,48)
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_sync_in_aunroll_x_in_c1_eni2_2_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_sync_in_aunroll_x_in_c1_eni2_2_4_nor_q = "1") THEN
                redist3_sync_in_aunroll_x_in_c1_eni2_2_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_sync_in_aunroll_x_in_c1_eni2_2_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_sync_in_aunroll_x_in_c1_eni2_2_4_enaAnd(LOGICAL,49)
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_enaAnd_q <= redist3_sync_in_aunroll_x_in_c1_eni2_2_4_sticky_ena_q and VCC_q;

    -- redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt(COUNTER,43)
    -- low=0, high=1, step=1, init=0
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_i <= redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_i, 1)));

    -- redist3_sync_in_aunroll_x_in_c1_eni2_2_4_wraddr(REG,44)
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_sync_in_aunroll_x_in_c1_eni2_2_4_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_sync_in_aunroll_x_in_c1_eni2_2_4_wraddr_q <= STD_LOGIC_VECTOR(redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem(DUALMEM,42)
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_ia <= STD_LOGIC_VECTOR(in_c1_eni2_2);
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_aa <= redist3_sync_in_aunroll_x_in_c1_eni2_2_4_wraddr_q;
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_ab <= redist3_sync_in_aunroll_x_in_c1_eni2_2_4_rdcnt_q;
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_reset0 <= not (resetn);
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 32,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist3_sync_in_aunroll_x_in_c1_eni2_2_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_reset0,
        clock1 => clock,
        address_a => redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_aa,
        data_a => redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_ab,
        q_b => redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_iq
    );
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_q <= redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_iq(31 downto 0);

    -- redist3_sync_in_aunroll_x_in_c1_eni2_2_4_outputreg(DELAY,41)
    redist3_sync_in_aunroll_x_in_c1_eni2_2_4_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_sync_in_aunroll_x_in_c1_eni2_2_4_mem_q, xout => redist3_sync_in_aunroll_x_in_c1_eni2_2_4_outputreg_q, clk => clock, aclr => resetn );

    -- i_mul19_pool_bs4(BITSELECT,18)@1
    i_mul19_pool_bs4_in <= STD_LOGIC_VECTOR(in_c1_eni2_1(17 downto 0));
    i_mul19_pool_bs4_b <= STD_LOGIC_VECTOR(i_mul19_pool_bs4_in(17 downto 0));

    -- i_mul19_pool_bjA5(BITJOIN,19)@1
    i_mul19_pool_bjA5_q <= GND_q & i_mul19_pool_bs4_b;

    -- i_syncbuf_stride_sync_buffer_pool(BLACKBOX,11)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_stride_sync_buffer_pool : i_syncbuf_stride_sync_buffer_pool29
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_stride_sync_buffer_pool_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul19_pool_bs2_merged_bit_select(BITSELECT,34)@1
    i_mul19_pool_bs2_merged_bit_select_b <= i_syncbuf_stride_sync_buffer_pool_out_buffer_out(17 downto 0);
    i_mul19_pool_bs2_merged_bit_select_c <= i_syncbuf_stride_sync_buffer_pool_out_buffer_out(31 downto 18);

    -- i_mul19_pool_bjB9(BITJOIN,23)@1
    i_mul19_pool_bjB9_q <= GND_q & i_mul19_pool_bs2_merged_bit_select_b;

    -- i_mul19_pool_bs7(BITSELECT,21)@1
    i_mul19_pool_bs7_b <= STD_LOGIC_VECTOR(in_c1_eni2_1(31 downto 18));

    -- i_mul19_pool_ma3_cma(CHAINMULTADD,33)@1 + 2
    i_mul19_pool_ma3_cma_reset <= not (resetn);
    i_mul19_pool_ma3_cma_ena0 <= '1';
    i_mul19_pool_ma3_cma_ena1 <= i_mul19_pool_ma3_cma_ena0;
    i_mul19_pool_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul19_pool_ma3_cma_a0(0),15));
    i_mul19_pool_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul19_pool_ma3_cma_a0(1),15));
    i_mul19_pool_ma3_cma_p(0) <= i_mul19_pool_ma3_cma_l(0) * i_mul19_pool_ma3_cma_c0(0);
    i_mul19_pool_ma3_cma_p(1) <= i_mul19_pool_ma3_cma_l(1) * i_mul19_pool_ma3_cma_c0(1);
    i_mul19_pool_ma3_cma_u(0) <= RESIZE(i_mul19_pool_ma3_cma_p(0),35);
    i_mul19_pool_ma3_cma_u(1) <= RESIZE(i_mul19_pool_ma3_cma_p(1),35);
    i_mul19_pool_ma3_cma_w(0) <= i_mul19_pool_ma3_cma_u(0) + i_mul19_pool_ma3_cma_u(1);
    i_mul19_pool_ma3_cma_x(0) <= i_mul19_pool_ma3_cma_w(0);
    i_mul19_pool_ma3_cma_y(0) <= i_mul19_pool_ma3_cma_x(0);
    i_mul19_pool_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul19_pool_ma3_cma_a0 <= (others => (others => '0'));
            i_mul19_pool_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul19_pool_ma3_cma_ena0 = '1') THEN
                i_mul19_pool_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul19_pool_bs7_b),14);
                i_mul19_pool_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul19_pool_bs2_merged_bit_select_c),14);
                i_mul19_pool_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul19_pool_bjB9_q),19);
                i_mul19_pool_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul19_pool_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul19_pool_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul19_pool_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul19_pool_ma3_cma_ena1 = '1') THEN
                i_mul19_pool_ma3_cma_s(0) <= i_mul19_pool_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul19_pool_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul19_pool_ma3_cma_s(0)(33 downto 0)), xout => i_mul19_pool_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul19_pool_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul19_pool_ma3_cma_qq(33 downto 0));

    -- redist0_i_mul19_pool_ma3_cma_q_1(DELAY,35)
    redist0_i_mul19_pool_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul19_pool_ma3_cma_q, xout => redist0_i_mul19_pool_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul19_pool_align_14(BITSHIFT,28)@4
    i_mul19_pool_align_14_qint <= redist0_i_mul19_pool_ma3_cma_q_1_q & "000000000000000000";
    i_mul19_pool_align_14_q <= i_mul19_pool_align_14_qint(51 downto 0);

    -- i_mul19_pool_bs11(BITSELECT,25)@1
    i_mul19_pool_bs11_b <= in_c1_eni2_1(31 downto 18);

    -- i_mul19_pool_im10_cma(CHAINMULTADD,32)@1 + 2
    i_mul19_pool_im10_cma_reset <= not (resetn);
    i_mul19_pool_im10_cma_ena0 <= '1';
    i_mul19_pool_im10_cma_ena1 <= i_mul19_pool_im10_cma_ena0;
    i_mul19_pool_im10_cma_p(0) <= i_mul19_pool_im10_cma_a0(0) * i_mul19_pool_im10_cma_c0(0);
    i_mul19_pool_im10_cma_u(0) <= RESIZE(i_mul19_pool_im10_cma_p(0),28);
    i_mul19_pool_im10_cma_w(0) <= i_mul19_pool_im10_cma_u(0);
    i_mul19_pool_im10_cma_x(0) <= i_mul19_pool_im10_cma_w(0);
    i_mul19_pool_im10_cma_y(0) <= i_mul19_pool_im10_cma_x(0);
    i_mul19_pool_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul19_pool_im10_cma_a0 <= (others => (others => '0'));
            i_mul19_pool_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul19_pool_im10_cma_ena0 = '1') THEN
                i_mul19_pool_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul19_pool_bs11_b),14);
                i_mul19_pool_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul19_pool_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul19_pool_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul19_pool_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul19_pool_im10_cma_ena1 = '1') THEN
                i_mul19_pool_im10_cma_s(0) <= i_mul19_pool_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul19_pool_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul19_pool_im10_cma_s(0)(27 downto 0)), xout => i_mul19_pool_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul19_pool_im10_cma_q <= STD_LOGIC_VECTOR(i_mul19_pool_im10_cma_qq(27 downto 0));

    -- redist1_i_mul19_pool_im10_cma_q_1(DELAY,36)
    redist1_i_mul19_pool_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul19_pool_im10_cma_q, xout => redist1_i_mul19_pool_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul19_pool_bs1(BITSELECT,15)@1
    i_mul19_pool_bs1_in <= in_c1_eni2_1(17 downto 0);
    i_mul19_pool_bs1_b <= i_mul19_pool_bs1_in(17 downto 0);

    -- i_mul19_pool_im0_cma(CHAINMULTADD,31)@1 + 2
    i_mul19_pool_im0_cma_reset <= not (resetn);
    i_mul19_pool_im0_cma_ena0 <= '1';
    i_mul19_pool_im0_cma_ena1 <= i_mul19_pool_im0_cma_ena0;
    i_mul19_pool_im0_cma_p(0) <= i_mul19_pool_im0_cma_a0(0) * i_mul19_pool_im0_cma_c0(0);
    i_mul19_pool_im0_cma_u(0) <= RESIZE(i_mul19_pool_im0_cma_p(0),36);
    i_mul19_pool_im0_cma_w(0) <= i_mul19_pool_im0_cma_u(0);
    i_mul19_pool_im0_cma_x(0) <= i_mul19_pool_im0_cma_w(0);
    i_mul19_pool_im0_cma_y(0) <= i_mul19_pool_im0_cma_x(0);
    i_mul19_pool_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul19_pool_im0_cma_a0 <= (others => (others => '0'));
            i_mul19_pool_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul19_pool_im0_cma_ena0 = '1') THEN
                i_mul19_pool_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul19_pool_bs1_b),18);
                i_mul19_pool_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul19_pool_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul19_pool_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul19_pool_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul19_pool_im0_cma_ena1 = '1') THEN
                i_mul19_pool_im0_cma_s(0) <= i_mul19_pool_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul19_pool_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul19_pool_im0_cma_s(0)(35 downto 0)), xout => i_mul19_pool_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul19_pool_im0_cma_q <= STD_LOGIC_VECTOR(i_mul19_pool_im0_cma_qq(35 downto 0));

    -- redist2_i_mul19_pool_im0_cma_q_1(DELAY,37)
    redist2_i_mul19_pool_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul19_pool_im0_cma_q, xout => redist2_i_mul19_pool_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul19_pool_join_13(BITJOIN,27)@4
    i_mul19_pool_join_13_q <= redist1_i_mul19_pool_im10_cma_q_1_q & redist2_i_mul19_pool_im0_cma_q_1_q;

    -- i_mul19_pool_result_add_0_0(ADD,30)@4
    i_mul19_pool_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul19_pool_join_13_q));
    i_mul19_pool_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul19_pool_align_14_q(51)) & i_mul19_pool_align_14_q));
    i_mul19_pool_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul19_pool_result_add_0_0_a) + SIGNED(i_mul19_pool_result_add_0_0_b));
    i_mul19_pool_result_add_0_0_q <= i_mul19_pool_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul19_pool_rnd_sel(BITSELECT,13)@4
    bgTrunc_i_mul19_pool_rnd_sel_in <= i_mul19_pool_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul19_pool_rnd_sel_b <= bgTrunc_i_mul19_pool_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul19_pool_sel_x(BITSELECT,3)@4
    bgTrunc_i_mul19_pool_sel_x_b <= bgTrunc_i_mul19_pool_rnd_sel_b(31 downto 0);

    -- redist5_bgTrunc_i_mul19_pool_sel_x_b_1(DELAY,40)
    redist5_bgTrunc_i_mul19_pool_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul19_pool_sel_x_b, xout => redist5_bgTrunc_i_mul19_pool_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add_pool(ADD,9)@5
    i_add_pool_a <= STD_LOGIC_VECTOR("0" & redist5_bgTrunc_i_mul19_pool_sel_x_b_1_q);
    i_add_pool_b <= STD_LOGIC_VECTOR("0" & redist3_sync_in_aunroll_x_in_c1_eni2_2_4_outputreg_q);
    i_add_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_pool_a) + UNSIGNED(i_add_pool_b));
    i_add_pool_q <= i_add_pool_o(32 downto 0);

    -- bgTrunc_i_add_pool_sel_x(BITSELECT,2)@5
    bgTrunc_i_add_pool_sel_x_b <= i_add_pool_q(31 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,5)@5
    out_c1_exi117_0 <= GND_q;
    out_c1_exi117_1 <= bgTrunc_i_add_pool_sel_x_b;
    out_o_valid <= redist4_sync_in_aunroll_x_in_i_valid_4_q;

END normal;
