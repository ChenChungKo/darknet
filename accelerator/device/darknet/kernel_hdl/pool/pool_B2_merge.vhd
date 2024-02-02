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

-- VHDL created from pool_B2_merge
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

entity pool_B2_merge is
    port (
        in_c0_exe11330_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe11330_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe11_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe11_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe25_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe25_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe37_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe37_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe410_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe410_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe115_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe115_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe11931_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe11931_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe118_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe118_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe12532_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c2_exe12532_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp619_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_cmp619_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_col_1728_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_col_1728_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_25_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_25_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_0926_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_row_0926_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp_223_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_223_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_34_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_tmp_34_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe11 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe11330 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe25 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe37 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe410 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe115 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe11931 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe118 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c2_exe12532 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp619 : out std_logic_vector(0 downto 0);  -- ufix1
        out_col_1728 : out std_logic_vector(31 downto 0);  -- ufix32
        out_i_25 : out std_logic_vector(31 downto 0);  -- ufix32
        out_row_0926 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp_223 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_tmp_34 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end pool_B2_merge;

architecture normal of pool_B2_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe11330_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe11330_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe11_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe11_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe25_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe25_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe37_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe37_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe410_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe410_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe115_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe115_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c1_exe11931_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe11931_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c2_exe118_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_exe118_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c2_exe12532_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_exe12532_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cmp619_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp619_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal col_1728_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal col_1728_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_25_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_25_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal row_0926_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal row_0926_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_223_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_223_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_34_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_34_mux_q : STD_LOGIC_VECTOR (31 downto 0);
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

    -- out_c0_exe11(GPOUT,47)
    out_c0_exe11 <= c0_exe11_mux_q;

    -- c0_exe11330_mux(MUX,2)
    c0_exe11330_mux_s <= in_valid_in_0;
    c0_exe11330_mux_combproc: PROCESS (c0_exe11330_mux_s, in_c0_exe11330_1, in_c0_exe11330_0)
    BEGIN
        CASE (c0_exe11330_mux_s) IS
            WHEN "0" => c0_exe11330_mux_q <= in_c0_exe11330_1;
            WHEN "1" => c0_exe11330_mux_q <= in_c0_exe11330_0;
            WHEN OTHERS => c0_exe11330_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe11330(GPOUT,48)
    out_c0_exe11330 <= c0_exe11330_mux_q;

    -- c0_exe25_mux(MUX,4)
    c0_exe25_mux_s <= in_valid_in_0;
    c0_exe25_mux_combproc: PROCESS (c0_exe25_mux_s, in_c0_exe25_1, in_c0_exe25_0)
    BEGIN
        CASE (c0_exe25_mux_s) IS
            WHEN "0" => c0_exe25_mux_q <= in_c0_exe25_1;
            WHEN "1" => c0_exe25_mux_q <= in_c0_exe25_0;
            WHEN OTHERS => c0_exe25_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe25(GPOUT,49)
    out_c0_exe25 <= c0_exe25_mux_q;

    -- c0_exe37_mux(MUX,5)
    c0_exe37_mux_s <= in_valid_in_0;
    c0_exe37_mux_combproc: PROCESS (c0_exe37_mux_s, in_c0_exe37_1, in_c0_exe37_0)
    BEGIN
        CASE (c0_exe37_mux_s) IS
            WHEN "0" => c0_exe37_mux_q <= in_c0_exe37_1;
            WHEN "1" => c0_exe37_mux_q <= in_c0_exe37_0;
            WHEN OTHERS => c0_exe37_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe37(GPOUT,50)
    out_c0_exe37 <= c0_exe37_mux_q;

    -- c0_exe410_mux(MUX,6)
    c0_exe410_mux_s <= in_valid_in_0;
    c0_exe410_mux_combproc: PROCESS (c0_exe410_mux_s, in_c0_exe410_1, in_c0_exe410_0)
    BEGIN
        CASE (c0_exe410_mux_s) IS
            WHEN "0" => c0_exe410_mux_q <= in_c0_exe410_1;
            WHEN "1" => c0_exe410_mux_q <= in_c0_exe410_0;
            WHEN OTHERS => c0_exe410_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe410(GPOUT,51)
    out_c0_exe410 <= c0_exe410_mux_q;

    -- c1_exe115_mux(MUX,7)
    c1_exe115_mux_s <= in_valid_in_0;
    c1_exe115_mux_combproc: PROCESS (c1_exe115_mux_s, in_c1_exe115_1, in_c1_exe115_0)
    BEGIN
        CASE (c1_exe115_mux_s) IS
            WHEN "0" => c1_exe115_mux_q <= in_c1_exe115_1;
            WHEN "1" => c1_exe115_mux_q <= in_c1_exe115_0;
            WHEN OTHERS => c1_exe115_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c1_exe115(GPOUT,52)
    out_c1_exe115 <= c1_exe115_mux_q;

    -- c1_exe11931_mux(MUX,8)
    c1_exe11931_mux_s <= in_valid_in_0;
    c1_exe11931_mux_combproc: PROCESS (c1_exe11931_mux_s, in_c1_exe11931_1, in_c1_exe11931_0)
    BEGIN
        CASE (c1_exe11931_mux_s) IS
            WHEN "0" => c1_exe11931_mux_q <= in_c1_exe11931_1;
            WHEN "1" => c1_exe11931_mux_q <= in_c1_exe11931_0;
            WHEN OTHERS => c1_exe11931_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c1_exe11931(GPOUT,53)
    out_c1_exe11931 <= c1_exe11931_mux_q;

    -- c2_exe118_mux(MUX,9)
    c2_exe118_mux_s <= in_valid_in_0;
    c2_exe118_mux_combproc: PROCESS (c2_exe118_mux_s, in_c2_exe118_1, in_c2_exe118_0)
    BEGIN
        CASE (c2_exe118_mux_s) IS
            WHEN "0" => c2_exe118_mux_q <= in_c2_exe118_1;
            WHEN "1" => c2_exe118_mux_q <= in_c2_exe118_0;
            WHEN OTHERS => c2_exe118_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c2_exe118(GPOUT,54)
    out_c2_exe118 <= c2_exe118_mux_q;

    -- c2_exe12532_mux(MUX,10)
    c2_exe12532_mux_s <= in_valid_in_0;
    c2_exe12532_mux_combproc: PROCESS (c2_exe12532_mux_s, in_c2_exe12532_1, in_c2_exe12532_0)
    BEGIN
        CASE (c2_exe12532_mux_s) IS
            WHEN "0" => c2_exe12532_mux_q <= in_c2_exe12532_1;
            WHEN "1" => c2_exe12532_mux_q <= in_c2_exe12532_0;
            WHEN OTHERS => c2_exe12532_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c2_exe12532(GPOUT,55)
    out_c2_exe12532 <= c2_exe12532_mux_q;

    -- cmp619_mux(MUX,11)
    cmp619_mux_s <= in_valid_in_0;
    cmp619_mux_combproc: PROCESS (cmp619_mux_s, in_cmp619_1, in_cmp619_0)
    BEGIN
        CASE (cmp619_mux_s) IS
            WHEN "0" => cmp619_mux_q <= in_cmp619_1;
            WHEN "1" => cmp619_mux_q <= in_cmp619_0;
            WHEN OTHERS => cmp619_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_cmp619(GPOUT,56)
    out_cmp619 <= cmp619_mux_q;

    -- col_1728_mux(MUX,12)
    col_1728_mux_s <= in_valid_in_0;
    col_1728_mux_combproc: PROCESS (col_1728_mux_s, in_col_1728_1, in_col_1728_0)
    BEGIN
        CASE (col_1728_mux_s) IS
            WHEN "0" => col_1728_mux_q <= in_col_1728_1;
            WHEN "1" => col_1728_mux_q <= in_col_1728_0;
            WHEN OTHERS => col_1728_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_col_1728(GPOUT,57)
    out_col_1728 <= col_1728_mux_q;

    -- i_25_mux(MUX,13)
    i_25_mux_s <= in_valid_in_0;
    i_25_mux_combproc: PROCESS (i_25_mux_s, in_i_25_1, in_i_25_0)
    BEGIN
        CASE (i_25_mux_s) IS
            WHEN "0" => i_25_mux_q <= in_i_25_1;
            WHEN "1" => i_25_mux_q <= in_i_25_0;
            WHEN OTHERS => i_25_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_i_25(GPOUT,58)
    out_i_25 <= i_25_mux_q;

    -- row_0926_mux(MUX,65)
    row_0926_mux_s <= in_valid_in_0;
    row_0926_mux_combproc: PROCESS (row_0926_mux_s, in_row_0926_1, in_row_0926_0)
    BEGIN
        CASE (row_0926_mux_s) IS
            WHEN "0" => row_0926_mux_q <= in_row_0926_1;
            WHEN "1" => row_0926_mux_q <= in_row_0926_0;
            WHEN OTHERS => row_0926_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_row_0926(GPOUT,59)
    out_row_0926 <= row_0926_mux_q;

    -- valid_or(LOGICAL,70)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,66)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,60)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,67)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,61)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- tmp_223_mux(MUX,68)
    tmp_223_mux_s <= in_valid_in_0;
    tmp_223_mux_combproc: PROCESS (tmp_223_mux_s, in_tmp_223_1, in_tmp_223_0)
    BEGIN
        CASE (tmp_223_mux_s) IS
            WHEN "0" => tmp_223_mux_q <= in_tmp_223_1;
            WHEN "1" => tmp_223_mux_q <= in_tmp_223_0;
            WHEN OTHERS => tmp_223_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_tmp_223(GPOUT,62)
    out_tmp_223 <= tmp_223_mux_q;

    -- tmp_34_mux(MUX,69)
    tmp_34_mux_s <= in_valid_in_0;
    tmp_34_mux_combproc: PROCESS (tmp_34_mux_s, in_tmp_34_1, in_tmp_34_0)
    BEGIN
        CASE (tmp_34_mux_s) IS
            WHEN "0" => tmp_34_mux_q <= in_tmp_34_1;
            WHEN "1" => tmp_34_mux_q <= in_tmp_34_0;
            WHEN OTHERS => tmp_34_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_tmp_34(GPOUT,63)
    out_tmp_34 <= tmp_34_mux_q;

    -- out_valid_out(GPOUT,64)
    out_valid_out <= valid_or_q;

END normal;
