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

-- VHDL created from conv1x1_B2_merge
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

entity conv1x1_B2_merge is
    port (
        in_c0_exe114054_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe114054_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe17_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe17_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe255_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe255_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe362_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe362_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe464_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe464_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe565_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe565_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe117_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe117_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe126_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe126_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe134_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe134_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe242_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c3_exe242_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01053_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01053_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp_17_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_17_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe114054 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe17 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exe255 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe362 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe464 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe565 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe117 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c2_exe126 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe134 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe242 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01053 : out std_logic_vector(31 downto 0);  -- ufix32
        out_k_18 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_17 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B2_merge;

architecture normal of conv1x1_B2_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe114054_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe114054_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe17_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe17_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exe255_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe255_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe362_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe362_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe464_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe464_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe565_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe565_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe117_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe117_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c2_exe126_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_exe126_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe134_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c3_exe134_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe242_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c3_exe242_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal j_01053_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal j_01053_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal k_18_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal k_18_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- c0_exe114054_mux(MUX,2)
    c0_exe114054_mux_s <= in_valid_in_0;
    c0_exe114054_mux_combproc: PROCESS (c0_exe114054_mux_s, in_c0_exe114054_1, in_c0_exe114054_0)
    BEGIN
        CASE (c0_exe114054_mux_s) IS
            WHEN "0" => c0_exe114054_mux_q <= in_c0_exe114054_1;
            WHEN "1" => c0_exe114054_mux_q <= in_c0_exe114054_0;
            WHEN OTHERS => c0_exe114054_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe114054(GPOUT,43)
    out_c0_exe114054 <= c0_exe114054_mux_q;

    -- c0_exe17_mux(MUX,3)
    c0_exe17_mux_s <= in_valid_in_0;
    c0_exe17_mux_combproc: PROCESS (c0_exe17_mux_s, in_c0_exe17_1, in_c0_exe17_0)
    BEGIN
        CASE (c0_exe17_mux_s) IS
            WHEN "0" => c0_exe17_mux_q <= in_c0_exe17_1;
            WHEN "1" => c0_exe17_mux_q <= in_c0_exe17_0;
            WHEN OTHERS => c0_exe17_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe17(GPOUT,44)
    out_c0_exe17 <= c0_exe17_mux_q;

    -- c0_exe255_mux(MUX,4)
    c0_exe255_mux_s <= in_valid_in_0;
    c0_exe255_mux_combproc: PROCESS (c0_exe255_mux_s, in_c0_exe255_1, in_c0_exe255_0)
    BEGIN
        CASE (c0_exe255_mux_s) IS
            WHEN "0" => c0_exe255_mux_q <= in_c0_exe255_1;
            WHEN "1" => c0_exe255_mux_q <= in_c0_exe255_0;
            WHEN OTHERS => c0_exe255_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe255(GPOUT,45)
    out_c0_exe255 <= c0_exe255_mux_q;

    -- c0_exe362_mux(MUX,5)
    c0_exe362_mux_s <= in_valid_in_0;
    c0_exe362_mux_combproc: PROCESS (c0_exe362_mux_s, in_c0_exe362_1, in_c0_exe362_0)
    BEGIN
        CASE (c0_exe362_mux_s) IS
            WHEN "0" => c0_exe362_mux_q <= in_c0_exe362_1;
            WHEN "1" => c0_exe362_mux_q <= in_c0_exe362_0;
            WHEN OTHERS => c0_exe362_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe362(GPOUT,46)
    out_c0_exe362 <= c0_exe362_mux_q;

    -- c0_exe464_mux(MUX,6)
    c0_exe464_mux_s <= in_valid_in_0;
    c0_exe464_mux_combproc: PROCESS (c0_exe464_mux_s, in_c0_exe464_1, in_c0_exe464_0)
    BEGIN
        CASE (c0_exe464_mux_s) IS
            WHEN "0" => c0_exe464_mux_q <= in_c0_exe464_1;
            WHEN "1" => c0_exe464_mux_q <= in_c0_exe464_0;
            WHEN OTHERS => c0_exe464_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe464(GPOUT,47)
    out_c0_exe464 <= c0_exe464_mux_q;

    -- c0_exe565_mux(MUX,7)
    c0_exe565_mux_s <= in_valid_in_0;
    c0_exe565_mux_combproc: PROCESS (c0_exe565_mux_s, in_c0_exe565_1, in_c0_exe565_0)
    BEGIN
        CASE (c0_exe565_mux_s) IS
            WHEN "0" => c0_exe565_mux_q <= in_c0_exe565_1;
            WHEN "1" => c0_exe565_mux_q <= in_c0_exe565_0;
            WHEN OTHERS => c0_exe565_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe565(GPOUT,48)
    out_c0_exe565 <= c0_exe565_mux_q;

    -- c1_exe117_mux(MUX,8)
    c1_exe117_mux_s <= in_valid_in_0;
    c1_exe117_mux_combproc: PROCESS (c1_exe117_mux_s, in_c1_exe117_1, in_c1_exe117_0)
    BEGIN
        CASE (c1_exe117_mux_s) IS
            WHEN "0" => c1_exe117_mux_q <= in_c1_exe117_1;
            WHEN "1" => c1_exe117_mux_q <= in_c1_exe117_0;
            WHEN OTHERS => c1_exe117_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c1_exe117(GPOUT,49)
    out_c1_exe117 <= c1_exe117_mux_q;

    -- c2_exe126_mux(MUX,9)
    c2_exe126_mux_s <= in_valid_in_0;
    c2_exe126_mux_combproc: PROCESS (c2_exe126_mux_s, in_c2_exe126_1, in_c2_exe126_0)
    BEGIN
        CASE (c2_exe126_mux_s) IS
            WHEN "0" => c2_exe126_mux_q <= in_c2_exe126_1;
            WHEN "1" => c2_exe126_mux_q <= in_c2_exe126_0;
            WHEN OTHERS => c2_exe126_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c2_exe126(GPOUT,50)
    out_c2_exe126 <= c2_exe126_mux_q;

    -- c3_exe134_mux(MUX,10)
    c3_exe134_mux_s <= in_valid_in_0;
    c3_exe134_mux_combproc: PROCESS (c3_exe134_mux_s, in_c3_exe134_1, in_c3_exe134_0)
    BEGIN
        CASE (c3_exe134_mux_s) IS
            WHEN "0" => c3_exe134_mux_q <= in_c3_exe134_1;
            WHEN "1" => c3_exe134_mux_q <= in_c3_exe134_0;
            WHEN OTHERS => c3_exe134_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c3_exe134(GPOUT,51)
    out_c3_exe134 <= c3_exe134_mux_q;

    -- c3_exe242_mux(MUX,11)
    c3_exe242_mux_s <= in_valid_in_0;
    c3_exe242_mux_combproc: PROCESS (c3_exe242_mux_s, in_c3_exe242_1, in_c3_exe242_0)
    BEGIN
        CASE (c3_exe242_mux_s) IS
            WHEN "0" => c3_exe242_mux_q <= in_c3_exe242_1;
            WHEN "1" => c3_exe242_mux_q <= in_c3_exe242_0;
            WHEN OTHERS => c3_exe242_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c3_exe242(GPOUT,52)
    out_c3_exe242 <= c3_exe242_mux_q;

    -- j_01053_mux(MUX,41)
    j_01053_mux_s <= in_valid_in_0;
    j_01053_mux_combproc: PROCESS (j_01053_mux_s, in_j_01053_1, in_j_01053_0)
    BEGIN
        CASE (j_01053_mux_s) IS
            WHEN "0" => j_01053_mux_q <= in_j_01053_1;
            WHEN "1" => j_01053_mux_q <= in_j_01053_0;
            WHEN OTHERS => j_01053_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_j_01053(GPOUT,53)
    out_j_01053 <= j_01053_mux_q;

    -- k_18_mux(MUX,42)
    k_18_mux_s <= in_valid_in_0;
    k_18_mux_combproc: PROCESS (k_18_mux_s, in_k_18_1, in_k_18_0)
    BEGIN
        CASE (k_18_mux_s) IS
            WHEN "0" => k_18_mux_q <= in_k_18_1;
            WHEN "1" => k_18_mux_q <= in_k_18_0;
            WHEN OTHERS => k_18_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_k_18(GPOUT,54)
    out_k_18 <= k_18_mux_q;

    -- valid_or(LOGICAL,62)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,59)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,55)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,60)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,56)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- tmp_17_mux(MUX,61)
    tmp_17_mux_s <= in_valid_in_0;
    tmp_17_mux_combproc: PROCESS (tmp_17_mux_s, in_tmp_17_1, in_tmp_17_0)
    BEGIN
        CASE (tmp_17_mux_s) IS
            WHEN "0" => tmp_17_mux_q <= in_tmp_17_1;
            WHEN "1" => tmp_17_mux_q <= in_tmp_17_0;
            WHEN OTHERS => tmp_17_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_tmp_17(GPOUT,57)
    out_tmp_17 <= tmp_17_mux_q;

    -- out_valid_out(GPOUT,58)
    out_valid_out <= valid_or_q;

END normal;
