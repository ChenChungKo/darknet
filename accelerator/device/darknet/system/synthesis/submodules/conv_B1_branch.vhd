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

-- VHDL created from conv_B1_branch
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

entity conv_B1_branch is
    port (
        in_acl_hw_wg_id18 : in std_logic_vector(31 downto 0);  -- ufix32
        in_add138 : in std_logic_vector(31 downto 0);  -- ufix32
        in_add81 : in std_logic_vector(31 downto 0);  -- ufix32
        in_add82 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe21 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe33 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe1117 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_exe14 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe25 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp429 : in std_logic_vector(0 downto 0);  -- ufix1
        in_cmp_GUARD : in std_logic_vector(0 downto 0);  -- ufix1
        in_global_id_012 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_114 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_015 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_116 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul387 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul6 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_acl_hw_wg_id18 : out std_logic_vector(31 downto 0);  -- ufix32
        out_add138 : out std_logic_vector(31 downto 0);  -- ufix32
        out_add81 : out std_logic_vector(31 downto 0);  -- ufix32
        out_add82 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe21 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe33 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe1117 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c1_exe14 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe25 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp429 : out std_logic_vector(0 downto 0);  -- ufix1
        out_global_id_012 : out std_logic_vector(31 downto 0);  -- ufix32
        out_global_id_114 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_015 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_116 : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul387 : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul6 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_B1_branch;

architecture normal of conv_B1_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_hw_wg_id18_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal add138_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal add81_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal add82_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe21_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe33_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe1117_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c1_exe14_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c1_exe25_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cmp429_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp_GUARD_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_branch_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_B1_branch_enable_not_q : STD_LOGIC_VECTOR (0 downto 0);
    signal global_id_012_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal global_id_114_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal local_id_015_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal local_id_116_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal mul387_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal mul6_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal not_stall_in_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_in_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_0_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_1_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_0_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_1_and_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_in_1(LOGICAL,42)
    not_stall_in_1_q <= not (in_stall_in_1);

    -- cmp_GUARD_cmp(LOGICAL,12)
    cmp_GUARD_cmp_q <= not (in_cmp_GUARD);

    -- valid_out_1_and(LOGICAL,69)
    valid_out_1_and_q <= in_valid_in and cmp_GUARD_cmp_q;

    -- valid_1_reg(REG,67)
    valid_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_1_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                valid_1_reg_q <= valid_out_1_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_1(LOGICAL,44)
    not_valid_1_q <= not (valid_1_reg_q);

    -- not_valid_or_not_stall_1(LOGICAL,46)
    not_valid_or_not_stall_1_q <= not_valid_1_q or not_stall_in_1_q;

    -- not_stall_in_0(LOGICAL,41)
    not_stall_in_0_q <= not (in_stall_in_0);

    -- valid_out_0_and(LOGICAL,68)
    valid_out_0_and_q <= in_valid_in and in_cmp_GUARD;

    -- valid_0_reg(REG,66)
    valid_0_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_0_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                valid_0_reg_q <= valid_out_0_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_0(LOGICAL,43)
    not_valid_0_q <= not (valid_0_reg_q);

    -- not_valid_or_not_stall_0(LOGICAL,45)
    not_valid_or_not_stall_0_q <= not_valid_0_q or not_stall_in_0_q;

    -- conv_B1_branch_enable(LOGICAL,13)
    conv_B1_branch_enable_q <= not_valid_or_not_stall_0_q and not_valid_or_not_stall_1_q;

    -- acl_hw_wg_id18_reg(REG,2)
    acl_hw_wg_id18_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            acl_hw_wg_id18_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                acl_hw_wg_id18_reg_q <= in_acl_hw_wg_id18;
            END IF;
        END IF;
    END PROCESS;

    -- out_acl_hw_wg_id18(GPOUT,47)
    out_acl_hw_wg_id18 <= acl_hw_wg_id18_reg_q;

    -- add138_reg(REG,3)
    add138_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            add138_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                add138_reg_q <= in_add138;
            END IF;
        END IF;
    END PROCESS;

    -- out_add138(GPOUT,48)
    out_add138 <= add138_reg_q;

    -- add81_reg(REG,4)
    add81_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            add81_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                add81_reg_q <= in_add81;
            END IF;
        END IF;
    END PROCESS;

    -- out_add81(GPOUT,49)
    out_add81 <= add81_reg_q;

    -- add82_reg(REG,5)
    add82_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            add82_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                add82_reg_q <= in_add82;
            END IF;
        END IF;
    END PROCESS;

    -- out_add82(GPOUT,50)
    out_add82 <= add82_reg_q;

    -- c0_exe21_reg(REG,6)
    c0_exe21_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe21_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                c0_exe21_reg_q <= in_c0_exe21;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe21(GPOUT,51)
    out_c0_exe21 <= c0_exe21_reg_q;

    -- c0_exe33_reg(REG,7)
    c0_exe33_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe33_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                c0_exe33_reg_q <= in_c0_exe33;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe33(GPOUT,52)
    out_c0_exe33 <= c0_exe33_reg_q;

    -- c1_exe1117_reg(REG,8)
    c1_exe1117_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe1117_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                c1_exe1117_reg_q <= STD_LOGIC_VECTOR(in_c1_exe1117);
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe1117(GPOUT,53)
    out_c1_exe1117 <= c1_exe1117_reg_q;

    -- c1_exe14_reg(REG,9)
    c1_exe14_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe14_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                c1_exe14_reg_q <= in_c1_exe14;
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe14(GPOUT,54)
    out_c1_exe14 <= c1_exe14_reg_q;

    -- c1_exe25_reg(REG,10)
    c1_exe25_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe25_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                c1_exe25_reg_q <= in_c1_exe25;
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe25(GPOUT,55)
    out_c1_exe25 <= c1_exe25_reg_q;

    -- cmp429_reg(REG,11)
    cmp429_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            cmp429_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                cmp429_reg_q <= in_cmp429;
            END IF;
        END IF;
    END PROCESS;

    -- out_cmp429(GPOUT,56)
    out_cmp429 <= cmp429_reg_q;

    -- global_id_012_reg(REG,15)
    global_id_012_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            global_id_012_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                global_id_012_reg_q <= in_global_id_012;
            END IF;
        END IF;
    END PROCESS;

    -- out_global_id_012(GPOUT,57)
    out_global_id_012 <= global_id_012_reg_q;

    -- global_id_114_reg(REG,16)
    global_id_114_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            global_id_114_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                global_id_114_reg_q <= in_global_id_114;
            END IF;
        END IF;
    END PROCESS;

    -- out_global_id_114(GPOUT,58)
    out_global_id_114 <= global_id_114_reg_q;

    -- local_id_015_reg(REG,37)
    local_id_015_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            local_id_015_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                local_id_015_reg_q <= in_local_id_015;
            END IF;
        END IF;
    END PROCESS;

    -- out_local_id_015(GPOUT,59)
    out_local_id_015 <= local_id_015_reg_q;

    -- local_id_116_reg(REG,38)
    local_id_116_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            local_id_116_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                local_id_116_reg_q <= in_local_id_116;
            END IF;
        END IF;
    END PROCESS;

    -- out_local_id_116(GPOUT,60)
    out_local_id_116 <= local_id_116_reg_q;

    -- mul387_reg(REG,39)
    mul387_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            mul387_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                mul387_reg_q <= in_mul387;
            END IF;
        END IF;
    END PROCESS;

    -- out_mul387(GPOUT,61)
    out_mul387 <= mul387_reg_q;

    -- mul6_reg(REG,40)
    mul6_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            mul6_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_B1_branch_enable_q = "1") THEN
                mul6_reg_q <= in_mul6;
            END IF;
        END IF;
    END PROCESS;

    -- out_mul6(GPOUT,62)
    out_mul6 <= mul6_reg_q;

    -- conv_B1_branch_enable_not(LOGICAL,14)
    conv_B1_branch_enable_not_q <= not (conv_B1_branch_enable_q);

    -- out_stall_out(GPOUT,63)
    out_stall_out <= conv_B1_branch_enable_not_q;

    -- out_valid_out_0(GPOUT,64)
    out_valid_out_0 <= valid_0_reg_q;

    -- out_valid_out_1(GPOUT,65)
    out_valid_out_1 <= valid_1_reg_q;

END normal;
