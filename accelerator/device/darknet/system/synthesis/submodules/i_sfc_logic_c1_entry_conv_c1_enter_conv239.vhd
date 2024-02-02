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

-- VHDL created from i_sfc_logic_c1_entry_conv_c1_enter_conv239
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

entity i_sfc_logic_c1_entry_conv_c1_enter_conv239 is
    port (
        in_N_Fout_dim : in std_logic_vector(31 downto 0);  -- ufix32
        in_S_conv : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_eni1_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni1_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi2_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi2_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exi2_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_entry_conv_c1_enter_conv239;

architecture normal of i_sfc_logic_c1_entry_conv_c1_enter_conv239 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_syncbuf_n_fout_dim_sync_buffer100_conv245 is
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


    component i_syncbuf_n_fout_dim_sync_buffer101_conv241 is
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


    component i_syncbuf_s_conv_sync_buffer96_conv243 is
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


    component i_syncbuf_s_conv_sync_buffer_conv247 is
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
    signal bgTrunc_i_mul28_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul30_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul32_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub31_conv_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub31_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub31_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub31_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub31_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_n_fout_dim_sync_buffer100_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_s_conv_sync_buffer96_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_s_conv_sync_buffer_conv_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid29_i_div27_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yPSE_uid31_i_div27_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSE_uid31_i_div27_conv_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSE_uid31_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal yPSEA_uid33_i_div27_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid33_i_div27_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid33_i_div27_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yPSEA_uid33_i_div27_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal yPS_uid34_i_div27_conv_in : STD_LOGIC_VECTOR (31 downto 0);
    signal yPS_uid34_i_div27_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal normYNoLeadOne_uid37_i_div27_conv_in : STD_LOGIC_VECTOR (30 downto 0);
    signal normYNoLeadOne_uid37_i_div27_conv_b : STD_LOGIC_VECTOR (30 downto 0);
    signal paddingY_uid38_i_div27_conv_q : STD_LOGIC_VECTOR (30 downto 0);
    signal updatedY_uid39_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal normYIsOneC2_uid38_i_div27_conv_a : STD_LOGIC_VECTOR (31 downto 0);
    signal normYIsOneC2_uid38_i_div27_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid38_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid41_i_div27_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid42_i_div27_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid42_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yIsZero_uid43_i_div27_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yIsZero_uid43_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fxpInverseRes_uid48_i_div27_conv_in : STD_LOGIC_VECTOR (38 downto 0);
    signal fxpInverseRes_uid48_i_div27_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal oneInvRes_uid49_i_div27_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal invResPostOneHandling2_uid50_i_div27_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal invResPostOneHandling2_uid50_i_div27_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal cWOut_uid51_i_div27_conv_q : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid52_i_div27_conv_a : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid52_i_div27_conv_b : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid52_i_div27_conv_o : STD_LOGIC_VECTOR (6 downto 0);
    signal rShiftCount_uid52_i_div27_conv_q : STD_LOGIC_VECTOR (6 downto 0);
    signal xPSX_uid53_i_div27_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal xPSX_uid53_i_div27_conv_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal xPSX_uid53_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zMsbY0_uid55_i_div27_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xPSXE_uid56_i_div27_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid56_i_div27_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid56_i_div27_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal xPSXE_uid56_i_div27_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftInput_uid59_i_div27_conv_in : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftInput_uid59_i_div27_conv_b : STD_LOGIC_VECTOR (64 downto 0);
    signal prodPostRightShiftPost_uid61_i_div27_conv_in : STD_LOGIC_VECTOR (62 downto 0);
    signal prodPostRightShiftPost_uid61_i_div27_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal prodPostRightShiftPostRnd_uid63_i_div27_conv_a : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid63_i_div27_conv_b : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid63_i_div27_conv_o : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid63_i_div27_conv_q : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRndRange_uid64_i_div27_conv_in : STD_LOGIC_VECTOR (32 downto 0);
    signal prodPostRightShiftPostRndRange_uid64_i_div27_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal cstValOvfPos_uid65_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cstValOvfneg_uid66_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal signX_uid67_i_div27_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstOvf_uid68_i_div27_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cstOvf_uid68_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinal_uid69_i_div27_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinal_uid69_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prod_qy_GT_x_uid71_i_div27_conv_a : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid71_i_div27_conv_b : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid71_i_div27_conv_o : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_GT_x_uid71_i_div27_conv_c : STD_LOGIC_VECTOR (0 downto 0);
    signal prod_qy_LT_x_uid72_i_div27_conv_a : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid72_i_div27_conv_b : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid72_i_div27_conv_o : STD_LOGIC_VECTOR (65 downto 0);
    signal prod_qy_LT_x_uid72_i_div27_conv_c : STD_LOGIC_VECTOR (0 downto 0);
    signal resultSign_uid77_i_div27_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal resultSign_uid77_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signResFinal_uid78_i_div27_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal OverflowCond_uid79_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CondNegX_uid80_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid81_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CondPosX_uid82_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal postMuxSelect_uid83_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstSubFinal_uid85_i_div27_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal resFinalMP1_uid86_i_div27_conv_a : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid86_i_div27_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid86_i_div27_conv_o : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalMP1_uid86_i_div27_conv_q : STD_LOGIC_VECTOR (32 downto 0);
    signal resFinalPostMux_uid87_i_div27_conv_in : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinalPostMux_uid87_i_div27_conv_b : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinalIntDiv_uid88_i_div27_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinalIntDiv_uid88_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid90_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid92_zCount_uid35_i_div27_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid92_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid93_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid95_zCount_uid35_i_div27_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid95_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid96_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid98_zCount_uid35_i_div27_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid98_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid101_zCount_uid35_i_div27_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid101_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (15 downto 0);
    signal zs_uid102_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid104_zCount_uid35_i_div27_conv_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid104_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid107_zCount_uid35_i_div27_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid107_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid108_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid110_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid113_zCount_uid35_i_div27_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid113_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid114_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid116_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid119_zCount_uid35_i_div27_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid119_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid121_zCount_uid35_i_div27_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid122_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid123_zCount_uid35_i_div27_conv_q : STD_LOGIC_VECTOR (5 downto 0);
    signal yT1_uid141_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal lowRangeB_uid143_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid143_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid144_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid145_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid145_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid145_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid145_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid146_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal yT2_uid147_invPolyEval_b : STD_LOGIC_VECTOR (20 downto 0);
    signal lowRangeB_uid149_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid149_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid150_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid151_invPolyEval_a : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid151_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid151_invPolyEval_o : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid151_invPolyEval_q : STD_LOGIC_VECTOR (29 downto 0);
    signal s2_uid152_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal lowRangeB_uid155_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid155_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid156_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s3sumAHighB_uid157_invPolyEval_a : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid157_invPolyEval_b : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid157_invPolyEval_o : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid157_invPolyEval_q : STD_LOGIC_VECTOR (38 downto 0);
    signal s3_uid158_invPolyEval_q : STD_LOGIC_VECTOR (40 downto 0);
    signal osig_uid161_pT1_uid142_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid164_pT2_uid148_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal nx_mergedSignalTM_uid178_pT3_uid154_invPolyEval_q : STD_LOGIC_VECTOR (23 downto 0);
    signal aboveLeftY_bottomExtension_uid183_pT3_uid154_invPolyEval_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aboveLeftY_mergedSignalTM_uid185_pT3_uid154_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal rightBottomX_bottomExtension_uid187_pT3_uid154_invPolyEval_q : STD_LOGIC_VECTOR (11 downto 0);
    signal rightBottomX_mergedSignalTM_uid189_pT3_uid154_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid195_pT3_uid154_invPolyEval_in : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid195_pT3_uid154_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal highBBits_uid196_pT3_uid154_invPolyEval_b : STD_LOGIC_VECTOR (18 downto 0);
    signal lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_a : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_b : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_o : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_q : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0_uid198_pT3_uid154_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal os_uid199_pT3_uid154_invPolyEval_in : STD_LOGIC_VECTOR (52 downto 0);
    signal os_uid199_pT3_uid154_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul28_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul28_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul30_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul30_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul32_conv_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul32_conv_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul28_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul28_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul28_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul28_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul28_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul28_conv_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul28_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul28_conv_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul28_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul28_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul28_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul28_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul28_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul28_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul28_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul30_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul30_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul30_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul30_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul30_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul30_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul30_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul30_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_mul32_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul32_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul32_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul32_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul32_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul32_conv_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul32_conv_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul32_conv_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul32_conv_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul32_conv_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul32_conv_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul32_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul32_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul32_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul32_conv_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage0Idx1Rng16_uid259_normY_uid36_i_div27_conv_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid259_normY_uid36_i_div27_conv_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid260_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid264_normY_uid36_i_div27_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid264_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng4_uid266_normY_uid36_i_div27_conv_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng4_uid266_normY_uid36_i_div27_conv_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1_uid267_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx2Rng8_uid269_normY_uid36_i_div27_conv_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2Rng8_uid269_normY_uid36_i_div27_conv_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2_uid270_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx3Rng12_uid272_normY_uid36_i_div27_conv_in : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage1Idx3Rng12_uid272_normY_uid36_i_div27_conv_b : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage1Idx3_uid273_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid275_normY_uid36_i_div27_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid275_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx1Rng1_uid277_normY_uid36_i_div27_conv_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1Rng1_uid277_normY_uid36_i_div27_conv_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage2Idx1_uid278_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx2Rng2_uid280_normY_uid36_i_div27_conv_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx2Rng2_uid280_normY_uid36_i_div27_conv_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage2Idx2_uid281_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2Idx3Pad3_uid282_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage2Idx3Rng3_uid283_normY_uid36_i_div27_conv_in : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage2Idx3Rng3_uid283_normY_uid36_i_div27_conv_b : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage2Idx3_uid284_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage2_uid286_normY_uid36_i_div27_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid286_normY_uid36_i_div27_conv_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bs6_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bs7_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bs10_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid58_i_div27_conv_bs11_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid58_i_div27_conv_join_12_q : STD_LOGIC_VECTOR (65 downto 0);
    signal prodXInvY_uid58_i_div27_conv_align_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal prodXInvY_uid58_i_div27_conv_align_13_qint : STD_LOGIC_VECTOR (55 downto 0);
    signal prodXInvY_uid58_i_div27_conv_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid58_i_div27_conv_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid58_i_div27_conv_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal prodXInvY_uid58_i_div27_conv_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to32_uid306_in : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to32_uid306_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng32_uid307_prodPostRightShift_uid60_i_div27_conv_b : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftStage0Idx1_uid308_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to64_uid309_in : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to64_uid309_b : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx2Rng64_uid310_prodPostRightShift_uid60_i_div27_conv_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx2_uid311_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal stageIndexName_to65_uid312_in : STD_LOGIC_VECTOR (64 downto 0);
    signal stageIndexName_to65_uid312_b : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to8_uid316_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid316_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid317_prodPostRightShift_uid60_i_div27_conv_b : STD_LOGIC_VECTOR (56 downto 0);
    signal rightShiftStage1Idx1_uid318_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to16_uid319_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid319_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage1Idx2Rng16_uid320_prodPostRightShift_uid60_i_div27_conv_b : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx2_uid321_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to24_uid322_in : STD_LOGIC_VECTOR (23 downto 0);
    signal seMsb_to24_uid322_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx3Rng24_uid323_prodPostRightShift_uid60_i_div27_conv_b : STD_LOGIC_VECTOR (40 downto 0);
    signal rightShiftStage1Idx3_uid324_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to2_uid327_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid327_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2Idx1Rng2_uid328_prodPostRightShift_uid60_i_div27_conv_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage2Idx1_uid329_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to4_uid330_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid330_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx2Rng4_uid331_prodPostRightShift_uid60_i_div27_conv_b : STD_LOGIC_VECTOR (60 downto 0);
    signal rightShiftStage2Idx2_uid332_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal seMsb_to6_uid333_in : STD_LOGIC_VECTOR (5 downto 0);
    signal seMsb_to6_uid333_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage2Idx3Rng6_uid334_prodPostRightShift_uid60_i_div27_conv_b : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage2Idx3_uid335_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage3Idx1Rng1_uid338_prodPostRightShift_uid60_i_div27_conv_b : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage3Idx1_uid339_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv_q : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid70_i_div27_conv_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid70_i_div27_conv_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid70_i_div27_conv_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid70_i_div27_conv_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid70_i_div27_conv_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid70_i_div27_conv_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodResY_uid70_i_div27_conv_bs5_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid70_i_div27_conv_bs6_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid70_i_div27_conv_bs10_b : STD_LOGIC_VECTOR (13 downto 0);
    signal prodResY_uid70_i_div27_conv_join_11_q : STD_LOGIC_VECTOR (63 downto 0);
    signal prodResY_uid70_i_div27_conv_align_12_q : STD_LOGIC_VECTOR (50 downto 0);
    signal prodResY_uid70_i_div27_conv_align_12_qint : STD_LOGIC_VECTOR (50 downto 0);
    signal prodResY_uid70_i_div27_conv_result_add_0_0_a : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid70_i_div27_conv_result_add_0_0_b : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid70_i_div27_conv_result_add_0_0_o : STD_LOGIC_VECTOR (64 downto 0);
    signal prodResY_uid70_i_div27_conv_result_add_0_0_q : STD_LOGIC_VECTOR (64 downto 0);
    signal memoryC0_uid125_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC0_uid125_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid125_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid125_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid125_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid125_invTabGen_lutmem_r : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC1_uid128_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC1_uid128_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid128_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid128_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid128_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid128_invTabGen_lutmem_r : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC2_uid131_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC2_uid131_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid131_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid131_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid131_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid131_invTabGen_lutmem_r : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC3_uid134_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC3_uid134_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid134_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid134_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid134_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid134_invTabGen_lutmem_r : STD_LOGIC_VECTOR (13 downto 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_reset : std_logic;
    type prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_a0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of prodXY_uid160_pT1_uid142_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid160_pT1_uid142_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_c0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid160_pT1_uid142_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid160_pT1_uid142_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_l : prodXY_uid160_pT1_uid142_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid160_pT1_uid142_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(28 downto 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_p : prodXY_uid160_pT1_uid142_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_u : prodXY_uid160_pT1_uid142_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_w : prodXY_uid160_pT1_uid142_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_x : prodXY_uid160_pT1_uid142_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_y : prodXY_uid160_pT1_uid142_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_s : prodXY_uid160_pT1_uid142_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid160_pT1_uid142_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_reset : std_logic;
    type prodXY_uid163_pT2_uid148_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(20 downto 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_a0 : prodXY_uid163_pT2_uid148_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid163_pT2_uid148_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid163_pT2_uid148_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(22 downto 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_c0 : prodXY_uid163_pT2_uid148_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid163_pT2_uid148_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid163_pT2_uid148_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(21 downto 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_l : prodXY_uid163_pT2_uid148_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid163_pT2_uid148_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(44 downto 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_p : prodXY_uid163_pT2_uid148_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_u : prodXY_uid163_pT2_uid148_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_w : prodXY_uid163_pT2_uid148_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_x : prodXY_uid163_pT2_uid148_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_y : prodXY_uid163_pT2_uid148_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_s : prodXY_uid163_pT2_uid148_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_qq : STD_LOGIC_VECTOR (43 downto 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_q : STD_LOGIC_VECTOR (43 downto 0);
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid163_pT2_uid148_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_reset : std_logic;
    type sm0_uid192_pT3_uid154_invPolyEval_cma_a0type is array(NATURAL range <>) of SIGNED(17 downto 0);
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_a0 : sm0_uid192_pT3_uid154_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid192_pT3_uid154_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_c0 : sm0_uid192_pT3_uid154_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid192_pT3_uid154_invPolyEval_cma_c0 : signal is true;
    type sm0_uid192_pT3_uid154_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(35 downto 0);
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_p : sm0_uid192_pT3_uid154_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_u : sm0_uid192_pT3_uid154_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_w : sm0_uid192_pT3_uid154_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_x : sm0_uid192_pT3_uid154_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_y : sm0_uid192_pT3_uid154_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_s : sm0_uid192_pT3_uid154_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid192_pT3_uid154_invPolyEval_cma_ena1 : std_logic;
    signal i_mul28_conv_im0_cma_reset : std_logic;
    type i_mul28_conv_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul28_conv_im0_cma_a0 : i_mul28_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul28_conv_im0_cma_a0 : signal is true;
    signal i_mul28_conv_im0_cma_c0 : i_mul28_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul28_conv_im0_cma_c0 : signal is true;
    type i_mul28_conv_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul28_conv_im0_cma_p : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul28_conv_im0_cma_u : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul28_conv_im0_cma_w : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul28_conv_im0_cma_x : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul28_conv_im0_cma_y : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul28_conv_im0_cma_s : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul28_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul28_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul28_conv_im0_cma_ena0 : std_logic;
    signal i_mul28_conv_im0_cma_ena1 : std_logic;
    signal i_mul28_conv_im10_cma_reset : std_logic;
    signal i_mul28_conv_im10_cma_a0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul28_conv_im10_cma_a0 : signal is true;
    signal i_mul28_conv_im10_cma_c0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul28_conv_im10_cma_c0 : signal is true;
    type i_mul28_conv_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_mul28_conv_im10_cma_p : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul28_conv_im10_cma_u : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul28_conv_im10_cma_w : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul28_conv_im10_cma_x : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul28_conv_im10_cma_y : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul28_conv_im10_cma_s : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul28_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul28_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul28_conv_im10_cma_ena0 : std_logic;
    signal i_mul28_conv_im10_cma_ena1 : std_logic;
    signal i_mul30_conv_im0_cma_reset : std_logic;
    signal i_mul30_conv_im0_cma_a0 : i_mul28_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul30_conv_im0_cma_a0 : signal is true;
    signal i_mul30_conv_im0_cma_c0 : i_mul28_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul30_conv_im0_cma_c0 : signal is true;
    signal i_mul30_conv_im0_cma_p : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul30_conv_im0_cma_u : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul30_conv_im0_cma_w : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul30_conv_im0_cma_x : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul30_conv_im0_cma_y : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul30_conv_im0_cma_s : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul30_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul30_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul30_conv_im0_cma_ena0 : std_logic;
    signal i_mul30_conv_im0_cma_ena1 : std_logic;
    signal i_mul30_conv_im10_cma_reset : std_logic;
    signal i_mul30_conv_im10_cma_a0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul30_conv_im10_cma_a0 : signal is true;
    signal i_mul30_conv_im10_cma_c0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul30_conv_im10_cma_c0 : signal is true;
    signal i_mul30_conv_im10_cma_p : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul30_conv_im10_cma_u : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul30_conv_im10_cma_w : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul30_conv_im10_cma_x : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul30_conv_im10_cma_y : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul30_conv_im10_cma_s : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul30_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul30_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul30_conv_im10_cma_ena0 : std_logic;
    signal i_mul30_conv_im10_cma_ena1 : std_logic;
    signal i_mul32_conv_im0_cma_reset : std_logic;
    signal i_mul32_conv_im0_cma_a0 : i_mul28_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul32_conv_im0_cma_a0 : signal is true;
    signal i_mul32_conv_im0_cma_c0 : i_mul28_conv_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul32_conv_im0_cma_c0 : signal is true;
    signal i_mul32_conv_im0_cma_p : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul32_conv_im0_cma_u : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul32_conv_im0_cma_w : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul32_conv_im0_cma_x : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul32_conv_im0_cma_y : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul32_conv_im0_cma_s : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal i_mul32_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul32_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul32_conv_im0_cma_ena0 : std_logic;
    signal i_mul32_conv_im0_cma_ena1 : std_logic;
    signal i_mul32_conv_im10_cma_reset : std_logic;
    signal i_mul32_conv_im10_cma_a0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul32_conv_im10_cma_a0 : signal is true;
    signal i_mul32_conv_im10_cma_c0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of i_mul32_conv_im10_cma_c0 : signal is true;
    signal i_mul32_conv_im10_cma_p : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul32_conv_im10_cma_u : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul32_conv_im10_cma_w : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul32_conv_im10_cma_x : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul32_conv_im10_cma_y : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul32_conv_im10_cma_s : i_mul28_conv_im10_cma_ptype(0 to 0);
    signal i_mul32_conv_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul32_conv_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul32_conv_im10_cma_ena0 : std_logic;
    signal i_mul32_conv_im10_cma_ena1 : std_logic;
    signal prodXInvY_uid58_i_div27_conv_im0_cma_reset : std_logic;
    signal prodXInvY_uid58_i_div27_conv_im0_cma_a0 : i_mul28_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid58_i_div27_conv_im0_cma_a0 : signal is true;
    signal prodXInvY_uid58_i_div27_conv_im0_cma_c0 : i_mul28_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid58_i_div27_conv_im0_cma_c0 : signal is true;
    signal prodXInvY_uid58_i_div27_conv_im0_cma_p : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im0_cma_u : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im0_cma_w : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im0_cma_x : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im0_cma_y : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im0_cma_s : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXInvY_uid58_i_div27_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXInvY_uid58_i_div27_conv_im0_cma_ena0 : std_logic;
    signal prodXInvY_uid58_i_div27_conv_im0_cma_ena1 : std_logic;
    signal prodXInvY_uid58_i_div27_conv_im9_cma_reset : std_logic;
    type prodXInvY_uid58_i_div27_conv_im9_cma_a0type is array(NATURAL range <>) of UNSIGNED(14 downto 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_a0 : prodXInvY_uid58_i_div27_conv_im9_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid58_i_div27_conv_im9_cma_a0 : signal is true;
    signal prodXInvY_uid58_i_div27_conv_im9_cma_c0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_ltype(0 to 0);
    attribute preserve of prodXInvY_uid58_i_div27_conv_im9_cma_c0 : signal is true;
    type prodXInvY_uid58_i_div27_conv_im9_cma_ltype is array(NATURAL range <>) of SIGNED(15 downto 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_l : prodXInvY_uid58_i_div27_conv_im9_cma_ltype(0 to 0);
    type prodXInvY_uid58_i_div27_conv_im9_cma_ptype is array(NATURAL range <>) of SIGNED(30 downto 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_p : prodXInvY_uid58_i_div27_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_u : prodXInvY_uid58_i_div27_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_w : prodXInvY_uid58_i_div27_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_x : prodXInvY_uid58_i_div27_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_y : prodXInvY_uid58_i_div27_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_s : prodXInvY_uid58_i_div27_conv_im9_cma_ptype(0 to 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_qq : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_q : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXInvY_uid58_i_div27_conv_im9_cma_ena0 : std_logic;
    signal prodXInvY_uid58_i_div27_conv_im9_cma_ena1 : std_logic;
    signal prodResY_uid70_i_div27_conv_im0_cma_reset : std_logic;
    signal prodResY_uid70_i_div27_conv_im0_cma_a0 : i_mul28_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodResY_uid70_i_div27_conv_im0_cma_a0 : signal is true;
    signal prodResY_uid70_i_div27_conv_im0_cma_c0 : i_mul28_conv_im0_cma_a0type(0 to 0);
    attribute preserve of prodResY_uid70_i_div27_conv_im0_cma_c0 : signal is true;
    signal prodResY_uid70_i_div27_conv_im0_cma_p : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im0_cma_u : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im0_cma_w : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im0_cma_x : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im0_cma_y : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im0_cma_s : i_mul28_conv_im0_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodResY_uid70_i_div27_conv_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodResY_uid70_i_div27_conv_im0_cma_ena0 : std_logic;
    signal prodResY_uid70_i_div27_conv_im0_cma_ena1 : std_logic;
    signal prodResY_uid70_i_div27_conv_im8_cma_reset : std_logic;
    signal prodResY_uid70_i_div27_conv_im8_cma_a0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodResY_uid70_i_div27_conv_im8_cma_a0 : signal is true;
    signal prodResY_uid70_i_div27_conv_im8_cma_c0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodResY_uid70_i_div27_conv_im8_cma_c0 : signal is true;
    type prodResY_uid70_i_div27_conv_im8_cma_ptype is array(NATURAL range <>) of SIGNED(27 downto 0);
    signal prodResY_uid70_i_div27_conv_im8_cma_p : prodResY_uid70_i_div27_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im8_cma_u : prodResY_uid70_i_div27_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im8_cma_w : prodResY_uid70_i_div27_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im8_cma_x : prodResY_uid70_i_div27_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im8_cma_y : prodResY_uid70_i_div27_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im8_cma_s : prodResY_uid70_i_div27_conv_im8_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_im8_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodResY_uid70_i_div27_conv_im8_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal prodResY_uid70_i_div27_conv_im8_cma_ena0 : std_logic;
    signal prodResY_uid70_i_div27_conv_im8_cma_ena1 : std_logic;
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_reset : std_logic;
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0 : i_mul28_conv_im0_cma_a0type(0 to 1);
    attribute preserve of multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0 : signal is true;
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0 : sm0_uid192_pT3_uid154_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0 : signal is true;
    type multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_l : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ltype(0 to 1);
    type multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(36 downto 0);
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ptype(0 to 1);
    type multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_utype is array(NATURAL range <>) of SIGNED(37 downto 0);
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_u : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_utype(0 to 1);
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_w : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_x : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_y : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_s : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_qq : STD_LOGIC_VECTOR (36 downto 0);
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q : STD_LOGIC_VECTOR (36 downto 0);
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena0 : std_logic;
    signal multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena1 : std_logic;
    signal i_mul28_conv_ma3_cma_reset : std_logic;
    signal i_mul28_conv_ma3_cma_a0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of i_mul28_conv_ma3_cma_a0 : signal is true;
    signal i_mul28_conv_ma3_cma_c0 : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of i_mul28_conv_ma3_cma_c0 : signal is true;
    signal i_mul28_conv_ma3_cma_l : prodXY_uid160_pT1_uid142_invPolyEval_cma_ltype(0 to 1);
    type i_mul28_conv_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_mul28_conv_ma3_cma_p : i_mul28_conv_ma3_cma_ptype(0 to 1);
    type i_mul28_conv_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_mul28_conv_ma3_cma_u : i_mul28_conv_ma3_cma_utype(0 to 1);
    signal i_mul28_conv_ma3_cma_w : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul28_conv_ma3_cma_x : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul28_conv_ma3_cma_y : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul28_conv_ma3_cma_s : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul28_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul28_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul28_conv_ma3_cma_ena0 : std_logic;
    signal i_mul28_conv_ma3_cma_ena1 : std_logic;
    signal i_mul30_conv_ma3_cma_reset : std_logic;
    signal i_mul30_conv_ma3_cma_a0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of i_mul30_conv_ma3_cma_a0 : signal is true;
    signal i_mul30_conv_ma3_cma_c0 : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of i_mul30_conv_ma3_cma_c0 : signal is true;
    signal i_mul30_conv_ma3_cma_l : prodXY_uid160_pT1_uid142_invPolyEval_cma_ltype(0 to 1);
    signal i_mul30_conv_ma3_cma_p : i_mul28_conv_ma3_cma_ptype(0 to 1);
    signal i_mul30_conv_ma3_cma_u : i_mul28_conv_ma3_cma_utype(0 to 1);
    signal i_mul30_conv_ma3_cma_w : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul30_conv_ma3_cma_x : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul30_conv_ma3_cma_y : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul30_conv_ma3_cma_s : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul30_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul30_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul30_conv_ma3_cma_ena0 : std_logic;
    signal i_mul30_conv_ma3_cma_ena1 : std_logic;
    signal i_mul32_conv_ma3_cma_reset : std_logic;
    signal i_mul32_conv_ma3_cma_a0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of i_mul32_conv_ma3_cma_a0 : signal is true;
    signal i_mul32_conv_ma3_cma_c0 : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of i_mul32_conv_ma3_cma_c0 : signal is true;
    signal i_mul32_conv_ma3_cma_l : prodXY_uid160_pT1_uid142_invPolyEval_cma_ltype(0 to 1);
    signal i_mul32_conv_ma3_cma_p : i_mul28_conv_ma3_cma_ptype(0 to 1);
    signal i_mul32_conv_ma3_cma_u : i_mul28_conv_ma3_cma_utype(0 to 1);
    signal i_mul32_conv_ma3_cma_w : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul32_conv_ma3_cma_x : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul32_conv_ma3_cma_y : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul32_conv_ma3_cma_s : i_mul28_conv_ma3_cma_utype(0 to 0);
    signal i_mul32_conv_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul32_conv_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul32_conv_ma3_cma_ena0 : std_logic;
    signal i_mul32_conv_ma3_cma_ena1 : std_logic;
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_reset : std_logic;
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_a0 : i_mul28_conv_im0_cma_a0type(0 to 1);
    attribute preserve of prodXInvY_uid58_i_div27_conv_ma3_cma_a0 : signal is true;
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_c0 : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ltype(0 to 1);
    attribute preserve of prodXInvY_uid58_i_div27_conv_ma3_cma_c0 : signal is true;
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_l : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ltype(0 to 1);
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_p : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_utype(0 to 1);
    type prodXInvY_uid58_i_div27_conv_ma3_cma_utype is array(NATURAL range <>) of SIGNED(38 downto 0);
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_u : prodXInvY_uid58_i_div27_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_w : prodXInvY_uid58_i_div27_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_x : prodXInvY_uid58_i_div27_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_y : prodXInvY_uid58_i_div27_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_s : prodXInvY_uid58_i_div27_conv_ma3_cma_utype(0 to 1);
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_qq : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_q : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_ena0 : std_logic;
    signal prodXInvY_uid58_i_div27_conv_ma3_cma_ena1 : std_logic;
    signal prodResY_uid70_i_div27_conv_ma3_cma_reset : std_logic;
    signal prodResY_uid70_i_div27_conv_ma3_cma_a0 : i_mul28_conv_im0_cma_a0type(0 to 1);
    attribute preserve of prodResY_uid70_i_div27_conv_ma3_cma_a0 : signal is true;
    signal prodResY_uid70_i_div27_conv_ma3_cma_c0 : prodXY_uid160_pT1_uid142_invPolyEval_cma_c0type(0 to 1);
    attribute preserve of prodResY_uid70_i_div27_conv_ma3_cma_c0 : signal is true;
    signal prodResY_uid70_i_div27_conv_ma3_cma_l : multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ltype(0 to 1);
    type prodResY_uid70_i_div27_conv_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(32 downto 0);
    signal prodResY_uid70_i_div27_conv_ma3_cma_p : prodResY_uid70_i_div27_conv_ma3_cma_ptype(0 to 1);
    signal prodResY_uid70_i_div27_conv_ma3_cma_u : i_mul28_conv_ma3_cma_ptype(0 to 1);
    signal prodResY_uid70_i_div27_conv_ma3_cma_w : i_mul28_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_ma3_cma_x : i_mul28_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_ma3_cma_y : i_mul28_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_ma3_cma_s : i_mul28_conv_ma3_cma_ptype(0 to 0);
    signal prodResY_uid70_i_div27_conv_ma3_cma_qq : STD_LOGIC_VECTOR (32 downto 0);
    signal prodResY_uid70_i_div27_conv_ma3_cma_q : STD_LOGIC_VECTOR (32 downto 0);
    signal prodResY_uid70_i_div27_conv_ma3_cma_ena0 : std_logic;
    signal prodResY_uid70_i_div27_conv_ma3_cma_ena1 : std_logic;
    signal i_mul30_conv_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul30_conv_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul28_conv_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul28_conv_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul32_conv_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul32_conv_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal yAddr_uid45_i_div27_conv_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yAddr_uid45_i_div27_conv_merged_bit_select_c : STD_LOGIC_VECTOR (22 downto 0);
    signal rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid109_zCount_uid35_i_div27_conv_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid109_zCount_uid35_i_div27_conv_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid115_zCount_uid35_i_div27_conv_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid115_zCount_uid35_i_div27_conv_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid263_normY_uid36_i_div27_conv_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid263_normY_uid36_i_div27_conv_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid263_normY_uid36_i_div27_conv_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (12 downto 0);
    signal topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (5 downto 0);
    signal redist0_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist1_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist3_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist4_rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_yAddr_uid45_i_div27_conv_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist6_yAddr_uid45_i_div27_conv_merged_bit_select_b_5_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist8_yAddr_uid45_i_div27_conv_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist9_yAddr_uid45_i_div27_conv_merged_bit_select_c_5_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist11_prodResY_uid70_i_div27_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist12_prodXInvY_uid58_i_div27_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist13_i_mul32_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist14_i_mul30_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist15_i_mul28_conv_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist16_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist17_prodResY_uid70_i_div27_conv_im8_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist18_prodResY_uid70_i_div27_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist19_prodXInvY_uid58_i_div27_conv_im9_cma_q_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist20_prodXInvY_uid58_i_div27_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist21_i_mul32_conv_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist22_i_mul32_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist23_i_mul30_conv_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist24_i_mul30_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist25_i_mul28_conv_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist26_i_mul28_conv_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist27_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist28_memoryC1_uid128_invTabGen_lutmem_r_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist29_memoryC0_uid125_invTabGen_lutmem_r_1_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist30_xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_os_uid199_pT3_uid154_invPolyEval_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist32_osig_uid164_pT2_uid148_invPolyEval_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist33_lowRangeB_uid149_invPolyEval_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_lowRangeB_uid143_invPolyEval_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_r_uid123_zCount_uid35_i_div27_conv_q_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist37_vCount_uid110_zCount_uid35_i_div27_conv_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_vCount_uid104_zCount_uid35_i_div27_conv_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_vCount_uid98_zCount_uid35_i_div27_conv_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_vCount_uid92_zCount_uid35_i_div27_conv_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_resFinalPostMux_uid87_i_div27_conv_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist42_resFinal_uid69_i_div27_conv_q_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist43_resFinal_uid69_i_div27_conv_q_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist44_signX_uid67_i_div27_conv_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_signX_uid67_i_div27_conv_b_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_prodPostRightShiftPostRndRange_uid64_i_div27_conv_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist47_prodPostRightShiftPost_uid61_i_div27_conv_b_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist48_rightShiftInput_uid59_i_div27_conv_b_1_q : STD_LOGIC_VECTOR (64 downto 0);
    signal redist49_xPSXE_uid56_i_div27_conv_q_2_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist50_invResPostOneHandling2_uid50_i_div27_conv_q_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist51_fxpInverseRes_uid48_i_div27_conv_b_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist52_normYIsOne_uid42_i_div27_conv_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist53_normYIsOneC2_uid41_i_div27_conv_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist54_normYNoLeadOne_uid37_i_div27_conv_b_1_q : STD_LOGIC_VECTOR (30 downto 0);
    signal redist55_yPS_uid34_i_div27_conv_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist56_yPS_uid34_i_div27_conv_b_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist58_xMSB_uid29_i_div27_conv_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist59_xMSB_uid29_i_div27_conv_b_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_xMSB_uid29_i_div27_conv_b_20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist61_xMSB_uid29_i_div27_conv_b_32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_xMSB_uid29_i_div27_conv_b_34_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist66_sync_in_aunroll_x_in_c1_eni1_1_33_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist68_sync_in_aunroll_x_in_i_valid_34_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_sync_in_aunroll_x_in_i_valid_39_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist70_sync_in_aunroll_x_in_i_valid_42_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist71_bgTrunc_i_sub31_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist72_bgTrunc_i_mul30_conv_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_reset0 : std_logic;
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_i : signal is true;
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_sticky_ena_q : signal is true;
    signal redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_reset0 : std_logic;
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_i : signal is true;
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_eq : std_logic;
    attribute preserve of redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_eq : signal is true;
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_sticky_ena_q : signal is true;
    signal redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_inputreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_outputreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_reset0 : std_logic;
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_ia : STD_LOGIC_VECTOR (5 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_iq : STD_LOGIC_VECTOR (5 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_i : signal is true;
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_eq : std_logic;
    attribute preserve of redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_eq : signal is true;
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_sticky_ena_q : signal is true;
    signal redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_resFinal_uid69_i_div27_conv_q_4_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist42_resFinal_uid69_i_div27_conv_q_4_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_mem_reset0 : std_logic;
    signal redist57_yPS_uid34_i_div27_conv_b_6_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_i : signal is true;
    signal redist57_yPS_uid34_i_div27_conv_b_6_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_yPS_uid34_i_div27_conv_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist57_yPS_uid34_i_div27_conv_b_6_sticky_ena_q : signal is true;
    signal redist57_yPS_uid34_i_div27_conv_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_reset0 : std_logic;
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_i : signal is true;
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_eq : std_logic;
    attribute preserve of redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_eq : signal is true;
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_sticky_ena_q : signal is true;
    signal redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_reset0 : std_logic;
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_i : signal is true;
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_eq : std_logic;
    attribute preserve of redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_eq : signal is true;
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist64_sync_in_aunroll_x_in_c1_eni1_1_19_sticky_ena_q : signal is true;
    signal redist64_sync_in_aunroll_x_in_c1_eni1_1_19_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_reset0 : std_logic;
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_i : signal is true;
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_eq : std_logic;
    attribute preserve of redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_eq : signal is true;
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist65_sync_in_aunroll_x_in_c1_eni1_1_29_sticky_ena_q : signal is true;
    signal redist65_sync_in_aunroll_x_in_c1_eni1_1_29_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist66_sync_in_aunroll_x_in_c1_eni1_1_33_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist66_sync_in_aunroll_x_in_c1_eni1_1_33_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_reset0 : std_logic;
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_i : signal is true;
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist67_sync_in_aunroll_x_in_c1_eni1_1_38_sticky_ena_q : signal is true;
    signal redist67_sync_in_aunroll_x_in_c1_eni1_1_38_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_reset0 : std_logic;
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_i : signal is true;
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_eq : std_logic;
    attribute preserve of redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_eq : signal is true;
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist73_bgTrunc_i_mul28_conv_sel_x_b_5_sticky_ena_q : signal is true;
    signal redist73_bgTrunc_i_mul28_conv_sel_x_b_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist68_sync_in_aunroll_x_in_i_valid_34(DELAY,460)
    redist68_sync_in_aunroll_x_in_i_valid_34 : dspba_delay
    GENERIC MAP ( width => 1, depth => 34, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist68_sync_in_aunroll_x_in_i_valid_34_q, clk => clock, aclr => resetn );

    -- redist69_sync_in_aunroll_x_in_i_valid_39(DELAY,461)
    redist69_sync_in_aunroll_x_in_i_valid_39 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist68_sync_in_aunroll_x_in_i_valid_34_q, xout => redist69_sync_in_aunroll_x_in_i_valid_39_q, clk => clock, aclr => resetn );

    -- redist70_sync_in_aunroll_x_in_i_valid_42(DELAY,462)
    redist70_sync_in_aunroll_x_in_i_valid_42 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist69_sync_in_aunroll_x_in_i_valid_39_q, xout => redist70_sync_in_aunroll_x_in_i_valid_42_q, clk => clock, aclr => resetn );

    -- i_syncbuf_n_fout_dim_sync_buffer101_conv(BLACKBOX,23)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_n_fout_dim_sync_buffer101_conv : i_syncbuf_n_fout_dim_sync_buffer101_conv241
    PORT MAP (
        in_buffer_in => in_N_Fout_dim,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- xMSB_uid29_i_div27_conv(BITSELECT,28)@1
    xMSB_uid29_i_div27_conv_b <= STD_LOGIC_VECTOR(i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out(31 downto 31));

    -- redist58_xMSB_uid29_i_div27_conv_b_1(DELAY,450)
    redist58_xMSB_uid29_i_div27_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xMSB_uid29_i_div27_conv_b, xout => redist58_xMSB_uid29_i_div27_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist59_xMSB_uid29_i_div27_conv_b_19(DELAY,451)
    redist59_xMSB_uid29_i_div27_conv_b_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 18, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist58_xMSB_uid29_i_div27_conv_b_1_q, xout => redist59_xMSB_uid29_i_div27_conv_b_19_q, clk => clock, aclr => resetn );

    -- redist60_xMSB_uid29_i_div27_conv_b_20(DELAY,452)
    redist60_xMSB_uid29_i_div27_conv_b_20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist59_xMSB_uid29_i_div27_conv_b_19_q, xout => redist60_xMSB_uid29_i_div27_conv_b_20_q, clk => clock, aclr => resetn );

    -- redist61_xMSB_uid29_i_div27_conv_b_32(DELAY,453)
    redist61_xMSB_uid29_i_div27_conv_b_32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 12, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist60_xMSB_uid29_i_div27_conv_b_20_q, xout => redist61_xMSB_uid29_i_div27_conv_b_32_q, clk => clock, aclr => resetn );

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_notEnable(LOGICAL,539)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_nor(LOGICAL,540)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_nor_q <= not (redist65_sync_in_aunroll_x_in_c1_eni1_1_29_notEnable_q or redist65_sync_in_aunroll_x_in_c1_eni1_1_29_sticky_ena_q);

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_last(CONSTANT,536)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_last_q <= "0101";

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmp(LOGICAL,537)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmp_b <= STD_LOGIC_VECTOR("0" & redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_q);
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmp_q <= "1" WHEN redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_last_q = redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmp_b ELSE "0";

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmpReg(REG,538)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmpReg_q <= STD_LOGIC_VECTOR(redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmp_q);
        END IF;
    END PROCESS;

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_sticky_ena(REG,541)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist65_sync_in_aunroll_x_in_c1_eni1_1_29_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist65_sync_in_aunroll_x_in_c1_eni1_1_29_nor_q = "1") THEN
                redist65_sync_in_aunroll_x_in_c1_eni1_1_29_sticky_ena_q <= STD_LOGIC_VECTOR(redist65_sync_in_aunroll_x_in_c1_eni1_1_29_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_enaAnd(LOGICAL,542)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_enaAnd_q <= redist65_sync_in_aunroll_x_in_c1_eni1_1_29_sticky_ena_q and VCC_q;

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt(COUNTER,534)
    -- low=0, high=6, step=1, init=0
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_eq <= '1';
            ELSE
                redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_eq <= '0';
            END IF;
            IF (redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_eq = '1') THEN
                redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_i <= redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_i + 2;
            ELSE
                redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_i <= redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_i, 3)));

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_notEnable(LOGICAL,527)
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_nor(LOGICAL,528)
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_nor_q <= not (redist64_sync_in_aunroll_x_in_c1_eni1_1_19_notEnable_q or redist64_sync_in_aunroll_x_in_c1_eni1_1_19_sticky_ena_q);

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_last(CONSTANT,524)
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_last_q <= "01111";

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_cmp(LOGICAL,525)
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_cmp_q <= "1" WHEN redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_last_q = redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_q ELSE "0";

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_cmpReg(REG,526)
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_sync_in_aunroll_x_in_c1_eni1_1_19_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist64_sync_in_aunroll_x_in_c1_eni1_1_19_cmpReg_q <= STD_LOGIC_VECTOR(redist64_sync_in_aunroll_x_in_c1_eni1_1_19_cmp_q);
        END IF;
    END PROCESS;

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_sticky_ena(REG,529)
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_sync_in_aunroll_x_in_c1_eni1_1_19_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist64_sync_in_aunroll_x_in_c1_eni1_1_19_nor_q = "1") THEN
                redist64_sync_in_aunroll_x_in_c1_eni1_1_19_sticky_ena_q <= STD_LOGIC_VECTOR(redist64_sync_in_aunroll_x_in_c1_eni1_1_19_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_enaAnd(LOGICAL,530)
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_enaAnd_q <= redist64_sync_in_aunroll_x_in_c1_eni1_1_19_sticky_ena_q and VCC_q;

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt(COUNTER,522)
    -- low=0, high=16, step=1, init=0
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_i = TO_UNSIGNED(15, 5)) THEN
                redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_eq <= '1';
            ELSE
                redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_eq <= '0';
            END IF;
            IF (redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_eq = '1') THEN
                redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_i <= redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_i + 16;
            ELSE
                redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_i <= redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_i, 5)));

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_wraddr(REG,523)
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist64_sync_in_aunroll_x_in_c1_eni1_1_19_wraddr_q <= "10000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist64_sync_in_aunroll_x_in_c1_eni1_1_19_wraddr_q <= STD_LOGIC_VECTOR(redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem(DUALMEM,521)
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_ia <= STD_LOGIC_VECTOR(in_c1_eni1_1);
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_aa <= redist64_sync_in_aunroll_x_in_c1_eni1_1_19_wraddr_q;
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_ab <= redist64_sync_in_aunroll_x_in_c1_eni1_1_19_rdcnt_q;
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_reset0 <= not (resetn);
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_dmem : altera_syncram
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
        clocken1 => redist64_sync_in_aunroll_x_in_c1_eni1_1_19_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_reset0,
        clock1 => clock,
        address_a => redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_aa,
        data_a => redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_ab,
        q_b => redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_iq
    );
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_q <= redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_iq(31 downto 0);

    -- redist64_sync_in_aunroll_x_in_c1_eni1_1_19_outputreg(DELAY,520)
    redist64_sync_in_aunroll_x_in_c1_eni1_1_19_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist64_sync_in_aunroll_x_in_c1_eni1_1_19_mem_q, xout => redist64_sync_in_aunroll_x_in_c1_eni1_1_19_outputreg_q, clk => clock, aclr => resetn );

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_inputreg(DELAY,531)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist64_sync_in_aunroll_x_in_c1_eni1_1_19_outputreg_q, xout => redist65_sync_in_aunroll_x_in_c1_eni1_1_29_inputreg_q, clk => clock, aclr => resetn );

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_wraddr(REG,535)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist65_sync_in_aunroll_x_in_c1_eni1_1_29_wraddr_q <= "110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist65_sync_in_aunroll_x_in_c1_eni1_1_29_wraddr_q <= STD_LOGIC_VECTOR(redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem(DUALMEM,533)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_ia <= STD_LOGIC_VECTOR(redist65_sync_in_aunroll_x_in_c1_eni1_1_29_inputreg_q);
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_aa <= redist65_sync_in_aunroll_x_in_c1_eni1_1_29_wraddr_q;
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_ab <= redist65_sync_in_aunroll_x_in_c1_eni1_1_29_rdcnt_q;
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_reset0 <= not (resetn);
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_dmem : altera_syncram
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
        clocken1 => redist65_sync_in_aunroll_x_in_c1_eni1_1_29_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_reset0,
        clock1 => clock,
        address_a => redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_aa,
        data_a => redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_ab,
        q_b => redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_iq
    );
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_q <= redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_iq(31 downto 0);

    -- redist65_sync_in_aunroll_x_in_c1_eni1_1_29_outputreg(DELAY,532)
    redist65_sync_in_aunroll_x_in_c1_eni1_1_29_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist65_sync_in_aunroll_x_in_c1_eni1_1_29_mem_q, xout => redist65_sync_in_aunroll_x_in_c1_eni1_1_29_outputreg_q, clk => clock, aclr => resetn );

    -- signX_uid67_i_div27_conv(BITSELECT,66)@30
    signX_uid67_i_div27_conv_b <= STD_LOGIC_VECTOR(redist65_sync_in_aunroll_x_in_c1_eni1_1_29_outputreg_q(31 downto 31));

    -- redist44_signX_uid67_i_div27_conv_b_3(DELAY,436)
    redist44_signX_uid67_i_div27_conv_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signX_uid67_i_div27_conv_b, xout => redist44_signX_uid67_i_div27_conv_b_3_q, clk => clock, aclr => resetn );

    -- resultSign_uid77_i_div27_conv(LOGICAL,76)@33 + 1
    resultSign_uid77_i_div27_conv_qi <= redist44_signX_uid67_i_div27_conv_b_3_q xor redist61_xMSB_uid29_i_div27_conv_b_32_q;
    resultSign_uid77_i_div27_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resultSign_uid77_i_div27_conv_qi, xout => resultSign_uid77_i_div27_conv_q, clk => clock, aclr => resetn );

    -- cstSubFinal_uid85_i_div27_conv(BITJOIN,84)@34
    cstSubFinal_uid85_i_div27_conv_q <= resultSign_uid77_i_div27_conv_q & VCC_q;

    -- cstValOvfneg_uid66_i_div27_conv(CONSTANT,65)
    cstValOvfneg_uid66_i_div27_conv_q <= "10000000000000000000000000000000";

    -- cstValOvfPos_uid65_i_div27_conv(CONSTANT,64)
    cstValOvfPos_uid65_i_div27_conv_q <= "01111111111111111111111111111111";

    -- cstOvf_uid68_i_div27_conv(MUX,67)@30
    cstOvf_uid68_i_div27_conv_s <= signX_uid67_i_div27_conv_b;
    cstOvf_uid68_i_div27_conv_combproc: PROCESS (cstOvf_uid68_i_div27_conv_s, cstValOvfPos_uid65_i_div27_conv_q, cstValOvfneg_uid66_i_div27_conv_q)
    BEGIN
        CASE (cstOvf_uid68_i_div27_conv_s) IS
            WHEN "0" => cstOvf_uid68_i_div27_conv_q <= cstValOvfPos_uid65_i_div27_conv_q;
            WHEN "1" => cstOvf_uid68_i_div27_conv_q <= cstValOvfneg_uid66_i_div27_conv_q;
            WHEN OTHERS => cstOvf_uid68_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- zMsbY0_uid55_i_div27_conv(BITJOIN,54)@21
    zMsbY0_uid55_i_div27_conv_q <= GND_q & redist60_xMSB_uid29_i_div27_conv_b_20_q;

    -- xPSX_uid53_i_div27_conv(LOGICAL,52)@20 + 1
    xPSX_uid53_i_div27_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => redist59_xMSB_uid29_i_div27_conv_b_19_q(0)) & redist59_xMSB_uid29_i_div27_conv_b_19_q));
    xPSX_uid53_i_div27_conv_qi <= redist64_sync_in_aunroll_x_in_c1_eni1_1_19_outputreg_q xor xPSX_uid53_i_div27_conv_b;
    xPSX_uid53_i_div27_conv_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xPSX_uid53_i_div27_conv_qi, xout => xPSX_uid53_i_div27_conv_q, clk => clock, aclr => resetn );

    -- xPSXE_uid56_i_div27_conv(ADD,55)@21 + 1
    xPSXE_uid56_i_div27_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => xPSX_uid53_i_div27_conv_q(31)) & xPSX_uid53_i_div27_conv_q));
    xPSXE_uid56_i_div27_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 2 => zMsbY0_uid55_i_div27_conv_q(1)) & zMsbY0_uid55_i_div27_conv_q));
    xPSXE_uid56_i_div27_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            xPSXE_uid56_i_div27_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            xPSXE_uid56_i_div27_conv_o <= STD_LOGIC_VECTOR(SIGNED(xPSXE_uid56_i_div27_conv_a) + SIGNED(xPSXE_uid56_i_div27_conv_b));
        END IF;
    END PROCESS;
    xPSXE_uid56_i_div27_conv_q <= xPSXE_uid56_i_div27_conv_o(32 downto 0);

    -- prodXInvY_uid58_i_div27_conv_bs4(BITSELECT,291)@22
    prodXInvY_uid58_i_div27_conv_bs4_in <= STD_LOGIC_VECTOR(xPSXE_uid56_i_div27_conv_q(17 downto 0));
    prodXInvY_uid58_i_div27_conv_bs4_b <= STD_LOGIC_VECTOR(prodXInvY_uid58_i_div27_conv_bs4_in(17 downto 0));

    -- prodXInvY_uid58_i_div27_conv_bjA5(BITJOIN,292)@22
    prodXInvY_uid58_i_div27_conv_bjA5_q <= GND_q & prodXInvY_uid58_i_div27_conv_bs4_b;

    -- oneInvRes_uid49_i_div27_conv(CONSTANT,48)
    oneInvRes_uid49_i_div27_conv_q <= "100000000000000000000000000000000";

    -- redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_notEnable(LOGICAL,482)
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_nor(LOGICAL,483)
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_nor_q <= not (redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_notEnable_q or redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_sticky_ena_q);

    -- redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_last(CONSTANT,479)
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_last_q <= "01";

    -- redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_cmp(LOGICAL,480)
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_cmp_q <= "1" WHEN redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_last_q = redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_q ELSE "0";

    -- redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_cmpReg(REG,481)
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_cmpReg_q <= STD_LOGIC_VECTOR(redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_sticky_ena(REG,484)
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_nor_q = "1") THEN
                redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_enaAnd(LOGICAL,485)
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_enaAnd_q <= redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_sticky_ena_q and VCC_q;

    -- redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt(COUNTER,477)
    -- low=0, high=2, step=1, init=0
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_eq <= '1';
            ELSE
                redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_eq <= '0';
            END IF;
            IF (redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_eq = '1') THEN
                redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_i <= redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_i + 2;
            ELSE
                redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_i <= redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_i, 2)));

    -- leftShiftStage2Idx3Rng3_uid283_normY_uid36_i_div27_conv(BITSELECT,282)@8
    leftShiftStage2Idx3Rng3_uid283_normY_uid36_i_div27_conv_in <= leftShiftStage1_uid275_normY_uid36_i_div27_conv_q(28 downto 0);
    leftShiftStage2Idx3Rng3_uid283_normY_uid36_i_div27_conv_b <= leftShiftStage2Idx3Rng3_uid283_normY_uid36_i_div27_conv_in(28 downto 0);

    -- leftShiftStage2Idx3Pad3_uid282_normY_uid36_i_div27_conv(CONSTANT,281)
    leftShiftStage2Idx3Pad3_uid282_normY_uid36_i_div27_conv_q <= "000";

    -- leftShiftStage2Idx3_uid284_normY_uid36_i_div27_conv(BITJOIN,283)@8
    leftShiftStage2Idx3_uid284_normY_uid36_i_div27_conv_q <= leftShiftStage2Idx3Rng3_uid283_normY_uid36_i_div27_conv_b & leftShiftStage2Idx3Pad3_uid282_normY_uid36_i_div27_conv_q;

    -- leftShiftStage2Idx2Rng2_uid280_normY_uid36_i_div27_conv(BITSELECT,279)@8
    leftShiftStage2Idx2Rng2_uid280_normY_uid36_i_div27_conv_in <= leftShiftStage1_uid275_normY_uid36_i_div27_conv_q(29 downto 0);
    leftShiftStage2Idx2Rng2_uid280_normY_uid36_i_div27_conv_b <= leftShiftStage2Idx2Rng2_uid280_normY_uid36_i_div27_conv_in(29 downto 0);

    -- zs_uid114_zCount_uid35_i_div27_conv(CONSTANT,113)
    zs_uid114_zCount_uid35_i_div27_conv_q <= "00";

    -- leftShiftStage2Idx2_uid281_normY_uid36_i_div27_conv(BITJOIN,280)@8
    leftShiftStage2Idx2_uid281_normY_uid36_i_div27_conv_q <= leftShiftStage2Idx2Rng2_uid280_normY_uid36_i_div27_conv_b & zs_uid114_zCount_uid35_i_div27_conv_q;

    -- leftShiftStage2Idx1Rng1_uid277_normY_uid36_i_div27_conv(BITSELECT,276)@8
    leftShiftStage2Idx1Rng1_uid277_normY_uid36_i_div27_conv_in <= leftShiftStage1_uid275_normY_uid36_i_div27_conv_q(30 downto 0);
    leftShiftStage2Idx1Rng1_uid277_normY_uid36_i_div27_conv_b <= leftShiftStage2Idx1Rng1_uid277_normY_uid36_i_div27_conv_in(30 downto 0);

    -- leftShiftStage2Idx1_uid278_normY_uid36_i_div27_conv(BITJOIN,277)@8
    leftShiftStage2Idx1_uid278_normY_uid36_i_div27_conv_q <= leftShiftStage2Idx1Rng1_uid277_normY_uid36_i_div27_conv_b & GND_q;

    -- leftShiftStage1Idx3Rng12_uid272_normY_uid36_i_div27_conv(BITSELECT,271)@8
    leftShiftStage1Idx3Rng12_uid272_normY_uid36_i_div27_conv_in <= leftShiftStage0_uid264_normY_uid36_i_div27_conv_q(19 downto 0);
    leftShiftStage1Idx3Rng12_uid272_normY_uid36_i_div27_conv_b <= leftShiftStage1Idx3Rng12_uid272_normY_uid36_i_div27_conv_in(19 downto 0);

    -- rightBottomX_bottomExtension_uid187_pT3_uid154_invPolyEval(CONSTANT,186)
    rightBottomX_bottomExtension_uid187_pT3_uid154_invPolyEval_q <= "000000000000";

    -- leftShiftStage1Idx3_uid273_normY_uid36_i_div27_conv(BITJOIN,272)@8
    leftShiftStage1Idx3_uid273_normY_uid36_i_div27_conv_q <= leftShiftStage1Idx3Rng12_uid272_normY_uid36_i_div27_conv_b & rightBottomX_bottomExtension_uid187_pT3_uid154_invPolyEval_q;

    -- leftShiftStage1Idx2Rng8_uid269_normY_uid36_i_div27_conv(BITSELECT,268)@8
    leftShiftStage1Idx2Rng8_uid269_normY_uid36_i_div27_conv_in <= leftShiftStage0_uid264_normY_uid36_i_div27_conv_q(23 downto 0);
    leftShiftStage1Idx2Rng8_uid269_normY_uid36_i_div27_conv_b <= leftShiftStage1Idx2Rng8_uid269_normY_uid36_i_div27_conv_in(23 downto 0);

    -- zs_uid102_zCount_uid35_i_div27_conv(CONSTANT,101)
    zs_uid102_zCount_uid35_i_div27_conv_q <= "00000000";

    -- leftShiftStage1Idx2_uid270_normY_uid36_i_div27_conv(BITJOIN,269)@8
    leftShiftStage1Idx2_uid270_normY_uid36_i_div27_conv_q <= leftShiftStage1Idx2Rng8_uid269_normY_uid36_i_div27_conv_b & zs_uid102_zCount_uid35_i_div27_conv_q;

    -- leftShiftStage1Idx1Rng4_uid266_normY_uid36_i_div27_conv(BITSELECT,265)@8
    leftShiftStage1Idx1Rng4_uid266_normY_uid36_i_div27_conv_in <= leftShiftStage0_uid264_normY_uid36_i_div27_conv_q(27 downto 0);
    leftShiftStage1Idx1Rng4_uid266_normY_uid36_i_div27_conv_b <= leftShiftStage1Idx1Rng4_uid266_normY_uid36_i_div27_conv_in(27 downto 0);

    -- zs_uid108_zCount_uid35_i_div27_conv(CONSTANT,107)
    zs_uid108_zCount_uid35_i_div27_conv_q <= "0000";

    -- leftShiftStage1Idx1_uid267_normY_uid36_i_div27_conv(BITJOIN,266)@8
    leftShiftStage1Idx1_uid267_normY_uid36_i_div27_conv_q <= leftShiftStage1Idx1Rng4_uid266_normY_uid36_i_div27_conv_b & zs_uid108_zCount_uid35_i_div27_conv_q;

    -- zs_uid90_zCount_uid35_i_div27_conv(CONSTANT,89)
    zs_uid90_zCount_uid35_i_div27_conv_q <= "00000000000000000000000000000000";

    -- leftShiftStage0Idx1Rng16_uid259_normY_uid36_i_div27_conv(BITSELECT,258)@8
    leftShiftStage0Idx1Rng16_uid259_normY_uid36_i_div27_conv_in <= redist57_yPS_uid34_i_div27_conv_b_6_outputreg_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid259_normY_uid36_i_div27_conv_b <= leftShiftStage0Idx1Rng16_uid259_normY_uid36_i_div27_conv_in(15 downto 0);

    -- zs_uid96_zCount_uid35_i_div27_conv(CONSTANT,95)
    zs_uid96_zCount_uid35_i_div27_conv_q <= "0000000000000000";

    -- leftShiftStage0Idx1_uid260_normY_uid36_i_div27_conv(BITJOIN,259)@8
    leftShiftStage0Idx1_uid260_normY_uid36_i_div27_conv_q <= leftShiftStage0Idx1Rng16_uid259_normY_uid36_i_div27_conv_b & zs_uid96_zCount_uid35_i_div27_conv_q;

    -- redist57_yPS_uid34_i_div27_conv_b_6_notEnable(LOGICAL,505)
    redist57_yPS_uid34_i_div27_conv_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist57_yPS_uid34_i_div27_conv_b_6_nor(LOGICAL,506)
    redist57_yPS_uid34_i_div27_conv_b_6_nor_q <= not (redist57_yPS_uid34_i_div27_conv_b_6_notEnable_q or redist57_yPS_uid34_i_div27_conv_b_6_sticky_ena_q);

    -- redist57_yPS_uid34_i_div27_conv_b_6_cmpReg(REG,504)
    redist57_yPS_uid34_i_div27_conv_b_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_yPS_uid34_i_div27_conv_b_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist57_yPS_uid34_i_div27_conv_b_6_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist57_yPS_uid34_i_div27_conv_b_6_sticky_ena(REG,507)
    redist57_yPS_uid34_i_div27_conv_b_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_yPS_uid34_i_div27_conv_b_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist57_yPS_uid34_i_div27_conv_b_6_nor_q = "1") THEN
                redist57_yPS_uid34_i_div27_conv_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist57_yPS_uid34_i_div27_conv_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist57_yPS_uid34_i_div27_conv_b_6_enaAnd(LOGICAL,508)
    redist57_yPS_uid34_i_div27_conv_b_6_enaAnd_q <= redist57_yPS_uid34_i_div27_conv_b_6_sticky_ena_q and VCC_q;

    -- redist57_yPS_uid34_i_div27_conv_b_6_rdcnt(COUNTER,502)
    -- low=0, high=1, step=1, init=0
    redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_i <= redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_i, 1)));

    -- yPSE_uid31_i_div27_conv(LOGICAL,30)@1 + 1
    yPSE_uid31_i_div27_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid29_i_div27_conv_b(0)) & xMSB_uid29_i_div27_conv_b));
    yPSE_uid31_i_div27_conv_qi <= i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out xor yPSE_uid31_i_div27_conv_b;
    yPSE_uid31_i_div27_conv_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yPSE_uid31_i_div27_conv_qi, xout => yPSE_uid31_i_div27_conv_q, clk => clock, aclr => resetn );

    -- yPSEA_uid33_i_div27_conv(ADD,32)@2
    yPSEA_uid33_i_div27_conv_a <= STD_LOGIC_VECTOR("0" & yPSE_uid31_i_div27_conv_q);
    yPSEA_uid33_i_div27_conv_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000" & redist58_xMSB_uid29_i_div27_conv_b_1_q);
    yPSEA_uid33_i_div27_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(yPSEA_uid33_i_div27_conv_a) + UNSIGNED(yPSEA_uid33_i_div27_conv_b));
    yPSEA_uid33_i_div27_conv_q <= yPSEA_uid33_i_div27_conv_o(32 downto 0);

    -- yPS_uid34_i_div27_conv(BITSELECT,33)@2
    yPS_uid34_i_div27_conv_in <= STD_LOGIC_VECTOR(yPSEA_uid33_i_div27_conv_q(31 downto 0));
    yPS_uid34_i_div27_conv_b <= STD_LOGIC_VECTOR(yPS_uid34_i_div27_conv_in(31 downto 0));

    -- redist55_yPS_uid34_i_div27_conv_b_1(DELAY,447)
    redist55_yPS_uid34_i_div27_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yPS_uid34_i_div27_conv_b, xout => redist55_yPS_uid34_i_div27_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist56_yPS_uid34_i_div27_conv_b_2(DELAY,448)
    redist56_yPS_uid34_i_div27_conv_b_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist55_yPS_uid34_i_div27_conv_b_1_q, xout => redist56_yPS_uid34_i_div27_conv_b_2_q, clk => clock, aclr => resetn );

    -- redist57_yPS_uid34_i_div27_conv_b_6_wraddr(REG,503)
    redist57_yPS_uid34_i_div27_conv_b_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist57_yPS_uid34_i_div27_conv_b_6_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist57_yPS_uid34_i_div27_conv_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist57_yPS_uid34_i_div27_conv_b_6_mem(DUALMEM,501)
    redist57_yPS_uid34_i_div27_conv_b_6_mem_ia <= STD_LOGIC_VECTOR(redist56_yPS_uid34_i_div27_conv_b_2_q);
    redist57_yPS_uid34_i_div27_conv_b_6_mem_aa <= redist57_yPS_uid34_i_div27_conv_b_6_wraddr_q;
    redist57_yPS_uid34_i_div27_conv_b_6_mem_ab <= redist57_yPS_uid34_i_div27_conv_b_6_rdcnt_q;
    redist57_yPS_uid34_i_div27_conv_b_6_mem_reset0 <= not (resetn);
    redist57_yPS_uid34_i_div27_conv_b_6_mem_dmem : altera_syncram
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
        clocken1 => redist57_yPS_uid34_i_div27_conv_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist57_yPS_uid34_i_div27_conv_b_6_mem_reset0,
        clock1 => clock,
        address_a => redist57_yPS_uid34_i_div27_conv_b_6_mem_aa,
        data_a => redist57_yPS_uid34_i_div27_conv_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist57_yPS_uid34_i_div27_conv_b_6_mem_ab,
        q_b => redist57_yPS_uid34_i_div27_conv_b_6_mem_iq
    );
    redist57_yPS_uid34_i_div27_conv_b_6_mem_q <= redist57_yPS_uid34_i_div27_conv_b_6_mem_iq(31 downto 0);

    -- redist57_yPS_uid34_i_div27_conv_b_6_outputreg(DELAY,500)
    redist57_yPS_uid34_i_div27_conv_b_6_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist57_yPS_uid34_i_div27_conv_b_6_mem_q, xout => redist57_yPS_uid34_i_div27_conv_b_6_outputreg_q, clk => clock, aclr => resetn );

    -- leftShiftStage0_uid264_normY_uid36_i_div27_conv(MUX,263)@8
    leftShiftStage0_uid264_normY_uid36_i_div27_conv_s <= leftShiftStageSel5Dto4_uid263_normY_uid36_i_div27_conv_merged_bit_select_b;
    leftShiftStage0_uid264_normY_uid36_i_div27_conv_combproc: PROCESS (leftShiftStage0_uid264_normY_uid36_i_div27_conv_s, redist57_yPS_uid34_i_div27_conv_b_6_outputreg_q, leftShiftStage0Idx1_uid260_normY_uid36_i_div27_conv_q, zs_uid90_zCount_uid35_i_div27_conv_q)
    BEGIN
        CASE (leftShiftStage0_uid264_normY_uid36_i_div27_conv_s) IS
            WHEN "00" => leftShiftStage0_uid264_normY_uid36_i_div27_conv_q <= redist57_yPS_uid34_i_div27_conv_b_6_outputreg_q;
            WHEN "01" => leftShiftStage0_uid264_normY_uid36_i_div27_conv_q <= leftShiftStage0Idx1_uid260_normY_uid36_i_div27_conv_q;
            WHEN "10" => leftShiftStage0_uid264_normY_uid36_i_div27_conv_q <= zs_uid90_zCount_uid35_i_div27_conv_q;
            WHEN "11" => leftShiftStage0_uid264_normY_uid36_i_div27_conv_q <= zs_uid90_zCount_uid35_i_div27_conv_q;
            WHEN OTHERS => leftShiftStage0_uid264_normY_uid36_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid275_normY_uid36_i_div27_conv(MUX,274)@8
    leftShiftStage1_uid275_normY_uid36_i_div27_conv_s <= leftShiftStageSel5Dto4_uid263_normY_uid36_i_div27_conv_merged_bit_select_c;
    leftShiftStage1_uid275_normY_uid36_i_div27_conv_combproc: PROCESS (leftShiftStage1_uid275_normY_uid36_i_div27_conv_s, leftShiftStage0_uid264_normY_uid36_i_div27_conv_q, leftShiftStage1Idx1_uid267_normY_uid36_i_div27_conv_q, leftShiftStage1Idx2_uid270_normY_uid36_i_div27_conv_q, leftShiftStage1Idx3_uid273_normY_uid36_i_div27_conv_q)
    BEGIN
        CASE (leftShiftStage1_uid275_normY_uid36_i_div27_conv_s) IS
            WHEN "00" => leftShiftStage1_uid275_normY_uid36_i_div27_conv_q <= leftShiftStage0_uid264_normY_uid36_i_div27_conv_q;
            WHEN "01" => leftShiftStage1_uid275_normY_uid36_i_div27_conv_q <= leftShiftStage1Idx1_uid267_normY_uid36_i_div27_conv_q;
            WHEN "10" => leftShiftStage1_uid275_normY_uid36_i_div27_conv_q <= leftShiftStage1Idx2_uid270_normY_uid36_i_div27_conv_q;
            WHEN "11" => leftShiftStage1_uid275_normY_uid36_i_div27_conv_q <= leftShiftStage1Idx3_uid273_normY_uid36_i_div27_conv_q;
            WHEN OTHERS => leftShiftStage1_uid275_normY_uid36_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid92_zCount_uid35_i_div27_conv(LOGICAL,91)@3 + 1
    vCount_uid92_zCount_uid35_i_div27_conv_qi <= "1" WHEN redist55_yPS_uid34_i_div27_conv_b_1_q = zs_uid90_zCount_uid35_i_div27_conv_q ELSE "0";
    vCount_uid92_zCount_uid35_i_div27_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid92_zCount_uid35_i_div27_conv_qi, xout => vCount_uid92_zCount_uid35_i_div27_conv_q, clk => clock, aclr => resetn );

    -- redist40_vCount_uid92_zCount_uid35_i_div27_conv_q_4(DELAY,432)
    redist40_vCount_uid92_zCount_uid35_i_div27_conv_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid92_zCount_uid35_i_div27_conv_q, xout => redist40_vCount_uid92_zCount_uid35_i_div27_conv_q_4_q, clk => clock, aclr => resetn );

    -- mO_uid93_zCount_uid35_i_div27_conv(CONSTANT,92)
    mO_uid93_zCount_uid35_i_div27_conv_q <= "11111111111111111111111111111111";

    -- vStagei_uid95_zCount_uid35_i_div27_conv(MUX,94)@4
    vStagei_uid95_zCount_uid35_i_div27_conv_s <= vCount_uid92_zCount_uid35_i_div27_conv_q;
    vStagei_uid95_zCount_uid35_i_div27_conv_combproc: PROCESS (vStagei_uid95_zCount_uid35_i_div27_conv_s, redist56_yPS_uid34_i_div27_conv_b_2_q, mO_uid93_zCount_uid35_i_div27_conv_q)
    BEGIN
        CASE (vStagei_uid95_zCount_uid35_i_div27_conv_s) IS
            WHEN "0" => vStagei_uid95_zCount_uid35_i_div27_conv_q <= redist56_yPS_uid34_i_div27_conv_b_2_q;
            WHEN "1" => vStagei_uid95_zCount_uid35_i_div27_conv_q <= mO_uid93_zCount_uid35_i_div27_conv_q;
            WHEN OTHERS => vStagei_uid95_zCount_uid35_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select(BITSELECT,385)@4
    rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_b <= vStagei_uid95_zCount_uid35_i_div27_conv_q(31 downto 16);
    rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_c <= vStagei_uid95_zCount_uid35_i_div27_conv_q(15 downto 0);

    -- vCount_uid98_zCount_uid35_i_div27_conv(LOGICAL,97)@4 + 1
    vCount_uid98_zCount_uid35_i_div27_conv_qi <= "1" WHEN rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_b = zs_uid96_zCount_uid35_i_div27_conv_q ELSE "0";
    vCount_uid98_zCount_uid35_i_div27_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid98_zCount_uid35_i_div27_conv_qi, xout => vCount_uid98_zCount_uid35_i_div27_conv_q, clk => clock, aclr => resetn );

    -- redist39_vCount_uid98_zCount_uid35_i_div27_conv_q_3(DELAY,431)
    redist39_vCount_uid98_zCount_uid35_i_div27_conv_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid98_zCount_uid35_i_div27_conv_q, xout => redist39_vCount_uid98_zCount_uid35_i_div27_conv_q_3_q, clk => clock, aclr => resetn );

    -- redist3_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_c_1(DELAY,395)
    redist3_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_c, xout => redist3_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist2_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_b_1(DELAY,394)
    redist2_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_b, xout => redist2_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid101_zCount_uid35_i_div27_conv(MUX,100)@5
    vStagei_uid101_zCount_uid35_i_div27_conv_s <= vCount_uid98_zCount_uid35_i_div27_conv_q;
    vStagei_uid101_zCount_uid35_i_div27_conv_combproc: PROCESS (vStagei_uid101_zCount_uid35_i_div27_conv_s, redist2_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_b_1_q, redist3_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid101_zCount_uid35_i_div27_conv_s) IS
            WHEN "0" => vStagei_uid101_zCount_uid35_i_div27_conv_q <= redist2_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid101_zCount_uid35_i_div27_conv_q <= redist3_rVStage_uid97_zCount_uid35_i_div27_conv_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid101_zCount_uid35_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select(BITSELECT,386)@5
    rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_b <= vStagei_uid101_zCount_uid35_i_div27_conv_q(15 downto 8);
    rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_c <= vStagei_uid101_zCount_uid35_i_div27_conv_q(7 downto 0);

    -- vCount_uid104_zCount_uid35_i_div27_conv(LOGICAL,103)@5 + 1
    vCount_uid104_zCount_uid35_i_div27_conv_qi <= "1" WHEN rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_b = zs_uid102_zCount_uid35_i_div27_conv_q ELSE "0";
    vCount_uid104_zCount_uid35_i_div27_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid104_zCount_uid35_i_div27_conv_qi, xout => vCount_uid104_zCount_uid35_i_div27_conv_q, clk => clock, aclr => resetn );

    -- redist38_vCount_uid104_zCount_uid35_i_div27_conv_q_2(DELAY,430)
    redist38_vCount_uid104_zCount_uid35_i_div27_conv_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid104_zCount_uid35_i_div27_conv_q, xout => redist38_vCount_uid104_zCount_uid35_i_div27_conv_q_2_q, clk => clock, aclr => resetn );

    -- redist1_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_c_1(DELAY,393)
    redist1_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_c, xout => redist1_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist0_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_b_1(DELAY,392)
    redist0_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_b, xout => redist0_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid107_zCount_uid35_i_div27_conv(MUX,106)@6
    vStagei_uid107_zCount_uid35_i_div27_conv_s <= vCount_uid104_zCount_uid35_i_div27_conv_q;
    vStagei_uid107_zCount_uid35_i_div27_conv_combproc: PROCESS (vStagei_uid107_zCount_uid35_i_div27_conv_s, redist0_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_b_1_q, redist1_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid107_zCount_uid35_i_div27_conv_s) IS
            WHEN "0" => vStagei_uid107_zCount_uid35_i_div27_conv_q <= redist0_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid107_zCount_uid35_i_div27_conv_q <= redist1_rVStage_uid103_zCount_uid35_i_div27_conv_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid107_zCount_uid35_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid109_zCount_uid35_i_div27_conv_merged_bit_select(BITSELECT,387)@6
    rVStage_uid109_zCount_uid35_i_div27_conv_merged_bit_select_b <= vStagei_uid107_zCount_uid35_i_div27_conv_q(7 downto 4);
    rVStage_uid109_zCount_uid35_i_div27_conv_merged_bit_select_c <= vStagei_uid107_zCount_uid35_i_div27_conv_q(3 downto 0);

    -- vCount_uid110_zCount_uid35_i_div27_conv(LOGICAL,109)@6
    vCount_uid110_zCount_uid35_i_div27_conv_q <= "1" WHEN rVStage_uid109_zCount_uid35_i_div27_conv_merged_bit_select_b = zs_uid108_zCount_uid35_i_div27_conv_q ELSE "0";

    -- redist37_vCount_uid110_zCount_uid35_i_div27_conv_q_1(DELAY,429)
    redist37_vCount_uid110_zCount_uid35_i_div27_conv_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid110_zCount_uid35_i_div27_conv_q, xout => redist37_vCount_uid110_zCount_uid35_i_div27_conv_q_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid113_zCount_uid35_i_div27_conv(MUX,112)@6 + 1
    vStagei_uid113_zCount_uid35_i_div27_conv_s <= vCount_uid110_zCount_uid35_i_div27_conv_q;
    vStagei_uid113_zCount_uid35_i_div27_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            vStagei_uid113_zCount_uid35_i_div27_conv_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (vStagei_uid113_zCount_uid35_i_div27_conv_s) IS
                WHEN "0" => vStagei_uid113_zCount_uid35_i_div27_conv_q <= rVStage_uid109_zCount_uid35_i_div27_conv_merged_bit_select_b;
                WHEN "1" => vStagei_uid113_zCount_uid35_i_div27_conv_q <= rVStage_uid109_zCount_uid35_i_div27_conv_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid113_zCount_uid35_i_div27_conv_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid115_zCount_uid35_i_div27_conv_merged_bit_select(BITSELECT,388)@7
    rVStage_uid115_zCount_uid35_i_div27_conv_merged_bit_select_b <= vStagei_uid113_zCount_uid35_i_div27_conv_q(3 downto 2);
    rVStage_uid115_zCount_uid35_i_div27_conv_merged_bit_select_c <= vStagei_uid113_zCount_uid35_i_div27_conv_q(1 downto 0);

    -- vCount_uid116_zCount_uid35_i_div27_conv(LOGICAL,115)@7
    vCount_uid116_zCount_uid35_i_div27_conv_q <= "1" WHEN rVStage_uid115_zCount_uid35_i_div27_conv_merged_bit_select_b = zs_uid114_zCount_uid35_i_div27_conv_q ELSE "0";

    -- vStagei_uid119_zCount_uid35_i_div27_conv(MUX,118)@7
    vStagei_uid119_zCount_uid35_i_div27_conv_s <= vCount_uid116_zCount_uid35_i_div27_conv_q;
    vStagei_uid119_zCount_uid35_i_div27_conv_combproc: PROCESS (vStagei_uid119_zCount_uid35_i_div27_conv_s, rVStage_uid115_zCount_uid35_i_div27_conv_merged_bit_select_b, rVStage_uid115_zCount_uid35_i_div27_conv_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid119_zCount_uid35_i_div27_conv_s) IS
            WHEN "0" => vStagei_uid119_zCount_uid35_i_div27_conv_q <= rVStage_uid115_zCount_uid35_i_div27_conv_merged_bit_select_b;
            WHEN "1" => vStagei_uid119_zCount_uid35_i_div27_conv_q <= rVStage_uid115_zCount_uid35_i_div27_conv_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid119_zCount_uid35_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid121_zCount_uid35_i_div27_conv(BITSELECT,120)@7
    rVStage_uid121_zCount_uid35_i_div27_conv_b <= vStagei_uid119_zCount_uid35_i_div27_conv_q(1 downto 1);

    -- vCount_uid122_zCount_uid35_i_div27_conv(LOGICAL,121)@7
    vCount_uid122_zCount_uid35_i_div27_conv_q <= "1" WHEN rVStage_uid121_zCount_uid35_i_div27_conv_b = GND_q ELSE "0";

    -- r_uid123_zCount_uid35_i_div27_conv(BITJOIN,122)@7
    r_uid123_zCount_uid35_i_div27_conv_q <= redist40_vCount_uid92_zCount_uid35_i_div27_conv_q_4_q & redist39_vCount_uid98_zCount_uid35_i_div27_conv_q_3_q & redist38_vCount_uid104_zCount_uid35_i_div27_conv_q_2_q & redist37_vCount_uid110_zCount_uid35_i_div27_conv_q_1_q & vCount_uid116_zCount_uid35_i_div27_conv_q & vCount_uid122_zCount_uid35_i_div27_conv_q;

    -- redist35_r_uid123_zCount_uid35_i_div27_conv_q_1(DELAY,427)
    redist35_r_uid123_zCount_uid35_i_div27_conv_q_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => r_uid123_zCount_uid35_i_div27_conv_q, xout => redist35_r_uid123_zCount_uid35_i_div27_conv_q_1_q, clk => clock, aclr => resetn );

    -- leftShiftStageSel5Dto4_uid263_normY_uid36_i_div27_conv_merged_bit_select(BITSELECT,389)@8
    leftShiftStageSel5Dto4_uid263_normY_uid36_i_div27_conv_merged_bit_select_b <= redist35_r_uid123_zCount_uid35_i_div27_conv_q_1_q(5 downto 4);
    leftShiftStageSel5Dto4_uid263_normY_uid36_i_div27_conv_merged_bit_select_c <= redist35_r_uid123_zCount_uid35_i_div27_conv_q_1_q(3 downto 2);
    leftShiftStageSel5Dto4_uid263_normY_uid36_i_div27_conv_merged_bit_select_d <= redist35_r_uid123_zCount_uid35_i_div27_conv_q_1_q(1 downto 0);

    -- leftShiftStage2_uid286_normY_uid36_i_div27_conv(MUX,285)@8
    leftShiftStage2_uid286_normY_uid36_i_div27_conv_s <= leftShiftStageSel5Dto4_uid263_normY_uid36_i_div27_conv_merged_bit_select_d;
    leftShiftStage2_uid286_normY_uid36_i_div27_conv_combproc: PROCESS (leftShiftStage2_uid286_normY_uid36_i_div27_conv_s, leftShiftStage1_uid275_normY_uid36_i_div27_conv_q, leftShiftStage2Idx1_uid278_normY_uid36_i_div27_conv_q, leftShiftStage2Idx2_uid281_normY_uid36_i_div27_conv_q, leftShiftStage2Idx3_uid284_normY_uid36_i_div27_conv_q)
    BEGIN
        CASE (leftShiftStage2_uid286_normY_uid36_i_div27_conv_s) IS
            WHEN "00" => leftShiftStage2_uid286_normY_uid36_i_div27_conv_q <= leftShiftStage1_uid275_normY_uid36_i_div27_conv_q;
            WHEN "01" => leftShiftStage2_uid286_normY_uid36_i_div27_conv_q <= leftShiftStage2Idx1_uid278_normY_uid36_i_div27_conv_q;
            WHEN "10" => leftShiftStage2_uid286_normY_uid36_i_div27_conv_q <= leftShiftStage2Idx2_uid281_normY_uid36_i_div27_conv_q;
            WHEN "11" => leftShiftStage2_uid286_normY_uid36_i_div27_conv_q <= leftShiftStage2Idx3_uid284_normY_uid36_i_div27_conv_q;
            WHEN OTHERS => leftShiftStage2_uid286_normY_uid36_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- normYNoLeadOne_uid37_i_div27_conv(BITSELECT,36)@8
    normYNoLeadOne_uid37_i_div27_conv_in <= leftShiftStage2_uid286_normY_uid36_i_div27_conv_q(30 downto 0);
    normYNoLeadOne_uid37_i_div27_conv_b <= normYNoLeadOne_uid37_i_div27_conv_in(30 downto 0);

    -- yAddr_uid45_i_div27_conv_merged_bit_select(BITSELECT,383)@8
    yAddr_uid45_i_div27_conv_merged_bit_select_b <= normYNoLeadOne_uid37_i_div27_conv_b(30 downto 23);
    yAddr_uid45_i_div27_conv_merged_bit_select_c <= normYNoLeadOne_uid37_i_div27_conv_b(22 downto 0);

    -- redist8_yAddr_uid45_i_div27_conv_merged_bit_select_c_2(DELAY,400)
    redist8_yAddr_uid45_i_div27_conv_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yAddr_uid45_i_div27_conv_merged_bit_select_c, xout => redist8_yAddr_uid45_i_div27_conv_merged_bit_select_c_2_q, clk => clock, aclr => resetn );

    -- redist9_yAddr_uid45_i_div27_conv_merged_bit_select_c_5(DELAY,401)
    redist9_yAddr_uid45_i_div27_conv_merged_bit_select_c_5 : dspba_delay
    GENERIC MAP ( width => 23, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_yAddr_uid45_i_div27_conv_merged_bit_select_c_2_q, xout => redist9_yAddr_uid45_i_div27_conv_merged_bit_select_c_5_q, clk => clock, aclr => resetn );

    -- redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_wraddr(REG,478)
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_wraddr_q <= STD_LOGIC_VECTOR(redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem(DUALMEM,476)
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_ia <= STD_LOGIC_VECTOR(redist9_yAddr_uid45_i_div27_conv_merged_bit_select_c_5_q);
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_aa <= redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_wraddr_q;
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_ab <= redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_rdcnt_q;
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_reset0 <= not (resetn);
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_dmem : altera_syncram
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
        clocken1 => redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_reset0,
        clock1 => clock,
        address_a => redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_aa,
        data_a => redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_ab,
        q_b => redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_iq
    );
    redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_q <= redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_iq(22 downto 0);

    -- nx_mergedSignalTM_uid178_pT3_uid154_invPolyEval(BITJOIN,177)@17
    nx_mergedSignalTM_uid178_pT3_uid154_invPolyEval_q <= GND_q & redist10_yAddr_uid45_i_div27_conv_merged_bit_select_c_9_mem_q;

    -- topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select(BITSELECT,391)@17
    topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid178_pT3_uid154_invPolyEval_q(23 downto 6));
    topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid178_pT3_uid154_invPolyEval_q(5 downto 0));

    -- aboveLeftY_bottomExtension_uid183_pT3_uid154_invPolyEval(CONSTANT,182)
    aboveLeftY_bottomExtension_uid183_pT3_uid154_invPolyEval_q <= "00000";

    -- aboveLeftY_mergedSignalTM_uid185_pT3_uid154_invPolyEval(BITJOIN,184)@17
    aboveLeftY_mergedSignalTM_uid185_pT3_uid154_invPolyEval_q <= topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_c & aboveLeftY_bottomExtension_uid183_pT3_uid154_invPolyEval_q;

    -- memoryC3_uid134_invTabGen_lutmem(DUALMEM,360)@8 + 2
    -- in j@20000000
    memoryC3_uid134_invTabGen_lutmem_aa <= yAddr_uid45_i_div27_conv_merged_bit_select_b;
    memoryC3_uid134_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC3_uid134_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => "i_sfc_logic_c1_entry_conv_c1_enter_conv2A3ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid134_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid134_invTabGen_lutmem_aa,
        q_a => memoryC3_uid134_invTabGen_lutmem_ir
    );
    memoryC3_uid134_invTabGen_lutmem_r <= memoryC3_uid134_invTabGen_lutmem_ir(13 downto 0);

    -- yT1_uid141_invPolyEval(BITSELECT,140)@10
    yT1_uid141_invPolyEval_b <= redist8_yAddr_uid45_i_div27_conv_merged_bit_select_c_2_q(22 downto 9);

    -- prodXY_uid160_pT1_uid142_invPolyEval_cma(CHAINMULTADD,361)@10 + 2
    prodXY_uid160_pT1_uid142_invPolyEval_cma_reset <= not (resetn);
    prodXY_uid160_pT1_uid142_invPolyEval_cma_ena0 <= '1';
    prodXY_uid160_pT1_uid142_invPolyEval_cma_ena1 <= prodXY_uid160_pT1_uid142_invPolyEval_cma_ena0;
    prodXY_uid160_pT1_uid142_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid160_pT1_uid142_invPolyEval_cma_a0(0),15));
    prodXY_uid160_pT1_uid142_invPolyEval_cma_p(0) <= prodXY_uid160_pT1_uid142_invPolyEval_cma_l(0) * prodXY_uid160_pT1_uid142_invPolyEval_cma_c0(0);
    prodXY_uid160_pT1_uid142_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid160_pT1_uid142_invPolyEval_cma_p(0),29);
    prodXY_uid160_pT1_uid142_invPolyEval_cma_w(0) <= prodXY_uid160_pT1_uid142_invPolyEval_cma_u(0);
    prodXY_uid160_pT1_uid142_invPolyEval_cma_x(0) <= prodXY_uid160_pT1_uid142_invPolyEval_cma_w(0);
    prodXY_uid160_pT1_uid142_invPolyEval_cma_y(0) <= prodXY_uid160_pT1_uid142_invPolyEval_cma_x(0);
    prodXY_uid160_pT1_uid142_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid160_pT1_uid142_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid160_pT1_uid142_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid160_pT1_uid142_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid160_pT1_uid142_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid141_invPolyEval_b),14);
                prodXY_uid160_pT1_uid142_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC3_uid134_invTabGen_lutmem_r),14);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid160_pT1_uid142_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid160_pT1_uid142_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid160_pT1_uid142_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid160_pT1_uid142_invPolyEval_cma_s(0) <= prodXY_uid160_pT1_uid142_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid160_pT1_uid142_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid160_pT1_uid142_invPolyEval_cma_s(0)(27 downto 0)), xout => prodXY_uid160_pT1_uid142_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    prodXY_uid160_pT1_uid142_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid160_pT1_uid142_invPolyEval_cma_qq(27 downto 0));

    -- osig_uid161_pT1_uid142_invPolyEval(BITSELECT,160)@12
    osig_uid161_pT1_uid142_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid160_pT1_uid142_invPolyEval_cma_q(27 downto 14));

    -- highBBits_uid144_invPolyEval(BITSELECT,143)@12
    highBBits_uid144_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid161_pT1_uid142_invPolyEval_b(13 downto 1));

    -- redist5_yAddr_uid45_i_div27_conv_merged_bit_select_b_2(DELAY,397)
    redist5_yAddr_uid45_i_div27_conv_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yAddr_uid45_i_div27_conv_merged_bit_select_b, xout => redist5_yAddr_uid45_i_div27_conv_merged_bit_select_b_2_q, clk => clock, aclr => resetn );

    -- memoryC2_uid131_invTabGen_lutmem(DUALMEM,359)@10 + 2
    -- in j@20000000
    memoryC2_uid131_invTabGen_lutmem_aa <= redist5_yAddr_uid45_i_div27_conv_merged_bit_select_b_2_q;
    memoryC2_uid131_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC2_uid131_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => "i_sfc_logic_c1_entry_conv_c1_enter_conv2A2ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid131_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid131_invTabGen_lutmem_aa,
        q_a => memoryC2_uid131_invTabGen_lutmem_ir
    );
    memoryC2_uid131_invTabGen_lutmem_r <= memoryC2_uid131_invTabGen_lutmem_ir(20 downto 0);

    -- s1sumAHighB_uid145_invPolyEval(ADD,144)@12 + 1
    s1sumAHighB_uid145_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => memoryC2_uid131_invTabGen_lutmem_r(20)) & memoryC2_uid131_invTabGen_lutmem_r));
    s1sumAHighB_uid145_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 13 => highBBits_uid144_invPolyEval_b(12)) & highBBits_uid144_invPolyEval_b));
    s1sumAHighB_uid145_invPolyEval_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            s1sumAHighB_uid145_invPolyEval_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            s1sumAHighB_uid145_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid145_invPolyEval_a) + SIGNED(s1sumAHighB_uid145_invPolyEval_b));
        END IF;
    END PROCESS;
    s1sumAHighB_uid145_invPolyEval_q <= s1sumAHighB_uid145_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid143_invPolyEval(BITSELECT,142)@12
    lowRangeB_uid143_invPolyEval_in <= osig_uid161_pT1_uid142_invPolyEval_b(0 downto 0);
    lowRangeB_uid143_invPolyEval_b <= lowRangeB_uid143_invPolyEval_in(0 downto 0);

    -- redist34_lowRangeB_uid143_invPolyEval_b_1(DELAY,426)
    redist34_lowRangeB_uid143_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => lowRangeB_uid143_invPolyEval_b, xout => redist34_lowRangeB_uid143_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- s1_uid146_invPolyEval(BITJOIN,145)@13
    s1_uid146_invPolyEval_q <= s1sumAHighB_uid145_invPolyEval_q & redist34_lowRangeB_uid143_invPolyEval_b_1_q;

    -- yT2_uid147_invPolyEval(BITSELECT,146)@13
    yT2_uid147_invPolyEval_b <= redist9_yAddr_uid45_i_div27_conv_merged_bit_select_c_5_q(22 downto 2);

    -- prodXY_uid163_pT2_uid148_invPolyEval_cma(CHAINMULTADD,362)@13 + 2
    prodXY_uid163_pT2_uid148_invPolyEval_cma_reset <= not (resetn);
    prodXY_uid163_pT2_uid148_invPolyEval_cma_ena0 <= '1';
    prodXY_uid163_pT2_uid148_invPolyEval_cma_ena1 <= prodXY_uid163_pT2_uid148_invPolyEval_cma_ena0;
    prodXY_uid163_pT2_uid148_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid163_pT2_uid148_invPolyEval_cma_a0(0),22));
    prodXY_uid163_pT2_uid148_invPolyEval_cma_p(0) <= prodXY_uid163_pT2_uid148_invPolyEval_cma_l(0) * prodXY_uid163_pT2_uid148_invPolyEval_cma_c0(0);
    prodXY_uid163_pT2_uid148_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid163_pT2_uid148_invPolyEval_cma_p(0),45);
    prodXY_uid163_pT2_uid148_invPolyEval_cma_w(0) <= prodXY_uid163_pT2_uid148_invPolyEval_cma_u(0);
    prodXY_uid163_pT2_uid148_invPolyEval_cma_x(0) <= prodXY_uid163_pT2_uid148_invPolyEval_cma_w(0);
    prodXY_uid163_pT2_uid148_invPolyEval_cma_y(0) <= prodXY_uid163_pT2_uid148_invPolyEval_cma_x(0);
    prodXY_uid163_pT2_uid148_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid163_pT2_uid148_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid163_pT2_uid148_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid163_pT2_uid148_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid163_pT2_uid148_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT2_uid147_invPolyEval_b),21);
                prodXY_uid163_pT2_uid148_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid146_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid163_pT2_uid148_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid163_pT2_uid148_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXY_uid163_pT2_uid148_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid163_pT2_uid148_invPolyEval_cma_s(0) <= prodXY_uid163_pT2_uid148_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid163_pT2_uid148_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 44, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid163_pT2_uid148_invPolyEval_cma_s(0)(43 downto 0)), xout => prodXY_uid163_pT2_uid148_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    prodXY_uid163_pT2_uid148_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid163_pT2_uid148_invPolyEval_cma_qq(43 downto 0));

    -- osig_uid164_pT2_uid148_invPolyEval(BITSELECT,163)@15
    osig_uid164_pT2_uid148_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid163_pT2_uid148_invPolyEval_cma_q(43 downto 21));

    -- redist32_osig_uid164_pT2_uid148_invPolyEval_b_1(DELAY,424)
    redist32_osig_uid164_pT2_uid148_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => osig_uid164_pT2_uid148_invPolyEval_b, xout => redist32_osig_uid164_pT2_uid148_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid150_invPolyEval(BITSELECT,149)@16
    highBBits_uid150_invPolyEval_b <= STD_LOGIC_VECTOR(redist32_osig_uid164_pT2_uid148_invPolyEval_b_1_q(22 downto 1));

    -- redist6_yAddr_uid45_i_div27_conv_merged_bit_select_b_5(DELAY,398)
    redist6_yAddr_uid45_i_div27_conv_merged_bit_select_b_5 : dspba_delay
    GENERIC MAP ( width => 8, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_yAddr_uid45_i_div27_conv_merged_bit_select_b_2_q, xout => redist6_yAddr_uid45_i_div27_conv_merged_bit_select_b_5_q, clk => clock, aclr => resetn );

    -- memoryC1_uid128_invTabGen_lutmem(DUALMEM,358)@13 + 2
    -- in j@20000000
    memoryC1_uid128_invTabGen_lutmem_aa <= redist6_yAddr_uid45_i_div27_conv_merged_bit_select_b_5_q;
    memoryC1_uid128_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC1_uid128_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => "i_sfc_logic_c1_entry_conv_c1_enter_conv2A1ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid128_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid128_invTabGen_lutmem_aa,
        q_a => memoryC1_uid128_invTabGen_lutmem_ir
    );
    memoryC1_uid128_invTabGen_lutmem_r <= memoryC1_uid128_invTabGen_lutmem_ir(28 downto 0);

    -- redist28_memoryC1_uid128_invTabGen_lutmem_r_1(DELAY,420)
    redist28_memoryC1_uid128_invTabGen_lutmem_r_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => memoryC1_uid128_invTabGen_lutmem_r, xout => redist28_memoryC1_uid128_invTabGen_lutmem_r_1_q, clk => clock, aclr => resetn );

    -- s2sumAHighB_uid151_invPolyEval(ADD,150)@16 + 1
    s2sumAHighB_uid151_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => redist28_memoryC1_uid128_invTabGen_lutmem_r_1_q(28)) & redist28_memoryC1_uid128_invTabGen_lutmem_r_1_q));
    s2sumAHighB_uid151_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => highBBits_uid150_invPolyEval_b(21)) & highBBits_uid150_invPolyEval_b));
    s2sumAHighB_uid151_invPolyEval_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            s2sumAHighB_uid151_invPolyEval_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            s2sumAHighB_uid151_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid151_invPolyEval_a) + SIGNED(s2sumAHighB_uid151_invPolyEval_b));
        END IF;
    END PROCESS;
    s2sumAHighB_uid151_invPolyEval_q <= s2sumAHighB_uid151_invPolyEval_o(29 downto 0);

    -- lowRangeB_uid149_invPolyEval(BITSELECT,148)@16
    lowRangeB_uid149_invPolyEval_in <= redist32_osig_uid164_pT2_uid148_invPolyEval_b_1_q(0 downto 0);
    lowRangeB_uid149_invPolyEval_b <= lowRangeB_uid149_invPolyEval_in(0 downto 0);

    -- redist33_lowRangeB_uid149_invPolyEval_b_1(DELAY,425)
    redist33_lowRangeB_uid149_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => lowRangeB_uid149_invPolyEval_b, xout => redist33_lowRangeB_uid149_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- s2_uid152_invPolyEval(BITJOIN,151)@17
    s2_uid152_invPolyEval_q <= s2sumAHighB_uid151_invPolyEval_q & redist33_lowRangeB_uid149_invPolyEval_b_1_q;

    -- topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select(BITSELECT,390)@17
    topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(s2_uid152_invPolyEval_q(30 downto 13));
    topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(s2_uid152_invPolyEval_q(12 downto 0));

    -- rightBottomX_mergedSignalTM_uid189_pT3_uid154_invPolyEval(BITJOIN,188)@17
    rightBottomX_mergedSignalTM_uid189_pT3_uid154_invPolyEval_q <= topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_c & rightBottomX_bottomExtension_uid187_pT3_uid154_invPolyEval_q;

    -- multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma(CHAINMULTADD,374)@17 + 2
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_reset <= not (resetn);
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena0 <= '1';
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena1 <= multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena0;
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_l(0) <= SIGNED(RESIZE(multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0(0),19));
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_l(1) <= SIGNED(RESIZE(multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0(1),19));
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p(0) <= multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_l(0) * multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0(0);
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p(1) <= multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_l(1) * multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0(1);
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_u(0) <= RESIZE(multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p(0),38);
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_u(1) <= RESIZE(multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p(1),38);
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_w(0) <= multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_u(0) + multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_u(1);
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_x(0) <= multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_w(0);
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_y(0) <= multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_x(0);
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0 <= (others => (others => '0'));
            multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena0 = '1') THEN
                multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(rightBottomX_mergedSignalTM_uid189_pT3_uid154_invPolyEval_q),18);
                multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0(1) <= RESIZE(UNSIGNED(aboveLeftY_mergedSignalTM_uid185_pT3_uid154_invPolyEval_q),18);
                multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_b),18);
                multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0(1) <= RESIZE(SIGNED(topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena1 = '1') THEN
                multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_s(0) <= multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 37, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_s(0)(36 downto 0)), xout => multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q <= STD_LOGIC_VECTOR(multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_qq(36 downto 0));

    -- redist16_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1(DELAY,408)
    redist16_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q, xout => redist16_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid196_pT3_uid154_invPolyEval(BITSELECT,195)@20
    highBBits_uid196_pT3_uid154_invPolyEval_b <= STD_LOGIC_VECTOR(redist16_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1_q(36 downto 18));

    -- sm0_uid192_pT3_uid154_invPolyEval_cma(CHAINMULTADD,363)@17 + 2
    sm0_uid192_pT3_uid154_invPolyEval_cma_reset <= not (resetn);
    sm0_uid192_pT3_uid154_invPolyEval_cma_ena0 <= '1';
    sm0_uid192_pT3_uid154_invPolyEval_cma_ena1 <= sm0_uid192_pT3_uid154_invPolyEval_cma_ena0;
    sm0_uid192_pT3_uid154_invPolyEval_cma_p(0) <= sm0_uid192_pT3_uid154_invPolyEval_cma_a0(0) * sm0_uid192_pT3_uid154_invPolyEval_cma_c0(0);
    sm0_uid192_pT3_uid154_invPolyEval_cma_u(0) <= RESIZE(sm0_uid192_pT3_uid154_invPolyEval_cma_p(0),36);
    sm0_uid192_pT3_uid154_invPolyEval_cma_w(0) <= sm0_uid192_pT3_uid154_invPolyEval_cma_u(0);
    sm0_uid192_pT3_uid154_invPolyEval_cma_x(0) <= sm0_uid192_pT3_uid154_invPolyEval_cma_w(0);
    sm0_uid192_pT3_uid154_invPolyEval_cma_y(0) <= sm0_uid192_pT3_uid154_invPolyEval_cma_x(0);
    sm0_uid192_pT3_uid154_invPolyEval_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            sm0_uid192_pT3_uid154_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid192_pT3_uid154_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (sm0_uid192_pT3_uid154_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid192_pT3_uid154_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_b),18);
                sm0_uid192_pT3_uid154_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid192_pT3_uid154_invPolyEval_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            sm0_uid192_pT3_uid154_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (sm0_uid192_pT3_uid154_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid192_pT3_uid154_invPolyEval_cma_s(0) <= sm0_uid192_pT3_uid154_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid192_pT3_uid154_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid192_pT3_uid154_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid192_pT3_uid154_invPolyEval_cma_qq, clk => clock, aclr => resetn );
    sm0_uid192_pT3_uid154_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid192_pT3_uid154_invPolyEval_cma_qq(35 downto 0));

    -- redist27_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1(DELAY,419)
    redist27_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => sm0_uid192_pT3_uid154_invPolyEval_cma_q, xout => redist27_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1_q, clk => clock, aclr => resetn );

    -- lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval(ADD,196)@20
    lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 36 => redist27_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1_q(35)) & redist27_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1_q));
    lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 19 => highBBits_uid196_pT3_uid154_invPolyEval_b(18)) & highBBits_uid196_pT3_uid154_invPolyEval_b));
    lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_b));
    lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_q <= lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_o(36 downto 0);

    -- lowRangeB_uid195_pT3_uid154_invPolyEval(BITSELECT,194)@20
    lowRangeB_uid195_pT3_uid154_invPolyEval_in <= redist16_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1_q(17 downto 0);
    lowRangeB_uid195_pT3_uid154_invPolyEval_b <= lowRangeB_uid195_pT3_uid154_invPolyEval_in(17 downto 0);

    -- lev1_a0_uid198_pT3_uid154_invPolyEval(BITJOIN,197)@20
    lev1_a0_uid198_pT3_uid154_invPolyEval_q <= lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_q & lowRangeB_uid195_pT3_uid154_invPolyEval_b;

    -- os_uid199_pT3_uid154_invPolyEval(BITSELECT,198)@20
    os_uid199_pT3_uid154_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid198_pT3_uid154_invPolyEval_q(52 downto 0));
    os_uid199_pT3_uid154_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid199_pT3_uid154_invPolyEval_in(52 downto 21));

    -- redist31_os_uid199_pT3_uid154_invPolyEval_b_1(DELAY,423)
    redist31_os_uid199_pT3_uid154_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => os_uid199_pT3_uid154_invPolyEval_b, xout => redist31_os_uid199_pT3_uid154_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- highBBits_uid156_invPolyEval(BITSELECT,155)@21
    highBBits_uid156_invPolyEval_b <= STD_LOGIC_VECTOR(redist31_os_uid199_pT3_uid154_invPolyEval_b_1_q(31 downto 2));

    -- redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_notEnable(LOGICAL,472)
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_nor(LOGICAL,473)
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_nor_q <= not (redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_notEnable_q or redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_sticky_ena_q);

    -- redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_last(CONSTANT,469)
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_last_q <= "010";

    -- redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmp(LOGICAL,470)
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmp_b <= STD_LOGIC_VECTOR("0" & redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_q);
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmp_q <= "1" WHEN redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_last_q = redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmp_b ELSE "0";

    -- redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmpReg(REG,471)
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmpReg_q <= STD_LOGIC_VECTOR(redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmp_q);
        END IF;
    END PROCESS;

    -- redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_sticky_ena(REG,474)
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_nor_q = "1") THEN
                redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_sticky_ena_q <= STD_LOGIC_VECTOR(redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_enaAnd(LOGICAL,475)
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_enaAnd_q <= redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_sticky_ena_q and VCC_q;

    -- redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt(COUNTER,467)
    -- low=0, high=3, step=1, init=0
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_i <= redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_i, 2)));

    -- redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_wraddr(REG,468)
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_wraddr_q <= STD_LOGIC_VECTOR(redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem(DUALMEM,466)
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_ia <= STD_LOGIC_VECTOR(redist6_yAddr_uid45_i_div27_conv_merged_bit_select_b_5_q);
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_aa <= redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_wraddr_q;
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_ab <= redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_rdcnt_q;
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_reset0 <= not (resetn);
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_dmem : altera_syncram
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
        clocken1 => redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_reset0,
        clock1 => clock,
        address_a => redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_aa,
        data_a => redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_ab,
        q_b => redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_iq
    );
    redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_q <= redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_iq(7 downto 0);

    -- memoryC0_uid125_invTabGen_lutmem(DUALMEM,357)@18 + 2
    -- in j@20000000
    memoryC0_uid125_invTabGen_lutmem_aa <= redist7_yAddr_uid45_i_div27_conv_merged_bit_select_b_10_mem_q;
    memoryC0_uid125_invTabGen_lutmem_reset0 <= not (resetn);
    memoryC0_uid125_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => "i_sfc_logic_c1_entry_conv_c1_enter_conv2A0ZinvTabGen_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid125_invTabGen_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid125_invTabGen_lutmem_aa,
        q_a => memoryC0_uid125_invTabGen_lutmem_ir
    );
    memoryC0_uid125_invTabGen_lutmem_r <= memoryC0_uid125_invTabGen_lutmem_ir(37 downto 0);

    -- redist29_memoryC0_uid125_invTabGen_lutmem_r_1(DELAY,421)
    redist29_memoryC0_uid125_invTabGen_lutmem_r_1 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => memoryC0_uid125_invTabGen_lutmem_r, xout => redist29_memoryC0_uid125_invTabGen_lutmem_r_1_q, clk => clock, aclr => resetn );

    -- s3sumAHighB_uid157_invPolyEval(ADD,156)@21
    s3sumAHighB_uid157_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 38 => redist29_memoryC0_uid125_invTabGen_lutmem_r_1_q(37)) & redist29_memoryC0_uid125_invTabGen_lutmem_r_1_q));
    s3sumAHighB_uid157_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 30 => highBBits_uid156_invPolyEval_b(29)) & highBBits_uid156_invPolyEval_b));
    s3sumAHighB_uid157_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s3sumAHighB_uid157_invPolyEval_a) + SIGNED(s3sumAHighB_uid157_invPolyEval_b));
    s3sumAHighB_uid157_invPolyEval_q <= s3sumAHighB_uid157_invPolyEval_o(38 downto 0);

    -- lowRangeB_uid155_invPolyEval(BITSELECT,154)@21
    lowRangeB_uid155_invPolyEval_in <= redist31_os_uid199_pT3_uid154_invPolyEval_b_1_q(1 downto 0);
    lowRangeB_uid155_invPolyEval_b <= lowRangeB_uid155_invPolyEval_in(1 downto 0);

    -- s3_uid158_invPolyEval(BITJOIN,157)@21
    s3_uid158_invPolyEval_q <= s3sumAHighB_uid157_invPolyEval_q & lowRangeB_uid155_invPolyEval_b;

    -- fxpInverseRes_uid48_i_div27_conv(BITSELECT,47)@21
    fxpInverseRes_uid48_i_div27_conv_in <= s3_uid158_invPolyEval_q(38 downto 0);
    fxpInverseRes_uid48_i_div27_conv_b <= fxpInverseRes_uid48_i_div27_conv_in(38 downto 6);

    -- redist51_fxpInverseRes_uid48_i_div27_conv_b_1(DELAY,443)
    redist51_fxpInverseRes_uid48_i_div27_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fxpInverseRes_uid48_i_div27_conv_b, xout => redist51_fxpInverseRes_uid48_i_div27_conv_b_1_q, clk => clock, aclr => resetn );

    -- paddingY_uid38_i_div27_conv(CONSTANT,37)
    paddingY_uid38_i_div27_conv_q <= "0000000000000000000000000000000";

    -- updatedY_uid39_i_div27_conv(BITJOIN,38)@9
    updatedY_uid39_i_div27_conv_q <= GND_q & paddingY_uid38_i_div27_conv_q;

    -- redist54_normYNoLeadOne_uid37_i_div27_conv_b_1(DELAY,446)
    redist54_normYNoLeadOne_uid37_i_div27_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 31, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYNoLeadOne_uid37_i_div27_conv_b, xout => redist54_normYNoLeadOne_uid37_i_div27_conv_b_1_q, clk => clock, aclr => resetn );

    -- normYIsOneC2_uid38_i_div27_conv(LOGICAL,39)@9 + 1
    normYIsOneC2_uid38_i_div27_conv_a <= STD_LOGIC_VECTOR("0" & redist54_normYNoLeadOne_uid37_i_div27_conv_b_1_q);
    normYIsOneC2_uid38_i_div27_conv_qi <= "1" WHEN normYIsOneC2_uid38_i_div27_conv_a = updatedY_uid39_i_div27_conv_q ELSE "0";
    normYIsOneC2_uid38_i_div27_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOneC2_uid38_i_div27_conv_qi, xout => normYIsOneC2_uid38_i_div27_conv_q, clk => clock, aclr => resetn );

    -- normYIsOneC2_uid41_i_div27_conv(BITSELECT,40)@8
    normYIsOneC2_uid41_i_div27_conv_b <= STD_LOGIC_VECTOR(leftShiftStage2_uid286_normY_uid36_i_div27_conv_q(31 downto 31));

    -- redist53_normYIsOneC2_uid41_i_div27_conv_b_2(DELAY,445)
    redist53_normYIsOneC2_uid41_i_div27_conv_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOneC2_uid41_i_div27_conv_b, xout => redist53_normYIsOneC2_uid41_i_div27_conv_b_2_q, clk => clock, aclr => resetn );

    -- normYIsOne_uid42_i_div27_conv(LOGICAL,41)@10 + 1
    normYIsOne_uid42_i_div27_conv_qi <= redist53_normYIsOneC2_uid41_i_div27_conv_b_2_q and normYIsOneC2_uid38_i_div27_conv_q;
    normYIsOne_uid42_i_div27_conv_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOne_uid42_i_div27_conv_qi, xout => normYIsOne_uid42_i_div27_conv_q, clk => clock, aclr => resetn );

    -- redist52_normYIsOne_uid42_i_div27_conv_q_12(DELAY,444)
    redist52_normYIsOne_uid42_i_div27_conv_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 11, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normYIsOne_uid42_i_div27_conv_q, xout => redist52_normYIsOne_uid42_i_div27_conv_q_12_q, clk => clock, aclr => resetn );

    -- invResPostOneHandling2_uid50_i_div27_conv(MUX,49)@22
    invResPostOneHandling2_uid50_i_div27_conv_s <= redist52_normYIsOne_uid42_i_div27_conv_q_12_q;
    invResPostOneHandling2_uid50_i_div27_conv_combproc: PROCESS (invResPostOneHandling2_uid50_i_div27_conv_s, redist51_fxpInverseRes_uid48_i_div27_conv_b_1_q, oneInvRes_uid49_i_div27_conv_q)
    BEGIN
        CASE (invResPostOneHandling2_uid50_i_div27_conv_s) IS
            WHEN "0" => invResPostOneHandling2_uid50_i_div27_conv_q <= redist51_fxpInverseRes_uid48_i_div27_conv_b_1_q;
            WHEN "1" => invResPostOneHandling2_uid50_i_div27_conv_q <= oneInvRes_uid49_i_div27_conv_q;
            WHEN OTHERS => invResPostOneHandling2_uid50_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodXInvY_uid58_i_div27_conv_bs6(BITSELECT,293)@22
    prodXInvY_uid58_i_div27_conv_bs6_b <= invResPostOneHandling2_uid50_i_div27_conv_q(32 downto 18);

    -- redist49_xPSXE_uid56_i_div27_conv_q_2(DELAY,441)
    redist49_xPSXE_uid56_i_div27_conv_q_2 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xPSXE_uid56_i_div27_conv_q, xout => redist49_xPSXE_uid56_i_div27_conv_q_2_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid58_i_div27_conv_bs7(BITSELECT,294)@23
    prodXInvY_uid58_i_div27_conv_bs7_b <= STD_LOGIC_VECTOR(redist49_xPSXE_uid56_i_div27_conv_q_2_q(32 downto 18));

    -- redist50_invResPostOneHandling2_uid50_i_div27_conv_q_1(DELAY,442)
    redist50_invResPostOneHandling2_uid50_i_div27_conv_q_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => invResPostOneHandling2_uid50_i_div27_conv_q, xout => redist50_invResPostOneHandling2_uid50_i_div27_conv_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid58_i_div27_conv_bs2(BITSELECT,289)@23
    prodXInvY_uid58_i_div27_conv_bs2_in <= redist50_invResPostOneHandling2_uid50_i_div27_conv_q_1_q(17 downto 0);
    prodXInvY_uid58_i_div27_conv_bs2_b <= prodXInvY_uid58_i_div27_conv_bs2_in(17 downto 0);

    -- prodXInvY_uid58_i_div27_conv_ma3_cma(CHAINMULTADD,378)@22 + 2
    -- in e@23
    -- in g@23
    -- out q@25
    prodXInvY_uid58_i_div27_conv_ma3_cma_reset <= not (resetn);
    prodXInvY_uid58_i_div27_conv_ma3_cma_ena0 <= '1';
    prodXInvY_uid58_i_div27_conv_ma3_cma_ena1 <= prodXInvY_uid58_i_div27_conv_ma3_cma_ena0;
    prodXInvY_uid58_i_div27_conv_ma3_cma_l(0) <= SIGNED(RESIZE(prodXInvY_uid58_i_div27_conv_ma3_cma_a0(0),19));
    prodXInvY_uid58_i_div27_conv_ma3_cma_l(1) <= SIGNED(RESIZE(prodXInvY_uid58_i_div27_conv_ma3_cma_a0(1),19));
    prodXInvY_uid58_i_div27_conv_ma3_cma_p(0) <= prodXInvY_uid58_i_div27_conv_ma3_cma_l(0) * prodXInvY_uid58_i_div27_conv_ma3_cma_c0(0);
    prodXInvY_uid58_i_div27_conv_ma3_cma_p(1) <= prodXInvY_uid58_i_div27_conv_ma3_cma_l(1) * prodXInvY_uid58_i_div27_conv_ma3_cma_c0(1);
    prodXInvY_uid58_i_div27_conv_ma3_cma_u(0) <= RESIZE(prodXInvY_uid58_i_div27_conv_ma3_cma_p(0),39);
    prodXInvY_uid58_i_div27_conv_ma3_cma_u(1) <= RESIZE(prodXInvY_uid58_i_div27_conv_ma3_cma_p(1),39);
    prodXInvY_uid58_i_div27_conv_ma3_cma_w(0) <= prodXInvY_uid58_i_div27_conv_ma3_cma_u(0);
    prodXInvY_uid58_i_div27_conv_ma3_cma_w(1) <= prodXInvY_uid58_i_div27_conv_ma3_cma_u(1);
    prodXInvY_uid58_i_div27_conv_ma3_cma_x(0) <= prodXInvY_uid58_i_div27_conv_ma3_cma_w(0);
    prodXInvY_uid58_i_div27_conv_ma3_cma_x(1) <= prodXInvY_uid58_i_div27_conv_ma3_cma_w(1);
    prodXInvY_uid58_i_div27_conv_ma3_cma_y(0) <= prodXInvY_uid58_i_div27_conv_ma3_cma_s(1) + prodXInvY_uid58_i_div27_conv_ma3_cma_x(0);
    prodXInvY_uid58_i_div27_conv_ma3_cma_y(1) <= prodXInvY_uid58_i_div27_conv_ma3_cma_x(1);
    prodXInvY_uid58_i_div27_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid58_i_div27_conv_ma3_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid58_i_div27_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid58_i_div27_conv_ma3_cma_ena0 = '1') THEN
                prodXInvY_uid58_i_div27_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid58_i_div27_conv_bs2_b),18);
                prodXInvY_uid58_i_div27_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(prodXInvY_uid58_i_div27_conv_bs6_b),18);
                prodXInvY_uid58_i_div27_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(prodXInvY_uid58_i_div27_conv_bs7_b),19);
                prodXInvY_uid58_i_div27_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(prodXInvY_uid58_i_div27_conv_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid58_i_div27_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid58_i_div27_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid58_i_div27_conv_ma3_cma_ena1 = '1') THEN
                prodXInvY_uid58_i_div27_conv_ma3_cma_s(0) <= prodXInvY_uid58_i_div27_conv_ma3_cma_y(0);
                prodXInvY_uid58_i_div27_conv_ma3_cma_s(1) <= prodXInvY_uid58_i_div27_conv_ma3_cma_y(1);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid58_i_div27_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 38, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid58_i_div27_conv_ma3_cma_s(0)(37 downto 0)), xout => prodXInvY_uid58_i_div27_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid58_i_div27_conv_ma3_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid58_i_div27_conv_ma3_cma_qq(37 downto 0));

    -- redist12_prodXInvY_uid58_i_div27_conv_ma3_cma_q_1(DELAY,404)
    redist12_prodXInvY_uid58_i_div27_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid58_i_div27_conv_ma3_cma_q, xout => redist12_prodXInvY_uid58_i_div27_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid58_i_div27_conv_align_13(BITSHIFT,300)@26
    prodXInvY_uid58_i_div27_conv_align_13_qint <= redist12_prodXInvY_uid58_i_div27_conv_ma3_cma_q_1_q & "000000000000000000";
    prodXInvY_uid58_i_div27_conv_align_13_q <= prodXInvY_uid58_i_div27_conv_align_13_qint(55 downto 0);

    -- prodXInvY_uid58_i_div27_conv_bs10(BITSELECT,297)@23
    prodXInvY_uid58_i_div27_conv_bs10_b <= redist49_xPSXE_uid56_i_div27_conv_q_2_q(32 downto 18);

    -- prodXInvY_uid58_i_div27_conv_bs11(BITSELECT,298)@23
    prodXInvY_uid58_i_div27_conv_bs11_b <= STD_LOGIC_VECTOR(redist50_invResPostOneHandling2_uid50_i_div27_conv_q_1_q(32 downto 18));

    -- prodXInvY_uid58_i_div27_conv_im9_cma(CHAINMULTADD,371)@23 + 2
    prodXInvY_uid58_i_div27_conv_im9_cma_reset <= not (resetn);
    prodXInvY_uid58_i_div27_conv_im9_cma_ena0 <= '1';
    prodXInvY_uid58_i_div27_conv_im9_cma_ena1 <= prodXInvY_uid58_i_div27_conv_im9_cma_ena0;
    prodXInvY_uid58_i_div27_conv_im9_cma_l(0) <= SIGNED(RESIZE(prodXInvY_uid58_i_div27_conv_im9_cma_a0(0),16));
    prodXInvY_uid58_i_div27_conv_im9_cma_p(0) <= prodXInvY_uid58_i_div27_conv_im9_cma_l(0) * prodXInvY_uid58_i_div27_conv_im9_cma_c0(0);
    prodXInvY_uid58_i_div27_conv_im9_cma_u(0) <= RESIZE(prodXInvY_uid58_i_div27_conv_im9_cma_p(0),31);
    prodXInvY_uid58_i_div27_conv_im9_cma_w(0) <= prodXInvY_uid58_i_div27_conv_im9_cma_u(0);
    prodXInvY_uid58_i_div27_conv_im9_cma_x(0) <= prodXInvY_uid58_i_div27_conv_im9_cma_w(0);
    prodXInvY_uid58_i_div27_conv_im9_cma_y(0) <= prodXInvY_uid58_i_div27_conv_im9_cma_x(0);
    prodXInvY_uid58_i_div27_conv_im9_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid58_i_div27_conv_im9_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid58_i_div27_conv_im9_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid58_i_div27_conv_im9_cma_ena0 = '1') THEN
                prodXInvY_uid58_i_div27_conv_im9_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid58_i_div27_conv_bs11_b),15);
                prodXInvY_uid58_i_div27_conv_im9_cma_c0(0) <= RESIZE(SIGNED(prodXInvY_uid58_i_div27_conv_bs10_b),15);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid58_i_div27_conv_im9_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid58_i_div27_conv_im9_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid58_i_div27_conv_im9_cma_ena1 = '1') THEN
                prodXInvY_uid58_i_div27_conv_im9_cma_s(0) <= prodXInvY_uid58_i_div27_conv_im9_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid58_i_div27_conv_im9_cma_delay : dspba_delay
    GENERIC MAP ( width => 30, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid58_i_div27_conv_im9_cma_s(0)(29 downto 0)), xout => prodXInvY_uid58_i_div27_conv_im9_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid58_i_div27_conv_im9_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid58_i_div27_conv_im9_cma_qq(29 downto 0));

    -- redist19_prodXInvY_uid58_i_div27_conv_im9_cma_q_1(DELAY,411)
    redist19_prodXInvY_uid58_i_div27_conv_im9_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid58_i_div27_conv_im9_cma_q, xout => redist19_prodXInvY_uid58_i_div27_conv_im9_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid58_i_div27_conv_bs1(BITSELECT,288)@23
    prodXInvY_uid58_i_div27_conv_bs1_in <= redist49_xPSXE_uid56_i_div27_conv_q_2_q(17 downto 0);
    prodXInvY_uid58_i_div27_conv_bs1_b <= prodXInvY_uid58_i_div27_conv_bs1_in(17 downto 0);

    -- prodXInvY_uid58_i_div27_conv_im0_cma(CHAINMULTADD,370)@23 + 2
    prodXInvY_uid58_i_div27_conv_im0_cma_reset <= not (resetn);
    prodXInvY_uid58_i_div27_conv_im0_cma_ena0 <= '1';
    prodXInvY_uid58_i_div27_conv_im0_cma_ena1 <= prodXInvY_uid58_i_div27_conv_im0_cma_ena0;
    prodXInvY_uid58_i_div27_conv_im0_cma_p(0) <= prodXInvY_uid58_i_div27_conv_im0_cma_a0(0) * prodXInvY_uid58_i_div27_conv_im0_cma_c0(0);
    prodXInvY_uid58_i_div27_conv_im0_cma_u(0) <= RESIZE(prodXInvY_uid58_i_div27_conv_im0_cma_p(0),36);
    prodXInvY_uid58_i_div27_conv_im0_cma_w(0) <= prodXInvY_uid58_i_div27_conv_im0_cma_u(0);
    prodXInvY_uid58_i_div27_conv_im0_cma_x(0) <= prodXInvY_uid58_i_div27_conv_im0_cma_w(0);
    prodXInvY_uid58_i_div27_conv_im0_cma_y(0) <= prodXInvY_uid58_i_div27_conv_im0_cma_x(0);
    prodXInvY_uid58_i_div27_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid58_i_div27_conv_im0_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid58_i_div27_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid58_i_div27_conv_im0_cma_ena0 = '1') THEN
                prodXInvY_uid58_i_div27_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid58_i_div27_conv_bs1_b),18);
                prodXInvY_uid58_i_div27_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(prodXInvY_uid58_i_div27_conv_bs2_b),18);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid58_i_div27_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXInvY_uid58_i_div27_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodXInvY_uid58_i_div27_conv_im0_cma_ena1 = '1') THEN
                prodXInvY_uid58_i_div27_conv_im0_cma_s(0) <= prodXInvY_uid58_i_div27_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid58_i_div27_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid58_i_div27_conv_im0_cma_s(0)(35 downto 0)), xout => prodXInvY_uid58_i_div27_conv_im0_cma_qq, clk => clock, aclr => resetn );
    prodXInvY_uid58_i_div27_conv_im0_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid58_i_div27_conv_im0_cma_qq(35 downto 0));

    -- redist20_prodXInvY_uid58_i_div27_conv_im0_cma_q_1(DELAY,412)
    redist20_prodXInvY_uid58_i_div27_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXInvY_uid58_i_div27_conv_im0_cma_q, xout => redist20_prodXInvY_uid58_i_div27_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodXInvY_uid58_i_div27_conv_join_12(BITJOIN,299)@26
    prodXInvY_uid58_i_div27_conv_join_12_q <= redist19_prodXInvY_uid58_i_div27_conv_im9_cma_q_1_q & redist20_prodXInvY_uid58_i_div27_conv_im0_cma_q_1_q;

    -- prodXInvY_uid58_i_div27_conv_result_add_0_0(ADD,302)@26
    prodXInvY_uid58_i_div27_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 66 => prodXInvY_uid58_i_div27_conv_join_12_q(65)) & prodXInvY_uid58_i_div27_conv_join_12_q));
    prodXInvY_uid58_i_div27_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 56 => prodXInvY_uid58_i_div27_conv_align_13_q(55)) & prodXInvY_uid58_i_div27_conv_align_13_q));
    prodXInvY_uid58_i_div27_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodXInvY_uid58_i_div27_conv_result_add_0_0_a) + SIGNED(prodXInvY_uid58_i_div27_conv_result_add_0_0_b));
    prodXInvY_uid58_i_div27_conv_result_add_0_0_q <= prodXInvY_uid58_i_div27_conv_result_add_0_0_o(66 downto 0);

    -- rightShiftInput_uid59_i_div27_conv(BITSELECT,58)@26
    rightShiftInput_uid59_i_div27_conv_in <= STD_LOGIC_VECTOR(prodXInvY_uid58_i_div27_conv_result_add_0_0_q(64 downto 0));
    rightShiftInput_uid59_i_div27_conv_b <= STD_LOGIC_VECTOR(rightShiftInput_uid59_i_div27_conv_in(64 downto 0));

    -- redist48_rightShiftInput_uid59_i_div27_conv_b_1(DELAY,440)
    redist48_rightShiftInput_uid59_i_div27_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 65, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftInput_uid59_i_div27_conv_b, xout => redist48_rightShiftInput_uid59_i_div27_conv_b_1_q, clk => clock, aclr => resetn );

    -- xMSB_uid304_prodPostRightShift_uid60_i_div27_conv(BITSELECT,303)@27
    xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b <= STD_LOGIC_VECTOR(redist48_rightShiftInput_uid59_i_div27_conv_b_1_q(64 downto 64));

    -- redist30_xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b_1(DELAY,422)
    redist30_xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b, xout => redist30_xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage3Idx1Rng1_uid338_prodPostRightShift_uid60_i_div27_conv(BITSELECT,337)@28
    rightShiftStage3Idx1Rng1_uid338_prodPostRightShift_uid60_i_div27_conv_b <= rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_q(64 downto 1);

    -- rightShiftStage3Idx1_uid339_prodPostRightShift_uid60_i_div27_conv(BITJOIN,338)@28
    rightShiftStage3Idx1_uid339_prodPostRightShift_uid60_i_div27_conv_q <= redist30_xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b_1_q & rightShiftStage3Idx1Rng1_uid338_prodPostRightShift_uid60_i_div27_conv_b;

    -- seMsb_to6_uid333(BITSELECT,332)@27
    seMsb_to6_uid333_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((5 downto 1 => xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b(0)) & xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b));
    seMsb_to6_uid333_b <= STD_LOGIC_VECTOR(seMsb_to6_uid333_in(5 downto 0));

    -- rightShiftStage2Idx3Rng6_uid334_prodPostRightShift_uid60_i_div27_conv(BITSELECT,333)@27
    rightShiftStage2Idx3Rng6_uid334_prodPostRightShift_uid60_i_div27_conv_b <= rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_q(64 downto 6);

    -- rightShiftStage2Idx3_uid335_prodPostRightShift_uid60_i_div27_conv(BITJOIN,334)@27
    rightShiftStage2Idx3_uid335_prodPostRightShift_uid60_i_div27_conv_q <= seMsb_to6_uid333_b & rightShiftStage2Idx3Rng6_uid334_prodPostRightShift_uid60_i_div27_conv_b;

    -- seMsb_to4_uid330(BITSELECT,329)@27
    seMsb_to4_uid330_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b(0)) & xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b));
    seMsb_to4_uid330_b <= STD_LOGIC_VECTOR(seMsb_to4_uid330_in(3 downto 0));

    -- rightShiftStage2Idx2Rng4_uid331_prodPostRightShift_uid60_i_div27_conv(BITSELECT,330)@27
    rightShiftStage2Idx2Rng4_uid331_prodPostRightShift_uid60_i_div27_conv_b <= rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_q(64 downto 4);

    -- rightShiftStage2Idx2_uid332_prodPostRightShift_uid60_i_div27_conv(BITJOIN,331)@27
    rightShiftStage2Idx2_uid332_prodPostRightShift_uid60_i_div27_conv_q <= seMsb_to4_uid330_b & rightShiftStage2Idx2Rng4_uid331_prodPostRightShift_uid60_i_div27_conv_b;

    -- seMsb_to2_uid327(BITSELECT,326)@27
    seMsb_to2_uid327_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b(0)) & xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b));
    seMsb_to2_uid327_b <= STD_LOGIC_VECTOR(seMsb_to2_uid327_in(1 downto 0));

    -- rightShiftStage2Idx1Rng2_uid328_prodPostRightShift_uid60_i_div27_conv(BITSELECT,327)@27
    rightShiftStage2Idx1Rng2_uid328_prodPostRightShift_uid60_i_div27_conv_b <= rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_q(64 downto 2);

    -- rightShiftStage2Idx1_uid329_prodPostRightShift_uid60_i_div27_conv(BITJOIN,328)@27
    rightShiftStage2Idx1_uid329_prodPostRightShift_uid60_i_div27_conv_q <= seMsb_to2_uid327_b & rightShiftStage2Idx1Rng2_uid328_prodPostRightShift_uid60_i_div27_conv_b;

    -- seMsb_to24_uid322(BITSELECT,321)@27
    seMsb_to24_uid322_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 1 => xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b(0)) & xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b));
    seMsb_to24_uid322_b <= STD_LOGIC_VECTOR(seMsb_to24_uid322_in(23 downto 0));

    -- rightShiftStage1Idx3Rng24_uid323_prodPostRightShift_uid60_i_div27_conv(BITSELECT,322)@27
    rightShiftStage1Idx3Rng24_uid323_prodPostRightShift_uid60_i_div27_conv_b <= rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q(64 downto 24);

    -- rightShiftStage1Idx3_uid324_prodPostRightShift_uid60_i_div27_conv(BITJOIN,323)@27
    rightShiftStage1Idx3_uid324_prodPostRightShift_uid60_i_div27_conv_q <= seMsb_to24_uid322_b & rightShiftStage1Idx3Rng24_uid323_prodPostRightShift_uid60_i_div27_conv_b;

    -- seMsb_to16_uid319(BITSELECT,318)@27
    seMsb_to16_uid319_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b(0)) & xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b));
    seMsb_to16_uid319_b <= STD_LOGIC_VECTOR(seMsb_to16_uid319_in(15 downto 0));

    -- rightShiftStage1Idx2Rng16_uid320_prodPostRightShift_uid60_i_div27_conv(BITSELECT,319)@27
    rightShiftStage1Idx2Rng16_uid320_prodPostRightShift_uid60_i_div27_conv_b <= rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q(64 downto 16);

    -- rightShiftStage1Idx2_uid321_prodPostRightShift_uid60_i_div27_conv(BITJOIN,320)@27
    rightShiftStage1Idx2_uid321_prodPostRightShift_uid60_i_div27_conv_q <= seMsb_to16_uid319_b & rightShiftStage1Idx2Rng16_uid320_prodPostRightShift_uid60_i_div27_conv_b;

    -- seMsb_to8_uid316(BITSELECT,315)@27
    seMsb_to8_uid316_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b(0)) & xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b));
    seMsb_to8_uid316_b <= STD_LOGIC_VECTOR(seMsb_to8_uid316_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid317_prodPostRightShift_uid60_i_div27_conv(BITSELECT,316)@27
    rightShiftStage1Idx1Rng8_uid317_prodPostRightShift_uid60_i_div27_conv_b <= rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q(64 downto 8);

    -- rightShiftStage1Idx1_uid318_prodPostRightShift_uid60_i_div27_conv(BITJOIN,317)@27
    rightShiftStage1Idx1_uid318_prodPostRightShift_uid60_i_div27_conv_q <= seMsb_to8_uid316_b & rightShiftStage1Idx1Rng8_uid317_prodPostRightShift_uid60_i_div27_conv_b;

    -- stageIndexName_to65_uid312(BITSELECT,311)@27
    stageIndexName_to65_uid312_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 1 => xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b(0)) & xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b));
    stageIndexName_to65_uid312_b <= STD_LOGIC_VECTOR(stageIndexName_to65_uid312_in(64 downto 0));

    -- seMsb_to64_uid309(BITSELECT,308)@27
    seMsb_to64_uid309_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((63 downto 1 => xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b(0)) & xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b));
    seMsb_to64_uid309_b <= STD_LOGIC_VECTOR(seMsb_to64_uid309_in(63 downto 0));

    -- rightShiftStage0Idx2Rng64_uid310_prodPostRightShift_uid60_i_div27_conv(BITSELECT,309)@27
    rightShiftStage0Idx2Rng64_uid310_prodPostRightShift_uid60_i_div27_conv_b <= redist48_rightShiftInput_uid59_i_div27_conv_b_1_q(64 downto 64);

    -- rightShiftStage0Idx2_uid311_prodPostRightShift_uid60_i_div27_conv(BITJOIN,310)@27
    rightShiftStage0Idx2_uid311_prodPostRightShift_uid60_i_div27_conv_q <= seMsb_to64_uid309_b & rightShiftStage0Idx2Rng64_uid310_prodPostRightShift_uid60_i_div27_conv_b;

    -- seMsb_to32_uid306(BITSELECT,305)@27
    seMsb_to32_uid306_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b(0)) & xMSB_uid304_prodPostRightShift_uid60_i_div27_conv_b));
    seMsb_to32_uid306_b <= STD_LOGIC_VECTOR(seMsb_to32_uid306_in(31 downto 0));

    -- rightShiftStage0Idx1Rng32_uid307_prodPostRightShift_uid60_i_div27_conv(BITSELECT,306)@27
    rightShiftStage0Idx1Rng32_uid307_prodPostRightShift_uid60_i_div27_conv_b <= redist48_rightShiftInput_uid59_i_div27_conv_b_1_q(64 downto 32);

    -- rightShiftStage0Idx1_uid308_prodPostRightShift_uid60_i_div27_conv(BITJOIN,307)@27
    rightShiftStage0Idx1_uid308_prodPostRightShift_uid60_i_div27_conv_q <= seMsb_to32_uid306_b & rightShiftStage0Idx1Rng32_uid307_prodPostRightShift_uid60_i_div27_conv_b;

    -- rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv(MUX,314)@27
    rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_s <= rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_b;
    rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_combproc: PROCESS (rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_s, redist48_rightShiftInput_uid59_i_div27_conv_b_1_q, rightShiftStage0Idx1_uid308_prodPostRightShift_uid60_i_div27_conv_q, rightShiftStage0Idx2_uid311_prodPostRightShift_uid60_i_div27_conv_q, stageIndexName_to65_uid312_b)
    BEGIN
        CASE (rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_s) IS
            WHEN "00" => rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q <= redist48_rightShiftInput_uid59_i_div27_conv_b_1_q;
            WHEN "01" => rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage0Idx1_uid308_prodPostRightShift_uid60_i_div27_conv_q;
            WHEN "10" => rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage0Idx2_uid311_prodPostRightShift_uid60_i_div27_conv_q;
            WHEN "11" => rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q <= stageIndexName_to65_uid312_b;
            WHEN OTHERS => rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv(MUX,325)@27
    rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_s <= rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_c;
    rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_combproc: PROCESS (rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_s, rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q, rightShiftStage1Idx1_uid318_prodPostRightShift_uid60_i_div27_conv_q, rightShiftStage1Idx2_uid321_prodPostRightShift_uid60_i_div27_conv_q, rightShiftStage1Idx3_uid324_prodPostRightShift_uid60_i_div27_conv_q)
    BEGIN
        CASE (rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_s) IS
            WHEN "00" => rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage0_uid315_prodPostRightShift_uid60_i_div27_conv_q;
            WHEN "01" => rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage1Idx1_uid318_prodPostRightShift_uid60_i_div27_conv_q;
            WHEN "10" => rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage1Idx2_uid321_prodPostRightShift_uid60_i_div27_conv_q;
            WHEN "11" => rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage1Idx3_uid324_prodPostRightShift_uid60_i_div27_conv_q;
            WHEN OTHERS => rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_notEnable(LOGICAL,494)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_nor(LOGICAL,495)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_nor_q <= not (redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_notEnable_q or redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_sticky_ena_q);

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_last(CONSTANT,491)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_last_q <= "01101";

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmp(LOGICAL,492)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmp_b <= STD_LOGIC_VECTOR("0" & redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_q);
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmp_q <= "1" WHEN redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_last_q = redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmp_b ELSE "0";

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmpReg(REG,493)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmpReg_q <= STD_LOGIC_VECTOR(redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmp_q);
        END IF;
    END PROCESS;

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_sticky_ena(REG,496)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_nor_q = "1") THEN
                redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_sticky_ena_q <= STD_LOGIC_VECTOR(redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_enaAnd(LOGICAL,497)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_enaAnd_q <= redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_sticky_ena_q and VCC_q;

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt(COUNTER,489)
    -- low=0, high=14, step=1, init=0
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_eq <= '1';
            ELSE
                redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_eq <= '0';
            END IF;
            IF (redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_eq = '1') THEN
                redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_i <= redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_i + 2;
            ELSE
                redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_i <= redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_i, 4)));

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_inputreg(DELAY,486)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_inputreg : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist35_r_uid123_zCount_uid35_i_div27_conv_q_1_q, xout => redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_inputreg_q, clk => clock, aclr => resetn );

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_wraddr(REG,490)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_wraddr_q <= "1110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_wraddr_q <= STD_LOGIC_VECTOR(redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem(DUALMEM,488)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_ia <= STD_LOGIC_VECTOR(redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_inputreg_q);
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_aa <= redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_wraddr_q;
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_ab <= redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_rdcnt_q;
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_reset0 <= not (resetn);
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_dmem : altera_syncram
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
        clocken1 => redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_reset0,
        clock1 => clock,
        address_a => redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_aa,
        data_a => redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_ab,
        q_b => redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_iq
    );
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_q <= redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_iq(5 downto 0);

    -- redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_outputreg(DELAY,487)
    redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_outputreg : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_mem_q, xout => redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_outputreg_q, clk => clock, aclr => resetn );

    -- cWOut_uid51_i_div27_conv(CONSTANT,50)
    cWOut_uid51_i_div27_conv_q <= "100000";

    -- rShiftCount_uid52_i_div27_conv(SUB,51)@26 + 1
    rShiftCount_uid52_i_div27_conv_a <= STD_LOGIC_VECTOR("0" & cWOut_uid51_i_div27_conv_q);
    rShiftCount_uid52_i_div27_conv_b <= STD_LOGIC_VECTOR("0" & redist36_r_uid123_zCount_uid35_i_div27_conv_q_19_outputreg_q);
    rShiftCount_uid52_i_div27_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rShiftCount_uid52_i_div27_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            rShiftCount_uid52_i_div27_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(rShiftCount_uid52_i_div27_conv_a) - UNSIGNED(rShiftCount_uid52_i_div27_conv_b));
        END IF;
    END PROCESS;
    rShiftCount_uid52_i_div27_conv_q <= rShiftCount_uid52_i_div27_conv_o(6 downto 0);

    -- rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select(BITSELECT,384)@27
    rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_b <= rShiftCount_uid52_i_div27_conv_q(6 downto 5);
    rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_c <= rShiftCount_uid52_i_div27_conv_q(4 downto 3);
    rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_d <= rShiftCount_uid52_i_div27_conv_q(2 downto 1);
    rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_e <= rShiftCount_uid52_i_div27_conv_q(0 downto 0);

    -- rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv(MUX,336)@27 + 1
    rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_s <= rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_d;
    rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_s) IS
                WHEN "00" => rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage1_uid326_prodPostRightShift_uid60_i_div27_conv_q;
                WHEN "01" => rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage2Idx1_uid329_prodPostRightShift_uid60_i_div27_conv_q;
                WHEN "10" => rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage2Idx2_uid332_prodPostRightShift_uid60_i_div27_conv_q;
                WHEN "11" => rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage2Idx3_uid335_prodPostRightShift_uid60_i_div27_conv_q;
                WHEN OTHERS => rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist4_rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_e_1(DELAY,396)
    redist4_rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_e, xout => redist4_rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv(MUX,340)@28
    rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv_s <= redist4_rightShiftStageSel6Dto5_uid314_prodPostRightShift_uid60_i_div27_conv_merged_bit_select_e_1_q;
    rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv_combproc: PROCESS (rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv_s, rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_q, rightShiftStage3Idx1_uid339_prodPostRightShift_uid60_i_div27_conv_q)
    BEGIN
        CASE (rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv_s) IS
            WHEN "0" => rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage2_uid337_prodPostRightShift_uid60_i_div27_conv_q;
            WHEN "1" => rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv_q <= rightShiftStage3Idx1_uid339_prodPostRightShift_uid60_i_div27_conv_q;
            WHEN OTHERS => rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodPostRightShiftPost_uid61_i_div27_conv(BITSELECT,60)@28
    prodPostRightShiftPost_uid61_i_div27_conv_in <= rightShiftStage3_uid341_prodPostRightShift_uid60_i_div27_conv_q(62 downto 0);
    prodPostRightShiftPost_uid61_i_div27_conv_b <= prodPostRightShiftPost_uid61_i_div27_conv_in(62 downto 30);

    -- redist47_prodPostRightShiftPost_uid61_i_div27_conv_b_1(DELAY,439)
    redist47_prodPostRightShiftPost_uid61_i_div27_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodPostRightShiftPost_uid61_i_div27_conv_b, xout => redist47_prodPostRightShiftPost_uid61_i_div27_conv_b_1_q, clk => clock, aclr => resetn );

    -- prodPostRightShiftPostRnd_uid63_i_div27_conv(ADD,62)@29
    prodPostRightShiftPostRnd_uid63_i_div27_conv_a <= STD_LOGIC_VECTOR("0" & redist47_prodPostRightShiftPost_uid61_i_div27_conv_b_1_q);
    prodPostRightShiftPostRnd_uid63_i_div27_conv_b <= STD_LOGIC_VECTOR("000000000000000000000000000000000" & VCC_q);
    prodPostRightShiftPostRnd_uid63_i_div27_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(prodPostRightShiftPostRnd_uid63_i_div27_conv_a) + UNSIGNED(prodPostRightShiftPostRnd_uid63_i_div27_conv_b));
    prodPostRightShiftPostRnd_uid63_i_div27_conv_q <= prodPostRightShiftPostRnd_uid63_i_div27_conv_o(33 downto 0);

    -- prodPostRightShiftPostRndRange_uid64_i_div27_conv(BITSELECT,63)@29
    prodPostRightShiftPostRndRange_uid64_i_div27_conv_in <= prodPostRightShiftPostRnd_uid63_i_div27_conv_q(32 downto 0);
    prodPostRightShiftPostRndRange_uid64_i_div27_conv_b <= prodPostRightShiftPostRndRange_uid64_i_div27_conv_in(32 downto 1);

    -- redist46_prodPostRightShiftPostRndRange_uid64_i_div27_conv_b_1(DELAY,438)
    redist46_prodPostRightShiftPostRndRange_uid64_i_div27_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodPostRightShiftPostRndRange_uid64_i_div27_conv_b, xout => redist46_prodPostRightShiftPostRndRange_uid64_i_div27_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_notEnable(LOGICAL,516)
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_nor(LOGICAL,517)
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_nor_q <= not (redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_notEnable_q or redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_sticky_ena_q);

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_last(CONSTANT,513)
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_last_q <= "011001";

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmp(LOGICAL,514)
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmp_b <= STD_LOGIC_VECTOR("0" & redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_q);
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmp_q <= "1" WHEN redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_last_q = redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmp_b ELSE "0";

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmpReg(REG,515)
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmpReg_q <= STD_LOGIC_VECTOR(redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmp_q);
        END IF;
    END PROCESS;

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_sticky_ena(REG,518)
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_nor_q = "1") THEN
                redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_sticky_ena_q <= STD_LOGIC_VECTOR(redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_enaAnd(LOGICAL,519)
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_enaAnd_q <= redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_sticky_ena_q and VCC_q;

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt(COUNTER,511)
    -- low=0, high=26, step=1, init=0
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_i = TO_UNSIGNED(25, 5)) THEN
                redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_eq <= '1';
            ELSE
                redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_eq <= '0';
            END IF;
            IF (redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_eq = '1') THEN
                redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_i <= redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_i + 6;
            ELSE
                redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_i <= redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_i, 5)));

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_wraddr(REG,512)
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_wraddr_q <= "11010";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_wraddr_q <= STD_LOGIC_VECTOR(redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem(DUALMEM,510)
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_ia <= STD_LOGIC_VECTOR(i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out);
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_aa <= redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_wraddr_q;
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_ab <= redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_rdcnt_q;
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_reset0 <= not (resetn);
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_dmem : altera_syncram
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
        clocken1 => redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_reset0,
        clock1 => clock,
        address_a => redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_aa,
        data_a => redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_ab,
        q_b => redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_iq
    );
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_q <= redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_iq(31 downto 0);

    -- redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_outputreg(DELAY,509)
    redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_mem_q, xout => redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_outputreg_q, clk => clock, aclr => resetn );

    -- yIsZero_uid43_i_div27_conv(LOGICAL,42)@30
    yIsZero_uid43_i_div27_conv_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000" & GND_q);
    yIsZero_uid43_i_div27_conv_q <= "1" WHEN redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_outputreg_q = yIsZero_uid43_i_div27_conv_b ELSE "0";

    -- resFinal_uid69_i_div27_conv(MUX,68)@30
    resFinal_uid69_i_div27_conv_s <= yIsZero_uid43_i_div27_conv_q;
    resFinal_uid69_i_div27_conv_combproc: PROCESS (resFinal_uid69_i_div27_conv_s, redist46_prodPostRightShiftPostRndRange_uid64_i_div27_conv_b_1_q, cstOvf_uid68_i_div27_conv_q)
    BEGIN
        CASE (resFinal_uid69_i_div27_conv_s) IS
            WHEN "0" => resFinal_uid69_i_div27_conv_q <= redist46_prodPostRightShiftPostRndRange_uid64_i_div27_conv_b_1_q;
            WHEN "1" => resFinal_uid69_i_div27_conv_q <= cstOvf_uid68_i_div27_conv_q;
            WHEN OTHERS => resFinal_uid69_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist42_resFinal_uid69_i_div27_conv_q_4_inputreg(DELAY,498)
    redist42_resFinal_uid69_i_div27_conv_q_4_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resFinal_uid69_i_div27_conv_q, xout => redist42_resFinal_uid69_i_div27_conv_q_4_inputreg_q, clk => clock, aclr => resetn );

    -- redist42_resFinal_uid69_i_div27_conv_q_4(DELAY,434)
    redist42_resFinal_uid69_i_div27_conv_q_4 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist42_resFinal_uid69_i_div27_conv_q_4_inputreg_q, xout => redist42_resFinal_uid69_i_div27_conv_q_4_q, clk => clock, aclr => resetn );

    -- redist42_resFinal_uid69_i_div27_conv_q_4_outputreg(DELAY,499)
    redist42_resFinal_uid69_i_div27_conv_q_4_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist42_resFinal_uid69_i_div27_conv_q_4_q, xout => redist42_resFinal_uid69_i_div27_conv_q_4_outputreg_q, clk => clock, aclr => resetn );

    -- resFinalMP1_uid86_i_div27_conv(SUB,85)@34
    resFinalMP1_uid86_i_div27_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => redist42_resFinal_uid69_i_div27_conv_q_4_outputreg_q(31)) & redist42_resFinal_uid69_i_div27_conv_q_4_outputreg_q));
    resFinalMP1_uid86_i_div27_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 2 => cstSubFinal_uid85_i_div27_conv_q(1)) & cstSubFinal_uid85_i_div27_conv_q));
    resFinalMP1_uid86_i_div27_conv_o <= STD_LOGIC_VECTOR(SIGNED(resFinalMP1_uid86_i_div27_conv_a) - SIGNED(resFinalMP1_uid86_i_div27_conv_b));
    resFinalMP1_uid86_i_div27_conv_q <= resFinalMP1_uid86_i_div27_conv_o(32 downto 0);

    -- resFinalPostMux_uid87_i_div27_conv(BITSELECT,86)@34
    resFinalPostMux_uid87_i_div27_conv_in <= STD_LOGIC_VECTOR(resFinalMP1_uid86_i_div27_conv_q(31 downto 0));
    resFinalPostMux_uid87_i_div27_conv_b <= STD_LOGIC_VECTOR(resFinalPostMux_uid87_i_div27_conv_in(31 downto 0));

    -- redist41_resFinalPostMux_uid87_i_div27_conv_b_1(DELAY,433)
    redist41_resFinalPostMux_uid87_i_div27_conv_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => resFinalPostMux_uid87_i_div27_conv_b, xout => redist41_resFinalPostMux_uid87_i_div27_conv_b_1_q, clk => clock, aclr => resetn );

    -- redist43_resFinal_uid69_i_div27_conv_q_5(DELAY,435)
    redist43_resFinal_uid69_i_div27_conv_q_5 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist42_resFinal_uid69_i_div27_conv_q_4_outputreg_q, xout => redist43_resFinal_uid69_i_div27_conv_q_5_q, clk => clock, aclr => resetn );

    -- signResFinal_uid78_i_div27_conv(BITSELECT,77)@35
    signResFinal_uid78_i_div27_conv_b <= STD_LOGIC_VECTOR(redist43_resFinal_uid69_i_div27_conv_q_5_q(31 downto 31));

    -- redist62_xMSB_uid29_i_div27_conv_b_34(DELAY,454)
    redist62_xMSB_uid29_i_div27_conv_b_34 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist61_xMSB_uid29_i_div27_conv_b_32_q, xout => redist62_xMSB_uid29_i_div27_conv_b_34_q, clk => clock, aclr => resetn );

    -- redist45_signX_uid67_i_div27_conv_b_5(DELAY,437)
    redist45_signX_uid67_i_div27_conv_b_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist44_signX_uid67_i_div27_conv_b_3_q, xout => redist45_signX_uid67_i_div27_conv_b_5_q, clk => clock, aclr => resetn );

    -- OverflowCond_uid79_i_div27_conv(LOGICAL,78)@35
    OverflowCond_uid79_i_div27_conv_q <= redist45_signX_uid67_i_div27_conv_b_5_q and redist62_xMSB_uid29_i_div27_conv_b_34_q and signResFinal_uid78_i_div27_conv_b;

    -- redist66_sync_in_aunroll_x_in_c1_eni1_1_33_inputreg(DELAY,543)
    redist66_sync_in_aunroll_x_in_c1_eni1_1_33_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist65_sync_in_aunroll_x_in_c1_eni1_1_29_outputreg_q, xout => redist66_sync_in_aunroll_x_in_c1_eni1_1_33_inputreg_q, clk => clock, aclr => resetn );

    -- redist66_sync_in_aunroll_x_in_c1_eni1_1_33(DELAY,458)
    redist66_sync_in_aunroll_x_in_c1_eni1_1_33 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist66_sync_in_aunroll_x_in_c1_eni1_1_33_inputreg_q, xout => redist66_sync_in_aunroll_x_in_c1_eni1_1_33_q, clk => clock, aclr => resetn );

    -- redist66_sync_in_aunroll_x_in_c1_eni1_1_33_outputreg(DELAY,544)
    redist66_sync_in_aunroll_x_in_c1_eni1_1_33_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist66_sync_in_aunroll_x_in_c1_eni1_1_33_q, xout => redist66_sync_in_aunroll_x_in_c1_eni1_1_33_outputreg_q, clk => clock, aclr => resetn );

    -- prodResY_uid70_i_div27_conv_bs5(BITSELECT,347)@30
    prodResY_uid70_i_div27_conv_bs5_b <= redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_outputreg_q(31 downto 18);

    -- prodResY_uid70_i_div27_conv_bs4(BITSELECT,346)@30
    prodResY_uid70_i_div27_conv_bs4_in <= STD_LOGIC_VECTOR(resFinal_uid69_i_div27_conv_q(17 downto 0));
    prodResY_uid70_i_div27_conv_bs4_b <= STD_LOGIC_VECTOR(prodResY_uid70_i_div27_conv_bs4_in(17 downto 0));

    -- prodResY_uid70_i_div27_conv_bs6(BITSELECT,348)@30
    prodResY_uid70_i_div27_conv_bs6_b <= STD_LOGIC_VECTOR(resFinal_uid69_i_div27_conv_q(31 downto 18));

    -- prodResY_uid70_i_div27_conv_bs2(BITSELECT,344)@30
    prodResY_uid70_i_div27_conv_bs2_in <= redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_outputreg_q(17 downto 0);
    prodResY_uid70_i_div27_conv_bs2_b <= prodResY_uid70_i_div27_conv_bs2_in(17 downto 0);

    -- prodResY_uid70_i_div27_conv_ma3_cma(CHAINMULTADD,379)@30 + 2
    prodResY_uid70_i_div27_conv_ma3_cma_reset <= not (resetn);
    prodResY_uid70_i_div27_conv_ma3_cma_ena0 <= '1';
    prodResY_uid70_i_div27_conv_ma3_cma_ena1 <= prodResY_uid70_i_div27_conv_ma3_cma_ena0;
    prodResY_uid70_i_div27_conv_ma3_cma_l(0) <= SIGNED(RESIZE(prodResY_uid70_i_div27_conv_ma3_cma_a0(0),19));
    prodResY_uid70_i_div27_conv_ma3_cma_l(1) <= SIGNED(RESIZE(prodResY_uid70_i_div27_conv_ma3_cma_a0(1),19));
    prodResY_uid70_i_div27_conv_ma3_cma_p(0) <= prodResY_uid70_i_div27_conv_ma3_cma_l(0) * prodResY_uid70_i_div27_conv_ma3_cma_c0(0);
    prodResY_uid70_i_div27_conv_ma3_cma_p(1) <= prodResY_uid70_i_div27_conv_ma3_cma_l(1) * prodResY_uid70_i_div27_conv_ma3_cma_c0(1);
    prodResY_uid70_i_div27_conv_ma3_cma_u(0) <= RESIZE(prodResY_uid70_i_div27_conv_ma3_cma_p(0),34);
    prodResY_uid70_i_div27_conv_ma3_cma_u(1) <= RESIZE(prodResY_uid70_i_div27_conv_ma3_cma_p(1),34);
    prodResY_uid70_i_div27_conv_ma3_cma_w(0) <= prodResY_uid70_i_div27_conv_ma3_cma_u(0) + prodResY_uid70_i_div27_conv_ma3_cma_u(1);
    prodResY_uid70_i_div27_conv_ma3_cma_x(0) <= prodResY_uid70_i_div27_conv_ma3_cma_w(0);
    prodResY_uid70_i_div27_conv_ma3_cma_y(0) <= prodResY_uid70_i_div27_conv_ma3_cma_x(0);
    prodResY_uid70_i_div27_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid70_i_div27_conv_ma3_cma_a0 <= (others => (others => '0'));
            prodResY_uid70_i_div27_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid70_i_div27_conv_ma3_cma_ena0 = '1') THEN
                prodResY_uid70_i_div27_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(prodResY_uid70_i_div27_conv_bs2_b),18);
                prodResY_uid70_i_div27_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(prodResY_uid70_i_div27_conv_bs4_b),18);
                prodResY_uid70_i_div27_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(prodResY_uid70_i_div27_conv_bs6_b),14);
                prodResY_uid70_i_div27_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(prodResY_uid70_i_div27_conv_bs5_b),14);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid70_i_div27_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid70_i_div27_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid70_i_div27_conv_ma3_cma_ena1 = '1') THEN
                prodResY_uid70_i_div27_conv_ma3_cma_s(0) <= prodResY_uid70_i_div27_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid70_i_div27_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 33, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid70_i_div27_conv_ma3_cma_s(0)(32 downto 0)), xout => prodResY_uid70_i_div27_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid70_i_div27_conv_ma3_cma_q <= STD_LOGIC_VECTOR(prodResY_uid70_i_div27_conv_ma3_cma_qq(32 downto 0));

    -- redist11_prodResY_uid70_i_div27_conv_ma3_cma_q_1(DELAY,403)
    redist11_prodResY_uid70_i_div27_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid70_i_div27_conv_ma3_cma_q, xout => redist11_prodResY_uid70_i_div27_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid70_i_div27_conv_align_12(BITSHIFT,354)@33
    prodResY_uid70_i_div27_conv_align_12_qint <= redist11_prodResY_uid70_i_div27_conv_ma3_cma_q_1_q & "000000000000000000";
    prodResY_uid70_i_div27_conv_align_12_q <= prodResY_uid70_i_div27_conv_align_12_qint(50 downto 0);

    -- prodResY_uid70_i_div27_conv_bs10(BITSELECT,352)@30
    prodResY_uid70_i_div27_conv_bs10_b <= STD_LOGIC_VECTOR(redist63_i_syncbuf_n_fout_dim_sync_buffer101_conv_out_buffer_out_29_outputreg_q(31 downto 18));

    -- prodResY_uid70_i_div27_conv_im8_cma(CHAINMULTADD,373)@30 + 2
    prodResY_uid70_i_div27_conv_im8_cma_reset <= not (resetn);
    prodResY_uid70_i_div27_conv_im8_cma_ena0 <= '1';
    prodResY_uid70_i_div27_conv_im8_cma_ena1 <= prodResY_uid70_i_div27_conv_im8_cma_ena0;
    prodResY_uid70_i_div27_conv_im8_cma_p(0) <= prodResY_uid70_i_div27_conv_im8_cma_a0(0) * prodResY_uid70_i_div27_conv_im8_cma_c0(0);
    prodResY_uid70_i_div27_conv_im8_cma_u(0) <= RESIZE(prodResY_uid70_i_div27_conv_im8_cma_p(0),28);
    prodResY_uid70_i_div27_conv_im8_cma_w(0) <= prodResY_uid70_i_div27_conv_im8_cma_u(0);
    prodResY_uid70_i_div27_conv_im8_cma_x(0) <= prodResY_uid70_i_div27_conv_im8_cma_w(0);
    prodResY_uid70_i_div27_conv_im8_cma_y(0) <= prodResY_uid70_i_div27_conv_im8_cma_x(0);
    prodResY_uid70_i_div27_conv_im8_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid70_i_div27_conv_im8_cma_a0 <= (others => (others => '0'));
            prodResY_uid70_i_div27_conv_im8_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid70_i_div27_conv_im8_cma_ena0 = '1') THEN
                prodResY_uid70_i_div27_conv_im8_cma_a0(0) <= RESIZE(SIGNED(prodResY_uid70_i_div27_conv_bs6_b),14);
                prodResY_uid70_i_div27_conv_im8_cma_c0(0) <= RESIZE(SIGNED(prodResY_uid70_i_div27_conv_bs10_b),14);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid70_i_div27_conv_im8_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid70_i_div27_conv_im8_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid70_i_div27_conv_im8_cma_ena1 = '1') THEN
                prodResY_uid70_i_div27_conv_im8_cma_s(0) <= prodResY_uid70_i_div27_conv_im8_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid70_i_div27_conv_im8_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid70_i_div27_conv_im8_cma_s(0)(27 downto 0)), xout => prodResY_uid70_i_div27_conv_im8_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid70_i_div27_conv_im8_cma_q <= STD_LOGIC_VECTOR(prodResY_uid70_i_div27_conv_im8_cma_qq(27 downto 0));

    -- redist17_prodResY_uid70_i_div27_conv_im8_cma_q_1(DELAY,409)
    redist17_prodResY_uid70_i_div27_conv_im8_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid70_i_div27_conv_im8_cma_q, xout => redist17_prodResY_uid70_i_div27_conv_im8_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid70_i_div27_conv_bs1(BITSELECT,343)@30
    prodResY_uid70_i_div27_conv_bs1_in <= resFinal_uid69_i_div27_conv_q(17 downto 0);
    prodResY_uid70_i_div27_conv_bs1_b <= prodResY_uid70_i_div27_conv_bs1_in(17 downto 0);

    -- prodResY_uid70_i_div27_conv_im0_cma(CHAINMULTADD,372)@30 + 2
    prodResY_uid70_i_div27_conv_im0_cma_reset <= not (resetn);
    prodResY_uid70_i_div27_conv_im0_cma_ena0 <= '1';
    prodResY_uid70_i_div27_conv_im0_cma_ena1 <= prodResY_uid70_i_div27_conv_im0_cma_ena0;
    prodResY_uid70_i_div27_conv_im0_cma_p(0) <= prodResY_uid70_i_div27_conv_im0_cma_a0(0) * prodResY_uid70_i_div27_conv_im0_cma_c0(0);
    prodResY_uid70_i_div27_conv_im0_cma_u(0) <= RESIZE(prodResY_uid70_i_div27_conv_im0_cma_p(0),36);
    prodResY_uid70_i_div27_conv_im0_cma_w(0) <= prodResY_uid70_i_div27_conv_im0_cma_u(0);
    prodResY_uid70_i_div27_conv_im0_cma_x(0) <= prodResY_uid70_i_div27_conv_im0_cma_w(0);
    prodResY_uid70_i_div27_conv_im0_cma_y(0) <= prodResY_uid70_i_div27_conv_im0_cma_x(0);
    prodResY_uid70_i_div27_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid70_i_div27_conv_im0_cma_a0 <= (others => (others => '0'));
            prodResY_uid70_i_div27_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid70_i_div27_conv_im0_cma_ena0 = '1') THEN
                prodResY_uid70_i_div27_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodResY_uid70_i_div27_conv_bs1_b),18);
                prodResY_uid70_i_div27_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(prodResY_uid70_i_div27_conv_bs2_b),18);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid70_i_div27_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid70_i_div27_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (prodResY_uid70_i_div27_conv_im0_cma_ena1 = '1') THEN
                prodResY_uid70_i_div27_conv_im0_cma_s(0) <= prodResY_uid70_i_div27_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodResY_uid70_i_div27_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodResY_uid70_i_div27_conv_im0_cma_s(0)(35 downto 0)), xout => prodResY_uid70_i_div27_conv_im0_cma_qq, clk => clock, aclr => resetn );
    prodResY_uid70_i_div27_conv_im0_cma_q <= STD_LOGIC_VECTOR(prodResY_uid70_i_div27_conv_im0_cma_qq(35 downto 0));

    -- redist18_prodResY_uid70_i_div27_conv_im0_cma_q_1(DELAY,410)
    redist18_prodResY_uid70_i_div27_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodResY_uid70_i_div27_conv_im0_cma_q, xout => redist18_prodResY_uid70_i_div27_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- prodResY_uid70_i_div27_conv_join_11(BITJOIN,353)@33
    prodResY_uid70_i_div27_conv_join_11_q <= redist17_prodResY_uid70_i_div27_conv_im8_cma_q_1_q & redist18_prodResY_uid70_i_div27_conv_im0_cma_q_1_q;

    -- prodResY_uid70_i_div27_conv_result_add_0_0(ADD,356)@33 + 1
    prodResY_uid70_i_div27_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 64 => prodResY_uid70_i_div27_conv_join_11_q(63)) & prodResY_uid70_i_div27_conv_join_11_q));
    prodResY_uid70_i_div27_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 51 => prodResY_uid70_i_div27_conv_align_12_q(50)) & prodResY_uid70_i_div27_conv_align_12_q));
    prodResY_uid70_i_div27_conv_result_add_0_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodResY_uid70_i_div27_conv_result_add_0_0_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prodResY_uid70_i_div27_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodResY_uid70_i_div27_conv_result_add_0_0_a) + SIGNED(prodResY_uid70_i_div27_conv_result_add_0_0_b));
        END IF;
    END PROCESS;
    prodResY_uid70_i_div27_conv_result_add_0_0_q <= prodResY_uid70_i_div27_conv_result_add_0_0_o(64 downto 0);

    -- prod_qy_LT_x_uid72_i_div27_conv(COMPARE,71)@34 + 1
    prod_qy_LT_x_uid72_i_div27_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 65 => prodResY_uid70_i_div27_conv_result_add_0_0_q(64)) & prodResY_uid70_i_div27_conv_result_add_0_0_q));
    prod_qy_LT_x_uid72_i_div27_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 32 => redist66_sync_in_aunroll_x_in_c1_eni1_1_33_outputreg_q(31)) & redist66_sync_in_aunroll_x_in_c1_eni1_1_33_outputreg_q));
    prod_qy_LT_x_uid72_i_div27_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prod_qy_LT_x_uid72_i_div27_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prod_qy_LT_x_uid72_i_div27_conv_o <= STD_LOGIC_VECTOR(SIGNED(prod_qy_LT_x_uid72_i_div27_conv_a) - SIGNED(prod_qy_LT_x_uid72_i_div27_conv_b));
        END IF;
    END PROCESS;
    prod_qy_LT_x_uid72_i_div27_conv_c(0) <= prod_qy_LT_x_uid72_i_div27_conv_o(65);

    -- CondNegX_uid80_i_div27_conv(LOGICAL,79)@35
    CondNegX_uid80_i_div27_conv_q <= prod_qy_LT_x_uid72_i_div27_conv_c and redist45_signX_uid67_i_div27_conv_b_5_q;

    -- invSignX_uid81_i_div27_conv(LOGICAL,80)@35
    invSignX_uid81_i_div27_conv_q <= not (redist45_signX_uid67_i_div27_conv_b_5_q);

    -- prod_qy_GT_x_uid71_i_div27_conv(COMPARE,70)@34 + 1
    prod_qy_GT_x_uid71_i_div27_conv_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 32 => redist66_sync_in_aunroll_x_in_c1_eni1_1_33_outputreg_q(31)) & redist66_sync_in_aunroll_x_in_c1_eni1_1_33_outputreg_q));
    prod_qy_GT_x_uid71_i_div27_conv_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 65 => prodResY_uid70_i_div27_conv_result_add_0_0_q(64)) & prodResY_uid70_i_div27_conv_result_add_0_0_q));
    prod_qy_GT_x_uid71_i_div27_conv_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prod_qy_GT_x_uid71_i_div27_conv_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prod_qy_GT_x_uid71_i_div27_conv_o <= STD_LOGIC_VECTOR(SIGNED(prod_qy_GT_x_uid71_i_div27_conv_a) - SIGNED(prod_qy_GT_x_uid71_i_div27_conv_b));
        END IF;
    END PROCESS;
    prod_qy_GT_x_uid71_i_div27_conv_c(0) <= prod_qy_GT_x_uid71_i_div27_conv_o(65);

    -- CondPosX_uid82_i_div27_conv(LOGICAL,81)@35
    CondPosX_uid82_i_div27_conv_q <= prod_qy_GT_x_uid71_i_div27_conv_c and invSignX_uid81_i_div27_conv_q;

    -- postMuxSelect_uid83_i_div27_conv(LOGICAL,82)@35
    postMuxSelect_uid83_i_div27_conv_q <= CondPosX_uid82_i_div27_conv_q or CondNegX_uid80_i_div27_conv_q or OverflowCond_uid79_i_div27_conv_q;

    -- resFinalIntDiv_uid88_i_div27_conv(MUX,87)@35
    resFinalIntDiv_uid88_i_div27_conv_s <= postMuxSelect_uid83_i_div27_conv_q;
    resFinalIntDiv_uid88_i_div27_conv_combproc: PROCESS (resFinalIntDiv_uid88_i_div27_conv_s, redist43_resFinal_uid69_i_div27_conv_q_5_q, redist41_resFinalPostMux_uid87_i_div27_conv_b_1_q)
    BEGIN
        CASE (resFinalIntDiv_uid88_i_div27_conv_s) IS
            WHEN "0" => resFinalIntDiv_uid88_i_div27_conv_q <= redist43_resFinal_uid69_i_div27_conv_q_5_q;
            WHEN "1" => resFinalIntDiv_uid88_i_div27_conv_q <= redist41_resFinalPostMux_uid87_i_div27_conv_b_1_q;
            WHEN OTHERS => resFinalIntDiv_uid88_i_div27_conv_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul28_conv_bs4(BITSELECT,208)@35
    i_mul28_conv_bs4_in <= STD_LOGIC_VECTOR(resFinalIntDiv_uid88_i_div27_conv_q(17 downto 0));
    i_mul28_conv_bs4_b <= STD_LOGIC_VECTOR(i_mul28_conv_bs4_in(17 downto 0));

    -- i_mul28_conv_bjA5(BITJOIN,209)@35
    i_mul28_conv_bjA5_q <= GND_q & i_mul28_conv_bs4_b;

    -- i_syncbuf_n_fout_dim_sync_buffer100_conv(BLACKBOX,22)@0
    -- in in_i_dependence@35
    -- in in_valid_in@35
    -- out out_buffer_out@35
    -- out out_valid_out@35
    thei_syncbuf_n_fout_dim_sync_buffer100_conv : i_syncbuf_n_fout_dim_sync_buffer100_conv245
    PORT MAP (
        in_buffer_in => in_N_Fout_dim,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist68_sync_in_aunroll_x_in_i_valid_34_q,
        out_buffer_out => i_syncbuf_n_fout_dim_sync_buffer100_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul30_conv_bs2_merged_bit_select(BITSELECT,380)@35
    i_mul30_conv_bs2_merged_bit_select_b <= i_syncbuf_n_fout_dim_sync_buffer100_conv_out_buffer_out(17 downto 0);
    i_mul30_conv_bs2_merged_bit_select_c <= i_syncbuf_n_fout_dim_sync_buffer100_conv_out_buffer_out(31 downto 18);

    -- i_mul30_conv_bjB9(BITJOIN,230)@35
    i_mul30_conv_bjB9_q <= GND_q & i_mul30_conv_bs2_merged_bit_select_b;

    -- i_mul28_conv_bs7(BITSELECT,211)@35
    i_mul28_conv_bs7_b <= STD_LOGIC_VECTOR(resFinalIntDiv_uid88_i_div27_conv_q(31 downto 18));

    -- i_mul30_conv_ma3_cma(CHAINMULTADD,376)@35 + 2
    i_mul30_conv_ma3_cma_reset <= not (resetn);
    i_mul30_conv_ma3_cma_ena0 <= '1';
    i_mul30_conv_ma3_cma_ena1 <= i_mul30_conv_ma3_cma_ena0;
    i_mul30_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul30_conv_ma3_cma_a0(0),15));
    i_mul30_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul30_conv_ma3_cma_a0(1),15));
    i_mul30_conv_ma3_cma_p(0) <= i_mul30_conv_ma3_cma_l(0) * i_mul30_conv_ma3_cma_c0(0);
    i_mul30_conv_ma3_cma_p(1) <= i_mul30_conv_ma3_cma_l(1) * i_mul30_conv_ma3_cma_c0(1);
    i_mul30_conv_ma3_cma_u(0) <= RESIZE(i_mul30_conv_ma3_cma_p(0),35);
    i_mul30_conv_ma3_cma_u(1) <= RESIZE(i_mul30_conv_ma3_cma_p(1),35);
    i_mul30_conv_ma3_cma_w(0) <= i_mul30_conv_ma3_cma_u(0) + i_mul30_conv_ma3_cma_u(1);
    i_mul30_conv_ma3_cma_x(0) <= i_mul30_conv_ma3_cma_w(0);
    i_mul30_conv_ma3_cma_y(0) <= i_mul30_conv_ma3_cma_x(0);
    i_mul30_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul30_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul30_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul30_conv_ma3_cma_ena0 = '1') THEN
                i_mul30_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul28_conv_bs7_b),14);
                i_mul30_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul30_conv_bs2_merged_bit_select_c),14);
                i_mul30_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul30_conv_bjB9_q),19);
                i_mul30_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul28_conv_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul30_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul30_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul30_conv_ma3_cma_ena1 = '1') THEN
                i_mul30_conv_ma3_cma_s(0) <= i_mul30_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul30_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul30_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul30_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul30_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul30_conv_ma3_cma_qq(33 downto 0));

    -- redist14_i_mul30_conv_ma3_cma_q_1(DELAY,406)
    redist14_i_mul30_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul30_conv_ma3_cma_q, xout => redist14_i_mul30_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul30_conv_align_14(BITSHIFT,235)@38
    i_mul30_conv_align_14_qint <= redist14_i_mul30_conv_ma3_cma_q_1_q & "000000000000000000";
    i_mul30_conv_align_14_q <= i_mul30_conv_align_14_qint(51 downto 0);

    -- i_mul28_conv_bs11(BITSELECT,215)@35
    i_mul28_conv_bs11_b <= resFinalIntDiv_uid88_i_div27_conv_q(31 downto 18);

    -- i_mul30_conv_im10_cma(CHAINMULTADD,367)@35 + 2
    i_mul30_conv_im10_cma_reset <= not (resetn);
    i_mul30_conv_im10_cma_ena0 <= '1';
    i_mul30_conv_im10_cma_ena1 <= i_mul30_conv_im10_cma_ena0;
    i_mul30_conv_im10_cma_p(0) <= i_mul30_conv_im10_cma_a0(0) * i_mul30_conv_im10_cma_c0(0);
    i_mul30_conv_im10_cma_u(0) <= RESIZE(i_mul30_conv_im10_cma_p(0),28);
    i_mul30_conv_im10_cma_w(0) <= i_mul30_conv_im10_cma_u(0);
    i_mul30_conv_im10_cma_x(0) <= i_mul30_conv_im10_cma_w(0);
    i_mul30_conv_im10_cma_y(0) <= i_mul30_conv_im10_cma_x(0);
    i_mul30_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul30_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul30_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul30_conv_im10_cma_ena0 = '1') THEN
                i_mul30_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul28_conv_bs11_b),14);
                i_mul30_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul30_conv_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul30_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul30_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul30_conv_im10_cma_ena1 = '1') THEN
                i_mul30_conv_im10_cma_s(0) <= i_mul30_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul30_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul30_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul30_conv_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul30_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul30_conv_im10_cma_qq(27 downto 0));

    -- redist23_i_mul30_conv_im10_cma_q_1(DELAY,415)
    redist23_i_mul30_conv_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul30_conv_im10_cma_q, xout => redist23_i_mul30_conv_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul28_conv_bs1(BITSELECT,205)@35
    i_mul28_conv_bs1_in <= resFinalIntDiv_uid88_i_div27_conv_q(17 downto 0);
    i_mul28_conv_bs1_b <= i_mul28_conv_bs1_in(17 downto 0);

    -- i_mul30_conv_im0_cma(CHAINMULTADD,366)@35 + 2
    i_mul30_conv_im0_cma_reset <= not (resetn);
    i_mul30_conv_im0_cma_ena0 <= '1';
    i_mul30_conv_im0_cma_ena1 <= i_mul30_conv_im0_cma_ena0;
    i_mul30_conv_im0_cma_p(0) <= i_mul30_conv_im0_cma_a0(0) * i_mul30_conv_im0_cma_c0(0);
    i_mul30_conv_im0_cma_u(0) <= RESIZE(i_mul30_conv_im0_cma_p(0),36);
    i_mul30_conv_im0_cma_w(0) <= i_mul30_conv_im0_cma_u(0);
    i_mul30_conv_im0_cma_x(0) <= i_mul30_conv_im0_cma_w(0);
    i_mul30_conv_im0_cma_y(0) <= i_mul30_conv_im0_cma_x(0);
    i_mul30_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul30_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul30_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul30_conv_im0_cma_ena0 = '1') THEN
                i_mul30_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul28_conv_bs1_b),18);
                i_mul30_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul30_conv_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul30_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul30_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul30_conv_im0_cma_ena1 = '1') THEN
                i_mul30_conv_im0_cma_s(0) <= i_mul30_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul30_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul30_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul30_conv_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul30_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul30_conv_im0_cma_qq(35 downto 0));

    -- redist24_i_mul30_conv_im0_cma_q_1(DELAY,416)
    redist24_i_mul30_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul30_conv_im0_cma_q, xout => redist24_i_mul30_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul30_conv_join_13(BITJOIN,234)@38
    i_mul30_conv_join_13_q <= redist23_i_mul30_conv_im10_cma_q_1_q & redist24_i_mul30_conv_im0_cma_q_1_q;

    -- i_mul30_conv_result_add_0_0(ADD,237)@38
    i_mul30_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul30_conv_join_13_q));
    i_mul30_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul30_conv_align_14_q(51)) & i_mul30_conv_align_14_q));
    i_mul30_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul30_conv_result_add_0_0_a) + SIGNED(i_mul30_conv_result_add_0_0_b));
    i_mul30_conv_result_add_0_0_q <= i_mul30_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul30_conv_rnd_sel(BITSELECT,201)@38
    bgTrunc_i_mul30_conv_rnd_sel_in <= i_mul30_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul30_conv_rnd_sel_b <= bgTrunc_i_mul30_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul30_conv_sel_x(BITSELECT,3)@38
    bgTrunc_i_mul30_conv_sel_x_b <= bgTrunc_i_mul30_conv_rnd_sel_b(31 downto 0);

    -- redist72_bgTrunc_i_mul30_conv_sel_x_b_1(DELAY,464)
    redist72_bgTrunc_i_mul30_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul30_conv_sel_x_b, xout => redist72_bgTrunc_i_mul30_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- redist67_sync_in_aunroll_x_in_c1_eni1_1_38_notEnable(LOGICAL,551)
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist67_sync_in_aunroll_x_in_c1_eni1_1_38_nor(LOGICAL,552)
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_nor_q <= not (redist67_sync_in_aunroll_x_in_c1_eni1_1_38_notEnable_q or redist67_sync_in_aunroll_x_in_c1_eni1_1_38_sticky_ena_q);

    -- redist67_sync_in_aunroll_x_in_c1_eni1_1_38_cmpReg(REG,550)
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist67_sync_in_aunroll_x_in_c1_eni1_1_38_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist67_sync_in_aunroll_x_in_c1_eni1_1_38_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist67_sync_in_aunroll_x_in_c1_eni1_1_38_sticky_ena(REG,553)
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist67_sync_in_aunroll_x_in_c1_eni1_1_38_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist67_sync_in_aunroll_x_in_c1_eni1_1_38_nor_q = "1") THEN
                redist67_sync_in_aunroll_x_in_c1_eni1_1_38_sticky_ena_q <= STD_LOGIC_VECTOR(redist67_sync_in_aunroll_x_in_c1_eni1_1_38_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist67_sync_in_aunroll_x_in_c1_eni1_1_38_enaAnd(LOGICAL,554)
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_enaAnd_q <= redist67_sync_in_aunroll_x_in_c1_eni1_1_38_sticky_ena_q and VCC_q;

    -- redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt(COUNTER,548)
    -- low=0, high=1, step=1, init=0
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_i <= redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_i, 1)));

    -- redist67_sync_in_aunroll_x_in_c1_eni1_1_38_inputreg(DELAY,545)
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist66_sync_in_aunroll_x_in_c1_eni1_1_33_outputreg_q, xout => redist67_sync_in_aunroll_x_in_c1_eni1_1_38_inputreg_q, clk => clock, aclr => resetn );

    -- redist67_sync_in_aunroll_x_in_c1_eni1_1_38_wraddr(REG,549)
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist67_sync_in_aunroll_x_in_c1_eni1_1_38_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist67_sync_in_aunroll_x_in_c1_eni1_1_38_wraddr_q <= STD_LOGIC_VECTOR(redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem(DUALMEM,547)
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_ia <= STD_LOGIC_VECTOR(redist67_sync_in_aunroll_x_in_c1_eni1_1_38_inputreg_q);
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_aa <= redist67_sync_in_aunroll_x_in_c1_eni1_1_38_wraddr_q;
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_ab <= redist67_sync_in_aunroll_x_in_c1_eni1_1_38_rdcnt_q;
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_reset0 <= not (resetn);
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_dmem : altera_syncram
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
        clocken1 => redist67_sync_in_aunroll_x_in_c1_eni1_1_38_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_reset0,
        clock1 => clock,
        address_a => redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_aa,
        data_a => redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_ab,
        q_b => redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_iq
    );
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_q <= redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_iq(31 downto 0);

    -- redist67_sync_in_aunroll_x_in_c1_eni1_1_38_outputreg(DELAY,546)
    redist67_sync_in_aunroll_x_in_c1_eni1_1_38_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist67_sync_in_aunroll_x_in_c1_eni1_1_38_mem_q, xout => redist67_sync_in_aunroll_x_in_c1_eni1_1_38_outputreg_q, clk => clock, aclr => resetn );

    -- i_sub31_conv(SUB,21)@39
    i_sub31_conv_a <= STD_LOGIC_VECTOR("0" & redist67_sync_in_aunroll_x_in_c1_eni1_1_38_outputreg_q);
    i_sub31_conv_b <= STD_LOGIC_VECTOR("0" & redist72_bgTrunc_i_mul30_conv_sel_x_b_1_q);
    i_sub31_conv_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub31_conv_a) - UNSIGNED(i_sub31_conv_b));
    i_sub31_conv_q <= i_sub31_conv_o(32 downto 0);

    -- bgTrunc_i_sub31_conv_sel_x(BITSELECT,5)@39
    bgTrunc_i_sub31_conv_sel_x_b <= STD_LOGIC_VECTOR(i_sub31_conv_q(31 downto 0));

    -- redist71_bgTrunc_i_sub31_conv_sel_x_b_1(DELAY,463)
    redist71_bgTrunc_i_sub31_conv_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub31_conv_sel_x_b, xout => redist71_bgTrunc_i_sub31_conv_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul32_conv_bs4(BITSELECT,242)@40
    i_mul32_conv_bs4_in <= STD_LOGIC_VECTOR(redist71_bgTrunc_i_sub31_conv_sel_x_b_1_q(17 downto 0));
    i_mul32_conv_bs4_b <= STD_LOGIC_VECTOR(i_mul32_conv_bs4_in(17 downto 0));

    -- i_mul32_conv_bjA5(BITJOIN,243)@40
    i_mul32_conv_bjA5_q <= GND_q & i_mul32_conv_bs4_b;

    -- i_syncbuf_s_conv_sync_buffer_conv(BLACKBOX,25)@0
    -- in in_i_dependence@40
    -- in in_valid_in@40
    -- out out_buffer_out@40
    -- out out_valid_out@40
    thei_syncbuf_s_conv_sync_buffer_conv : i_syncbuf_s_conv_sync_buffer_conv247
    PORT MAP (
        in_buffer_in => in_S_conv,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist69_sync_in_aunroll_x_in_i_valid_39_q,
        out_buffer_out => i_syncbuf_s_conv_sync_buffer_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul32_conv_bs2_merged_bit_select(BITSELECT,382)@40
    i_mul32_conv_bs2_merged_bit_select_b <= i_syncbuf_s_conv_sync_buffer_conv_out_buffer_out(17 downto 0);
    i_mul32_conv_bs2_merged_bit_select_c <= i_syncbuf_s_conv_sync_buffer_conv_out_buffer_out(31 downto 18);

    -- i_mul32_conv_bjB9(BITJOIN,247)@40
    i_mul32_conv_bjB9_q <= GND_q & i_mul32_conv_bs2_merged_bit_select_b;

    -- i_mul32_conv_bs7(BITSELECT,245)@40
    i_mul32_conv_bs7_b <= STD_LOGIC_VECTOR(redist71_bgTrunc_i_sub31_conv_sel_x_b_1_q(31 downto 18));

    -- i_mul32_conv_ma3_cma(CHAINMULTADD,377)@40 + 2
    i_mul32_conv_ma3_cma_reset <= not (resetn);
    i_mul32_conv_ma3_cma_ena0 <= '1';
    i_mul32_conv_ma3_cma_ena1 <= i_mul32_conv_ma3_cma_ena0;
    i_mul32_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul32_conv_ma3_cma_a0(0),15));
    i_mul32_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul32_conv_ma3_cma_a0(1),15));
    i_mul32_conv_ma3_cma_p(0) <= i_mul32_conv_ma3_cma_l(0) * i_mul32_conv_ma3_cma_c0(0);
    i_mul32_conv_ma3_cma_p(1) <= i_mul32_conv_ma3_cma_l(1) * i_mul32_conv_ma3_cma_c0(1);
    i_mul32_conv_ma3_cma_u(0) <= RESIZE(i_mul32_conv_ma3_cma_p(0),35);
    i_mul32_conv_ma3_cma_u(1) <= RESIZE(i_mul32_conv_ma3_cma_p(1),35);
    i_mul32_conv_ma3_cma_w(0) <= i_mul32_conv_ma3_cma_u(0) + i_mul32_conv_ma3_cma_u(1);
    i_mul32_conv_ma3_cma_x(0) <= i_mul32_conv_ma3_cma_w(0);
    i_mul32_conv_ma3_cma_y(0) <= i_mul32_conv_ma3_cma_x(0);
    i_mul32_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul32_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul32_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul32_conv_ma3_cma_ena0 = '1') THEN
                i_mul32_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul32_conv_bs7_b),14);
                i_mul32_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul32_conv_bs2_merged_bit_select_c),14);
                i_mul32_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul32_conv_bjB9_q),19);
                i_mul32_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul32_conv_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul32_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul32_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul32_conv_ma3_cma_ena1 = '1') THEN
                i_mul32_conv_ma3_cma_s(0) <= i_mul32_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul32_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul32_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul32_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul32_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul32_conv_ma3_cma_qq(33 downto 0));

    -- redist13_i_mul32_conv_ma3_cma_q_1(DELAY,405)
    redist13_i_mul32_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul32_conv_ma3_cma_q, xout => redist13_i_mul32_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul32_conv_align_14(BITSHIFT,252)@43
    i_mul32_conv_align_14_qint <= redist13_i_mul32_conv_ma3_cma_q_1_q & "000000000000000000";
    i_mul32_conv_align_14_q <= i_mul32_conv_align_14_qint(51 downto 0);

    -- i_mul32_conv_bs11(BITSELECT,249)@40
    i_mul32_conv_bs11_b <= redist71_bgTrunc_i_sub31_conv_sel_x_b_1_q(31 downto 18);

    -- i_mul32_conv_im10_cma(CHAINMULTADD,369)@40 + 2
    i_mul32_conv_im10_cma_reset <= not (resetn);
    i_mul32_conv_im10_cma_ena0 <= '1';
    i_mul32_conv_im10_cma_ena1 <= i_mul32_conv_im10_cma_ena0;
    i_mul32_conv_im10_cma_p(0) <= i_mul32_conv_im10_cma_a0(0) * i_mul32_conv_im10_cma_c0(0);
    i_mul32_conv_im10_cma_u(0) <= RESIZE(i_mul32_conv_im10_cma_p(0),28);
    i_mul32_conv_im10_cma_w(0) <= i_mul32_conv_im10_cma_u(0);
    i_mul32_conv_im10_cma_x(0) <= i_mul32_conv_im10_cma_w(0);
    i_mul32_conv_im10_cma_y(0) <= i_mul32_conv_im10_cma_x(0);
    i_mul32_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul32_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul32_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul32_conv_im10_cma_ena0 = '1') THEN
                i_mul32_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul32_conv_bs11_b),14);
                i_mul32_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul32_conv_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul32_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul32_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul32_conv_im10_cma_ena1 = '1') THEN
                i_mul32_conv_im10_cma_s(0) <= i_mul32_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul32_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul32_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul32_conv_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul32_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul32_conv_im10_cma_qq(27 downto 0));

    -- redist21_i_mul32_conv_im10_cma_q_1(DELAY,413)
    redist21_i_mul32_conv_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul32_conv_im10_cma_q, xout => redist21_i_mul32_conv_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul32_conv_bs1(BITSELECT,239)@40
    i_mul32_conv_bs1_in <= redist71_bgTrunc_i_sub31_conv_sel_x_b_1_q(17 downto 0);
    i_mul32_conv_bs1_b <= i_mul32_conv_bs1_in(17 downto 0);

    -- i_mul32_conv_im0_cma(CHAINMULTADD,368)@40 + 2
    i_mul32_conv_im0_cma_reset <= not (resetn);
    i_mul32_conv_im0_cma_ena0 <= '1';
    i_mul32_conv_im0_cma_ena1 <= i_mul32_conv_im0_cma_ena0;
    i_mul32_conv_im0_cma_p(0) <= i_mul32_conv_im0_cma_a0(0) * i_mul32_conv_im0_cma_c0(0);
    i_mul32_conv_im0_cma_u(0) <= RESIZE(i_mul32_conv_im0_cma_p(0),36);
    i_mul32_conv_im0_cma_w(0) <= i_mul32_conv_im0_cma_u(0);
    i_mul32_conv_im0_cma_x(0) <= i_mul32_conv_im0_cma_w(0);
    i_mul32_conv_im0_cma_y(0) <= i_mul32_conv_im0_cma_x(0);
    i_mul32_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul32_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul32_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul32_conv_im0_cma_ena0 = '1') THEN
                i_mul32_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul32_conv_bs1_b),18);
                i_mul32_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul32_conv_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul32_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul32_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul32_conv_im0_cma_ena1 = '1') THEN
                i_mul32_conv_im0_cma_s(0) <= i_mul32_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul32_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul32_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul32_conv_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul32_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul32_conv_im0_cma_qq(35 downto 0));

    -- redist22_i_mul32_conv_im0_cma_q_1(DELAY,414)
    redist22_i_mul32_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul32_conv_im0_cma_q, xout => redist22_i_mul32_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul32_conv_join_13(BITJOIN,251)@43
    i_mul32_conv_join_13_q <= redist21_i_mul32_conv_im10_cma_q_1_q & redist22_i_mul32_conv_im0_cma_q_1_q;

    -- i_mul32_conv_result_add_0_0(ADD,254)@43
    i_mul32_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul32_conv_join_13_q));
    i_mul32_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul32_conv_align_14_q(51)) & i_mul32_conv_align_14_q));
    i_mul32_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul32_conv_result_add_0_0_a) + SIGNED(i_mul32_conv_result_add_0_0_b));
    i_mul32_conv_result_add_0_0_q <= i_mul32_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul32_conv_rnd_sel(BITSELECT,202)@43
    bgTrunc_i_mul32_conv_rnd_sel_in <= i_mul32_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul32_conv_rnd_sel_b <= bgTrunc_i_mul32_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul32_conv_sel_x(BITSELECT,4)@43
    bgTrunc_i_mul32_conv_sel_x_b <= bgTrunc_i_mul32_conv_rnd_sel_b(31 downto 0);

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_notEnable(LOGICAL,562)
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_nor(LOGICAL,563)
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_nor_q <= not (redist73_bgTrunc_i_mul28_conv_sel_x_b_5_notEnable_q or redist73_bgTrunc_i_mul28_conv_sel_x_b_5_sticky_ena_q);

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_last(CONSTANT,559)
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_last_q <= "01";

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_cmp(LOGICAL,560)
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_cmp_q <= "1" WHEN redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_last_q = redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_q ELSE "0";

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_cmpReg(REG,561)
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist73_bgTrunc_i_mul28_conv_sel_x_b_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist73_bgTrunc_i_mul28_conv_sel_x_b_5_cmpReg_q <= STD_LOGIC_VECTOR(redist73_bgTrunc_i_mul28_conv_sel_x_b_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_sticky_ena(REG,564)
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist73_bgTrunc_i_mul28_conv_sel_x_b_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist73_bgTrunc_i_mul28_conv_sel_x_b_5_nor_q = "1") THEN
                redist73_bgTrunc_i_mul28_conv_sel_x_b_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist73_bgTrunc_i_mul28_conv_sel_x_b_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_enaAnd(LOGICAL,565)
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_enaAnd_q <= redist73_bgTrunc_i_mul28_conv_sel_x_b_5_sticky_ena_q and VCC_q;

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt(COUNTER,557)
    -- low=0, high=2, step=1, init=0
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_eq <= '1';
            ELSE
                redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_eq <= '0';
            END IF;
            IF (redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_eq = '1') THEN
                redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_i <= redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_i + 2;
            ELSE
                redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_i <= redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_i, 2)));

    -- i_syncbuf_s_conv_sync_buffer96_conv(BLACKBOX,24)@0
    -- in in_i_dependence@35
    -- in in_valid_in@35
    -- out out_buffer_out@35
    -- out out_valid_out@35
    thei_syncbuf_s_conv_sync_buffer96_conv : i_syncbuf_s_conv_sync_buffer96_conv243
    PORT MAP (
        in_buffer_in => in_S_conv,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist68_sync_in_aunroll_x_in_i_valid_34_q,
        out_buffer_out => i_syncbuf_s_conv_sync_buffer96_conv_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul28_conv_bs2_merged_bit_select(BITSELECT,381)@35
    i_mul28_conv_bs2_merged_bit_select_b <= i_syncbuf_s_conv_sync_buffer96_conv_out_buffer_out(17 downto 0);
    i_mul28_conv_bs2_merged_bit_select_c <= i_syncbuf_s_conv_sync_buffer96_conv_out_buffer_out(31 downto 18);

    -- i_mul28_conv_bjB9(BITJOIN,213)@35
    i_mul28_conv_bjB9_q <= GND_q & i_mul28_conv_bs2_merged_bit_select_b;

    -- i_mul28_conv_ma3_cma(CHAINMULTADD,375)@35 + 2
    i_mul28_conv_ma3_cma_reset <= not (resetn);
    i_mul28_conv_ma3_cma_ena0 <= '1';
    i_mul28_conv_ma3_cma_ena1 <= i_mul28_conv_ma3_cma_ena0;
    i_mul28_conv_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul28_conv_ma3_cma_a0(0),15));
    i_mul28_conv_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul28_conv_ma3_cma_a0(1),15));
    i_mul28_conv_ma3_cma_p(0) <= i_mul28_conv_ma3_cma_l(0) * i_mul28_conv_ma3_cma_c0(0);
    i_mul28_conv_ma3_cma_p(1) <= i_mul28_conv_ma3_cma_l(1) * i_mul28_conv_ma3_cma_c0(1);
    i_mul28_conv_ma3_cma_u(0) <= RESIZE(i_mul28_conv_ma3_cma_p(0),35);
    i_mul28_conv_ma3_cma_u(1) <= RESIZE(i_mul28_conv_ma3_cma_p(1),35);
    i_mul28_conv_ma3_cma_w(0) <= i_mul28_conv_ma3_cma_u(0) + i_mul28_conv_ma3_cma_u(1);
    i_mul28_conv_ma3_cma_x(0) <= i_mul28_conv_ma3_cma_w(0);
    i_mul28_conv_ma3_cma_y(0) <= i_mul28_conv_ma3_cma_x(0);
    i_mul28_conv_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul28_conv_ma3_cma_a0 <= (others => (others => '0'));
            i_mul28_conv_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul28_conv_ma3_cma_ena0 = '1') THEN
                i_mul28_conv_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul28_conv_bs7_b),14);
                i_mul28_conv_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul28_conv_bs2_merged_bit_select_c),14);
                i_mul28_conv_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul28_conv_bjB9_q),19);
                i_mul28_conv_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul28_conv_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul28_conv_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul28_conv_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul28_conv_ma3_cma_ena1 = '1') THEN
                i_mul28_conv_ma3_cma_s(0) <= i_mul28_conv_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul28_conv_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul28_conv_ma3_cma_s(0)(33 downto 0)), xout => i_mul28_conv_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul28_conv_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul28_conv_ma3_cma_qq(33 downto 0));

    -- redist15_i_mul28_conv_ma3_cma_q_1(DELAY,407)
    redist15_i_mul28_conv_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul28_conv_ma3_cma_q, xout => redist15_i_mul28_conv_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul28_conv_align_14(BITSHIFT,218)@38
    i_mul28_conv_align_14_qint <= redist15_i_mul28_conv_ma3_cma_q_1_q & "000000000000000000";
    i_mul28_conv_align_14_q <= i_mul28_conv_align_14_qint(51 downto 0);

    -- i_mul28_conv_im10_cma(CHAINMULTADD,365)@35 + 2
    i_mul28_conv_im10_cma_reset <= not (resetn);
    i_mul28_conv_im10_cma_ena0 <= '1';
    i_mul28_conv_im10_cma_ena1 <= i_mul28_conv_im10_cma_ena0;
    i_mul28_conv_im10_cma_p(0) <= i_mul28_conv_im10_cma_a0(0) * i_mul28_conv_im10_cma_c0(0);
    i_mul28_conv_im10_cma_u(0) <= RESIZE(i_mul28_conv_im10_cma_p(0),28);
    i_mul28_conv_im10_cma_w(0) <= i_mul28_conv_im10_cma_u(0);
    i_mul28_conv_im10_cma_x(0) <= i_mul28_conv_im10_cma_w(0);
    i_mul28_conv_im10_cma_y(0) <= i_mul28_conv_im10_cma_x(0);
    i_mul28_conv_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul28_conv_im10_cma_a0 <= (others => (others => '0'));
            i_mul28_conv_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul28_conv_im10_cma_ena0 = '1') THEN
                i_mul28_conv_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul28_conv_bs11_b),14);
                i_mul28_conv_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul28_conv_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul28_conv_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul28_conv_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul28_conv_im10_cma_ena1 = '1') THEN
                i_mul28_conv_im10_cma_s(0) <= i_mul28_conv_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul28_conv_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul28_conv_im10_cma_s(0)(27 downto 0)), xout => i_mul28_conv_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul28_conv_im10_cma_q <= STD_LOGIC_VECTOR(i_mul28_conv_im10_cma_qq(27 downto 0));

    -- redist25_i_mul28_conv_im10_cma_q_1(DELAY,417)
    redist25_i_mul28_conv_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul28_conv_im10_cma_q, xout => redist25_i_mul28_conv_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul28_conv_im0_cma(CHAINMULTADD,364)@35 + 2
    i_mul28_conv_im0_cma_reset <= not (resetn);
    i_mul28_conv_im0_cma_ena0 <= '1';
    i_mul28_conv_im0_cma_ena1 <= i_mul28_conv_im0_cma_ena0;
    i_mul28_conv_im0_cma_p(0) <= i_mul28_conv_im0_cma_a0(0) * i_mul28_conv_im0_cma_c0(0);
    i_mul28_conv_im0_cma_u(0) <= RESIZE(i_mul28_conv_im0_cma_p(0),36);
    i_mul28_conv_im0_cma_w(0) <= i_mul28_conv_im0_cma_u(0);
    i_mul28_conv_im0_cma_x(0) <= i_mul28_conv_im0_cma_w(0);
    i_mul28_conv_im0_cma_y(0) <= i_mul28_conv_im0_cma_x(0);
    i_mul28_conv_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul28_conv_im0_cma_a0 <= (others => (others => '0'));
            i_mul28_conv_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul28_conv_im0_cma_ena0 = '1') THEN
                i_mul28_conv_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul28_conv_bs1_b),18);
                i_mul28_conv_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul28_conv_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul28_conv_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul28_conv_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul28_conv_im0_cma_ena1 = '1') THEN
                i_mul28_conv_im0_cma_s(0) <= i_mul28_conv_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul28_conv_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul28_conv_im0_cma_s(0)(35 downto 0)), xout => i_mul28_conv_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul28_conv_im0_cma_q <= STD_LOGIC_VECTOR(i_mul28_conv_im0_cma_qq(35 downto 0));

    -- redist26_i_mul28_conv_im0_cma_q_1(DELAY,418)
    redist26_i_mul28_conv_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul28_conv_im0_cma_q, xout => redist26_i_mul28_conv_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul28_conv_join_13(BITJOIN,217)@38
    i_mul28_conv_join_13_q <= redist25_i_mul28_conv_im10_cma_q_1_q & redist26_i_mul28_conv_im0_cma_q_1_q;

    -- i_mul28_conv_result_add_0_0(ADD,220)@38
    i_mul28_conv_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul28_conv_join_13_q));
    i_mul28_conv_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul28_conv_align_14_q(51)) & i_mul28_conv_align_14_q));
    i_mul28_conv_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul28_conv_result_add_0_0_a) + SIGNED(i_mul28_conv_result_add_0_0_b));
    i_mul28_conv_result_add_0_0_q <= i_mul28_conv_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul28_conv_rnd_sel(BITSELECT,200)@38
    bgTrunc_i_mul28_conv_rnd_sel_in <= i_mul28_conv_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul28_conv_rnd_sel_b <= bgTrunc_i_mul28_conv_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul28_conv_sel_x(BITSELECT,2)@38
    bgTrunc_i_mul28_conv_sel_x_b <= bgTrunc_i_mul28_conv_rnd_sel_b(31 downto 0);

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_inputreg(DELAY,555)
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul28_conv_sel_x_b, xout => redist73_bgTrunc_i_mul28_conv_sel_x_b_5_inputreg_q, clk => clock, aclr => resetn );

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_wraddr(REG,558)
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist73_bgTrunc_i_mul28_conv_sel_x_b_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist73_bgTrunc_i_mul28_conv_sel_x_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem(DUALMEM,556)
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_ia <= STD_LOGIC_VECTOR(redist73_bgTrunc_i_mul28_conv_sel_x_b_5_inputreg_q);
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_aa <= redist73_bgTrunc_i_mul28_conv_sel_x_b_5_wraddr_q;
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_ab <= redist73_bgTrunc_i_mul28_conv_sel_x_b_5_rdcnt_q;
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_reset0 <= not (resetn);
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 32,
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
        clocken1 => redist73_bgTrunc_i_mul28_conv_sel_x_b_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_reset0,
        clock1 => clock,
        address_a => redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_aa,
        data_a => redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_ab,
        q_b => redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_iq
    );
    redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_q <= redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_iq(31 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,10)@43
    out_c1_exi2_0 <= GND_q;
    out_c1_exi2_1 <= redist73_bgTrunc_i_mul28_conv_sel_x_b_5_mem_q;
    out_c1_exi2_2 <= bgTrunc_i_mul32_conv_sel_x_b;
    out_o_valid <= redist70_sync_in_aunroll_x_in_i_valid_42_q;

END normal;
