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

-- VHDL created from pool_B2_branch
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

entity pool_B2_branch is
    port (
        in_c0_exe11 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe11330 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe25 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe37 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe410 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe115 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe11931 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe141 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe118 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe12532 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp619 : in std_logic_vector(0 downto 0);  -- ufix1
        in_col_1728 : in std_logic_vector(31 downto 0);  -- ufix32
        in_inc : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_0926 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp_223 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_unnamed_pool1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_pool2 : in std_logic_vector(0 downto 0);  -- ufix1
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
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_223 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_unnamed_pool1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end pool_B2_branch;

architecture normal of pool_B2_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe11330_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe11_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe25_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe37_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe410_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe115_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c1_exe11931_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c1_exe141_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c2_exe118_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c2_exe12532_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cmp619_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal col_1728_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal inc_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal not_stall_in_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_in_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_branch_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal pool_B2_branch_enable_not_q : STD_LOGIC_VECTOR (0 downto 0);
    signal row_0926_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_223_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal unnamed_pool1_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_pool2_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_0_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_1_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_0_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_1_and_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_in_1(LOGICAL,36)
    not_stall_in_1_q <= not (in_stall_in_1);

    -- unnamed_pool2_cmp(LOGICAL,65)
    unnamed_pool2_cmp_q <= not (in_unnamed_pool2);

    -- valid_out_1_and(LOGICAL,69)
    valid_out_1_and_q <= in_valid_in and unnamed_pool2_cmp_q;

    -- valid_1_reg(REG,67)
    valid_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_1_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                valid_1_reg_q <= valid_out_1_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_1(LOGICAL,38)
    not_valid_1_q <= not (valid_1_reg_q);

    -- not_valid_or_not_stall_1(LOGICAL,40)
    not_valid_or_not_stall_1_q <= not_valid_1_q or not_stall_in_1_q;

    -- not_stall_in_0(LOGICAL,35)
    not_stall_in_0_q <= not (in_stall_in_0);

    -- valid_out_0_and(LOGICAL,68)
    valid_out_0_and_q <= in_valid_in and in_unnamed_pool2;

    -- valid_0_reg(REG,66)
    valid_0_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_0_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                valid_0_reg_q <= valid_out_0_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_0(LOGICAL,37)
    not_valid_0_q <= not (valid_0_reg_q);

    -- not_valid_or_not_stall_0(LOGICAL,39)
    not_valid_or_not_stall_0_q <= not_valid_0_q or not_stall_in_0_q;

    -- pool_B2_branch_enable(LOGICAL,60)
    pool_B2_branch_enable_q <= not_valid_or_not_stall_0_q and not_valid_or_not_stall_1_q;

    -- c0_exe11_reg(REG,3)
    c0_exe11_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe11_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                c0_exe11_reg_q <= in_c0_exe11;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe11(GPOUT,41)
    out_c0_exe11 <= c0_exe11_reg_q;

    -- c0_exe11330_reg(REG,2)
    c0_exe11330_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe11330_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                c0_exe11330_reg_q <= in_c0_exe11330;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe11330(GPOUT,42)
    out_c0_exe11330 <= c0_exe11330_reg_q;

    -- c0_exe25_reg(REG,4)
    c0_exe25_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe25_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                c0_exe25_reg_q <= in_c0_exe25;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe25(GPOUT,43)
    out_c0_exe25 <= c0_exe25_reg_q;

    -- c0_exe37_reg(REG,5)
    c0_exe37_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe37_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                c0_exe37_reg_q <= in_c0_exe37;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe37(GPOUT,44)
    out_c0_exe37 <= c0_exe37_reg_q;

    -- c0_exe410_reg(REG,6)
    c0_exe410_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe410_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                c0_exe410_reg_q <= in_c0_exe410;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe410(GPOUT,45)
    out_c0_exe410 <= c0_exe410_reg_q;

    -- c1_exe115_reg(REG,7)
    c1_exe115_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe115_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                c1_exe115_reg_q <= in_c1_exe115;
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe115(GPOUT,46)
    out_c1_exe115 <= c1_exe115_reg_q;

    -- c1_exe11931_reg(REG,8)
    c1_exe11931_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe11931_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                c1_exe11931_reg_q <= in_c1_exe11931;
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe11931(GPOUT,47)
    out_c1_exe11931 <= c1_exe11931_reg_q;

    -- c1_exe141_reg(REG,9)
    c1_exe141_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe141_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                c1_exe141_reg_q <= STD_LOGIC_VECTOR(in_c1_exe141);
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe141(GPOUT,48)
    out_c1_exe141 <= c1_exe141_reg_q;

    -- c2_exe118_reg(REG,10)
    c2_exe118_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c2_exe118_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                c2_exe118_reg_q <= in_c2_exe118;
            END IF;
        END IF;
    END PROCESS;

    -- out_c2_exe118(GPOUT,49)
    out_c2_exe118 <= c2_exe118_reg_q;

    -- c2_exe12532_reg(REG,11)
    c2_exe12532_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c2_exe12532_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                c2_exe12532_reg_q <= in_c2_exe12532;
            END IF;
        END IF;
    END PROCESS;

    -- out_c2_exe12532(GPOUT,50)
    out_c2_exe12532 <= c2_exe12532_reg_q;

    -- cmp619_reg(REG,12)
    cmp619_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            cmp619_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                cmp619_reg_q <= in_cmp619;
            END IF;
        END IF;
    END PROCESS;

    -- out_cmp619(GPOUT,51)
    out_cmp619 <= cmp619_reg_q;

    -- col_1728_reg(REG,13)
    col_1728_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            col_1728_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                col_1728_reg_q <= in_col_1728;
            END IF;
        END IF;
    END PROCESS;

    -- out_col_1728(GPOUT,52)
    out_col_1728 <= col_1728_reg_q;

    -- inc_reg(REG,14)
    inc_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            inc_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                inc_reg_q <= in_inc;
            END IF;
        END IF;
    END PROCESS;

    -- out_inc(GPOUT,53)
    out_inc <= inc_reg_q;

    -- row_0926_reg(REG,62)
    row_0926_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            row_0926_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                row_0926_reg_q <= in_row_0926;
            END IF;
        END IF;
    END PROCESS;

    -- out_row_0926(GPOUT,54)
    out_row_0926 <= row_0926_reg_q;

    -- pool_B2_branch_enable_not(LOGICAL,61)
    pool_B2_branch_enable_not_q <= not (pool_B2_branch_enable_q);

    -- out_stall_out(GPOUT,55)
    out_stall_out <= pool_B2_branch_enable_not_q;

    -- tmp_223_reg(REG,63)
    tmp_223_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            tmp_223_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                tmp_223_reg_q <= STD_LOGIC_VECTOR(in_tmp_223);
            END IF;
        END IF;
    END PROCESS;

    -- out_tmp_223(GPOUT,56)
    out_tmp_223 <= tmp_223_reg_q;

    -- unnamed_pool1_reg(REG,64)
    unnamed_pool1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            unnamed_pool1_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (pool_B2_branch_enable_q = "1") THEN
                unnamed_pool1_reg_q <= in_unnamed_pool1;
            END IF;
        END IF;
    END PROCESS;

    -- out_unnamed_pool1(GPOUT,57)
    out_unnamed_pool1 <= unnamed_pool1_reg_q;

    -- out_valid_out_0(GPOUT,58)
    out_valid_out_0 <= valid_0_reg_q;

    -- out_valid_out_1(GPOUT,59)
    out_valid_out_1 <= valid_1_reg_q;

END normal;
