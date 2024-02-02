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

-- VHDL created from conv1x1_B6_branch
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

entity conv1x1_B6_branch is
    port (
        in_c0_exe116870 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe121192 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe13 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe221296 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3213100 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe358 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417178 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4214101 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe517284 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5215102 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6216103 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe113 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe1238 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe122 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe130 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe238 : in std_logic_vector(0 downto 0);  -- ufix1
        in_inc_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01049 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x18 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116870 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe121192 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe13 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe221296 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3213100 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe358 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417178 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4214101 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe517284 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5215102 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6216103 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe113 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c1_exe1238 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe122 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe130 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe238 : out std_logic_vector(0 downto 0);  -- ufix1
        out_inc_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_j_01049 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B6_branch;

architecture normal of conv1x1_B6_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe116870_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe121192_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe13_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exe221296_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe3213100_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe358_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe417178_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe4214101_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe517284_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe5215102_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe6216103_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe113_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c1_exe1238_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c2_exe122_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe130_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe238_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B6_branch_enable_not_q : STD_LOGIC_VECTOR (0 downto 0);
    signal inc_2_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal j_01049_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal not_stall_in_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_in_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv1x18_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_0_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_1_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_0_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_1_and_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_in_1(LOGICAL,45)
    not_stall_in_1_q <= not (in_stall_in_1);

    -- unnamed_conv1x18_cmp(LOGICAL,71)
    unnamed_conv1x18_cmp_q <= not (in_unnamed_conv1x18);

    -- valid_out_1_and(LOGICAL,75)
    valid_out_1_and_q <= in_valid_in and unnamed_conv1x18_cmp_q;

    -- valid_1_reg(REG,73)
    valid_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_1_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                valid_1_reg_q <= valid_out_1_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_1(LOGICAL,47)
    not_valid_1_q <= not (valid_1_reg_q);

    -- not_valid_or_not_stall_1(LOGICAL,49)
    not_valid_or_not_stall_1_q <= not_valid_1_q or not_stall_in_1_q;

    -- not_stall_in_0(LOGICAL,44)
    not_stall_in_0_q <= not (in_stall_in_0);

    -- valid_out_0_and(LOGICAL,74)
    valid_out_0_and_q <= in_valid_in and in_unnamed_conv1x18;

    -- valid_0_reg(REG,72)
    valid_0_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_0_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                valid_0_reg_q <= valid_out_0_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_0(LOGICAL,46)
    not_valid_0_q <= not (valid_0_reg_q);

    -- not_valid_or_not_stall_0(LOGICAL,48)
    not_valid_or_not_stall_0_q <= not_valid_0_q or not_stall_in_0_q;

    -- conv1x1_B6_branch_enable(LOGICAL,18)
    conv1x1_B6_branch_enable_q <= not_valid_or_not_stall_0_q and not_valid_or_not_stall_1_q;

    -- c0_exe116870_reg(REG,2)
    c0_exe116870_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe116870_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe116870_reg_q <= in_c0_exe116870;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe116870(GPOUT,50)
    out_c0_exe116870 <= c0_exe116870_reg_q;

    -- c0_exe121192_reg(REG,3)
    c0_exe121192_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe121192_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe121192_reg_q <= in_c0_exe121192;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe121192(GPOUT,51)
    out_c0_exe121192 <= c0_exe121192_reg_q;

    -- c0_exe13_reg(REG,4)
    c0_exe13_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe13_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe13_reg_q <= in_c0_exe13;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe13(GPOUT,52)
    out_c0_exe13 <= c0_exe13_reg_q;

    -- c0_exe221296_reg(REG,5)
    c0_exe221296_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe221296_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe221296_reg_q <= in_c0_exe221296;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe221296(GPOUT,53)
    out_c0_exe221296 <= c0_exe221296_reg_q;

    -- c0_exe3213100_reg(REG,6)
    c0_exe3213100_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe3213100_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe3213100_reg_q <= in_c0_exe3213100;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe3213100(GPOUT,54)
    out_c0_exe3213100 <= c0_exe3213100_reg_q;

    -- c0_exe358_reg(REG,7)
    c0_exe358_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe358_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe358_reg_q <= in_c0_exe358;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe358(GPOUT,55)
    out_c0_exe358 <= c0_exe358_reg_q;

    -- c0_exe417178_reg(REG,8)
    c0_exe417178_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe417178_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe417178_reg_q <= in_c0_exe417178;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe417178(GPOUT,56)
    out_c0_exe417178 <= c0_exe417178_reg_q;

    -- c0_exe4214101_reg(REG,9)
    c0_exe4214101_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe4214101_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe4214101_reg_q <= in_c0_exe4214101;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe4214101(GPOUT,57)
    out_c0_exe4214101 <= c0_exe4214101_reg_q;

    -- c0_exe517284_reg(REG,10)
    c0_exe517284_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe517284_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe517284_reg_q <= in_c0_exe517284;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe517284(GPOUT,58)
    out_c0_exe517284 <= c0_exe517284_reg_q;

    -- c0_exe5215102_reg(REG,11)
    c0_exe5215102_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe5215102_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe5215102_reg_q <= in_c0_exe5215102;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe5215102(GPOUT,59)
    out_c0_exe5215102 <= c0_exe5215102_reg_q;

    -- c0_exe6216103_reg(REG,12)
    c0_exe6216103_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe6216103_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c0_exe6216103_reg_q <= in_c0_exe6216103;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe6216103(GPOUT,60)
    out_c0_exe6216103 <= c0_exe6216103_reg_q;

    -- c1_exe113_reg(REG,13)
    c1_exe113_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe113_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c1_exe113_reg_q <= in_c1_exe113;
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe113(GPOUT,61)
    out_c1_exe113 <= c1_exe113_reg_q;

    -- c1_exe1238_reg(REG,14)
    c1_exe1238_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe1238_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c1_exe1238_reg_q <= STD_LOGIC_VECTOR(in_c1_exe1238);
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe1238(GPOUT,62)
    out_c1_exe1238 <= c1_exe1238_reg_q;

    -- c2_exe122_reg(REG,15)
    c2_exe122_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c2_exe122_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c2_exe122_reg_q <= in_c2_exe122;
            END IF;
        END IF;
    END PROCESS;

    -- out_c2_exe122(GPOUT,63)
    out_c2_exe122 <= c2_exe122_reg_q;

    -- c3_exe130_reg(REG,16)
    c3_exe130_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c3_exe130_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c3_exe130_reg_q <= in_c3_exe130;
            END IF;
        END IF;
    END PROCESS;

    -- out_c3_exe130(GPOUT,64)
    out_c3_exe130 <= c3_exe130_reg_q;

    -- c3_exe238_reg(REG,17)
    c3_exe238_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c3_exe238_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                c3_exe238_reg_q <= in_c3_exe238;
            END IF;
        END IF;
    END PROCESS;

    -- out_c3_exe238(GPOUT,65)
    out_c3_exe238 <= c3_exe238_reg_q;

    -- inc_2_reg(REG,20)
    inc_2_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            inc_2_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                inc_2_reg_q <= in_inc_2;
            END IF;
        END IF;
    END PROCESS;

    -- out_inc_2(GPOUT,66)
    out_inc_2 <= inc_2_reg_q;

    -- j_01049_reg(REG,43)
    j_01049_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            j_01049_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B6_branch_enable_q = "1") THEN
                j_01049_reg_q <= in_j_01049;
            END IF;
        END IF;
    END PROCESS;

    -- out_j_01049(GPOUT,67)
    out_j_01049 <= j_01049_reg_q;

    -- conv1x1_B6_branch_enable_not(LOGICAL,19)
    conv1x1_B6_branch_enable_not_q <= not (conv1x1_B6_branch_enable_q);

    -- out_stall_out(GPOUT,68)
    out_stall_out <= conv1x1_B6_branch_enable_not_q;

    -- out_valid_out_0(GPOUT,69)
    out_valid_out_0 <= valid_0_reg_q;

    -- out_valid_out_1(GPOUT,70)
    out_valid_out_1 <= valid_1_reg_q;

END normal;
