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

-- VHDL created from i_sfc_logic_c1_for_body12_2_conv1x1_c1_enter231_conv1x1389
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

entity i_sfc_logic_c1_for_body12_2_conv1x1_c1_enter231_conv1x1389 is
    port (
        in_c1_eni4230_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni4230_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_eni4230_2 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_eni4230_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni4230_4 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1236_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1236_1 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_for_body12_2_conv1x1_c1_enter231_conv1x1389;

architecture normal of i_sfc_logic_c1_for_body12_2_conv1x1_c1_enter231_conv1x1389 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_i_sfc_logic_c1_for_body12_2_conv1x1_c1_enter231_conv1x1389_addBloA0Zcp36cd0oq3cd06oq3cz0 is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component floatComponent_i_sfc_logic_c1_for_body12_2_conv1x1_c1_enter231_conv1x1389_multBlA0Z16oe0cp36cd0oq3cdj6z is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c_float_0_000000e_00_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add35_2_a_conv1x1_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul34_2_conv1x1_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or_cond4_2_p_conv1x1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond4_2_p_conv1x1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_mul34_2_conv1x1_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_sync_in_aunroll_x_in_c1_eni4230_3_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_i_valid_23_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_reset0 : std_logic;
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_i : signal is true;
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_eq : std_logic;
    attribute preserve of redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_eq : signal is true;
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_sticky_ena_q : signal is true;
    signal redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist3_sync_in_aunroll_x_in_i_valid_23(DELAY,12)
    redist3_sync_in_aunroll_x_in_i_valid_23 : dspba_delay
    GENERIC MAP ( width => 1, depth => 23, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist3_sync_in_aunroll_x_in_i_valid_23_q, clk => clock, aclr => resetn );

    -- i_mul34_2_conv1x1(BLACKBOX,7)@143
    -- out out_primWireOut@150
    thei_mul34_2_conv1x1 : floatComponent_i_sfc_logic_c1_for_body12_2_conv1x1_c1_enter231_conv1x1389_multBlA0Z16oe0cp36cd0oq3cdj6z
    PORT MAP (
        in_0 => in_c1_eni4230_1,
        in_1 => in_c1_eni4230_2,
        out_primWireOut => i_mul34_2_conv1x1_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist0_i_mul34_2_conv1x1_out_primWireOut_1(DELAY,9)
    redist0_i_mul34_2_conv1x1_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul34_2_conv1x1_out_primWireOut, xout => redist0_i_mul34_2_conv1x1_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- c_float_0_000000e_00(FLOATCONSTANT,4)
    c_float_0_000000e_00_q <= "00000000000000000000000000000000";

    -- redist1_sync_in_aunroll_x_in_c1_eni4230_3_8(DELAY,10)
    redist1_sync_in_aunroll_x_in_c1_eni4230_3_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c1_eni4230_3, xout => redist1_sync_in_aunroll_x_in_c1_eni4230_3_8_q, clk => clock, aclr => resetn );

    -- i_or_cond4_2_p_conv1x1(MUX,8)@151 + 1
    i_or_cond4_2_p_conv1x1_s <= redist1_sync_in_aunroll_x_in_c1_eni4230_3_8_q;
    i_or_cond4_2_p_conv1x1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_or_cond4_2_p_conv1x1_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_or_cond4_2_p_conv1x1_s) IS
                WHEN "0" => i_or_cond4_2_p_conv1x1_q <= c_float_0_000000e_00_q;
                WHEN "1" => i_or_cond4_2_p_conv1x1_q <= redist0_i_mul34_2_conv1x1_out_primWireOut_1_q;
                WHEN OTHERS => i_or_cond4_2_p_conv1x1_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_notEnable(LOGICAL,20)
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_nor(LOGICAL,21)
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_nor_q <= not (redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_notEnable_q or redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_sticky_ena_q);

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_last(CONSTANT,17)
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_last_q <= "0101";

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmp(LOGICAL,18)
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmp_b <= STD_LOGIC_VECTOR("0" & redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_q);
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmp_q <= "1" WHEN redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_last_q = redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmp_b ELSE "0";

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmpReg(REG,19)
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmpReg_q <= STD_LOGIC_VECTOR(redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_sticky_ena(REG,22)
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_nor_q = "1") THEN
                redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_enaAnd(LOGICAL,23)
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_enaAnd_q <= redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_sticky_ena_q and VCC_q;

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt(COUNTER,15)
    -- low=0, high=6, step=1, init=0
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_eq <= '1';
            ELSE
                redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_eq <= '0';
            END IF;
            IF (redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_eq = '1') THEN
                redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_i <= redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_i + 2;
            ELSE
                redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_i <= redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_i, 3)));

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_wraddr(REG,16)
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_wraddr_q <= "110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_wraddr_q <= STD_LOGIC_VECTOR(redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem(DUALMEM,14)
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_ia <= STD_LOGIC_VECTOR(in_c1_eni4230_4);
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_aa <= redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_wraddr_q;
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_ab <= redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_rdcnt_q;
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_reset0 <= not (resetn);
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 7,
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
        clocken1 => redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_reset0,
        clock1 => clock,
        address_a => redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_aa,
        data_a => redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_ab,
        q_b => redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_iq
    );
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_q <= redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_iq(31 downto 0);

    -- redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_outputreg(DELAY,13)
    redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_mem_q, xout => redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_outputreg_q, clk => clock, aclr => resetn );

    -- i_add35_2_a_conv1x1(BLACKBOX,6)@152
    -- out out_primWireOut@166
    thei_add35_2_a_conv1x1 : floatComponent_i_sfc_logic_c1_for_body12_2_conv1x1_c1_enter231_conv1x1389_addBloA0Zcp36cd0oq3cd06oq3cz0
    PORT MAP (
        in_0 => redist2_sync_in_aunroll_x_in_c1_eni4230_4_9_outputreg_q,
        in_1 => i_or_cond4_2_p_conv1x1_q,
        out_primWireOut => i_add35_2_a_conv1x1_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,3)@166
    out_c1_exi1236_0 <= GND_q;
    out_c1_exi1236_1 <= i_add35_2_a_conv1x1_out_primWireOut;
    out_o_valid <= redist3_sync_in_aunroll_x_in_i_valid_23_q;

END normal;
