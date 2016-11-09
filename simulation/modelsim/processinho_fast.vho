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

-- DATE "11/09/2016 16:09:13"

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
-- latch_ula	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- HEX0[7]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[7]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[7]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ula_operation[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \m_ula|Add1~0_combout\ : std_logic;
SIGNAL \m_ula|Add2~0_combout\ : std_logic;
SIGNAL \m_ula|Add2~1\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \m_ula|Add2~2_combout\ : std_logic;
SIGNAL \m_ula|Add2~3\ : std_logic;
SIGNAL \m_ula|Add2~4_combout\ : std_logic;
SIGNAL \m_ula|Add2~5\ : std_logic;
SIGNAL \m_ula|Add1~5\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \m_ula|Add1~6_combout\ : std_logic;
SIGNAL \m_ula|Add2~6_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \m_ula|Mux3~1_combout\ : std_logic;
SIGNAL \m_ula|Mux3~4_combout\ : std_logic;
SIGNAL \m_ula|LessThan0~0_combout\ : std_logic;
SIGNAL \m_ula|LessThan0~1_combout\ : std_logic;
SIGNAL \m_ula|Mux3~5_combout\ : std_logic;
SIGNAL \m_ula|Mux3~6_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~5_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\ : std_logic;
SIGNAL \m_ula|Mux1~2_combout\ : std_logic;
SIGNAL \m_ula|Mux0~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~37_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~45_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \setRegA~combout\ : std_logic;
SIGNAL \setRegB~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \m_ula|Mux3~2_combout\ : std_logic;
SIGNAL \m_ula|Mux3~3_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~8_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \m_ula|Mux3~7_combout\ : std_logic;
SIGNAL \m_ula|Mux2~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~0_combout\ : std_logic;
SIGNAL \m_ula|Mux3~0_combout\ : std_logic;
SIGNAL \m_ula|Mux3~8_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \m_ula|Mux1~1_combout\ : std_logic;
SIGNAL \m_ula|Add1~1\ : std_logic;
SIGNAL \m_ula|Add1~2_combout\ : std_logic;
SIGNAL \m_ula|Mux1~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~1\ : std_logic;
SIGNAL \m_ula|Add0~2_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \m_ula|Mux2~2_combout\ : std_logic;
SIGNAL \m_ula|Mux0~0_combout\ : std_logic;
SIGNAL \m_ula|Mux2~3_combout\ : std_logic;
SIGNAL \m_ula|result~1_combout\ : std_logic;
SIGNAL \m_ula|Mux2~4_combout\ : std_logic;
SIGNAL \m_ula|Mux2~5_combout\ : std_logic;
SIGNAL \m_ula|Mux2~1_combout\ : std_logic;
SIGNAL \m_ula|Mux2~6_combout\ : std_logic;
SIGNAL \m_ula|Mux1~3_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \m_ula|Add0~3\ : std_logic;
SIGNAL \m_ula|Add0~4_combout\ : std_logic;
SIGNAL \m_ula|Mux1~4_combout\ : std_logic;
SIGNAL \m_ula|Add1~3\ : std_logic;
SIGNAL \m_ula|Add1~4_combout\ : std_logic;
SIGNAL \m_ula|Mux1~5_combout\ : std_logic;
SIGNAL \m_ula|result~3_combout\ : std_logic;
SIGNAL \m_ula|Mux1~6_combout\ : std_logic;
SIGNAL \m_ula|Mux1~7_combout\ : std_logic;
SIGNAL \m_ula|Mux1~8_combout\ : std_logic;
SIGNAL \m_ula|Mux0~1_combout\ : std_logic;
SIGNAL \m_ula|Mux0~3_combout\ : std_logic;
SIGNAL \m_ula|Add0~5\ : std_logic;
SIGNAL \m_ula|Add0~6_combout\ : std_logic;
SIGNAL \m_ula|Mux0~6_combout\ : std_logic;
SIGNAL \m_ula|Mux0~4_combout\ : std_logic;
SIGNAL \m_ula|Mux0~5_combout\ : std_logic;
SIGNAL \m_ula|Mux0~7_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[0][3]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \m_ula|Mux0~8_combout\ : std_logic;
SIGNAL \m_ula|Mux0~9_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \m_ula|result[4]~4_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|decoder_node[1][3]~combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \m_ula|result[5]~5_combout\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \m_ula|result[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \BCDCODE[0]~1\ : std_logic;
SIGNAL \BCDCODE[1]~3\ : std_logic;
SIGNAL \BCDCODE[2]~5\ : std_logic;
SIGNAL \BCDCODE[3]~6_combout\ : std_logic;
SIGNAL \disp|Add3~6_combout\ : std_logic;
SIGNAL \BCDCODE[2]~4_combout\ : std_logic;
SIGNAL \disp|Add3~4_combout\ : std_logic;
SIGNAL \BCDCODE[0]~0_combout\ : std_logic;
SIGNAL \disp|Add3~0_combout\ : std_logic;
SIGNAL \BCDCODE[1]~2_combout\ : std_logic;
SIGNAL \disp|Add3~2_combout\ : std_logic;
SIGNAL \disp|Mux6~0_combout\ : std_logic;
SIGNAL \disp|Mux5~0_combout\ : std_logic;
SIGNAL \disp|Mux4~0_combout\ : std_logic;
SIGNAL \disp|Mux3~0_combout\ : std_logic;
SIGNAL \disp|Mux2~0_combout\ : std_logic;
SIGNAL \disp|Mux1~0_combout\ : std_logic;
SIGNAL \disp|Mux0~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~39_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \BCDCODE[3]~7\ : std_logic;
SIGNAL \BCDCODE[4]~9\ : std_logic;
SIGNAL \BCDCODE[5]~10_combout\ : std_logic;
SIGNAL \BCDCODE[4]~8_combout\ : std_logic;
SIGNAL \disp|Mux13~0_combout\ : std_logic;
SIGNAL \disp|Mux11~0_combout\ : std_logic;
SIGNAL \disp|Mux8~0_combout\ : std_logic;
SIGNAL \regB|valueOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regA|valueOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \operando~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ula_operation~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_BCDCODE[5]~10_combout\ : std_logic;

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
\disp|ALT_INV_Mux0~0_combout\ <= NOT \disp|Mux0~0_combout\;
\ALT_INV_BCDCODE[5]~10_combout\ <= NOT \BCDCODE[5]~10_combout\;

-- Location: LCCOMB_X36_Y8_N0
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

-- Location: LCCOMB_X36_Y8_N10
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

-- Location: LCCOMB_X37_Y5_N14
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

-- Location: LCCOMB_X37_Y5_N18
\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\regB|valueOut\(2) $ (\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\ $ (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\regB|valueOut\(2) & (\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\ & !\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # 
-- (!\regB|valueOut\(2) & ((\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\) # (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X36_Y8_N12
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

-- Location: LCCOMB_X36_Y8_N14
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

-- Location: LCCOMB_X36_Y8_N4
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

-- Location: LCCOMB_X37_Y6_N18
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

-- Location: LCCOMB_X36_Y8_N6
\m_ula|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~6_combout\ = \m_ula|Add1~5\ $ (!\regA|valueOut\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \regA|valueOut\(3),
	cin => \m_ula|Add1~5\,
	combout => \m_ula|Add1~6_combout\);

-- Location: LCCOMB_X36_Y8_N16
\m_ula|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add2~6_combout\ = \m_ula|Add2~5\ $ (!\regA|valueOut\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \regA|valueOut\(3),
	cin => \m_ula|Add2~5\,
	combout => \m_ula|Add2~6_combout\);

-- Location: LCCOMB_X37_Y6_N6
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

-- Location: LCCOMB_X36_Y11_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \m_ula|result[4]~4_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\m_ula|result[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[4]~4_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X36_Y11_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\m_ula|result[5]~5_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\m_ula|result[5]~5_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\m_ula|result[5]~5_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[5]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X36_Y11_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\m_ula|result[6]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\m_ula|result[6]~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\m_ula|result[6]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[6]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X36_Y11_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X36_Y11_N16
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X34_Y10_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~28_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~27_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~28_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~27_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~28_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~27_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~28_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~27_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X34_Y10_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~26_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~26_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X37_Y10_N2
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY(\m_ula|Mux1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux1~8_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X37_Y10_N4
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\m_ula|Mux0~9_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux0~9_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X37_Y10_N6
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\m_ula|result[4]~4_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result[4]~4_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X37_Y10_N8
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\) # (!\m_ula|result[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[5]~5_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X37_Y10_N10
\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((\m_ula|result[6]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[6]~6_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X37_Y10_N12
\Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY(!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X37_Y10_N14
\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X37_Y10_N22
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

-- Location: LCCOMB_X37_Y10_N26
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

-- Location: LCCOMB_X36_Y10_N2
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~22_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~42_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~22_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~42_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~22_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~42_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~22_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~42_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X36_Y10_N4
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~21_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[22]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~21_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~21_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X36_Y11_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X37_Y11_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[30]~31_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~32_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[30]~31_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~31_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~32_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X37_Y11_N16
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X37_Y11_N18
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~45_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~33_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~33_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X37_Y11_N20
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

-- Location: LCCOMB_X33_Y11_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[38]~39_combout\ & (!\Add0~5\)) # (!\Mod0|auto_generated|divider|divider|StageOut[38]~39_combout\ & ((\Add0~5\) # 
-- (GND))))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[38]~39_combout\ & (\Add0~5\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[38]~39_combout\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\Add0~5\) # (!\Mod0|auto_generated|divider|divider|StageOut[38]~39_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[38]~39_combout\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~39_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X36_Y7_N20
\m_ula|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~1_combout\ = (!\ula_operation~combout\(2) & ((\ula_operation~combout\(1) & ((\m_ula|Mult0|mult_core|decoder_node[0][0]~combout\))) # (!\ula_operation~combout\(1) & (\m_ula|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add0~0_combout\,
	datab => \ula_operation~combout\(1),
	datac => \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\,
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux3~1_combout\);

-- Location: LCCOMB_X36_Y7_N28
\m_ula|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~4_combout\ = (\ula_operation~combout\(2) & ((\regA|valueOut\(0)) # (\regB|valueOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(0),
	datac => \regB|valueOut\(0),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux3~4_combout\);

-- Location: LCCOMB_X38_Y8_N16
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

-- Location: LCCOMB_X38_Y8_N18
\m_ula|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|LessThan0~1_combout\ = (!\regA|valueOut\(3) & ((\regB|valueOut\(2) & ((\m_ula|LessThan0~0_combout\) # (!\regA|valueOut\(2)))) # (!\regB|valueOut\(2) & (!\regA|valueOut\(2) & \m_ula|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \regA|valueOut\(2),
	datac => \m_ula|LessThan0~0_combout\,
	datad => \regA|valueOut\(3),
	combout => \m_ula|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y7_N6
\m_ula|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~5_combout\ = (!\ula_operation~combout\(2) & ((\m_ula|LessThan0~1_combout\ & ((\m_ula|Add1~0_combout\))) # (!\m_ula|LessThan0~1_combout\ & (\m_ula|Add2~0_combout\))))

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
	combout => \m_ula|Mux3~5_combout\);

-- Location: LCCOMB_X36_Y7_N16
\m_ula|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~6_combout\ = (\ula_operation~combout\(1) & ((\m_ula|Mux3~5_combout\) # (\m_ula|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~5_combout\,
	datab => \m_ula|Mux3~4_combout\,
	datac => \ula_operation~combout\(1),
	combout => \m_ula|Mux3~6_combout\);

-- Location: LCCOMB_X37_Y5_N24
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

-- Location: LCCOMB_X37_Y5_N28
\m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\ = (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\regA|valueOut\(1)))) # (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ 
-- & (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \regA|valueOut\(1),
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\);

-- Location: LCCOMB_X36_Y7_N10
\m_ula|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~2_combout\ = (\ula_operation~combout\(2) & ((\ula_operation~combout\(0)) # (\ula_operation~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datac => \ula_operation~combout\(1),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux1~2_combout\);

-- Location: LCCOMB_X38_Y8_N10
\m_ula|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~2_combout\ = (!\ula_operation~combout\(2) & ((\m_ula|LessThan0~1_combout\ & ((\m_ula|Add1~6_combout\))) # (!\m_ula|LessThan0~1_combout\ & (\m_ula|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add2~6_combout\,
	datab => \m_ula|LessThan0~1_combout\,
	datac => \m_ula|Add1~6_combout\,
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux0~2_combout\);

-- Location: LCCOMB_X36_Y9_N8
\Div0|auto_generated|divider|divider|StageOut[23]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~20_combout\);

-- Location: LCCOMB_X36_Y9_N10
\Div0|auto_generated|divider|divider|StageOut[22]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~21_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~21_combout\);

-- Location: LCCOMB_X36_Y9_N4
\Div0|auto_generated|divider|divider|StageOut[21]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~22_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~22_combout\);

-- Location: LCCOMB_X36_Y9_N24
\Div0|auto_generated|divider|divider|StageOut[20]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~24_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \m_ula|Mux0~9_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~24_combout\);

-- Location: LCCOMB_X34_Y10_N6
\Div0|auto_generated|divider|divider|StageOut[26]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~28_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~28_combout\);

-- Location: LCCOMB_X34_Y10_N10
\Div0|auto_generated|divider|divider|StageOut[25]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~30_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \m_ula|Mux1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~30_combout\);

-- Location: LCCOMB_X33_Y10_N8
\Div0|auto_generated|divider|divider|StageOut[33]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~31_combout\);

-- Location: LCCOMB_X33_Y10_N10
\Div0|auto_generated|divider|divider|StageOut[32]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~32_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~32_combout\);

-- Location: LCCOMB_X33_Y10_N12
\Div0|auto_generated|divider|divider|StageOut[31]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~33_combout\ = (\m_ula|Mux1~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux1~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~33_combout\);

-- Location: LCCOMB_X33_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[30]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~35_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \m_ula|Mux2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \m_ula|Mux2~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~35_combout\);

-- Location: LCCOMB_X36_Y10_N18
\Mod0|auto_generated|divider|divider|StageOut[23]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\);

-- Location: LCCOMB_X36_Y10_N14
\Mod0|auto_generated|divider|divider|StageOut[21]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~22_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~22_combout\);

-- Location: LCCOMB_X36_Y10_N16
\Mod0|auto_generated|divider|divider|StageOut[20]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~23_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~23_combout\);

-- Location: LCCOMB_X36_Y10_N28
\Mod0|auto_generated|divider|divider|StageOut[28]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~25_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~25_combout\);

-- Location: LCCOMB_X36_Y11_N0
\Mod0|auto_generated|divider|divider|StageOut[27]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\);

-- Location: LCCOMB_X36_Y11_N4
\Mod0|auto_generated|divider|divider|StageOut[26]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~28_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~28_combout\);

-- Location: LCCOMB_X36_Y11_N6
\Mod0|auto_generated|divider|divider|StageOut[25]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~29_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \m_ula|Mux1~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~29_combout\);

