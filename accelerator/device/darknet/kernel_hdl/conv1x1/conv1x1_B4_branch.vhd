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

-- VHDL created from conv1x1_B4_branch
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

entity conv1x1_B4_branch is
    port (
        in_c0_exe116872 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe15 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe317074 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe360 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417180 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517286 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe687 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe788 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe889 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe115 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe1194 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe124 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe132 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe240 : in std_logic_vector(0 downto 0);  -- ufix1
        in_inc_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01051 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x14 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116872 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe15 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe317074 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe360 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417180 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe517286 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe687 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe788 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe889 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe115 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c1_exe1194 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe124 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe132 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe240 : out std_logic_vector(0 downto 0);  -- ufix1
        out_inc_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_j_01051 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B4_branch;

architecture normal of conv1x1_B4_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe116872_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe15_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exe317074_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe360_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe417180_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe517286_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe687_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe788_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe889_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe115_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c1_exe1194_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c2_exe124_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe132_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe240_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B4_branch_enable_not_q : STD_LOGIC_VECTOR (0 downto 0);
    signal inc_1_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal j_01051_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal not_stall_in_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_in_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv1x14_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_0_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_1_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_0_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_1_and_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_in_1(LOGICAL,41)
    not_stall_in_1_q <= not (in_stall_in_1);

    -- unnamed_conv1x14_cmp(LOGICAL,65)
    unnamed_conv1x14_cmp_q <= not (in_unnamed_conv1x14);

    -- valid_out_1_and(LOGICAL,69)
    valid_out_1_and_q <= in_valid_in and unnamed_conv1x14_cmp_q;

    -- valid_1_reg(REG,67)
    valid_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_1_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                valid_1_reg_q <= valid_out_1_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_1(LOGICAL,43)
    not_valid_1_q <= not (valid_1_reg_q);

    -- not_valid_or_not_stall_1(LOGICAL,45)
    not_valid_or_not_stall_1_q <= not_valid_1_q or not_stall_in_1_q;

    -- not_stall_in_0(LOGICAL,40)
    not_stall_in_0_q <= not (in_stall_in_0);

    -- valid_out_0_and(LOGICAL,68)
    valid_out_0_and_q <= in_valid_in and in_unnamed_conv1x14;

    -- valid_0_reg(REG,66)
    valid_0_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_0_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                valid_0_reg_q <= valid_out_0_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_0(LOGICAL,42)
    not_valid_0_q <= not (valid_0_reg_q);

    -- not_valid_or_not_stall_0(LOGICAL,44)
    not_valid_or_not_stall_0_q <= not_valid_0_q or not_stall_in_0_q;

    -- conv1x1_B4_branch_enable(LOGICAL,16)
    conv1x1_B4_branch_enable_q <= not_valid_or_not_stall_0_q and not_valid_or_not_stall_1_q;

    -- c0_exe116872_reg(REG,2)
    c0_exe116872_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe116872_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c0_exe116872_reg_q <= in_c0_exe116872;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe116872(GPOUT,46)
    out_c0_exe116872 <= c0_exe116872_reg_q;

    -- c0_exe15_reg(REG,3)
    c0_exe15_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe15_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c0_exe15_reg_q <= in_c0_exe15;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe15(GPOUT,47)
    out_c0_exe15 <= c0_exe15_reg_q;

    -- c0_exe317074_reg(REG,4)
    c0_exe317074_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe317074_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c0_exe317074_reg_q <= in_c0_exe317074;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe317074(GPOUT,48)
    out_c0_exe317074 <= c0_exe317074_reg_q;

    -- c0_exe360_reg(REG,5)
    c0_exe360_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe360_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c0_exe360_reg_q <= in_c0_exe360;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe360(GPOUT,49)
    out_c0_exe360 <= c0_exe360_reg_q;

    -- c0_exe417180_reg(REG,6)
    c0_exe417180_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe417180_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c0_exe417180_reg_q <= in_c0_exe417180;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe417180(GPOUT,50)
    out_c0_exe417180 <= c0_exe417180_reg_q;

    -- c0_exe517286_reg(REG,7)
    c0_exe517286_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe517286_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c0_exe517286_reg_q <= in_c0_exe517286;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe517286(GPOUT,51)
    out_c0_exe517286 <= c0_exe517286_reg_q;

    -- c0_exe687_reg(REG,8)
    c0_exe687_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe687_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c0_exe687_reg_q <= in_c0_exe687;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe687(GPOUT,52)
    out_c0_exe687 <= c0_exe687_reg_q;

    -- c0_exe788_reg(REG,9)
    c0_exe788_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe788_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c0_exe788_reg_q <= in_c0_exe788;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe788(GPOUT,53)
    out_c0_exe788 <= c0_exe788_reg_q;

    -- c0_exe889_reg(REG,10)
    c0_exe889_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe889_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c0_exe889_reg_q <= in_c0_exe889;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe889(GPOUT,54)
    out_c0_exe889 <= c0_exe889_reg_q;

    -- c1_exe115_reg(REG,11)
    c1_exe115_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe115_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c1_exe115_reg_q <= in_c1_exe115;
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe115(GPOUT,55)
    out_c1_exe115 <= c1_exe115_reg_q;

    -- c1_exe1194_reg(REG,12)
    c1_exe1194_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe1194_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c1_exe1194_reg_q <= STD_LOGIC_VECTOR(in_c1_exe1194);
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe1194(GPOUT,56)
    out_c1_exe1194 <= c1_exe1194_reg_q;

    -- c2_exe124_reg(REG,13)
    c2_exe124_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c2_exe124_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c2_exe124_reg_q <= in_c2_exe124;
            END IF;
        END IF;
    END PROCESS;

    -- out_c2_exe124(GPOUT,57)
    out_c2_exe124 <= c2_exe124_reg_q;

    -- c3_exe132_reg(REG,14)
    c3_exe132_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c3_exe132_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c3_exe132_reg_q <= in_c3_exe132;
            END IF;
        END IF;
    END PROCESS;

    -- out_c3_exe132(GPOUT,58)
    out_c3_exe132 <= c3_exe132_reg_q;

    -- c3_exe240_reg(REG,15)
    c3_exe240_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c3_exe240_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                c3_exe240_reg_q <= in_c3_exe240;
            END IF;
        END IF;
    END PROCESS;

    -- out_c3_exe240(GPOUT,59)
    out_c3_exe240 <= c3_exe240_reg_q;

    -- inc_1_reg(REG,18)
    inc_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            inc_1_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                inc_1_reg_q <= in_inc_1;
            END IF;
        END IF;
    END PROCESS;

    -- out_inc_1(GPOUT,60)
    out_inc_1 <= inc_1_reg_q;

    -- j_01051_reg(REG,39)
    j_01051_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            j_01051_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B4_branch_enable_q = "1") THEN
                j_01051_reg_q <= in_j_01051;
            END IF;
        END IF;
    END PROCESS;

    -- out_j_01051(GPOUT,61)
    out_j_01051 <= j_01051_reg_q;

    -- conv1x1_B4_branch_enable_not(LOGICAL,17)
    conv1x1_B4_branch_enable_not_q <= not (conv1x1_B4_branch_enable_q);

    -- out_stall_out(GPOUT,62)
    out_stall_out <= conv1x1_B4_branch_enable_not_q;

    -- out_valid_out_0(GPOUT,63)
    out_valid_out_0 <= valid_0_reg_q;

    -- out_valid_out_1(GPOUT,64)
    out_valid_out_1 <= valid_1_reg_q;

END normal;
