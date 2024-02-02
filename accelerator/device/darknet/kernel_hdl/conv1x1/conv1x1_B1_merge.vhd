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

-- VHDL created from conv1x1_B1_merge
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

entity conv1x1_B1_merge is
    port (
        in_c0_exe18_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe18_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe118_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe118_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe127_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe127_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe135_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe135_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe243_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c3_exe243_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_010_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_010_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe18 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c1_exe118 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe127 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe135 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe243 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_010 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B1_merge;

architecture normal of conv1x1_B1_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe18_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe18_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c1_exe118_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe118_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c2_exe127_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_exe127_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe135_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c3_exe135_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe243_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c3_exe243_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal j_010_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal j_010_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- c0_exe18_mux(MUX,2)
    c0_exe18_mux_s <= in_valid_in_0;
    c0_exe18_mux_combproc: PROCESS (c0_exe18_mux_s, in_c0_exe18_1, in_c0_exe18_0)
    BEGIN
        CASE (c0_exe18_mux_s) IS
            WHEN "0" => c0_exe18_mux_q <= in_c0_exe18_1;
            WHEN "1" => c0_exe18_mux_q <= in_c0_exe18_0;
            WHEN OTHERS => c0_exe18_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe18(GPOUT,23)
    out_c0_exe18 <= c0_exe18_mux_q;

    -- c1_exe118_mux(MUX,3)
    c1_exe118_mux_s <= in_valid_in_0;
    c1_exe118_mux_combproc: PROCESS (c1_exe118_mux_s, in_c1_exe118_1, in_c1_exe118_0)
    BEGIN
        CASE (c1_exe118_mux_s) IS
            WHEN "0" => c1_exe118_mux_q <= in_c1_exe118_1;
            WHEN "1" => c1_exe118_mux_q <= in_c1_exe118_0;
            WHEN OTHERS => c1_exe118_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c1_exe118(GPOUT,24)
    out_c1_exe118 <= c1_exe118_mux_q;

    -- c2_exe127_mux(MUX,4)
    c2_exe127_mux_s <= in_valid_in_0;
    c2_exe127_mux_combproc: PROCESS (c2_exe127_mux_s, in_c2_exe127_1, in_c2_exe127_0)
    BEGIN
        CASE (c2_exe127_mux_s) IS
            WHEN "0" => c2_exe127_mux_q <= in_c2_exe127_1;
            WHEN "1" => c2_exe127_mux_q <= in_c2_exe127_0;
            WHEN OTHERS => c2_exe127_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c2_exe127(GPOUT,25)
    out_c2_exe127 <= c2_exe127_mux_q;

    -- c3_exe135_mux(MUX,5)
    c3_exe135_mux_s <= in_valid_in_0;
    c3_exe135_mux_combproc: PROCESS (c3_exe135_mux_s, in_c3_exe135_1, in_c3_exe135_0)
    BEGIN
        CASE (c3_exe135_mux_s) IS
            WHEN "0" => c3_exe135_mux_q <= in_c3_exe135_1;
            WHEN "1" => c3_exe135_mux_q <= in_c3_exe135_0;
            WHEN OTHERS => c3_exe135_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c3_exe135(GPOUT,26)
    out_c3_exe135 <= c3_exe135_mux_q;

    -- c3_exe243_mux(MUX,6)
    c3_exe243_mux_s <= in_valid_in_0;
    c3_exe243_mux_combproc: PROCESS (c3_exe243_mux_s, in_c3_exe243_1, in_c3_exe243_0)
    BEGIN
        CASE (c3_exe243_mux_s) IS
            WHEN "0" => c3_exe243_mux_q <= in_c3_exe243_1;
            WHEN "1" => c3_exe243_mux_q <= in_c3_exe243_0;
            WHEN OTHERS => c3_exe243_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c3_exe243(GPOUT,27)
    out_c3_exe243 <= c3_exe243_mux_q;

    -- j_010_mux(MUX,22)
    j_010_mux_s <= in_valid_in_0;
    j_010_mux_combproc: PROCESS (j_010_mux_s, in_j_010_1, in_j_010_0)
    BEGIN
        CASE (j_010_mux_s) IS
            WHEN "0" => j_010_mux_q <= in_j_010_1;
            WHEN "1" => j_010_mux_q <= in_j_010_0;
            WHEN OTHERS => j_010_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_j_010(GPOUT,28)
    out_j_010 <= j_010_mux_q;

    -- valid_or(LOGICAL,34)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,32)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,29)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,33)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,30)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- out_valid_out(GPOUT,31)
    out_valid_out <= valid_or_q;

END normal;
