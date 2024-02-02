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

-- VHDL created from conv1x1_B4_merge
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

entity conv1x1_B4_merge is
    port (
        in_c0_exe116872_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe116872_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe15_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe15_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe317074_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe317074_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe360_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe360_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417180_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417180_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517286_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517286_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe687_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe687_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe788_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe788_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe889_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe889_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe115_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe115_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe124_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe124_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe132_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe132_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe240_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c3_exe240_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01051_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01051_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_1_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp_17_1_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_17_1_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
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
        out_c2_exe124 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe132 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe240 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01051 : out std_logic_vector(31 downto 0);  -- ufix32
        out_k_18_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_17_1 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B4_merge;

architecture normal of conv1x1_B4_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe116872_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe116872_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe15_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe15_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exe317074_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe317074_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe360_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe360_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe417180_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe417180_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe517286_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe517286_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe687_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe687_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe788_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe788_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe889_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe889_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe115_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe115_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c2_exe124_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_exe124_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe132_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c3_exe132_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe240_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c3_exe240_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal j_01051_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal j_01051_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal k_18_1_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal k_18_1_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_1_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_1_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- c0_exe116872_mux(MUX,2)
    c0_exe116872_mux_s <= in_valid_in_0;
    c0_exe116872_mux_combproc: PROCESS (c0_exe116872_mux_s, in_c0_exe116872_1, in_c0_exe116872_0)
    BEGIN
        CASE (c0_exe116872_mux_s) IS
            WHEN "0" => c0_exe116872_mux_q <= in_c0_exe116872_1;
            WHEN "1" => c0_exe116872_mux_q <= in_c0_exe116872_0;
            WHEN OTHERS => c0_exe116872_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe116872(GPOUT,52)
    out_c0_exe116872 <= c0_exe116872_mux_q;

    -- c0_exe15_mux(MUX,3)
    c0_exe15_mux_s <= in_valid_in_0;
    c0_exe15_mux_combproc: PROCESS (c0_exe15_mux_s, in_c0_exe15_1, in_c0_exe15_0)
    BEGIN
        CASE (c0_exe15_mux_s) IS
            WHEN "0" => c0_exe15_mux_q <= in_c0_exe15_1;
            WHEN "1" => c0_exe15_mux_q <= in_c0_exe15_0;
            WHEN OTHERS => c0_exe15_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe15(GPOUT,53)
    out_c0_exe15 <= c0_exe15_mux_q;

    -- c0_exe317074_mux(MUX,4)
    c0_exe317074_mux_s <= in_valid_in_0;
    c0_exe317074_mux_combproc: PROCESS (c0_exe317074_mux_s, in_c0_exe317074_1, in_c0_exe317074_0)
    BEGIN
        CASE (c0_exe317074_mux_s) IS
            WHEN "0" => c0_exe317074_mux_q <= in_c0_exe317074_1;
            WHEN "1" => c0_exe317074_mux_q <= in_c0_exe317074_0;
            WHEN OTHERS => c0_exe317074_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe317074(GPOUT,54)
    out_c0_exe317074 <= c0_exe317074_mux_q;

    -- c0_exe360_mux(MUX,5)
    c0_exe360_mux_s <= in_valid_in_0;
    c0_exe360_mux_combproc: PROCESS (c0_exe360_mux_s, in_c0_exe360_1, in_c0_exe360_0)
    BEGIN
        CASE (c0_exe360_mux_s) IS
            WHEN "0" => c0_exe360_mux_q <= in_c0_exe360_1;
            WHEN "1" => c0_exe360_mux_q <= in_c0_exe360_0;
            WHEN OTHERS => c0_exe360_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe360(GPOUT,55)
    out_c0_exe360 <= c0_exe360_mux_q;

    -- c0_exe417180_mux(MUX,6)
    c0_exe417180_mux_s <= in_valid_in_0;
    c0_exe417180_mux_combproc: PROCESS (c0_exe417180_mux_s, in_c0_exe417180_1, in_c0_exe417180_0)
    BEGIN
        CASE (c0_exe417180_mux_s) IS
            WHEN "0" => c0_exe417180_mux_q <= in_c0_exe417180_1;
            WHEN "1" => c0_exe417180_mux_q <= in_c0_exe417180_0;
            WHEN OTHERS => c0_exe417180_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe417180(GPOUT,56)
    out_c0_exe417180 <= c0_exe417180_mux_q;

    -- c0_exe517286_mux(MUX,7)
    c0_exe517286_mux_s <= in_valid_in_0;
    c0_exe517286_mux_combproc: PROCESS (c0_exe517286_mux_s, in_c0_exe517286_1, in_c0_exe517286_0)
    BEGIN
        CASE (c0_exe517286_mux_s) IS
            WHEN "0" => c0_exe517286_mux_q <= in_c0_exe517286_1;
            WHEN "1" => c0_exe517286_mux_q <= in_c0_exe517286_0;
            WHEN OTHERS => c0_exe517286_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe517286(GPOUT,57)
    out_c0_exe517286 <= c0_exe517286_mux_q;

    -- c0_exe687_mux(MUX,8)
    c0_exe687_mux_s <= in_valid_in_0;
    c0_exe687_mux_combproc: PROCESS (c0_exe687_mux_s, in_c0_exe687_1, in_c0_exe687_0)
    BEGIN
        CASE (c0_exe687_mux_s) IS
            WHEN "0" => c0_exe687_mux_q <= in_c0_exe687_1;
            WHEN "1" => c0_exe687_mux_q <= in_c0_exe687_0;
            WHEN OTHERS => c0_exe687_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe687(GPOUT,58)
    out_c0_exe687 <= c0_exe687_mux_q;

    -- c0_exe788_mux(MUX,9)
    c0_exe788_mux_s <= in_valid_in_0;
    c0_exe788_mux_combproc: PROCESS (c0_exe788_mux_s, in_c0_exe788_1, in_c0_exe788_0)
    BEGIN
        CASE (c0_exe788_mux_s) IS
            WHEN "0" => c0_exe788_mux_q <= in_c0_exe788_1;
            WHEN "1" => c0_exe788_mux_q <= in_c0_exe788_0;
            WHEN OTHERS => c0_exe788_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe788(GPOUT,59)
    out_c0_exe788 <= c0_exe788_mux_q;

    -- c0_exe889_mux(MUX,10)
    c0_exe889_mux_s <= in_valid_in_0;
    c0_exe889_mux_combproc: PROCESS (c0_exe889_mux_s, in_c0_exe889_1, in_c0_exe889_0)
    BEGIN
        CASE (c0_exe889_mux_s) IS
            WHEN "0" => c0_exe889_mux_q <= in_c0_exe889_1;
            WHEN "1" => c0_exe889_mux_q <= in_c0_exe889_0;
            WHEN OTHERS => c0_exe889_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe889(GPOUT,60)
    out_c0_exe889 <= c0_exe889_mux_q;

    -- c1_exe115_mux(MUX,11)
    c1_exe115_mux_s <= in_valid_in_0;
    c1_exe115_mux_combproc: PROCESS (c1_exe115_mux_s, in_c1_exe115_1, in_c1_exe115_0)
    BEGIN
        CASE (c1_exe115_mux_s) IS
            WHEN "0" => c1_exe115_mux_q <= in_c1_exe115_1;
            WHEN "1" => c1_exe115_mux_q <= in_c1_exe115_0;
            WHEN OTHERS => c1_exe115_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c1_exe115(GPOUT,61)
    out_c1_exe115 <= c1_exe115_mux_q;

    -- c2_exe124_mux(MUX,12)
    c2_exe124_mux_s <= in_valid_in_0;
    c2_exe124_mux_combproc: PROCESS (c2_exe124_mux_s, in_c2_exe124_1, in_c2_exe124_0)
    BEGIN
        CASE (c2_exe124_mux_s) IS
            WHEN "0" => c2_exe124_mux_q <= in_c2_exe124_1;
            WHEN "1" => c2_exe124_mux_q <= in_c2_exe124_0;
            WHEN OTHERS => c2_exe124_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c2_exe124(GPOUT,62)
    out_c2_exe124 <= c2_exe124_mux_q;

    -- c3_exe132_mux(MUX,13)
    c3_exe132_mux_s <= in_valid_in_0;
    c3_exe132_mux_combproc: PROCESS (c3_exe132_mux_s, in_c3_exe132_1, in_c3_exe132_0)
    BEGIN
        CASE (c3_exe132_mux_s) IS
            WHEN "0" => c3_exe132_mux_q <= in_c3_exe132_1;
            WHEN "1" => c3_exe132_mux_q <= in_c3_exe132_0;
            WHEN OTHERS => c3_exe132_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c3_exe132(GPOUT,63)
    out_c3_exe132 <= c3_exe132_mux_q;

    -- c3_exe240_mux(MUX,14)
    c3_exe240_mux_s <= in_valid_in_0;
    c3_exe240_mux_combproc: PROCESS (c3_exe240_mux_s, in_c3_exe240_1, in_c3_exe240_0)
    BEGIN
        CASE (c3_exe240_mux_s) IS
            WHEN "0" => c3_exe240_mux_q <= in_c3_exe240_1;
            WHEN "1" => c3_exe240_mux_q <= in_c3_exe240_0;
            WHEN OTHERS => c3_exe240_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c3_exe240(GPOUT,64)
    out_c3_exe240 <= c3_exe240_mux_q;

    -- j_01051_mux(MUX,50)
    j_01051_mux_s <= in_valid_in_0;
    j_01051_mux_combproc: PROCESS (j_01051_mux_s, in_j_01051_1, in_j_01051_0)
    BEGIN
        CASE (j_01051_mux_s) IS
            WHEN "0" => j_01051_mux_q <= in_j_01051_1;
            WHEN "1" => j_01051_mux_q <= in_j_01051_0;
            WHEN OTHERS => j_01051_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_j_01051(GPOUT,65)
    out_j_01051 <= j_01051_mux_q;

    -- k_18_1_mux(MUX,51)
    k_18_1_mux_s <= in_valid_in_0;
    k_18_1_mux_combproc: PROCESS (k_18_1_mux_s, in_k_18_1_1, in_k_18_1_0)
    BEGIN
        CASE (k_18_1_mux_s) IS
            WHEN "0" => k_18_1_mux_q <= in_k_18_1_1;
            WHEN "1" => k_18_1_mux_q <= in_k_18_1_0;
            WHEN OTHERS => k_18_1_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_k_18_1(GPOUT,66)
    out_k_18_1 <= k_18_1_mux_q;

    -- valid_or(LOGICAL,74)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,71)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,67)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,72)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,68)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- tmp_17_1_mux(MUX,73)
    tmp_17_1_mux_s <= in_valid_in_0;
    tmp_17_1_mux_combproc: PROCESS (tmp_17_1_mux_s, in_tmp_17_1_1, in_tmp_17_1_0)
    BEGIN
        CASE (tmp_17_1_mux_s) IS
            WHEN "0" => tmp_17_1_mux_q <= in_tmp_17_1_1;
            WHEN "1" => tmp_17_1_mux_q <= in_tmp_17_1_0;
            WHEN OTHERS => tmp_17_1_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_tmp_17_1(GPOUT,69)
    out_tmp_17_1 <= tmp_17_1_mux_q;

    -- out_valid_out(GPOUT,70)
    out_valid_out <= valid_or_q;

END normal;
