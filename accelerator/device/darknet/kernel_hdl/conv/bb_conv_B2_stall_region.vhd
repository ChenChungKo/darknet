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

-- VHDL created from bb_conv_B2_stall_region
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

entity bb_conv_B2_stall_region is
    port (
        out_lsu_unnamed_conv7_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        in_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id17 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe32 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe111710 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_global_id_011 : in std_logic_vector(31 downto 0);  -- ufix32
        in_global_id_113 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_acl_hw_wg_id17 : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_out_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_conv7_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv7_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv7_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv7_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv7_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv7_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv7_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv7_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_B2_stall_region;

architecture normal of bb_conv_B2_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv is
        port (
            in_c0_eni2119_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2119_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni2119_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_out_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit124_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit124_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_unnamed_conv7_conv325 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Floating Point
            in_unnamed_conv7_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv7_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_conv7_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv7_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_data_fifo is
        generic (
            DEPTH : INTEGER := 0;
            DATA_WIDTH : INTEGER := 32;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0;
            IMPL : STRING := "ram"
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            data_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            valid_out : out std_logic;
            stall_out : out std_logic;
            data_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            full : out std_logic;
            almost_full : out std_logic
        );
    end component;



    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_out_c0_exit124_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal c_float_0_000000e_00_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_select28_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select28_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_conv7_conv_out_lsu_unnamed_conv7_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv7_conv_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv7_conv_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal redist0_stall_entry_o4_11_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_11_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_stall_entry_o4_11_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_11_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_stall_entry_o4_11_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_stall_entry_o4_11_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_11_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_stall_entry_o4_11_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_o4_11_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_stall_entry_o4_11_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_select28_conv_q_9_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_select28_conv_q_9_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_i_select28_conv_q_9_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_select28_conv_q_9_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_i_select28_conv_q_9_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_select28_conv_q_9_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_select28_conv_q_9_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_i_select28_conv_q_9_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_select28_conv_q_9_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_i_select28_conv_q_9_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (128 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist0_stall_entry_o4_11_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist0_stall_entry_o4_11_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist1_i_select28_conv_q_9_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist1_i_select28_conv_q_9_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_c_float_0_000000e_00_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select28_conv_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select28_conv_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select28_conv_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select28_conv_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select28_conv_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select28_conv_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select28_conv_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_stall_entry_o4_11_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_stall_entry_o4_11_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_stall_entry_o4_11_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_stall_entry_o4_11_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_select28_conv_q_9_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_select28_conv_q_9_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_select28_conv_q_9_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_select28_conv_q_9_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- c_float_0_000000e_00(FLOATCONSTANT,10)
    c_float_0_000000e_00_q <= "00000000000000000000000000000000";

    -- bubble_join_stall_entry(BITJOIN,34)
    bubble_join_stall_entry_q <= in_global_id_113 & in_global_id_011 & in_c1_exe111710 & in_c0_exe32 & in_acl_hw_wg_id17;

    -- bubble_select_stall_entry(BITSELECT,35)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(32 downto 32));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(64 downto 33));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(96 downto 65));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(128 downto 97));

    -- i_select28_conv(MUX,16)@0 + 1
    i_select28_conv_s <= bubble_select_stall_entry_c;
    i_select28_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_select28_conv_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_select28_conv_backEN = "1") THEN
                CASE (i_select28_conv_s) IS
                    WHEN "0" => i_select28_conv_q <= bubble_select_stall_entry_d;
                    WHEN "1" => i_select28_conv_q <= c_float_0_000000e_00_q;
                    WHEN OTHERS => i_select28_conv_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x(BLACKBOX,9)@0
    -- in in_i_stall@20000000
    -- out out_c0_exit124_0@9
    -- out out_c0_exit124_1@9
    -- out out_o_stall@20000000
    -- out out_o_valid@9
    thei_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x : i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv
    PORT MAP (
        in_c0_eni2119_0 => GND_q,
        in_c0_eni2119_1 => bubble_select_stall_entry_f,
        in_c0_eni2119_2 => bubble_select_stall_entry_e,
        in_global_size_0 => in_global_size_0,
        in_i_stall => SE_out_redist1_i_select28_conv_q_9_fifo_backStall,
        in_i_valid => SE_stall_entry_V2,
        in_out_data => in_out_data,
        out_c0_exit124_1 => i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_out_c0_exit124_1,
        out_o_stall => i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- redist0_stall_entry_o4_11_fifo(STALLFIFO,27)
    redist0_stall_entry_o4_11_fifo_valid_in <= SE_stall_entry_V1;
    redist0_stall_entry_o4_11_fifo_stall_in <= SE_out_redist0_stall_entry_o4_11_fifo_backStall;
    redist0_stall_entry_o4_11_fifo_data_in <= bubble_select_stall_entry_b;
    redist0_stall_entry_o4_11_fifo_valid_in_bitsignaltemp <= redist0_stall_entry_o4_11_fifo_valid_in(0);
    redist0_stall_entry_o4_11_fifo_stall_in_bitsignaltemp <= redist0_stall_entry_o4_11_fifo_stall_in(0);
    redist0_stall_entry_o4_11_fifo_valid_out(0) <= redist0_stall_entry_o4_11_fifo_valid_out_bitsignaltemp;
    redist0_stall_entry_o4_11_fifo_stall_out(0) <= redist0_stall_entry_o4_11_fifo_stall_out_bitsignaltemp;
    theredist0_stall_entry_o4_11_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 12,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_stall_entry_o4_11_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_stall_entry_o4_11_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_b,
        valid_out => redist0_stall_entry_o4_11_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_stall_entry_o4_11_fifo_stall_out_bitsignaltemp,
        data_out => redist0_stall_entry_o4_11_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,49)
    SE_stall_entry_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_stall_entry_fromReg0 <= (others => '0');
            SE_stall_entry_fromReg1 <= (others => '0');
            SE_stall_entry_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            -- Succesor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            -- Succesor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_stall_entry_consumed0 <= (not (SE_i_select28_conv_backStall) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg0;
    SE_stall_entry_consumed1 <= (not (redist0_stall_entry_o4_11_fifo_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg1;
    SE_stall_entry_consumed2 <= (not (i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_out_o_stall) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg2;
    -- Consuming
    SE_stall_entry_StallValid <= SE_stall_entry_backStall and SE_stall_entry_wireValid;
    SE_stall_entry_toReg0 <= SE_stall_entry_StallValid and SE_stall_entry_consumed0;
    SE_stall_entry_toReg1 <= SE_stall_entry_StallValid and SE_stall_entry_consumed1;
    SE_stall_entry_toReg2 <= SE_stall_entry_StallValid and SE_stall_entry_consumed2;
    -- Backward Stall generation
    SE_stall_entry_or0 <= SE_stall_entry_consumed0;
    SE_stall_entry_or1 <= SE_stall_entry_consumed1 and SE_stall_entry_or0;
    SE_stall_entry_wireStall <= not (SE_stall_entry_consumed2 and SE_stall_entry_or1);
    SE_stall_entry_backStall <= SE_stall_entry_wireStall;
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg0);
    SE_stall_entry_V1 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg1);
    SE_stall_entry_V2 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg2);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- SE_c_float_0_000000e_00(STALLENABLE,45)
    -- Valid signal propagation
    SE_c_float_0_000000e_00_V0 <= "1";

    -- SE_i_select28_conv(STALLENABLE,46)
    -- Valid signal propagation
    SE_i_select28_conv_V0 <= SE_i_select28_conv_R_v_0;
    -- Stall signal propagation
    SE_i_select28_conv_s_tv_0 <= redist1_i_select28_conv_q_9_fifo_stall_out and SE_i_select28_conv_R_v_0;
    -- Backward Enable generation
    SE_i_select28_conv_backEN <= not (SE_i_select28_conv_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_select28_conv_and0 <= SE_c_float_0_000000e_00_V0 and SE_i_select28_conv_backEN;
    SE_i_select28_conv_v_s_0 <= SE_stall_entry_V0 and SE_i_select28_conv_and0;
    -- Backward Stall generation
    SE_i_select28_conv_backStall <= not (SE_i_select28_conv_v_s_0);
    SE_i_select28_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_select28_conv_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_select28_conv_backEN = "0") THEN
                SE_i_select28_conv_R_v_0 <= SE_i_select28_conv_R_v_0 and SE_i_select28_conv_s_tv_0;
            ELSE
                SE_i_select28_conv_R_v_0 <= SE_i_select28_conv_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- redist1_i_select28_conv_q_9_fifo(STALLFIFO,28)
    redist1_i_select28_conv_q_9_fifo_valid_in <= SE_i_select28_conv_V0;
    redist1_i_select28_conv_q_9_fifo_stall_in <= SE_out_redist1_i_select28_conv_q_9_fifo_backStall;
    redist1_i_select28_conv_q_9_fifo_data_in <= i_select28_conv_q;
    redist1_i_select28_conv_q_9_fifo_valid_in_bitsignaltemp <= redist1_i_select28_conv_q_9_fifo_valid_in(0);
    redist1_i_select28_conv_q_9_fifo_stall_in_bitsignaltemp <= redist1_i_select28_conv_q_9_fifo_stall_in(0);
    redist1_i_select28_conv_q_9_fifo_valid_out(0) <= redist1_i_select28_conv_q_9_fifo_valid_out_bitsignaltemp;
    redist1_i_select28_conv_q_9_fifo_stall_out(0) <= redist1_i_select28_conv_q_9_fifo_stall_out_bitsignaltemp;
    theredist1_i_select28_conv_q_9_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 9,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_i_select28_conv_q_9_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_i_select28_conv_q_9_fifo_stall_in_bitsignaltemp,
        data_in => i_select28_conv_q,
        valid_out => redist1_i_select28_conv_q_9_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_i_select28_conv_q_9_fifo_stall_out_bitsignaltemp,
        data_out => redist1_i_select28_conv_q_9_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist1_i_select28_conv_q_9_fifo(BITJOIN,41)
    bubble_join_redist1_i_select28_conv_q_9_fifo_q <= redist1_i_select28_conv_q_9_fifo_data_out;

    -- bubble_select_redist1_i_select28_conv_q_9_fifo(BITSELECT,42)
    bubble_select_redist1_i_select28_conv_q_9_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_i_select28_conv_q_9_fifo_q(31 downto 0));

    -- SE_out_redist1_i_select28_conv_q_9_fifo(STALLENABLE,54)
    -- Valid signal propagation
    SE_out_redist1_i_select28_conv_q_9_fifo_V0 <= SE_out_redist1_i_select28_conv_q_9_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist1_i_select28_conv_q_9_fifo_backStall <= i_store_unnamed_conv7_conv_out_o_stall or not (SE_out_redist1_i_select28_conv_q_9_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist1_i_select28_conv_q_9_fifo_and0 <= redist1_i_select28_conv_q_9_fifo_valid_out;
    SE_out_redist1_i_select28_conv_q_9_fifo_wireValid <= i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_out_o_valid and SE_out_redist1_i_select28_conv_q_9_fifo_and0;

    -- SE_out_redist0_stall_entry_o4_11_fifo(STALLENABLE,52)
    -- Valid signal propagation
    SE_out_redist0_stall_entry_o4_11_fifo_V0 <= SE_out_redist0_stall_entry_o4_11_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist0_stall_entry_o4_11_fifo_backStall <= in_stall_in or not (SE_out_redist0_stall_entry_o4_11_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist0_stall_entry_o4_11_fifo_and0 <= redist0_stall_entry_o4_11_fifo_valid_out;
    SE_out_redist0_stall_entry_o4_11_fifo_wireValid <= i_store_unnamed_conv7_conv_out_o_valid and SE_out_redist0_stall_entry_o4_11_fifo_and0;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- bubble_join_i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x(BITJOIN,30)
    bubble_join_i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_q <= i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_out_c0_exit124_1;

    -- bubble_select_i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x(BITSELECT,31)
    bubble_select_i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_q(63 downto 0));

    -- i_store_unnamed_conv7_conv(BLACKBOX,17)@9
    -- in in_i_stall@20000000
    -- out out_lsu_unnamed_conv7_o_active@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@11
    -- out out_unnamed_conv7_avm_address@20000000
    -- out out_unnamed_conv7_avm_burstcount@20000000
    -- out out_unnamed_conv7_avm_byteenable@20000000
    -- out out_unnamed_conv7_avm_enable@20000000
    -- out out_unnamed_conv7_avm_read@20000000
    -- out out_unnamed_conv7_avm_write@20000000
    -- out out_unnamed_conv7_avm_writedata@20000000
    thei_store_unnamed_conv7_conv : i_store_unnamed_conv7_conv325
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_sfc_c0_for_end83_loopexit_conv_c0_enter120_conv_aunroll_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_redist0_stall_entry_o4_11_fifo_backStall,
        in_i_valid => SE_out_redist1_i_select28_conv_q_9_fifo_V0,
        in_i_writedata => bubble_select_redist1_i_select28_conv_q_9_fifo_b,
        in_unnamed_conv7_avm_readdata => in_unnamed_conv7_avm_readdata,
        in_unnamed_conv7_avm_readdatavalid => in_unnamed_conv7_avm_readdatavalid,
        in_unnamed_conv7_avm_waitrequest => in_unnamed_conv7_avm_waitrequest,
        in_unnamed_conv7_avm_writeack => in_unnamed_conv7_avm_writeack,
        out_lsu_unnamed_conv7_o_active => i_store_unnamed_conv7_conv_out_lsu_unnamed_conv7_o_active,
        out_o_stall => i_store_unnamed_conv7_conv_out_o_stall,
        out_o_valid => i_store_unnamed_conv7_conv_out_o_valid,
        out_unnamed_conv7_avm_address => i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_address,
        out_unnamed_conv7_avm_burstcount => i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_burstcount,
        out_unnamed_conv7_avm_byteenable => i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_byteenable,
        out_unnamed_conv7_avm_enable => i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_enable,
        out_unnamed_conv7_avm_read => i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_read,
        out_unnamed_conv7_avm_write => i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_write,
        out_unnamed_conv7_avm_writedata => i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,2)
    out_lsu_unnamed_conv7_o_active <= i_store_unnamed_conv7_conv_out_lsu_unnamed_conv7_o_active;

    -- bubble_join_redist0_stall_entry_o4_11_fifo(BITJOIN,38)
    bubble_join_redist0_stall_entry_o4_11_fifo_q <= redist0_stall_entry_o4_11_fifo_data_out;

    -- bubble_select_redist0_stall_entry_o4_11_fifo(BITSELECT,39)
    bubble_select_redist0_stall_entry_o4_11_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_stall_entry_o4_11_fifo_q(31 downto 0));

    -- dupName_0_sync_out_x(GPOUT,7)@11
    out_acl_hw_wg_id17 <= bubble_select_redist0_stall_entry_o4_11_fifo_b;
    out_valid_out <= SE_out_redist0_stall_entry_o4_11_fifo_V0;

    -- ext_sig_sync_out(GPOUT,15)
    out_unnamed_conv7_avm_address <= i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_address;
    out_unnamed_conv7_avm_enable <= i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_enable;
    out_unnamed_conv7_avm_read <= i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_read;
    out_unnamed_conv7_avm_write <= i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_write;
    out_unnamed_conv7_avm_writedata <= i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_writedata;
    out_unnamed_conv7_avm_byteenable <= i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_byteenable;
    out_unnamed_conv7_avm_burstcount <= i_store_unnamed_conv7_conv_out_unnamed_conv7_avm_burstcount;

    -- sync_out(GPOUT,24)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