-- Location: LCCOMB_X37_Y11_N24
\Mod0|auto_generated|divider|divider|StageOut[30]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~31_combout\ = (\m_ula|Mux2~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux2~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~31_combout\);

-- Location: LCCOMB_X37_Y11_N4
\Mod0|auto_generated|divider|divider|StageOut[33]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~33_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~33_combout\);

-- Location: LCCOMB_X37_Y11_N22
\Mod0|auto_generated|divider|divider|StageOut[36]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~37_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\m_ula|Mux2~6_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux2~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~37_combout\);

-- Location: LCCOMB_X37_Y6_N10
\m_ula|Mult0|mult_core|decoder_node[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[0][1]~combout\ = (\regB|valueOut\(0) & \regA|valueOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|valueOut\(0),
	datad => \regA|valueOut\(1),
	combout => \m_ula|Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X38_Y8_N4
\m_ula|Mult0|mult_core|decoder_node[2][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[2][0]~combout\ = (\regA|valueOut\(0) & \regB|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(0),
	datac => \regB|valueOut\(2),
	combout => \m_ula|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X37_Y7_N18
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

-- Location: LCCOMB_X37_Y6_N16
\m_ula|Mult0|mult_core|decoder_node[2][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[2][1]~combout\ = (\regA|valueOut\(1) & \regB|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datac => \regB|valueOut\(2),
	combout => \m_ula|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X37_Y6_N14
\m_ula|Mult0|mult_core|decoder_node[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ = (\regA|valueOut\(3) & \regB|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(3),
	datac => \regB|valueOut\(2),
	combout => \m_ula|Mult0|mult_core|decoder_node[2][3]~combout\);

-- Location: LCCOMB_X36_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~38_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~38_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X36_Y9_N28
\Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[21]~39_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~39_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X36_Y10_N24
\Mod0|auto_generated|divider|divider|StageOut[22]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~41_combout\ = (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\m_ula|Mux0~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \m_ula|Mux0~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~41_combout\);

-- Location: LCCOMB_X36_Y11_N20
\Mod0|auto_generated|divider|divider|StageOut[33]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~45_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~45_combout\);

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

-- Location: LCFF_X36_Y8_N1
\regA|valueOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(0),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(0));

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

-- Location: LCFF_X36_Y8_N19
\regB|valueOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(0),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(0));

-- Location: LCCOMB_X36_Y7_N8
\m_ula|Mult0|mult_core|decoder_node[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\ = (\regA|valueOut\(0) & \regB|valueOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(0),
	datac => \regB|valueOut\(0),
	combout => \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\);

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

-- Location: LCCOMB_X36_Y7_N14
\m_ula|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~2_combout\ = (!\ula_operation~combout\(1) & \ula_operation~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_operation~combout\(1),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux3~2_combout\);

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

-- Location: LCCOMB_X36_Y7_N26
\m_ula|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~3_combout\ = (\ula_operation~combout\(0) & ((\m_ula|Mux3~1_combout\) # ((\m_ula|Mult0|mult_core|decoder_node[0][0]~combout\ & \m_ula|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~1_combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[0][0]~combout\,
	datac => \m_ula|Mux3~2_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux3~3_combout\);

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

-- Location: LCFF_X36_Y8_N7
\regA|valueOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(3),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(3));

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

-- Location: LCFF_X37_Y5_N19
\regB|valueOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(2),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(2));

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

-- Location: LCFF_X37_Y5_N17
\regB|valueOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(1),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(1));

-- Location: LCCOMB_X37_Y5_N0
\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\regB|valueOut\(2)) # ((\regB|valueOut\(0) & (!\regA|valueOut\(2) & \regB|valueOut\(1))) # (!\regB|valueOut\(0) & ((!\regB|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \regB|valueOut\(0),
	datac => \regB|valueOut\(2),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X37_Y5_N2
\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\ = (\regA|valueOut\(3) & \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regA|valueOut\(3),
	datad => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~3_combout\);

-- Location: LCCOMB_X38_Y8_N20
\m_ula|Div0|auto_generated|divider|divider|selnose[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ = (!\regB|valueOut\(2) & ((\regA|valueOut\(3)) # (!\regB|valueOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datac => \regB|valueOut\(1),
	datad => \regA|valueOut\(3),
	combout => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X37_Y5_N22
\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\ = (\regA|valueOut\(2) & ((!\m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\regB|valueOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \regB|valueOut\(0),
	datad => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\);

-- Location: LCCOMB_X37_Y5_N16
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

-- Location: LCCOMB_X37_Y5_N20
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

-- Location: LCCOMB_X37_Y5_N30
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

-- Location: LCCOMB_X37_Y5_N26
\m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\ = (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\))) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~4_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\);

-- Location: LCCOMB_X37_Y5_N4
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\regA|valueOut\(0)) # (!\regB|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datab => \regB|valueOut\(0),
	datad => VCC,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X37_Y5_N6
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\ & (\regB|valueOut\(1) & !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\ & ((\regB|valueOut\(1)) # (!\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~7_combout\,
	datab => \regB|valueOut\(1),
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X37_Y5_N8
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\regB|valueOut\(2) & (\m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\ & !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # 
-- (!\regB|valueOut\(2) & ((\m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\) # (!\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~6_combout\,
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X37_Y5_N10
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((!\m_ula|Div0|auto_generated|divider|divider|StageOut[10]~5_combout\ & (!\m_ula|Div0|auto_generated|divider|divider|StageOut[10]~8_combout\ & 
-- !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datab => \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~8_combout\,
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X37_Y5_N12
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

-- Location: LCCOMB_X36_Y7_N2
\m_ula|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~7_combout\ = (!\ula_operation~combout\(0) & ((\m_ula|Mux3~6_combout\) # ((\m_ula|Mux3~2_combout\ & !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~6_combout\,
	datab => \m_ula|Mux3~2_combout\,
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux3~7_combout\);

-- Location: LCCOMB_X36_Y7_N0
\m_ula|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~0_combout\ = (\ula_operation~combout\(3) & (!\ula_operation~combout\(1) & !\ula_operation~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(3),
	datac => \ula_operation~combout\(1),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y8_N18
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

-- Location: LCCOMB_X36_Y7_N18
\m_ula|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~0_combout\ = (\m_ula|Mux2~0_combout\ & ((\ula_operation~combout\(0) & ((!\regA|valueOut\(0)))) # (!\ula_operation~combout\(0) & (\m_ula|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datab => \m_ula|Mux2~0_combout\,
	datac => \m_ula|Add0~0_combout\,
	datad => \regA|valueOut\(0),
	combout => \m_ula|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y7_N12
\m_ula|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~8_combout\ = (\m_ula|Mux3~0_combout\) # ((!\ula_operation~combout\(3) & ((\m_ula|Mux3~3_combout\) # (\m_ula|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(3),
	datab => \m_ula|Mux3~3_combout\,
	datac => \m_ula|Mux3~7_combout\,
	datad => \m_ula|Mux3~0_combout\,
	combout => \m_ula|Mux3~8_combout\);

-- Location: LCCOMB_X37_Y7_N26
\m_ula|Mult0|mult_core|decoder_node[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ = (\regA|valueOut\(1) & \regB|valueOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X36_Y7_N24
\m_ula|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~1_combout\ = ((!\ula_operation~combout\(0) & \ula_operation~combout\(1))) # (!\ula_operation~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datac => \ula_operation~combout\(1),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux1~1_combout\);

-- Location: LCFF_X37_Y5_N15
\regA|valueOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(1),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(1));

-- Location: LCCOMB_X36_Y8_N2
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

-- Location: LCCOMB_X36_Y7_N30
\m_ula|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~0_combout\ = (\ula_operation~combout\(1) & ((\m_ula|LessThan0~1_combout\) # (\ula_operation~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|LessThan0~1_combout\,
	datac => \ula_operation~combout\(1),
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y8_N20
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

-- Location: LCCOMB_X37_Y6_N12
\m_ula|Mult0|mult_core|decoder_node[1][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[1][0]~combout\ = (\regA|valueOut\(0) & \regB|valueOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regA|valueOut\(0),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X37_Y6_N0
\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\m_ula|Mult0|mult_core|decoder_node[0][1]~combout\ & (\m_ula|Mult0|mult_core|decoder_node[1][0]~combout\ $ (VCC))) # (!\m_ula|Mult0|mult_core|decoder_node[0][1]~combout\ & 
-- (\m_ula|Mult0|mult_core|decoder_node[1][0]~combout\ & VCC))
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\m_ula|Mult0|mult_core|decoder_node[0][1]~combout\ & \m_ula|Mult0|mult_core|decoder_node[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|decoder_node[0][1]~combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[1][0]~combout\,
	datad => VCC,
	combout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X36_Y8_N8
\m_ula|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~2_combout\ = (\ula_operation~combout\(0) & ((\m_ula|Mux1~0_combout\ & ((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))) # (!\m_ula|Mux1~0_combout\ & (\m_ula|Add0~2_combout\)))) # (!\ula_operation~combout\(0) & 
-- (\m_ula|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datab => \m_ula|Mux1~0_combout\,
	datac => \m_ula|Add0~2_combout\,
	datad => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	combout => \m_ula|Mux2~2_combout\);

-- Location: LCCOMB_X38_Y8_N6
\m_ula|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~0_combout\ = (!\ula_operation~combout\(0) & \ula_operation~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_operation~combout\(0),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y8_N26
\m_ula|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~3_combout\ = (\m_ula|Mux2~2_combout\ & (((\m_ula|Add1~2_combout\) # (!\m_ula|Mux0~0_combout\)))) # (!\m_ula|Mux2~2_combout\ & (\m_ula|Add2~2_combout\ & ((\m_ula|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add2~2_combout\,
	datab => \m_ula|Add1~2_combout\,
	datac => \m_ula|Mux2~2_combout\,
	datad => \m_ula|Mux0~0_combout\,
	combout => \m_ula|Mux2~3_combout\);

-- Location: LCCOMB_X37_Y7_N28
\m_ula|result~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result~1_combout\ = (\regA|valueOut\(1)) # (\regB|valueOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datad => \regB|valueOut\(1),
	combout => \m_ula|result~1_combout\);

-- Location: LCCOMB_X37_Y7_N6
\m_ula|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~4_combout\ = (\m_ula|Mux1~2_combout\ & (\m_ula|Mux1~1_combout\ & ((\m_ula|result~1_combout\)))) # (!\m_ula|Mux1~2_combout\ & (((\m_ula|Mux2~3_combout\)) # (!\m_ula|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~2_combout\,
	datab => \m_ula|Mux1~1_combout\,
	datac => \m_ula|Mux2~3_combout\,
	datad => \m_ula|result~1_combout\,
	combout => \m_ula|Mux2~4_combout\);

-- Location: LCCOMB_X37_Y7_N24
\m_ula|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~5_combout\ = (\m_ula|Mux3~2_combout\ & ((\m_ula|Mux2~4_combout\ & ((!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))) # (!\m_ula|Mux2~4_combout\ & (\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\)))) # 
-- (!\m_ula|Mux3~2_combout\ & (((\m_ula|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~2_combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[1][1]~combout\,
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \m_ula|Mux2~4_combout\,
	combout => \m_ula|Mux2~5_combout\);

-- Location: LCCOMB_X37_Y7_N0
\m_ula|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~1_combout\ = \regA|valueOut\(1) $ (((\ula_operation~combout\(0)) # (\regB|valueOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datac => \ula_operation~combout\(0),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mux2~1_combout\);

-- Location: LCCOMB_X37_Y7_N10
\m_ula|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~6_combout\ = (\m_ula|Mux2~0_combout\ & ((\m_ula|Mux2~1_combout\) # ((!\ula_operation~combout\(3) & \m_ula|Mux2~5_combout\)))) # (!\m_ula|Mux2~0_combout\ & (!\ula_operation~combout\(3) & (\m_ula|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~0_combout\,
	datab => \ula_operation~combout\(3),
	datac => \m_ula|Mux2~5_combout\,
	datad => \m_ula|Mux2~1_combout\,
	combout => \m_ula|Mux2~6_combout\);

-- Location: LCCOMB_X37_Y7_N20
\m_ula|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~3_combout\ = \regA|valueOut\(2) $ (((\ula_operation~combout\(0)) # (\regB|valueOut\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datac => \ula_operation~combout\(0),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mux1~3_combout\);

-- Location: LCCOMB_X37_Y7_N22
\m_ula|Mult0|mult_core|decoder_node[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[2][2]~combout\ = (\regA|valueOut\(2) & \regB|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mult0|mult_core|decoder_node[2][2]~combout\);

-- Location: LCFF_X36_Y8_N15
\regA|valueOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(2),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(2));

-- Location: LCCOMB_X37_Y7_N8
\m_ula|Div0|auto_generated|divider|divider|selnose[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ = ((\regB|valueOut\(0) & !\regA|valueOut\(2))) # (!\m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|valueOut\(0),
	datac => \regA|valueOut\(2),
	datad => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X36_Y8_N22
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

-- Location: LCCOMB_X36_Y8_N28
\m_ula|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~4_combout\ = (\m_ula|Mux1~0_combout\ & ((\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\) # ((!\ula_operation~combout\(0))))) # (!\m_ula|Mux1~0_combout\ & (((\m_ula|Add0~4_combout\ & 
-- \ula_operation~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \m_ula|Add0~4_combout\,
	datac => \m_ula|Mux1~0_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux1~4_combout\);

-- Location: LCCOMB_X36_Y8_N30
\m_ula|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~5_combout\ = (\m_ula|Mux1~4_combout\ & (((\m_ula|Add1~4_combout\) # (!\m_ula|Mux0~0_combout\)))) # (!\m_ula|Mux1~4_combout\ & (\m_ula|Add2~4_combout\ & ((\m_ula|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add2~4_combout\,
	datab => \m_ula|Mux1~4_combout\,
	datac => \m_ula|Add1~4_combout\,
	datad => \m_ula|Mux0~0_combout\,
	combout => \m_ula|Mux1~5_combout\);

-- Location: LCCOMB_X37_Y7_N2
\m_ula|result~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result~3_combout\ = (\regA|valueOut\(2)) # (\regB|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datad => \regB|valueOut\(2),
	combout => \m_ula|result~3_combout\);

-- Location: LCCOMB_X37_Y7_N12
\m_ula|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~6_combout\ = (\m_ula|Mux1~2_combout\ & (\m_ula|Mux1~1_combout\ & ((\m_ula|result~3_combout\)))) # (!\m_ula|Mux1~2_combout\ & (((\m_ula|Mux1~5_combout\)) # (!\m_ula|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~2_combout\,
	datab => \m_ula|Mux1~1_combout\,
	datac => \m_ula|Mux1~5_combout\,
	datad => \m_ula|result~3_combout\,
	combout => \m_ula|Mux1~6_combout\);

-- Location: LCCOMB_X37_Y7_N30
\m_ula|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~7_combout\ = (\m_ula|Mux3~2_combout\ & ((\m_ula|Mux1~6_combout\ & ((!\m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\))) # (!\m_ula|Mux1~6_combout\ & (\m_ula|Mult0|mult_core|decoder_node[2][2]~combout\)))) # 
-- (!\m_ula|Mux3~2_combout\ & (((\m_ula|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~2_combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[2][2]~combout\,
	datac => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datad => \m_ula|Mux1~6_combout\,
	combout => \m_ula|Mux1~7_combout\);

-- Location: LCCOMB_X37_Y7_N16
\m_ula|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~8_combout\ = (\m_ula|Mux2~0_combout\ & ((\m_ula|Mux1~3_combout\) # ((!\ula_operation~combout\(3) & \m_ula|Mux1~7_combout\)))) # (!\m_ula|Mux2~0_combout\ & (!\ula_operation~combout\(3) & ((\m_ula|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~0_combout\,
	datab => \ula_operation~combout\(3),
	datac => \m_ula|Mux1~3_combout\,
	datad => \m_ula|Mux1~7_combout\,
	combout => \m_ula|Mux1~8_combout\);

-- Location: LCCOMB_X38_Y8_N0
\m_ula|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~1_combout\ = (!\ula_operation~combout\(0) & (!\ula_operation~combout\(3) & \ula_operation~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datac => \ula_operation~combout\(3),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux0~1_combout\);

-- Location: LCCOMB_X38_Y8_N12
\m_ula|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~3_combout\ = (\m_ula|Mux0~1_combout\ & ((\m_ula|Mux0~2_combout\) # ((\ula_operation~combout\(2) & \regA|valueOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~2_combout\,
	datab => \ula_operation~combout\(2),
	datac => \m_ula|Mux0~1_combout\,
	datad => \regA|valueOut\(3),
	combout => \m_ula|Mux0~3_combout\);

-- Location: LCCOMB_X36_Y8_N24
\m_ula|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~6_combout\ = \m_ula|Add0~5\ $ (\regA|valueOut\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \regA|valueOut\(3),
	cin => \m_ula|Add0~5\,
	combout => \m_ula|Add0~6_combout\);

-- Location: LCCOMB_X38_Y8_N2
\m_ula|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~6_combout\ = (\ula_operation~combout\(3) & (\regA|valueOut\(3) $ ((\ula_operation~combout\(0))))) # (!\ula_operation~combout\(3) & (((\ula_operation~combout\(0) & \m_ula|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \ula_operation~combout\(3),
	datac => \ula_operation~combout\(0),
	datad => \m_ula|Add0~6_combout\,
	combout => \m_ula|Mux0~6_combout\);

-- Location: LCCOMB_X38_Y8_N30
\m_ula|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~4_combout\ = (!\ula_operation~combout\(0) & (\ula_operation~combout\(2) & ((\regA|valueOut\(3)) # (!\regB|valueOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \regB|valueOut\(0),
	datac => \ula_operation~combout\(0),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux0~4_combout\);

-- Location: LCCOMB_X38_Y8_N8
\m_ula|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~5_combout\ = (!\regB|valueOut\(2) & (!\ula_operation~combout\(3) & (!\regB|valueOut\(1) & \m_ula|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \ula_operation~combout\(3),
	datac => \regB|valueOut\(1),
	datad => \m_ula|Mux0~4_combout\,
	combout => \m_ula|Mux0~5_combout\);

-- Location: LCCOMB_X38_Y8_N28
\m_ula|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~7_combout\ = (!\ula_operation~combout\(1) & ((\m_ula|Mux0~5_combout\) # ((\m_ula|Mux0~6_combout\ & !\ula_operation~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \m_ula|Mux0~6_combout\,
	datac => \m_ula|Mux0~5_combout\,
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux0~7_combout\);

-- Location: LCCOMB_X37_Y6_N30
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

-- Location: LCCOMB_X38_Y8_N26
\m_ula|Mult0|mult_core|decoder_node[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ = (\regA|valueOut\(2) & \regB|valueOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regA|valueOut\(2),
	datad => \regB|valueOut\(0),
	combout => \m_ula|Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X37_Y6_N2
\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ & (\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\m_ula|Mult0|mult_core|decoder_node[0][2]~combout\ & !\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\m_ula|Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X37_Y6_N4
\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\m_ula|Mult0|mult_core|decoder_node[1][2]~combout\ $ (\m_ula|Mult0|mult_core|decoder_node[0][3]~combout\ $ (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # 
-- (GND)
-- \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\m_ula|Mult0|mult_core|decoder_node[1][2]~combout\ & ((\m_ula|Mult0|mult_core|decoder_node[0][3]~combout\) # (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[1][2]~combout\ & (\m_ula|Mult0|mult_core|decoder_node[0][3]~combout\ & !\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|decoder_node[1][2]~combout\,
	datab => \m_ula|Mult0|mult_core|decoder_node[0][3]~combout\,
	datad => VCC,
	cin => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X37_Y6_N20
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

-- Location: LCCOMB_X38_Y8_N22
\m_ula|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~8_combout\ = (\ula_operation~combout\(0) & (!\ula_operation~combout\(2) & (!\ula_operation~combout\(3) & \ula_operation~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datab => \ula_operation~combout\(2),
	datac => \ula_operation~combout\(3),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux0~8_combout\);

-- Location: LCCOMB_X38_Y8_N24
\m_ula|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~9_combout\ = (\m_ula|Mux0~3_combout\) # ((\m_ula|Mux0~7_combout\) # ((\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & \m_ula|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~3_combout\,
	datab => \m_ula|Mux0~7_combout\,
	datac => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \m_ula|Mux0~8_combout\,
	combout => \m_ula|Mux0~9_combout\);

-- Location: LCCOMB_X37_Y6_N22
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

-- Location: LCCOMB_X37_Y10_N16
\m_ula|result[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result[4]~4_combout\ = (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & \m_ula|Mux0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \m_ula|Mux0~8_combout\,
	combout => \m_ula|result[4]~4_combout\);

-- Location: LCCOMB_X37_Y6_N28
\m_ula|Mult0|mult_core|decoder_node[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|decoder_node[1][3]~combout\ = (\regA|valueOut\(3) & \regB|valueOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(3),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mult0|mult_core|decoder_node[1][3]~combout\);

-- Location: LCCOMB_X37_Y6_N8
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

-- Location: LCCOMB_X37_Y6_N24
\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ & ((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ & ((\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ & (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- !\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\m_ula|Mult0|mult_core|decoder_node[2][3]~combout\ & ((!\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|mult_core|decoder_node[2][3]~combout\,
	datab => \m_ula|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X37_Y10_N0
\m_ula|result[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result[5]~5_combout\ = (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & \m_ula|Mux0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => \m_ula|Mux0~8_combout\,
	combout => \m_ula|result[5]~5_combout\);

-- Location: LCCOMB_X37_Y6_N26
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

-- Location: LCCOMB_X37_Y10_N18
\m_ula|result[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result[6]~6_combout\ = (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & \m_ula|Mux0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => \m_ula|Mux0~8_combout\,
	combout => \m_ula|result[6]~6_combout\);

-- Location: LCCOMB_X37_Y10_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\m_ula|result[5]~5_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\m_ula|result[5]~5_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\m_ula|result[5]~5_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result[5]~5_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X37_Y10_N28
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

-- Location: LCCOMB_X37_Y10_N30
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

-- Location: LCCOMB_X36_Y10_N30
\Mod0|auto_generated|divider|divider|StageOut[23]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\m_ula|Mux0~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X36_Y10_N20
\Mod0|auto_generated|divider|divider|StageOut[22]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~21_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~21_combout\);

-- Location: LCCOMB_X36_Y10_N26
\Mod0|auto_generated|divider|divider|StageOut[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~42_combout\ = (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (\m_ula|Mux0~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datac => \m_ula|Mux0~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~42_combout\);

-- Location: LCCOMB_X36_Y10_N10
\Mod0|auto_generated|divider|divider|StageOut[20]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\);

-- Location: LCCOMB_X36_Y10_N0
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[20]~23_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[20]~23_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~23_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X36_Y10_N6
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X36_Y10_N8
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

-- Location: LCCOMB_X36_Y10_N12
\Mod0|auto_generated|divider|divider|StageOut[28]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~41_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\);

-- Location: LCCOMB_X36_Y10_N22
\Mod0|auto_generated|divider|divider|StageOut[27]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[21]~42_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~42_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\);

-- Location: LCCOMB_X36_Y11_N18
\Mod0|auto_generated|divider|divider|StageOut[26]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~27_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \m_ula|Mux0~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~27_combout\);

-- Location: LCCOMB_X36_Y11_N2
\Mod0|auto_generated|divider|divider|StageOut[25]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \m_ula|Mux1~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\);

-- Location: LCCOMB_X36_Y11_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[25]~29_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[25]~29_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~29_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~30_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X36_Y11_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~28_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~27_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~28_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[26]~27_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[26]~28_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~27_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~28_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~27_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X36_Y11_N28
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[28]~25_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~25_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X36_Y11_N30
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

-- Location: LCCOMB_X37_Y11_N10
\Mod0|auto_generated|divider|divider|StageOut[31]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~36_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~36_combout\);

-- Location: LCCOMB_X37_Y11_N0
\Mod0|auto_generated|divider|divider|StageOut[31]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~35_combout\ = (\m_ula|Mux1~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~35_combout\);

-- Location: LCCOMB_X37_Y11_N2
\Mod0|auto_generated|divider|divider|StageOut[30]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~32_combout\ = (\m_ula|Mux2~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux2~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~32_combout\);

-- Location: LCCOMB_X37_Y11_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~36_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~35_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~36_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~35_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~36_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~35_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~36_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~35_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X37_Y11_N8
\Mod0|auto_generated|divider|divider|StageOut[37]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~36_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[31]~35_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~35_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~38_combout\);

-- Location: LCCOMB_X36_Y9_N22
\Div0|auto_generated|divider|divider|StageOut[22]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~38_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & \m_ula|Mux0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => \m_ula|Mux0~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~38_combout\);

-- Location: LCCOMB_X36_Y9_N0
\Div0|auto_generated|divider|divider|StageOut[21]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~39_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & \m_ula|Mux0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \m_ula|Mux0~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~39_combout\);

-- Location: LCCOMB_X36_Y9_N30
\Div0|auto_generated|divider|divider|StageOut[20]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~23_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \m_ula|Mux0~9_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~23_combout\);

-- Location: LCCOMB_X36_Y9_N12
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[20]~24_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~23_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~24_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~23_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X36_Y9_N14
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~22_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~39_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~22_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~39_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~22_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~39_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~39_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X36_Y9_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~21_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~38_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~21_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~38_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~21_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~21_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~38_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X36_Y9_N26
\Div0|auto_generated|divider|divider|StageOut[23]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~37_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & \m_ula|Mux0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \m_ula|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => \m_ula|Mux0~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~37_combout\);

-- Location: LCCOMB_X36_Y9_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~20_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~37_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~37_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X36_Y9_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X34_Y10_N8
\Div0|auto_generated|divider|divider|StageOut[28]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~25_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~25_combout\);

-- Location: LCCOMB_X34_Y10_N2
\Div0|auto_generated|divider|divider|StageOut[27]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~26_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~26_combout\);

-- Location: LCCOMB_X34_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[26]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~27_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~27_combout\);

-- Location: LCCOMB_X34_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[25]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~29_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|Mux1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \m_ula|Mux1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~29_combout\);

-- Location: LCCOMB_X34_Y10_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[25]~30_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~29_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~30_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~29_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X34_Y10_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~25_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~25_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X34_Y10_N26
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X34_Y10_N12
\Div0|auto_generated|divider|divider|StageOut[33]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~42_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~42_combout\);

-- Location: LCCOMB_X34_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[32]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~43_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\m_ula|Mux0~9_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~43_combout\);

-- Location: LCCOMB_X33_Y10_N14
\Div0|auto_generated|divider|divider|StageOut[31]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~34_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~34_combout\);

-- Location: LCCOMB_X33_Y10_N2
\Div0|auto_generated|divider|divider|StageOut[30]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~36_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \m_ula|Mux2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \m_ula|Mux2~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~36_combout\);

-- Location: LCCOMB_X33_Y10_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~35_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~35_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~36_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X33_Y10_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~33_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~34_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~33_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~34_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X33_Y10_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~32_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~32_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~43_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X33_Y10_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~31_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~42_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~31_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~42_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X33_Y10_N26
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X33_Y11_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\m_ula|Mux3~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (GND))) # (!\m_ula|Mux3~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & VCC))
-- \Add0~1\ = CARRY((\m_ula|Mux3~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X33_Y11_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[36]~37_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\Add0~1\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\Add0~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~37_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Add0~1\) # (GND))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[36]~37_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Add0~1\)) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~37_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~37_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X33_Y11_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[37]~38_combout\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[37]~38_combout\ & !\Add0~3\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[37]~38_combout\) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~38_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X33_Y11_N14
\BCDCODE[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCDCODE[0]~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Add0~0_combout\ & VCC)) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Add0~0_combout\ $ (VCC)))
-- \BCDCODE[0]~1\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \BCDCODE[0]~0_combout\,
	cout => \BCDCODE[0]~1\);

-- Location: LCCOMB_X33_Y11_N16
\BCDCODE[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCDCODE[1]~2_combout\ = (\Add0~2_combout\ & (!\BCDCODE[0]~1\)) # (!\Add0~2_combout\ & ((\BCDCODE[0]~1\) # (GND)))
-- \BCDCODE[1]~3\ = CARRY((!\BCDCODE[0]~1\) # (!\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \BCDCODE[0]~1\,
	combout => \BCDCODE[1]~2_combout\,
	cout => \BCDCODE[1]~3\);

-- Location: LCCOMB_X33_Y11_N18
\BCDCODE[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCDCODE[2]~4_combout\ = (\Add0~4_combout\ & (\BCDCODE[1]~3\ $ (GND))) # (!\Add0~4_combout\ & (!\BCDCODE[1]~3\ & VCC))
-- \BCDCODE[2]~5\ = CARRY((\Add0~4_combout\ & !\BCDCODE[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \BCDCODE[1]~3\,
	combout => \BCDCODE[2]~4_combout\,
	cout => \BCDCODE[2]~5\);

-- Location: LCCOMB_X33_Y11_N20
\BCDCODE[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCDCODE[3]~6_combout\ = (\Add0~6_combout\ & (!\BCDCODE[2]~5\)) # (!\Add0~6_combout\ & ((\BCDCODE[2]~5\) # (GND)))
-- \BCDCODE[3]~7\ = CARRY((!\BCDCODE[2]~5\) # (!\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => VCC,
	cin => \BCDCODE[2]~5\,
	combout => \BCDCODE[3]~6_combout\,
	cout => \BCDCODE[3]~7\);

-- Location: LCCOMB_X1_Y19_N6
\disp|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add3~6_combout\ = \BCDCODE[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BCDCODE[3]~6_combout\,
	combout => \disp|Add3~6_combout\);

-- Location: LCCOMB_X1_Y19_N28
\disp|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add3~4_combout\ = \BCDCODE[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BCDCODE[2]~4_combout\,
	combout => \disp|Add3~4_combout\);

-- Location: LCCOMB_X1_Y19_N24
\disp|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add3~0_combout\ = \BCDCODE[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BCDCODE[0]~0_combout\,
	combout => \disp|Add3~0_combout\);

-- Location: LCCOMB_X1_Y19_N26
\disp|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add3~2_combout\ = \BCDCODE[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BCDCODE[1]~2_combout\,
	combout => \disp|Add3~2_combout\);

-- Location: LCCOMB_X1_Y19_N16
\disp|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux6~0_combout\ = (\disp|Add3~6_combout\ & (!\disp|Add3~4_combout\ & (!\disp|Add3~0_combout\ & \disp|Add3~2_combout\))) # (!\disp|Add3~6_combout\ & (!\disp|Add3~2_combout\ & (\disp|Add3~4_combout\ $ (\disp|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add3~6_combout\,
	datab => \disp|Add3~4_combout\,
	datac => \disp|Add3~0_combout\,
	datad => \disp|Add3~2_combout\,
	combout => \disp|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y19_N10
\disp|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux5~0_combout\ = (\disp|Add3~6_combout\ & (!\disp|Add3~4_combout\ & (!\disp|Add3~0_combout\ & \disp|Add3~2_combout\))) # (!\disp|Add3~6_combout\ & (\disp|Add3~4_combout\ & (\disp|Add3~0_combout\ $ (\disp|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add3~6_combout\,
	datab => \disp|Add3~4_combout\,
	datac => \disp|Add3~0_combout\,
	datad => \disp|Add3~2_combout\,
	combout => \disp|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y19_N12
\disp|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux4~0_combout\ = (!\disp|Add3~4_combout\ & (!\disp|Add3~0_combout\ & \disp|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Add3~4_combout\,
	datac => \disp|Add3~0_combout\,
	datad => \disp|Add3~2_combout\,
	combout => \disp|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\disp|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux3~0_combout\ = (\disp|Add3~6_combout\ & (!\disp|Add3~4_combout\ & (!\disp|Add3~0_combout\ & \disp|Add3~2_combout\))) # (!\disp|Add3~6_combout\ & ((\disp|Add3~4_combout\ & (\disp|Add3~0_combout\ $ (!\disp|Add3~2_combout\))) # 
-- (!\disp|Add3~4_combout\ & (\disp|Add3~0_combout\ & !\disp|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add3~6_combout\,
	datab => \disp|Add3~4_combout\,
	datac => \disp|Add3~0_combout\,
	datad => \disp|Add3~2_combout\,
	combout => \disp|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y19_N0
\disp|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux2~0_combout\ = (\disp|Add3~0_combout\) # ((\disp|Add3~6_combout\ & (!\disp|Add3~4_combout\ & \disp|Add3~2_combout\)) # (!\disp|Add3~6_combout\ & (\disp|Add3~4_combout\ & !\disp|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add3~6_combout\,
	datab => \disp|Add3~4_combout\,
	datac => \disp|Add3~0_combout\,
	datad => \disp|Add3~2_combout\,
	combout => \disp|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y19_N2
\disp|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux1~0_combout\ = (\disp|Add3~0_combout\ & (!\disp|Add3~6_combout\ & ((\disp|Add3~2_combout\) # (!\disp|Add3~4_combout\)))) # (!\disp|Add3~0_combout\ & (((!\disp|Add3~4_combout\ & \disp|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add3~6_combout\,
	datab => \disp|Add3~4_combout\,
	datac => \disp|Add3~0_combout\,
	datad => \disp|Add3~2_combout\,
	combout => \disp|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y19_N4
\disp|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux0~0_combout\ = (\disp|Add3~6_combout\) # ((\disp|Add3~4_combout\ & ((!\disp|Add3~2_combout\) # (!\disp|Add3~0_combout\))) # (!\disp|Add3~4_combout\ & ((\disp|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add3~6_combout\,
	datab => \disp|Add3~4_combout\,
	datac => \disp|Add3~0_combout\,
	datad => \disp|Add3~2_combout\,
	combout => \disp|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y11_N30
\Mod0|auto_generated|divider|divider|StageOut[32]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\);

-- Location: LCCOMB_X37_Y11_N28
\Mod0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\m_ula|Mux0~9_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \m_ula|Mux0~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X37_Y11_N26
\Mod0|auto_generated|divider|divider|StageOut[38]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~39_combout\);

-- Location: LCCOMB_X33_Y11_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = !\Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X33_Y11_N22
\BCDCODE[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCDCODE[4]~8_combout\ = (\Add0~8_combout\ & (\BCDCODE[3]~7\ $ (GND))) # (!\Add0~8_combout\ & (!\BCDCODE[3]~7\ & VCC))
-- \BCDCODE[4]~9\ = CARRY((\Add0~8_combout\ & !\BCDCODE[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \BCDCODE[3]~7\,
	combout => \BCDCODE[4]~8_combout\,
	cout => \BCDCODE[4]~9\);

-- Location: LCCOMB_X33_Y11_N24
\BCDCODE[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCDCODE[5]~10_combout\ = \BCDCODE[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCDCODE[4]~9\,
	combout => \BCDCODE[5]~10_combout\);

-- Location: LCCOMB_X33_Y11_N26
\disp|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux13~0_combout\ = (!\BCDCODE[5]~10_combout\ & \BCDCODE[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCDCODE[5]~10_combout\,
	datad => \BCDCODE[4]~8_combout\,
	combout => \disp|Mux13~0_combout\);

-- Location: LCCOMB_X33_Y11_N28
\disp|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux11~0_combout\ = (\BCDCODE[5]~10_combout\ & !\BCDCODE[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCDCODE[5]~10_combout\,
	datad => \BCDCODE[4]~8_combout\,
	combout => \disp|Mux11~0_combout\);

-- Location: LCCOMB_X33_Y11_N10
\disp|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux8~0_combout\ = (\BCDCODE[5]~10_combout\) # (\BCDCODE[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCDCODE[5]~10_combout\,
	datad => \BCDCODE[4]~8_combout\,
	combout => \disp|Mux8~0_combout\);

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	datain => \m_ula|Mux3~8_combout\,
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
	datain => \m_ula|Mux2~6_combout\,
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
	datain => \m_ula|Mux1~8_combout\,
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
	datain => \disp|Mux6~0_combout\,
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
	datain => \disp|Mux5~0_combout\,
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
	datain => \disp|Mux4~0_combout\,
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
	datain => \disp|Mux3~0_combout\,
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
	datain => \disp|Mux2~0_combout\,
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
	datain => \disp|Mux1~0_combout\,
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
	datain => \disp|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \disp|Mux13~0_combout\,
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
	datain => GND,
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
	datain => \disp|Mux11~0_combout\,
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
	datain => \disp|Mux13~0_combout\,
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
	datain => \BCDCODE[4]~8_combout\,
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
	datain => \disp|Mux8~0_combout\,
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
	datain => \ALT_INV_BCDCODE[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
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
	datain => VCC,
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
	datain => VCC,
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
	datain => VCC,
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
	datain => VCC,
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
	datain => VCC,
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(7));
END structure;


