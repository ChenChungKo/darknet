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

-- VHDL created from i_sfc_logic_c0_for_body12_pool_c0_enter28_pool39
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

entity i_sfc_logic_c0_for_body12_pool_c0_enter28_pool39 is
    port (
        in_c0_eni3_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni3_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni3_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni3_3 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_in_data : in std_logic_vector(63 downto 0);  -- ufix64
        in_in_size : in std_logic_vector(31 downto 0);  -- ufix32
        in_kernel_size : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi131_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi131_1 : out std_logic_vector(63 downto 0);  -- ufix64
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body12_pool_c0_enter28_pool39;

architecture normal of i_sfc_logic_c0_for_body12_pool_c0_enter28_pool39 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_syncbuf_in_data_sync_buffer_pool47 is
        port (
            in_buffer_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_in_size_sync_buffer1_pool45 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_kernel_size_sync_buffer3_pool43 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_kernel_size_sync_buffer_pool41 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add21_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add23_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add24_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul15_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul182_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_pool_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx_pool_pool49_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_pool_pool49_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx_pool_pool49_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx_pool_pool49_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_pool_pool49_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_pool_pool49_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_pool_pool49_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_pool_pool49_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom_pool_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_add23_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add23_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add23_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add23_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add24_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add24_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add24_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add24_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul182_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul182_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul182_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul182_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_in_data_sync_buffer_pool_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_in_size_sync_buffer1_pool_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_kernel_size_sync_buffer3_pool_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid49_i_div_pool_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yPSE_uid51_i_div_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSE_uid51_i_div_pool_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSE_uid51_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSEA_uid53_i_div_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid53_i_div_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid53_i_div_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid53_i_div_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal yPS_uid54_i_div_pool_in : STD_LOGIC_VECTOR (31 downto 0);
    signal yPS_uid54_i_div_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal normYNoLeadOne_uid57_i_div_pool_in : STD_LOGIC_VECTOR (30 downto 0);
    signal normYNoLeadOne_uid57_i_div_pool_b : STD_LOGIC_VECTOR (30 downto 0);
    signal paddingY_uid58_i_div_pool_q : STD_LOGIC_VECTOR (30 downto 0);
    signal updatedY_uid59_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal normYIsOneC2_uid58_i_div_pool_a : STD_LOGIC_VECTOR (31 downto 0);
    signal normYIsOneC2_uid58_i_div_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid58_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid61_i_div_pool_b : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid62_i_div_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid62_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yIsZero_uid63_i_div_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yIsZero_uid63_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fxpInverseRes_uid68_i_div_pool_in : STD_LOGIC_VECTOR (38 downto 0);
    signal fxpInverseRes_uid68_i_div_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal oneInvRes_uid69_i_div_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal invResPostOneHandling2_uid70_i_div_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal invResPostOneHandling2_uid70_i_div_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal cWOut_uid71_i_div_pool_q : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid72_i_div_pool_a : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid72_i_div_pool_b : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid72_i_div_pool_o : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid72_i_div_pool_q : STD_LOGIC_VECTOR (6 downto 0);
    signal xPSX_uid73_i_div_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal xPSX_uid73_i_div_pool_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal xPSX_uid73_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zMsbY0_uid75_i_div_pool_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xPSXE_uid76_i_div_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid76_i_div_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid76_i_div_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid76_i_div_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftInput_uid79_i_div_pool_in : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftInput_uid79_i_div_pool_b : STD_LOGIC_VECTOR (64 downto 0);
    signal prodPostRightShiftPost_uid81_i_div_pool_in : STD_LOGIC_VECTOR (62 downto 0);
    signal prodPostRightShiftPost_uid81_i_div_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal prodPostRightShiftPostRnd_uid83_i_div_pool_a : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid83_i_div_pool_b : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid83_i_div_pool_o : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid83_i_div_pool_q : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRndRange_uid84_i_div_pool_in : STD_LOGIC_VECTOR (32 downto 0);
    signal prodPostRightShiftPostRndRange_uid84_i_div_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal cstValOvfPos_uid85_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cstValOvfneg_uid86_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal signX_uid87_i_div_pool_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstOvf_uid88_i_div_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cstOvf_uid88_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinal_uid89_i_div_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinal_uid89_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prod_qy_GT_x_uid91_i_div_pool_a : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid91_i_div_pool_b : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid91_i_div_pool_o : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid91_i_div_pool_c : STD_LOGIC_VECTOR (0 downto 0);
    signal prod_qy_LT_x_uid92_i_div_pool_a : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid92_i_div_pool_b : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid92_i_div_pool_o : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid92_i_div_pool_c : STD_LOGIC_VECTOR (0 downto 0);
    signal resultSign_uid97_i_div_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal resultSign_uid97_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signResFinal_uid98_i_div_pool_b : STD_LOGIC_VECTOR (0 downto 0);
    signal OverflowCond_uid99_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CondNegX_uid100_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid101_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CondPosX_uid102_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal postMuxSelect_uid103_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstSubFinal_uid105_i_div_pool_q : STD_LOGIC_VECTOR (1 downto 0);
    signal resFinalMP1_uid106_i_div_pool_a : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid106_i_div_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid106_i_div_pool_o : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid106_i_div_pool_q : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalPostMux_uid107_i_div_pool_in : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinalPostMux_uid107_i_div_pool_b : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinalIntDiv_uid108_i_div_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinalIntDiv_uid108_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid110_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid112_zCount_uid55_i_div_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid112_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid113_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid115_zCount_uid55_i_div_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid115_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid116_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid118_zCount_uid55_i_div_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid118_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid121_zCount_uid55_i_div_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid121_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (15 downto 0);
    signal zs_uid122_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid124_zCount_uid55_i_div_pool_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid124_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid127_zCount_uid55_i_div_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid127_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid128_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid130_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid133_zCount_uid55_i_div_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid133_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid134_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid136_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid139_zCount_uid55_i_div_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid139_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid141_zCount_uid55_i_div_pool_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid142_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid143_zCount_uid55_i_div_pool_q : STD_LOGIC_VECTOR (5 downto 0);
    signal yT1_uid161_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal lowRangeB_uid163_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid163_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid164_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid165_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid165_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid165_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid165_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid166_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal yT2_uid167_invPolyEval_b : STD_LOGIC_VECTOR (20 downto 0);
    signal lowRangeB_uid169_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid169_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid170_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid171_invPolyEval_a : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid171_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid171_invPolyEval_o : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid171_invPolyEval_q : STD_LOGIC_VECTOR (29 downto 0);
    signal s2_uid172_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal lowRangeB_uid175_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid175_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid176_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s3sumAHighB_uid177_invPolyEval_a : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid177_invPolyEval_b : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid177_invPolyEval_o : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid177_invPolyEval_q : STD_LOGIC_VECTOR (38 downto 0);
    signal s3_uid178_invPolyEval_q : STD_LOGIC_VECTOR (40 downto 0);
    signal osig_uid181_pT1_uid162_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid184_pT2_uid168_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal nx_mergedSignalTM_uid198_pT3_uid174_invPolyEval_q : STD_LOGIC_VECTOR (23 downto 0);
    signal aboveLeftY_bottomExtension_uid203_pT3_uid174_invPolyEval_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aboveLeftY_mergedSignalTM_uid205_pT3_uid174_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal rightBottomX_bottomExtension_uid207_pT3_uid174_invPolyEval_q : STD_LOGIC_VECTOR (11 downto 0);
    signal rightBottomX_mergedSignalTM_uid209_pT3_uid174_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid215_pT3_uid174_invPolyEval_in : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid215_pT3_uid174_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal highBBits_uid216_pT3_uid174_invPolyEval_b : STD_LOGIC_VECTOR (18 downto 0);
    signal lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_a : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_b : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_o : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_q : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0_uid218_pT3_uid174_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal os_uid219_pT3_uid174_invPolyEval_in : STD_LOGIC_VECTOR (52 downto 0);
    signal os_uid219_pT3_uid174_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal bgTrunc_i_add21_pool_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_add21_pool_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul15_pool_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul15_pool_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_add21_pool_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_add21_pool_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_add21_pool_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_add21_pool_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_add21_pool_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_add21_pool_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_add21_pool_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_add21_pool_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_add21_pool_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_add21_pool_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_add21_pool_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_add21_pool_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_add21_pool_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_add21_pool_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_add21_pool_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul15_pool_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul15_pool_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul15_pool_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul15_pool_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul15_pool_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul15_pool_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul15_pool_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul15_pool_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul15_pool_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul15_pool_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul15_pool_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul15_pool_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul15_pool_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul15_pool_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul15_pool_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage0Idx1Rng16_uid283_normY_uid56_i_div_pool_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid283_normY_uid56_i_div_pool_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid284_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid288_normY_uid56_i_div_pool_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid288_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid290_normY_uid56_i_div_pool_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid290_normY_uid56_i_div_pool_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid291_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx2Rng8_uid293_normY_uid56_i_div_pool_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2Rng8_uid293_normY_uid56_i_div_pool_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2_uid294_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx3Rng12_uid296_normY_uid56_i_div_pool_in : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage1Idx3Rng12_uid296_normY_uid56_i_div_pool_b : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage1Idx3_uid297_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid299_normY_uid56_i_div_pool_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid299_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid301_normY_uid56_i_div_pool_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid301_normY_uid56_i_div_pool_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid302_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx2Rng2_uid304_normY_uid56_i_div_pool_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx2Rng2_uid304_normY_uid56_i_div_pool_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx2_uid305_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx3Pad3_uid306_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage2Idx3Rng3_uid307_normY_uid56_i_div_pool_in : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage2Idx3Rng3_uid307_normY_uid56_i_div_pool_b : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage2Idx3_uid308_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid310_normY_uid56_i_div_pool_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid310_normY_uid56_i_div_pool_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXInvY_uid78_i_div_pool_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid78_i_div_pool_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid78_i_div_pool_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid78_i_div_pool_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid78_i_div_pool_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid78_i_div_pool_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid78_i_div_pool_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal prodXInvY_uid78_i_div_pool_bs6_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid78_i_div_pool_bs7_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid78_i_div_pool_bs10_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid78_i_div_pool_bs11_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid78_i_div_pool_join_12_q : STD_LOGIC_VECTOR (65 downto 0);
    signal prodXInvY_uid78_i_div_pool_align_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal prodXInvY_uid78_i_div_pool_align_13_qint : STD_LOGIC_VECTOR (55 downto 0);
    signal prodXInvY_uid78_i_div_pool_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid78_i_div_pool_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid78_i_div_pool_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid78_i_div_pool_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to32_uid330_in : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to32_uid330_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng32_uid331_prodPostRightShift_uid80_i_div_pool_b : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftStage0Idx1_uid332_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to64_uid333_in : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to64_uid333_b : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx2Rng64_uid334_prodPostRightShift_uid80_i_div_pool_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx2_uid335_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal stageIndexName_to65_uid336_in : STD_LOGIC_VECTOR (64 downto 0);
    signal stageIndexName_to65_uid336_b : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to8_uid340_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid340_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid341_prodPostRightShift_uid80_i_div_pool_b : STD_LOGIC_VECTOR (56 downto 0);
    signal rightShiftStage1Idx1_uid342_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to16_uid343_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid343_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage1Idx2Rng16_uid344_prodPostRightShift_uid80_i_div_pool_b : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx2_uid345_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to24_uid346_in : STD_LOGIC_VECTOR (23 downto 0);
    signal seMsb_to24_uid346_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx3Rng24_uid347_prodPostRightShift_uid80_i_div_pool_b : STD_LOGIC_VECTOR (40 downto 0);
    signal rightShiftStage1Idx3_uid348_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to2_uid351_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid351_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2Idx1Rng2_uid352_prodPostRightShift_uid80_i_div_pool_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage2Idx1_uid353_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to4_uid354_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid354_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx2Rng4_uid355_prodPostRightShift_uid80_i_div_pool_b : STD_LOGIC_VECTOR (60 downto 0);
    signal rightShiftStage2Idx2_uid356_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to6_uid357_in : STD_LOGIC_VECTOR (5 downto 0);
    signal seMsb_to6_uid357_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage2Idx3Rng6_uid358_prodPostRightShift_uid80_i_div_pool_b : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage2Idx3_uid359_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage3Idx1Rng1_uid362_prodPostRightShift_uid80_i_div_pool_b : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage3Idx1_uid363_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool_q : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid90_i_div_pool_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid90_i_div_pool_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid90_i_div_pool_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid90_i_div_pool_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid90_i_div_pool_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid90_i_div_pool_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid90_i_div_pool_bs5_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid90_i_div_pool_bs6_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid90_i_div_pool_bs10_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid90_i_div_pool_join_11_q : STD_LOGIC_VECTOR (63 downto 0);
    signal prodResY_uid90_i_div_pool_align_12_q : STD_LOGIC_VECTOR (50 downto 0);
    signal prodResY_uid90_i_div_pool_align_12_qint : STD_LOGIC_VECTOR (50 downto 0);
    signal prodResY_uid90_i_div_pool_result_add_0_0_a : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid90_i_div_pool_result_add_0_0_b : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid90_i_div_pool_result_add_0_0_o : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid90_i_div_pool_result_add_0_0_q : STD_LOGIC_VECTOR (64 downto 0);
    signal memoryC0_uid145_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC0_uid145_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid145_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid145_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid145_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid145_invTabGen_lutmem_r : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC1_uid148_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC1_uid148_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid148_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid148_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid148_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid148_invTabGen_lutmem_r : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC2_uid151_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC2_uid151_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid151_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid151_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid151_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid151_invTabGen_lutmem_r : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC3_uid154_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC3_uid154_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid154_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid154_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid154_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid154_invTabGen_lutmem_r : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_reset : std_logic;
    type prodXY_uid180_pT1_uid162_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_a0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of prodXY_uid180_pT1_uid162_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid180_pT1_uid162_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_c0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid180_pT1_uid162_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid180_pT1_uid162_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_l : prodXY_uid180_pT1_uid162_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid180_pT1_uid162_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(28 downto 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_p : prodXY_uid180_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_u : prodXY_uid180_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_w : prodXY_uid180_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_x : prodXY_uid180_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_y : prodXY_uid180_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_s : prodXY_uid180_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid180_pT1_uid162_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_reset : std_logic;
    type prodXY_uid183_pT2_uid168_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(20 downto 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_a0 : prodXY_uid183_pT2_uid168_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid183_pT2_uid168_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid183_pT2_uid168_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(22 downto 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_c0 : prodXY_uid183_pT2_uid168_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid183_pT2_uid168_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid183_pT2_uid168_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(21 downto 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_l : prodXY_uid183_pT2_uid168_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid183_pT2_uid168_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(44 downto 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_p : prodXY_uid183_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_u : prodXY_uid183_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_w : prodXY_uid183_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_x : prodXY_uid183_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_y : prodXY_uid183_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_s : prodXY_uid183_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_qq : STD_LOGIC_VECTOR (43 downto 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_q : STD_LOGIC_VECTOR (43 downto 0);
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid183_pT2_uid168_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_reset : std_logic;
    type sm0_uid212_pT3_uid174_invPolyEval_cma_a0type is array(NATURAL range <>) of SIGNED(17 downto 0);
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_a0 : sm0_uid212_pT3_uid174_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid212_pT3_uid174_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_c0 : sm0_uid212_pT3_uid174_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid212_pT3_uid174_invPolyEval_cma_c0 : signal is true;
    type sm0_uid212_pT3_uid174_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(35 downto 0);
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_p : sm0_uid212_pT3_uid174_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_u : sm0_uid212_pT3_uid174_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_w : sm0_uid212_pT3_uid174_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_x : sm0_uid212_pT3_uid174_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_y : sm0_uid212_pT3_uid174_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_s : sm0_uid212_pT3_uid174_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid212_pT3_uid174_invPolyEval_cma_ena1 : std_logic;
    signal i_add21_pool_im0_cma_reset : std_logic;
    type i_add21_pool_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_add21_pool_im0_cma_a0 : i_add21_pool_im0_cma_a0type(0 to 0);
    attribute preserve of i_add21_pool_im0_cma_a0 : signal is true;
    signal i_add21_pool_im0_cma_c0 : i_add21_pool_im0_cma_a0type(0 to 0);
    attribute preserve of i_add21_pool_im0_cma_c0 : signal is true;
    type i_add21_pool_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_add21_pool_im0_cma_p : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_add21_pool_im0_cma_u : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_add21_pool_im0_cma_w : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_add21_pool_im0_cma_x : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_add21_pool_im0_cma_y : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_add21_pool_im0_cma_s : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_add21_pool_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_add21_pool_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_add21_pool_im0_cma_ena0 : std_logic;
    signal i_add21_pool_im0_cma_ena1 : std_logic;
    signal i_add21_pool_im10_cma_reset : std_logic;
    signal i_add21_pool_im10_cma_a0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_add21_pool_im10_cma_a0 : signal is true;
    signal i_add21_pool_im10_cma_c0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_add21_pool_im10_cma_c0 : signal is true;
    type i_add21_pool_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_add21_pool_im10_cma_p : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_add21_pool_im10_cma_u : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_add21_pool_im10_cma_w : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_add21_pool_im10_cma_x : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_add21_pool_im10_cma_y : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_add21_pool_im10_cma_s : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_add21_pool_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_add21_pool_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_add21_pool_im10_cma_ena0 : std_logic;
    signal i_add21_pool_im10_cma_ena1 : std_logic;
    signal i_mul15_pool_im0_cma_reset : std_logic;
    signal i_mul15_pool_im0_cma_a0 : i_add21_pool_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul15_pool_im0_cma_a0 : signal is true;
    signal i_mul15_pool_im0_cma_c0 : i_add21_pool_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul15_pool_im0_cma_c0 : signal is true;
    signal i_mul15_pool_im0_cma_p : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_mul15_pool_im0_cma_u : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_mul15_pool_im0_cma_w : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_mul15_pool_im0_cma_x : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_mul15_pool_im0_cma_y : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_mul15_pool_im0_cma_s : i_add21_pool_im0_cma_ptype(0 to 0);
    signal i_mul15_pool_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul15_pool_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul15_pool_im0_cma_ena0 : std_logic;
    signal i_mul15_pool_im0_cma_ena1 : std_logic;
    signal i_mul15_pool_im10_cma_reset : std_logic;
    signal i_mul15_pool_im10_cma_a0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul15_pool_im10_cma_a0 : signal is true;
    signal i_mul15_pool_im10_cma_c0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul15_pool_im10_cma_c0 : signal is true;
    signal i_mul15_pool_im10_cma_p : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_mul15_pool_im10_cma_u : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_mul15_pool_im10_cma_w : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_mul15_pool_im10_cma_x : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_mul15_pool_im10_cma_y : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_mul15_pool_im10_cma_s : i_add21_pool_im10_cma_ptype(0 to 0);
    signal i_mul15_pool_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul15_pool_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul15_pool_im10_cma_ena0 : std_logic;
    signal i_mul15_pool_im10_cma_ena1 : std_logic;
    signal prodXInvY_uid78_i_div_pool_im0_cma_reset : std_logic;
    signal prodXInvY_uid78_i_div_pool_im0_cma_a0 : i_add21_pool_im0_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid78_i_div_pool_im0_cma_a0 : signal is true;
    signal prodXInvY_uid78_i_div_pool_im0_cma_c0 : i_add21_pool_im0_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid78_i_div_pool_im0_cma_c0 : signal is true;
    signal prodXInvY_uid78_i_div_pool_im0_cma_p : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im0_cma_u : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im0_cma_w : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im0_cma_x : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im0_cma_y : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im0_cma_s : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXInvY_uid78_i_div_pool_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXInvY_uid78_i_div_pool_im0_cma_ena0 : std_logic;
    signal prodXInvY_uid78_i_div_pool_im0_cma_ena1 : std_logic;
    signal prodXInvY_uid78_i_div_pool_im9_cma_reset : std_logic;
    type prodXInvY_uid78_i_div_pool_im9_cma_a0type is array(NATURAL range <>) of UNSIGNED(14 downto 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_a0 : prodXInvY_uid78_i_div_pool_im9_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid78_i_div_pool_im9_cma_a0 : signal is true;
    signal prodXInvY_uid78_i_div_pool_im9_cma_c0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_ltype(0 to 0);
    attribute preserve of prodXInvY_uid78_i_div_pool_im9_cma_c0 : signal is true;
    type prodXInvY_uid78_i_div_pool_im9_cma_ltype is array(NATURAL range <>) of SIGNED(15 downto 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_l : prodXInvY_uid78_i_div_pool_im9_cma_ltype(0 to 0);
    type prodXInvY_uid78_i_div_pool_im9_cma_ptype is array(NATURAL range <>) of SIGNED(30 downto 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_p : prodXInvY_uid78_i_div_pool_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_u : prodXInvY_uid78_i_div_pool_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_w : prodXInvY_uid78_i_div_pool_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_x : prodXInvY_uid78_i_div_pool_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_y : prodXInvY_uid78_i_div_pool_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_s : prodXInvY_uid78_i_div_pool_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_qq : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_q : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXInvY_uid78_i_div_pool_im9_cma_ena0 : std_logic;
    signal prodXInvY_uid78_i_div_pool_im9_cma_ena1 : std_logic;
    signal prodResY_uid90_i_div_pool_im0_cma_reset : std_logic;
    signal prodResY_uid90_i_div_pool_im0_cma_a0 : i_add21_pool_im0_cma_a0type(0 to 0);
    attribute preserve of prodResY_uid90_i_div_pool_im0_cma_a0 : signal is true;
    signal prodResY_uid90_i_div_pool_im0_cma_c0 : i_add21_pool_im0_cma_a0type(0 to 0);
    attribute preserve of prodResY_uid90_i_div_pool_im0_cma_c0 : signal is true;
    signal prodResY_uid90_i_div_pool_im0_cma_p : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im0_cma_u : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im0_cma_w : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im0_cma_x : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im0_cma_y : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im0_cma_s : i_add21_pool_im0_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodResY_uid90_i_div_pool_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodResY_uid90_i_div_pool_im0_cma_ena0 : std_logic;
    signal prodResY_uid90_i_div_pool_im0_cma_ena1 : std_logic;
    signal prodResY_uid90_i_div_pool_im8_cma_reset : std_logic;
    signal prodResY_uid90_i_div_pool_im8_cma_a0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodResY_uid90_i_div_pool_im8_cma_a0 : signal is true;
    signal prodResY_uid90_i_div_pool_im8_cma_c0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodResY_uid90_i_div_pool_im8_cma_c0 : signal is true;
    type prodResY_uid90_i_div_pool_im8_cma_ptype is array(NATURAL range <>) of SIGNED(27 downto 0);
    signal prodResY_uid90_i_div_pool_im8_cma_p : prodResY_uid90_i_div_pool_im8_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im8_cma_u : prodResY_uid90_i_div_pool_im8_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im8_cma_w : prodResY_uid90_i_div_pool_im8_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im8_cma_x : prodResY_uid90_i_div_pool_im8_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im8_cma_y : prodResY_uid90_i_div_pool_im8_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im8_cma_s : prodResY_uid90_i_div_pool_im8_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_im8_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodResY_uid90_i_div_pool_im8_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal prodResY_uid90_i_div_pool_im8_cma_ena0 : std_logic;
    signal prodResY_uid90_i_div_pool_im8_cma_ena1 : std_logic;
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_reset : std_logic;
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_a0 : i_add21_pool_im0_cma_a0type(0 to 1);
    attribute preserve of multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_a0 : signal is true;
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_c0 : sm0_uid212_pT3_uid174_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_c0 : signal is true;
    type multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_l : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ltype(0 to 1);
    type multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(36 downto 0);
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_p : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ptype(0 to 1);
    type multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_utype is array(NATURAL range <>) of SIGNED(37 downto 0);
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_u : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_utype(0 to 1);
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_w : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_x : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_y : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_s : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_qq : STD_LOGIC_VECTOR (36 downto 0);
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_q : STD_LOGIC_VECTOR (36 downto 0);
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ena0 : std_logic;
    signal multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ena1 : std_logic;
    signal i_add21_pool_ma3_cma_reset : std_logic;
    signal i_add21_pool_ma3_cma_a0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of i_add21_pool_ma3_cma_a0 : signal is true;
    signal i_add21_pool_ma3_cma_c0 : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of i_add21_pool_ma3_cma_c0 : signal is true;
    signal i_add21_pool_ma3_cma_l : prodXY_uid180_pT1_uid162_invPolyEval_cma_ltype(0 to 1);
    type i_add21_pool_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_add21_pool_ma3_cma_p : i_add21_pool_ma3_cma_ptype(0 to 1);
    type i_add21_pool_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_add21_pool_ma3_cma_u : i_add21_pool_ma3_cma_utype(0 to 1);
    signal i_add21_pool_ma3_cma_w : i_add21_pool_ma3_cma_utype(0 to 0);
    signal i_add21_pool_ma3_cma_x : i_add21_pool_ma3_cma_utype(0 to 0);
    signal i_add21_pool_ma3_cma_y : i_add21_pool_ma3_cma_utype(0 to 0);
    signal i_add21_pool_ma3_cma_s : i_add21_pool_ma3_cma_utype(0 to 0);
    signal i_add21_pool_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_add21_pool_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_add21_pool_ma3_cma_ena0 : std_logic;
    signal i_add21_pool_ma3_cma_ena1 : std_logic;
    signal i_mul15_pool_ma3_cma_reset : std_logic;
    signal i_mul15_pool_ma3_cma_a0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of i_mul15_pool_ma3_cma_a0 : signal is true;
    signal i_mul15_pool_ma3_cma_c0 : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of i_mul15_pool_ma3_cma_c0 : signal is true;
    signal i_mul15_pool_ma3_cma_l : prodXY_uid180_pT1_uid162_invPolyEval_cma_ltype(0 to 1);
    signal i_mul15_pool_ma3_cma_p : i_add21_pool_ma3_cma_ptype(0 to 1);
    signal i_mul15_pool_ma3_cma_u : i_add21_pool_ma3_cma_utype(0 to 1);
    signal i_mul15_pool_ma3_cma_w : i_add21_pool_ma3_cma_utype(0 to 0);
    signal i_mul15_pool_ma3_cma_x : i_add21_pool_ma3_cma_utype(0 to 0);
    signal i_mul15_pool_ma3_cma_y : i_add21_pool_ma3_cma_utype(0 to 0);
    signal i_mul15_pool_ma3_cma_s : i_add21_pool_ma3_cma_utype(0 to 0);
    signal i_mul15_pool_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul15_pool_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul15_pool_ma3_cma_ena0 : std_logic;
    signal i_mul15_pool_ma3_cma_ena1 : std_logic;
    signal prodXInvY_uid78_i_div_pool_ma3_cma_reset : std_logic;
    signal prodXInvY_uid78_i_div_pool_ma3_cma_a0 : i_add21_pool_im0_cma_a0type(0 to 1);
    attribute preserve of prodXInvY_uid78_i_div_pool_ma3_cma_a0 : signal is true;
    signal prodXInvY_uid78_i_div_pool_ma3_cma_c0 : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of prodXInvY_uid78_i_div_pool_ma3_cma_c0 : signal is true;
    signal prodXInvY_uid78_i_div_pool_ma3_cma_l : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ltype(0 to 1);
    signal prodXInvY_uid78_i_div_pool_ma3_cma_p : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_utype(0 to 1);
    type prodXInvY_uid78_i_div_pool_ma3_cma_utype is array(NATURAL range <>) of SIGNED(38 downto 0);
    signal prodXInvY_uid78_i_div_pool_ma3_cma_u : prodXInvY_uid78_i_div_pool_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid78_i_div_pool_ma3_cma_w : prodXInvY_uid78_i_div_pool_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid78_i_div_pool_ma3_cma_x : prodXInvY_uid78_i_div_pool_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid78_i_div_pool_ma3_cma_y : prodXInvY_uid78_i_div_pool_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid78_i_div_pool_ma3_cma_s : prodXInvY_uid78_i_div_pool_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid78_i_div_pool_ma3_cma_qq : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXInvY_uid78_i_div_pool_ma3_cma_q : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXInvY_uid78_i_div_pool_ma3_cma_ena0 : std_logic;
    signal prodXInvY_uid78_i_div_pool_ma3_cma_ena1 : std_logic;
    signal prodResY_uid90_i_div_pool_ma3_cma_reset : std_logic;
    signal prodResY_uid90_i_div_pool_ma3_cma_a0 : i_add21_pool_im0_cma_a0type(0 to 1);
    attribute preserve of prodResY_uid90_i_div_pool_ma3_cma_a0 : signal is true;
    signal prodResY_uid90_i_div_pool_ma3_cma_c0 : prodXY_uid180_pT1_uid162_invPolyEval_cma_c0type(0 to 1);
    attribute preserve of prodResY_uid90_i_div_pool_ma3_cma_c0 : signal is true;
    signal prodResY_uid90_i_div_pool_ma3_cma_l : multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ltype(0 to 1);
    type prodResY_uid90_i_div_pool_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(32 downto 0);
    signal prodResY_uid90_i_div_pool_ma3_cma_p : prodResY_uid90_i_div_pool_ma3_cma_ptype(0 to 1);
    signal prodResY_uid90_i_div_pool_ma3_cma_u : i_add21_pool_ma3_cma_ptype(0 to 1);
    signal prodResY_uid90_i_div_pool_ma3_cma_w : i_add21_pool_ma3_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_ma3_cma_x : i_add21_pool_ma3_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_ma3_cma_y : i_add21_pool_ma3_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_ma3_cma_s : i_add21_pool_ma3_cma_ptype(0 to 0);
    signal prodResY_uid90_i_div_pool_ma3_cma_qq : STD_LOGIC_VECTOR (32 downto 0);
    signal prodResY_uid90_i_div_pool_ma3_cma_q : STD_LOGIC_VECTOR (32 downto 0);
    signal prodResY_uid90_i_div_pool_ma3_cma_ena0 : std_logic;
    signal prodResY_uid90_i_div_pool_ma3_cma_ena1 : std_logic;
    signal i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_add21_pool_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_add21_pool_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul15_pool_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul15_pool_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal yAddr_uid65_i_div_pool_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yAddr_uid65_i_div_pool_merged_bit_select_c : STD_LOGIC_VECTOR (22 downto 0);
    signal rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid129_zCount_uid55_i_div_pool_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid129_zCount_uid55_i_div_pool_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid135_zCount_uid55_i_div_pool_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid135_zCount_uid55_i_div_pool_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid287_normY_uid56_i_div_pool_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid287_normY_uid56_i_div_pool_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid287_normY_uid56_i_div_pool_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal topRangeY_uid201_pT3_uid174_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeY_uid201_pT3_uid174_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (12 downto 0);
    signal topRangeX_uid200_pT3_uid174_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeX_uid200_pT3_uid174_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (5 downto 0);
    signal redist0_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist1_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist3_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist4_rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_yAddr_uid65_i_div_pool_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist6_yAddr_uid65_i_div_pool_merged_bit_select_b_5_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist8_yAddr_uid65_i_div_pool_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist9_yAddr_uid65_i_div_pool_merged_bit_select_c_5_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist11_prodResY_uid90_i_div_pool_ma3_cma_q_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist12_prodXInvY_uid78_i_div_pool_ma3_cma_q_1_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist13_i_mul15_pool_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist14_i_add21_pool_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist15_multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_q_1_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist16_prodResY_uid90_i_div_pool_im8_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist17_prodResY_uid90_i_div_pool_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist18_prodXInvY_uid78_i_div_pool_im9_cma_q_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist19_prodXInvY_uid78_i_div_pool_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist20_i_mul15_pool_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist21_i_mul15_pool_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist22_i_add21_pool_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist23_i_add21_pool_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist24_sm0_uid212_pT3_uid174_invPolyEval_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist25_memoryC1_uid148_invTabGen_lutmem_r_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist26_memoryC0_uid145_invTabGen_lutmem_r_1_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist27_xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_osig_uid184_pT2_uid168_invPolyEval_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist29_highBBits_uid176_invPolyEval_b_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist30_lowRangeB_uid175_invPolyEval_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist31_lowRangeB_uid169_invPolyEval_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_lowRangeB_uid163_invPolyEval_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_rVStage_uid141_zCount_uid55_i_div_pool_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_vCount_uid136_zCount_uid55_i_div_pool_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_vCount_uid130_zCount_uid55_i_div_pool_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_vCount_uid124_zCount_uid55_i_div_pool_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_vCount_uid118_zCount_uid55_i_div_pool_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_vCount_uid112_zCount_uid55_i_div_pool_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_resFinalIntDiv_uid108_i_div_pool_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist41_resFinalPostMux_uid107_i_div_pool_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist42_resFinal_uid89_i_div_pool_q_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist43_resFinal_uid89_i_div_pool_q_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist44_signX_uid87_i_div_pool_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_signX_uid87_i_div_pool_b_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_prodPostRightShiftPostRndRange_uid84_i_div_pool_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist47_prodPostRightShiftPost_uid81_i_div_pool_b_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist48_rightShiftInput_uid79_i_div_pool_b_1_q : STD_LOGIC_VECTOR (64 downto 0);
    signal redist49_xPSXE_uid76_i_div_pool_q_2_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist50_invResPostOneHandling2_uid70_i_div_pool_q_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist51_fxpInverseRes_uid68_i_div_pool_b_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist52_normYIsOne_uid62_i_div_pool_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist53_normYIsOneC2_uid61_i_div_pool_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist54_normYNoLeadOne_uid57_i_div_pool_b_1_q : STD_LOGIC_VECTOR (30 downto 0);
    signal redist55_yPS_uid54_i_div_pool_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist56_yPS_uid54_i_div_pool_b_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist58_xMSB_uid49_i_div_pool_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist59_xMSB_uid49_i_div_pool_b_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_xMSB_uid49_i_div_pool_b_20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist61_xMSB_uid49_i_div_pool_b_32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_xMSB_uid49_i_div_pool_b_34_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist66_sync_in_aunroll_x_in_c0_eni3_1_33_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist69_sync_in_aunroll_x_in_i_valid_34_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist70_sync_in_aunroll_x_in_i_valid_36_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist71_sync_in_aunroll_x_in_i_valid_42_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist72_i_arrayidx_pool_pool49_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist74_bgTrunc_i_mul182_pool_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist75_bgTrunc_i_mul15_pool_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist76_bgTrunc_i_add24_pool_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist77_bgTrunc_i_add23_pool_sel_x_b_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist78_bgTrunc_i_add21_pool_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_reset0 : std_logic;
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_i : signal is true;
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_sticky_ena_q : signal is true;
    signal redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_reset0 : std_logic;
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_i : signal is true;
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_eq : std_logic;
    attribute preserve of redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_eq : signal is true;
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_sticky_ena_q : signal is true;
    signal redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_inputreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_outputreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_reset0 : std_logic;
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_ia : STD_LOGIC_VECTOR (5 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_iq : STD_LOGIC_VECTOR (5 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_i : signal is true;
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_eq : std_logic;
    attribute preserve of redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_eq : signal is true;
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist33_r_uid143_zCount_uid55_i_div_pool_q_18_sticky_ena_q : signal is true;
    signal redist33_r_uid143_zCount_uid55_i_div_pool_q_18_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_resFinal_uid89_i_div_pool_q_4_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist42_resFinal_uid89_i_div_pool_q_4_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_mem_reset0 : std_logic;
    signal redist57_yPS_uid54_i_div_pool_b_6_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist57_yPS_uid54_i_div_pool_b_6_rdcnt_i : signal is true;
    signal redist57_yPS_uid54_i_div_pool_b_6_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid54_i_div_pool_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist57_yPS_uid54_i_div_pool_b_6_sticky_ena_q : signal is true;
    signal redist57_yPS_uid54_i_div_pool_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_reset0 : std_logic;
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_i : signal is true;
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_eq : std_logic;
    attribute preserve of redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_eq : signal is true;
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_sticky_ena_q : signal is true;
    signal redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_reset0 : std_logic;
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_i : signal is true;
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_eq : std_logic;
    attribute preserve of redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_eq : signal is true;
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist64_sync_in_aunroll_x_in_c0_eni3_1_19_sticky_ena_q : signal is true;
    signal redist64_sync_in_aunroll_x_in_c0_eni3_1_19_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_reset0 : std_logic;
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_i : signal is true;
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_eq : std_logic;
    attribute preserve of redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_eq : signal is true;
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist65_sync_in_aunroll_x_in_c0_eni3_1_29_sticky_ena_q : signal is true;
    signal redist65_sync_in_aunroll_x_in_c0_eni3_1_29_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist66_sync_in_aunroll_x_in_c0_eni3_1_33_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist66_sync_in_aunroll_x_in_c0_eni3_1_33_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_reset0 : std_logic;
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_i : signal is true;
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist68_sync_in_aunroll_x_in_c0_eni3_3_33_sticky_ena_q : signal is true;
    signal redist68_sync_in_aunroll_x_in_c0_eni3_3_33_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_reset0 : std_logic;
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_i : signal is true;
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist73_bgTrunc_i_sub_pool_sel_x_b_5_sticky_ena_q : signal is true;
    signal redist73_bgTrunc_i_sub_pool_sel_x_b_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_reset0 : std_logic;
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_i : signal is true;
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_eq : std_logic;
    attribute preserve of redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_eq : signal is true;
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_sticky_ena_q : signal is true;
    signal redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist69_sync_in_aunroll_x_in_i_valid_34(DELAY,486)
    redist69_sync_in_aunroll_x_in_i_valid_34 : dspba_delay
    GENERIC MAP ( width => 1, depth => 34, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist69_sync_in_aunroll_x_in_i_valid_34_q, clk => clock, aclr => resetn );

    -- redist70_sync_in_aunroll_x_in_i_valid_36(DELAY,487)
    redist70_sync_in_aunroll_x_in_i_valid_36 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist69_sync_in_aunroll_x_in_i_valid_34_q, xout => redist70_sync_in_aunroll_x_in_i_valid_36_q, clk => clock, aclr => resetn );

    -- redist71_sync_in_aunroll_x_in_i_valid_42(DELAY,488)
    redist71_sync_in_aunroll_x_in_i_valid_42 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist70_sync_in_aunroll_x_in_i_valid_36_q, xout => redist71_sync_in_aunroll_x_in_i_valid_42_q, clk => clock, aclr => resetn );

    -- i_arrayidx_pool_pool49_mult_multconst_x(CONSTANT,16)
    i_arrayidx_pool_pool49_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- i_syncbuf_kernel_size_sync_buffer_pool(BLACKBOX,45)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_kernel_size_sync_buffer_pool : i_syncbuf_kernel_size_sync_buffer_pool41
    PORT MAP (
        in_buffer_in => in_kernel_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- xMSB_uid49_i_div_pool(BITSELECT,48)@1
    xMSB_uid49_i_div_pool_b <= STD_LOGIC_VECTOR(i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out(31 downto 31));

    -- redist58_xMSB_uid49_i_div_pool_b_1(DELAY,475)
    redist58_xMSB_uid49_i_div_pool_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xMSB_uid49_i_div_pool_b, xout => redist58_xMSB_uid49_i_div_pool_b_1_q, clk => clock, aclr => resetn );

    -- redist59_xMSB_uid49_i_div_pool_b_19(DELAY,476)
    redist59_xMSB_uid49_i_div_pool_b_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 18, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist58_xMSB_uid49_i_div_pool_b_1_q, xout => redist59_xMSB_uid49_i_div_pool_b_19_q, clk => clock, aclr => resetn );

    -- redist60_xMSB_uid49_i_div_pool_b_20(DELAY,477)
    redist60_xMSB_uid49_i_div_pool_b_20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist59_xMSB_uid49_i_div_pool_b_19_q, xout => redist60_xMSB_uid49_i_div_pool_b_20_q, clk => clock, aclr => resetn );

    -- redist61_xMSB_uid49_i_div_pool_b_32(DELAY,478)
    redist61_xMSB_uid49_i_div_pool_b_32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 12, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist60_xMSB_uid49_i_div_pool_b_20_q, xout => redist61_xMSB_uid49_i_div_pool_b_32_q, clk => clock, aclr => resetn );

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_notEnable(LOGICAL,570)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_nor(LOGICAL,571)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_nor_q <= not (redist65_sync_in_aunroll_x_in_c0_eni3_1_29_notEnable_q or redist65_sync_in_aunroll_x_in_c0_eni3_1_29_sticky_ena_q);

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_last(CONSTANT,567)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_last_q <= "0101";

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmp(LOGICAL,568)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmp_b <= STD_LOGIC_VECTOR("0" & redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_q);
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmp_q <= "1" WHEN redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_last_q = redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmp_b ELSE "0";

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmpReg(REG,569)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmpReg_q <= STD_LOGIC_VECTOR(redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmp_q);
        END IF;
    END PROCESS;

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_sticky_ena(REG,572)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist65_sync_in_aunroll_x_in_c0_eni3_1_29_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist65_sync_in_aunroll_x_in_c0_eni3_1_29_nor_q = "1") THEN
                redist65_sync_in_aunroll_x_in_c0_eni3_1_29_sticky_ena_q <= STD_LOGIC_VECTOR(redist65_sync_in_aunroll_x_in_c0_eni3_1_29_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_enaAnd(LOGICAL,573)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_enaAnd_q <= redist65_sync_in_aunroll_x_in_c0_eni3_1_29_sticky_ena_q and VCC_q;

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt(COUNTER,565)
    -- low=0, high=6, step=1, init=0
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_eq <= '1';
            ELSE
                redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_eq <= '0';
            END IF;
            IF (redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_eq = '1') THEN
                redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_i <= redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_i + 2;
            ELSE
                redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_i <= redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_i, 3)));

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_notEnable(LOGICAL,558)
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_nor(LOGICAL,559)
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_nor_q <= not (redist64_sync_in_aunroll_x_in_c0_eni3_1_19_notEnable_q or redist64_sync_in_aunroll_x_in_c0_eni3_1_19_sticky_ena_q);

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_last(CONSTANT,555)
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_last_q <= "01111";

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_cmp(LOGICAL,556)
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_cmp_q <= "1" WHEN redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_last_q = redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_q ELSE "0";

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_cmpReg(REG,557)
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_sync_in_aunroll_x_in_c0_eni3_1_19_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist64_sync_in_aunroll_x_in_c0_eni3_1_19_cmpReg_q <= STD_LOGIC_VECTOR(redist64_sync_in_aunroll_x_in_c0_eni3_1_19_cmp_q);
        END IF;
    END PROCESS;

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_sticky_ena(REG,560)
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_sync_in_aunroll_x_in_c0_eni3_1_19_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist64_sync_in_aunroll_x_in_c0_eni3_1_19_nor_q = "1") THEN
                redist64_sync_in_aunroll_x_in_c0_eni3_1_19_sticky_ena_q <= STD_LOGIC_VECTOR(redist64_sync_in_aunroll_x_in_c0_eni3_1_19_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_enaAnd(LOGICAL,561)
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_enaAnd_q <= redist64_sync_in_aunroll_x_in_c0_eni3_1_19_sticky_ena_q and VCC_q;

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt(COUNTER,553)
    -- low=0, high=16, step=1, init=0
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_i = TO_UNSIGNED(15, 5)) THEN
                redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_eq <= '1';
            ELSE
                redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_eq <= '0';
            END IF;
            IF (redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_eq = '1') THEN
                redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_i <= redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_i + 16;
            ELSE
                redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_i <= redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_i, 5)));

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_wraddr(REG,554)
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_sync_in_aunroll_x_in_c0_eni3_1_19_wraddr_q <= "10000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist64_sync_in_aunroll_x_in_c0_eni3_1_19_wraddr_q <= STD_LOGIC_VECTOR(redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem(DUALMEM,552)
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni3_1);
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_aa <= redist64_sync_in_aunroll_x_in_c0_eni3_1_19_wraddr_q;
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_ab <= redist64_sync_in_aunroll_x_in_c0_eni3_1_19_rdcnt_q;
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_reset0 <= not (resetn);
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 17,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 17,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist64_sync_in_aunroll_x_in_c0_eni3_1_19_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_reset0,
        clock1 => clock,
        address_a => redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_aa,
        data_a => redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_ab,
        q_b => redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_iq
    );
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_q <= redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_iq(31 downto 0);

    -- redist64_sync_in_aunroll_x_in_c0_eni3_1_19_outputreg(DELAY,551)
    redist64_sync_in_aunroll_x_in_c0_eni3_1_19_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist64_sync_in_aunroll_x_in_c0_eni3_1_19_mem_q, xout => redist64_sync_in_aunroll_x_in_c0_eni3_1_19_outputreg_q, clk => clock, aclr => resetn );

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_inputreg(DELAY,562)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist64_sync_in_aunroll_x_in_c0_eni3_1_19_outputreg_q, xout => redist65_sync_in_aunroll_x_in_c0_eni3_1_29_inputreg_q, clk => clock, aclr => resetn );

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_wraddr(REG,566)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist65_sync_in_aunroll_x_in_c0_eni3_1_29_wraddr_q <= "110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist65_sync_in_aunroll_x_in_c0_eni3_1_29_wraddr_q <= STD_LOGIC_VECTOR(redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem(DUALMEM,564)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_ia <= STD_LOGIC_VECTOR(redist65_sync_in_aunroll_x_in_c0_eni3_1_29_inputreg_q);
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_aa <= redist65_sync_in_aunroll_x_in_c0_eni3_1_29_wraddr_q;
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_ab <= redist65_sync_in_aunroll_x_in_c0_eni3_1_29_rdcnt_q;
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_reset0 <= not (resetn);
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 7,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist65_sync_in_aunroll_x_in_c0_eni3_1_29_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_reset0,
        clock1 => clock,
        address_a => redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_aa,
        data_a => redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_ab,
        q_b => redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_iq
    );
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_q <= redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_iq(31 downto 0);

    -- redist65_sync_in_aunroll_x_in_c0_eni3_1_29_outputreg(DELAY,563)
    redist65_sync_in_aunroll_x_in_c0_eni3_1_29_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist65_sync_in_aunroll_x_in_c0_eni3_1_29_mem_q, xout => redist65_sync_in_aunroll_x_in_c0_eni3_1_29_outputreg_q, clk => clock, aclr => resetn );

    -- signX_uid87_i_div_pool(BITSELECT,86)@30
    signX_uid87_i_div_pool_b <= STD_LOGIC_VECTOR(redist65_sync_in_aunroll_x_in_c0_eni3_1_29_outputreg_q(31 downto 31));

    -- redist44_signX_uid87_i_div_pool_b_3(DELAY,461)
    redist44_signX_uid87_i_div_pool_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signX_uid87_i_div_pool_b, xout => redist44_signX_uid87_i_div_pool_b_3_q, clk => clock, aclr => resetn );

    -- resultSign_uid97_i_div_pool(LOGICAL,96)@33 + 1
    resultSign_uid97_i_div_pool_qi <= redist44_signX_uid87_i_div_pool_b_3_q xor redist61_xMSB_uid49_i_div_pool_b_32_q;
    resultSign_uid97_i_div_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resultSign_uid97_i_div_pool_qi, xout => resultSign_uid97_i_div_pool_q, clk => clock, aclr => resetn );

    -- cstSubFinal_uid105_i_div_pool(BITJOIN,104)@34
    cstSubFinal_uid105_i_div_pool_q <= resultSign_uid97_i_div_pool_q & VCC_q;

    -- cstValOvfneg_uid86_i_div_pool(CONSTANT,85)
    cstValOvfneg_uid86_i_div_pool_q <= "10000000000000000000000000000000";

    -- cstValOvfPos_uid85_i_div_pool(CONSTANT,84)
    cstValOvfPos_uid85_i_div_pool_q <= "01111111111111111111111111111111";

    -- cstOvf_uid88_i_div_pool(MUX,87)@30
    cstOvf_uid88_i_div_pool_s <= signX_uid87_i_div_pool_b;
    cstOvf_uid88_i_div_pool_combproc: PROCESS (cstOvf_uid88_i_div_pool_s, cstValOvfPos_uid85_i_div_pool_q, cstValOvfneg_uid86_i_div_pool_q)
    BEGIN
        CASE (cstOvf_uid88_i_div_pool_s) IS
            WHEN "0" => cstOvf_uid88_i_div_pool_q <= cstValOvfPos_uid85_i_div_pool_q;
            WHEN "1" => cstOvf_uid88_i_div_pool_q <= cstValOvfneg_uid86_i_div_pool_q;
            WHEN OTHERS => cstOvf_uid88_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- zMsbY0_uid75_i_div_pool(BITJOIN,74)@21
    zMsbY0_uid75_i_div_pool_q <= GND_q & redist60_xMSB_uid49_i_div_pool_b_20_q;

    -- xPSX_uid73_i_div_pool(LOGICAL,72)@20 + 1
    xPSX_uid73_i_div_pool_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => redist59_xMSB_uid49_i_div_pool_b_19_q(0)) & redist59_xMSB_uid49_i_div_pool_b_19_q));
    xPSX_uid73_i_div_pool_qi <= redist64_sync_in_aunroll_x_in_c0_eni3_1_19_outputreg_q xor xPSX_uid73_i_div_pool_b;
    xPSX_uid73_i_div_pool_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xPSX_uid73_i_div_pool_qi, xout => xPSX_uid73_i_div_pool_q, clk => clock, aclr => resetn );

    -- xPSXE_uid76_i_div_pool(ADD,75)@21 + 1
    xPSXE_uid76_i_div_pool_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => xPSX_uid73_i_div_pool_q(31)) & xPSX_uid73_i_div_pool_q));
    xPSXE_uid76_i_div_pool_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 2 => zMsbY0_uid75_i_div_pool_q(1)) & zMsbY0_uid75_i_div_pool_q));
    xPSXE_uid76_i_div_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            xPSXE_uid76_i_div_pool_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            xPSXE_uid76_i_div_pool_o <= STD_LOGIC_VECTOR(SIGNED(xPSXE_uid76_i_div_pool_a) + SIGNED(xPSXE_uid76_i_div_pool_b));
        END IF;
    END PROCESS;
    xPSXE_uid76_i_div_pool_q <= xPSXE_uid76_i_div_pool_o(32 downto 0);

    -- prodXInvY_uid78_i_div_pool_bs4(BITSELECT,315)@22
    prodXInvY_uid78_i_div_pool_bs4_in <= STD_LOGIC_VECTOR(xPSXE_uid76_i_div_pool_q(17 downto 0));
    prodXInvY_uid78_i_div_pool_bs4_b <= STD_LOGIC_VECTOR(prodXInvY_uid78_i_div_pool_bs4_in(17 downto 0));

    -- prodXInvY_uid78_i_div_pool_bjA5(BITJOIN,316)@22
    prodXInvY_uid78_i_div_pool_bjA5_q <= GND_q & prodXInvY_uid78_i_div_pool_bs4_b;

    -- oneInvRes_uid69_i_div_pool(CONSTANT,68)
    oneInvRes_uid69_i_div_pool_q <= "100000000000000000000000000000000";

    -- redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_notEnable(LOGICAL,513)
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_nor(LOGICAL,514)
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_nor_q <= not (redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_notEnable_q or redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_sticky_ena_q);

    -- redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_last(CONSTANT,510)
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_last_q <= "01";

    -- redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_cmp(LOGICAL,511)
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_cmp_q <= "1" WHEN redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_last_q = redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_q ELSE "0";

    -- redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_cmpReg(REG,512)
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_cmpReg_q <= STD_LOGIC_VECTOR(redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_sticky_ena(REG,515)
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_nor_q = "1") THEN
                redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_enaAnd(LOGICAL,516)
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_enaAnd_q <= redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_sticky_ena_q and VCC_q;

    -- redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt(COUNTER,508)
    -- low=0, high=2, step=1, init=0
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_eq <= '1';
            ELSE
                redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_eq <= '0';
            END IF;
            IF (redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_eq = '1') THEN
                redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_i <= redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_i + 2;
            ELSE
                redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_i <= redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_i, 2)));

    -- leftShiftStage2Idx3Rng3_uid307_normY_uid56_i_div_pool(BITSELECT,306)@8
    leftShiftStage2Idx3Rng3_uid307_normY_uid56_i_div_pool_in <= leftShiftStage1_uid299_normY_uid56_i_div_pool_q(28 downto 0);
    leftShiftStage2Idx3Rng3_uid307_normY_uid56_i_div_pool_b <= leftShiftStage2Idx3Rng3_uid307_normY_uid56_i_div_pool_in(28 downto 0);

    -- leftShiftStage2Idx3Pad3_uid306_normY_uid56_i_div_pool(CONSTANT,305)
    leftShiftStage2Idx3Pad3_uid306_normY_uid56_i_div_pool_q <= "000";

    -- leftShiftStage2Idx3_uid308_normY_uid56_i_div_pool(BITJOIN,307)@8
    leftShiftStage2Idx3_uid308_normY_uid56_i_div_pool_q <= leftShiftStage2Idx3Rng3_uid307_normY_uid56_i_div_pool_b & leftShiftStage2Idx3Pad3_uid306_normY_uid56_i_div_pool_q;

    -- leftShiftStage2Idx2Rng2_uid304_normY_uid56_i_div_pool(BITSELECT,303)@8
    leftShiftStage2Idx2Rng2_uid304_normY_uid56_i_div_pool_in <= leftShiftStage1_uid299_normY_uid56_i_div_pool_q(29 downto 0);
    leftShiftStage2Idx2Rng2_uid304_normY_uid56_i_div_pool_b <= leftShiftStage2Idx2Rng2_uid304_normY_uid56_i_div_pool_in(29 downto 0);

    -- zs_uid134_zCount_uid55_i_div_pool(CONSTANT,133)
    zs_uid134_zCount_uid55_i_div_pool_q <= "00";

    -- leftShiftStage2Idx2_uid305_normY_uid56_i_div_pool(BITJOIN,304)@8
    leftShiftStage2Idx2_uid305_normY_uid56_i_div_pool_q <= leftShiftStage2Idx2Rng2_uid304_normY_uid56_i_div_pool_b & zs_uid134_zCount_uid55_i_div_pool_q;

    -- leftShiftStage2Idx1Rng1_uid301_normY_uid56_i_div_pool(BITSELECT,300)@8
    leftShiftStage2Idx1Rng1_uid301_normY_uid56_i_div_pool_in <= leftShiftStage1_uid299_normY_uid56_i_div_pool_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid301_normY_uid56_i_div_pool_b <= leftShiftStage2Idx1Rng1_uid301_normY_uid56_i_div_pool_in(30 downto 0);

    -- leftShiftStage2Idx1_uid302_normY_uid56_i_div_pool(BITJOIN,301)@8
    leftShiftStage2Idx1_uid302_normY_uid56_i_div_pool_q <= leftShiftStage2Idx1Rng1_uid301_normY_uid56_i_div_pool_b & GND_q;

    -- leftShiftStage1Idx3Rng12_uid296_normY_uid56_i_div_pool(BITSELECT,295)@8
    leftShiftStage1Idx3Rng12_uid296_normY_uid56_i_div_pool_in <= leftShiftStage0_uid288_normY_uid56_i_div_pool_q(19 downto 0);
    leftShiftStage1Idx3Rng12_uid296_normY_uid56_i_div_pool_b <= leftShiftStage1Idx3Rng12_uid296_normY_uid56_i_div_pool_in(19 downto 0);

    -- rightBottomX_bottomExtension_uid207_pT3_uid174_invPolyEval(CONSTANT,206)
    rightBottomX_bottomExtension_uid207_pT3_uid174_invPolyEval_q <= "000000000000";

    -- leftShiftStage1Idx3_uid297_normY_uid56_i_div_pool(BITJOIN,296)@8
    leftShiftStage1Idx3_uid297_normY_uid56_i_div_pool_q <= leftShiftStage1Idx3Rng12_uid296_normY_uid56_i_div_pool_b & rightBottomX_bottomExtension_uid207_pT3_uid174_invPolyEval_q;

    -- leftShiftStage1Idx2Rng8_uid293_normY_uid56_i_div_pool(BITSELECT,292)@8
    leftShiftStage1Idx2Rng8_uid293_normY_uid56_i_div_pool_in <= leftShiftStage0_uid288_normY_uid56_i_div_pool_q(23 downto 0);
    leftShiftStage1Idx2Rng8_uid293_normY_uid56_i_div_pool_b <= leftShiftStage1Idx2Rng8_uid293_normY_uid56_i_div_pool_in(23 downto 0);

    -- zs_uid122_zCount_uid55_i_div_pool(CONSTANT,121)
    zs_uid122_zCount_uid55_i_div_pool_q <= "00000000";

    -- leftShiftStage1Idx2_uid294_normY_uid56_i_div_pool(BITJOIN,293)@8
    leftShiftStage1Idx2_uid294_normY_uid56_i_div_pool_q <= leftShiftStage1Idx2Rng8_uid293_normY_uid56_i_div_pool_b & zs_uid122_zCount_uid55_i_div_pool_q;

    -- leftShiftStage1Idx1Rng4_uid290_normY_uid56_i_div_pool(BITSELECT,289)@8
    leftShiftStage1Idx1Rng4_uid290_normY_uid56_i_div_pool_in <= leftShiftStage0_uid288_normY_uid56_i_div_pool_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid290_normY_uid56_i_div_pool_b <= leftShiftStage1Idx1Rng4_uid290_normY_uid56_i_div_pool_in(27 downto 0);

    -- zs_uid128_zCount_uid55_i_div_pool(CONSTANT,127)
    zs_uid128_zCount_uid55_i_div_pool_q <= "0000";

    -- leftShiftStage1Idx1_uid291_normY_uid56_i_div_pool(BITJOIN,290)@8
    leftShiftStage1Idx1_uid291_normY_uid56_i_div_pool_q <= leftShiftStage1Idx1Rng4_uid290_normY_uid56_i_div_pool_b & zs_uid128_zCount_uid55_i_div_pool_q;

    -- zs_uid110_zCount_uid55_i_div_pool(CONSTANT,109)
    zs_uid110_zCount_uid55_i_div_pool_q <= "00000000000000000000000000000000";

    -- leftShiftStage0Idx1Rng16_uid283_normY_uid56_i_div_pool(BITSELECT,282)@8
    leftShiftStage0Idx1Rng16_uid283_normY_uid56_i_div_pool_in <= redist57_yPS_uid54_i_div_pool_b_6_outputreg_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid283_normY_uid56_i_div_pool_b <= leftShiftStage0Idx1Rng16_uid283_normY_uid56_i_div_pool_in(15 downto 0);

    -- zs_uid116_zCount_uid55_i_div_pool(CONSTANT,115)
    zs_uid116_zCount_uid55_i_div_pool_q <= "0000000000000000";

    -- leftShiftStage0Idx1_uid284_normY_uid56_i_div_pool(BITJOIN,283)@8
    leftShiftStage0Idx1_uid284_normY_uid56_i_div_pool_q <= leftShiftStage0Idx1Rng16_uid283_normY_uid56_i_div_pool_b & zs_uid116_zCount_uid55_i_div_pool_q;

    -- redist57_yPS_uid54_i_div_pool_b_6_notEnable(LOGICAL,536)
    redist57_yPS_uid54_i_div_pool_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist57_yPS_uid54_i_div_pool_b_6_nor(LOGICAL,537)
    redist57_yPS_uid54_i_div_pool_b_6_nor_q <= not (redist57_yPS_uid54_i_div_pool_b_6_notEnable_q or redist57_yPS_uid54_i_div_pool_b_6_sticky_ena_q);

    -- redist57_yPS_uid54_i_div_pool_b_6_cmpReg(REG,535)
    redist57_yPS_uid54_i_div_pool_b_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_yPS_uid54_i_div_pool_b_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist57_yPS_uid54_i_div_pool_b_6_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist57_yPS_uid54_i_div_pool_b_6_sticky_ena(REG,538)
    redist57_yPS_uid54_i_div_pool_b_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_yPS_uid54_i_div_pool_b_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist57_yPS_uid54_i_div_pool_b_6_nor_q = "1") THEN
                redist57_yPS_uid54_i_div_pool_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist57_yPS_uid54_i_div_pool_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist57_yPS_uid54_i_div_pool_b_6_enaAnd(LOGICAL,539)
    redist57_yPS_uid54_i_div_pool_b_6_enaAnd_q <= redist57_yPS_uid54_i_div_pool_b_6_sticky_ena_q and VCC_q;

    -- redist57_yPS_uid54_i_div_pool_b_6_rdcnt(COUNTER,533)
    -- low=0, high=1, step=1, init=0
    redist57_yPS_uid54_i_div_pool_b_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_yPS_uid54_i_div_pool_b_6_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist57_yPS_uid54_i_div_pool_b_6_rdcnt_i <= redist57_yPS_uid54_i_div_pool_b_6_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist57_yPS_uid54_i_div_pool_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist57_yPS_uid54_i_div_pool_b_6_rdcnt_i, 1)));

    -- yPSE_uid51_i_div_pool(LOGICAL,50)@1 + 1
    yPSE_uid51_i_div_pool_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid49_i_div_pool_b(0)) & xMSB_uid49_i_div_pool_b));
    yPSE_uid51_i_div_pool_qi <= i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out xor yPSE_uid51_i_div_pool_b;
    yPSE_uid51_i_div_pool_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yPSE_uid51_i_div_pool_qi, xout => yPSE_uid51_i_div_pool_q, clk => clock, aclr => resetn );

    -- yPSEA_uid53_i_div_pool(ADD,52)@2
    yPSEA_uid53_i_div_pool_a <= STD_LOGIC_VECTOR("0" & yPSE_uid51_i_div_pool_q);
    yPSEA_uid53_i_div_pool_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000" & redist58_xMSB_uid49_i_div_pool_b_1_q);
    yPSEA_uid53_i_div_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(yPSEA_uid53_i_div_pool_a) + UNSIGNED(yPSEA_uid53_i_div_pool_b));
    yPSEA_uid53_i_div_pool_q <= yPSEA_uid53_i_div_pool_o(32 downto 0);

    -- yPS_uid54_i_div_pool(BITSELECT,53)@2
    yPS_uid54_i_div_pool_in <= STD_LOGIC_VECTOR(yPSEA_uid53_i_div_pool_q(31 downto 0));
    yPS_uid54_i_div_pool_b <= STD_LOGIC_VECTOR(yPS_uid54_i_div_pool_in(31 downto 0));

    -- redist55_yPS_uid54_i_div_pool_b_1(DELAY,472)
    redist55_yPS_uid54_i_div_pool_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yPS_uid54_i_div_pool_b, xout => redist55_yPS_uid54_i_div_pool_b_1_q, clk => clock, aclr => resetn );

    -- redist56_yPS_uid54_i_div_pool_b_2(DELAY,473)
    redist56_yPS_uid54_i_div_pool_b_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist55_yPS_uid54_i_div_pool_b_1_q, xout => redist56_yPS_uid54_i_div_pool_b_2_q, clk => clock, aclr => resetn );

    -- redist57_yPS_uid54_i_div_pool_b_6_wraddr(REG,534)
    redist57_yPS_uid54_i_div_pool_b_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_yPS_uid54_i_div_pool_b_6_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist57_yPS_uid54_i_div_pool_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist57_yPS_uid54_i_div_pool_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist57_yPS_uid54_i_div_pool_b_6_mem(DUALMEM,532)
    redist57_yPS_uid54_i_div_pool_b_6_mem_ia <= STD_LOGIC_VECTOR(redist56_yPS_uid54_i_div_pool_b_2_q);
    redist57_yPS_uid54_i_div_pool_b_6_mem_aa <= redist57_yPS_uid54_i_div_pool_b_6_wraddr_q;
    redist57_yPS_uid54_i_div_pool_b_6_mem_ab <= redist57_yPS_uid54_i_div_pool_b_6_rdcnt_q;
    redist57_yPS_uid54_i_div_pool_b_6_mem_reset0 <= not (resetn);
    redist57_yPS_uid54_i_div_pool_b_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 32,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist57_yPS_uid54_i_div_pool_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist57_yPS_uid54_i_div_pool_b_6_mem_reset0,
        clock1 => clock,
        address_a => redist57_yPS_uid54_i_div_pool_b_6_mem_aa,
        data_a => redist57_yPS_uid54_i_div_pool_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist57_yPS_uid54_i_div_pool_b_6_mem_ab,
        q_b => redist57_yPS_uid54_i_div_pool_b_6_mem_iq
    );
    redist57_yPS_uid54_i_div_pool_b_6_mem_q <= redist57_yPS_uid54_i_div_pool_b_6_mem_iq(31 downto 0);

    -- redist57_yPS_uid54_i_div_pool_b_6_outputreg(DELAY,531)
    redist57_yPS_uid54_i_div_pool_b_6_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist57_yPS_uid54_i_div_pool_b_6_mem_q, xout => redist57_yPS_uid54_i_div_pool_b_6_outputreg_q, clk => clock, aclr => resetn );

    -- leftShiftStage0_uid288_normY_uid56_i_div_pool(MUX,287)@8
    leftShiftStage0_uid288_normY_uid56_i_div_pool_s <= leftShiftStageSel5Dto4_uid287_normY_uid56_i_div_pool_merged_bit_select_b;
    leftShiftStage0_uid288_normY_uid56_i_div_pool_combproc: PROCESS (leftShiftStage0_uid288_normY_uid56_i_div_pool_s, redist57_yPS_uid54_i_div_pool_b_6_outputreg_q, leftShiftStage0Idx1_uid284_normY_uid56_i_div_pool_q, zs_uid110_zCount_uid55_i_div_pool_q)
    BEGIN
        CASE (leftShiftStage0_uid288_normY_uid56_i_div_pool_s) IS
            WHEN "00" => leftShiftStage0_uid288_normY_uid56_i_div_pool_q <= redist57_yPS_uid54_i_div_pool_b_6_outputreg_q;
            WHEN "01" => leftShiftStage0_uid288_normY_uid56_i_div_pool_q <= leftShiftStage0Idx1_uid284_normY_uid56_i_div_pool_q;
            WHEN "10" => leftShiftStage0_uid288_normY_uid56_i_div_pool_q <= zs_uid110_zCount_uid55_i_div_pool_q;
            WHEN "11" => leftShiftStage0_uid288_normY_uid56_i_div_pool_q <= zs_uid110_zCount_uid55_i_div_pool_q;
            WHEN OTHERS => leftShiftStage0_uid288_normY_uid56_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid299_normY_uid56_i_div_pool(MUX,298)@8
    leftShiftStage1_uid299_normY_uid56_i_div_pool_s <= leftShiftStageSel5Dto4_uid287_normY_uid56_i_div_pool_merged_bit_select_c;
    leftShiftStage1_uid299_normY_uid56_i_div_pool_combproc: PROCESS (leftShiftStage1_uid299_normY_uid56_i_div_pool_s, leftShiftStage0_uid288_normY_uid56_i_div_pool_q, leftShiftStage1Idx1_uid291_normY_uid56_i_div_pool_q, leftShiftStage1Idx2_uid294_normY_uid56_i_div_pool_q, leftShiftStage1Idx3_uid297_normY_uid56_i_div_pool_q)
    BEGIN
        CASE (leftShiftStage1_uid299_normY_uid56_i_div_pool_s) IS
            WHEN "00" => leftShiftStage1_uid299_normY_uid56_i_div_pool_q <= leftShiftStage0_uid288_normY_uid56_i_div_pool_q;
            WHEN "01" => leftShiftStage1_uid299_normY_uid56_i_div_pool_q <= leftShiftStage1Idx1_uid291_normY_uid56_i_div_pool_q;
            WHEN "10" => leftShiftStage1_uid299_normY_uid56_i_div_pool_q <= leftShiftStage1Idx2_uid294_normY_uid56_i_div_pool_q;
            WHEN "11" => leftShiftStage1_uid299_normY_uid56_i_div_pool_q <= leftShiftStage1Idx3_uid297_normY_uid56_i_div_pool_q;
            WHEN OTHERS => leftShiftStage1_uid299_normY_uid56_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid112_zCount_uid55_i_div_pool(LOGICAL,111)@3 + 1
    vCount_uid112_zCount_uid55_i_div_pool_qi <= "1" WHEN redist55_yPS_uid54_i_div_pool_b_1_q = zs_uid110_zCount_uid55_i_div_pool_q ELSE "0";
    vCount_uid112_zCount_uid55_i_div_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid112_zCount_uid55_i_div_pool_qi, xout => vCount_uid112_zCount_uid55_i_div_pool_q, clk => clock, aclr => resetn );

    -- redist39_vCount_uid112_zCount_uid55_i_div_pool_q_5(DELAY,456)
    redist39_vCount_uid112_zCount_uid55_i_div_pool_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid112_zCount_uid55_i_div_pool_q, xout => redist39_vCount_uid112_zCount_uid55_i_div_pool_q_5_q, clk => clock, aclr => resetn );

    -- mO_uid113_zCount_uid55_i_div_pool(CONSTANT,112)
    mO_uid113_zCount_uid55_i_div_pool_q <= "11111111111111111111111111111111";

    -- vStagei_uid115_zCount_uid55_i_div_pool(MUX,114)@4
    vStagei_uid115_zCount_uid55_i_div_pool_s <= vCount_uid112_zCount_uid55_i_div_pool_q;
    vStagei_uid115_zCount_uid55_i_div_pool_combproc: PROCESS (vStagei_uid115_zCount_uid55_i_div_pool_s, redist56_yPS_uid54_i_div_pool_b_2_q, mO_uid113_zCount_uid55_i_div_pool_q)
    BEGIN
        CASE (vStagei_uid115_zCount_uid55_i_div_pool_s) IS
            WHEN "0" => vStagei_uid115_zCount_uid55_i_div_pool_q <= redist56_yPS_uid54_i_div_pool_b_2_q;
            WHEN "1" => vStagei_uid115_zCount_uid55_i_div_pool_q <= mO_uid113_zCount_uid55_i_div_pool_q;
            WHEN OTHERS => vStagei_uid115_zCount_uid55_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select(BITSELECT,410)@4
    rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_b <= vStagei_uid115_zCount_uid55_i_div_pool_q(31 downto 16);
    rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_c <= vStagei_uid115_zCount_uid55_i_div_pool_q(15 downto 0);

    -- vCount_uid118_zCount_uid55_i_div_pool(LOGICAL,117)@4 + 1
    vCount_uid118_zCount_uid55_i_div_pool_qi <= "1" WHEN rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_b = zs_uid116_zCount_uid55_i_div_pool_q ELSE "0";
    vCount_uid118_zCount_uid55_i_div_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid118_zCount_uid55_i_div_pool_qi, xout => vCount_uid118_zCount_uid55_i_div_pool_q, clk => clock, aclr => resetn );

    -- redist38_vCount_uid118_zCount_uid55_i_div_pool_q_4(DELAY,455)
    redist38_vCount_uid118_zCount_uid55_i_div_pool_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid118_zCount_uid55_i_div_pool_q, xout => redist38_vCount_uid118_zCount_uid55_i_div_pool_q_4_q, clk => clock, aclr => resetn );

    -- redist3_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_c_1(DELAY,420)
    redist3_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_c, xout => redist3_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist2_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_b_1(DELAY,419)
    redist2_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_b, xout => redist2_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid121_zCount_uid55_i_div_pool(MUX,120)@5
    vStagei_uid121_zCount_uid55_i_div_pool_s <= vCount_uid118_zCount_uid55_i_div_pool_q;
    vStagei_uid121_zCount_uid55_i_div_pool_combproc: PROCESS (vStagei_uid121_zCount_uid55_i_div_pool_s, redist2_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_b_1_q, redist3_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid121_zCount_uid55_i_div_pool_s) IS
            WHEN "0" => vStagei_uid121_zCount_uid55_i_div_pool_q <= redist2_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid121_zCount_uid55_i_div_pool_q <= redist3_rVStage_uid117_zCount_uid55_i_div_pool_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid121_zCount_uid55_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select(BITSELECT,411)@5
    rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_b <= vStagei_uid121_zCount_uid55_i_div_pool_q(15 downto 8);
    rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_c <= vStagei_uid121_zCount_uid55_i_div_pool_q(7 downto 0);

    -- vCount_uid124_zCount_uid55_i_div_pool(LOGICAL,123)@5 + 1
    vCount_uid124_zCount_uid55_i_div_pool_qi <= "1" WHEN rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_b = zs_uid122_zCount_uid55_i_div_pool_q ELSE "0";
    vCount_uid124_zCount_uid55_i_div_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid124_zCount_uid55_i_div_pool_qi, xout => vCount_uid124_zCount_uid55_i_div_pool_q, clk => clock, aclr => resetn );

    -- redist37_vCount_uid124_zCount_uid55_i_div_pool_q_3(DELAY,454)
    redist37_vCount_uid124_zCount_uid55_i_div_pool_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid124_zCount_uid55_i_div_pool_q, xout => redist37_vCount_uid124_zCount_uid55_i_div_pool_q_3_q, clk => clock, aclr => resetn );

    -- redist1_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_c_1(DELAY,418)
    redist1_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_c, xout => redist1_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist0_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_b_1(DELAY,417)
    redist0_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_b, xout => redist0_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid127_zCount_uid55_i_div_pool(MUX,126)@6
    vStagei_uid127_zCount_uid55_i_div_pool_s <= vCount_uid124_zCount_uid55_i_div_pool_q;
    vStagei_uid127_zCount_uid55_i_div_pool_combproc: PROCESS (vStagei_uid127_zCount_uid55_i_div_pool_s, redist0_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_b_1_q, redist1_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid127_zCount_uid55_i_div_pool_s) IS
            WHEN "0" => vStagei_uid127_zCount_uid55_i_div_pool_q <= redist0_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid127_zCount_uid55_i_div_pool_q <= redist1_rVStage_uid123_zCount_uid55_i_div_pool_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid127_zCount_uid55_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid129_zCount_uid55_i_div_pool_merged_bit_select(BITSELECT,412)@6
    rVStage_uid129_zCount_uid55_i_div_pool_merged_bit_select_b <= vStagei_uid127_zCount_uid55_i_div_pool_q(7 downto 4);
    rVStage_uid129_zCount_uid55_i_div_pool_merged_bit_select_c <= vStagei_uid127_zCount_uid55_i_div_pool_q(3 downto 0);

    -- vCount_uid130_zCount_uid55_i_div_pool(LOGICAL,129)@6
    vCount_uid130_zCount_uid55_i_div_pool_q <= "1" WHEN rVStage_uid129_zCount_uid55_i_div_pool_merged_bit_select_b = zs_uid128_zCount_uid55_i_div_pool_q ELSE "0";

    -- redist36_vCount_uid130_zCount_uid55_i_div_pool_q_2(DELAY,453)
    redist36_vCount_uid130_zCount_uid55_i_div_pool_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid130_zCount_uid55_i_div_pool_q, xout => redist36_vCount_uid130_zCount_uid55_i_div_pool_q_2_q, clk => clock, aclr => resetn );

    -- vStagei_uid133_zCount_uid55_i_div_pool(MUX,132)@6 + 1
    vStagei_uid133_zCount_uid55_i_div_pool_s <= vCount_uid130_zCount_uid55_i_div_pool_q;
    vStagei_uid133_zCount_uid55_i_div_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            vStagei_uid133_zCount_uid55_i_div_pool_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (vStagei_uid133_zCount_uid55_i_div_pool_s) IS
                WHEN "0" => vStagei_uid133_zCount_uid55_i_div_pool_q <= rVStage_uid129_zCount_uid55_i_div_pool_merged_bit_select_b;
                WHEN "1" => vStagei_uid133_zCount_uid55_i_div_pool_q <= rVStage_uid129_zCount_uid55_i_div_pool_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid133_zCount_uid55_i_div_pool_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid135_zCount_uid55_i_div_pool_merged_bit_select(BITSELECT,413)@7
    rVStage_uid135_zCount_uid55_i_div_pool_merged_bit_select_b <= vStagei_uid133_zCount_uid55_i_div_pool_q(3 downto 2);
    rVStage_uid135_zCount_uid55_i_div_pool_merged_bit_select_c <= vStagei_uid133_zCount_uid55_i_div_pool_q(1 downto 0);

    -- vCount_uid136_zCount_uid55_i_div_pool(LOGICAL,135)@7
    vCount_uid136_zCount_uid55_i_div_pool_q <= "1" WHEN rVStage_uid135_zCount_uid55_i_div_pool_merged_bit_select_b = zs_uid134_zCount_uid55_i_div_pool_q ELSE "0";

    -- redist35_vCount_uid136_zCount_uid55_i_div_pool_q_1(DELAY,452)
    redist35_vCount_uid136_zCount_uid55_i_div_pool_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid136_zCount_uid55_i_div_pool_q, xout => redist35_vCount_uid136_zCount_uid55_i_div_pool_q_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid139_zCount_uid55_i_div_pool(MUX,138)@7
    vStagei_uid139_zCount_uid55_i_div_pool_s <= vCount_uid136_zCount_uid55_i_div_pool_q;
    vStagei_uid139_zCount_uid55_i_div_pool_combproc: PROCESS (vStagei_uid139_zCount_uid55_i_div_pool_s, rVStage_uid135_zCount_uid55_i_div_pool_merged_bit_select_b, rVStage_uid135_zCount_uid55_i_div_pool_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid139_zCount_uid55_i_div_pool_s) IS
            WHEN "0" => vStagei_uid139_zCount_uid55_i_div_pool_q <= rVStage_uid135_zCount_uid55_i_div_pool_merged_bit_select_b;
            WHEN "1" => vStagei_uid139_zCount_uid55_i_div_pool_q <= rVStage_uid135_zCount_uid55_i_div_pool_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid139_zCount_uid55_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid141_zCount_uid55_i_div_pool(BITSELECT,140)@7
    rVStage_uid141_zCount_uid55_i_div_pool_b <= vStagei_uid139_zCount_uid55_i_div_pool_q(1 downto 1);

    -- redist34_rVStage_uid141_zCount_uid55_i_div_pool_b_1(DELAY,451)
    redist34_rVStage_uid141_zCount_uid55_i_div_pool_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid141_zCount_uid55_i_div_pool_b, xout => redist34_rVStage_uid141_zCount_uid55_i_div_pool_b_1_q, clk => clock, aclr => resetn );

    -- vCount_uid142_zCount_uid55_i_div_pool(LOGICAL,141)@8
    vCount_uid142_zCount_uid55_i_div_pool_q <= "1" WHEN redist34_rVStage_uid141_zCount_uid55_i_div_pool_b_1_q = GND_q ELSE "0";

    -- r_uid143_zCount_uid55_i_div_pool(BITJOIN,142)@8
    r_uid143_zCount_uid55_i_div_pool_q <= redist39_vCount_uid112_zCount_uid55_i_div_pool_q_5_q & redist38_vCount_uid118_zCount_uid55_i_div_pool_q_4_q & redist37_vCount_uid124_zCount_uid55_i_div_pool_q_3_q & redist36_vCount_uid130_zCount_uid55_i_div_pool_q_2_q & redist35_vCount_uid136_zCount_uid55_i_div_pool_q_1_q & vCount_uid142_zCount_uid55_i_div_pool_q;

    -- leftShiftStageSel5Dto4_uid287_normY_uid56_i_div_pool_merged_bit_select(BITSELECT,414)@8
    leftShiftStageSel5Dto4_uid287_normY_uid56_i_div_pool_merged_bit_select_b <= r_uid143_zCount_uid55_i_div_pool_q(5 downto 4);
    leftShiftStageSel5Dto4_uid287_normY_uid56_i_div_pool_merged_bit_select_c <= r_uid143_zCount_uid55_i_div_pool_q(3 downto 2);
    leftShiftStageSel5Dto4_uid287_normY_uid56_i_div_pool_merged_bit_select_d <= r_uid143_zCount_uid55_i_div_pool_q(1 downto 0);

    -- leftShiftStage2_uid310_normY_uid56_i_div_pool(MUX,309)@8
    leftShiftStage2_uid310_normY_uid56_i_div_pool_s <= leftShiftStageSel5Dto4_uid287_normY_uid56_i_div_pool_merged_bit_select_d;
    leftShiftStage2_uid310_normY_uid56_i_div_pool_combproc: PROCESS (leftShiftStage2_uid310_normY_uid56_i_div_pool_s, leftShiftStage1_uid299_normY_uid56_i_div_pool_q, leftShiftStage2Idx1_uid302_normY_uid56_i_div_pool_q, leftShiftStage2Idx2_uid305_normY_uid56_i_div_pool_q, leftShiftStage2Idx3_uid308_normY_uid56_i_div_pool_q)
    BEGIN
        CASE (leftShiftStage2_uid310_normY_uid56_i_div_pool_s) IS
            WHEN "00" => leftShiftStage2_uid310_normY_uid56_i_div_pool_q <= leftShiftStage1_uid299_normY_uid56_i_div_pool_q;
            WHEN "01" => leftShiftStage2_uid310_normY_uid56_i_div_pool_q <= leftShiftStage2Idx1_uid302_normY_uid56_i_div_pool_q;
            WHEN "10" => leftShiftStage2_uid310_normY_uid56_i_div_pool_q <= leftShiftStage2Idx2_uid305_normY_uid56_i_div_pool_q;
            WHEN "11" => leftShiftStage2_uid310_normY_uid56_i_div_pool_q <= leftShiftStage2Idx3_uid308_normY_uid56_i_div_pool_q;
            WHEN OTHERS => leftShiftStage2_uid310_normY_uid56_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- normYNoLeadOne_uid57_i_div_pool(BITSELECT,56)@8
    normYNoLeadOne_uid57_i_div_pool_in <= leftShiftStage2_uid310_normY_uid56_i_div_pool_q(30 downto 0);
    normYNoLeadOne_uid57_i_div_pool_b <= normYNoLeadOne_uid57_i_div_pool_in(30 downto 0);

    -- yAddr_uid65_i_div_pool_merged_bit_select(BITSELECT,408)@8
    yAddr_uid65_i_div_pool_merged_bit_select_b <= normYNoLeadOne_uid57_i_div_pool_b(30 downto 23);
    yAddr_uid65_i_div_pool_merged_bit_select_c <= normYNoLeadOne_uid57_i_div_pool_b(22 downto 0);

    -- redist8_yAddr_uid65_i_div_pool_merged_bit_select_c_2(DELAY,425)
    redist8_yAddr_uid65_i_div_pool_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yAddr_uid65_i_div_pool_merged_bit_select_c, xout => redist8_yAddr_uid65_i_div_pool_merged_bit_select_c_2_q, clk => clock, aclr => resetn );

    -- redist9_yAddr_uid65_i_div_pool_merged_bit_select_c_5(DELAY,426)
    redist9_yAddr_uid65_i_div_pool_merged_bit_select_c_5 : dspba_delay
    GENERIC MAP ( width => 23, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_yAddr_uid65_i_div_pool_merged_bit_select_c_2_q, xout => redist9_yAddr_uid65_i_div_pool_merged_bit_select_c_5_q, clk => clock, aclr => resetn );

    -- redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_wraddr(REG,509)
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_wraddr_q <= STD_LOGIC_VECTOR(redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem(DUALMEM,507)
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_ia <= STD_LOGIC_VECTOR(redist9_yAddr_uid65_i_div_pool_merged_bit_select_c_5_q);
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_aa <= redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_wraddr_q;
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_ab <= redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_rdcnt_q;
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_reset0 <= not (resetn);
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 23,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 23,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_reset0,
        clock1 => clock,
        address_a => redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_aa,
        data_a => redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_ab,
        q_b => redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_iq
    );
    redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_q <= redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_iq(22 downto 0);

    -- nx_mergedSignalTM_uid198_pT3_uid174_invPolyEval(BITJOIN,197)@17
    nx_mergedSignalTM_uid198_pT3_uid174_invPolyEval_q <= GND_q & redist10_yAddr_uid65_i_div_pool_merged_bit_select_c_9_mem_q;

    -- topRangeX_uid200_pT3_uid174_invPolyEval_merged_bit_select(BITSELECT,416)@17
    topRangeX_uid200_pT3_uid174_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid198_pT3_uid174_invPolyEval_q(23 downto 6));
    topRangeX_uid200_pT3_uid174_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid198_pT3_uid174_invPolyEval_q(5 downto 0));

    -- aboveLeftY_bottomExtension_uid203_pT3_uid174_invPolyEval(CONSTANT,202)
    aboveLeftY_bottomExtension_uid203_pT3_uid174_invPolyEval_q <= "00000";

    -- aboveLeftY_mergedSignalTM_uid205_pT3_uid174_invPolyEval(BITJOIN,204)@17
    aboveLeftY_mergedSignalTM_uid205_pT3_uid174_invPolyEval_q <= topRangeY_uid201_pT3_uid174_invPolyEval_merged_bit_select_c & aboveLeftY_bottomExtension_uid203_pT3_uid174_invPolyEval_q;

    -- memoryC3_uid154_invTabGen_lutmem(DUALMEM,384)@8 + 2
    -- in j@20000000
    memoryC3_uid154_invTabGen_lutmem_aa <= yAddr_uid65_i_div_pool_merged_bit_select_b;
    memoryC3_uid154_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC3_uid154_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 14,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body12_pool_c0_enter2A3ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid154_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid154_invTabGen_lutmem_aa,
        q_a => memoryC3_uid154_invTabGen_lutmem_ir
    );
    memoryC3_uid154_invTabGen_lutmem_r <= memoryC3_uid154_invTabGen_lutmem_ir(13 downto 0);

    -- yT1_uid161_invPolyEval(BITSELECT,160)@10
    yT1_uid161_invPolyEval_b <= redist8_yAddr_uid65_i_div_pool_merged_bit_select_c_2_q(22 downto 9);

    -- prodXY_uid180_pT1_uid162_invPolyEval_cma(CHAINMULTADD,389)@10 + 2
    prodXY_uid180_pT1_uid162_invPolyEval_cma_reset <= not (resetn);
    prodXY_uid180_pT1_uid162_invPolyEval_cma_ena0 <= '1';
    prodXY_uid180_pT1_uid162_invPolyEval_cma_ena1 <= prodXY_uid180_pT1_uid162_invPolyEval_cma_ena0;
    prodXY_uid180_pT1_uid162_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid180_pT1_uid162_invPolyEval_cma_a0(0),15));
    prodXY_uid180_pT1_uid162_invPolyEval_cma_p(0) <= prodXY_uid180_pT1_uid162_invPolyEval_cma_l(0) * prodXY_uid180_pT1_uid162_invPolyEval_cma_c0(0);
    prodXY_uid180_pT1_uid162_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid180_pT1_uid162_invPolyEval_cma_p(0),29);
    prodXY_uid180_pT1_uid162_invPolyEval_cma_w(0) <= prodXY_uid180_pT1_uid162_invPolyEval_cma_u(0);
    prodXY_uid180_pT1_uid162_invPolyEval_cma_x(0) <= prodXY_uid180_pT1_uid162_invPolyEval_cma_w(0);
    prodXY_uid180_pT1_uid162_invPolyEval_cma_y(0) <= prodXY_uid180_pT1_uid162_invPolyEval_cma_x(0);
    prodXY_uid180_pT1_uid162_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid180_pT1_uid162_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid180_pT1_uid162_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid180_pT1_uid162_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid180_pT1_uid162_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid161_invPolyEval_b),14);
                prodXY_uid180_pT1_uid162_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC3_uid154_invTabGen_lutmem_r),14);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid180_pT1_uid162_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid180_pT1_uid162_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid180_pT1_uid162_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid180_pT1_uid162_invPolyEval_cma_s(0) <= prodXY_uid180_pT1_uid162_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid180_pT1_uid162_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid180_pT1_uid162_invPolyEval_cma_s(0)(27 downto 0)), xout => prodXY_uid180_pT1_uid162_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    prodXY_uid180_pT1_uid162_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid180_pT1_uid162_invPolyEval_cma_qq(27 downto 0));

    -- osig_uid181_pT1_uid162_invPolyEval(BITSELECT,180)@12
    osig_uid181_pT1_uid162_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid180_pT1_uid162_invPolyEval_cma_q(27 downto 14));

    -- highBBits_uid164_invPolyEval(BITSELECT,163)@12
    highBBits_uid164_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid181_pT1_uid162_invPolyEval_b(13 downto 1));

    -- redist5_yAddr_uid65_i_div_pool_merged_bit_select_b_2(DELAY,422)
    redist5_yAddr_uid65_i_div_pool_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yAddr_uid65_i_div_pool_merged_bit_select_b, xout => redist5_yAddr_uid65_i_div_pool_merged_bit_select_b_2_q, clk => clock, aclr => resetn );

    -- memoryC2_uid151_invTabGen_lutmem(DUALMEM,383)@10 + 2
    -- in j@20000000
    memoryC2_uid151_invTabGen_lutmem_aa <= redist5_yAddr_uid65_i_div_pool_merged_bit_select_b_2_q;
    memoryC2_uid151_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC2_uid151_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 21,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body12_pool_c0_enter2A2ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid151_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid151_invTabGen_lutmem_aa,
        q_a => memoryC2_uid151_invTabGen_lutmem_ir
    );
    memoryC2_uid151_invTabGen_lutmem_r <= memoryC2_uid151_invTabGen_lutmem_ir(20 downto 0);

    -- s1sumAHighB_uid165_invPolyEval(ADD,164)@12 + 1
    s1sumAHighB_uid165_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => memoryC2_uid151_invTabGen_lutmem_r(20)) & memoryC2_uid151_invTabGen_lutmem_r));
    s1sumAHighB_uid165_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 13 => highBBits_uid164_invPolyEval_b(12)) & highBBits_uid164_invPolyEval_b));
    s1sumAHighB_uid165_invPolyEval_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            s1sumAHighB_uid165_invPolyEval_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            s1sumAHighB_uid165_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid165_invPolyEval_a) + SIGNED(s1sumAHighB_uid165_invPolyEval_b));
        END IF;
    END PROCESS;
    s1sumAHighB_uid165_invPolyEval_q <= s1sumAHighB_uid165_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid163_invPolyEval(BITSELECT,162)@12
    lowRangeB_uid163_invPolyEval_in <= osig_uid181_pT1_uid162_invPolyEval_b(0 downto 0);
    lowRangeB_uid163_invPolyEval_b <= lowRangeB_uid163_invPolyEval_in(0 downto 0);

    -- redist32_lowRangeB_uid163_invPolyEval_b_1(DELAY,449)
    redist32_lowRangeB_uid163_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => lowRangeB_uid163_invPolyEval_b, xout => redist32_lowRangeB_uid163_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- s1_uid166_invPolyEval(BITJOIN,165)@13
    s1_uid166_invPolyEval_q <= s1sumAHighB_uid165_invPolyEval_q & redist32_lowRangeB_uid163_invPolyEval_b_1_q;

    -- yT2_uid167_invPolyEval(BITSELECT,166)@13
    yT2_uid167_invPolyEval_b <= redist9_yAddr_uid65_i_div_pool_merged_bit_select_c_5_q(22 downto 2);

    -- prodXY_uid183_pT2_uid168_invPolyEval_cma(CHAINMULTADD,390)@13 + 2
    prodXY_uid183_pT2_uid168_invPolyEval_cma_reset <= not (resetn);
    prodXY_uid183_pT2_uid168_invPolyEval_cma_ena0 <= '1';
    prodXY_uid183_pT2_uid168_invPolyEval_cma_ena1 <= prodXY_uid183_pT2_uid168_invPolyEval_cma_ena0;
    prodXY_uid183_pT2_uid168_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid183_pT2_uid168_invPolyEval_cma_a0(0),22));
    prodXY_uid183_pT2_uid168_invPolyEval_cma_p(0) <= prodXY_uid183_pT2_uid168_invPolyEval_cma_l(0) * prodXY_uid183_pT2_uid168_invPolyEval_cma_c0(0);
    prodXY_uid183_pT2_uid168_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid183_pT2_uid168_invPolyEval_cma_p(0),45);
    prodXY_uid183_pT2_uid168_invPolyEval_cma_w(0) <= prodXY_uid183_pT2_uid168_invPolyEval_cma_u(0);
    prodXY_uid183_pT2_uid168_invPolyEval_cma_x(0) <= prodXY_uid183_pT2_uid168_invPolyEval_cma_w(0);
    prodXY_uid183_pT2_uid168_invPolyEval_cma_y(0) <= prodXY_uid183_pT2_uid168_invPolyEval_cma_x(0);
    prodXY_uid183_pT2_uid168_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid183_pT2_uid168_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid183_pT2_uid168_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid183_pT2_uid168_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid183_pT2_uid168_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT2_uid167_invPolyEval_b),21);
                prodXY_uid183_pT2_uid168_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid166_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid183_pT2_uid168_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid183_pT2_uid168_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid183_pT2_uid168_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid183_pT2_uid168_invPolyEval_cma_s(0) <= prodXY_uid183_pT2_uid168_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid183_pT2_uid168_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 44, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid183_pT2_uid168_invPolyEval_cma_s(0)(43 downto 0)), xout => prodXY_uid183_pT2_uid168_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    prodXY_uid183_pT2_uid168_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid183_pT2_uid168_invPolyEval_cma_qq(43 downto 0));

    -- osig_uid184_pT2_uid168_invPolyEval(BITSELECT,183)@15
    osig_uid184_pT2_uid168_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid183_pT2_uid168_invPolyEval_cma_q(43 downto 21));

    -- redist28_osig_uid184_pT2_uid168_invPolyEval_b_1(DELAY,445)
    redist28_osig_uid184_pT2_uid168_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => osig_uid184_pT2_uid168_invPolyEval_b, xout => redist28_osig_uid184_pT2_uid168_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid170_invPolyEval(BITSELECT,169)@16
    highBBits_uid170_invPolyEval_b <= STD_LOGIC_VECTOR(redist28_osig_uid184_pT2_uid168_invPolyEval_b_1_q(22 downto 1));

    -- redist6_yAddr_uid65_i_div_pool_merged_bit_select_b_5(DELAY,423)
    redist6_yAddr_uid65_i_div_pool_merged_bit_select_b_5 : dspba_delay
    GENERIC MAP ( width => 8, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_yAddr_uid65_i_div_pool_merged_bit_select_b_2_q, xout => redist6_yAddr_uid65_i_div_pool_merged_bit_select_b_5_q, clk => clock, aclr => resetn );

    -- memoryC1_uid148_invTabGen_lutmem(DUALMEM,382)@13 + 2
    -- in j@20000000
    memoryC1_uid148_invTabGen_lutmem_aa <= redist6_yAddr_uid65_i_div_pool_merged_bit_select_b_5_q;
    memoryC1_uid148_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC1_uid148_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 29,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body12_pool_c0_enter2A1ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid148_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid148_invTabGen_lutmem_aa,
        q_a => memoryC1_uid148_invTabGen_lutmem_ir
    );
    memoryC1_uid148_invTabGen_lutmem_r <= memoryC1_uid148_invTabGen_lutmem_ir(28 downto 0);

    -- redist25_memoryC1_uid148_invTabGen_lutmem_r_1(DELAY,442)
    redist25_memoryC1_uid148_invTabGen_lutmem_r_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => memoryC1_uid148_invTabGen_lutmem_r, xout => redist25_memoryC1_uid148_invTabGen_lutmem_r_1_q, clk => clock, aclr => resetn );

    -- s2sumAHighB_uid171_invPolyEval(ADD,170)@16 + 1
    s2sumAHighB_uid171_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => redist25_memoryC1_uid148_invTabGen_lutmem_r_1_q(28)) & redist25_memoryC1_uid148_invTabGen_lutmem_r_1_q));
    s2sumAHighB_uid171_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => highBBits_uid170_invPolyEval_b(21)) & highBBits_uid170_invPolyEval_b));
    s2sumAHighB_uid171_invPolyEval_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            s2sumAHighB_uid171_invPolyEval_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            s2sumAHighB_uid171_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid171_invPolyEval_a) + SIGNED(s2sumAHighB_uid171_invPolyEval_b));
        END IF;
    END PROCESS;
    s2sumAHighB_uid171_invPolyEval_q <= s2sumAHighB_uid171_invPolyEval_o(29 downto 0);

    -- lowRangeB_uid169_invPolyEval(BITSELECT,168)@16
    lowRangeB_uid169_invPolyEval_in <= redist28_osig_uid184_pT2_uid168_invPolyEval_b_1_q(0 downto 0);
    lowRangeB_uid169_invPolyEval_b <= lowRangeB_uid169_invPolyEval_in(0 downto 0);

    -- redist31_lowRangeB_uid169_invPolyEval_b_1(DELAY,448)
    redist31_lowRangeB_uid169_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => lowRangeB_uid169_invPolyEval_b, xout => redist31_lowRangeB_uid169_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- s2_uid172_invPolyEval(BITJOIN,171)@17
    s2_uid172_invPolyEval_q <= s2sumAHighB_uid171_invPolyEval_q & redist31_lowRangeB_uid169_invPolyEval_b_1_q;

    -- topRangeY_uid201_pT3_uid174_invPolyEval_merged_bit_select(BITSELECT,415)@17
    topRangeY_uid201_pT3_uid174_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(s2_uid172_invPolyEval_q(30 downto 13));
    topRangeY_uid201_pT3_uid174_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(s2_uid172_invPolyEval_q(12 downto 0));

    -- rightBottomX_mergedSignalTM_uid209_pT3_uid174_invPolyEval(BITJOIN,208)@17
    rightBottomX_mergedSignalTM_uid209_pT3_uid174_invPolyEval_q <= topRangeX_uid200_pT3_uid174_invPolyEval_merged_bit_select_c & rightBottomX_bottomExtension_uid207_pT3_uid174_invPolyEval_q;

    -- multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma(CHAINMULTADD,400)@17 + 2
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_reset <= not (resetn);
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ena0 <= '1';
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ena1 <= multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ena0;
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_l(0) <= SIGNED(RESIZE(multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_a0(0),19));
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_l(1) <= SIGNED(RESIZE(multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_a0(1),19));
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_p(0) <= multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_l(0) * multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_c0(0);
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_p(1) <= multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_l(1) * multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_c0(1);
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_u(0) <= RESIZE(multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_p(0),38);
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_u(1) <= RESIZE(multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_p(1),38);
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_w(0) <= multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_u(0) + multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_u(1);
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_x(0) <= multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_w(0);
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_y(0) <= multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_x(0);
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_a0 <= (others => (others => '0'));
            multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ena0 = '1') THEN
                multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(rightBottomX_mergedSignalTM_uid209_pT3_uid174_invPolyEval_q),18);
                multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_a0(1) <= RESIZE(UNSIGNED(aboveLeftY_mergedSignalTM_uid205_pT3_uid174_invPolyEval_q),18);
                multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid201_pT3_uid174_invPolyEval_merged_bit_select_b),18);
                multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_c0(1) <= RESIZE(SIGNED(topRangeX_uid200_pT3_uid174_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_ena1 = '1') THEN
                multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_s(0) <= multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 37, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_s(0)(36 downto 0)), xout => multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_q <= STD_LOGIC_VECTOR(multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_qq(36 downto 0));

    -- redist15_multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_q_1(DELAY,432)
    redist15_multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_q, xout => redist15_multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_q_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid216_pT3_uid174_invPolyEval(BITSELECT,215)@20
    highBBits_uid216_pT3_uid174_invPolyEval_b <= STD_LOGIC_VECTOR(redist15_multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_q_1_q(36 downto 18));

    -- sm0_uid212_pT3_uid174_invPolyEval_cma(CHAINMULTADD,391)@17 + 2
    sm0_uid212_pT3_uid174_invPolyEval_cma_reset <= not (resetn);
    sm0_uid212_pT3_uid174_invPolyEval_cma_ena0 <= '1';
    sm0_uid212_pT3_uid174_invPolyEval_cma_ena1 <= sm0_uid212_pT3_uid174_invPolyEval_cma_ena0;
    sm0_uid212_pT3_uid174_invPolyEval_cma_p(0) <= sm0_uid212_pT3_uid174_invPolyEval_cma_a0(0) * sm0_uid212_pT3_uid174_invPolyEval_cma_c0(0);
    sm0_uid212_pT3_uid174_invPolyEval_cma_u(0) <= RESIZE(sm0_uid212_pT3_uid174_invPolyEval_cma_p(0),36);
    sm0_uid212_pT3_uid174_invPolyEval_cma_w(0) <= sm0_uid212_pT3_uid174_invPolyEval_cma_u(0);
    sm0_uid212_pT3_uid174_invPolyEval_cma_x(0) <= sm0_uid212_pT3_uid174_invPolyEval_cma_w(0);
    sm0_uid212_pT3_uid174_invPolyEval_cma_y(0) <= sm0_uid212_pT3_uid174_invPolyEval_cma_x(0);
    sm0_uid212_pT3_uid174_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            sm0_uid212_pT3_uid174_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid212_pT3_uid174_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (sm0_uid212_pT3_uid174_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid212_pT3_uid174_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_uid200_pT3_uid174_invPolyEval_merged_bit_select_b),18);
                sm0_uid212_pT3_uid174_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid201_pT3_uid174_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid212_pT3_uid174_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            sm0_uid212_pT3_uid174_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (sm0_uid212_pT3_uid174_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid212_pT3_uid174_invPolyEval_cma_s(0) <= sm0_uid212_pT3_uid174_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid212_pT3_uid174_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid212_pT3_uid174_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid212_pT3_uid174_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    sm0_uid212_pT3_uid174_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid212_pT3_uid174_invPolyEval_cma_qq(35 downto 0));

    -- redist24_sm0_uid212_pT3_uid174_invPolyEval_cma_q_1(DELAY,441)
    redist24_sm0_uid212_pT3_uid174_invPolyEval_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => sm0_uid212_pT3_uid174_invPolyEval_cma_q, xout => redist24_sm0_uid212_pT3_uid174_invPolyEval_cma_q_1_q, clk => clock, aclr => resetn );

    -- lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval(ADD,216)@20
    lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 36 => redist24_sm0_uid212_pT3_uid174_invPolyEval_cma_q_1_q(35)) & redist24_sm0_uid212_pT3_uid174_invPolyEval_cma_q_1_q));
    lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 19 => highBBits_uid216_pT3_uid174_invPolyEval_b(18)) & highBBits_uid216_pT3_uid174_invPolyEval_b));
    lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_b));
    lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_q <= lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_o(36 downto 0);

    -- lowRangeB_uid215_pT3_uid174_invPolyEval(BITSELECT,214)@20
    lowRangeB_uid215_pT3_uid174_invPolyEval_in <= redist15_multSumOfTwoTS_uid213_pT3_uid174_invPolyEval_cma_q_1_q(17 downto 0);
    lowRangeB_uid215_pT3_uid174_invPolyEval_b <= lowRangeB_uid215_pT3_uid174_invPolyEval_in(17 downto 0);

    -- lev1_a0_uid218_pT3_uid174_invPolyEval(BITJOIN,217)@20
    lev1_a0_uid218_pT3_uid174_invPolyEval_q <= lev1_a0sumAHighB_uid217_pT3_uid174_invPolyEval_q & lowRangeB_uid215_pT3_uid174_invPolyEval_b;

    -- os_uid219_pT3_uid174_invPolyEval(BITSELECT,218)@20
    os_uid219_pT3_uid174_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid218_pT3_uid174_invPolyEval_q(52 downto 0));
    os_uid219_pT3_uid174_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid219_pT3_uid174_invPolyEval_in(52 downto 21));

    -- highBBits_uid176_invPolyEval(BITSELECT,175)@20
    highBBits_uid176_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid219_pT3_uid174_invPolyEval_b(31 downto 2));

    -- redist29_highBBits_uid176_invPolyEval_b_1(DELAY,446)
    redist29_highBBits_uid176_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => highBBits_uid176_invPolyEval_b, xout => redist29_highBBits_uid176_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_notEnable(LOGICAL,503)
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_nor(LOGICAL,504)
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_nor_q <= not (redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_notEnable_q or redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_sticky_ena_q);

    -- redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_last(CONSTANT,500)
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_last_q <= "010";

    -- redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmp(LOGICAL,501)
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmp_b <= STD_LOGIC_VECTOR("0" & redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_q);
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmp_q <= "1" WHEN redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_last_q = redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmp_b ELSE "0";

    -- redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmpReg(REG,502)
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmpReg_q <= STD_LOGIC_VECTOR(redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmp_q);
        END IF;
    END PROCESS;

    -- redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_sticky_ena(REG,505)
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_nor_q = "1") THEN
                redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_sticky_ena_q <= STD_LOGIC_VECTOR(redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_enaAnd(LOGICAL,506)
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_enaAnd_q <= redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_sticky_ena_q and VCC_q;

    -- redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt(COUNTER,498)
    -- low=0, high=3, step=1, init=0
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_i <= redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_i, 2)));

    -- redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_wraddr(REG,499)
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_wraddr_q <= STD_LOGIC_VECTOR(redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem(DUALMEM,497)
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_ia <= STD_LOGIC_VECTOR(redist6_yAddr_uid65_i_div_pool_merged_bit_select_b_5_q);
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_aa <= redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_wraddr_q;
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_ab <= redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_rdcnt_q;
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_reset0 <= not (resetn);
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 8,
        widthad_b => 2,
        numwords_b => 4,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_reset0,
        clock1 => clock,
        address_a => redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_aa,
        data_a => redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_ab,
        q_b => redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_iq
    );
    redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_q <= redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_iq(7 downto 0);

    -- memoryC0_uid145_invTabGen_lutmem(DUALMEM,381)@18 + 2
    -- in j@20000000
    memoryC0_uid145_invTabGen_lutmem_aa <= redist7_yAddr_uid65_i_div_pool_merged_bit_select_b_10_mem_q;
    memoryC0_uid145_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC0_uid145_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 38,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "i_sfc_logic_c0_for_body12_pool_c0_enter2A0ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid145_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid145_invTabGen_lutmem_aa,
        q_a => memoryC0_uid145_invTabGen_lutmem_ir
    );
    memoryC0_uid145_invTabGen_lutmem_r <= memoryC0_uid145_invTabGen_lutmem_ir(37 downto 0);

    -- redist26_memoryC0_uid145_invTabGen_lutmem_r_1(DELAY,443)
    redist26_memoryC0_uid145_invTabGen_lutmem_r_1 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => memoryC0_uid145_invTabGen_lutmem_r, xout => redist26_memoryC0_uid145_invTabGen_lutmem_r_1_q, clk => clock, aclr => resetn );

    -- s3sumAHighB_uid177_invPolyEval(ADD,176)@21
    s3sumAHighB_uid177_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 38 => redist26_memoryC0_uid145_invTabGen_lutmem_r_1_q(37)) & redist26_memoryC0_uid145_invTabGen_lutmem_r_1_q));
    s3sumAHighB_uid177_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 30 => redist29_highBBits_uid176_invPolyEval_b_1_q(29)) & redist29_highBBits_uid176_invPolyEval_b_1_q));
    s3sumAHighB_uid177_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s3sumAHighB_uid177_invPolyEval_a) + SIGNED(s3sumAHighB_uid177_invPolyEval_b));
    s3sumAHighB_uid177_invPolyEval_q <= s3sumAHighB_uid177_invPolyEval_o(38 downto 0);

    -- lowRangeB_uid175_invPolyEval(BITSELECT,174)@20
    lowRangeB_uid175_invPolyEval_in <= os_uid219_pT3_uid174_invPolyEval_b(1 downto 0);
    lowRangeB_uid175_invPolyEval_b <= lowRangeB_uid175_invPolyEval_in(1 downto 0);

    -- redist30_lowRangeB_uid175_invPolyEval_b_1(DELAY,447)
    redist30_lowRangeB_uid175_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => lowRangeB_uid175_invPolyEval_b, xout => redist30_lowRangeB_uid175_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- s3_uid178_invPolyEval(BITJOIN,177)@21
    s3_uid178_invPolyEval_q <= s3sumAHighB_uid177_invPolyEval_q & redist30_lowRangeB_uid175_invPolyEval_b_1_q;

    -- fxpInverseRes_uid68_i_div_pool(BITSELECT,67)@21
    fxpInverseRes_uid68_i_div_pool_in <= s3_uid178_invPolyEval_q(38 downto 0);
    fxpInverseRes_uid68_i_div_pool_b <= fxpInverseRes_uid68_i_div_pool_in(38 downto 6);

    -- redist51_fxpInverseRes_uid68_i_div_pool_b_1(DELAY,468)
    redist51_fxpInverseRes_uid68_i_div_pool_b_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fxpInverseRes_uid68_i_div_pool_b, xout => redist51_fxpInverseRes_uid68_i_div_pool_b_1_q, clk => clock, aclr => resetn );

    -- paddingY_uid58_i_div_pool(CONSTANT,57)
    paddingY_uid58_i_div_pool_q <= "0000000000000000000000000000000";

    -- updatedY_uid59_i_div_pool(BITJOIN,58)@9
    updatedY_uid59_i_div_pool_q <= GND_q & paddingY_uid58_i_div_pool_q;

    -- redist54_normYNoLeadOne_uid57_i_div_pool_b_1(DELAY,471)
    redist54_normYNoLeadOne_uid57_i_div_pool_b_1 : dspba_delay
    GENERIC MAP ( width => 31, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYNoLeadOne_uid57_i_div_pool_b, xout => redist54_normYNoLeadOne_uid57_i_div_pool_b_1_q, clk => clock, aclr => resetn );

    -- normYIsOneC2_uid58_i_div_pool(LOGICAL,59)@9 + 1
    normYIsOneC2_uid58_i_div_pool_a <= STD_LOGIC_VECTOR("0" & redist54_normYNoLeadOne_uid57_i_div_pool_b_1_q);
    normYIsOneC2_uid58_i_div_pool_qi <= "1" WHEN normYIsOneC2_uid58_i_div_pool_a = updatedY_uid59_i_div_pool_q ELSE "0";
    normYIsOneC2_uid58_i_div_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOneC2_uid58_i_div_pool_qi, xout => normYIsOneC2_uid58_i_div_pool_q, clk => clock, aclr => resetn );

    -- normYIsOneC2_uid61_i_div_pool(BITSELECT,60)@8
    normYIsOneC2_uid61_i_div_pool_b <= STD_LOGIC_VECTOR(leftShiftStage2_uid310_normY_uid56_i_div_pool_q(31 downto 31));

    -- redist53_normYIsOneC2_uid61_i_div_pool_b_2(DELAY,470)
    redist53_normYIsOneC2_uid61_i_div_pool_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOneC2_uid61_i_div_pool_b, xout => redist53_normYIsOneC2_uid61_i_div_pool_b_2_q, clk => clock, aclr => resetn );

    -- normYIsOne_uid62_i_div_pool(LOGICAL,61)@10 + 1
    normYIsOne_uid62_i_div_pool_qi <= redist53_normYIsOneC2_uid61_i_div_pool_b_2_q and normYIsOneC2_uid58_i_div_pool_q;
    normYIsOne_uid62_i_div_pool_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOne_uid62_i_div_pool_qi, xout => normYIsOne_uid62_i_div_pool_q, clk => clock, aclr => resetn );

    -- redist52_normYIsOne_uid62_i_div_pool_q_12(DELAY,469)
    redist52_normYIsOne_uid62_i_div_pool_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 11, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOne_uid62_i_div_pool_q, xout => redist52_normYIsOne_uid62_i_div_pool_q_12_q, clk => clock, aclr => resetn );

    -- invResPostOneHandling2_uid70_i_div_pool(MUX,69)@22
    invResPostOneHandling2_uid70_i_div_pool_s <= redist52_normYIsOne_uid62_i_div_pool_q_12_q;
    invResPostOneHandling2_uid70_i_div_pool_combproc: PROCESS (invResPostOneHandling2_uid70_i_div_pool_s, redist51_fxpInverseRes_uid68_i_div_pool_b_1_q, oneInvRes_uid69_i_div_pool_q)
    BEGIN
        CASE (invResPostOneHandling2_uid70_i_div_pool_s) IS
            WHEN "0" => invResPostOneHandling2_uid70_i_div_pool_q <= redist51_fxpInverseRes_uid68_i_div_pool_b_1_q;
            WHEN "1" => invResPostOneHandling2_uid70_i_div_pool_q <= oneInvRes_uid69_i_div_pool_q;
            WHEN OTHERS => invResPostOneHandling2_uid70_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodXInvY_uid78_i_div_pool_bs6(BITSELECT,317)@22
    prodXInvY_uid78_i_div_pool_bs6_b <= invResPostOneHandling2_uid70_i_div_pool_q(32 downto 18);

    -- redist49_xPSXE_uid76_i_div_pool_q_2(DELAY,466)
    redist49_xPSXE_uid76_i_div_pool_q_2 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xPSXE_uid76_i_div_pool_q, xout => redist49_xPSXE_uid76_i_div_pool_q_2_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid78_i_div_pool_bs7(BITSELECT,318)@23
    prodXInvY_uid78_i_div_pool_bs7_b <= STD_LOGIC_VECTOR(redist49_xPSXE_uid76_i_div_pool_q_2_q(32 downto 18));

    -- redist50_invResPostOneHandling2_uid70_i_div_pool_q_1(DELAY,467)
    redist50_invResPostOneHandling2_uid70_i_div_pool_q_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => invResPostOneHandling2_uid70_i_div_pool_q, xout => redist50_invResPostOneHandling2_uid70_i_div_pool_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid78_i_div_pool_bs2(BITSELECT,313)@23
    prodXInvY_uid78_i_div_pool_bs2_in <= redist50_invResPostOneHandling2_uid70_i_div_pool_q_1_q(17 downto 0);
    prodXInvY_uid78_i_div_pool_bs2_b <= prodXInvY_uid78_i_div_pool_bs2_in(17 downto 0);

    -- prodXInvY_uid78_i_div_pool_ma3_cma(CHAINMULTADD,403)@22 + 2
    -- in e@23
    -- in g@23
    -- out q@25
    prodXInvY_uid78_i_div_pool_ma3_cma_reset <= not (resetn);
    prodXInvY_uid78_i_div_pool_ma3_cma_ena0 <= '1';
    prodXInvY_uid78_i_div_pool_ma3_cma_ena1 <= prodXInvY_uid78_i_div_pool_ma3_cma_ena0;
    prodXInvY_uid78_i_div_pool_ma3_cma_l(0) <= SIGNED(RESIZE(prodXInvY_uid78_i_div_pool_ma3_cma_a0(0),19));
    prodXInvY_uid78_i_div_pool_ma3_cma_l(1) <= SIGNED(RESIZE(prodXInvY_uid78_i_div_pool_ma3_cma_a0(1),19));
    prodXInvY_uid78_i_div_pool_ma3_cma_p(0) <= prodXInvY_uid78_i_div_pool_ma3_cma_l(0) * prodXInvY_uid78_i_div_pool_ma3_cma_c0(0);
    prodXInvY_uid78_i_div_pool_ma3_cma_p(1) <= prodXInvY_uid78_i_div_pool_ma3_cma_l(1) * prodXInvY_uid78_i_div_pool_ma3_cma_c0(1);
    prodXInvY_uid78_i_div_pool_ma3_cma_u(0) <= RESIZE(prodXInvY_uid78_i_div_pool_ma3_cma_p(0),39);
    prodXInvY_uid78_i_div_pool_ma3_cma_u(1) <= RESIZE(prodXInvY_uid78_i_div_pool_ma3_cma_p(1),39);
    prodXInvY_uid78_i_div_pool_ma3_cma_w(0) <= prodXInvY_uid78_i_div_pool_ma3_cma_u(0);
    prodXInvY_uid78_i_div_pool_ma3_cma_w(1) <= prodXInvY_uid78_i_div_pool_ma3_cma_u(1);
    prodXInvY_uid78_i_div_pool_ma3_cma_x(0) <= prodXInvY_uid78_i_div_pool_ma3_cma_w(0);
    prodXInvY_uid78_i_div_pool_ma3_cma_x(1) <= prodXInvY_uid78_i_div_pool_ma3_cma_w(1);
    prodXInvY_uid78_i_div_pool_ma3_cma_y(0) <= prodXInvY_uid78_i_div_pool_ma3_cma_s(1) + prodXInvY_uid78_i_div_pool_ma3_cma_x(0);
    prodXInvY_uid78_i_div_pool_ma3_cma_y(1) <= prodXInvY_uid78_i_div_pool_ma3_cma_x(1);
    prodXInvY_uid78_i_div_pool_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid78_i_div_pool_ma3_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid78_i_div_pool_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid78_i_div_pool_ma3_cma_ena0 = '1') THEN
                prodXInvY_uid78_i_div_pool_ma3_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid78_i_div_pool_bs2_b),18);
                prodXInvY_uid78_i_div_pool_ma3_cma_a0(1) <= RESIZE(UNSIGNED(prodXInvY_uid78_i_div_pool_bs6_b),18);
                prodXInvY_uid78_i_div_pool_ma3_cma_c0(0) <= RESIZE(SIGNED(prodXInvY_uid78_i_div_pool_bs7_b),19);
                prodXInvY_uid78_i_div_pool_ma3_cma_c0(1) <= RESIZE(SIGNED(prodXInvY_uid78_i_div_pool_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid78_i_div_pool_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid78_i_div_pool_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid78_i_div_pool_ma3_cma_ena1 = '1') THEN
                prodXInvY_uid78_i_div_pool_ma3_cma_s(0) <= prodXInvY_uid78_i_div_pool_ma3_cma_y(0);
                prodXInvY_uid78_i_div_pool_ma3_cma_s(1) <= prodXInvY_uid78_i_div_pool_ma3_cma_y(1);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid78_i_div_pool_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 38, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid78_i_div_pool_ma3_cma_s(0)(37 downto 0)), xout => prodXInvY_uid78_i_div_pool_ma3_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid78_i_div_pool_ma3_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid78_i_div_pool_ma3_cma_qq(37 downto 0));

    -- redist12_prodXInvY_uid78_i_div_pool_ma3_cma_q_1(DELAY,429)
    redist12_prodXInvY_uid78_i_div_pool_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid78_i_div_pool_ma3_cma_q, xout => redist12_prodXInvY_uid78_i_div_pool_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid78_i_div_pool_align_13(BITSHIFT,324)@26
    prodXInvY_uid78_i_div_pool_align_13_qint <= redist12_prodXInvY_uid78_i_div_pool_ma3_cma_q_1_q & "000000000000000000";
    prodXInvY_uid78_i_div_pool_align_13_q <= prodXInvY_uid78_i_div_pool_align_13_qint(55 downto 0);

    -- prodXInvY_uid78_i_div_pool_bs10(BITSELECT,321)@23
    prodXInvY_uid78_i_div_pool_bs10_b <= redist49_xPSXE_uid76_i_div_pool_q_2_q(32 downto 18);

    -- prodXInvY_uid78_i_div_pool_bs11(BITSELECT,322)@23
    prodXInvY_uid78_i_div_pool_bs11_b <= STD_LOGIC_VECTOR(redist50_invResPostOneHandling2_uid70_i_div_pool_q_1_q(32 downto 18));

    -- prodXInvY_uid78_i_div_pool_im9_cma(CHAINMULTADD,397)@23 + 2
    prodXInvY_uid78_i_div_pool_im9_cma_reset <= not (resetn);
    prodXInvY_uid78_i_div_pool_im9_cma_ena0 <= '1';
    prodXInvY_uid78_i_div_pool_im9_cma_ena1 <= prodXInvY_uid78_i_div_pool_im9_cma_ena0;
    prodXInvY_uid78_i_div_pool_im9_cma_l(0) <= SIGNED(RESIZE(prodXInvY_uid78_i_div_pool_im9_cma_a0(0),16));
    prodXInvY_uid78_i_div_pool_im9_cma_p(0) <= prodXInvY_uid78_i_div_pool_im9_cma_l(0) * prodXInvY_uid78_i_div_pool_im9_cma_c0(0);
    prodXInvY_uid78_i_div_pool_im9_cma_u(0) <= RESIZE(prodXInvY_uid78_i_div_pool_im9_cma_p(0),31);
    prodXInvY_uid78_i_div_pool_im9_cma_w(0) <= prodXInvY_uid78_i_div_pool_im9_cma_u(0);
    prodXInvY_uid78_i_div_pool_im9_cma_x(0) <= prodXInvY_uid78_i_div_pool_im9_cma_w(0);
    prodXInvY_uid78_i_div_pool_im9_cma_y(0) <= prodXInvY_uid78_i_div_pool_im9_cma_x(0);
    prodXInvY_uid78_i_div_pool_im9_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid78_i_div_pool_im9_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid78_i_div_pool_im9_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid78_i_div_pool_im9_cma_ena0 = '1') THEN
                prodXInvY_uid78_i_div_pool_im9_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid78_i_div_pool_bs11_b),15);
                prodXInvY_uid78_i_div_pool_im9_cma_c0(0) <= RESIZE(SIGNED(prodXInvY_uid78_i_div_pool_bs10_b),15);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid78_i_div_pool_im9_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid78_i_div_pool_im9_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid78_i_div_pool_im9_cma_ena1 = '1') THEN
                prodXInvY_uid78_i_div_pool_im9_cma_s(0) <= prodXInvY_uid78_i_div_pool_im9_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid78_i_div_pool_im9_cma_delay : dspba_delay
    GENERIC MAP ( width => 30, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid78_i_div_pool_im9_cma_s(0)(29 downto 0)), xout => prodXInvY_uid78_i_div_pool_im9_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid78_i_div_pool_im9_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid78_i_div_pool_im9_cma_qq(29 downto 0));

    -- redist18_prodXInvY_uid78_i_div_pool_im9_cma_q_1(DELAY,435)
    redist18_prodXInvY_uid78_i_div_pool_im9_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid78_i_div_pool_im9_cma_q, xout => redist18_prodXInvY_uid78_i_div_pool_im9_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid78_i_div_pool_bs1(BITSELECT,312)@23
    prodXInvY_uid78_i_div_pool_bs1_in <= redist49_xPSXE_uid76_i_div_pool_q_2_q(17 downto 0);
    prodXInvY_uid78_i_div_pool_bs1_b <= prodXInvY_uid78_i_div_pool_bs1_in(17 downto 0);

    -- prodXInvY_uid78_i_div_pool_im0_cma(CHAINMULTADD,396)@23 + 2
    prodXInvY_uid78_i_div_pool_im0_cma_reset <= not (resetn);
    prodXInvY_uid78_i_div_pool_im0_cma_ena0 <= '1';
    prodXInvY_uid78_i_div_pool_im0_cma_ena1 <= prodXInvY_uid78_i_div_pool_im0_cma_ena0;
    prodXInvY_uid78_i_div_pool_im0_cma_p(0) <= prodXInvY_uid78_i_div_pool_im0_cma_a0(0) * prodXInvY_uid78_i_div_pool_im0_cma_c0(0);
    prodXInvY_uid78_i_div_pool_im0_cma_u(0) <= RESIZE(prodXInvY_uid78_i_div_pool_im0_cma_p(0),36);
    prodXInvY_uid78_i_div_pool_im0_cma_w(0) <= prodXInvY_uid78_i_div_pool_im0_cma_u(0);
    prodXInvY_uid78_i_div_pool_im0_cma_x(0) <= prodXInvY_uid78_i_div_pool_im0_cma_w(0);
    prodXInvY_uid78_i_div_pool_im0_cma_y(0) <= prodXInvY_uid78_i_div_pool_im0_cma_x(0);
    prodXInvY_uid78_i_div_pool_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid78_i_div_pool_im0_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid78_i_div_pool_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid78_i_div_pool_im0_cma_ena0 = '1') THEN
                prodXInvY_uid78_i_div_pool_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid78_i_div_pool_bs1_b),18);
                prodXInvY_uid78_i_div_pool_im0_cma_c0(0) <= RESIZE(UNSIGNED(prodXInvY_uid78_i_div_pool_bs2_b),18);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid78_i_div_pool_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid78_i_div_pool_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid78_i_div_pool_im0_cma_ena1 = '1') THEN
                prodXInvY_uid78_i_div_pool_im0_cma_s(0) <= prodXInvY_uid78_i_div_pool_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid78_i_div_pool_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid78_i_div_pool_im0_cma_s(0)(35 downto 0)), xout => prodXInvY_uid78_i_div_pool_im0_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid78_i_div_pool_im0_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid78_i_div_pool_im0_cma_qq(35 downto 0));

    -- redist19_prodXInvY_uid78_i_div_pool_im0_cma_q_1(DELAY,436)
    redist19_prodXInvY_uid78_i_div_pool_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid78_i_div_pool_im0_cma_q, xout => redist19_prodXInvY_uid78_i_div_pool_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid78_i_div_pool_join_12(BITJOIN,323)@26
    prodXInvY_uid78_i_div_pool_join_12_q <= redist18_prodXInvY_uid78_i_div_pool_im9_cma_q_1_q & redist19_prodXInvY_uid78_i_div_pool_im0_cma_q_1_q;

    -- prodXInvY_uid78_i_div_pool_result_add_0_0(ADD,326)@26
    prodXInvY_uid78_i_div_pool_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 66 => prodXInvY_uid78_i_div_pool_join_12_q(65)) & prodXInvY_uid78_i_div_pool_join_12_q));
    prodXInvY_uid78_i_div_pool_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 56 => prodXInvY_uid78_i_div_pool_align_13_q(55)) & prodXInvY_uid78_i_div_pool_align_13_q));
    prodXInvY_uid78_i_div_pool_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodXInvY_uid78_i_div_pool_result_add_0_0_a) + SIGNED(prodXInvY_uid78_i_div_pool_result_add_0_0_b));
    prodXInvY_uid78_i_div_pool_result_add_0_0_q <= prodXInvY_uid78_i_div_pool_result_add_0_0_o(66 downto 0);

    -- rightShiftInput_uid79_i_div_pool(BITSELECT,78)@26
    rightShiftInput_uid79_i_div_pool_in <= STD_LOGIC_VECTOR(prodXInvY_uid78_i_div_pool_result_add_0_0_q(64 downto 0));
    rightShiftInput_uid79_i_div_pool_b <= STD_LOGIC_VECTOR(rightShiftInput_uid79_i_div_pool_in(64 downto 0));

    -- redist48_rightShiftInput_uid79_i_div_pool_b_1(DELAY,465)
    redist48_rightShiftInput_uid79_i_div_pool_b_1 : dspba_delay
    GENERIC MAP ( width => 65, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftInput_uid79_i_div_pool_b, xout => redist48_rightShiftInput_uid79_i_div_pool_b_1_q, clk => clock, aclr => resetn );

    -- xMSB_uid328_prodPostRightShift_uid80_i_div_pool(BITSELECT,327)@27
    xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b <= STD_LOGIC_VECTOR(redist48_rightShiftInput_uid79_i_div_pool_b_1_q(64 downto 64));

    -- redist27_xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b_1(DELAY,444)
    redist27_xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b, xout => redist27_xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage3Idx1Rng1_uid362_prodPostRightShift_uid80_i_div_pool(BITSELECT,361)@28
    rightShiftStage3Idx1Rng1_uid362_prodPostRightShift_uid80_i_div_pool_b <= rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_q(64 downto 1);

    -- rightShiftStage3Idx1_uid363_prodPostRightShift_uid80_i_div_pool(BITJOIN,362)@28
    rightShiftStage3Idx1_uid363_prodPostRightShift_uid80_i_div_pool_q <= redist27_xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b_1_q & rightShiftStage3Idx1Rng1_uid362_prodPostRightShift_uid80_i_div_pool_b;

    -- seMsb_to6_uid357(BITSELECT,356)@27
    seMsb_to6_uid357_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((5 downto 1 => xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b(0)) & xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b));
    seMsb_to6_uid357_b <= STD_LOGIC_VECTOR(seMsb_to6_uid357_in(5 downto 0));

    -- rightShiftStage2Idx3Rng6_uid358_prodPostRightShift_uid80_i_div_pool(BITSELECT,357)@27
    rightShiftStage2Idx3Rng6_uid358_prodPostRightShift_uid80_i_div_pool_b <= rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_q(64 downto 6);

    -- rightShiftStage2Idx3_uid359_prodPostRightShift_uid80_i_div_pool(BITJOIN,358)@27
    rightShiftStage2Idx3_uid359_prodPostRightShift_uid80_i_div_pool_q <= seMsb_to6_uid357_b & rightShiftStage2Idx3Rng6_uid358_prodPostRightShift_uid80_i_div_pool_b;

    -- seMsb_to4_uid354(BITSELECT,353)@27
    seMsb_to4_uid354_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b(0)) & xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b));
    seMsb_to4_uid354_b <= STD_LOGIC_VECTOR(seMsb_to4_uid354_in(3 downto 0));

    -- rightShiftStage2Idx2Rng4_uid355_prodPostRightShift_uid80_i_div_pool(BITSELECT,354)@27
    rightShiftStage2Idx2Rng4_uid355_prodPostRightShift_uid80_i_div_pool_b <= rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_q(64 downto 4);

    -- rightShiftStage2Idx2_uid356_prodPostRightShift_uid80_i_div_pool(BITJOIN,355)@27
    rightShiftStage2Idx2_uid356_prodPostRightShift_uid80_i_div_pool_q <= seMsb_to4_uid354_b & rightShiftStage2Idx2Rng4_uid355_prodPostRightShift_uid80_i_div_pool_b;

    -- seMsb_to2_uid351(BITSELECT,350)@27
    seMsb_to2_uid351_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b(0)) & xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b));
    seMsb_to2_uid351_b <= STD_LOGIC_VECTOR(seMsb_to2_uid351_in(1 downto 0));

    -- rightShiftStage2Idx1Rng2_uid352_prodPostRightShift_uid80_i_div_pool(BITSELECT,351)@27
    rightShiftStage2Idx1Rng2_uid352_prodPostRightShift_uid80_i_div_pool_b <= rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_q(64 downto 2);

    -- rightShiftStage2Idx1_uid353_prodPostRightShift_uid80_i_div_pool(BITJOIN,352)@27
    rightShiftStage2Idx1_uid353_prodPostRightShift_uid80_i_div_pool_q <= seMsb_to2_uid351_b & rightShiftStage2Idx1Rng2_uid352_prodPostRightShift_uid80_i_div_pool_b;

    -- seMsb_to24_uid346(BITSELECT,345)@27
    seMsb_to24_uid346_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 1 => xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b(0)) & xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b));
    seMsb_to24_uid346_b <= STD_LOGIC_VECTOR(seMsb_to24_uid346_in(23 downto 0));

    -- rightShiftStage1Idx3Rng24_uid347_prodPostRightShift_uid80_i_div_pool(BITSELECT,346)@27
    rightShiftStage1Idx3Rng24_uid347_prodPostRightShift_uid80_i_div_pool_b <= rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q(64 downto 24);

    -- rightShiftStage1Idx3_uid348_prodPostRightShift_uid80_i_div_pool(BITJOIN,347)@27
    rightShiftStage1Idx3_uid348_prodPostRightShift_uid80_i_div_pool_q <= seMsb_to24_uid346_b & rightShiftStage1Idx3Rng24_uid347_prodPostRightShift_uid80_i_div_pool_b;

    -- seMsb_to16_uid343(BITSELECT,342)@27
    seMsb_to16_uid343_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b(0)) & xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b));
    seMsb_to16_uid343_b <= STD_LOGIC_VECTOR(seMsb_to16_uid343_in(15 downto 0));

    -- rightShiftStage1Idx2Rng16_uid344_prodPostRightShift_uid80_i_div_pool(BITSELECT,343)@27
    rightShiftStage1Idx2Rng16_uid344_prodPostRightShift_uid80_i_div_pool_b <= rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q(64 downto 16);

    -- rightShiftStage1Idx2_uid345_prodPostRightShift_uid80_i_div_pool(BITJOIN,344)@27
    rightShiftStage1Idx2_uid345_prodPostRightShift_uid80_i_div_pool_q <= seMsb_to16_uid343_b & rightShiftStage1Idx2Rng16_uid344_prodPostRightShift_uid80_i_div_pool_b;

    -- seMsb_to8_uid340(BITSELECT,339)@27
    seMsb_to8_uid340_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b(0)) & xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b));
    seMsb_to8_uid340_b <= STD_LOGIC_VECTOR(seMsb_to8_uid340_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid341_prodPostRightShift_uid80_i_div_pool(BITSELECT,340)@27
    rightShiftStage1Idx1Rng8_uid341_prodPostRightShift_uid80_i_div_pool_b <= rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q(64 downto 8);

    -- rightShiftStage1Idx1_uid342_prodPostRightShift_uid80_i_div_pool(BITJOIN,341)@27
    rightShiftStage1Idx1_uid342_prodPostRightShift_uid80_i_div_pool_q <= seMsb_to8_uid340_b & rightShiftStage1Idx1Rng8_uid341_prodPostRightShift_uid80_i_div_pool_b;

    -- stageIndexName_to65_uid336(BITSELECT,335)@27
    stageIndexName_to65_uid336_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 1 => xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b(0)) & xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b));
    stageIndexName_to65_uid336_b <= STD_LOGIC_VECTOR(stageIndexName_to65_uid336_in(64 downto 0));

    -- seMsb_to64_uid333(BITSELECT,332)@27
    seMsb_to64_uid333_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((63 downto 1 => xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b(0)) & xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b));
    seMsb_to64_uid333_b <= STD_LOGIC_VECTOR(seMsb_to64_uid333_in(63 downto 0));

    -- rightShiftStage0Idx2Rng64_uid334_prodPostRightShift_uid80_i_div_pool(BITSELECT,333)@27
    rightShiftStage0Idx2Rng64_uid334_prodPostRightShift_uid80_i_div_pool_b <= redist48_rightShiftInput_uid79_i_div_pool_b_1_q(64 downto 64);

    -- rightShiftStage0Idx2_uid335_prodPostRightShift_uid80_i_div_pool(BITJOIN,334)@27
    rightShiftStage0Idx2_uid335_prodPostRightShift_uid80_i_div_pool_q <= seMsb_to64_uid333_b & rightShiftStage0Idx2Rng64_uid334_prodPostRightShift_uid80_i_div_pool_b;

    -- seMsb_to32_uid330(BITSELECT,329)@27
    seMsb_to32_uid330_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b(0)) & xMSB_uid328_prodPostRightShift_uid80_i_div_pool_b));
    seMsb_to32_uid330_b <= STD_LOGIC_VECTOR(seMsb_to32_uid330_in(31 downto 0));

    -- rightShiftStage0Idx1Rng32_uid331_prodPostRightShift_uid80_i_div_pool(BITSELECT,330)@27
    rightShiftStage0Idx1Rng32_uid331_prodPostRightShift_uid80_i_div_pool_b <= redist48_rightShiftInput_uid79_i_div_pool_b_1_q(64 downto 32);

    -- rightShiftStage0Idx1_uid332_prodPostRightShift_uid80_i_div_pool(BITJOIN,331)@27
    rightShiftStage0Idx1_uid332_prodPostRightShift_uid80_i_div_pool_q <= seMsb_to32_uid330_b & rightShiftStage0Idx1Rng32_uid331_prodPostRightShift_uid80_i_div_pool_b;

    -- rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool(MUX,338)@27
    rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_s <= rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_b;
    rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_combproc: PROCESS (rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_s, redist48_rightShiftInput_uid79_i_div_pool_b_1_q, rightShiftStage0Idx1_uid332_prodPostRightShift_uid80_i_div_pool_q, rightShiftStage0Idx2_uid335_prodPostRightShift_uid80_i_div_pool_q, stageIndexName_to65_uid336_b)
    BEGIN
        CASE (rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_s) IS
            WHEN "00" => rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q <= redist48_rightShiftInput_uid79_i_div_pool_b_1_q;
            WHEN "01" => rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage0Idx1_uid332_prodPostRightShift_uid80_i_div_pool_q;
            WHEN "10" => rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage0Idx2_uid335_prodPostRightShift_uid80_i_div_pool_q;
            WHEN "11" => rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q <= stageIndexName_to65_uid336_b;
            WHEN OTHERS => rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool(MUX,349)@27
    rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_s <= rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_c;
    rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_combproc: PROCESS (rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_s, rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q, rightShiftStage1Idx1_uid342_prodPostRightShift_uid80_i_div_pool_q, rightShiftStage1Idx2_uid345_prodPostRightShift_uid80_i_div_pool_q, rightShiftStage1Idx3_uid348_prodPostRightShift_uid80_i_div_pool_q)
    BEGIN
        CASE (rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_s) IS
            WHEN "00" => rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage0_uid339_prodPostRightShift_uid80_i_div_pool_q;
            WHEN "01" => rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage1Idx1_uid342_prodPostRightShift_uid80_i_div_pool_q;
            WHEN "10" => rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage1Idx2_uid345_prodPostRightShift_uid80_i_div_pool_q;
            WHEN "11" => rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage1Idx3_uid348_prodPostRightShift_uid80_i_div_pool_q;
            WHEN OTHERS => rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_notEnable(LOGICAL,525)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_nor(LOGICAL,526)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_nor_q <= not (redist33_r_uid143_zCount_uid55_i_div_pool_q_18_notEnable_q or redist33_r_uid143_zCount_uid55_i_div_pool_q_18_sticky_ena_q);

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_last(CONSTANT,522)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_last_q <= "01101";

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmp(LOGICAL,523)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmp_b <= STD_LOGIC_VECTOR("0" & redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_q);
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmp_q <= "1" WHEN redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_last_q = redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmp_b ELSE "0";

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmpReg(REG,524)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmpReg_q <= STD_LOGIC_VECTOR(redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmp_q);
        END IF;
    END PROCESS;

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_sticky_ena(REG,527)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist33_r_uid143_zCount_uid55_i_div_pool_q_18_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist33_r_uid143_zCount_uid55_i_div_pool_q_18_nor_q = "1") THEN
                redist33_r_uid143_zCount_uid55_i_div_pool_q_18_sticky_ena_q <= STD_LOGIC_VECTOR(redist33_r_uid143_zCount_uid55_i_div_pool_q_18_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_enaAnd(LOGICAL,528)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_enaAnd_q <= redist33_r_uid143_zCount_uid55_i_div_pool_q_18_sticky_ena_q and VCC_q;

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt(COUNTER,520)
    -- low=0, high=14, step=1, init=0
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_eq <= '1';
            ELSE
                redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_eq <= '0';
            END IF;
            IF (redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_eq = '1') THEN
                redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_i <= redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_i + 2;
            ELSE
                redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_i <= redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_i, 4)));

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_inputreg(DELAY,517)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_inputreg : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => r_uid143_zCount_uid55_i_div_pool_q, xout => redist33_r_uid143_zCount_uid55_i_div_pool_q_18_inputreg_q, clk => clock, aclr => resetn );

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_wraddr(REG,521)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist33_r_uid143_zCount_uid55_i_div_pool_q_18_wraddr_q <= "1110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist33_r_uid143_zCount_uid55_i_div_pool_q_18_wraddr_q <= STD_LOGIC_VECTOR(redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem(DUALMEM,519)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_ia <= STD_LOGIC_VECTOR(redist33_r_uid143_zCount_uid55_i_div_pool_q_18_inputreg_q);
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_aa <= redist33_r_uid143_zCount_uid55_i_div_pool_q_18_wraddr_q;
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_ab <= redist33_r_uid143_zCount_uid55_i_div_pool_q_18_rdcnt_q;
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_reset0 <= not (resetn);
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 6,
        widthad_a => 4,
        numwords_a => 15,
        width_b => 6,
        widthad_b => 4,
        numwords_b => 15,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist33_r_uid143_zCount_uid55_i_div_pool_q_18_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_reset0,
        clock1 => clock,
        address_a => redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_aa,
        data_a => redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_ab,
        q_b => redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_iq
    );
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_q <= redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_iq(5 downto 0);

    -- redist33_r_uid143_zCount_uid55_i_div_pool_q_18_outputreg(DELAY,518)
    redist33_r_uid143_zCount_uid55_i_div_pool_q_18_outputreg : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist33_r_uid143_zCount_uid55_i_div_pool_q_18_mem_q, xout => redist33_r_uid143_zCount_uid55_i_div_pool_q_18_outputreg_q, clk => clock, aclr => resetn );

    -- cWOut_uid71_i_div_pool(CONSTANT,70)
    cWOut_uid71_i_div_pool_q <= "100000";

    -- rShiftCount_uid72_i_div_pool(SUB,71)@26 + 1
    rShiftCount_uid72_i_div_pool_a <= STD_LOGIC_VECTOR("0" & cWOut_uid71_i_div_pool_q);
    rShiftCount_uid72_i_div_pool_b <= STD_LOGIC_VECTOR("0" & redist33_r_uid143_zCount_uid55_i_div_pool_q_18_outputreg_q);
    rShiftCount_uid72_i_div_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rShiftCount_uid72_i_div_pool_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            rShiftCount_uid72_i_div_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(rShiftCount_uid72_i_div_pool_a) - UNSIGNED(rShiftCount_uid72_i_div_pool_b));
        END IF;
    END PROCESS;
    rShiftCount_uid72_i_div_pool_q <= rShiftCount_uid72_i_div_pool_o(6 downto 0);

    -- rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select(BITSELECT,409)@27
    rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_b <= rShiftCount_uid72_i_div_pool_q(6 downto 5);
    rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_c <= rShiftCount_uid72_i_div_pool_q(4 downto 3);
    rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_d <= rShiftCount_uid72_i_div_pool_q(2 downto 1);
    rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_e <= rShiftCount_uid72_i_div_pool_q(0 downto 0);

    -- rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool(MUX,360)@27 + 1
    rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_s <= rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_d;
    rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_s) IS
                WHEN "00" => rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage1_uid350_prodPostRightShift_uid80_i_div_pool_q;
                WHEN "01" => rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage2Idx1_uid353_prodPostRightShift_uid80_i_div_pool_q;
                WHEN "10" => rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage2Idx2_uid356_prodPostRightShift_uid80_i_div_pool_q;
                WHEN "11" => rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage2Idx3_uid359_prodPostRightShift_uid80_i_div_pool_q;
                WHEN OTHERS => rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist4_rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_e_1(DELAY,421)
    redist4_rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_e, xout => redist4_rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool(MUX,364)@28
    rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool_s <= redist4_rightShiftStageSel6Dto5_uid338_prodPostRightShift_uid80_i_div_pool_merged_bit_select_e_1_q;
    rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool_combproc: PROCESS (rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool_s, rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_q, rightShiftStage3Idx1_uid363_prodPostRightShift_uid80_i_div_pool_q)
    BEGIN
        CASE (rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool_s) IS
            WHEN "0" => rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage2_uid361_prodPostRightShift_uid80_i_div_pool_q;
            WHEN "1" => rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool_q <= rightShiftStage3Idx1_uid363_prodPostRightShift_uid80_i_div_pool_q;
            WHEN OTHERS => rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodPostRightShiftPost_uid81_i_div_pool(BITSELECT,80)@28
    prodPostRightShiftPost_uid81_i_div_pool_in <= rightShiftStage3_uid365_prodPostRightShift_uid80_i_div_pool_q(62 downto 0);
    prodPostRightShiftPost_uid81_i_div_pool_b <= prodPostRightShiftPost_uid81_i_div_pool_in(62 downto 30);

    -- redist47_prodPostRightShiftPost_uid81_i_div_pool_b_1(DELAY,464)
    redist47_prodPostRightShiftPost_uid81_i_div_pool_b_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodPostRightShiftPost_uid81_i_div_pool_b, xout => redist47_prodPostRightShiftPost_uid81_i_div_pool_b_1_q, clk => clock, aclr => resetn );

    -- prodPostRightShiftPostRnd_uid83_i_div_pool(ADD,82)@29
    prodPostRightShiftPostRnd_uid83_i_div_pool_a <= STD_LOGIC_VECTOR("0" & redist47_prodPostRightShiftPost_uid81_i_div_pool_b_1_q);
    prodPostRightShiftPostRnd_uid83_i_div_pool_b <= STD_LOGIC_VECTOR("000000000000000000000000000000000" & VCC_q);
    prodPostRightShiftPostRnd_uid83_i_div_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(prodPostRightShiftPostRnd_uid83_i_div_pool_a) + UNSIGNED(prodPostRightShiftPostRnd_uid83_i_div_pool_b));
    prodPostRightShiftPostRnd_uid83_i_div_pool_q <= prodPostRightShiftPostRnd_uid83_i_div_pool_o(33 downto 0);

    -- prodPostRightShiftPostRndRange_uid84_i_div_pool(BITSELECT,83)@29
    prodPostRightShiftPostRndRange_uid84_i_div_pool_in <= prodPostRightShiftPostRnd_uid83_i_div_pool_q(32 downto 0);
    prodPostRightShiftPostRndRange_uid84_i_div_pool_b <= prodPostRightShiftPostRndRange_uid84_i_div_pool_in(32 downto 1);

    -- redist46_prodPostRightShiftPostRndRange_uid84_i_div_pool_b_1(DELAY,463)
    redist46_prodPostRightShiftPostRndRange_uid84_i_div_pool_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodPostRightShiftPostRndRange_uid84_i_div_pool_b, xout => redist46_prodPostRightShiftPostRndRange_uid84_i_div_pool_b_1_q, clk => clock, aclr => resetn );

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_notEnable(LOGICAL,547)
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_nor(LOGICAL,548)
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_nor_q <= not (redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_notEnable_q or redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_sticky_ena_q);

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_last(CONSTANT,544)
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_last_q <= "011001";

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmp(LOGICAL,545)
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmp_b <= STD_LOGIC_VECTOR("0" & redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_q);
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmp_q <= "1" WHEN redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_last_q = redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmp_b ELSE "0";

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmpReg(REG,546)
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmpReg_q <= STD_LOGIC_VECTOR(redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmp_q);
        END IF;
    END PROCESS;

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_sticky_ena(REG,549)
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_nor_q = "1") THEN
                redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_sticky_ena_q <= STD_LOGIC_VECTOR(redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_enaAnd(LOGICAL,550)
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_enaAnd_q <= redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_sticky_ena_q and VCC_q;

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt(COUNTER,542)
    -- low=0, high=26, step=1, init=0
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_i = TO_UNSIGNED(25, 5)) THEN
                redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_eq <= '1';
            ELSE
                redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_eq <= '0';
            END IF;
            IF (redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_eq = '1') THEN
                redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_i <= redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_i + 6;
            ELSE
                redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_i <= redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_i, 5)));

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_wraddr(REG,543)
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_wraddr_q <= "11010";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_wraddr_q <= STD_LOGIC_VECTOR(redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem(DUALMEM,541)
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_ia <= STD_LOGIC_VECTOR(i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out);
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_aa <= redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_wraddr_q;
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_ab <= redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_rdcnt_q;
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_reset0 <= not (resetn);
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 27,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 27,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_reset0,
        clock1 => clock,
        address_a => redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_aa,
        data_a => redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_ab,
        q_b => redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_iq
    );
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_q <= redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_iq(31 downto 0);

    -- redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_outputreg(DELAY,540)
    redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_mem_q, xout => redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_outputreg_q, clk => clock, aclr => resetn );

    -- yIsZero_uid63_i_div_pool(LOGICAL,62)@30
    yIsZero_uid63_i_div_pool_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000" & GND_q);
    yIsZero_uid63_i_div_pool_q <= "1" WHEN redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_outputreg_q = yIsZero_uid63_i_div_pool_b ELSE "0";

    -- resFinal_uid89_i_div_pool(MUX,88)@30
    resFinal_uid89_i_div_pool_s <= yIsZero_uid63_i_div_pool_q;
    resFinal_uid89_i_div_pool_combproc: PROCESS (resFinal_uid89_i_div_pool_s, redist46_prodPostRightShiftPostRndRange_uid84_i_div_pool_b_1_q, cstOvf_uid88_i_div_pool_q)
    BEGIN
        CASE (resFinal_uid89_i_div_pool_s) IS
            WHEN "0" => resFinal_uid89_i_div_pool_q <= redist46_prodPostRightShiftPostRndRange_uid84_i_div_pool_b_1_q;
            WHEN "1" => resFinal_uid89_i_div_pool_q <= cstOvf_uid88_i_div_pool_q;
            WHEN OTHERS => resFinal_uid89_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist42_resFinal_uid89_i_div_pool_q_4_inputreg(DELAY,529)
    redist42_resFinal_uid89_i_div_pool_q_4_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resFinal_uid89_i_div_pool_q, xout => redist42_resFinal_uid89_i_div_pool_q_4_inputreg_q, clk => clock, aclr => resetn );

    -- redist42_resFinal_uid89_i_div_pool_q_4(DELAY,459)
    redist42_resFinal_uid89_i_div_pool_q_4 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist42_resFinal_uid89_i_div_pool_q_4_inputreg_q, xout => redist42_resFinal_uid89_i_div_pool_q_4_q, clk => clock, aclr => resetn );

    -- redist42_resFinal_uid89_i_div_pool_q_4_outputreg(DELAY,530)
    redist42_resFinal_uid89_i_div_pool_q_4_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist42_resFinal_uid89_i_div_pool_q_4_q, xout => redist42_resFinal_uid89_i_div_pool_q_4_outputreg_q, clk => clock, aclr => resetn );

    -- resFinalMP1_uid106_i_div_pool(SUB,105)@34
    resFinalMP1_uid106_i_div_pool_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => redist42_resFinal_uid89_i_div_pool_q_4_outputreg_q(31)) & redist42_resFinal_uid89_i_div_pool_q_4_outputreg_q));
    resFinalMP1_uid106_i_div_pool_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 2 => cstSubFinal_uid105_i_div_pool_q(1)) & cstSubFinal_uid105_i_div_pool_q));
    resFinalMP1_uid106_i_div_pool_o <= STD_LOGIC_VECTOR(SIGNED(resFinalMP1_uid106_i_div_pool_a) - SIGNED(resFinalMP1_uid106_i_div_pool_b));
    resFinalMP1_uid106_i_div_pool_q <= resFinalMP1_uid106_i_div_pool_o(32 downto 0);

    -- resFinalPostMux_uid107_i_div_pool(BITSELECT,106)@34
    resFinalPostMux_uid107_i_div_pool_in <= STD_LOGIC_VECTOR(resFinalMP1_uid106_i_div_pool_q(31 downto 0));
    resFinalPostMux_uid107_i_div_pool_b <= STD_LOGIC_VECTOR(resFinalPostMux_uid107_i_div_pool_in(31 downto 0));

    -- redist41_resFinalPostMux_uid107_i_div_pool_b_1(DELAY,458)
    redist41_resFinalPostMux_uid107_i_div_pool_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resFinalPostMux_uid107_i_div_pool_b, xout => redist41_resFinalPostMux_uid107_i_div_pool_b_1_q, clk => clock, aclr => resetn );

    -- redist43_resFinal_uid89_i_div_pool_q_5(DELAY,460)
    redist43_resFinal_uid89_i_div_pool_q_5 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist42_resFinal_uid89_i_div_pool_q_4_outputreg_q, xout => redist43_resFinal_uid89_i_div_pool_q_5_q, clk => clock, aclr => resetn );

    -- signResFinal_uid98_i_div_pool(BITSELECT,97)@35
    signResFinal_uid98_i_div_pool_b <= STD_LOGIC_VECTOR(redist43_resFinal_uid89_i_div_pool_q_5_q(31 downto 31));

    -- redist62_xMSB_uid49_i_div_pool_b_34(DELAY,479)
    redist62_xMSB_uid49_i_div_pool_b_34 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist61_xMSB_uid49_i_div_pool_b_32_q, xout => redist62_xMSB_uid49_i_div_pool_b_34_q, clk => clock, aclr => resetn );

    -- redist45_signX_uid87_i_div_pool_b_5(DELAY,462)
    redist45_signX_uid87_i_div_pool_b_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist44_signX_uid87_i_div_pool_b_3_q, xout => redist45_signX_uid87_i_div_pool_b_5_q, clk => clock, aclr => resetn );

    -- OverflowCond_uid99_i_div_pool(LOGICAL,98)@35
    OverflowCond_uid99_i_div_pool_q <= redist45_signX_uid87_i_div_pool_b_5_q and redist62_xMSB_uid49_i_div_pool_b_34_q and signResFinal_uid98_i_div_pool_b;

    -- redist66_sync_in_aunroll_x_in_c0_eni3_1_33_inputreg(DELAY,574)
    redist66_sync_in_aunroll_x_in_c0_eni3_1_33_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist65_sync_in_aunroll_x_in_c0_eni3_1_29_outputreg_q, xout => redist66_sync_in_aunroll_x_in_c0_eni3_1_33_inputreg_q, clk => clock, aclr => resetn );

    -- redist66_sync_in_aunroll_x_in_c0_eni3_1_33(DELAY,483)
    redist66_sync_in_aunroll_x_in_c0_eni3_1_33 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist66_sync_in_aunroll_x_in_c0_eni3_1_33_inputreg_q, xout => redist66_sync_in_aunroll_x_in_c0_eni3_1_33_q, clk => clock, aclr => resetn );

    -- redist66_sync_in_aunroll_x_in_c0_eni3_1_33_outputreg(DELAY,575)
    redist66_sync_in_aunroll_x_in_c0_eni3_1_33_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist66_sync_in_aunroll_x_in_c0_eni3_1_33_q, xout => redist66_sync_in_aunroll_x_in_c0_eni3_1_33_outputreg_q, clk => clock, aclr => resetn );

    -- prodResY_uid90_i_div_pool_bs5(BITSELECT,371)@30
    prodResY_uid90_i_div_pool_bs5_b <= redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_outputreg_q(31 downto 18);

    -- prodResY_uid90_i_div_pool_bs4(BITSELECT,370)@30
    prodResY_uid90_i_div_pool_bs4_in <= STD_LOGIC_VECTOR(resFinal_uid89_i_div_pool_q(17 downto 0));
    prodResY_uid90_i_div_pool_bs4_b <= STD_LOGIC_VECTOR(prodResY_uid90_i_div_pool_bs4_in(17 downto 0));

    -- prodResY_uid90_i_div_pool_bs6(BITSELECT,372)@30
    prodResY_uid90_i_div_pool_bs6_b <= STD_LOGIC_VECTOR(resFinal_uid89_i_div_pool_q(31 downto 18));

    -- prodResY_uid90_i_div_pool_bs2(BITSELECT,368)@30
    prodResY_uid90_i_div_pool_bs2_in <= redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_outputreg_q(17 downto 0);
    prodResY_uid90_i_div_pool_bs2_b <= prodResY_uid90_i_div_pool_bs2_in(17 downto 0);

    -- prodResY_uid90_i_div_pool_ma3_cma(CHAINMULTADD,404)@30 + 2
    prodResY_uid90_i_div_pool_ma3_cma_reset <= not (resetn);
    prodResY_uid90_i_div_pool_ma3_cma_ena0 <= '1';
    prodResY_uid90_i_div_pool_ma3_cma_ena1 <= prodResY_uid90_i_div_pool_ma3_cma_ena0;
    prodResY_uid90_i_div_pool_ma3_cma_l(0) <= SIGNED(RESIZE(prodResY_uid90_i_div_pool_ma3_cma_a0(0),19));
    prodResY_uid90_i_div_pool_ma3_cma_l(1) <= SIGNED(RESIZE(prodResY_uid90_i_div_pool_ma3_cma_a0(1),19));
    prodResY_uid90_i_div_pool_ma3_cma_p(0) <= prodResY_uid90_i_div_pool_ma3_cma_l(0) * prodResY_uid90_i_div_pool_ma3_cma_c0(0);
    prodResY_uid90_i_div_pool_ma3_cma_p(1) <= prodResY_uid90_i_div_pool_ma3_cma_l(1) * prodResY_uid90_i_div_pool_ma3_cma_c0(1);
    prodResY_uid90_i_div_pool_ma3_cma_u(0) <= RESIZE(prodResY_uid90_i_div_pool_ma3_cma_p(0),34);
    prodResY_uid90_i_div_pool_ma3_cma_u(1) <= RESIZE(prodResY_uid90_i_div_pool_ma3_cma_p(1),34);
    prodResY_uid90_i_div_pool_ma3_cma_w(0) <= prodResY_uid90_i_div_pool_ma3_cma_u(0) + prodResY_uid90_i_div_pool_ma3_cma_u(1);
    prodResY_uid90_i_div_pool_ma3_cma_x(0) <= prodResY_uid90_i_div_pool_ma3_cma_w(0);
    prodResY_uid90_i_div_pool_ma3_cma_y(0) <= prodResY_uid90_i_div_pool_ma3_cma_x(0);
    prodResY_uid90_i_div_pool_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid90_i_div_pool_ma3_cma_a0 <= (others => (others => '0'));
            prodResY_uid90_i_div_pool_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid90_i_div_pool_ma3_cma_ena0 = '1') THEN
                prodResY_uid90_i_div_pool_ma3_cma_a0(0) <= RESIZE(UNSIGNED(prodResY_uid90_i_div_pool_bs2_b),18);
                prodResY_uid90_i_div_pool_ma3_cma_a0(1) <= RESIZE(UNSIGNED(prodResY_uid90_i_div_pool_bs4_b),18);
                prodResY_uid90_i_div_pool_ma3_cma_c0(0) <= RESIZE(SIGNED(prodResY_uid90_i_div_pool_bs6_b),14);
                prodResY_uid90_i_div_pool_ma3_cma_c0(1) <= RESIZE(SIGNED(prodResY_uid90_i_div_pool_bs5_b),14);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid90_i_div_pool_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid90_i_div_pool_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid90_i_div_pool_ma3_cma_ena1 = '1') THEN
                prodResY_uid90_i_div_pool_ma3_cma_s(0) <= prodResY_uid90_i_div_pool_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid90_i_div_pool_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 33, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid90_i_div_pool_ma3_cma_s(0)(32 downto 0)), xout => prodResY_uid90_i_div_pool_ma3_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid90_i_div_pool_ma3_cma_q <= STD_LOGIC_VECTOR(prodResY_uid90_i_div_pool_ma3_cma_qq(32 downto 0));

    -- redist11_prodResY_uid90_i_div_pool_ma3_cma_q_1(DELAY,428)
    redist11_prodResY_uid90_i_div_pool_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid90_i_div_pool_ma3_cma_q, xout => redist11_prodResY_uid90_i_div_pool_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid90_i_div_pool_align_12(BITSHIFT,378)@33
    prodResY_uid90_i_div_pool_align_12_qint <= redist11_prodResY_uid90_i_div_pool_ma3_cma_q_1_q & "000000000000000000";
    prodResY_uid90_i_div_pool_align_12_q <= prodResY_uid90_i_div_pool_align_12_qint(50 downto 0);

    -- prodResY_uid90_i_div_pool_bs10(BITSELECT,376)@30
    prodResY_uid90_i_div_pool_bs10_b <= STD_LOGIC_VECTOR(redist63_i_syncbuf_kernel_size_sync_buffer_pool_out_buffer_out_29_outputreg_q(31 downto 18));

    -- prodResY_uid90_i_div_pool_im8_cma(CHAINMULTADD,399)@30 + 2
    prodResY_uid90_i_div_pool_im8_cma_reset <= not (resetn);
    prodResY_uid90_i_div_pool_im8_cma_ena0 <= '1';
    prodResY_uid90_i_div_pool_im8_cma_ena1 <= prodResY_uid90_i_div_pool_im8_cma_ena0;
    prodResY_uid90_i_div_pool_im8_cma_p(0) <= prodResY_uid90_i_div_pool_im8_cma_a0(0) * prodResY_uid90_i_div_pool_im8_cma_c0(0);
    prodResY_uid90_i_div_pool_im8_cma_u(0) <= RESIZE(prodResY_uid90_i_div_pool_im8_cma_p(0),28);
    prodResY_uid90_i_div_pool_im8_cma_w(0) <= prodResY_uid90_i_div_pool_im8_cma_u(0);
    prodResY_uid90_i_div_pool_im8_cma_x(0) <= prodResY_uid90_i_div_pool_im8_cma_w(0);
    prodResY_uid90_i_div_pool_im8_cma_y(0) <= prodResY_uid90_i_div_pool_im8_cma_x(0);
    prodResY_uid90_i_div_pool_im8_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid90_i_div_pool_im8_cma_a0 <= (others => (others => '0'));
            prodResY_uid90_i_div_pool_im8_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid90_i_div_pool_im8_cma_ena0 = '1') THEN
                prodResY_uid90_i_div_pool_im8_cma_a0(0) <= RESIZE(SIGNED(prodResY_uid90_i_div_pool_bs6_b),14);
                prodResY_uid90_i_div_pool_im8_cma_c0(0) <= RESIZE(SIGNED(prodResY_uid90_i_div_pool_bs10_b),14);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid90_i_div_pool_im8_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid90_i_div_pool_im8_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid90_i_div_pool_im8_cma_ena1 = '1') THEN
                prodResY_uid90_i_div_pool_im8_cma_s(0) <= prodResY_uid90_i_div_pool_im8_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid90_i_div_pool_im8_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid90_i_div_pool_im8_cma_s(0)(27 downto 0)), xout => prodResY_uid90_i_div_pool_im8_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid90_i_div_pool_im8_cma_q <= STD_LOGIC_VECTOR(prodResY_uid90_i_div_pool_im8_cma_qq(27 downto 0));

    -- redist16_prodResY_uid90_i_div_pool_im8_cma_q_1(DELAY,433)
    redist16_prodResY_uid90_i_div_pool_im8_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid90_i_div_pool_im8_cma_q, xout => redist16_prodResY_uid90_i_div_pool_im8_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid90_i_div_pool_bs1(BITSELECT,367)@30
    prodResY_uid90_i_div_pool_bs1_in <= resFinal_uid89_i_div_pool_q(17 downto 0);
    prodResY_uid90_i_div_pool_bs1_b <= prodResY_uid90_i_div_pool_bs1_in(17 downto 0);

    -- prodResY_uid90_i_div_pool_im0_cma(CHAINMULTADD,398)@30 + 2
    prodResY_uid90_i_div_pool_im0_cma_reset <= not (resetn);
    prodResY_uid90_i_div_pool_im0_cma_ena0 <= '1';
    prodResY_uid90_i_div_pool_im0_cma_ena1 <= prodResY_uid90_i_div_pool_im0_cma_ena0;
    prodResY_uid90_i_div_pool_im0_cma_p(0) <= prodResY_uid90_i_div_pool_im0_cma_a0(0) * prodResY_uid90_i_div_pool_im0_cma_c0(0);
    prodResY_uid90_i_div_pool_im0_cma_u(0) <= RESIZE(prodResY_uid90_i_div_pool_im0_cma_p(0),36);
    prodResY_uid90_i_div_pool_im0_cma_w(0) <= prodResY_uid90_i_div_pool_im0_cma_u(0);
    prodResY_uid90_i_div_pool_im0_cma_x(0) <= prodResY_uid90_i_div_pool_im0_cma_w(0);
    prodResY_uid90_i_div_pool_im0_cma_y(0) <= prodResY_uid90_i_div_pool_im0_cma_x(0);
    prodResY_uid90_i_div_pool_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid90_i_div_pool_im0_cma_a0 <= (others => (others => '0'));
            prodResY_uid90_i_div_pool_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid90_i_div_pool_im0_cma_ena0 = '1') THEN
                prodResY_uid90_i_div_pool_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodResY_uid90_i_div_pool_bs1_b),18);
                prodResY_uid90_i_div_pool_im0_cma_c0(0) <= RESIZE(UNSIGNED(prodResY_uid90_i_div_pool_bs2_b),18);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid90_i_div_pool_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid90_i_div_pool_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid90_i_div_pool_im0_cma_ena1 = '1') THEN
                prodResY_uid90_i_div_pool_im0_cma_s(0) <= prodResY_uid90_i_div_pool_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid90_i_div_pool_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid90_i_div_pool_im0_cma_s(0)(35 downto 0)), xout => prodResY_uid90_i_div_pool_im0_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid90_i_div_pool_im0_cma_q <= STD_LOGIC_VECTOR(prodResY_uid90_i_div_pool_im0_cma_qq(35 downto 0));

    -- redist17_prodResY_uid90_i_div_pool_im0_cma_q_1(DELAY,434)
    redist17_prodResY_uid90_i_div_pool_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid90_i_div_pool_im0_cma_q, xout => redist17_prodResY_uid90_i_div_pool_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid90_i_div_pool_join_11(BITJOIN,377)@33
    prodResY_uid90_i_div_pool_join_11_q <= redist16_prodResY_uid90_i_div_pool_im8_cma_q_1_q & redist17_prodResY_uid90_i_div_pool_im0_cma_q_1_q;

    -- prodResY_uid90_i_div_pool_result_add_0_0(ADD,380)@33 + 1
    prodResY_uid90_i_div_pool_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 64 => prodResY_uid90_i_div_pool_join_11_q(63)) & prodResY_uid90_i_div_pool_join_11_q));
    prodResY_uid90_i_div_pool_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 51 => prodResY_uid90_i_div_pool_align_12_q(50)) & prodResY_uid90_i_div_pool_align_12_q));
    prodResY_uid90_i_div_pool_result_add_0_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid90_i_div_pool_result_add_0_0_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prodResY_uid90_i_div_pool_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodResY_uid90_i_div_pool_result_add_0_0_a) + SIGNED(prodResY_uid90_i_div_pool_result_add_0_0_b));
        END IF;
    END PROCESS;
    prodResY_uid90_i_div_pool_result_add_0_0_q <= prodResY_uid90_i_div_pool_result_add_0_0_o(64 downto 0);

    -- prod_qy_LT_x_uid92_i_div_pool(COMPARE,91)@34 + 1
    prod_qy_LT_x_uid92_i_div_pool_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 65 => prodResY_uid90_i_div_pool_result_add_0_0_q(64)) & prodResY_uid90_i_div_pool_result_add_0_0_q));
    prod_qy_LT_x_uid92_i_div_pool_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 32 => redist66_sync_in_aunroll_x_in_c0_eni3_1_33_outputreg_q(31)) & redist66_sync_in_aunroll_x_in_c0_eni3_1_33_outputreg_q));
    prod_qy_LT_x_uid92_i_div_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prod_qy_LT_x_uid92_i_div_pool_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prod_qy_LT_x_uid92_i_div_pool_o <= STD_LOGIC_VECTOR(SIGNED(prod_qy_LT_x_uid92_i_div_pool_a) - SIGNED(prod_qy_LT_x_uid92_i_div_pool_b));
        END IF;
    END PROCESS;
    prod_qy_LT_x_uid92_i_div_pool_c(0) <= prod_qy_LT_x_uid92_i_div_pool_o(65);

    -- CondNegX_uid100_i_div_pool(LOGICAL,99)@35
    CondNegX_uid100_i_div_pool_q <= prod_qy_LT_x_uid92_i_div_pool_c and redist45_signX_uid87_i_div_pool_b_5_q;

    -- invSignX_uid101_i_div_pool(LOGICAL,100)@35
    invSignX_uid101_i_div_pool_q <= not (redist45_signX_uid87_i_div_pool_b_5_q);

    -- prod_qy_GT_x_uid91_i_div_pool(COMPARE,90)@34 + 1
    prod_qy_GT_x_uid91_i_div_pool_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 32 => redist66_sync_in_aunroll_x_in_c0_eni3_1_33_outputreg_q(31)) & redist66_sync_in_aunroll_x_in_c0_eni3_1_33_outputreg_q));
    prod_qy_GT_x_uid91_i_div_pool_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 65 => prodResY_uid90_i_div_pool_result_add_0_0_q(64)) & prodResY_uid90_i_div_pool_result_add_0_0_q));
    prod_qy_GT_x_uid91_i_div_pool_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prod_qy_GT_x_uid91_i_div_pool_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prod_qy_GT_x_uid91_i_div_pool_o <= STD_LOGIC_VECTOR(SIGNED(prod_qy_GT_x_uid91_i_div_pool_a) - SIGNED(prod_qy_GT_x_uid91_i_div_pool_b));
        END IF;
    END PROCESS;
    prod_qy_GT_x_uid91_i_div_pool_c(0) <= prod_qy_GT_x_uid91_i_div_pool_o(65);

    -- CondPosX_uid102_i_div_pool(LOGICAL,101)@35
    CondPosX_uid102_i_div_pool_q <= prod_qy_GT_x_uid91_i_div_pool_c and invSignX_uid101_i_div_pool_q;

    -- postMuxSelect_uid103_i_div_pool(LOGICAL,102)@35
    postMuxSelect_uid103_i_div_pool_q <= CondPosX_uid102_i_div_pool_q or CondNegX_uid100_i_div_pool_q or OverflowCond_uid99_i_div_pool_q;

    -- resFinalIntDiv_uid108_i_div_pool(MUX,107)@35
    resFinalIntDiv_uid108_i_div_pool_s <= postMuxSelect_uid103_i_div_pool_q;
    resFinalIntDiv_uid108_i_div_pool_combproc: PROCESS (resFinalIntDiv_uid108_i_div_pool_s, redist43_resFinal_uid89_i_div_pool_q_5_q, redist41_resFinalPostMux_uid107_i_div_pool_b_1_q)
    BEGIN
        CASE (resFinalIntDiv_uid108_i_div_pool_s) IS
            WHEN "0" => resFinalIntDiv_uid108_i_div_pool_q <= redist43_resFinal_uid89_i_div_pool_q_5_q;
            WHEN "1" => resFinalIntDiv_uid108_i_div_pool_q <= redist41_resFinalPostMux_uid107_i_div_pool_b_1_q;
            WHEN OTHERS => resFinalIntDiv_uid108_i_div_pool_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist40_resFinalIntDiv_uid108_i_div_pool_q_1(DELAY,457)
    redist40_resFinalIntDiv_uid108_i_div_pool_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resFinalIntDiv_uid108_i_div_pool_q, xout => redist40_resFinalIntDiv_uid108_i_div_pool_q_1_q, clk => clock, aclr => resetn );

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_notEnable(LOGICAL,603)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_nor(LOGICAL,604)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_nor_q <= not (redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_notEnable_q or redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_sticky_ena_q);

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_last(CONSTANT,600)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_last_q <= "011101";

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmp(LOGICAL,601)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmp_b <= STD_LOGIC_VECTOR("0" & redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_q);
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmp_q <= "1" WHEN redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_last_q = redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmp_b ELSE "0";

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmpReg(REG,602)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmpReg_q <= STD_LOGIC_VECTOR(redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmp_q);
        END IF;
    END PROCESS;

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_sticky_ena(REG,605)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_nor_q = "1") THEN
                redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_sticky_ena_q <= STD_LOGIC_VECTOR(redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_enaAnd(LOGICAL,606)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_enaAnd_q <= redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_sticky_ena_q and VCC_q;

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt(COUNTER,598)
    -- low=0, high=30, step=1, init=0
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_eq <= '1';
            ELSE
                redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_eq <= '0';
            END IF;
            IF (redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_eq = '1') THEN
                redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_i <= redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_i + 2;
            ELSE
                redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_i <= redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_i, 5)));

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_wraddr(REG,599)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_wraddr_q <= "11110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_wraddr_q <= STD_LOGIC_VECTOR(redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem(DUALMEM,597)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni3_2);
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_aa <= redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_wraddr_q;
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_ab <= redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_rdcnt_q;
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_reset0 <= not (resetn);
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 31,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 31,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_reset0,
        clock1 => clock,
        address_a => redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_aa,
        data_a => redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_ab,
        q_b => redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_iq
    );
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_q <= redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_iq(31 downto 0);

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_outputreg(DELAY,596)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_mem_q, xout => redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_outputreg_q, clk => clock, aclr => resetn );

    -- redist67_sync_in_aunroll_x_in_c0_eni3_2_35(DELAY,484)
    redist67_sync_in_aunroll_x_in_c0_eni3_2_35 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist67_sync_in_aunroll_x_in_c0_eni3_2_35_split_0_outputreg_q, xout => redist67_sync_in_aunroll_x_in_c0_eni3_2_35_q, clk => clock, aclr => resetn );

    -- i_mul182_pool(ADD,40)@36
    i_mul182_pool_a <= STD_LOGIC_VECTOR("0" & redist67_sync_in_aunroll_x_in_c0_eni3_2_35_q);
    i_mul182_pool_b <= STD_LOGIC_VECTOR("0" & redist40_resFinalIntDiv_uid108_i_div_pool_q_1_q);
    i_mul182_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul182_pool_a) + UNSIGNED(i_mul182_pool_b));
    i_mul182_pool_q <= i_mul182_pool_o(32 downto 0);

    -- bgTrunc_i_mul182_pool_sel_x(BITSELECT,6)@36
    bgTrunc_i_mul182_pool_sel_x_b <= i_mul182_pool_q(31 downto 0);

    -- redist74_bgTrunc_i_mul182_pool_sel_x_b_1(DELAY,491)
    redist74_bgTrunc_i_mul182_pool_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul182_pool_sel_x_b, xout => redist74_bgTrunc_i_mul182_pool_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add21_pool_bs4(BITSELECT,248)@37
    i_add21_pool_bs4_in <= STD_LOGIC_VECTOR(redist74_bgTrunc_i_mul182_pool_sel_x_b_1_q(17 downto 0));
    i_add21_pool_bs4_b <= STD_LOGIC_VECTOR(i_add21_pool_bs4_in(17 downto 0));

    -- i_add21_pool_bjA5(BITJOIN,249)@37
    i_add21_pool_bjA5_q <= GND_q & i_add21_pool_bs4_b;

    -- i_syncbuf_in_size_sync_buffer1_pool(BLACKBOX,43)@0
    -- in in_i_dependence@37
    -- in in_valid_in@37
    -- out out_buffer_out@37
    -- out out_valid_out@37
    thei_syncbuf_in_size_sync_buffer1_pool : i_syncbuf_in_size_sync_buffer1_pool45
    PORT MAP (
        in_buffer_in => in_in_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist70_sync_in_aunroll_x_in_i_valid_36_q,
        out_buffer_out => i_syncbuf_in_size_sync_buffer1_pool_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add21_pool_bs2_merged_bit_select(BITSELECT,406)@37
    i_add21_pool_bs2_merged_bit_select_b <= i_syncbuf_in_size_sync_buffer1_pool_out_buffer_out(17 downto 0);
    i_add21_pool_bs2_merged_bit_select_c <= i_syncbuf_in_size_sync_buffer1_pool_out_buffer_out(31 downto 18);

    -- i_add21_pool_bjB9(BITJOIN,253)@37
    i_add21_pool_bjB9_q <= GND_q & i_add21_pool_bs2_merged_bit_select_b;

    -- i_add21_pool_bs7(BITSELECT,251)@37
    i_add21_pool_bs7_b <= STD_LOGIC_VECTOR(redist74_bgTrunc_i_mul182_pool_sel_x_b_1_q(31 downto 18));

    -- i_add21_pool_ma3_cma(CHAINMULTADD,401)@37 + 2
    i_add21_pool_ma3_cma_reset <= not (resetn);
    i_add21_pool_ma3_cma_ena0 <= '1';
    i_add21_pool_ma3_cma_ena1 <= i_add21_pool_ma3_cma_ena0;
    i_add21_pool_ma3_cma_l(0) <= SIGNED(RESIZE(i_add21_pool_ma3_cma_a0(0),15));
    i_add21_pool_ma3_cma_l(1) <= SIGNED(RESIZE(i_add21_pool_ma3_cma_a0(1),15));
    i_add21_pool_ma3_cma_p(0) <= i_add21_pool_ma3_cma_l(0) * i_add21_pool_ma3_cma_c0(0);
    i_add21_pool_ma3_cma_p(1) <= i_add21_pool_ma3_cma_l(1) * i_add21_pool_ma3_cma_c0(1);
    i_add21_pool_ma3_cma_u(0) <= RESIZE(i_add21_pool_ma3_cma_p(0),35);
    i_add21_pool_ma3_cma_u(1) <= RESIZE(i_add21_pool_ma3_cma_p(1),35);
    i_add21_pool_ma3_cma_w(0) <= i_add21_pool_ma3_cma_u(0) + i_add21_pool_ma3_cma_u(1);
    i_add21_pool_ma3_cma_x(0) <= i_add21_pool_ma3_cma_w(0);
    i_add21_pool_ma3_cma_y(0) <= i_add21_pool_ma3_cma_x(0);
    i_add21_pool_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_add21_pool_ma3_cma_a0 <= (others => (others => '0'));
            i_add21_pool_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_add21_pool_ma3_cma_ena0 = '1') THEN
                i_add21_pool_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_add21_pool_bs7_b),14);
                i_add21_pool_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_add21_pool_bs2_merged_bit_select_c),14);
                i_add21_pool_ma3_cma_c0(0) <= RESIZE(SIGNED(i_add21_pool_bjB9_q),19);
                i_add21_pool_ma3_cma_c0(1) <= RESIZE(SIGNED(i_add21_pool_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_add21_pool_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_add21_pool_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_add21_pool_ma3_cma_ena1 = '1') THEN
                i_add21_pool_ma3_cma_s(0) <= i_add21_pool_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_add21_pool_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_add21_pool_ma3_cma_s(0)(33 downto 0)), xout => i_add21_pool_ma3_cma_qq, clk => clock, aclr => resetn );
    i_add21_pool_ma3_cma_q <= STD_LOGIC_VECTOR(i_add21_pool_ma3_cma_qq(33 downto 0));

    -- redist14_i_add21_pool_ma3_cma_q_1(DELAY,431)
    redist14_i_add21_pool_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add21_pool_ma3_cma_q, xout => redist14_i_add21_pool_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_add21_pool_align_14(BITSHIFT,258)@40
    i_add21_pool_align_14_qint <= redist14_i_add21_pool_ma3_cma_q_1_q & "000000000000000000";
    i_add21_pool_align_14_q <= i_add21_pool_align_14_qint(51 downto 0);

    -- i_add21_pool_bs11(BITSELECT,255)@37
    i_add21_pool_bs11_b <= redist74_bgTrunc_i_mul182_pool_sel_x_b_1_q(31 downto 18);

    -- i_add21_pool_im10_cma(CHAINMULTADD,393)@37 + 2
    i_add21_pool_im10_cma_reset <= not (resetn);
    i_add21_pool_im10_cma_ena0 <= '1';
    i_add21_pool_im10_cma_ena1 <= i_add21_pool_im10_cma_ena0;
    i_add21_pool_im10_cma_p(0) <= i_add21_pool_im10_cma_a0(0) * i_add21_pool_im10_cma_c0(0);
    i_add21_pool_im10_cma_u(0) <= RESIZE(i_add21_pool_im10_cma_p(0),28);
    i_add21_pool_im10_cma_w(0) <= i_add21_pool_im10_cma_u(0);
    i_add21_pool_im10_cma_x(0) <= i_add21_pool_im10_cma_w(0);
    i_add21_pool_im10_cma_y(0) <= i_add21_pool_im10_cma_x(0);
    i_add21_pool_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_add21_pool_im10_cma_a0 <= (others => (others => '0'));
            i_add21_pool_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_add21_pool_im10_cma_ena0 = '1') THEN
                i_add21_pool_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_add21_pool_bs11_b),14);
                i_add21_pool_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_add21_pool_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_add21_pool_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_add21_pool_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_add21_pool_im10_cma_ena1 = '1') THEN
                i_add21_pool_im10_cma_s(0) <= i_add21_pool_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_add21_pool_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_add21_pool_im10_cma_s(0)(27 downto 0)), xout => i_add21_pool_im10_cma_qq, clk => clock, aclr => resetn );
    i_add21_pool_im10_cma_q <= STD_LOGIC_VECTOR(i_add21_pool_im10_cma_qq(27 downto 0));

    -- redist22_i_add21_pool_im10_cma_q_1(DELAY,439)
    redist22_i_add21_pool_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add21_pool_im10_cma_q, xout => redist22_i_add21_pool_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_add21_pool_bs1(BITSELECT,245)@37
    i_add21_pool_bs1_in <= redist74_bgTrunc_i_mul182_pool_sel_x_b_1_q(17 downto 0);
    i_add21_pool_bs1_b <= i_add21_pool_bs1_in(17 downto 0);

    -- i_add21_pool_im0_cma(CHAINMULTADD,392)@37 + 2
    i_add21_pool_im0_cma_reset <= not (resetn);
    i_add21_pool_im0_cma_ena0 <= '1';
    i_add21_pool_im0_cma_ena1 <= i_add21_pool_im0_cma_ena0;
    i_add21_pool_im0_cma_p(0) <= i_add21_pool_im0_cma_a0(0) * i_add21_pool_im0_cma_c0(0);
    i_add21_pool_im0_cma_u(0) <= RESIZE(i_add21_pool_im0_cma_p(0),36);
    i_add21_pool_im0_cma_w(0) <= i_add21_pool_im0_cma_u(0);
    i_add21_pool_im0_cma_x(0) <= i_add21_pool_im0_cma_w(0);
    i_add21_pool_im0_cma_y(0) <= i_add21_pool_im0_cma_x(0);
    i_add21_pool_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_add21_pool_im0_cma_a0 <= (others => (others => '0'));
            i_add21_pool_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_add21_pool_im0_cma_ena0 = '1') THEN
                i_add21_pool_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_add21_pool_bs1_b),18);
                i_add21_pool_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_add21_pool_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_add21_pool_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_add21_pool_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_add21_pool_im0_cma_ena1 = '1') THEN
                i_add21_pool_im0_cma_s(0) <= i_add21_pool_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_add21_pool_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_add21_pool_im0_cma_s(0)(35 downto 0)), xout => i_add21_pool_im0_cma_qq, clk => clock, aclr => resetn );
    i_add21_pool_im0_cma_q <= STD_LOGIC_VECTOR(i_add21_pool_im0_cma_qq(35 downto 0));

    -- redist23_i_add21_pool_im0_cma_q_1(DELAY,440)
    redist23_i_add21_pool_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add21_pool_im0_cma_q, xout => redist23_i_add21_pool_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_add21_pool_join_13(BITJOIN,257)@40
    i_add21_pool_join_13_q <= redist22_i_add21_pool_im10_cma_q_1_q & redist23_i_add21_pool_im0_cma_q_1_q;

    -- i_add21_pool_result_add_0_0(ADD,260)@40
    i_add21_pool_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_add21_pool_join_13_q));
    i_add21_pool_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_add21_pool_align_14_q(51)) & i_add21_pool_align_14_q));
    i_add21_pool_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_add21_pool_result_add_0_0_a) + SIGNED(i_add21_pool_result_add_0_0_b));
    i_add21_pool_result_add_0_0_q <= i_add21_pool_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_add21_pool_rnd_sel(BITSELECT,238)@40
    bgTrunc_i_add21_pool_rnd_sel_in <= i_add21_pool_result_add_0_0_q(63 downto 0);
    bgTrunc_i_add21_pool_rnd_sel_b <= bgTrunc_i_add21_pool_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_add21_pool_sel_x(BITSELECT,2)@40
    bgTrunc_i_add21_pool_sel_x_b <= bgTrunc_i_add21_pool_rnd_sel_b(31 downto 0);

    -- redist78_bgTrunc_i_add21_pool_sel_x_b_1(DELAY,495)
    redist78_bgTrunc_i_add21_pool_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add21_pool_sel_x_b, xout => redist78_bgTrunc_i_add21_pool_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul15_pool_bs4(BITSELECT,266)@35
    i_mul15_pool_bs4_in <= STD_LOGIC_VECTOR(resFinalIntDiv_uid108_i_div_pool_q(17 downto 0));
    i_mul15_pool_bs4_b <= STD_LOGIC_VECTOR(i_mul15_pool_bs4_in(17 downto 0));

    -- i_mul15_pool_bjA5(BITJOIN,267)@35
    i_mul15_pool_bjA5_q <= GND_q & i_mul15_pool_bs4_b;

    -- i_syncbuf_kernel_size_sync_buffer3_pool(BLACKBOX,44)@0
    -- in in_i_dependence@35
    -- in in_valid_in@35
    -- out out_buffer_out@35
    -- out out_valid_out@35
    thei_syncbuf_kernel_size_sync_buffer3_pool : i_syncbuf_kernel_size_sync_buffer3_pool43
    PORT MAP (
        in_buffer_in => in_kernel_size,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist69_sync_in_aunroll_x_in_i_valid_34_q,
        out_buffer_out => i_syncbuf_kernel_size_sync_buffer3_pool_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul15_pool_bs2_merged_bit_select(BITSELECT,407)@35
    i_mul15_pool_bs2_merged_bit_select_b <= i_syncbuf_kernel_size_sync_buffer3_pool_out_buffer_out(17 downto 0);
    i_mul15_pool_bs2_merged_bit_select_c <= i_syncbuf_kernel_size_sync_buffer3_pool_out_buffer_out(31 downto 18);

    -- i_mul15_pool_bjB9(BITJOIN,271)@35
    i_mul15_pool_bjB9_q <= GND_q & i_mul15_pool_bs2_merged_bit_select_b;

    -- i_mul15_pool_bs7(BITSELECT,269)@35
    i_mul15_pool_bs7_b <= STD_LOGIC_VECTOR(resFinalIntDiv_uid108_i_div_pool_q(31 downto 18));

    -- i_mul15_pool_ma3_cma(CHAINMULTADD,402)@35 + 2
    i_mul15_pool_ma3_cma_reset <= not (resetn);
    i_mul15_pool_ma3_cma_ena0 <= '1';
    i_mul15_pool_ma3_cma_ena1 <= i_mul15_pool_ma3_cma_ena0;
    i_mul15_pool_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul15_pool_ma3_cma_a0(0),15));
    i_mul15_pool_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul15_pool_ma3_cma_a0(1),15));
    i_mul15_pool_ma3_cma_p(0) <= i_mul15_pool_ma3_cma_l(0) * i_mul15_pool_ma3_cma_c0(0);
    i_mul15_pool_ma3_cma_p(1) <= i_mul15_pool_ma3_cma_l(1) * i_mul15_pool_ma3_cma_c0(1);
    i_mul15_pool_ma3_cma_u(0) <= RESIZE(i_mul15_pool_ma3_cma_p(0),35);
    i_mul15_pool_ma3_cma_u(1) <= RESIZE(i_mul15_pool_ma3_cma_p(1),35);
    i_mul15_pool_ma3_cma_w(0) <= i_mul15_pool_ma3_cma_u(0) + i_mul15_pool_ma3_cma_u(1);
    i_mul15_pool_ma3_cma_x(0) <= i_mul15_pool_ma3_cma_w(0);
    i_mul15_pool_ma3_cma_y(0) <= i_mul15_pool_ma3_cma_x(0);
    i_mul15_pool_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul15_pool_ma3_cma_a0 <= (others => (others => '0'));
            i_mul15_pool_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul15_pool_ma3_cma_ena0 = '1') THEN
                i_mul15_pool_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul15_pool_bs7_b),14);
                i_mul15_pool_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul15_pool_bs2_merged_bit_select_c),14);
                i_mul15_pool_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul15_pool_bjB9_q),19);
                i_mul15_pool_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul15_pool_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul15_pool_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul15_pool_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul15_pool_ma3_cma_ena1 = '1') THEN
                i_mul15_pool_ma3_cma_s(0) <= i_mul15_pool_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul15_pool_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul15_pool_ma3_cma_s(0)(33 downto 0)), xout => i_mul15_pool_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul15_pool_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul15_pool_ma3_cma_qq(33 downto 0));

    -- redist13_i_mul15_pool_ma3_cma_q_1(DELAY,430)
    redist13_i_mul15_pool_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul15_pool_ma3_cma_q, xout => redist13_i_mul15_pool_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul15_pool_align_14(BITSHIFT,276)@38
    i_mul15_pool_align_14_qint <= redist13_i_mul15_pool_ma3_cma_q_1_q & "000000000000000000";
    i_mul15_pool_align_14_q <= i_mul15_pool_align_14_qint(51 downto 0);

    -- i_mul15_pool_bs11(BITSELECT,273)@35
    i_mul15_pool_bs11_b <= resFinalIntDiv_uid108_i_div_pool_q(31 downto 18);

    -- i_mul15_pool_im10_cma(CHAINMULTADD,395)@35 + 2
    i_mul15_pool_im10_cma_reset <= not (resetn);
    i_mul15_pool_im10_cma_ena0 <= '1';
    i_mul15_pool_im10_cma_ena1 <= i_mul15_pool_im10_cma_ena0;
    i_mul15_pool_im10_cma_p(0) <= i_mul15_pool_im10_cma_a0(0) * i_mul15_pool_im10_cma_c0(0);
    i_mul15_pool_im10_cma_u(0) <= RESIZE(i_mul15_pool_im10_cma_p(0),28);
    i_mul15_pool_im10_cma_w(0) <= i_mul15_pool_im10_cma_u(0);
    i_mul15_pool_im10_cma_x(0) <= i_mul15_pool_im10_cma_w(0);
    i_mul15_pool_im10_cma_y(0) <= i_mul15_pool_im10_cma_x(0);
    i_mul15_pool_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul15_pool_im10_cma_a0 <= (others => (others => '0'));
            i_mul15_pool_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul15_pool_im10_cma_ena0 = '1') THEN
                i_mul15_pool_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul15_pool_bs11_b),14);
                i_mul15_pool_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul15_pool_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul15_pool_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul15_pool_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul15_pool_im10_cma_ena1 = '1') THEN
                i_mul15_pool_im10_cma_s(0) <= i_mul15_pool_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul15_pool_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul15_pool_im10_cma_s(0)(27 downto 0)), xout => i_mul15_pool_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul15_pool_im10_cma_q <= STD_LOGIC_VECTOR(i_mul15_pool_im10_cma_qq(27 downto 0));

    -- redist20_i_mul15_pool_im10_cma_q_1(DELAY,437)
    redist20_i_mul15_pool_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul15_pool_im10_cma_q, xout => redist20_i_mul15_pool_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul15_pool_bs1(BITSELECT,263)@35
    i_mul15_pool_bs1_in <= resFinalIntDiv_uid108_i_div_pool_q(17 downto 0);
    i_mul15_pool_bs1_b <= i_mul15_pool_bs1_in(17 downto 0);

    -- i_mul15_pool_im0_cma(CHAINMULTADD,394)@35 + 2
    i_mul15_pool_im0_cma_reset <= not (resetn);
    i_mul15_pool_im0_cma_ena0 <= '1';
    i_mul15_pool_im0_cma_ena1 <= i_mul15_pool_im0_cma_ena0;
    i_mul15_pool_im0_cma_p(0) <= i_mul15_pool_im0_cma_a0(0) * i_mul15_pool_im0_cma_c0(0);
    i_mul15_pool_im0_cma_u(0) <= RESIZE(i_mul15_pool_im0_cma_p(0),36);
    i_mul15_pool_im0_cma_w(0) <= i_mul15_pool_im0_cma_u(0);
    i_mul15_pool_im0_cma_x(0) <= i_mul15_pool_im0_cma_w(0);
    i_mul15_pool_im0_cma_y(0) <= i_mul15_pool_im0_cma_x(0);
    i_mul15_pool_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul15_pool_im0_cma_a0 <= (others => (others => '0'));
            i_mul15_pool_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul15_pool_im0_cma_ena0 = '1') THEN
                i_mul15_pool_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul15_pool_bs1_b),18);
                i_mul15_pool_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul15_pool_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul15_pool_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul15_pool_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul15_pool_im0_cma_ena1 = '1') THEN
                i_mul15_pool_im0_cma_s(0) <= i_mul15_pool_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul15_pool_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul15_pool_im0_cma_s(0)(35 downto 0)), xout => i_mul15_pool_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul15_pool_im0_cma_q <= STD_LOGIC_VECTOR(i_mul15_pool_im0_cma_qq(35 downto 0));

    -- redist21_i_mul15_pool_im0_cma_q_1(DELAY,438)
    redist21_i_mul15_pool_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul15_pool_im0_cma_q, xout => redist21_i_mul15_pool_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul15_pool_join_13(BITJOIN,275)@38
    i_mul15_pool_join_13_q <= redist20_i_mul15_pool_im10_cma_q_1_q & redist21_i_mul15_pool_im0_cma_q_1_q;

    -- i_mul15_pool_result_add_0_0(ADD,278)@38
    i_mul15_pool_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul15_pool_join_13_q));
    i_mul15_pool_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul15_pool_align_14_q(51)) & i_mul15_pool_align_14_q));
    i_mul15_pool_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul15_pool_result_add_0_0_a) + SIGNED(i_mul15_pool_result_add_0_0_b));
    i_mul15_pool_result_add_0_0_q <= i_mul15_pool_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul15_pool_rnd_sel(BITSELECT,241)@38
    bgTrunc_i_mul15_pool_rnd_sel_in <= i_mul15_pool_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul15_pool_rnd_sel_b <= bgTrunc_i_mul15_pool_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul15_pool_sel_x(BITSELECT,5)@38
    bgTrunc_i_mul15_pool_sel_x_b <= bgTrunc_i_mul15_pool_rnd_sel_b(31 downto 0);

    -- redist75_bgTrunc_i_mul15_pool_sel_x_b_1(DELAY,492)
    redist75_bgTrunc_i_mul15_pool_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul15_pool_sel_x_b, xout => redist75_bgTrunc_i_mul15_pool_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- redist73_bgTrunc_i_sub_pool_sel_x_b_5_notEnable(LOGICAL,592)
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist73_bgTrunc_i_sub_pool_sel_x_b_5_nor(LOGICAL,593)
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_nor_q <= not (redist73_bgTrunc_i_sub_pool_sel_x_b_5_notEnable_q or redist73_bgTrunc_i_sub_pool_sel_x_b_5_sticky_ena_q);

    -- redist73_bgTrunc_i_sub_pool_sel_x_b_5_cmpReg(REG,591)
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist73_bgTrunc_i_sub_pool_sel_x_b_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist73_bgTrunc_i_sub_pool_sel_x_b_5_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist73_bgTrunc_i_sub_pool_sel_x_b_5_sticky_ena(REG,594)
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist73_bgTrunc_i_sub_pool_sel_x_b_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist73_bgTrunc_i_sub_pool_sel_x_b_5_nor_q = "1") THEN
                redist73_bgTrunc_i_sub_pool_sel_x_b_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist73_bgTrunc_i_sub_pool_sel_x_b_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist73_bgTrunc_i_sub_pool_sel_x_b_5_enaAnd(LOGICAL,595)
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_enaAnd_q <= redist73_bgTrunc_i_sub_pool_sel_x_b_5_sticky_ena_q and VCC_q;

    -- redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt(COUNTER,589)
    -- low=0, high=1, step=1, init=0
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_i <= redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_i, 1)));

    -- redist68_sync_in_aunroll_x_in_c0_eni3_3_33_notEnable(LOGICAL,582)
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist68_sync_in_aunroll_x_in_c0_eni3_3_33_nor(LOGICAL,583)
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_nor_q <= not (redist68_sync_in_aunroll_x_in_c0_eni3_3_33_notEnable_q or redist68_sync_in_aunroll_x_in_c0_eni3_3_33_sticky_ena_q);

    -- redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_last(CONSTANT,579)
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_last_q <= "011110";

    -- redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmp(LOGICAL,580)
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmp_b <= STD_LOGIC_VECTOR("0" & redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_q);
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmp_q <= "1" WHEN redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_last_q = redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmp_b ELSE "0";

    -- redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmpReg(REG,581)
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmpReg_q <= STD_LOGIC_VECTOR(redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmp_q);
        END IF;
    END PROCESS;

    -- redist68_sync_in_aunroll_x_in_c0_eni3_3_33_sticky_ena(REG,584)
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist68_sync_in_aunroll_x_in_c0_eni3_3_33_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist68_sync_in_aunroll_x_in_c0_eni3_3_33_nor_q = "1") THEN
                redist68_sync_in_aunroll_x_in_c0_eni3_3_33_sticky_ena_q <= STD_LOGIC_VECTOR(redist68_sync_in_aunroll_x_in_c0_eni3_3_33_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist68_sync_in_aunroll_x_in_c0_eni3_3_33_enaAnd(LOGICAL,585)
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_enaAnd_q <= redist68_sync_in_aunroll_x_in_c0_eni3_3_33_sticky_ena_q and VCC_q;

    -- redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt(COUNTER,577)
    -- low=0, high=31, step=1, init=0
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_i <= TO_UNSIGNED(0, 5);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_i <= redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_i, 5)));

    -- redist68_sync_in_aunroll_x_in_c0_eni3_3_33_wraddr(REG,578)
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist68_sync_in_aunroll_x_in_c0_eni3_3_33_wraddr_q <= "11111";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist68_sync_in_aunroll_x_in_c0_eni3_3_33_wraddr_q <= STD_LOGIC_VECTOR(redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem(DUALMEM,576)
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni3_3);
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_aa <= redist68_sync_in_aunroll_x_in_c0_eni3_3_33_wraddr_q;
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_ab <= redist68_sync_in_aunroll_x_in_c0_eni3_3_33_rdcnt_q;
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_reset0 <= not (resetn);
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 32,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 32,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist68_sync_in_aunroll_x_in_c0_eni3_3_33_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_reset0,
        clock1 => clock,
        address_a => redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_aa,
        data_a => redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_ab,
        q_b => redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_iq
    );
    redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_q <= redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_iq(31 downto 0);

    -- i_sub_pool(ADD,41)@34
    i_sub_pool_a <= STD_LOGIC_VECTOR("0" & redist66_sync_in_aunroll_x_in_c0_eni3_1_33_outputreg_q);
    i_sub_pool_b <= STD_LOGIC_VECTOR("0" & redist68_sync_in_aunroll_x_in_c0_eni3_3_33_mem_q);
    i_sub_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_pool_a) + UNSIGNED(i_sub_pool_b));
    i_sub_pool_q <= i_sub_pool_o(32 downto 0);

    -- bgTrunc_i_sub_pool_sel_x(BITSELECT,7)@34
    bgTrunc_i_sub_pool_sel_x_b <= i_sub_pool_q(31 downto 0);

    -- redist73_bgTrunc_i_sub_pool_sel_x_b_5_inputreg(DELAY,586)
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub_pool_sel_x_b, xout => redist73_bgTrunc_i_sub_pool_sel_x_b_5_inputreg_q, clk => clock, aclr => resetn );

    -- redist73_bgTrunc_i_sub_pool_sel_x_b_5_wraddr(REG,590)
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist73_bgTrunc_i_sub_pool_sel_x_b_5_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist73_bgTrunc_i_sub_pool_sel_x_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem(DUALMEM,588)
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_ia <= STD_LOGIC_VECTOR(redist73_bgTrunc_i_sub_pool_sel_x_b_5_inputreg_q);
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_aa <= redist73_bgTrunc_i_sub_pool_sel_x_b_5_wraddr_q;
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_ab <= redist73_bgTrunc_i_sub_pool_sel_x_b_5_rdcnt_q;
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_reset0 <= not (resetn);
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 32,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist73_bgTrunc_i_sub_pool_sel_x_b_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_reset0,
        clock1 => clock,
        address_a => redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_aa,
        data_a => redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_ab,
        q_b => redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_iq
    );
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_q <= redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_iq(31 downto 0);

    -- redist73_bgTrunc_i_sub_pool_sel_x_b_5_outputreg(DELAY,587)
    redist73_bgTrunc_i_sub_pool_sel_x_b_5_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist73_bgTrunc_i_sub_pool_sel_x_b_5_mem_q, xout => redist73_bgTrunc_i_sub_pool_sel_x_b_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_add23_pool(SUB,33)@39
    i_add23_pool_a <= STD_LOGIC_VECTOR("0" & redist73_bgTrunc_i_sub_pool_sel_x_b_5_outputreg_q);
    i_add23_pool_b <= STD_LOGIC_VECTOR("0" & redist75_bgTrunc_i_mul15_pool_sel_x_b_1_q);
    i_add23_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add23_pool_a) - UNSIGNED(i_add23_pool_b));
    i_add23_pool_q <= i_add23_pool_o(32 downto 0);

    -- bgTrunc_i_add23_pool_sel_x(BITSELECT,3)@39
    bgTrunc_i_add23_pool_sel_x_b <= STD_LOGIC_VECTOR(i_add23_pool_q(31 downto 0));

    -- redist77_bgTrunc_i_add23_pool_sel_x_b_2(DELAY,494)
    redist77_bgTrunc_i_add23_pool_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add23_pool_sel_x_b, xout => redist77_bgTrunc_i_add23_pool_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- i_add24_pool(ADD,34)@41
    i_add24_pool_a <= STD_LOGIC_VECTOR("0" & redist77_bgTrunc_i_add23_pool_sel_x_b_2_q);
    i_add24_pool_b <= STD_LOGIC_VECTOR("0" & redist78_bgTrunc_i_add21_pool_sel_x_b_1_q);
    i_add24_pool_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add24_pool_a) + UNSIGNED(i_add24_pool_b));
    i_add24_pool_q <= i_add24_pool_o(32 downto 0);

    -- bgTrunc_i_add24_pool_sel_x(BITSELECT,4)@41
    bgTrunc_i_add24_pool_sel_x_b <= i_add24_pool_q(31 downto 0);

    -- redist76_bgTrunc_i_add24_pool_sel_x_b_1(DELAY,493)
    redist76_bgTrunc_i_add24_pool_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add24_pool_sel_x_b, xout => redist76_bgTrunc_i_add24_pool_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom_pool_sel_x(BITSELECT,22)@42
    i_idxprom_pool_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist76_bgTrunc_i_add24_pool_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select(BITSELECT,405)@42
    i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_b <= i_idxprom_pool_sel_x_b(17 downto 0);
    i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_c <= i_idxprom_pool_sel_x_b(63 downto 54);
    i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_d <= i_idxprom_pool_sel_x_b(35 downto 18);
    i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_e <= i_idxprom_pool_sel_x_b(53 downto 36);

    -- i_arrayidx_pool_pool49_mult_x_im3_shift0(BITSHIFT,386)@42
    i_arrayidx_pool_pool49_mult_x_im3_shift0_qint <= i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx_pool_pool49_mult_x_im3_shift0_q <= i_arrayidx_pool_pool49_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx_pool_pool49_mult_x_align_15(BITSHIFT,235)@42
    i_arrayidx_pool_pool49_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_pool_pool49_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx_pool_pool49_mult_x_align_15_q <= i_arrayidx_pool_pool49_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx_pool_pool49_mult_x_im6_shift0(BITSHIFT,387)@42
    i_arrayidx_pool_pool49_mult_x_im6_shift0_qint <= i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx_pool_pool49_mult_x_im6_shift0_q <= i_arrayidx_pool_pool49_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx_pool_pool49_mult_x_align_14(BITSHIFT,234)@42
    i_arrayidx_pool_pool49_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_pool_pool49_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx_pool_pool49_mult_x_align_14_q <= i_arrayidx_pool_pool49_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx_pool_pool49_mult_x_join_16(BITJOIN,236)@42
    i_arrayidx_pool_pool49_mult_x_join_16_q <= i_arrayidx_pool_pool49_mult_x_align_15_q & i_arrayidx_pool_pool49_mult_x_align_14_q;

    -- i_arrayidx_pool_pool49_mult_x_im9_shift0(BITSHIFT,388)@42
    i_arrayidx_pool_pool49_mult_x_im9_shift0_qint <= i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx_pool_pool49_mult_x_im9_shift0_q <= i_arrayidx_pool_pool49_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx_pool_pool49_mult_x_align_12(BITSHIFT,232)@42
    i_arrayidx_pool_pool49_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_pool_pool49_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx_pool_pool49_mult_x_align_12_q <= i_arrayidx_pool_pool49_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx_pool_pool49_mult_x_im0_shift0(BITSHIFT,385)@42
    i_arrayidx_pool_pool49_mult_x_im0_shift0_qint <= i_arrayidx_pool_pool49_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx_pool_pool49_mult_x_im0_shift0_q <= i_arrayidx_pool_pool49_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx_pool_pool49_mult_x_join_13(BITJOIN,233)@42
    i_arrayidx_pool_pool49_mult_x_join_13_q <= i_arrayidx_pool_pool49_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx_pool_pool49_mult_x_im0_shift0_q);

    -- i_arrayidx_pool_pool49_mult_x_result_add_0_0(ADD,237)@42
    i_arrayidx_pool_pool49_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx_pool_pool49_mult_x_join_13_q);
    i_arrayidx_pool_pool49_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_pool_pool49_mult_x_join_16_q);
    i_arrayidx_pool_pool49_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_pool_pool49_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx_pool_pool49_mult_x_result_add_0_0_b));
    i_arrayidx_pool_pool49_mult_x_result_add_0_0_q <= i_arrayidx_pool_pool49_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx_pool_pool49_mult_extender_x(BITJOIN,15)@42
    i_arrayidx_pool_pool49_mult_extender_x_q <= i_arrayidx_pool_pool49_mult_multconst_x_q & i_arrayidx_pool_pool49_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx_pool_pool49_trunc_sel_x(BITSELECT,17)@42
    i_arrayidx_pool_pool49_trunc_sel_x_b <= i_arrayidx_pool_pool49_mult_extender_x_q(63 downto 0);

    -- redist72_i_arrayidx_pool_pool49_trunc_sel_x_b_1(DELAY,489)
    redist72_i_arrayidx_pool_pool49_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx_pool_pool49_trunc_sel_x_b, xout => redist72_i_arrayidx_pool_pool49_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_in_data_sync_buffer_pool(BLACKBOX,42)@0
    -- in in_i_dependence@43
    -- in in_valid_in@43
    -- out out_buffer_out@43
    -- out out_valid_out@43
    thei_syncbuf_in_data_sync_buffer_pool : i_syncbuf_in_data_sync_buffer_pool47
    PORT MAP (
        in_buffer_in => in_in_data,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist71_sync_in_aunroll_x_in_i_valid_42_q,
        out_buffer_out => i_syncbuf_in_data_sync_buffer_pool_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx_pool_pool49_add_x(ADD,18)@43
    i_arrayidx_pool_pool49_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_in_data_sync_buffer_pool_out_buffer_out);
    i_arrayidx_pool_pool49_add_x_b <= STD_LOGIC_VECTOR("0" & redist72_i_arrayidx_pool_pool49_trunc_sel_x_b_1_q);
    i_arrayidx_pool_pool49_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_pool_pool49_add_x_a) + UNSIGNED(i_arrayidx_pool_pool49_add_x_b));
    i_arrayidx_pool_pool49_add_x_q <= i_arrayidx_pool_pool49_add_x_o(64 downto 0);

    -- i_arrayidx_pool_pool49_dupName_0_trunc_sel_x(BITSELECT,12)@43
    i_arrayidx_pool_pool49_dupName_0_trunc_sel_x_b <= i_arrayidx_pool_pool49_add_x_q(63 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,24)@43
    out_c0_exi131_0 <= GND_q;
    out_c0_exi131_1 <= i_arrayidx_pool_pool49_dupName_0_trunc_sel_x_b;
    out_o_valid <= redist71_sync_in_aunroll_x_in_i_valid_42_q;

END normal;
