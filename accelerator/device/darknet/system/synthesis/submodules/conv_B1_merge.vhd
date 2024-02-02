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

-- VHDL created from conv_B1_merge
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

entity conv_B1_merge is
    port (
        in_a_024_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_a_024_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id18_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id18_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_add138_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_add138_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_b_025_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_b_025_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe21_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe21_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe33_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe33_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe14_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe14_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe25_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_exe25_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp429_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_cmp429_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_conv_out_023_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_conv_out_023_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_encoder_conv_B1_merge_priority_encoder_workgroup_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_012_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_012_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_114_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_114_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_015_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_015_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_116_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_local_id_116_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul387_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul387_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul6_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul6_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_a_024 : out std_logic_vector(31 downto 0);  -- ufix32
        out_acl_hw_wg_id18 : out std_logic_vector(31 downto 0);  -- ufix32
        out_add138 : out std_logic_vector(31 downto 0);  -- ufix32
        out_b_025 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe21 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe33 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe14 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exe25 : out std_logic_vector(31 downto 0);  -- ufix32
        out_cmp429 : out std_logic_vector(0 downto 0);  -- ufix1
        out_conv_out_023 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_global_id_012 : out std_logic_vector(31 downto 0);  -- ufix32
        out_global_id_114 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_015 : out std_logic_vector(31 downto 0);  -- ufix32
        out_local_id_116 : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul387 : out std_logic_vector(31 downto 0);  -- ufix32
        out_mul6 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_B1_merge;

architecture normal of conv_B1_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component priority_encoder is
        port (
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_workgroup_size : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_select : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal a_024_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal a_024_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal acl_hw_wg_id18_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_hw_wg_id18_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal add138_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal add138_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal b_025_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal b_025_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe21_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe21_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe33_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe33_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe14_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe14_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c1_exe25_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe25_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cmp429_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp429_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_out_023_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_out_023_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal global_id_012_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal global_id_012_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal global_id_114_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal global_id_114_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal local_id_015_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal local_id_015_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal local_id_116_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal local_id_116_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal mul387_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal mul387_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal mul6_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal mul6_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal not_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal priority_encoder_out_o_select : STD_LOGIC_VECTOR (0 downto 0);
    signal priority_encoder_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_0_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- priority_encoder(BLACKBOX,74)
    thepriority_encoder : priority_encoder
    PORT MAP (
        in_i_stall => in_stall_in,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        in_workgroup_size => in_encoder_conv_B1_merge_priority_encoder_workgroup_size,
        out_o_select => priority_encoder_out_o_select,
        out_o_valid => priority_encoder_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- a_024_mux(MUX,2)
    a_024_mux_s <= priority_encoder_out_o_select;
    a_024_mux_combproc: PROCESS (a_024_mux_s, in_a_024_0, in_a_024_1)
    BEGIN
        CASE (a_024_mux_s) IS
            WHEN "0" => a_024_mux_q <= in_a_024_0;
            WHEN "1" => a_024_mux_q <= in_a_024_1;
            WHEN OTHERS => a_024_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_a_024(GPOUT,55)
    out_a_024 <= a_024_mux_q;

    -- acl_hw_wg_id18_mux(MUX,3)
    acl_hw_wg_id18_mux_s <= priority_encoder_out_o_select;
    acl_hw_wg_id18_mux_combproc: PROCESS (acl_hw_wg_id18_mux_s, in_acl_hw_wg_id18_0, in_acl_hw_wg_id18_1)
    BEGIN
        CASE (acl_hw_wg_id18_mux_s) IS
            WHEN "0" => acl_hw_wg_id18_mux_q <= in_acl_hw_wg_id18_0;
            WHEN "1" => acl_hw_wg_id18_mux_q <= in_acl_hw_wg_id18_1;
            WHEN OTHERS => acl_hw_wg_id18_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_acl_hw_wg_id18(GPOUT,56)
    out_acl_hw_wg_id18 <= acl_hw_wg_id18_mux_q;

    -- add138_mux(MUX,4)
    add138_mux_s <= priority_encoder_out_o_select;
    add138_mux_combproc: PROCESS (add138_mux_s, in_add138_0, in_add138_1)
    BEGIN
        CASE (add138_mux_s) IS
            WHEN "0" => add138_mux_q <= in_add138_0;
            WHEN "1" => add138_mux_q <= in_add138_1;
            WHEN OTHERS => add138_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_add138(GPOUT,57)
    out_add138 <= add138_mux_q;

    -- b_025_mux(MUX,5)
    b_025_mux_s <= priority_encoder_out_o_select;
    b_025_mux_combproc: PROCESS (b_025_mux_s, in_b_025_0, in_b_025_1)
    BEGIN
        CASE (b_025_mux_s) IS
            WHEN "0" => b_025_mux_q <= in_b_025_0;
            WHEN "1" => b_025_mux_q <= in_b_025_1;
            WHEN OTHERS => b_025_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_b_025(GPOUT,58)
    out_b_025 <= b_025_mux_q;

    -- c0_exe21_mux(MUX,6)
    c0_exe21_mux_s <= priority_encoder_out_o_select;
    c0_exe21_mux_combproc: PROCESS (c0_exe21_mux_s, in_c0_exe21_0, in_c0_exe21_1)
    BEGIN
        CASE (c0_exe21_mux_s) IS
            WHEN "0" => c0_exe21_mux_q <= in_c0_exe21_0;
            WHEN "1" => c0_exe21_mux_q <= in_c0_exe21_1;
            WHEN OTHERS => c0_exe21_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe21(GPOUT,59)
    out_c0_exe21 <= c0_exe21_mux_q;

    -- c0_exe33_mux(MUX,7)
    c0_exe33_mux_s <= priority_encoder_out_o_select;
    c0_exe33_mux_combproc: PROCESS (c0_exe33_mux_s, in_c0_exe33_0, in_c0_exe33_1)
    BEGIN
        CASE (c0_exe33_mux_s) IS
            WHEN "0" => c0_exe33_mux_q <= in_c0_exe33_0;
            WHEN "1" => c0_exe33_mux_q <= in_c0_exe33_1;
            WHEN OTHERS => c0_exe33_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c0_exe33(GPOUT,60)
    out_c0_exe33 <= c0_exe33_mux_q;

    -- c1_exe14_mux(MUX,8)
    c1_exe14_mux_s <= priority_encoder_out_o_select;
    c1_exe14_mux_combproc: PROCESS (c1_exe14_mux_s, in_c1_exe14_0, in_c1_exe14_1)
    BEGIN
        CASE (c1_exe14_mux_s) IS
            WHEN "0" => c1_exe14_mux_q <= in_c1_exe14_0;
            WHEN "1" => c1_exe14_mux_q <= in_c1_exe14_1;
            WHEN OTHERS => c1_exe14_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c1_exe14(GPOUT,61)
    out_c1_exe14 <= c1_exe14_mux_q;

    -- c1_exe25_mux(MUX,9)
    c1_exe25_mux_s <= priority_encoder_out_o_select;
    c1_exe25_mux_combproc: PROCESS (c1_exe25_mux_s, in_c1_exe25_0, in_c1_exe25_1)
    BEGIN
        CASE (c1_exe25_mux_s) IS
            WHEN "0" => c1_exe25_mux_q <= in_c1_exe25_0;
            WHEN "1" => c1_exe25_mux_q <= in_c1_exe25_1;
            WHEN OTHERS => c1_exe25_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_c1_exe25(GPOUT,62)
    out_c1_exe25 <= c1_exe25_mux_q;

    -- cmp429_mux(MUX,10)
    cmp429_mux_s <= priority_encoder_out_o_select;
    cmp429_mux_combproc: PROCESS (cmp429_mux_s, in_cmp429_0, in_cmp429_1)
    BEGIN
        CASE (cmp429_mux_s) IS
            WHEN "0" => cmp429_mux_q <= in_cmp429_0;
            WHEN "1" => cmp429_mux_q <= in_cmp429_1;
            WHEN OTHERS => cmp429_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_cmp429(GPOUT,63)
    out_cmp429 <= cmp429_mux_q;

    -- conv_out_023_mux(MUX,11)
    conv_out_023_mux_s <= priority_encoder_out_o_select;
    conv_out_023_mux_combproc: PROCESS (conv_out_023_mux_s, in_conv_out_023_0, in_conv_out_023_1)
    BEGIN
        CASE (conv_out_023_mux_s) IS
            WHEN "0" => conv_out_023_mux_q <= in_conv_out_023_0;
            WHEN "1" => conv_out_023_mux_q <= in_conv_out_023_1;
            WHEN OTHERS => conv_out_023_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_conv_out_023(GPOUT,64)
    out_conv_out_023 <= conv_out_023_mux_q;

    -- global_id_012_mux(MUX,12)
    global_id_012_mux_s <= priority_encoder_out_o_select;
    global_id_012_mux_combproc: PROCESS (global_id_012_mux_s, in_global_id_012_0, in_global_id_012_1)
    BEGIN
        CASE (global_id_012_mux_s) IS
            WHEN "0" => global_id_012_mux_q <= in_global_id_012_0;
            WHEN "1" => global_id_012_mux_q <= in_global_id_012_1;
            WHEN OTHERS => global_id_012_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_global_id_012(GPOUT,65)
    out_global_id_012 <= global_id_012_mux_q;

    -- global_id_114_mux(MUX,13)
    global_id_114_mux_s <= priority_encoder_out_o_select;
    global_id_114_mux_combproc: PROCESS (global_id_114_mux_s, in_global_id_114_0, in_global_id_114_1)
    BEGIN
        CASE (global_id_114_mux_s) IS
            WHEN "0" => global_id_114_mux_q <= in_global_id_114_0;
            WHEN "1" => global_id_114_mux_q <= in_global_id_114_1;
            WHEN OTHERS => global_id_114_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_global_id_114(GPOUT,66)
    out_global_id_114 <= global_id_114_mux_q;

    -- local_id_015_mux(MUX,50)
    local_id_015_mux_s <= priority_encoder_out_o_select;
    local_id_015_mux_combproc: PROCESS (local_id_015_mux_s, in_local_id_015_0, in_local_id_015_1)
    BEGIN
        CASE (local_id_015_mux_s) IS
            WHEN "0" => local_id_015_mux_q <= in_local_id_015_0;
            WHEN "1" => local_id_015_mux_q <= in_local_id_015_1;
            WHEN OTHERS => local_id_015_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_local_id_015(GPOUT,67)
    out_local_id_015 <= local_id_015_mux_q;

    -- local_id_116_mux(MUX,51)
    local_id_116_mux_s <= priority_encoder_out_o_select;
    local_id_116_mux_combproc: PROCESS (local_id_116_mux_s, in_local_id_116_0, in_local_id_116_1)
    BEGIN
        CASE (local_id_116_mux_s) IS
            WHEN "0" => local_id_116_mux_q <= in_local_id_116_0;
            WHEN "1" => local_id_116_mux_q <= in_local_id_116_1;
            WHEN OTHERS => local_id_116_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_local_id_116(GPOUT,68)
    out_local_id_116 <= local_id_116_mux_q;

    -- mul387_mux(MUX,52)
    mul387_mux_s <= priority_encoder_out_o_select;
    mul387_mux_combproc: PROCESS (mul387_mux_s, in_mul387_0, in_mul387_1)
    BEGIN
        CASE (mul387_mux_s) IS
            WHEN "0" => mul387_mux_q <= in_mul387_0;
            WHEN "1" => mul387_mux_q <= in_mul387_1;
            WHEN OTHERS => mul387_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_mul387(GPOUT,69)
    out_mul387 <= mul387_mux_q;

    -- mul6_mux(MUX,53)
    mul6_mux_s <= priority_encoder_out_o_select;
    mul6_mux_combproc: PROCESS (mul6_mux_s, in_mul6_0, in_mul6_1)
    BEGIN
        CASE (mul6_mux_s) IS
            WHEN "0" => mul6_mux_q <= in_mul6_0;
            WHEN "1" => mul6_mux_q <= in_mul6_1;
            WHEN OTHERS => mul6_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_mul6(GPOUT,70)
    out_mul6 <= mul6_mux_q;

    -- stall_out_0_specific(LOGICAL,75)
    stall_out_0_specific_q <= in_stall_in or priority_encoder_out_o_select;

    -- out_stall_out_0(GPOUT,71)
    out_stall_out_0 <= stall_out_0_specific_q;

    -- not_select(LOGICAL,54)
    not_select_q <= not (priority_encoder_out_o_select);

    -- stall_out_1_specific(LOGICAL,76)
    stall_out_1_specific_q <= in_stall_in or not_select_q;

    -- out_stall_out_1(GPOUT,72)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- out_valid_out(GPOUT,73)
    out_valid_out <= priority_encoder_out_o_valid;

END normal;
