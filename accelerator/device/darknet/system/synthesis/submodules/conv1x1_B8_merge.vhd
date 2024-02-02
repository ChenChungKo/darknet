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

-- VHDL created from conv1x1_B8_merge
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

entity conv1x1_B8_merge is
    port (
        in_c0_exe116868_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe116868_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe11_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe11_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exe1254106_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe1254106_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe221294_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe221294_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2255108_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2255108_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321398_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe321398_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3256109_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe3256109_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe356_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe356_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417176_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe417176_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4257110_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4257110_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517282_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe517282_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5258111_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5258111_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe111_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c1_exe111_1 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c2_exe120_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe120_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe128_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe128_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c3_exe245_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c3_exe245_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_j_01047_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_j_01047_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_k_18_3_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp_17_3_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_17_3_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
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
        out_c2_exe120 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe128 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c3_exe245 : out std_logic_vector(0 downto 0);  -- ufix1
        out_j_01047 : out std_logic_vector(31 downto 0);  -- ufix32
        out_k_18_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_17_3 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv1x1_B8_merge;

architecture normal of conv1x1_B8_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe116868_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe116868_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe11_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe11_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exe1254106_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe1254106_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe221294_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe221294_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe2255108_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe2255108_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe321398_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe321398_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe3256109_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe3256109_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe356_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe356_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe417176_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe417176_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe4257110_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe4257110_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe517282_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe517282_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe5258111_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe5258111_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe111_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe111_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c2_exe120_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_exe120_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe128_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c3_exe128_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c3_exe245_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c3_exe245_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal j_01047_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal j_01047_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal k_18_3_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal k_18_3_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_3_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_3_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- c0_exe11_mux(MUX,3)
    c0_exe11_mux_s <= in_valid_in_0;
    c0_exe11_mux_combproc: PROCESS (c0_exe11_mux_s, in_c0_exe11_1, in_c0_exe11_0)
    BEGIN
        CASE (c0_exe11_mux_s) IS
            WHEN "0" => c0_exe11_mux_q <= in_c0_exe11_1;
            WHEN "1" => c0_exe11_mux_q <= in_c0_exe11_0;
            WHEN OTHERS => c0_exe11_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe11(GPOUT,61)
    out_c0_exe11 <= c0_exe11_mux_q;

    -- c0_exe116868_mux(MUX,2)
    c0_exe116868_mux_s <= in_valid_in_0;
    c0_exe116868_mux_combproc: PROCESS (c0_exe116868_mux_s, in_c0_exe116868_1, in_c0_exe116868_0)
    BEGIN
        CASE (c0_exe116868_mux_s) IS
            WHEN "0" => c0_exe116868_mux_q <= in_c0_exe116868_1;
            WHEN "1" => c0_exe116868_mux_q <= in_c0_exe116868_0;
            WHEN OTHERS => c0_exe116868_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe116868(GPOUT,62)
    out_c0_exe116868 <= c0_exe116868_mux_q;

    -- c0_exe1254106_mux(MUX,4)
    c0_exe1254106_mux_s <= in_valid_in_0;
    c0_exe1254106_mux_combproc: PROCESS (c0_exe1254106_mux_s, in_c0_exe1254106_1, in_c0_exe1254106_0)
    BEGIN
        CASE (c0_exe1254106_mux_s) IS
            WHEN "0" => c0_exe1254106_mux_q <= in_c0_exe1254106_1;
            WHEN "1" => c0_exe1254106_mux_q <= in_c0_exe1254106_0;
            WHEN OTHERS => c0_exe1254106_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe1254106(GPOUT,63)
    out_c0_exe1254106 <= c0_exe1254106_mux_q;

    -- c0_exe221294_mux(MUX,5)
    c0_exe221294_mux_s <= in_valid_in_0;
    c0_exe221294_mux_combproc: PROCESS (c0_exe221294_mux_s, in_c0_exe221294_1, in_c0_exe221294_0)
    BEGIN
        CASE (c0_exe221294_mux_s) IS
            WHEN "0" => c0_exe221294_mux_q <= in_c0_exe221294_1;
            WHEN "1" => c0_exe221294_mux_q <= in_c0_exe221294_0;
            WHEN OTHERS => c0_exe221294_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe221294(GPOUT,64)
    out_c0_exe221294 <= c0_exe221294_mux_q;

    -- c0_exe2255108_mux(MUX,6)
    c0_exe2255108_mux_s <= in_valid_in_0;
    c0_exe2255108_mux_combproc: PROCESS (c0_exe2255108_mux_s, in_c0_exe2255108_1, in_c0_exe2255108_0)
    BEGIN
        CASE (c0_exe2255108_mux_s) IS
            WHEN "0" => c0_exe2255108_mux_q <= in_c0_exe2255108_1;
            WHEN "1" => c0_exe2255108_mux_q <= in_c0_exe2255108_0;
            WHEN OTHERS => c0_exe2255108_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe2255108(GPOUT,65)
    out_c0_exe2255108 <= c0_exe2255108_mux_q;

    -- c0_exe321398_mux(MUX,7)
    c0_exe321398_mux_s <= in_valid_in_0;
    c0_exe321398_mux_combproc: PROCESS (c0_exe321398_mux_s, in_c0_exe321398_1, in_c0_exe321398_0)
    BEGIN
        CASE (c0_exe321398_mux_s) IS
            WHEN "0" => c0_exe321398_mux_q <= in_c0_exe321398_1;
            WHEN "1" => c0_exe321398_mux_q <= in_c0_exe321398_0;
            WHEN OTHERS => c0_exe321398_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe321398(GPOUT,66)
    out_c0_exe321398 <= c0_exe321398_mux_q;

    -- c0_exe3256109_mux(MUX,8)
    c0_exe3256109_mux_s <= in_valid_in_0;
    c0_exe3256109_mux_combproc: PROCESS (c0_exe3256109_mux_s, in_c0_exe3256109_1, in_c0_exe3256109_0)
    BEGIN
        CASE (c0_exe3256109_mux_s) IS
            WHEN "0" => c0_exe3256109_mux_q <= in_c0_exe3256109_1;
            WHEN "1" => c0_exe3256109_mux_q <= in_c0_exe3256109_0;
            WHEN OTHERS => c0_exe3256109_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe3256109(GPOUT,67)
    out_c0_exe3256109 <= c0_exe3256109_mux_q;

    -- c0_exe356_mux(MUX,9)
    c0_exe356_mux_s <= in_valid_in_0;
    c0_exe356_mux_combproc: PROCESS (c0_exe356_mux_s, in_c0_exe356_1, in_c0_exe356_0)
    BEGIN
        CASE (c0_exe356_mux_s) IS
            WHEN "0" => c0_exe356_mux_q <= in_c0_exe356_1;
            WHEN "1" => c0_exe356_mux_q <= in_c0_exe356_0;
            WHEN OTHERS => c0_exe356_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe356(GPOUT,68)
    out_c0_exe356 <= c0_exe356_mux_q;

    -- c0_exe417176_mux(MUX,10)
    c0_exe417176_mux_s <= in_valid_in_0;
    c0_exe417176_mux_combproc: PROCESS (c0_exe417176_mux_s, in_c0_exe417176_1, in_c0_exe417176_0)
    BEGIN
        CASE (c0_exe417176_mux_s) IS
            WHEN "0" => c0_exe417176_mux_q <= in_c0_exe417176_1;
            WHEN "1" => c0_exe417176_mux_q <= in_c0_exe417176_0;
            WHEN OTHERS => c0_exe417176_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe417176(GPOUT,69)
    out_c0_exe417176 <= c0_exe417176_mux_q;

    -- c0_exe4257110_mux(MUX,11)
    c0_exe4257110_mux_s <= in_valid_in_0;
    c0_exe4257110_mux_combproc: PROCESS (c0_exe4257110_mux_s, in_c0_exe4257110_1, in_c0_exe4257110_0)
    BEGIN
        CASE (c0_exe4257110_mux_s) IS
            WHEN "0" => c0_exe4257110_mux_q <= in_c0_exe4257110_1;
            WHEN "1" => c0_exe4257110_mux_q <= in_c0_exe4257110_0;
            WHEN OTHERS => c0_exe4257110_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe4257110(GPOUT,70)
    out_c0_exe4257110 <= c0_exe4257110_mux_q;

    -- c0_exe517282_mux(MUX,12)
    c0_exe517282_mux_s <= in_valid_in_0;
    c0_exe517282_mux_combproc: PROCESS (c0_exe517282_mux_s, in_c0_exe517282_1, in_c0_exe517282_0)
    BEGIN
        CASE (c0_exe517282_mux_s) IS
            WHEN "0" => c0_exe517282_mux_q <= in_c0_exe517282_1;
            WHEN "1" => c0_exe517282_mux_q <= in_c0_exe517282_0;
            WHEN OTHERS => c0_exe517282_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe517282(GPOUT,71)
    out_c0_exe517282 <= c0_exe517282_mux_q;

    -- c0_exe5258111_mux(MUX,13)
    c0_exe5258111_mux_s <= in_valid_in_0;
    c0_exe5258111_mux_combproc: PROCESS (c0_exe5258111_mux_s, in_c0_exe5258111_1, in_c0_exe5258111_0)
    BEGIN
        CASE (c0_exe5258111_mux_s) IS
            WHEN "0" => c0_exe5258111_mux_q <= in_c0_exe5258111_1;
            WHEN "1" => c0_exe5258111_mux_q <= in_c0_exe5258111_0;
            WHEN OTHERS => c0_exe5258111_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe5258111(GPOUT,72)
    out_c0_exe5258111 <= c0_exe5258111_mux_q;

    -- c1_exe111_mux(MUX,14)
    c1_exe111_mux_s <= in_valid_in_0;
    c1_exe111_mux_combproc: PROCESS (c1_exe111_mux_s, in_c1_exe111_1, in_c1_exe111_0)
    BEGIN
        CASE (c1_exe111_mux_s) IS
            WHEN "0" => c1_exe111_mux_q <= in_c1_exe111_1;
            WHEN "1" => c1_exe111_mux_q <= in_c1_exe111_0;
            WHEN OTHERS => c1_exe111_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c1_exe111(GPOUT,73)
    out_c1_exe111 <= c1_exe111_mux_q;

    -- c2_exe120_mux(MUX,15)
    c2_exe120_mux_s <= in_valid_in_0;
    c2_exe120_mux_combproc: PROCESS (c2_exe120_mux_s, in_c2_exe120_1, in_c2_exe120_0)
    BEGIN
        CASE (c2_exe120_mux_s) IS
            WHEN "0" => c2_exe120_mux_q <= in_c2_exe120_1;
            WHEN "1" => c2_exe120_mux_q <= in_c2_exe120_0;
            WHEN OTHERS => c2_exe120_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c2_exe120(GPOUT,74)
    out_c2_exe120 <= c2_exe120_mux_q;

    -- c3_exe128_mux(MUX,16)
    c3_exe128_mux_s <= in_valid_in_0;
    c3_exe128_mux_combproc: PROCESS (c3_exe128_mux_s, in_c3_exe128_1, in_c3_exe128_0)
    BEGIN
        CASE (c3_exe128_mux_s) IS
            WHEN "0" => c3_exe128_mux_q <= in_c3_exe128_1;
            WHEN "1" => c3_exe128_mux_q <= in_c3_exe128_0;
            WHEN OTHERS => c3_exe128_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c3_exe128(GPOUT,75)
    out_c3_exe128 <= c3_exe128_mux_q;

    -- c3_exe245_mux(MUX,17)
    c3_exe245_mux_s <= in_valid_in_0;
    c3_exe245_mux_combproc: PROCESS (c3_exe245_mux_s, in_c3_exe245_1, in_c3_exe245_0)
    BEGIN
        CASE (c3_exe245_mux_s) IS
            WHEN "0" => c3_exe245_mux_q <= in_c3_exe245_1;
            WHEN "1" => c3_exe245_mux_q <= in_c3_exe245_0;
            WHEN OTHERS => c3_exe245_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c3_exe245(GPOUT,76)
    out_c3_exe245 <= c3_exe245_mux_q;

    -- j_01047_mux(MUX,59)
    j_01047_mux_s <= in_valid_in_0;
    j_01047_mux_combproc: PROCESS (j_01047_mux_s, in_j_01047_1, in_j_01047_0)
    BEGIN
        CASE (j_01047_mux_s) IS
            WHEN "0" => j_01047_mux_q <= in_j_01047_1;
            WHEN "1" => j_01047_mux_q <= in_j_01047_0;
            WHEN OTHERS => j_01047_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_j_01047(GPOUT,77)
    out_j_01047 <= j_01047_mux_q;

    -- k_18_3_mux(MUX,60)
    k_18_3_mux_s <= in_valid_in_0;
    k_18_3_mux_combproc: PROCESS (k_18_3_mux_s, in_k_18_3_1, in_k_18_3_0)
    BEGIN
        CASE (k_18_3_mux_s) IS
            WHEN "0" => k_18_3_mux_q <= in_k_18_3_1;
            WHEN "1" => k_18_3_mux_q <= in_k_18_3_0;
            WHEN OTHERS => k_18_3_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_k_18_3(GPOUT,78)
    out_k_18_3 <= k_18_3_mux_q;

    -- valid_or(LOGICAL,86)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,83)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,79)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,84)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,80)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- tmp_17_3_mux(MUX,85)
    tmp_17_3_mux_s <= in_valid_in_0;
    tmp_17_3_mux_combproc: PROCESS (tmp_17_3_mux_s, in_tmp_17_3_1, in_tmp_17_3_0)
    BEGIN
        CASE (tmp_17_3_mux_s) IS
            WHEN "0" => tmp_17_3_mux_q <= in_tmp_17_3_1;
            WHEN "1" => tmp_17_3_mux_q <= in_tmp_17_3_0;
            WHEN OTHERS => tmp_17_3_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_tmp_17_3(GPOUT,81)
    out_tmp_17_3 <= tmp_17_3_mux_q;

    -- out_valid_out(GPOUT,82)
    out_valid_out <= valid_or_q;

END normal;
