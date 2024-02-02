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

-- VHDL created from conv1x1_B8_branch
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

entity conv1x1_B8_branch is
    port (
        in_c0_exe11 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe116868 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe1254106 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe221294 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2255108 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321398 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3256109 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe356 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417176 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4257110 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517282 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5258111 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe111 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe1280 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_c2_exe120 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe128 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe245 : in std_logic_vector(0 downto 0);  -- ufix1
        in_inc_3 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01047 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv1x112 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe11 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe116868 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1254106 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe221294 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2255108 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe321398 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3256109 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe356 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe417176 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4257110 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe517282 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5258111 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe111 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c1_exe1280 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_c2_exe120 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe128 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe245 : out std_logic_vector(0 downto 0);  -- ufix1
        out_inc_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_j_01047 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B8_branch;

architecture normal of conv1x1_B8_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe116868_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe11_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exe1254106_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe221294_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe2255108_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe321398_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe3256109_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe356_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe417176_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe4257110_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe517282_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe5258111_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe111_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c1_exe1280_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c2_exe120_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe128_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe245_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv1x1_B8_branch_enable_not_q : STD_LOGIC_VECTOR (0 downto 0);
    signal inc_3_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal j_01047_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal not_stall_in_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_in_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv1x112_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_0_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_1_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_0_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_1_and_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_in_1(LOGICAL,47)
    not_stall_in_1_q <= not (in_stall_in_1);

    -- unnamed_conv1x112_cmp(LOGICAL,74)
    unnamed_conv1x112_cmp_q <= not (in_unnamed_conv1x112);

    -- valid_out_1_and(LOGICAL,78)
    valid_out_1_and_q <= in_valid_in and unnamed_conv1x112_cmp_q;

    -- valid_1_reg(REG,76)
    valid_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_1_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                valid_1_reg_q <= valid_out_1_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_1(LOGICAL,49)
    not_valid_1_q <= not (valid_1_reg_q);

    -- not_valid_or_not_stall_1(LOGICAL,51)
    not_valid_or_not_stall_1_q <= not_valid_1_q or not_stall_in_1_q;

    -- not_stall_in_0(LOGICAL,46)
    not_stall_in_0_q <= not (in_stall_in_0);

    -- valid_out_0_and(LOGICAL,77)
    valid_out_0_and_q <= in_valid_in and in_unnamed_conv1x112;

    -- valid_0_reg(REG,75)
    valid_0_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_0_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                valid_0_reg_q <= valid_out_0_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_0(LOGICAL,48)
    not_valid_0_q <= not (valid_0_reg_q);

    -- not_valid_or_not_stall_0(LOGICAL,50)
    not_valid_or_not_stall_0_q <= not_valid_0_q or not_stall_in_0_q;

    -- conv1x1_B8_branch_enable(LOGICAL,19)
    conv1x1_B8_branch_enable_q <= not_valid_or_not_stall_0_q and not_valid_or_not_stall_1_q;

    -- c0_exe11_reg(REG,3)
    c0_exe11_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe11_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe11_reg_q <= in_c0_exe11;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe11(GPOUT,52)
    out_c0_exe11 <= c0_exe11_reg_q;

    -- c0_exe116868_reg(REG,2)
    c0_exe116868_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe116868_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe116868_reg_q <= in_c0_exe116868;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe116868(GPOUT,53)
    out_c0_exe116868 <= c0_exe116868_reg_q;

    -- c0_exe1254106_reg(REG,4)
    c0_exe1254106_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe1254106_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe1254106_reg_q <= in_c0_exe1254106;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe1254106(GPOUT,54)
    out_c0_exe1254106 <= c0_exe1254106_reg_q;

    -- c0_exe221294_reg(REG,5)
    c0_exe221294_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe221294_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe221294_reg_q <= in_c0_exe221294;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe221294(GPOUT,55)
    out_c0_exe221294 <= c0_exe221294_reg_q;

    -- c0_exe2255108_reg(REG,6)
    c0_exe2255108_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe2255108_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe2255108_reg_q <= in_c0_exe2255108;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe2255108(GPOUT,56)
    out_c0_exe2255108 <= c0_exe2255108_reg_q;

    -- c0_exe321398_reg(REG,7)
    c0_exe321398_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe321398_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe321398_reg_q <= in_c0_exe321398;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe321398(GPOUT,57)
    out_c0_exe321398 <= c0_exe321398_reg_q;

    -- c0_exe3256109_reg(REG,8)
    c0_exe3256109_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe3256109_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe3256109_reg_q <= in_c0_exe3256109;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe3256109(GPOUT,58)
    out_c0_exe3256109 <= c0_exe3256109_reg_q;

    -- c0_exe356_reg(REG,9)
    c0_exe356_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe356_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe356_reg_q <= in_c0_exe356;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe356(GPOUT,59)
    out_c0_exe356 <= c0_exe356_reg_q;

    -- c0_exe417176_reg(REG,10)
    c0_exe417176_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe417176_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe417176_reg_q <= in_c0_exe417176;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe417176(GPOUT,60)
    out_c0_exe417176 <= c0_exe417176_reg_q;

    -- c0_exe4257110_reg(REG,11)
    c0_exe4257110_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe4257110_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe4257110_reg_q <= in_c0_exe4257110;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe4257110(GPOUT,61)
    out_c0_exe4257110 <= c0_exe4257110_reg_q;

    -- c0_exe517282_reg(REG,12)
    c0_exe517282_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe517282_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe517282_reg_q <= in_c0_exe517282;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe517282(GPOUT,62)
    out_c0_exe517282 <= c0_exe517282_reg_q;

    -- c0_exe5258111_reg(REG,13)
    c0_exe5258111_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe5258111_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c0_exe5258111_reg_q <= in_c0_exe5258111;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe5258111(GPOUT,63)
    out_c0_exe5258111 <= c0_exe5258111_reg_q;

    -- c1_exe111_reg(REG,14)
    c1_exe111_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe111_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c1_exe111_reg_q <= in_c1_exe111;
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe111(GPOUT,64)
    out_c1_exe111 <= c1_exe111_reg_q;

    -- c1_exe1280_reg(REG,15)
    c1_exe1280_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe1280_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c1_exe1280_reg_q <= STD_LOGIC_VECTOR(in_c1_exe1280);
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe1280(GPOUT,65)
    out_c1_exe1280 <= c1_exe1280_reg_q;

    -- c2_exe120_reg(REG,16)
    c2_exe120_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c2_exe120_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c2_exe120_reg_q <= in_c2_exe120;
            END IF;
        END IF;
    END PROCESS;

    -- out_c2_exe120(GPOUT,66)
    out_c2_exe120 <= c2_exe120_reg_q;

    -- c3_exe128_reg(REG,17)
    c3_exe128_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c3_exe128_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c3_exe128_reg_q <= in_c3_exe128;
            END IF;
        END IF;
    END PROCESS;

    -- out_c3_exe128(GPOUT,67)
    out_c3_exe128 <= c3_exe128_reg_q;

    -- c3_exe245_reg(REG,18)
    c3_exe245_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c3_exe245_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                c3_exe245_reg_q <= in_c3_exe245;
            END IF;
        END IF;
    END PROCESS;

    -- out_c3_exe245(GPOUT,68)
    out_c3_exe245 <= c3_exe245_reg_q;

    -- inc_3_reg(REG,21)
    inc_3_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            inc_3_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                inc_3_reg_q <= in_inc_3;
            END IF;
        END IF;
    END PROCESS;

    -- out_inc_3(GPOUT,69)
    out_inc_3 <= inc_3_reg_q;

    -- j_01047_reg(REG,45)
    j_01047_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            j_01047_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv1x1_B8_branch_enable_q = "1") THEN
                j_01047_reg_q <= in_j_01047;
            END IF;
        END IF;
    END PROCESS;

    -- out_j_01047(GPOUT,70)
    out_j_01047 <= j_01047_reg_q;

    -- conv1x1_B8_branch_enable_not(LOGICAL,20)
    conv1x1_B8_branch_enable_not_q <= not (conv1x1_B8_branch_enable_q);

    -- out_stall_out(GPOUT,71)
    out_stall_out <= conv1x1_B8_branch_enable_not_q;

    -- out_valid_out_0(GPOUT,72)
    out_valid_out_0 <= valid_0_reg_q;

    -- out_valid_out_1(GPOUT,73)
    out_valid_out_1 <= valid_1_reg_q;

END normal;
