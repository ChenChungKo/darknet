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

-- VHDL created from conv1x1_B6_merge
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

entity conv1x1_B6_merge is
    port (
        in_c0_exe116870_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe116870_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe121192_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe121192_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe13_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe13_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe221296_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe221296_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3213100_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3213100_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe358_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe358_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417178_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417178_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4214101_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe4214101_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe517284_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517284_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5215102_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5215102_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6216103_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6216103_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe113_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe113_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe122_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe122_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe130_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe130_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe238_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c3_exe238_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01049_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01049_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_2_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_2_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp_17_2_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_17_2_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
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
        out_c2_exe122 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe130 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe238 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01049 : out std_logic_vector(31 downto 0);  -- ufix32
        out_k_18_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_17_2 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B6_merge;

architecture normal of conv1x1_B6_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe116870_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe116870_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe121192_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe121192_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe13_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe13_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exe221296_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe221296_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe3213100_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe3213100_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe358_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe358_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe417178_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe417178_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe4214101_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe4214101_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe517284_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe517284_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe5215102_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe5215102_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe6216103_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe6216103_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe113_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe113_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c2_exe122_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_exe122_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe130_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c3_exe130_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe238_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c3_exe238_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal j_01049_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal j_01049_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal k_18_2_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal k_18_2_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_2_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_2_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- c0_exe116870_mux(MUX,2)
    c0_exe116870_mux_s <= in_valid_in_0;
    c0_exe116870_mux_combproc: PROCESS (c0_exe116870_mux_s, in_c0_exe116870_1, in_c0_exe116870_0)
    BEGIN
        CASE (c0_exe116870_mux_s) IS
            WHEN "0" => c0_exe116870_mux_q <= in_c0_exe116870_1;
            WHEN "1" => c0_exe116870_mux_q <= in_c0_exe116870_0;
            WHEN OTHERS => c0_exe116870_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe116870(GPOUT,58)
    out_c0_exe116870 <= c0_exe116870_mux_q;

    -- c0_exe121192_mux(MUX,3)
    c0_exe121192_mux_s <= in_valid_in_0;
    c0_exe121192_mux_combproc: PROCESS (c0_exe121192_mux_s, in_c0_exe121192_1, in_c0_exe121192_0)
    BEGIN
        CASE (c0_exe121192_mux_s) IS
            WHEN "0" => c0_exe121192_mux_q <= in_c0_exe121192_1;
            WHEN "1" => c0_exe121192_mux_q <= in_c0_exe121192_0;
            WHEN OTHERS => c0_exe121192_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe121192(GPOUT,59)
    out_c0_exe121192 <= c0_exe121192_mux_q;

    -- c0_exe13_mux(MUX,4)
    c0_exe13_mux_s <= in_valid_in_0;
    c0_exe13_mux_combproc: PROCESS (c0_exe13_mux_s, in_c0_exe13_1, in_c0_exe13_0)
    BEGIN
        CASE (c0_exe13_mux_s) IS
            WHEN "0" => c0_exe13_mux_q <= in_c0_exe13_1;
            WHEN "1" => c0_exe13_mux_q <= in_c0_exe13_0;
            WHEN OTHERS => c0_exe13_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe13(GPOUT,60)
    out_c0_exe13 <= c0_exe13_mux_q;

    -- c0_exe221296_mux(MUX,5)
    c0_exe221296_mux_s <= in_valid_in_0;
    c0_exe221296_mux_combproc: PROCESS (c0_exe221296_mux_s, in_c0_exe221296_1, in_c0_exe221296_0)
    BEGIN
        CASE (c0_exe221296_mux_s) IS
            WHEN "0" => c0_exe221296_mux_q <= in_c0_exe221296_1;
            WHEN "1" => c0_exe221296_mux_q <= in_c0_exe221296_0;
            WHEN OTHERS => c0_exe221296_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe221296(GPOUT,61)
    out_c0_exe221296 <= c0_exe221296_mux_q;

    -- c0_exe3213100_mux(MUX,6)
    c0_exe3213100_mux_s <= in_valid_in_0;
    c0_exe3213100_mux_combproc: PROCESS (c0_exe3213100_mux_s, in_c0_exe3213100_1, in_c0_exe3213100_0)
    BEGIN
        CASE (c0_exe3213100_mux_s) IS
            WHEN "0" => c0_exe3213100_mux_q <= in_c0_exe3213100_1;
            WHEN "1" => c0_exe3213100_mux_q <= in_c0_exe3213100_0;
            WHEN OTHERS => c0_exe3213100_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe3213100(GPOUT,62)
    out_c0_exe3213100 <= c0_exe3213100_mux_q;

    -- c0_exe358_mux(MUX,7)
    c0_exe358_mux_s <= in_valid_in_0;
    c0_exe358_mux_combproc: PROCESS (c0_exe358_mux_s, in_c0_exe358_1, in_c0_exe358_0)
    BEGIN
        CASE (c0_exe358_mux_s) IS
            WHEN "0" => c0_exe358_mux_q <= in_c0_exe358_1;
            WHEN "1" => c0_exe358_mux_q <= in_c0_exe358_0;
            WHEN OTHERS => c0_exe358_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe358(GPOUT,63)
    out_c0_exe358 <= c0_exe358_mux_q;

    -- c0_exe417178_mux(MUX,8)
    c0_exe417178_mux_s <= in_valid_in_0;
    c0_exe417178_mux_combproc: PROCESS (c0_exe417178_mux_s, in_c0_exe417178_1, in_c0_exe417178_0)
    BEGIN
        CASE (c0_exe417178_mux_s) IS
            WHEN "0" => c0_exe417178_mux_q <= in_c0_exe417178_1;
            WHEN "1" => c0_exe417178_mux_q <= in_c0_exe417178_0;
            WHEN OTHERS => c0_exe417178_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe417178(GPOUT,64)
    out_c0_exe417178 <= c0_exe417178_mux_q;

    -- c0_exe4214101_mux(MUX,9)
    c0_exe4214101_mux_s <= in_valid_in_0;
    c0_exe4214101_mux_combproc: PROCESS (c0_exe4214101_mux_s, in_c0_exe4214101_1, in_c0_exe4214101_0)
    BEGIN
        CASE (c0_exe4214101_mux_s) IS
            WHEN "0" => c0_exe4214101_mux_q <= in_c0_exe4214101_1;
            WHEN "1" => c0_exe4214101_mux_q <= in_c0_exe4214101_0;
            WHEN OTHERS => c0_exe4214101_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe4214101(GPOUT,65)
    out_c0_exe4214101 <= c0_exe4214101_mux_q;

    -- c0_exe517284_mux(MUX,10)
    c0_exe517284_mux_s <= in_valid_in_0;
    c0_exe517284_mux_combproc: PROCESS (c0_exe517284_mux_s, in_c0_exe517284_1, in_c0_exe517284_0)
    BEGIN
        CASE (c0_exe517284_mux_s) IS
            WHEN "0" => c0_exe517284_mux_q <= in_c0_exe517284_1;
            WHEN "1" => c0_exe517284_mux_q <= in_c0_exe517284_0;
            WHEN OTHERS => c0_exe517284_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe517284(GPOUT,66)
    out_c0_exe517284 <= c0_exe517284_mux_q;

    -- c0_exe5215102_mux(MUX,11)
    c0_exe5215102_mux_s <= in_valid_in_0;
    c0_exe5215102_mux_combproc: PROCESS (c0_exe5215102_mux_s, in_c0_exe5215102_1, in_c0_exe5215102_0)
    BEGIN
        CASE (c0_exe5215102_mux_s) IS
            WHEN "0" => c0_exe5215102_mux_q <= in_c0_exe5215102_1;
            WHEN "1" => c0_exe5215102_mux_q <= in_c0_exe5215102_0;
            WHEN OTHERS => c0_exe5215102_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe5215102(GPOUT,67)
    out_c0_exe5215102 <= c0_exe5215102_mux_q;

    -- c0_exe6216103_mux(MUX,12)
    c0_exe6216103_mux_s <= in_valid_in_0;
    c0_exe6216103_mux_combproc: PROCESS (c0_exe6216103_mux_s, in_c0_exe6216103_1, in_c0_exe6216103_0)
    BEGIN
        CASE (c0_exe6216103_mux_s) IS
            WHEN "0" => c0_exe6216103_mux_q <= in_c0_exe6216103_1;
            WHEN "1" => c0_exe6216103_mux_q <= in_c0_exe6216103_0;
            WHEN OTHERS => c0_exe6216103_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe6216103(GPOUT,68)
    out_c0_exe6216103 <= c0_exe6216103_mux_q;

    -- c1_exe113_mux(MUX,13)
    c1_exe113_mux_s <= in_valid_in_0;
    c1_exe113_mux_combproc: PROCESS (c1_exe113_mux_s, in_c1_exe113_1, in_c1_exe113_0)
    BEGIN
        CASE (c1_exe113_mux_s) IS
            WHEN "0" => c1_exe113_mux_q <= in_c1_exe113_1;
            WHEN "1" => c1_exe113_mux_q <= in_c1_exe113_0;
            WHEN OTHERS => c1_exe113_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c1_exe113(GPOUT,69)
    out_c1_exe113 <= c1_exe113_mux_q;

    -- c2_exe122_mux(MUX,14)
    c2_exe122_mux_s <= in_valid_in_0;
    c2_exe122_mux_combproc: PROCESS (c2_exe122_mux_s, in_c2_exe122_1, in_c2_exe122_0)
    BEGIN
        CASE (c2_exe122_mux_s) IS
            WHEN "0" => c2_exe122_mux_q <= in_c2_exe122_1;
            WHEN "1" => c2_exe122_mux_q <= in_c2_exe122_0;
            WHEN OTHERS => c2_exe122_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c2_exe122(GPOUT,70)
    out_c2_exe122 <= c2_exe122_mux_q;

    -- c3_exe130_mux(MUX,15)
    c3_exe130_mux_s <= in_valid_in_0;
    c3_exe130_mux_combproc: PROCESS (c3_exe130_mux_s, in_c3_exe130_1, in_c3_exe130_0)
    BEGIN
        CASE (c3_exe130_mux_s) IS
            WHEN "0" => c3_exe130_mux_q <= in_c3_exe130_1;
            WHEN "1" => c3_exe130_mux_q <= in_c3_exe130_0;
            WHEN OTHERS => c3_exe130_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c3_exe130(GPOUT,71)
    out_c3_exe130 <= c3_exe130_mux_q;

    -- c3_exe238_mux(MUX,16)
    c3_exe238_mux_s <= in_valid_in_0;
    c3_exe238_mux_combproc: PROCESS (c3_exe238_mux_s, in_c3_exe238_1, in_c3_exe238_0)
    BEGIN
        CASE (c3_exe238_mux_s) IS
            WHEN "0" => c3_exe238_mux_q <= in_c3_exe238_1;
            WHEN "1" => c3_exe238_mux_q <= in_c3_exe238_0;
            WHEN OTHERS => c3_exe238_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c3_exe238(GPOUT,72)
    out_c3_exe238 <= c3_exe238_mux_q;

    -- j_01049_mux(MUX,56)
    j_01049_mux_s <= in_valid_in_0;
    j_01049_mux_combproc: PROCESS (j_01049_mux_s, in_j_01049_1, in_j_01049_0)
    BEGIN
        CASE (j_01049_mux_s) IS
            WHEN "0" => j_01049_mux_q <= in_j_01049_1;
            WHEN "1" => j_01049_mux_q <= in_j_01049_0;
            WHEN OTHERS => j_01049_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_j_01049(GPOUT,73)
    out_j_01049 <= j_01049_mux_q;

    -- k_18_2_mux(MUX,57)
    k_18_2_mux_s <= in_valid_in_0;
    k_18_2_mux_combproc: PROCESS (k_18_2_mux_s, in_k_18_2_1, in_k_18_2_0)
    BEGIN
        CASE (k_18_2_mux_s) IS
            WHEN "0" => k_18_2_mux_q <= in_k_18_2_1;
            WHEN "1" => k_18_2_mux_q <= in_k_18_2_0;
            WHEN OTHERS => k_18_2_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_k_18_2(GPOUT,74)
    out_k_18_2 <= k_18_2_mux_q;

    -- valid_or(LOGICAL,82)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,79)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,75)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,80)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,76)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- tmp_17_2_mux(MUX,81)
    tmp_17_2_mux_s <= in_valid_in_0;
    tmp_17_2_mux_combproc: PROCESS (tmp_17_2_mux_s, in_tmp_17_2_1, in_tmp_17_2_0)
    BEGIN
        CASE (tmp_17_2_mux_s) IS
            WHEN "0" => tmp_17_2_mux_q <= in_tmp_17_2_1;
            WHEN "1" => tmp_17_2_mux_q <= in_tmp_17_2_0;
            WHEN OTHERS => tmp_17_2_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_tmp_17_2(GPOUT,77)
    out_tmp_17_2 <= tmp_17_2_mux_q;

    -- out_valid_out(GPOUT,78)
    out_valid_out <= valid_or_q;

END normal;
