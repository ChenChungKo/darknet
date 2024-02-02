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

-- VHDL created from i_sfc_logic_c1_for_body12_pool_c1_enter36_pool56
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

entity i_sfc_logic_c1_for_body12_pool_c1_enter36_pool56 is
    port (
        in_c1_eni3_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni3_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_eni3_2 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_eni3_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi139_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi139_1 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_for_body12_pool_c1_enter36_pool56;

architecture normal of i_sfc_logic_c1_for_body12_pool_c1_enter36_pool56 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_i_sfc_logic_c1_for_body12_pool_c1_enter36_pool56_constMultBlock_tA0Z06of03p06o303d0jzj0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component floatComponent_i_sfc_logic_c1_for_body12_pool_c1_enter36_pool56_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u is
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
    signal constMult_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add29_pool_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tmp_4_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp_4_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cstAllOWE_uid11_i_cmp30_pool_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid12_i_cmp30_pool_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid13_i_cmp30_pool_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_x_uid14_i_cmp30_pool_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid15_i_cmp30_pool_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expXIsZero_uid16_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid17_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid18_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid19_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid20_i_cmp30_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid20_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid22_i_cmp30_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid22_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_y_uid31_i_cmp30_pool_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_y_uid32_i_cmp30_pool_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expXIsZero_uid33_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid34_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid35_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid36_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid37_i_cmp30_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid37_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid39_i_cmp30_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid39_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneIsNaN_uid45_i_cmp30_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal oneIsNaN_uid45_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracX_uid50_i_cmp30_pool_q : STD_LOGIC_VECTOR (30 downto 0);
    signal expFracY_uid52_i_cmp30_pool_q : STD_LOGIC_VECTOR (30 downto 0);
    signal efxGTefy_uid54_i_cmp30_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid54_i_cmp30_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid54_i_cmp30_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid54_i_cmp30_pool_c : STD_LOGIC_VECTOR (0 downto 0);
    signal efxLTefy_uid55_i_cmp30_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid55_i_cmp30_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid55_i_cmp30_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid55_i_cmp30_pool_c : STD_LOGIC_VECTOR (0 downto 0);
    signal signX_uid59_i_cmp30_pool_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid60_i_cmp30_pool_b : STD_LOGIC_VECTOR (0 downto 0);
    signal two_uid61_i_cmp30_pool_q : STD_LOGIC_VECTOR (1 downto 0);
    signal concSXSY_uid62_i_cmp30_pool_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sxLTsy_uid63_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xorSigns_uid64_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sxEQsy_uid65_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracCompMux_uid66_i_cmp30_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracCompMux_uid66_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcYZ_uid67_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcXZ_uid68_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneNonZero_uid69_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rc2_uid70_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sxEQsyExpFracCompMux_uid71_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid72_i_cmp30_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid72_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rPostExc_uid73_i_cmp30_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rPostExc_uid73_i_cmp30_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_add29_pool_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_constMult_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_sync_in_aunroll_x_in_c1_eni3_1_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_sync_in_aunroll_x_in_c1_eni3_1_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_sync_in_aunroll_x_in_c1_eni3_2_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_sync_in_aunroll_x_in_c1_eni3_2_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_sync_in_aunroll_x_in_c1_eni3_2_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_sync_in_aunroll_x_in_c1_eni3_3_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_tmp_4_pool_q_17_mem_reset0 : std_logic;
    signal redist0_i_tmp_4_pool_q_17_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_tmp_4_pool_q_17_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist0_i_tmp_4_pool_q_17_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist0_i_tmp_4_pool_q_17_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_tmp_4_pool_q_17_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_tmp_4_pool_q_17_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist0_i_tmp_4_pool_q_17_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist0_i_tmp_4_pool_q_17_rdcnt_i : signal is true;
    signal redist0_i_tmp_4_pool_q_17_rdcnt_eq : std_logic;
    attribute preserve of redist0_i_tmp_4_pool_q_17_rdcnt_eq : signal is true;
    signal redist0_i_tmp_4_pool_q_17_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist0_i_tmp_4_pool_q_17_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_i_tmp_4_pool_q_17_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_i_tmp_4_pool_q_17_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_tmp_4_pool_q_17_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_tmp_4_pool_q_17_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_tmp_4_pool_q_17_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_tmp_4_pool_q_17_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist0_i_tmp_4_pool_q_17_sticky_ena_q : signal is true;
    signal redist0_i_tmp_4_pool_q_17_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist9_sync_in_aunroll_x_in_i_valid_19(DELAY,83)
    redist9_sync_in_aunroll_x_in_i_valid_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 19, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist9_sync_in_aunroll_x_in_i_valid_19_q, clk => clock, aclr => resetn );

    -- constMult(BLACKBOX,5)@182
    -- out out_primWireOut@185
    theconstMult : floatComponent_i_sfc_logic_c1_for_body12_pool_c1_enter36_pool56_constMultBlock_tA0Z06of03p06o303d0jzj0u
    PORT MAP (
        in_0 => in_c1_eni3_1,
        out_primWireOut => constMult_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist2_constMult_out_primWireOut_1(DELAY,76)
    redist2_constMult_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => constMult_out_primWireOut, xout => redist2_constMult_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- redist5_sync_in_aunroll_x_in_c1_eni3_2_1(DELAY,79)
    redist5_sync_in_aunroll_x_in_c1_eni3_2_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c1_eni3_2, xout => redist5_sync_in_aunroll_x_in_c1_eni3_2_1_q, clk => clock, aclr => resetn );

    -- redist6_sync_in_aunroll_x_in_c1_eni3_2_2(DELAY,80)
    redist6_sync_in_aunroll_x_in_c1_eni3_2_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_sync_in_aunroll_x_in_c1_eni3_2_1_q, xout => redist6_sync_in_aunroll_x_in_c1_eni3_2_2_q, clk => clock, aclr => resetn );

    -- redist7_sync_in_aunroll_x_in_c1_eni3_2_4(DELAY,81)
    redist7_sync_in_aunroll_x_in_c1_eni3_2_4 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_c1_eni3_2_2_q, xout => redist7_sync_in_aunroll_x_in_c1_eni3_2_4_q, clk => clock, aclr => resetn );

    -- i_add29_pool(BLACKBOX,7)@186
    -- out out_primWireOut@200
    thei_add29_pool : floatComponent_i_sfc_logic_c1_for_body12_pool_c1_enter36_pool56_addBlock_typeSFlA0Z3d06o00rf00d06of5q0u
    PORT MAP (
        in_0 => redist7_sync_in_aunroll_x_in_c1_eni3_2_4_q,
        in_1 => redist2_constMult_out_primWireOut_1_q,
        out_primWireOut => i_add29_pool_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist1_i_add29_pool_out_primWireOut_1(DELAY,75)
    redist1_i_add29_pool_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add29_pool_out_primWireOut, xout => redist1_i_add29_pool_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- redist0_i_tmp_4_pool_q_17_notEnable(LOGICAL,90)
    redist0_i_tmp_4_pool_q_17_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_i_tmp_4_pool_q_17_nor(LOGICAL,91)
    redist0_i_tmp_4_pool_q_17_nor_q <= not (redist0_i_tmp_4_pool_q_17_notEnable_q or redist0_i_tmp_4_pool_q_17_sticky_ena_q);

    -- redist0_i_tmp_4_pool_q_17_mem_last(CONSTANT,87)
    redist0_i_tmp_4_pool_q_17_mem_last_q <= "01101";

    -- redist0_i_tmp_4_pool_q_17_cmp(LOGICAL,88)
    redist0_i_tmp_4_pool_q_17_cmp_b <= STD_LOGIC_VECTOR("0" & redist0_i_tmp_4_pool_q_17_rdcnt_q);
    redist0_i_tmp_4_pool_q_17_cmp_q <= "1" WHEN redist0_i_tmp_4_pool_q_17_mem_last_q = redist0_i_tmp_4_pool_q_17_cmp_b ELSE "0";

    -- redist0_i_tmp_4_pool_q_17_cmpReg(REG,89)
    redist0_i_tmp_4_pool_q_17_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_tmp_4_pool_q_17_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_tmp_4_pool_q_17_cmpReg_q <= STD_LOGIC_VECTOR(redist0_i_tmp_4_pool_q_17_cmp_q);
        END IF;
    END PROCESS;

    -- redist0_i_tmp_4_pool_q_17_sticky_ena(REG,92)
    redist0_i_tmp_4_pool_q_17_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_tmp_4_pool_q_17_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_tmp_4_pool_q_17_nor_q = "1") THEN
                redist0_i_tmp_4_pool_q_17_sticky_ena_q <= STD_LOGIC_VECTOR(redist0_i_tmp_4_pool_q_17_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_tmp_4_pool_q_17_enaAnd(LOGICAL,93)
    redist0_i_tmp_4_pool_q_17_enaAnd_q <= redist0_i_tmp_4_pool_q_17_sticky_ena_q and VCC_q;

    -- redist0_i_tmp_4_pool_q_17_rdcnt(COUNTER,85)
    -- low=0, high=14, step=1, init=0
    redist0_i_tmp_4_pool_q_17_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_tmp_4_pool_q_17_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist0_i_tmp_4_pool_q_17_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_tmp_4_pool_q_17_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                redist0_i_tmp_4_pool_q_17_rdcnt_eq <= '1';
            ELSE
                redist0_i_tmp_4_pool_q_17_rdcnt_eq <= '0';
            END IF;
            IF (redist0_i_tmp_4_pool_q_17_rdcnt_eq = '1') THEN
                redist0_i_tmp_4_pool_q_17_rdcnt_i <= redist0_i_tmp_4_pool_q_17_rdcnt_i + 2;
            ELSE
                redist0_i_tmp_4_pool_q_17_rdcnt_i <= redist0_i_tmp_4_pool_q_17_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist0_i_tmp_4_pool_q_17_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist0_i_tmp_4_pool_q_17_rdcnt_i, 4)));

    -- redist3_sync_in_aunroll_x_in_c1_eni3_1_1(DELAY,77)
    redist3_sync_in_aunroll_x_in_c1_eni3_1_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c1_eni3_1, xout => redist3_sync_in_aunroll_x_in_c1_eni3_1_1_q, clk => clock, aclr => resetn );

    -- redist4_sync_in_aunroll_x_in_c1_eni3_1_2(DELAY,78)
    redist4_sync_in_aunroll_x_in_c1_eni3_1_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_sync_in_aunroll_x_in_c1_eni3_1_1_q, xout => redist4_sync_in_aunroll_x_in_c1_eni3_1_2_q, clk => clock, aclr => resetn );

    -- frac_y_uid32_i_cmp30_pool(BITSELECT,31)@182
    frac_y_uid32_i_cmp30_pool_b <= in_c1_eni3_1(22 downto 0);

    -- cstZeroWF_uid12_i_cmp30_pool(CONSTANT,11)
    cstZeroWF_uid12_i_cmp30_pool_q <= "00000000000000000000000";

    -- fracXIsZero_uid35_i_cmp30_pool(LOGICAL,34)@182
    fracXIsZero_uid35_i_cmp30_pool_q <= "1" WHEN cstZeroWF_uid12_i_cmp30_pool_q = frac_y_uid32_i_cmp30_pool_b ELSE "0";

    -- cstAllZWE_uid13_i_cmp30_pool(CONSTANT,12)
    cstAllZWE_uid13_i_cmp30_pool_q <= "00000000";

    -- exp_y_uid31_i_cmp30_pool(BITSELECT,30)@182
    exp_y_uid31_i_cmp30_pool_b <= in_c1_eni3_1(30 downto 23);

    -- expXIsZero_uid33_i_cmp30_pool(LOGICAL,32)@182
    expXIsZero_uid33_i_cmp30_pool_q <= "1" WHEN exp_y_uid31_i_cmp30_pool_b = cstAllZWE_uid13_i_cmp30_pool_q ELSE "0";

    -- excZ_y_uid37_i_cmp30_pool(LOGICAL,36)@182 + 1
    excZ_y_uid37_i_cmp30_pool_qi <= expXIsZero_uid33_i_cmp30_pool_q and fracXIsZero_uid35_i_cmp30_pool_q;
    excZ_y_uid37_i_cmp30_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_y_uid37_i_cmp30_pool_qi, xout => excZ_y_uid37_i_cmp30_pool_q, clk => clock, aclr => resetn );

    -- invExcYZ_uid67_i_cmp30_pool(LOGICAL,66)@183
    invExcYZ_uid67_i_cmp30_pool_q <= not (excZ_y_uid37_i_cmp30_pool_q);

    -- frac_x_uid15_i_cmp30_pool(BITSELECT,14)@182
    frac_x_uid15_i_cmp30_pool_b <= in_c1_eni3_2(22 downto 0);

    -- fracXIsZero_uid18_i_cmp30_pool(LOGICAL,17)@182
    fracXIsZero_uid18_i_cmp30_pool_q <= "1" WHEN cstZeroWF_uid12_i_cmp30_pool_q = frac_x_uid15_i_cmp30_pool_b ELSE "0";

    -- exp_x_uid14_i_cmp30_pool(BITSELECT,13)@182
    exp_x_uid14_i_cmp30_pool_b <= in_c1_eni3_2(30 downto 23);

    -- expXIsZero_uid16_i_cmp30_pool(LOGICAL,15)@182
    expXIsZero_uid16_i_cmp30_pool_q <= "1" WHEN exp_x_uid14_i_cmp30_pool_b = cstAllZWE_uid13_i_cmp30_pool_q ELSE "0";

    -- excZ_x_uid20_i_cmp30_pool(LOGICAL,19)@182 + 1
    excZ_x_uid20_i_cmp30_pool_qi <= expXIsZero_uid16_i_cmp30_pool_q and fracXIsZero_uid18_i_cmp30_pool_q;
    excZ_x_uid20_i_cmp30_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_x_uid20_i_cmp30_pool_qi, xout => excZ_x_uid20_i_cmp30_pool_q, clk => clock, aclr => resetn );

    -- invExcXZ_uid68_i_cmp30_pool(LOGICAL,67)@183
    invExcXZ_uid68_i_cmp30_pool_q <= not (excZ_x_uid20_i_cmp30_pool_q);

    -- oneNonZero_uid69_i_cmp30_pool(LOGICAL,68)@183
    oneNonZero_uid69_i_cmp30_pool_q <= invExcXZ_uid68_i_cmp30_pool_q or invExcYZ_uid67_i_cmp30_pool_q;

    -- two_uid61_i_cmp30_pool(CONSTANT,60)
    two_uid61_i_cmp30_pool_q <= "10";

    -- signX_uid59_i_cmp30_pool(BITSELECT,58)@183
    signX_uid59_i_cmp30_pool_b <= STD_LOGIC_VECTOR(redist5_sync_in_aunroll_x_in_c1_eni3_2_1_q(31 downto 31));

    -- signY_uid60_i_cmp30_pool(BITSELECT,59)@183
    signY_uid60_i_cmp30_pool_b <= STD_LOGIC_VECTOR(redist3_sync_in_aunroll_x_in_c1_eni3_1_1_q(31 downto 31));

    -- concSXSY_uid62_i_cmp30_pool(BITJOIN,61)@183
    concSXSY_uid62_i_cmp30_pool_q <= signX_uid59_i_cmp30_pool_b & signY_uid60_i_cmp30_pool_b;

    -- sxLTsy_uid63_i_cmp30_pool(LOGICAL,62)@183
    sxLTsy_uid63_i_cmp30_pool_q <= "1" WHEN concSXSY_uid62_i_cmp30_pool_q = two_uid61_i_cmp30_pool_q ELSE "0";

    -- rc2_uid70_i_cmp30_pool(LOGICAL,69)@183
    rc2_uid70_i_cmp30_pool_q <= sxLTsy_uid63_i_cmp30_pool_q and oneNonZero_uid69_i_cmp30_pool_q;

    -- expFracX_uid50_i_cmp30_pool(BITJOIN,49)@182
    expFracX_uid50_i_cmp30_pool_q <= exp_x_uid14_i_cmp30_pool_b & frac_x_uid15_i_cmp30_pool_b;

    -- expFracY_uid52_i_cmp30_pool(BITJOIN,51)@182
    expFracY_uid52_i_cmp30_pool_q <= exp_y_uid31_i_cmp30_pool_b & frac_y_uid32_i_cmp30_pool_b;

    -- efxGTefy_uid54_i_cmp30_pool(COMPARE,53)@182 + 1
    efxGTefy_uid54_i_cmp30_pool_a <= STD_LOGIC_VECTOR("00" & expFracY_uid52_i_cmp30_pool_q);
    efxGTefy_uid54_i_cmp30_pool_b <= STD_LOGIC_VECTOR("00" & expFracX_uid50_i_cmp30_pool_q);
    efxGTefy_uid54_i_cmp30_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            efxGTefy_uid54_i_cmp30_pool_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            efxGTefy_uid54_i_cmp30_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(efxGTefy_uid54_i_cmp30_pool_a) - UNSIGNED(efxGTefy_uid54_i_cmp30_pool_b));
        END IF;
    END PROCESS;
    efxGTefy_uid54_i_cmp30_pool_c(0) <= efxGTefy_uid54_i_cmp30_pool_o(32);

    -- efxLTefy_uid55_i_cmp30_pool(COMPARE,54)@182 + 1
    efxLTefy_uid55_i_cmp30_pool_a <= STD_LOGIC_VECTOR("00" & expFracX_uid50_i_cmp30_pool_q);
    efxLTefy_uid55_i_cmp30_pool_b <= STD_LOGIC_VECTOR("00" & expFracY_uid52_i_cmp30_pool_q);
    efxLTefy_uid55_i_cmp30_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            efxLTefy_uid55_i_cmp30_pool_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            efxLTefy_uid55_i_cmp30_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(efxLTefy_uid55_i_cmp30_pool_a) - UNSIGNED(efxLTefy_uid55_i_cmp30_pool_b));
        END IF;
    END PROCESS;
    efxLTefy_uid55_i_cmp30_pool_c(0) <= efxLTefy_uid55_i_cmp30_pool_o(32);

    -- expFracCompMux_uid66_i_cmp30_pool(MUX,65)@183
    expFracCompMux_uid66_i_cmp30_pool_s <= signX_uid59_i_cmp30_pool_b;
    expFracCompMux_uid66_i_cmp30_pool_combproc: PROCESS (expFracCompMux_uid66_i_cmp30_pool_s, efxLTefy_uid55_i_cmp30_pool_c, efxGTefy_uid54_i_cmp30_pool_c)
    BEGIN
        CASE (expFracCompMux_uid66_i_cmp30_pool_s) IS
            WHEN "0" => expFracCompMux_uid66_i_cmp30_pool_q <= efxLTefy_uid55_i_cmp30_pool_c;
            WHEN "1" => expFracCompMux_uid66_i_cmp30_pool_q <= efxGTefy_uid54_i_cmp30_pool_c;
            WHEN OTHERS => expFracCompMux_uid66_i_cmp30_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- xorSigns_uid64_i_cmp30_pool(LOGICAL,63)@183
    xorSigns_uid64_i_cmp30_pool_q <= signX_uid59_i_cmp30_pool_b xor signY_uid60_i_cmp30_pool_b;

    -- sxEQsy_uid65_i_cmp30_pool(LOGICAL,64)@183
    sxEQsy_uid65_i_cmp30_pool_q <= not (xorSigns_uid64_i_cmp30_pool_q);

    -- sxEQsyExpFracCompMux_uid71_i_cmp30_pool(LOGICAL,70)@183
    sxEQsyExpFracCompMux_uid71_i_cmp30_pool_q <= sxEQsy_uid65_i_cmp30_pool_q and expFracCompMux_uid66_i_cmp30_pool_q;

    -- r_uid72_i_cmp30_pool(LOGICAL,71)@183 + 1
    r_uid72_i_cmp30_pool_qi <= sxEQsyExpFracCompMux_uid71_i_cmp30_pool_q or rc2_uid70_i_cmp30_pool_q;
    r_uid72_i_cmp30_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => r_uid72_i_cmp30_pool_qi, xout => r_uid72_i_cmp30_pool_q, clk => clock, aclr => resetn );

    -- fracXIsNotZero_uid36_i_cmp30_pool(LOGICAL,35)@182
    fracXIsNotZero_uid36_i_cmp30_pool_q <= not (fracXIsZero_uid35_i_cmp30_pool_q);

    -- cstAllOWE_uid11_i_cmp30_pool(CONSTANT,10)
    cstAllOWE_uid11_i_cmp30_pool_q <= "11111111";

    -- expXIsMax_uid34_i_cmp30_pool(LOGICAL,33)@182
    expXIsMax_uid34_i_cmp30_pool_q <= "1" WHEN exp_y_uid31_i_cmp30_pool_b = cstAllOWE_uid11_i_cmp30_pool_q ELSE "0";

    -- excN_y_uid39_i_cmp30_pool(LOGICAL,38)@182 + 1
    excN_y_uid39_i_cmp30_pool_qi <= expXIsMax_uid34_i_cmp30_pool_q and fracXIsNotZero_uid36_i_cmp30_pool_q;
    excN_y_uid39_i_cmp30_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_y_uid39_i_cmp30_pool_qi, xout => excN_y_uid39_i_cmp30_pool_q, clk => clock, aclr => resetn );

    -- fracXIsNotZero_uid19_i_cmp30_pool(LOGICAL,18)@182
    fracXIsNotZero_uid19_i_cmp30_pool_q <= not (fracXIsZero_uid18_i_cmp30_pool_q);

    -- expXIsMax_uid17_i_cmp30_pool(LOGICAL,16)@182
    expXIsMax_uid17_i_cmp30_pool_q <= "1" WHEN exp_x_uid14_i_cmp30_pool_b = cstAllOWE_uid11_i_cmp30_pool_q ELSE "0";

    -- excN_x_uid22_i_cmp30_pool(LOGICAL,21)@182 + 1
    excN_x_uid22_i_cmp30_pool_qi <= expXIsMax_uid17_i_cmp30_pool_q and fracXIsNotZero_uid19_i_cmp30_pool_q;
    excN_x_uid22_i_cmp30_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_x_uid22_i_cmp30_pool_qi, xout => excN_x_uid22_i_cmp30_pool_q, clk => clock, aclr => resetn );

    -- oneIsNaN_uid45_i_cmp30_pool(LOGICAL,44)@183 + 1
    oneIsNaN_uid45_i_cmp30_pool_qi <= excN_x_uid22_i_cmp30_pool_q or excN_y_uid39_i_cmp30_pool_q;
    oneIsNaN_uid45_i_cmp30_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => oneIsNaN_uid45_i_cmp30_pool_qi, xout => oneIsNaN_uid45_i_cmp30_pool_q, clk => clock, aclr => resetn );

    -- rPostExc_uid73_i_cmp30_pool(MUX,72)@184
    rPostExc_uid73_i_cmp30_pool_s <= oneIsNaN_uid45_i_cmp30_pool_q;
    rPostExc_uid73_i_cmp30_pool_combproc: PROCESS (rPostExc_uid73_i_cmp30_pool_s, r_uid72_i_cmp30_pool_q, GND_q)
    BEGIN
        CASE (rPostExc_uid73_i_cmp30_pool_s) IS
            WHEN "0" => rPostExc_uid73_i_cmp30_pool_q <= r_uid72_i_cmp30_pool_q;
            WHEN "1" => rPostExc_uid73_i_cmp30_pool_q <= GND_q;
            WHEN OTHERS => rPostExc_uid73_i_cmp30_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_tmp_4_pool(MUX,9)@184 + 1
    i_tmp_4_pool_s <= rPostExc_uid73_i_cmp30_pool_q;
    i_tmp_4_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_tmp_4_pool_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_tmp_4_pool_s) IS
                WHEN "0" => i_tmp_4_pool_q <= redist6_sync_in_aunroll_x_in_c1_eni3_2_2_q;
                WHEN "1" => i_tmp_4_pool_q <= redist4_sync_in_aunroll_x_in_c1_eni3_1_2_q;
                WHEN OTHERS => i_tmp_4_pool_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist0_i_tmp_4_pool_q_17_wraddr(REG,86)
    redist0_i_tmp_4_pool_q_17_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_tmp_4_pool_q_17_wraddr_q <= "1110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_tmp_4_pool_q_17_wraddr_q <= STD_LOGIC_VECTOR(redist0_i_tmp_4_pool_q_17_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_i_tmp_4_pool_q_17_mem(DUALMEM,84)
    redist0_i_tmp_4_pool_q_17_mem_ia <= STD_LOGIC_VECTOR(i_tmp_4_pool_q);
    redist0_i_tmp_4_pool_q_17_mem_aa <= redist0_i_tmp_4_pool_q_17_wraddr_q;
    redist0_i_tmp_4_pool_q_17_mem_ab <= redist0_i_tmp_4_pool_q_17_rdcnt_q;
    redist0_i_tmp_4_pool_q_17_mem_reset0 <= not (resetn);
    redist0_i_tmp_4_pool_q_17_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 15,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 15,
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
        clocken1 => redist0_i_tmp_4_pool_q_17_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist0_i_tmp_4_pool_q_17_mem_reset0,
        clock1 => clock,
        address_a => redist0_i_tmp_4_pool_q_17_mem_aa,
        data_a => redist0_i_tmp_4_pool_q_17_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist0_i_tmp_4_pool_q_17_mem_ab,
        q_b => redist0_i_tmp_4_pool_q_17_mem_iq
    );
    redist0_i_tmp_4_pool_q_17_mem_q <= redist0_i_tmp_4_pool_q_17_mem_iq(31 downto 0);

    -- redist8_sync_in_aunroll_x_in_c1_eni3_3_19(DELAY,82)
    redist8_sync_in_aunroll_x_in_c1_eni3_3_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 19, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c1_eni3_3, xout => redist8_sync_in_aunroll_x_in_c1_eni3_3_19_q, clk => clock, aclr => resetn );

    -- i_acl_pool(MUX,6)@201
    i_acl_pool_s <= redist8_sync_in_aunroll_x_in_c1_eni3_3_19_q;
    i_acl_pool_combproc: PROCESS (i_acl_pool_s, redist0_i_tmp_4_pool_q_17_mem_q, redist1_i_add29_pool_out_primWireOut_1_q)
    BEGIN
        CASE (i_acl_pool_s) IS
            WHEN "0" => i_acl_pool_q <= redist0_i_tmp_4_pool_q_17_mem_q;
            WHEN "1" => i_acl_pool_q <= redist1_i_add29_pool_out_primWireOut_1_q;
            WHEN OTHERS => i_acl_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,3)@201
    out_c1_exi139_0 <= GND_q;
    out_c1_exi139_1 <= i_acl_pool_q;
    out_o_valid <= redist9_sync_in_aunroll_x_in_i_valid_19_q;

END normal;
