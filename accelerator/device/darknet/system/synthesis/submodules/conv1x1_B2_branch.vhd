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

-- VHDL created from conv1x1_B2_branch
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

entity conv1x1_B2_branch is
    port (
        in_c0_exe114054 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe17 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe255 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe362 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe464 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe565 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe1154 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c1_exe117 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe126 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe134 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe242 : in std_logic_vector(0 downto 0);  -- ufix1
        in_inc : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01053 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x10 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe114054 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe17 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe255 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe362 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe464 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe565 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe1154 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c1_exe117 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe126 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe134 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe242 : out std_logic_vector(0 downto 0);  -- ufix1
        out_inc : out std_logic_vector(31 downto 0);  -- ufix32
        out_j_01053 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B2_branch;

architecture normal of conv1x1_B2_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe114054_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe17_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exe255_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe362_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe464_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe565_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe1154_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c1_exe117_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c2_exe126_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe134_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe242_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_branch_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B2_branch_enable_not_q : STD_LOGIC_VECTOR (0 downto 0);
    signal inc_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal j_01053_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal not_stall_in_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_in_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv1x10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_0_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_1_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_0_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_1_and_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_in_1(LOGICAL,35)
    not_stall_in_1_q <= not (in_stall_in_1);

    -- unnamed_conv1x10_cmp(LOGICAL,56)
    unnamed_conv1x10_cmp_q <= not (in_unnamed_conv1x10);

    -- valid_out_1_and(LOGICAL,60)
    valid_out_1_and_q <= in_valid_in and unnamed_conv1x10_cmp_q;

    -- valid_1_reg(REG,58)
    valid_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_1_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                valid_1_reg_q <= valid_out_1_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_1(LOGICAL,37)
    not_valid_1_q <= not (valid_1_reg_q);

    -- not_valid_or_not_stall_1(LOGICAL,39)
    not_valid_or_not_stall_1_q <= not_valid_1_q or not_stall_in_1_q;

    -- not_stall_in_0(LOGICAL,34)
    not_stall_in_0_q <= not (in_stall_in_0);

    -- valid_out_0_and(LOGICAL,59)
    valid_out_0_and_q <= in_valid_in and in_unnamed_conv1x10;

    -- valid_0_reg(REG,57)
    valid_0_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_0_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                valid_0_reg_q <= valid_out_0_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_0(LOGICAL,36)
    not_valid_0_q <= not (valid_0_reg_q);

    -- not_valid_or_not_stall_0(LOGICAL,38)
    not_valid_or_not_stall_0_q <= not_valid_0_q or not_stall_in_0_q;

    -- conv1x1_B2_branch_enable(LOGICAL,13)
    conv1x1_B2_branch_enable_q <= not_valid_or_not_stall_0_q and not_valid_or_not_stall_1_q;

    -- c0_exe114054_reg(REG,2)
    c0_exe114054_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe114054_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c0_exe114054_reg_q <= in_c0_exe114054;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe114054(GPOUT,40)
    out_c0_exe114054 <= c0_exe114054_reg_q;

    -- c0_exe17_reg(REG,3)
    c0_exe17_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe17_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c0_exe17_reg_q <= in_c0_exe17;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe17(GPOUT,41)
    out_c0_exe17 <= c0_exe17_reg_q;

    -- c0_exe255_reg(REG,4)
    c0_exe255_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe255_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c0_exe255_reg_q <= in_c0_exe255;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe255(GPOUT,42)
    out_c0_exe255 <= c0_exe255_reg_q;

    -- c0_exe362_reg(REG,5)
    c0_exe362_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe362_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c0_exe362_reg_q <= in_c0_exe362;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe362(GPOUT,43)
    out_c0_exe362 <= c0_exe362_reg_q;

    -- c0_exe464_reg(REG,6)
    c0_exe464_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe464_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c0_exe464_reg_q <= in_c0_exe464;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe464(GPOUT,44)
    out_c0_exe464 <= c0_exe464_reg_q;

    -- c0_exe565_reg(REG,7)
    c0_exe565_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe565_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c0_exe565_reg_q <= in_c0_exe565;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe565(GPOUT,45)
    out_c0_exe565 <= c0_exe565_reg_q;

    -- c1_exe1154_reg(REG,8)
    c1_exe1154_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe1154_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c1_exe1154_reg_q <= STD_LOGIC_VECTOR(in_c1_exe1154);
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe1154(GPOUT,46)
    out_c1_exe1154 <= c1_exe1154_reg_q;

    -- c1_exe117_reg(REG,9)
    c1_exe117_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe117_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c1_exe117_reg_q <= in_c1_exe117;
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe117(GPOUT,47)
    out_c1_exe117 <= c1_exe117_reg_q;

    -- c2_exe126_reg(REG,10)
    c2_exe126_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c2_exe126_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c2_exe126_reg_q <= in_c2_exe126;
            END IF;
        END IF;
    END PROCESS;

    -- out_c2_exe126(GPOUT,48)
    out_c2_exe126 <= c2_exe126_reg_q;

    -- c3_exe134_reg(REG,11)
    c3_exe134_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c3_exe134_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c3_exe134_reg_q <= in_c3_exe134;
            END IF;
        END IF;
    END PROCESS;

    -- out_c3_exe134(GPOUT,49)
    out_c3_exe134 <= c3_exe134_reg_q;

    -- c3_exe242_reg(REG,12)
    c3_exe242_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c3_exe242_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                c3_exe242_reg_q <= in_c3_exe242;
            END IF;
        END IF;
    END PROCESS;

    -- out_c3_exe242(GPOUT,50)
    out_c3_exe242 <= c3_exe242_reg_q;

    -- inc_reg(REG,15)
    inc_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            inc_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                inc_reg_q <= in_inc;
            END IF;
        END IF;
    END PROCESS;

    -- out_inc(GPOUT,51)
    out_inc <= inc_reg_q;

    -- j_01053_reg(REG,33)
    j_01053_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            j_01053_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B2_branch_enable_q = "1") THEN
                j_01053_reg_q <= in_j_01053;
            END IF;
        END IF;
    END PROCESS;

    -- out_j_01053(GPOUT,52)
    out_j_01053 <= j_01053_reg_q;

    -- conv1x1_B2_branch_enable_not(LOGICAL,14)
    conv1x1_B2_branch_enable_not_q <= not (conv1x1_B2_branch_enable_q);

    -- out_stall_out(GPOUT,53)
    out_stall_out <= conv1x1_B2_branch_enable_not_q;

    -- out_valid_out_0(GPOUT,54)
    out_valid_out_0 <= valid_0_reg_q;

    -- out_valid_out_1(GPOUT,55)
    out_valid_out_1 <= valid_1_reg_q;

END normal;
