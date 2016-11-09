-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1.78 SJ Web Edition"

-- DATE "11/09/2016 15:58:34"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processinho IS
    PORT (
	clock : IN std_logic;
	latch_ula : IN std_logic;
	ula_operation : IN std_logic_vector(3 DOWNTO 0);
	operando : IN std_logic_vector(3 DOWNTO 0);
	setRegA : IN std_logic;
	setRegB : IN std_logic;
	result : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END processinho;

-- Design Ports Information
-- latch_ula	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- result[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[7]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[7]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[7]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ula_operation[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[0]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setRegB	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setRegA	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[2]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[1]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF processinho IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_latch_ula : std_logic;
SIGNAL ww_ula_operation : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_operando : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_setRegA : std_logic;
SIGNAL ww_setRegB : std_logic;
SIGNAL ww_result : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_ula|Add2~1\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \m_ula|Add2~2_combout\ : std_logic;
SIGNAL \m_ula|Add2~3\ : std_logic;
SIGNAL \m_ula|Add1~3\ : std_logic;
SIGNAL \m_ula|Add0~3\ : std_logic;
SIGNAL \m_ula|Add2~4_combout\ : std_logic;
SIGNAL \m_ula|Add2~5\ : std_logic;
SIGNAL \m_ula|Add1~4_combout\ : std_logic;
SIGNAL \m_ula|Add1~5\ : std_logic;
SIGNAL \m_ula|Add0~4_combout\ : std_logic;
SIGNAL \m_ula|Add0~5\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \m_ula|Add0~6_combout\ : std_logic;
SIGNAL \m_ula|Add1~6_combout\ : std_logic;
SIGNAL \m_ula|Add2~6_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \m_ula|LessThan0~0_combout\ : std_logic;
SIGNAL \m_ula|LessThan0~1_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\ : std_logic;
SIGNAL \m_ula|result~1_combout\ : std_logic;
SIGNAL \m_ula|Mux2~3_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \m_ula|Mux1~1_combout\ : std_logic;
SIGNAL \m_ula|Mux1~2_combout\ : std_logic;
SIGNAL \m_ula|Mux0~3_combout\ : std_logic;
SIGNAL \m_ula|Mux0~5_combout\ : std_logic;
SIGNAL \m_ula|Mux0~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[62]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[60]~5_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~64_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~65_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~68_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~70_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~71_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~74_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~76_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~27_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~29_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~31_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~33_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~37_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~40_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~41_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~43_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~45_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[0][3]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[1][3]~combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~49_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~77_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~80_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~52_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~84_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \setRegB~combout\ : std_logic;
SIGNAL \m_ula|Add0~0_combout\ : std_logic;
SIGNAL \m_ula|Mux3~1_combout\ : std_logic;
SIGNAL \setRegA~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \m_ula|Mux3~2_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~5_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \m_ula|Add2~0_combout\ : std_logic;
SIGNAL \m_ula|Add1~0_combout\ : std_logic;
SIGNAL \m_ula|Mux3~4_combout\ : std_logic;
SIGNAL \m_ula|Mux3~3_combout\ : std_logic;
SIGNAL \m_ula|Mux3~5_combout\ : std_logic;
SIGNAL \m_ula|Mux3~6_combout\ : std_logic;
SIGNAL \m_ula|Mux2~0_combout\ : std_logic;
SIGNAL \m_ula|Mux3~0_combout\ : std_logic;
SIGNAL \m_ula|Mux3~7_combout\ : std_logic;
SIGNAL \m_ula|Mux2~1_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~1\ : std_logic;
SIGNAL \m_ula|Add0~2_combout\ : std_logic;
SIGNAL \m_ula|Mux2~4_combout\ : std_logic;
SIGNAL \m_ula|Add1~1\ : std_logic;
SIGNAL \m_ula|Add1~2_combout\ : std_logic;
SIGNAL \m_ula|Mux2~2_combout\ : std_logic;
SIGNAL \m_ula|Mux2~5_combout\ : std_logic;
SIGNAL \m_ula|Mux2~7_combout\ : std_logic;
SIGNAL \m_ula|Mux2~6_combout\ : std_logic;
SIGNAL \m_ula|Mux2~8_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \m_ula|Mux2~9_combout\ : std_logic;
SIGNAL \m_ula|Mux2~10_combout\ : std_logic;
SIGNAL \m_ula|Mux0~0_combout\ : std_logic;
SIGNAL \m_ula|result~3_combout\ : std_logic;
SIGNAL \m_ula|Mux1~3_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \m_ula|Mux1~4_combout\ : std_logic;
SIGNAL \m_ula|Mux1~0_combout\ : std_logic;
SIGNAL \m_ula|Mux1~5_combout\ : std_logic;
SIGNAL \m_ula|Mux0~1_combout\ : std_logic;
SIGNAL \m_ula|Mux0~4_combout\ : std_logic;
SIGNAL \m_ula|Mux0~7_combout\ : std_logic;
SIGNAL \m_ula|Mux0~8_combout\ : std_logic;
SIGNAL \m_ula|Mux0~9_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \m_ula|Mux0~2_combout\ : std_logic;
SIGNAL \m_ula|result[4]~4_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \m_ula|result[5]~5_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \m_ula|result[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\ : std_logic;
SIGNAL \display0|decode~0_combout\ : std_logic;
SIGNAL \display0|decode~1_combout\ : std_logic;
SIGNAL \display0|decode~2_combout\ : std_logic;
SIGNAL \display0|decode~3_combout\ : std_logic;
SIGNAL \display0|decode~4_combout\ : std_logic;
SIGNAL \display0|decode~5_combout\ : std_logic;
SIGNAL \display0|decode~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~28_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~30_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~32_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~47_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~39_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~46_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~42_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~44_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~83_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[62]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[61]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[60]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~81_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~82_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~66_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~85_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~78_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~67_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~69_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~86_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~79_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~72_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~87_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \display1|decode~0_combout\ : std_logic;
SIGNAL \display1|decode~1_combout\ : std_logic;
SIGNAL \display1|decode~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \display1|decode~3_combout\ : std_logic;
SIGNAL \display1|decode~4_combout\ : std_logic;
SIGNAL \display1|decode~5_combout\ : std_logic;
SIGNAL \display1|decode~6_combout\ : std_logic;
SIGNAL \display1|decode~7_combout\ : std_logic;
SIGNAL \display1|decode~8_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \regB|valueOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regA|valueOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \operando~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ula_operation~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display1|ALT_INV_decode~8_combout\ : std_logic;
SIGNAL \display0|ALT_INV_decode~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_latch_ula <= latch_ula;
ww_ula_operation <= ula_operation;
ww_operando <= operando;
ww_setRegA <= setRegA;
ww_setRegB <= setRegB;
result <= ww_result;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\display1|ALT_INV_decode~8_combout\ <= NOT \display1|decode~8_combout\;
\display0|ALT_INV_decode~6_combout\ <= NOT \display0|decode~6_combout\;
\Div4|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;

-- Location: LCCOMB_X24_Y6_N10
\m_ula|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add2~0_combout\ = (\regA|valueOut\(0) & ((GND) # (!\regB|valueOut\(0)))) # (!\regA|valueOut\(0) & (\regB|valueOut\(0) $ (GND)))
-- \m_ula|Add2~1\ = CARRY((\regA|valueOut\(0)) # (!\regB|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datab => \regB|valueOut\(0),
	datad => VCC,
	combout => \m_ula|Add2~0_combout\,
	cout => \m_ula|Add2~1\);

-- Location: LCCOMB_X26_Y5_N16
\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\regB|valueOut\(1) & ((\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\ & (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\ & ((\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\regB|valueOut\(1) & ((\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\ & 
-- (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\ & (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\regB|valueOut\(1) & ((!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\))) # 
-- (!\regB|valueOut\(1) & (!\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\ & !\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\,
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X24_Y6_N12
\m_ula|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add2~2_combout\ = (\regB|valueOut\(1) & ((\regA|valueOut\(1) & (!\m_ula|Add2~1\)) # (!\regA|valueOut\(1) & ((\m_ula|Add2~1\) # (GND))))) # (!\regB|valueOut\(1) & ((\regA|valueOut\(1) & (\m_ula|Add2~1\ & VCC)) # (!\regA|valueOut\(1) & 
-- (!\m_ula|Add2~1\))))
-- \m_ula|Add2~3\ = CARRY((\regB|valueOut\(1) & ((!\m_ula|Add2~1\) # (!\regA|valueOut\(1)))) # (!\regB|valueOut\(1) & (!\regA|valueOut\(1) & !\m_ula|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regA|valueOut\(1),
	datad => VCC,
	cin => \m_ula|Add2~1\,
	combout => \m_ula|Add2~2_combout\,
	cout => \m_ula|Add2~3\);

-- Location: LCCOMB_X24_Y6_N2
\m_ula|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~2_combout\ = (\regB|valueOut\(1) & ((\regA|valueOut\(1) & (!\m_ula|Add1~1\)) # (!\regA|valueOut\(1) & (\m_ula|Add1~1\ & VCC)))) # (!\regB|valueOut\(1) & ((\regA|valueOut\(1) & ((\m_ula|Add1~1\) # (GND))) # (!\regA|valueOut\(1) & 
-- (!\m_ula|Add1~1\))))
-- \m_ula|Add1~3\ = CARRY((\regB|valueOut\(1) & (\regA|valueOut\(1) & !\m_ula|Add1~1\)) # (!\regB|valueOut\(1) & ((\regA|valueOut\(1)) # (!\m_ula|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regA|valueOut\(1),
	datad => VCC,
	cin => \m_ula|Add1~1\,
	combout => \m_ula|Add1~2_combout\,
	cout => \m_ula|Add1~3\);

-- Location: LCCOMB_X24_Y6_N20
\m_ula|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~2_combout\ = (\regB|valueOut\(1) & ((\regA|valueOut\(1) & (\m_ula|Add0~1\ & VCC)) # (!\regA|valueOut\(1) & (!\m_ula|Add0~1\)))) # (!\regB|valueOut\(1) & ((\regA|valueOut\(1) & (!\m_ula|Add0~1\)) # (!\regA|valueOut\(1) & ((\m_ula|Add0~1\) # 
-- (GND)))))
-- \m_ula|Add0~3\ = CARRY((\regB|valueOut\(1) & (!\regA|valueOut\(1) & !\m_ula|Add0~1\)) # (!\regB|valueOut\(1) & ((!\m_ula|Add0~1\) # (!\regA|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regA|valueOut\(1),
	datad => VCC,
	cin => \m_ula|Add0~1\,
	combout => \m_ula|Add0~2_combout\,
	cout => \m_ula|Add0~3\);

-- Location: LCCOMB_X24_Y6_N14
\m_ula|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add2~4_combout\ = ((\regB|valueOut\(2) $ (\regA|valueOut\(2) $ (\m_ula|Add2~3\)))) # (GND)
-- \m_ula|Add2~5\ = CARRY((\regB|valueOut\(2) & (\regA|valueOut\(2) & !\m_ula|Add2~3\)) # (!\regB|valueOut\(2) & ((\regA|valueOut\(2)) # (!\m_ula|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \regA|valueOut\(2),
	datad => VCC,
	cin => \m_ula|Add2~3\,
	combout => \m_ula|Add2~4_combout\,
	cout => \m_ula|Add2~5\);

-- Location: LCCOMB_X24_Y6_N4
\m_ula|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~4_combout\ = ((\regB|valueOut\(2) $ (\regA|valueOut\(2) $ (\m_ula|Add1~3\)))) # (GND)
-- \m_ula|Add1~5\ = CARRY((\regB|valueOut\(2) & ((!\m_ula|Add1~3\) # (!\regA|valueOut\(2)))) # (!\regB|valueOut\(2) & (!\regA|valueOut\(2) & !\m_ula|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \regA|valueOut\(2),
	datad => VCC,
	cin => \m_ula|Add1~3\,
	combout => \m_ula|Add1~4_combout\,
	cout => \m_ula|Add1~5\);

-- Location: LCCOMB_X24_Y6_N22
\m_ula|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~4_combout\ = ((\regB|valueOut\(2) $ (\regA|valueOut\(2) $ (!\m_ula|Add0~3\)))) # (GND)
-- \m_ula|Add0~5\ = CARRY((\regB|valueOut\(2) & ((\regA|valueOut\(2)) # (!\m_ula|Add0~3\))) # (!\regB|valueOut\(2) & (\regA|valueOut\(2) & !\m_ula|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \regA|valueOut\(2),
	datad => VCC,
	cin => \m_ula|Add0~3\,
	combout => \m_ula|Add0~4_combout\,
	cout => \m_ula|Add0~5\);

-- Location: LCCOMB_X25_Y5_N18
\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\m_ula|Mult0|mult_core|decoder_node[2][0]~combout\ & (\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC))) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[2][0]~combout\ & (\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & VCC))
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\m_ula|Mult0|mult_core|decoder_node[2][0]~combout\ & \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|decoder_node[2][0]~combout\,
	datab => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X25_Y5_N4
\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\m_ula|Mult0|mult_core|decoder_node[0][3]~combout\ $ (\m_ula|Mult0|mult_core|decoder_node[1][2]~combout\ $ (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # 
-- (GND)
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\m_ula|Mult0|mult_core|decoder_node[0][3]~combout\ & ((\m_ula|Mult0|mult_core|decoder_node[1][2]~combout\) # (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[0][3]~combout\ & (\m_ula|Mult0|mult_core|decoder_node[1][2]~combout\ & !\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|decoder_node[0][3]~combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X25_Y5_N20
\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\m_ula|Mult0|mult_core|decoder_node[2][1]~combout\ & ((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[2][1]~combout\ & ((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\m_ula|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- !\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\m_ula|Mult0|mult_core|decoder_node[2][1]~combout\ & ((!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|decoder_node[2][1]~combout\,
	datab => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X24_Y6_N24
\m_ula|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~6_combout\ = \regA|valueOut\(3) $ (\m_ula|Add0~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	cin => \m_ula|Add0~5\,
	combout => \m_ula|Add0~6_combout\);

-- Location: LCCOMB_X24_Y6_N6
\m_ula|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~6_combout\ = \regA|valueOut\(3) $ (!\m_ula|Add1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	cin => \m_ula|Add1~5\,
	combout => \m_ula|Add1~6_combout\);

-- Location: LCCOMB_X24_Y6_N16
\m_ula|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add2~6_combout\ = \regA|valueOut\(3) $ (!\m_ula|Add2~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	cin => \m_ula|Add2~5\,
	combout => \m_ula|Add2~6_combout\);

-- Location: LCCOMB_X25_Y5_N6
\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\m_ula|Mult0|mult_core|decoder_node[1][3]~combout\ & (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\m_ula|Mult0|mult_core|decoder_node[1][3]~combout\ & 
-- ((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\m_ula|Mult0|mult_core|decoder_node[1][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|mult_core|decoder_node[1][3]~combout\,
	datad => VCC,
	cin => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X25_Y5_N8
\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = !\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X20_Y12_N12
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\m_ula|result[5]~5_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\m_ula|result[5]~5_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\m_ula|result[5]~5_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[5]~5_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X20_Y12_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\m_ula|result[6]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\m_ula|result[6]~6_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\m_ula|result[6]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[6]~6_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X19_Y12_N14
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~30_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~31_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~30_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~31_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~30_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~31_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~31_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X19_Y12_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~29_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~28_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[22]~29_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~28_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~29_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~29_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~28_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X24_Y10_N6
\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[60]~5_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[60]~4_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[60]~5_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[60]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[60]~5_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[60]~4_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X24_Y10_N8
\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[61]~2_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[61]~2_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[61]~2_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[61]~2_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X24_Y10_N10
\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[62]~1_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[62]~0_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[62]~1_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[62]~0_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[62]~1_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[62]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[62]~1_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[62]~0_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X25_Y10_N4
\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[15]~84_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~85_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[15]~84_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[15]~84_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[15]~85_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X25_Y10_N6
\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[16]~83_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[16]~66_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~83_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[16]~66_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[16]~83_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~66_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[16]~83_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[16]~66_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X25_Y10_N16
\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[20]~87_combout\) # (\Div2|auto_generated|divider|divider|StageOut[20]~86_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[20]~87_combout\) # (\Div2|auto_generated|divider|divider|StageOut[20]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[20]~87_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~86_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X25_Y10_N20
\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~78_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~78_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[22]~78_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X26_Y12_N16
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\m_ula|result[6]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\m_ula|result[6]~6_combout\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\m_ula|result[6]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[6]~6_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X26_Y11_N24
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[22]~29_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~28_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[22]~29_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~28_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~29_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~29_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~28_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X26_Y11_N10
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[25]~38_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~39_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~38_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~39_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X26_Y11_N12
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~37_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~37_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[26]~36_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~37_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~36_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~37_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X26_Y11_N14
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~48_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~35_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[27]~48_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~35_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~48_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~48_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X24_Y6_N8
\m_ula|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|LessThan0~0_combout\ = (\regB|valueOut\(1) & (((\regB|valueOut\(0) & !\regA|valueOut\(0))) # (!\regA|valueOut\(1)))) # (!\regB|valueOut\(1) & (\regB|valueOut\(0) & (!\regA|valueOut\(0) & !\regA|valueOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regB|valueOut\(0),
	datac => \regA|valueOut\(0),
	datad => \regA|valueOut\(1),
	combout => \m_ula|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y6_N26
\m_ula|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|LessThan0~1_combout\ = (!\regA|valueOut\(3) & ((\m_ula|LessThan0~0_combout\ & ((\regB|valueOut\(2)) # (!\regA|valueOut\(2)))) # (!\m_ula|LessThan0~0_combout\ & (!\regA|valueOut\(2) & \regB|valueOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \m_ula|LessThan0~0_combout\,
	datac => \regA|valueOut\(2),
	datad => \regB|valueOut\(2),
	combout => \m_ula|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y5_N0
\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\regB|valueOut\(2)) # ((\regB|valueOut\(1) & (!\regA|valueOut\(2) & \regB|valueOut\(0))) # (!\regB|valueOut\(1) & ((!\regB|valueOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \regB|valueOut\(2),
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(0),
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X26_Y5_N2
\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\ = (\regA|valueOut\(3) & \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(3),
	datad => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\);

-- Location: LCCOMB_X26_Y5_N24
\m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\ = (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\))) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\);

-- Location: LCCOMB_X25_Y6_N16
\m_ula|result~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result~1_combout\ = (\regB|valueOut\(1)) # (\regA|valueOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|valueOut\(1),
	datad => \regA|valueOut\(1),
	combout => \m_ula|result~1_combout\);

-- Location: LCCOMB_X25_Y6_N20
\m_ula|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~3_combout\ = (\ula_operation~combout\(1) & ((\m_ula|LessThan0~1_combout\) # (\ula_operation~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datac => \m_ula|LessThan0~1_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux2~3_combout\);

-- Location: LCCOMB_X27_Y6_N12
\m_ula|Div0|auto_generated|divider|divider|selnose[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ = ((!\regA|valueOut\(2) & \regB|valueOut\(0))) # (!\m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datad => \regB|valueOut\(0),
	combout => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X25_Y6_N26
\m_ula|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~1_combout\ = (\m_ula|Mux2~3_combout\ & ((\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\) # ((!\ula_operation~combout\(0))))) # (!\m_ula|Mux2~3_combout\ & (((\m_ula|Add0~4_combout\ & 
-- \ula_operation~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \m_ula|Add0~4_combout\,
	datac => \m_ula|Mux2~3_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y6_N12
\m_ula|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~2_combout\ = (\m_ula|Mux2~2_combout\ & (((\m_ula|Mux1~1_combout\)))) # (!\m_ula|Mux2~2_combout\ & ((\m_ula|Mux1~1_combout\ & ((\m_ula|Add1~4_combout\))) # (!\m_ula|Mux1~1_combout\ & (\m_ula|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add2~4_combout\,
	datab => \m_ula|Mux2~2_combout\,
	datac => \m_ula|Add1~4_combout\,
	datad => \m_ula|Mux1~1_combout\,
	combout => \m_ula|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y6_N10
\m_ula|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~3_combout\ = (\m_ula|Mux0~2_combout\ & ((\ula_operation~combout\(1) & (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\)) # (!\ula_operation~combout\(1) & ((\m_ula|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datab => \m_ula|Add0~6_combout\,
	datac => \m_ula|Mux0~2_combout\,
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y5_N2
\m_ula|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~5_combout\ = (!\ula_operation~combout\(2) & ((\m_ula|LessThan0~1_combout\ & (\m_ula|Add1~6_combout\)) # (!\m_ula|LessThan0~1_combout\ & ((\m_ula|Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add1~6_combout\,
	datab => \m_ula|LessThan0~1_combout\,
	datac => \m_ula|Add2~6_combout\,
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux0~5_combout\);

-- Location: LCCOMB_X24_Y5_N12
\m_ula|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~6_combout\ = (\ula_operation~combout\(1) & ((\m_ula|Mux0~5_combout\) # ((\regA|valueOut\(3) & \ula_operation~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \regA|valueOut\(3),
	datac => \ula_operation~combout\(2),
	datad => \m_ula|Mux0~5_combout\,
	combout => \m_ula|Mux0~6_combout\);

-- Location: LCCOMB_X19_Y12_N2
\Mod0|auto_generated|divider|divider|StageOut[23]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~27_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~27_combout\);

-- Location: LCCOMB_X19_Y12_N6
\Mod0|auto_generated|divider|divider|StageOut[22]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~29_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~29_combout\);

-- Location: LCCOMB_X19_Y12_N24
\Mod0|auto_generated|divider|divider|StageOut[21]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|result[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \m_ula|result[4]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~30_combout\);

-- Location: LCCOMB_X19_Y12_N22
\Mod0|auto_generated|divider|divider|StageOut[20]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~32_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~32_combout\);

-- Location: LCCOMB_X18_Y12_N16
\Mod0|auto_generated|divider|divider|StageOut[27]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X18_Y12_N10
\Mod0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X18_Y12_N0
\Mod0|auto_generated|divider|divider|StageOut[25]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~39_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \m_ula|Mux1~5_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~39_combout\);

-- Location: LCCOMB_X12_Y12_N16
\Mod0|auto_generated|divider|divider|StageOut[30]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~41_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \m_ula|Mux2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \m_ula|Mux2~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~41_combout\);

-- Location: LCCOMB_X24_Y11_N22
\Mod1|auto_generated|divider|divider|StageOut[62]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[62]~1_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[62]~1_combout\);

-- Location: LCCOMB_X24_Y10_N20
\Mod1|auto_generated|divider|divider|StageOut[61]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\);

-- Location: LCCOMB_X24_Y10_N24
\Mod1|auto_generated|divider|divider|StageOut[60]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[60]~5_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[60]~5_combout\);

-- Location: LCCOMB_X24_Y10_N2
\Div2|auto_generated|divider|divider|StageOut[18]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~64_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~64_combout\);

-- Location: LCCOMB_X24_Y10_N4
\Div2|auto_generated|divider|divider|StageOut[17]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~65_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~65_combout\);

-- Location: LCCOMB_X25_Y10_N26
\Div2|auto_generated|divider|divider|StageOut[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~68_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~68_combout\);

-- Location: LCCOMB_X25_Y10_N2
\Div2|auto_generated|divider|divider|StageOut[21]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~70_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~70_combout\);

-- Location: LCCOMB_X26_Y10_N10
\Div2|auto_generated|divider|divider|StageOut[28]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~71_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~71_combout\);

-- Location: LCCOMB_X26_Y10_N24
\Div2|auto_generated|divider|divider|StageOut[26]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~74_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~74_combout\);

-- Location: LCCOMB_X26_Y10_N12
\Div2|auto_generated|divider|divider|StageOut[25]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~76_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \m_ula|Mux2~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~76_combout\);

-- Location: LCCOMB_X26_Y12_N0
\Div1|auto_generated|divider|divider|StageOut[23]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~27_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~27_combout\);

-- Location: LCCOMB_X26_Y12_N28
\Div1|auto_generated|divider|divider|StageOut[22]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~29_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~29_combout\);

-- Location: LCCOMB_X26_Y12_N24
\Div1|auto_generated|divider|divider|StageOut[21]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~31_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~31_combout\);

-- Location: LCCOMB_X26_Y11_N4
\Div1|auto_generated|divider|divider|StageOut[20]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~33_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~33_combout\);

-- Location: LCCOMB_X26_Y11_N6
\Div1|auto_generated|divider|divider|StageOut[28]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~34_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X26_Y11_N30
\Div1|auto_generated|divider|divider|StageOut[26]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~37_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~37_combout\);

-- Location: LCCOMB_X25_Y11_N10
\Div1|auto_generated|divider|divider|StageOut[25]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\m_ula|Mux1~5_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~5_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X25_Y11_N6
\Div1|auto_generated|divider|divider|StageOut[33]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~40_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~40_combout\);

-- Location: LCCOMB_X25_Y11_N0
\Div1|auto_generated|divider|divider|StageOut[32]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~41_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~41_combout\);

-- Location: LCCOMB_X25_Y11_N12
\Div1|auto_generated|divider|divider|StageOut[31]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~43_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~43_combout\);

-- Location: LCCOMB_X25_Y11_N8
\Div1|auto_generated|divider|divider|StageOut[30]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~45_combout\ = (\m_ula|Mux2~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~45_combout\);

-- Location: LCCOMB_X24_Y5_N14
\m_ula|Mult0|mult_core|decoder_node[1][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[1][0]~combout\ = (\regA|valueOut\(0) & \regB|valueOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X27_Y6_N16
\m_ula|Mult0|mult_core|decoder_node[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ = (\regA|valueOut\(2) & \regB|valueOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datad => \regB|valueOut\(0),
	combout => \m_ula|Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X25_Y5_N30
\m_ula|Mult0|mult_core|decoder_node[2][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[2][0]~combout\ = (\regA|valueOut\(0) & \regB|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regA|valueOut\(0),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X25_Y5_N16
\m_ula|Mult0|mult_core|decoder_node[0][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[0][3]~combout\ = (\regA|valueOut\(3) & \regB|valueOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(3),
	datad => \regB|valueOut\(0),
	combout => \m_ula|Mult0|mult_core|decoder_node[0][3]~combout\);

-- Location: LCCOMB_X25_Y5_N12
\m_ula|Mult0|mult_core|decoder_node[2][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[2][1]~combout\ = (\regA|valueOut\(1) & \regB|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regA|valueOut\(1),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X26_Y5_N28
\m_ula|Mult0|mult_core|decoder_node[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[1][3]~combout\ = (\regB|valueOut\(1) & \regA|valueOut\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|valueOut\(1),
	datad => \regA|valueOut\(3),
	combout => \m_ula|Mult0|mult_core|decoder_node[1][3]~combout\);

-- Location: LCCOMB_X26_Y5_N30
\m_ula|Div0|auto_generated|divider|divider|StageOut[10]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~8_combout\ = (\regA|valueOut\(3) & (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(3),
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~8_combout\);

-- Location: LCCOMB_X18_Y12_N28
\Mod0|auto_generated|divider|divider|StageOut[33]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~49_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~49_combout\);

-- Location: LCCOMB_X24_Y10_N16
\Div2|auto_generated|divider|divider|StageOut[23]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~77_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[17]~82_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[17]~82_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~77_combout\);

-- Location: LCCOMB_X25_Y10_N14
\Div2|auto_generated|divider|divider|StageOut[27]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~80_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[21]~69_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[21]~69_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~80_combout\);

-- Location: LCCOMB_X19_Y12_N28
\Mod0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\m_ula|result[5]~5_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \m_ula|result[5]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X18_Y12_N6
\Mod0|auto_generated|divider|divider|StageOut[32]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~52_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\m_ula|Mux0~9_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~9_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~52_combout\);

-- Location: LCCOMB_X24_Y11_N18
\Div2|auto_generated|divider|divider|StageOut[15]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~84_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\m_ula|Mux0~9_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~84_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_operando(0),
	combout => \operando~combout\(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\setRegB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_setRegB,
	combout => \setRegB~combout\);

-- Location: LCFF_X24_Y6_N19
\regB|valueOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(0),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(0));

-- Location: LCCOMB_X24_Y6_N18
\m_ula|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~0_combout\ = (\regA|valueOut\(0) & (\regB|valueOut\(0) $ (VCC))) # (!\regA|valueOut\(0) & (\regB|valueOut\(0) & VCC))
-- \m_ula|Add0~1\ = CARRY((\regA|valueOut\(0) & \regB|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datab => \regB|valueOut\(0),
	datad => VCC,
	combout => \m_ula|Add0~0_combout\,
	cout => \m_ula|Add0~1\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ula_operation[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ula_operation(2),
	combout => \ula_operation~combout\(2));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ula_operation[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ula_operation(1),
	combout => \ula_operation~combout\(1));

-- Location: LCCOMB_X26_Y6_N28
\m_ula|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~1_combout\ = (!\ula_operation~combout\(2) & ((\ula_operation~combout\(1) & (\m_ula|Mult0|mult_core|decoder_node[0][0]~combout\)) # (!\ula_operation~combout\(1) & ((\m_ula|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\,
	datab => \m_ula|Add0~0_combout\,
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux3~1_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ula_operation[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ula_operation(0),
	combout => \ula_operation~combout\(0));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\setRegA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_setRegA,
	combout => \setRegA~combout\);

-- Location: LCFF_X24_Y6_N1
\regA|valueOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(0),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(0));

-- Location: LCCOMB_X25_Y5_N10
\m_ula|Mult0|mult_core|decoder_node[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\ = (\regA|valueOut\(0) & \regB|valueOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regA|valueOut\(0),
	datad => \regB|valueOut\(0),
	combout => \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X26_Y6_N6
\m_ula|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~2_combout\ = (\ula_operation~combout\(0) & ((\m_ula|Mux3~1_combout\) # ((\m_ula|Mux0~0_combout\ & \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~0_combout\,
	datab => \m_ula|Mux3~1_combout\,
	datac => \ula_operation~combout\(0),
	datad => \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\,
	combout => \m_ula|Mux3~2_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_operando(2),
	combout => \operando~combout\(2));

-- Location: LCFF_X26_Y5_N19
\regB|valueOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(2),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_operando(3),
	combout => \operando~combout\(3));

-- Location: LCFF_X24_Y6_N25
\regA|valueOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(3),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(3));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_operando(1),
	combout => \operando~combout\(1));

-- Location: LCFF_X26_Y5_N17
\regB|valueOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(1),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(1));

-- Location: LCCOMB_X24_Y6_N28
\m_ula|Div0|auto_generated|divider|divider|selnose[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ = (!\regB|valueOut\(2) & ((\regA|valueOut\(3)) # (!\regB|valueOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datac => \regA|valueOut\(3),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X27_Y6_N8
\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\ = (\regA|valueOut\(2) & ((!\regB|valueOut\(0)) # (!\m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datad => \regB|valueOut\(0),
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\);

-- Location: LCCOMB_X26_Y5_N14
\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\regA|valueOut\(1) & ((GND) # (!\regB|valueOut\(0)))) # (!\regA|valueOut\(1) & (\regB|valueOut\(0) $ (GND)))
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\regA|valueOut\(1)) # (!\regB|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datab => \regB|valueOut\(0),
	datad => VCC,
	combout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X26_Y5_N18
\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\ $ (\regB|valueOut\(2) $ (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\regB|valueOut\(2)))) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (!\regB|valueOut\(2) & !\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datab => \regB|valueOut\(2),
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X26_Y5_N20
\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X26_Y5_N22
\m_ula|Div0|auto_generated|divider|divider|StageOut[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~5_combout\ = (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~5_combout\);

-- Location: LCFF_X26_Y5_N15
\regA|valueOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(1),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(1));

-- Location: LCCOMB_X26_Y5_N26
\m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\ = (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\regA|valueOut\(1)))) # (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ 
-- & (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \regA|valueOut\(1),
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\);

-- Location: LCCOMB_X26_Y5_N4
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\regA|valueOut\(0)) # (!\regB|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(0),
	datab => \regA|valueOut\(0),
	datad => VCC,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X26_Y5_N6
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\regB|valueOut\(1) & ((!\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\))) # (!\regB|valueOut\(1) & (!\m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\ & !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\,
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X26_Y5_N8
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\ & ((!\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # 
-- (!\regB|valueOut\(2)))) # (!\m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\ & (!\regB|valueOut\(2) & !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\,
	datab => \regB|valueOut\(2),
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X26_Y5_N10
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((!\m_ula|Div0|auto_generated|divider|divider|StageOut[10]~8_combout\ & (!\m_ula|Div0|auto_generated|divider|divider|StageOut[10]~5_combout\ & 
-- !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~8_combout\,
	datab => \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X26_Y5_N12
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X24_Y6_N0
\m_ula|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~0_combout\ = (\regA|valueOut\(0) & (\regB|valueOut\(0) $ (VCC))) # (!\regA|valueOut\(0) & ((\regB|valueOut\(0)) # (GND)))
-- \m_ula|Add1~1\ = CARRY((\regB|valueOut\(0)) # (!\regA|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datab => \regB|valueOut\(0),
	datad => VCC,
	combout => \m_ula|Add1~0_combout\,
	cout => \m_ula|Add1~1\);

-- Location: LCCOMB_X25_Y6_N18
\m_ula|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~4_combout\ = (!\ula_operation~combout\(2) & ((\m_ula|LessThan0~1_combout\ & ((\m_ula|Add1~0_combout\))) # (!\m_ula|LessThan0~1_combout\ & (\m_ula|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|LessThan0~1_combout\,
	datab => \m_ula|Add2~0_combout\,
	datac => \m_ula|Add1~0_combout\,
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux3~4_combout\);

-- Location: LCCOMB_X25_Y6_N24
\m_ula|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~3_combout\ = (\ula_operation~combout\(2) & ((\regB|valueOut\(0)) # (\regA|valueOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|valueOut\(0),
	datac => \regA|valueOut\(0),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux3~3_combout\);

-- Location: LCCOMB_X25_Y6_N28
\m_ula|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~5_combout\ = (\ula_operation~combout\(1) & ((\m_ula|Mux3~4_combout\) # (\m_ula|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux3~4_combout\,
	datac => \m_ula|Mux3~3_combout\,
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux3~5_combout\);

-- Location: LCCOMB_X26_Y6_N0
\m_ula|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~6_combout\ = (!\ula_operation~combout\(0) & ((\m_ula|Mux3~5_combout\) # ((\m_ula|Mux0~0_combout\ & !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~0_combout\,
	datab => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \ula_operation~combout\(0),
	datad => \m_ula|Mux3~5_combout\,
	combout => \m_ula|Mux3~6_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ula_operation[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ula_operation(3),
	combout => \ula_operation~combout\(3));

-- Location: LCCOMB_X26_Y6_N8
\m_ula|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~0_combout\ = (!\ula_operation~combout\(1) & (\ula_operation~combout\(3) & !\ula_operation~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \ula_operation~combout\(3),
	datac => \ula_operation~combout\(2),
	combout => \m_ula|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y6_N18
\m_ula|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~0_combout\ = (\m_ula|Mux2~0_combout\ & ((\ula_operation~combout\(0) & ((!\regA|valueOut\(0)))) # (!\ula_operation~combout\(0) & (\m_ula|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datab => \m_ula|Add0~0_combout\,
	datac => \m_ula|Mux2~0_combout\,
	datad => \regA|valueOut\(0),
	combout => \m_ula|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y6_N26
\m_ula|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~7_combout\ = (\m_ula|Mux3~0_combout\) # ((!\ula_operation~combout\(3) & ((\m_ula|Mux3~2_combout\) # (\m_ula|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~2_combout\,
	datab => \m_ula|Mux3~6_combout\,
	datac => \ula_operation~combout\(3),
	datad => \m_ula|Mux3~0_combout\,
	combout => \m_ula|Mux3~7_combout\);

-- Location: LCCOMB_X26_Y6_N20
\m_ula|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~1_combout\ = \regA|valueOut\(1) $ (((\regB|valueOut\(1)) # (\ula_operation~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regA|valueOut\(1),
	datac => \ula_operation~combout\(0),
	combout => \m_ula|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y5_N28
\m_ula|Mult0|mult_core|decoder_node[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[0][1]~combout\ = (\regA|valueOut\(1) & \regB|valueOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regA|valueOut\(1),
	datad => \regB|valueOut\(0),
	combout => \m_ula|Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X25_Y5_N0
\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\m_ula|Mult0|mult_core|decoder_node[1][0]~combout\ & (\m_ula|Mult0|mult_core|decoder_node[0][1]~combout\ $ (VCC))) # (!\m_ula|Mult0|mult_core|decoder_node[1][0]~combout\ & 
-- (\m_ula|Mult0|mult_core|decoder_node[0][1]~combout\ & VCC))
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\m_ula|Mult0|mult_core|decoder_node[1][0]~combout\ & \m_ula|Mult0|mult_core|decoder_node[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|decoder_node[1][0]~combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[0][1]~combout\,
	datad => VCC,
	combout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X25_Y6_N30
\m_ula|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~4_combout\ = (\m_ula|Mux2~3_combout\ & ((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\) # ((!\ula_operation~combout\(0))))) # (!\m_ula|Mux2~3_combout\ & (((\m_ula|Add0~2_combout\ & \ula_operation~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~3_combout\,
	datab => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \m_ula|Add0~2_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux2~4_combout\);

-- Location: LCCOMB_X25_Y6_N2
\m_ula|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~2_combout\ = (\ula_operation~combout\(0)) # (!\ula_operation~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_operation~combout\(0),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux2~2_combout\);

-- Location: LCCOMB_X25_Y6_N0
\m_ula|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~5_combout\ = (\m_ula|Mux2~4_combout\ & (((\m_ula|Add1~2_combout\) # (\m_ula|Mux2~2_combout\)))) # (!\m_ula|Mux2~4_combout\ & (\m_ula|Add2~2_combout\ & ((!\m_ula|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add2~2_combout\,
	datab => \m_ula|Mux2~4_combout\,
	datac => \m_ula|Add1~2_combout\,
	datad => \m_ula|Mux2~2_combout\,
	combout => \m_ula|Mux2~5_combout\);

-- Location: LCCOMB_X25_Y6_N4
\m_ula|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~7_combout\ = (\ula_operation~combout\(2) & ((\ula_operation~combout\(1)) # (\ula_operation~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \ula_operation~combout\(0),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux2~7_combout\);

-- Location: LCCOMB_X25_Y6_N10
\m_ula|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~6_combout\ = ((\ula_operation~combout\(1) & !\ula_operation~combout\(0))) # (!\ula_operation~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \ula_operation~combout\(0),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux2~6_combout\);

-- Location: LCCOMB_X25_Y6_N6
\m_ula|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~8_combout\ = (\m_ula|Mux2~7_combout\ & (\m_ula|result~1_combout\ & ((\m_ula|Mux2~6_combout\)))) # (!\m_ula|Mux2~7_combout\ & (((\m_ula|Mux2~5_combout\) # (!\m_ula|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result~1_combout\,
	datab => \m_ula|Mux2~5_combout\,
	datac => \m_ula|Mux2~7_combout\,
	datad => \m_ula|Mux2~6_combout\,
	combout => \m_ula|Mux2~8_combout\);

-- Location: LCCOMB_X25_Y6_N14
\m_ula|Mult0|mult_core|decoder_node[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ = (\regB|valueOut\(1) & \regA|valueOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|valueOut\(1),
	datad => \regA|valueOut\(1),
	combout => \m_ula|Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X26_Y6_N14
\m_ula|Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~9_combout\ = (\m_ula|Mux0~0_combout\ & ((\m_ula|Mux2~8_combout\ & (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)) # (!\m_ula|Mux2~8_combout\ & ((\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\))))) # 
-- (!\m_ula|Mux0~0_combout\ & (\m_ula|Mux2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~0_combout\,
	datab => \m_ula|Mux2~8_combout\,
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \m_ula|Mult0|mult_core|decoder_node[1][1]~combout\,
	combout => \m_ula|Mux2~9_combout\);

-- Location: LCCOMB_X26_Y6_N24
\m_ula|Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~10_combout\ = (\m_ula|Mux2~1_combout\ & ((\m_ula|Mux2~0_combout\) # ((\m_ula|Mux2~9_combout\ & !\ula_operation~combout\(3))))) # (!\m_ula|Mux2~1_combout\ & (\m_ula|Mux2~9_combout\ & ((!\ula_operation~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datab => \m_ula|Mux2~9_combout\,
	datac => \m_ula|Mux2~0_combout\,
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux2~10_combout\);

-- Location: LCCOMB_X24_Y5_N0
\m_ula|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~0_combout\ = (!\ula_operation~combout\(1) & \ula_operation~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux0~0_combout\);

-- Location: LCFF_X24_Y6_N15
\regA|valueOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(2),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(2));

-- Location: LCCOMB_X25_Y6_N8
\m_ula|result~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result~3_combout\ = (\regB|valueOut\(2)) # (\regA|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|valueOut\(2),
	datad => \regA|valueOut\(2),
	combout => \m_ula|result~3_combout\);

-- Location: LCCOMB_X25_Y6_N22
\m_ula|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~3_combout\ = (\m_ula|Mux2~7_combout\ & (((\m_ula|result~3_combout\ & \m_ula|Mux2~6_combout\)))) # (!\m_ula|Mux2~7_combout\ & ((\m_ula|Mux1~2_combout\) # ((!\m_ula|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~2_combout\,
	datab => \m_ula|result~3_combout\,
	datac => \m_ula|Mux2~7_combout\,
	datad => \m_ula|Mux2~6_combout\,
	combout => \m_ula|Mux1~3_combout\);

-- Location: LCCOMB_X27_Y6_N18
\m_ula|Mult0|mult_core|decoder_node[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[2][2]~combout\ = (\regA|valueOut\(2) & \regB|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datac => \regB|valueOut\(2),
	combout => \m_ula|Mult0|mult_core|decoder_node[2][2]~combout\);

-- Location: LCCOMB_X27_Y6_N30
\m_ula|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~4_combout\ = (\m_ula|Mux0~0_combout\ & ((\m_ula|Mux1~3_combout\ & (!\m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\)) # (!\m_ula|Mux1~3_combout\ & ((\m_ula|Mult0|mult_core|decoder_node[2][2]~combout\))))) # 
-- (!\m_ula|Mux0~0_combout\ & (((\m_ula|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datab => \m_ula|Mux0~0_combout\,
	datac => \m_ula|Mux1~3_combout\,
	datad => \m_ula|Mult0|mult_core|decoder_node[2][2]~combout\,
	combout => \m_ula|Mux1~4_combout\);

-- Location: LCCOMB_X26_Y6_N2
\m_ula|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~0_combout\ = \regA|valueOut\(2) $ (((\regB|valueOut\(2)) # (\ula_operation~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|valueOut\(2),
	datac => \ula_operation~combout\(0),
	datad => \regA|valueOut\(2),
	combout => \m_ula|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y6_N4
\m_ula|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~5_combout\ = (\m_ula|Mux1~4_combout\ & (((\m_ula|Mux1~0_combout\ & \m_ula|Mux2~0_combout\)) # (!\ula_operation~combout\(3)))) # (!\m_ula|Mux1~4_combout\ & (\m_ula|Mux1~0_combout\ & (\m_ula|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~4_combout\,
	datab => \m_ula|Mux1~0_combout\,
	datac => \m_ula|Mux2~0_combout\,
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux1~5_combout\);

-- Location: LCCOMB_X26_Y6_N22
\m_ula|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~1_combout\ = (\ula_operation~combout\(3) & (!\ula_operation~combout\(1) & (\regA|valueOut\(3) $ (\ula_operation~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \ula_operation~combout\(3),
	datac => \ula_operation~combout\(0),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y6_N12
\m_ula|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~4_combout\ = (!\ula_operation~combout\(2) & ((\m_ula|Mux0~3_combout\) # (\m_ula|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~3_combout\,
	datab => \m_ula|Mux0~1_combout\,
	datac => \ula_operation~combout\(2),
	combout => \m_ula|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y5_N30
\m_ula|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~7_combout\ = (!\ula_operation~combout\(1) & (\ula_operation~combout\(2) & ((\regA|valueOut\(3)) # (!\regB|valueOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \regA|valueOut\(3),
	datac => \regB|valueOut\(0),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux0~7_combout\);

-- Location: LCCOMB_X24_Y5_N8
\m_ula|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~8_combout\ = (\m_ula|Mux0~6_combout\) # ((\m_ula|Mux0~7_combout\ & (!\regB|valueOut\(2) & !\regB|valueOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~6_combout\,
	datab => \m_ula|Mux0~7_combout\,
	datac => \regB|valueOut\(2),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mux0~8_combout\);

-- Location: LCCOMB_X26_Y6_N30
\m_ula|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~9_combout\ = (\m_ula|Mux0~4_combout\) # ((!\ula_operation~combout\(3) & (!\ula_operation~combout\(0) & \m_ula|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~4_combout\,
	datab => \ula_operation~combout\(3),
	datac => \ula_operation~combout\(0),
	datad => \m_ula|Mux0~8_combout\,
	combout => \m_ula|Mux0~9_combout\);

-- Location: LCCOMB_X24_Y6_N30
\m_ula|Mult0|mult_core|decoder_node[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[1][2]~combout\ = (\regA|valueOut\(2) & \regB|valueOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regA|valueOut\(2),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X25_Y5_N2
\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ & (\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ & 
-- (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ & !\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ & ((!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|decoder_node[0][2]~combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[1][1]~combout\,
	datad => VCC,
	cin => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X25_Y5_N22
\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (\m_ula|Mult0|mult_core|decoder_node[2][2]~combout\ $ 
-- (!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\m_ula|Mult0|mult_core|decoder_node[2][2]~combout\) # 
-- (!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\m_ula|Mult0|mult_core|decoder_node[2][2]~combout\ & 
-- !\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[2][2]~combout\,
	datad => VCC,
	cin => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X26_Y6_N16
\m_ula|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~2_combout\ = (!\ula_operation~combout\(3) & \ula_operation~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_operation~combout\(3),
	datac => \ula_operation~combout\(0),
	combout => \m_ula|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y5_N10
\m_ula|result[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result[4]~4_combout\ = (\ula_operation~combout\(1) & (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (\m_ula|Mux0~2_combout\ & !\ula_operation~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datac => \m_ula|Mux0~2_combout\,
	datad => \ula_operation~combout\(2),
	combout => \m_ula|result[4]~4_combout\);

-- Location: LCCOMB_X25_Y5_N14
\m_ula|Mult0|mult_core|decoder_node[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ = (\regA|valueOut\(3) & \regB|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(3),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mult0|mult_core|decoder_node[2][3]~combout\);

-- Location: LCCOMB_X25_Y5_N24
\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ & 
-- (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ & (!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ & (!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ & ((\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ & 
-- !\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[2][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[2][3]~combout\,
	datad => VCC,
	cin => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X24_Y5_N4
\m_ula|result[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result[5]~5_combout\ = (\ula_operation~combout\(1) & (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\m_ula|Mux0~2_combout\ & !\ula_operation~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \m_ula|Mux0~2_combout\,
	datad => \ula_operation~combout\(2),
	combout => \m_ula|result[5]~5_combout\);

-- Location: LCCOMB_X25_Y5_N26
\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = !\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X24_Y5_N6
\m_ula|result[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result[6]~6_combout\ = (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & (!\ula_operation~combout\(2) & (\m_ula|Mux0~2_combout\ & \ula_operation~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \ula_operation~combout\(2),
	datac => \m_ula|Mux0~2_combout\,
	datad => \ula_operation~combout\(1),
	combout => \m_ula|result[6]~6_combout\);

-- Location: LCCOMB_X20_Y12_N10
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \m_ula|result[4]~4_combout\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\m_ula|result[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[4]~4_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X20_Y12_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y12_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Mod0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\m_ula|result[4]~4_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \m_ula|result[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X19_Y12_N8
\Mod0|auto_generated|divider|divider|StageOut[20]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~33_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~33_combout\);

-- Location: LCCOMB_X19_Y12_N12
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[20]~32_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~33_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[20]~32_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~32_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~33_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X19_Y12_N0
\Mod0|auto_generated|divider|divider|StageOut[23]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|result[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|result[6]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X19_Y12_N4
\Mod0|auto_generated|divider|divider|StageOut[22]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|result[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \m_ula|result[5]~5_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~28_combout\);

-- Location: LCCOMB_X19_Y12_N26
\Mod0|auto_generated|divider|divider|StageOut[21]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~31_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~31_combout\);

-- Location: LCCOMB_X19_Y12_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[23]~27_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~27_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y12_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y12_N4
\Mod0|auto_generated|divider|divider|StageOut[26]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~37_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~37_combout\);

-- Location: LCCOMB_X18_Y12_N30
\Mod0|auto_generated|divider|divider|StageOut[25]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \m_ula|Mux1~5_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X18_Y12_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[25]~39_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[25]~39_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~39_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X18_Y12_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~37_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[26]~37_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~37_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~37_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X18_Y12_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X19_Y12_N10
\Mod0|auto_generated|divider|divider|StageOut[28]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X18_Y12_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y12_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y12_N2
\Mod0|auto_generated|divider|divider|StageOut[33]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~42_combout\);

-- Location: LCCOMB_X18_Y12_N12
\Mod0|auto_generated|divider|divider|StageOut[32]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\);

-- Location: LCCOMB_X18_Y12_N14
\Mod0|auto_generated|divider|divider|StageOut[31]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \m_ula|Mux1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \m_ula|Mux1~5_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~44_combout\);

-- Location: LCCOMB_X13_Y12_N24
\Mod0|auto_generated|divider|divider|StageOut[30]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \m_ula|Mux2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \m_ula|Mux2~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~40_combout\);

-- Location: LCCOMB_X12_Y12_N18
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[30]~41_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~40_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[30]~41_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~40_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X12_Y12_N20
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~45_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~44_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~45_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~44_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~45_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~44_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~44_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X12_Y12_N22
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~52_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~52_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~52_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~52_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X12_Y12_N24
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~49_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~42_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~49_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~42_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y12_N26
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y12_N8
\Mod0|auto_generated|divider|divider|StageOut[31]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~45_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~45_combout\);

-- Location: LCCOMB_X12_Y12_N28
\Mod0|auto_generated|divider|divider|StageOut[37]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~44_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[31]~45_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~45_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\);

-- Location: LCCOMB_X12_Y12_N14
\Mod0|auto_generated|divider|divider|StageOut[38]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~52_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~52_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\);

-- Location: LCCOMB_X12_Y12_N2
\Mod0|auto_generated|divider|divider|StageOut[36]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\m_ula|Mux2~10_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \m_ula|Mux2~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\);

-- Location: LCCOMB_X12_Y12_N8
\display0|decode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~0_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\ & (\m_ula|Mux3~7_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\,
	combout => \display0|decode~0_combout\);

-- Location: LCCOMB_X12_Y12_N10
\display0|decode~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~1_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\ & (\m_ula|Mux3~7_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\,
	combout => \display0|decode~1_combout\);

-- Location: LCCOMB_X12_Y12_N12
\display0|decode~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~2_combout\ = (!\m_ula|Mux3~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\ & \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\,
	combout => \display0|decode~2_combout\);

-- Location: LCCOMB_X12_Y12_N30
\display0|decode~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~3_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\ & ((\m_ula|Mux3~7_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\))) 
-- # (!\m_ula|Mux3~7_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\,
	combout => \display0|decode~3_combout\);

-- Location: LCCOMB_X12_Y12_N0
\display0|decode~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~4_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\ & (\m_ula|Mux3~7_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\ 
-- & ((\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ & (\m_ula|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\,
	combout => \display0|decode~4_combout\);

-- Location: LCCOMB_X12_Y12_N4
\display0|decode~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~5_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\ & ((\m_ula|Mux3~7_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\))) # (!\m_ula|Mux3~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ & \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\,
	combout => \display0|decode~5_combout\);

-- Location: LCCOMB_X12_Y12_N6
\display0|decode~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\) # 
-- (!\m_ula|Mux3~7_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~46_combout\,
	combout => \display0|decode~6_combout\);

-- Location: LCCOMB_X26_Y12_N12
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \m_ula|result[4]~4_combout\ $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\m_ula|result[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[4]~4_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X26_Y12_N14
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\m_ula|result[5]~5_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\m_ula|result[5]~5_combout\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\m_ula|result[5]~5_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[5]~5_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X26_Y12_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X26_Y12_N20
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X26_Y11_N0
\Div1|auto_generated|divider|divider|StageOut[23]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~26_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|result[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|result[6]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X26_Y12_N10
\Div1|auto_generated|divider|divider|StageOut[22]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~28_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|result[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|result[5]~5_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~28_combout\);

-- Location: LCCOMB_X26_Y12_N6
\Div1|auto_generated|divider|divider|StageOut[21]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~30_combout\ = (\m_ula|result[4]~4_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[4]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~30_combout\);

-- Location: LCCOMB_X26_Y11_N2
\Div1|auto_generated|divider|divider|StageOut[20]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~32_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~32_combout\);

-- Location: LCCOMB_X26_Y11_N20
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[20]~33_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~32_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~33_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~33_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~32_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X26_Y11_N22
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[21]~31_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[21]~30_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~31_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~30_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~31_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~30_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~31_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~30_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X26_Y11_N26
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~27_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~26_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~27_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X26_Y11_N28
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X26_Y12_N26
\Div1|auto_generated|divider|divider|StageOut[28]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~47_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\m_ula|result[5]~5_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \m_ula|result[5]~5_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~47_combout\);

-- Location: LCCOMB_X25_Y11_N16
\Div1|auto_generated|divider|divider|StageOut[27]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X26_Y11_N8
\Div1|auto_generated|divider|divider|StageOut[26]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\m_ula|Mux0~9_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux0~9_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X25_Y11_N4
\Div1|auto_generated|divider|divider|StageOut[25]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~39_combout\ = (\m_ula|Mux1~5_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~5_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~39_combout\);

-- Location: LCCOMB_X26_Y11_N16
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~34_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~47_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~47_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X26_Y11_N18
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y13_N24
\comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X26_Y12_N22
\Div1|auto_generated|divider|divider|StageOut[27]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~48_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\m_ula|result[4]~4_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[4]~4_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~48_combout\);

-- Location: LCCOMB_X25_Y11_N28
\Div1|auto_generated|divider|divider|StageOut[33]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~46_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~48_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[27]~48_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~46_combout\);

-- Location: LCCOMB_X25_Y11_N30
\Div1|auto_generated|divider|divider|StageOut[32]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~49_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\m_ula|Mux0~9_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~9_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~49_combout\);

-- Location: LCCOMB_X25_Y11_N2
\Div1|auto_generated|divider|divider|StageOut[31]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~42_combout\ = (\m_ula|Mux1~5_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~5_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~42_combout\);

-- Location: LCCOMB_X25_Y11_N14
\Div1|auto_generated|divider|divider|StageOut[30]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~44_combout\ = (\m_ula|Mux2~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~44_combout\);

-- Location: LCCOMB_X25_Y11_N18
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~45_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~45_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~44_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X25_Y11_N20
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~43_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~42_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~43_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~42_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X25_Y11_N22
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~41_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X25_Y11_N24
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~40_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~46_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~40_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~46_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y11_N26
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y11_N0
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = \m_ula|Mux1~5_combout\ $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY(\m_ula|Mux1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~5_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X24_Y11_N2
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\m_ula|Mux0~9_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & VCC)) # (!\m_ula|Mux0~9_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\m_ula|Mux0~9_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux0~9_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X24_Y11_N4
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\m_ula|result[4]~4_combout\ & ((GND) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\))) # (!\m_ula|result[4]~4_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ $ (GND)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\m_ula|result[4]~4_combout\) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[4]~4_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X24_Y11_N6
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\m_ula|result[5]~5_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # (!\m_ula|result[5]~5_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (!\m_ula|result[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[5]~5_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X24_Y11_N8
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\m_ula|result[6]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ $ (GND))) # (!\m_ula|result[6]~6_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((\m_ula|result[6]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[6]~6_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X24_Y11_N10
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY(!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X24_Y11_N12
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X24_Y10_N30
\Div2|auto_generated|divider|divider|StageOut[16]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~83_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\m_ula|result[4]~4_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \m_ula|result[4]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~83_combout\);

-- Location: LCCOMB_X24_Y10_N0
\Mod1|auto_generated|divider|divider|StageOut[62]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[62]~0_combout\ = (\m_ula|result[6]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[6]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[62]~0_combout\);

-- Location: LCCOMB_X24_Y10_N18
\Mod1|auto_generated|divider|divider|StageOut[61]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[61]~2_combout\ = (\m_ula|result[5]~5_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[5]~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[61]~2_combout\);

-- Location: LCCOMB_X24_Y10_N22
\Mod1|auto_generated|divider|divider|StageOut[60]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[60]~4_combout\ = (\m_ula|result[4]~4_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result[4]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[60]~4_combout\);

-- Location: LCCOMB_X24_Y10_N12
\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X24_Y11_N24
\Div2|auto_generated|divider|divider|StageOut[18]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~81_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\m_ula|result[6]~6_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[6]~6_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~81_combout\);

-- Location: LCCOMB_X24_Y10_N28
\Div2|auto_generated|divider|divider|StageOut[17]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~82_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\m_ula|result[5]~5_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \m_ula|result[5]~5_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~82_combout\);

-- Location: LCCOMB_X24_Y10_N14
\Div2|auto_generated|divider|divider|StageOut[16]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~66_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~66_combout\);

-- Location: LCCOMB_X24_Y11_N28
\Div2|auto_generated|divider|divider|StageOut[15]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~85_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\m_ula|Mux0~9_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~85_combout\);

-- Location: LCCOMB_X25_Y10_N8
\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[17]~65_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~82_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[17]~65_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~82_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[17]~65_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[17]~65_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[17]~82_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X25_Y10_N10
\Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[18]~64_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[18]~81_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[18]~64_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[18]~81_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y10_N12
\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y10_N26
\Div2|auto_generated|divider|divider|StageOut[22]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~78_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[16]~83_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[16]~83_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~78_combout\);

-- Location: LCCOMB_X25_Y10_N0
\Div2|auto_generated|divider|divider|StageOut[23]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~67_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~67_combout\);

-- Location: LCCOMB_X25_Y10_N30
\Div2|auto_generated|divider|divider|StageOut[21]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~69_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[15]~84_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[15]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[15]~84_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[15]~85_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~69_combout\);

-- Location: LCCOMB_X24_Y11_N14
\Div2|auto_generated|divider|divider|StageOut[20]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~86_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\m_ula|Mux1~5_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|Mux1~5_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~86_combout\);

-- Location: LCCOMB_X25_Y10_N18
\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[21]~70_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[21]~69_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~70_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[21]~69_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[21]~70_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~69_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[21]~70_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~69_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X25_Y10_N22
\Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[23]~77_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[23]~67_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[23]~77_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[23]~67_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y10_N24
\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y10_N28
\Div2|auto_generated|divider|divider|StageOut[28]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~79_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~78_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[22]~78_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~79_combout\);

-- Location: LCCOMB_X26_Y10_N28
\Div2|auto_generated|divider|divider|StageOut[27]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~72_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~72_combout\);

-- Location: LCCOMB_X24_Y11_N16
\Div2|auto_generated|divider|divider|StageOut[20]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~87_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\m_ula|Mux1~5_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|Mux1~5_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~87_combout\);

-- Location: LCCOMB_X26_Y10_N30
\Div2|auto_generated|divider|divider|StageOut[26]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~73_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[20]~86_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[20]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~86_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[20]~87_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X26_Y10_N18
\Div2|auto_generated|divider|divider|StageOut[25]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~75_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \m_ula|Mux2~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X26_Y10_N0
\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[25]~76_combout\) # (\Div2|auto_generated|divider|divider|StageOut[25]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[25]~76_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datad => VCC,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X26_Y10_N2
\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[26]~74_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[26]~74_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X26_Y10_N4
\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[27]~80_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[27]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[27]~80_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[27]~72_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X26_Y10_N6
\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[28]~71_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[28]~79_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[28]~71_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[28]~79_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X26_Y10_N8
\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y13_N2
\comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\LessThan0~0_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\LessThan0~0_combout\ & (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X25_Y13_N14
\comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X25_Y13_N10
\comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \comb~9_combout\);

-- Location: LCCOMB_X25_Y13_N20
\display1|decode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~0_combout\ = (\comb~7_combout\ & (\comb~9_combout\ & (\comb~8_combout\ $ (\comb~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datab => \comb~6_combout\,
	datac => \comb~7_combout\,
	datad => \comb~9_combout\,
	combout => \display1|decode~0_combout\);

-- Location: LCCOMB_X25_Y13_N30
\display1|decode~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~1_combout\ = (\LessThan0~0_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\LessThan0~0_combout\ & (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display1|decode~1_combout\);

-- Location: LCCOMB_X25_Y13_N0
\display1|decode~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~2_combout\ = (!\comb~8_combout\ & (\comb~9_combout\ & (\display1|decode~1_combout\ $ (\comb~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datab => \display1|decode~1_combout\,
	datac => \comb~7_combout\,
	datad => \comb~9_combout\,
	combout => \display1|decode~2_combout\);

-- Location: LCCOMB_X25_Y13_N16
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y13_N18
\display1|decode~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~3_combout\ = (\comb~8_combout\ & (\comb~9_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \LessThan0~0_combout\,
	datad => \comb~9_combout\,
	combout => \display1|decode~3_combout\);

-- Location: LCCOMB_X25_Y13_N28
\display1|decode~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~4_combout\ = (!\comb~7_combout\ & (\display1|decode~3_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \comb~7_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \display1|decode~3_combout\,
	combout => \display1|decode~4_combout\);

-- Location: LCCOMB_X25_Y13_N22
\display1|decode~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~5_combout\ = (\comb~9_combout\ & ((\comb~8_combout\ & (!\display1|decode~1_combout\ & \comb~7_combout\)) # (!\comb~8_combout\ & (\display1|decode~1_combout\ $ (!\comb~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datab => \display1|decode~1_combout\,
	datac => \comb~7_combout\,
	datad => \comb~9_combout\,
	combout => \display1|decode~5_combout\);

-- Location: LCCOMB_X25_Y13_N8
\display1|decode~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~6_combout\ = (\comb~7_combout\ & ((\comb~8_combout\ & (!\comb~6_combout\)) # (!\comb~8_combout\ & ((\comb~9_combout\))))) # (!\comb~7_combout\ & (((!\comb~6_combout\ & \comb~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datab => \comb~6_combout\,
	datac => \comb~7_combout\,
	datad => \comb~9_combout\,
	combout => \display1|decode~6_combout\);

-- Location: LCCOMB_X25_Y13_N26
\display1|decode~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~7_combout\ = (\comb~9_combout\ & ((\comb~8_combout\ & ((!\comb~7_combout\) # (!\comb~6_combout\))) # (!\comb~8_combout\ & (!\comb~6_combout\ & !\comb~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datab => \comb~6_combout\,
	datac => \comb~7_combout\,
	datad => \comb~9_combout\,
	combout => \display1|decode~7_combout\);

-- Location: LCCOMB_X25_Y13_N12
\display1|decode~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~8_combout\ = ((\comb~8_combout\ & ((!\comb~7_combout\))) # (!\comb~8_combout\ & ((\comb~6_combout\) # (\comb~7_combout\)))) # (!\comb~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datab => \comb~6_combout\,
	datac => \comb~7_combout\,
	datad => \comb~9_combout\,
	combout => \display1|decode~8_combout\);

-- Location: LCCOMB_X24_Y5_N16
\Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY(\m_ula|Mux1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~5_combout\,
	datad => VCC,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X24_Y5_N18
\Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\m_ula|Mux0~9_combout\ & !\Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux0~9_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X24_Y5_N20
\Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\m_ula|result[4]~4_combout\) # (!\Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[4]~4_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X24_Y5_N22
\Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY((!\Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\) # (!\m_ula|result[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[5]~5_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X24_Y5_N24
\Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((\m_ula|result[6]~6_combout\ & !\Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[6]~6_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X24_Y5_N26
\Div4|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY(!\Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X24_Y5_N28
\Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div4|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\latch_ula~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_latch_ula);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m_ula|Mux3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m_ula|Mux2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m_ula|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m_ula|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m_ula|result[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m_ula|result[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m_ula|result[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(9));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display0|decode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display0|decode~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display0|decode~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display0|decode~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display0|decode~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display0|decode~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display0|ALT_INV_decode~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(7));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1|decode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1|decode~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1|decode~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1|decode~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1|decode~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1|decode~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1|ALT_INV_decode~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(7));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(7));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(7));
END structure;


