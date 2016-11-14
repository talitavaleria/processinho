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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1.78 SJ Web Edition"

-- DATE "11/14/2016 12:01:22"

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
-- latch_ula	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- HEX1[7]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[7]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ula_operation[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[0]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setRegB	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setRegA	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[1]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[2]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \m_ula|Add1~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~2_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~4_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \m_ula|Add0~6_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \disp|Add0~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \disp|Add0~11_combout\ : std_logic;
SIGNAL \disp|Add0~14_combout\ : std_logic;
SIGNAL \disp|Add0~23_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|selnose[0]~0_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ : std_logic;
SIGNAL \m_ula|Mux7~2_combout\ : std_logic;
SIGNAL \m_ula|Mux7~4_combout\ : std_logic;
SIGNAL \m_ula|result~0_combout\ : std_logic;
SIGNAL \m_ula|Mux6~1_combout\ : std_logic;
SIGNAL \m_ula|Mux6~2_combout\ : std_logic;
SIGNAL \m_ula|Mux6~3_combout\ : std_logic;
SIGNAL \m_ula|Mux6~4_combout\ : std_logic;
SIGNAL \m_ula|Mux6~5_combout\ : std_logic;
SIGNAL \m_ula|Mux6~6_combout\ : std_logic;
SIGNAL \m_ula|Mux6~7_combout\ : std_logic;
SIGNAL \m_ula|Mux6~10_combout\ : std_logic;
SIGNAL \m_ula|Mux5~0_combout\ : std_logic;
SIGNAL \m_ula|Mux5~1_combout\ : std_logic;
SIGNAL \m_ula|Mux5~2_combout\ : std_logic;
SIGNAL \m_ula|Mux5~3_combout\ : std_logic;
SIGNAL \m_ula|Mux5~4_combout\ : std_logic;
SIGNAL \m_ula|Mux4~1_combout\ : std_logic;
SIGNAL \m_ula|Mux4~2_combout\ : std_logic;
SIGNAL \m_ula|Mux4~3_combout\ : std_logic;
SIGNAL \m_ula|Mux4~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~44_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \disp|LessThan0~0_combout\ : std_logic;
SIGNAL \disp|LessThan0~1_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \setRegA~combout\ : std_logic;
SIGNAL \setRegB~combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \m_ula|Mux7~5_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|selnose[5]~2_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \m_ula|Mux7~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~0_combout\ : std_logic;
SIGNAL \m_ula|Mux7~1_combout\ : std_logic;
SIGNAL \m_ula|Mux7~3_combout\ : std_logic;
SIGNAL \m_ula|Mux7~6_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \m_ula|Add1~1\ : std_logic;
SIGNAL \m_ula|Add1~2_combout\ : std_logic;
SIGNAL \m_ula|Mux6~0_combout\ : std_logic;
SIGNAL \m_ula|Mux6~11_combout\ : std_logic;
SIGNAL \m_ula|Mux6~12_combout\ : std_logic;
SIGNAL \m_ula|Mux6~13_combout\ : std_logic;
SIGNAL \m_ula|Add1~3\ : std_logic;
SIGNAL \m_ula|Add1~4_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \m_ula|Mux5~5_combout\ : std_logic;
SIGNAL \m_ula|Mux5~6_combout\ : std_logic;
SIGNAL \m_ula|Add1~5\ : std_logic;
SIGNAL \m_ula|Add1~6_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \m_ula|Mux6~9_combout\ : std_logic;
SIGNAL \m_ula|Mux4~0_combout\ : std_logic;
SIGNAL \m_ula|Mux6~8_combout\ : std_logic;
SIGNAL \m_ula|Mux4~5_combout\ : std_logic;
SIGNAL \m_ula|Mux4~6_combout\ : std_logic;
SIGNAL \m_ula|Mux4~7_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \m_ula|Mux3~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~1\ : std_logic;
SIGNAL \m_ula|Add0~3\ : std_logic;
SIGNAL \m_ula|Add0~5\ : std_logic;
SIGNAL \m_ula|Add0~7\ : std_logic;
SIGNAL \m_ula|Add0~8_combout\ : std_logic;
SIGNAL \m_ula|Mux3~1_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \m_ula|Mux2~1_combout\ : std_logic;
SIGNAL \m_ula|Add1~7\ : std_logic;
SIGNAL \m_ula|Add1~8_combout\ : std_logic;
SIGNAL \m_ula|Mux2~0_combout\ : std_logic;
SIGNAL \m_ula|Mux2~2_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \m_ula|Mux1~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \m_ula|Mux0~0_combout\ : std_logic;
SIGNAL \m_ula|Mux0~1_combout\ : std_logic;
SIGNAL \m_ula|Mux1~1_combout\ : std_logic;
SIGNAL \m_ula|Mux2~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \disp|LessThan0~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~50_combout\ : std_logic;
SIGNAL \disp|Add0~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~52_combout\ : std_logic;
SIGNAL \disp|Add0~1_cout\ : std_logic;
SIGNAL \disp|Add0~3\ : std_logic;
SIGNAL \disp|Add0~6\ : std_logic;
SIGNAL \disp|Add0~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\ : std_logic;
SIGNAL \disp|Add0~10_combout\ : std_logic;
SIGNAL \disp|Add0~5_combout\ : std_logic;
SIGNAL \disp|Add0~7_combout\ : std_logic;
SIGNAL \disp|Mux6~0_combout\ : std_logic;
SIGNAL \disp|Mux5~0_combout\ : std_logic;
SIGNAL \disp|Mux4~0_combout\ : std_logic;
SIGNAL \disp|Mux3~0_combout\ : std_logic;
SIGNAL \disp|Mux2~0_combout\ : std_logic;
SIGNAL \disp|Mux1~0_combout\ : std_logic;
SIGNAL \disp|Mux0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \disp|Add0~13_combout\ : std_logic;
SIGNAL \disp|Add0~9\ : std_logic;
SIGNAL \disp|Add0~12\ : std_logic;
SIGNAL \disp|Add0~15\ : std_logic;
SIGNAL \disp|Add0~17_combout\ : std_logic;
SIGNAL \disp|Add0~19_combout\ : std_logic;
SIGNAL \disp|Add0~18\ : std_logic;
SIGNAL \disp|Add0~20_combout\ : std_logic;
SIGNAL \disp|Add0~22_combout\ : std_logic;
SIGNAL \disp|Add0~16_combout\ : std_logic;
SIGNAL \disp|Mux13~0_combout\ : std_logic;
SIGNAL \disp|Mux12~0_combout\ : std_logic;
SIGNAL \disp|Mux11~0_combout\ : std_logic;
SIGNAL \disp|Mux10~0_combout\ : std_logic;
SIGNAL \disp|Mux9~0_combout\ : std_logic;
SIGNAL \disp|Mux8~0_combout\ : std_logic;
SIGNAL \disp|Mux7~0_combout\ : std_logic;
SIGNAL \disp|Add0~21\ : std_logic;
SIGNAL \disp|Add0~24\ : std_logic;
SIGNAL \disp|Add0~27\ : std_logic;
SIGNAL \disp|Add0~30\ : std_logic;
SIGNAL \disp|Add0~32_combout\ : std_logic;
SIGNAL \disp|Add0~34_combout\ : std_logic;
SIGNAL \disp|Add0~29_combout\ : std_logic;
SIGNAL \disp|Add0~31_combout\ : std_logic;
SIGNAL \disp|Add0~25_combout\ : std_logic;
SIGNAL \disp|Add0~26_combout\ : std_logic;
SIGNAL \disp|Add0~28_combout\ : std_logic;
SIGNAL \disp|Mux20~0_combout\ : std_logic;
SIGNAL \disp|Mux19~0_combout\ : std_logic;
SIGNAL \disp|Mux18~0_combout\ : std_logic;
SIGNAL \disp|Mux17~0_combout\ : std_logic;
SIGNAL \disp|Mux16~0_combout\ : std_logic;
SIGNAL \disp|Mux15~0_combout\ : std_logic;
SIGNAL \disp|Mux14~0_combout\ : std_logic;
SIGNAL \operando~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ula_operation~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_ula|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \m_ula|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \m_ula|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \regB|valueOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regA|valueOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \disp|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \disp|ALT_INV_Mux0~0_combout\ : std_logic;

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
\disp|ALT_INV_Mux14~0_combout\ <= NOT \disp|Mux14~0_combout\;
\disp|ALT_INV_Mux7~0_combout\ <= NOT \disp|Mux7~0_combout\;
\disp|ALT_INV_Mux0~0_combout\ <= NOT \disp|Mux0~0_combout\;

-- Location: LCCOMB_X13_Y12_N16
\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\regB|valueOut\(1) & ((\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\regB|valueOut\(1) & ((\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & 
-- (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\regB|valueOut\(1) & ((!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\))) # 
-- (!\regB|valueOut\(1) & (!\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & !\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X12_Y12_N0
\m_ula|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~0_combout\ = (\regA|valueOut\(0) & ((GND) # (!\regB|valueOut\(0)))) # (!\regA|valueOut\(0) & (\regB|valueOut\(0) $ (GND)))
-- \m_ula|Add1~1\ = CARRY((\regA|valueOut\(0)) # (!\regB|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datab => \regB|valueOut\(0),
	datad => VCC,
	combout => \m_ula|Add1~0_combout\,
	cout => \m_ula|Add1~1\);

-- Location: LCCOMB_X12_Y12_N20
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

-- Location: LCCOMB_X13_Y11_N8
\m_ula|Mult0|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_1~0_combout\ = (\m_ula|Mult0|auto_generated|le3a\(2) & (\m_ula|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\m_ula|Mult0|auto_generated|le3a\(2) & (\m_ula|Mult0|auto_generated|le4a\(5) & VCC))
-- \m_ula|Mult0|auto_generated|op_1~1\ = CARRY((\m_ula|Mult0|auto_generated|le3a\(2) & \m_ula|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le3a\(2),
	datab => \m_ula|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \m_ula|Mult0|auto_generated|op_1~0_combout\,
	cout => \m_ula|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X12_Y12_N22
\m_ula|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~4_combout\ = ((\regA|valueOut\(2) $ (\regB|valueOut\(2) $ (!\m_ula|Add0~3\)))) # (GND)
-- \m_ula|Add0~5\ = CARRY((\regA|valueOut\(2) & ((\regB|valueOut\(2)) # (!\m_ula|Add0~3\))) # (!\regA|valueOut\(2) & (\regB|valueOut\(2) & !\m_ula|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \regB|valueOut\(2),
	datad => VCC,
	cin => \m_ula|Add0~3\,
	combout => \m_ula|Add0~4_combout\,
	cout => \m_ula|Add0~5\);

-- Location: LCCOMB_X13_Y11_N10
\m_ula|Mult0|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_1~2_combout\ = (\m_ula|Mult0|auto_generated|le3a\(3) & (!\m_ula|Mult0|auto_generated|op_1~1\)) # (!\m_ula|Mult0|auto_generated|le3a\(3) & ((\m_ula|Mult0|auto_generated|op_1~1\) # (GND)))
-- \m_ula|Mult0|auto_generated|op_1~3\ = CARRY((!\m_ula|Mult0|auto_generated|op_1~1\) # (!\m_ula|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_1~1\,
	combout => \m_ula|Mult0|auto_generated|op_1~2_combout\,
	cout => \m_ula|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X12_Y12_N24
\m_ula|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~6_combout\ = (\regA|valueOut\(3) & ((\regB|valueOut\(3) & (\m_ula|Add0~5\ & VCC)) # (!\regB|valueOut\(3) & (!\m_ula|Add0~5\)))) # (!\regA|valueOut\(3) & ((\regB|valueOut\(3) & (!\m_ula|Add0~5\)) # (!\regB|valueOut\(3) & ((\m_ula|Add0~5\) # 
-- (GND)))))
-- \m_ula|Add0~7\ = CARRY((\regA|valueOut\(3) & (!\regB|valueOut\(3) & !\m_ula|Add0~5\)) # (!\regA|valueOut\(3) & ((!\m_ula|Add0~5\) # (!\regB|valueOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \regB|valueOut\(3),
	datad => VCC,
	cin => \m_ula|Add0~5\,
	combout => \m_ula|Add0~6_combout\,
	cout => \m_ula|Add0~7\);

-- Location: LCCOMB_X13_Y11_N12
\m_ula|Mult0|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_1~4_combout\ = ((\m_ula|Mult0|auto_generated|le4a\(2) $ (\m_ula|Mult0|auto_generated|le3a\(4) $ (!\m_ula|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \m_ula|Mult0|auto_generated|op_1~5\ = CARRY((\m_ula|Mult0|auto_generated|le4a\(2) & ((\m_ula|Mult0|auto_generated|le3a\(4)) # (!\m_ula|Mult0|auto_generated|op_1~3\))) # (!\m_ula|Mult0|auto_generated|le4a\(2) & (\m_ula|Mult0|auto_generated|le3a\(4) & 
-- !\m_ula|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le4a\(2),
	datab => \m_ula|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_1~3\,
	combout => \m_ula|Mult0|auto_generated|op_1~4_combout\,
	cout => \m_ula|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X20_Y12_N14
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((!\m_ula|Mux2~1_combout\ & \m_ula|Mux2~3_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((!\m_ula|Mux2~1_combout\ & \m_ula|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datab => \m_ula|Mux2~3_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X20_Y12_N18
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (!\m_ula|Mux2~1_combout\ & (\m_ula|Mux0~1_combout\ & VCC))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((!\m_ula|Mux2~1_combout\ & \m_ula|Mux0~1_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\m_ula|Mux2~1_combout\ & (\m_ula|Mux0~1_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datab => \m_ula|Mux0~1_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X21_Y12_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[15]~31_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~30_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~31_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~31_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[15]~30_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X22_Y12_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[20]~37_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~36_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[20]~37_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~37_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~36_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X22_Y12_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~35_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~34_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~35_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~34_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~35_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~34_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~34_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X22_Y12_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~54_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~33_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[22]~54_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~33_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~54_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~33_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X23_Y12_N2
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X24_Y12_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~49_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~49_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~49_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~49_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X2_Y20_N4
\disp|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[36]~50_combout\ & (!\disp|Add0~1_cout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~50_combout\ & (\disp|Add0~1_cout\ & VCC))
-- \disp|Add0~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[36]~50_combout\ & !\disp|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~50_combout\,
	datad => VCC,
	cin => \disp|Add0~1_cout\,
	combout => \disp|Add0~2_combout\,
	cout => \disp|Add0~3\);

-- Location: LCCOMB_X18_Y11_N0
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \m_ula|Mux4~7_combout\ $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\m_ula|Mux4~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux4~7_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X18_Y11_N2
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\m_ula|Mux3~1_combout\ & (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\m_ula|Mux3~1_combout\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\m_ula|Mux3~1_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux3~1_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X18_Y11_N4
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((!\m_ula|Mux2~1_combout\ & \m_ula|Mux2~3_combout\))))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & (((!\m_ula|Mux2~1_combout\ & \m_ula|Mux2~3_combout\)) # (GND)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY(((!\m_ula|Mux2~1_combout\ & \m_ula|Mux2~3_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datab => \m_ula|Mux2~3_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X18_Y11_N6
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & ((\m_ula|Mux2~1_combout\) # ((!\m_ula|Mux1~1_combout\)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((!\m_ula|Mux2~1_combout\ & \m_ula|Mux1~1_combout\)) # (GND)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((\m_ula|Mux2~1_combout\) # ((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\m_ula|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datab => \m_ula|Mux1~1_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X19_Y12_N22
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~29_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~28_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~29_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~28_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~29_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~28_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~29_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~28_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X19_Y12_N24
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~27_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~26_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~27_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~26_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~27_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X16_Y12_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[20]~36_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~37_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~36_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~36_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~37_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X16_Y12_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~40_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~41_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~40_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~41_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~40_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~40_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X2_Y20_N10
\disp|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~11_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((GND) # (!\disp|Add0~9\))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\disp|Add0~9\ $ (GND)))
-- \disp|Add0~12\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\disp|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => VCC,
	cin => \disp|Add0~9\,
	combout => \disp|Add0~11_combout\,
	cout => \disp|Add0~12\);

-- Location: LCCOMB_X2_Y20_N12
\disp|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~14_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\disp|Add0~12\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\disp|Add0~12\) # (GND)))
-- \disp|Add0~15\ = CARRY((!\disp|Add0~12\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => VCC,
	cin => \disp|Add0~12\,
	combout => \disp|Add0~14_combout\,
	cout => \disp|Add0~15\);

-- Location: LCCOMB_X2_Y20_N18
\disp|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~23_combout\ = (\Add0~0_combout\ & (\disp|Add0~21\ $ (GND))) # (!\Add0~0_combout\ & ((GND) # (!\disp|Add0~21\)))
-- \disp|Add0~24\ = CARRY((!\disp|Add0~21\) # (!\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => VCC,
	cin => \disp|Add0~21\,
	combout => \disp|Add0~23_combout\,
	cout => \disp|Add0~24\);

-- Location: LCCOMB_X12_Y12_N10
\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\regB|valueOut\(1) & (!\regA|valueOut\(2) & \regB|valueOut\(0))) # (!\regB|valueOut\(1) & ((!\regB|valueOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(2),
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(0),
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X13_Y12_N24
\m_ula|Div0|auto_generated|divider|divider|selnose[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|selnose[0]~0_combout\ = (!\regB|valueOut\(2) & !\regB|valueOut\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|valueOut\(2),
	datad => \regB|valueOut\(3),
	combout => \m_ula|Div0|auto_generated|divider|divider|selnose[0]~0_combout\);

-- Location: LCCOMB_X13_Y12_N28
\m_ula|Div0|auto_generated|divider|divider|StageOut[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ = (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\)))) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\regB|valueOut\(3) & ((\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\))) # (!\regB|valueOut\(3) & 
-- (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \regB|valueOut\(3),
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\);

-- Location: LCCOMB_X15_Y12_N12
\m_ula|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux7~2_combout\ = (\regA|valueOut\(0) & (\regB|valueOut\(0) & (\ula_operation~combout\(2) & !\ula_operation~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datab => \regB|valueOut\(0),
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux7~2_combout\);

-- Location: LCCOMB_X15_Y12_N16
\m_ula|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux7~4_combout\ = (\ula_operation~combout\(2) & ((\regB|valueOut\(0)) # ((\regA|valueOut\(0))))) # (!\ula_operation~combout\(2) & (((\m_ula|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(0),
	datab => \m_ula|Add1~0_combout\,
	datac => \ula_operation~combout\(2),
	datad => \regA|valueOut\(0),
	combout => \m_ula|Mux7~4_combout\);

-- Location: LCCOMB_X14_Y12_N0
\m_ula|result~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result~0_combout\ = \regA|valueOut\(1) $ (\regB|valueOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datad => \regB|valueOut\(1),
	combout => \m_ula|result~0_combout\);

-- Location: LCCOMB_X15_Y12_N8
\m_ula|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~1_combout\ = (\ula_operation~combout\(1)) # (!\ula_operation~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux6~1_combout\);

-- Location: LCCOMB_X15_Y12_N2
\m_ula|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~2_combout\ = ((!\ula_operation~combout\(0) & \ula_operation~combout\(1))) # (!\ula_operation~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_operation~combout\(0),
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux6~2_combout\);

-- Location: LCCOMB_X15_Y12_N28
\m_ula|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~3_combout\ = (\ula_operation~combout\(2) & ((\ula_operation~combout\(0)) # (\ula_operation~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_operation~combout\(0),
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux6~3_combout\);

-- Location: LCCOMB_X14_Y12_N18
\m_ula|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~4_combout\ = (\m_ula|Mux6~3_combout\ & (((\regB|valueOut\(1))))) # (!\m_ula|Mux6~3_combout\ & (\m_ula|Add0~2_combout\ & ((\ula_operation~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add0~2_combout\,
	datab => \regB|valueOut\(1),
	datac => \ula_operation~combout\(0),
	datad => \m_ula|Mux6~3_combout\,
	combout => \m_ula|Mux6~4_combout\);

-- Location: LCCOMB_X14_Y12_N4
\m_ula|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~5_combout\ = (\m_ula|Mux6~2_combout\ & ((\m_ula|Mux6~4_combout\) # ((\m_ula|Mux6~3_combout\ & \regA|valueOut\(1))))) # (!\m_ula|Mux6~2_combout\ & (!\m_ula|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~2_combout\,
	datab => \m_ula|Mux6~3_combout\,
	datac => \regA|valueOut\(1),
	datad => \m_ula|Mux6~4_combout\,
	combout => \m_ula|Mux6~5_combout\);

-- Location: LCCOMB_X14_Y12_N22
\m_ula|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~6_combout\ = (\m_ula|Mux6~5_combout\ & ((\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # ((\regB|valueOut\(3))))) # (!\m_ula|Mux6~5_combout\ & (((\regA|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \m_ula|Mux6~5_combout\,
	datac => \regA|valueOut\(1),
	datad => \regB|valueOut\(3),
	combout => \m_ula|Mux6~6_combout\);

-- Location: LCCOMB_X14_Y12_N8
\m_ula|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~7_combout\ = (\m_ula|Mux6~5_combout\ & (((\m_ula|Mux6~1_combout\) # (!\m_ula|Mux6~6_combout\)))) # (!\m_ula|Mux6~5_combout\ & (\regB|valueOut\(1) & (!\m_ula|Mux6~1_combout\ & \m_ula|Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \m_ula|Mux6~5_combout\,
	datac => \m_ula|Mux6~1_combout\,
	datad => \m_ula|Mux6~6_combout\,
	combout => \m_ula|Mux6~7_combout\);

-- Location: LCCOMB_X14_Y12_N26
\m_ula|Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~10_combout\ = (\m_ula|Mux6~9_combout\ & (\m_ula|result~0_combout\ & ((\m_ula|Mux6~8_combout\)))) # (!\m_ula|Mux6~9_combout\ & (((\m_ula|Mux6~7_combout\) # (!\m_ula|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result~0_combout\,
	datab => \m_ula|Mux6~9_combout\,
	datac => \m_ula|Mux6~7_combout\,
	datad => \m_ula|Mux6~8_combout\,
	combout => \m_ula|Mux6~10_combout\);

-- Location: LCCOMB_X14_Y12_N12
\m_ula|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux5~0_combout\ = (\regB|valueOut\(2) & (\regA|valueOut\(2) $ (\m_ula|Mux6~9_combout\))) # (!\regB|valueOut\(2) & (\regA|valueOut\(2) & \m_ula|Mux6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|valueOut\(2),
	datac => \regA|valueOut\(2),
	datad => \m_ula|Mux6~9_combout\,
	combout => \m_ula|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y12_N30
\m_ula|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux5~1_combout\ = (\m_ula|Mux6~3_combout\ & (((\regB|valueOut\(2))))) # (!\m_ula|Mux6~3_combout\ & (\m_ula|Add0~4_combout\ & ((\ula_operation~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add0~4_combout\,
	datab => \regB|valueOut\(2),
	datac => \ula_operation~combout\(0),
	datad => \m_ula|Mux6~3_combout\,
	combout => \m_ula|Mux5~1_combout\);

-- Location: LCCOMB_X14_Y12_N16
\m_ula|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux5~2_combout\ = (\m_ula|Mux6~2_combout\ & ((\m_ula|Mux5~1_combout\) # ((\regA|valueOut\(2) & \m_ula|Mux6~3_combout\)))) # (!\m_ula|Mux6~2_combout\ & (((!\m_ula|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~2_combout\,
	datab => \m_ula|Mux5~1_combout\,
	datac => \regA|valueOut\(2),
	datad => \m_ula|Mux6~3_combout\,
	combout => \m_ula|Mux5~2_combout\);

-- Location: LCCOMB_X14_Y12_N2
\m_ula|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux5~3_combout\ = (\m_ula|Mux6~1_combout\ & ((\m_ula|Mux5~2_combout\ $ (\m_ula|Mux5~0_combout\)))) # (!\m_ula|Mux6~1_combout\ & (\m_ula|Mux5~2_combout\ & (\m_ula|Div0|auto_generated|divider|divider|selnose[5]~2_combout\ $ 
-- (!\m_ula|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~2_combout\,
	datab => \m_ula|Mux6~1_combout\,
	datac => \m_ula|Mux5~2_combout\,
	datad => \m_ula|Mux5~0_combout\,
	combout => \m_ula|Mux5~3_combout\);

-- Location: LCCOMB_X14_Y12_N20
\m_ula|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux5~4_combout\ = (\m_ula|Mux6~8_combout\ & (\m_ula|Mux5~0_combout\ $ (((!\m_ula|Mux6~9_combout\ & \m_ula|Mux5~3_combout\))))) # (!\m_ula|Mux6~8_combout\ & (((!\m_ula|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux5~0_combout\,
	datab => \m_ula|Mux6~9_combout\,
	datac => \m_ula|Mux5~3_combout\,
	datad => \m_ula|Mux6~8_combout\,
	combout => \m_ula|Mux5~4_combout\);

-- Location: LCCOMB_X14_Y12_N24
\m_ula|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~1_combout\ = (\m_ula|Mux6~3_combout\ & (\regB|valueOut\(3))) # (!\m_ula|Mux6~3_combout\ & (((\ula_operation~combout\(0) & \m_ula|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(3),
	datab => \m_ula|Mux6~3_combout\,
	datac => \ula_operation~combout\(0),
	datad => \m_ula|Add0~6_combout\,
	combout => \m_ula|Mux4~1_combout\);

-- Location: LCCOMB_X14_Y12_N10
\m_ula|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~2_combout\ = (\m_ula|Mux6~2_combout\ & ((\m_ula|Mux4~1_combout\) # ((\m_ula|Mux6~3_combout\ & \regA|valueOut\(3))))) # (!\m_ula|Mux6~2_combout\ & (((!\m_ula|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux4~1_combout\,
	datab => \m_ula|Mux6~3_combout\,
	datac => \regA|valueOut\(3),
	datad => \m_ula|Mux6~2_combout\,
	combout => \m_ula|Mux4~2_combout\);

-- Location: LCCOMB_X12_Y12_N28
\m_ula|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~3_combout\ = (!\regB|valueOut\(1) & (\m_ula|Div0|auto_generated|divider|divider|selnose[0]~0_combout\ & ((\regA|valueOut\(3)) # (!\regB|valueOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \regB|valueOut\(0),
	datac => \regB|valueOut\(1),
	datad => \m_ula|Div0|auto_generated|divider|divider|selnose[0]~0_combout\,
	combout => \m_ula|Mux4~3_combout\);

-- Location: LCCOMB_X14_Y12_N28
\m_ula|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~4_combout\ = (\m_ula|Mux4~2_combout\ & (\m_ula|Mux4~0_combout\ $ (((\m_ula|Mux6~1_combout\) # (\m_ula|Mux4~3_combout\))))) # (!\m_ula|Mux4~2_combout\ & (\m_ula|Mux4~0_combout\ & (\m_ula|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux4~2_combout\,
	datab => \m_ula|Mux4~0_combout\,
	datac => \m_ula|Mux6~1_combout\,
	datad => \m_ula|Mux4~3_combout\,
	combout => \m_ula|Mux4~4_combout\);

-- Location: LCCOMB_X21_Y12_N10
\Mod0|auto_generated|divider|divider|StageOut[18]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~25_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~25_combout\);

-- Location: LCCOMB_X21_Y12_N12
\Mod0|auto_generated|divider|divider|StageOut[17]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~26_combout\ = (\m_ula|Mux1~1_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\m_ula|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux1~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \m_ula|Mux2~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~26_combout\);

-- Location: LCCOMB_X21_Y12_N2
\Mod0|auto_generated|divider|divider|StageOut[16]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~29_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~29_combout\);

-- Location: LCCOMB_X21_Y12_N6
\Mod0|auto_generated|divider|divider|StageOut[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~31_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \m_ula|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \m_ula|Mux3~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~31_combout\);

-- Location: LCCOMB_X22_Y12_N12
\Mod0|auto_generated|divider|divider|StageOut[21]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~35_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~35_combout\);

-- Location: LCCOMB_X22_Y12_N8
\Mod0|auto_generated|divider|divider|StageOut[20]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~37_combout\ = (\m_ula|Mux4~7_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux4~7_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~37_combout\);

-- Location: LCCOMB_X23_Y12_N10
\Mod0|auto_generated|divider|divider|StageOut[28]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~38_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~38_combout\);

-- Location: LCCOMB_X23_Y12_N20
\Mod0|auto_generated|divider|divider|StageOut[27]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~39_combout\);

-- Location: LCCOMB_X23_Y12_N24
\Mod0|auto_generated|divider|divider|StageOut[26]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\);

-- Location: LCCOMB_X23_Y12_N28
\Mod0|auto_generated|divider|divider|StageOut[25]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~43_combout\ = (\m_ula|Mux5~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux5~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~43_combout\);

-- Location: LCCOMB_X24_Y12_N16
\Mod0|auto_generated|divider|divider|StageOut[30]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~44_combout\ = (\m_ula|Mux6~13_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~13_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~44_combout\);

-- Location: LCCOMB_X18_Y11_N12
\Div1|auto_generated|divider|divider|StageOut[54]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\m_ula|Mux0~1_combout\ & (!\m_ula|Mux2~1_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~1_combout\,
	datac => \m_ula|Mux2~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X19_Y11_N24
\Div1|auto_generated|divider|divider|StageOut[53]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ = (!\m_ula|Mux2~1_combout\ & (\m_ula|Mux1~1_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datac => \m_ula|Mux1~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X18_Y11_N26
\Div1|auto_generated|divider|divider|StageOut[52]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X18_Y11_N28
\Div1|auto_generated|divider|divider|StageOut[51]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X18_Y11_N30
\Div1|auto_generated|divider|divider|StageOut[50]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X19_Y11_N30
\Div1|auto_generated|divider|divider|StageOut[49]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\m_ula|Mux5~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|Mux5~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X19_Y12_N8
\Div0|auto_generated|divider|divider|StageOut[18]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~24_combout\ = (!\m_ula|Mux2~1_combout\ & (\m_ula|Mux0~1_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux2~1_combout\,
	datac => \m_ula|Mux0~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~24_combout\);

-- Location: LCCOMB_X20_Y12_N28
\Div0|auto_generated|divider|divider|StageOut[17]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~27_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~27_combout\);

-- Location: LCCOMB_X19_Y12_N12
\Div0|auto_generated|divider|divider|StageOut[16]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~29_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~29_combout\);

-- Location: LCCOMB_X19_Y12_N16
\Div0|auto_generated|divider|divider|StageOut[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~31_combout\ = (\m_ula|Mux3~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux3~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~31_combout\);

-- Location: LCCOMB_X19_Y12_N10
\Div0|auto_generated|divider|divider|StageOut[23]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~32_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~32_combout\);

-- Location: LCCOMB_X19_Y12_N4
\Div0|auto_generated|divider|divider|StageOut[22]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~33_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~33_combout\);

-- Location: LCCOMB_X19_Y12_N6
\Div0|auto_generated|divider|divider|StageOut[21]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~34_combout\ = (\m_ula|Mux3~1_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux3~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~34_combout\);

-- Location: LCCOMB_X20_Y12_N22
\Div0|auto_generated|divider|divider|StageOut[20]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~36_combout\ = (\m_ula|Mux4~7_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|Mux4~7_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~36_combout\);

-- Location: LCCOMB_X16_Y12_N6
\Div0|auto_generated|divider|divider|StageOut[26]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~41_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~41_combout\);

-- Location: LCCOMB_X16_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[25]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~43_combout\ = (\m_ula|Mux5~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux5~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~43_combout\);

-- Location: LCCOMB_X18_Y12_N10
\Div0|auto_generated|divider|divider|StageOut[32]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~45_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~45_combout\);

-- Location: LCCOMB_X18_Y12_N4
\Div0|auto_generated|divider|divider|StageOut[31]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~46_combout\ = (\m_ula|Mux5~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|Mux5~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~46_combout\);

-- Location: LCCOMB_X18_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[30]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (\m_ula|Mux6~13_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~13_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X1_Y19_N18
\disp|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|LessThan0~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\,
	combout => \disp|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y19_N12
\disp|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|LessThan0~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\disp|LessThan0~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \disp|LessThan0~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y12_N14
\m_ula|Mult0|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(2) = (\regB|valueOut\(0) & (\regB|valueOut\(1) $ ((\regA|valueOut\(2))))) # (!\regB|valueOut\(0) & (\regB|valueOut\(1) & ((!\regA|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regA|valueOut\(2),
	datac => \regA|valueOut\(1),
	datad => \regB|valueOut\(0),
	combout => \m_ula|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X13_Y11_N28
\m_ula|Mult0|auto_generated|le4a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(2) = (\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (\regA|valueOut\(2) $ ((\m_ula|Mult0|auto_generated|le4a\(5))))) # (!\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (((\m_ula|Mult0|auto_generated|le4a\(5) & 
-- !\regA|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \m_ula|Mult0|auto_generated|le4a\(5),
	datac => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \regA|valueOut\(1),
	combout => \m_ula|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X13_Y11_N6
\m_ula|Mult0|auto_generated|le4a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(3) = (\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (\m_ula|Mult0|auto_generated|le4a\(5) $ ((\regA|valueOut\(3))))) # (!\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (\m_ula|Mult0|auto_generated|le4a\(5) & 
-- ((!\regA|valueOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \m_ula|Mult0|auto_generated|le4a\(5),
	datac => \regA|valueOut\(3),
	datad => \regA|valueOut\(2),
	combout => \m_ula|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X13_Y11_N20
\m_ula|Mult0|auto_generated|le5a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(2) = (\regA|valueOut\(2) & ((\regB|valueOut\(3)) # ((\regB|valueOut\(2) & \regB|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \regA|valueOut\(2),
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(3),
	combout => \m_ula|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X12_Y12_N12
\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7_combout\ = (\regA|valueOut\(3) & ((\regB|valueOut\(2)) # ((\regB|valueOut\(3)) # (\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \regB|valueOut\(2),
	datac => \regB|valueOut\(3),
	datad => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7_combout\);

-- Location: LCCOMB_X21_Y12_N4
\Mod0|auto_generated|divider|divider|StageOut[23]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~53_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~26_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~53_combout\);

-- Location: LCCOMB_X21_Y12_N30
\Mod0|auto_generated|divider|divider|StageOut[22]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[16]~28_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~28_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~54_combout\);

-- Location: LCCOMB_X23_Y12_N16
\Mod0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X19_Y12_N18
\Div0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~51_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~51_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X18_Y12_N12
\Div0|auto_generated|divider|divider|StageOut[33]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~53_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~54_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~53_combout\);

-- Location: LCCOMB_X23_Y12_N12
\Mod0|auto_generated|divider|divider|StageOut[32]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~58_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\m_ula|Mux4~7_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux4~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~58_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\m_ula|Mux3~1_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \m_ula|Mux3~1_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~54_combout\);

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

-- Location: LCFF_X13_Y12_N5
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

-- Location: LCFF_X12_Y12_N19
\regB|valueOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(0),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(0));

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

-- Location: LCFF_X13_Y12_N17
\regB|valueOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(1),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(1));

-- Location: LCCOMB_X14_Y11_N24
\m_ula|Mult0|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(0) = \regB|valueOut\(1) $ (((\regA|valueOut\(0) & \regB|valueOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(0),
	datac => \regB|valueOut\(0),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X14_Y11_N0
\m_ula|Mult0|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~0_combout\ = (\regB|valueOut\(1) & (\m_ula|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\regB|valueOut\(1) & (\m_ula|Mult0|auto_generated|le3a\(0) & VCC))
-- \m_ula|Mult0|auto_generated|op_3~1\ = CARRY((\regB|valueOut\(1) & \m_ula|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \m_ula|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \m_ula|Mult0|auto_generated|op_3~0_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X15_Y12_N18
\m_ula|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux7~5_combout\ = (\ula_operation~combout\(0) & (((!\ula_operation~combout\(2) & \m_ula|Mult0|auto_generated|op_3~0_combout\)))) # (!\ula_operation~combout\(0) & (\m_ula|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux7~4_combout\,
	datab => \ula_operation~combout\(0),
	datac => \ula_operation~combout\(2),
	datad => \m_ula|Mult0|auto_generated|op_3~0_combout\,
	combout => \m_ula|Mux7~5_combout\);

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

-- Location: LCFF_X13_Y12_N19
\regB|valueOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(2),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(2));

-- Location: LCFF_X12_Y12_N5
\regA|valueOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(2),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(2));

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

-- Location: LCFF_X12_Y12_N7
\regA|valueOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(3),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(3));

-- Location: LCCOMB_X13_Y12_N2
\m_ula|Div0|auto_generated|divider|divider|selnose[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ = (!\regA|valueOut\(2) & \regB|valueOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regA|valueOut\(2),
	datad => \regB|valueOut\(0),
	combout => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X13_Y12_N30
\m_ula|Div0|auto_generated|divider|divider|selnose[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|selnose[5]~2_combout\ = ((\m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\) # ((!\regA|valueOut\(3) & \regB|valueOut\(1)))) # (!\m_ula|Div0|auto_generated|divider|divider|selnose[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|selnose[0]~0_combout\,
	datab => \regA|valueOut\(3),
	datac => \regB|valueOut\(1),
	datad => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~1_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~2_combout\);

-- Location: LCCOMB_X13_Y12_N0
\m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ = \regA|valueOut\(2) $ (((\regB|valueOut\(0) & !\m_ula|Div0|auto_generated|divider|divider|selnose[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|valueOut\(0),
	datac => \regA|valueOut\(2),
	datad => \m_ula|Div0|auto_generated|divider|divider|selnose[5]~2_combout\,
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\);

-- Location: LCCOMB_X13_Y12_N14
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

-- Location: LCCOMB_X13_Y12_N18
\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7_combout\ $ (\regB|valueOut\(2) $ (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7_combout\ & ((!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\regB|valueOut\(2)))) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7_combout\ & (!\regB|valueOut\(2) & !\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7_combout\,
	datab => \regB|valueOut\(2),
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X13_Y12_N20
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

-- Location: LCFF_X13_Y12_N11
\regB|valueOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(3),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(3));

-- Location: LCCOMB_X13_Y12_N26
\m_ula|Div0|auto_generated|divider|divider|StageOut[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ = (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7_combout\)) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\regB|valueOut\(3) & (\m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7_combout\)) # (!\regB|valueOut\(3) & 
-- ((\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|StageOut[5]~7_combout\,
	datab => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \regB|valueOut\(3),
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\);

-- Location: LCCOMB_X13_Y12_N22
\m_ula|Div0|auto_generated|divider|divider|StageOut[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ = (\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\regA|valueOut\(1))) # (!\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\regB|valueOut\(3) & (\regA|valueOut\(1))) # (!\regB|valueOut\(3) & ((\m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datab => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \m_ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \regB|valueOut\(3),
	combout => \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\);

-- Location: LCCOMB_X13_Y12_N4
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

-- Location: LCCOMB_X13_Y12_N6
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\regB|valueOut\(1) & ((!\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\))) # (!\regB|valueOut\(1) & (!\m_ula|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ & !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \m_ula|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\,
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X13_Y12_N8
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\m_ula|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ & ((!\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # 
-- (!\regB|valueOut\(2)))) # (!\m_ula|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ & (!\regB|valueOut\(2) & !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datab => \regB|valueOut\(2),
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X13_Y12_N10
\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\regB|valueOut\(3) & ((!\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # 
-- (!\m_ula|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\))) # (!\regB|valueOut\(3) & (!\m_ula|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ & !\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(3),
	datab => \m_ula|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datad => VCC,
	cin => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X13_Y12_N12
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

-- Location: LCCOMB_X15_Y12_N0
\m_ula|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux7~0_combout\ = (\ula_operation~combout\(2) & (((!\m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & !\ula_operation~combout\(3))))) # (!\ula_operation~combout\(2) & (\m_ula|Add0~0_combout\ & 
-- ((\ula_operation~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add0~0_combout\,
	datab => \m_ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux7~0_combout\);

-- Location: LCCOMB_X12_Y12_N18
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

-- Location: LCCOMB_X15_Y12_N10
\m_ula|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux7~1_combout\ = (!\ula_operation~combout\(2) & ((\ula_operation~combout\(3) & (!\regA|valueOut\(0))) # (!\ula_operation~combout\(3) & ((\m_ula|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datab => \m_ula|Add0~0_combout\,
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux7~1_combout\);

-- Location: LCCOMB_X15_Y12_N14
\m_ula|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux7~3_combout\ = (\ula_operation~combout\(0) & ((\m_ula|Mux7~2_combout\) # ((\m_ula|Mux7~1_combout\)))) # (!\ula_operation~combout\(0) & (((\m_ula|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux7~2_combout\,
	datab => \m_ula|Mux7~0_combout\,
	datac => \ula_operation~combout\(0),
	datad => \m_ula|Mux7~1_combout\,
	combout => \m_ula|Mux7~3_combout\);

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

-- Location: LCCOMB_X15_Y12_N20
\m_ula|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux7~6_combout\ = (\ula_operation~combout\(1) & (!\ula_operation~combout\(3) & (\m_ula|Mux7~5_combout\))) # (!\ula_operation~combout\(1) & (((\m_ula|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(3),
	datab => \m_ula|Mux7~5_combout\,
	datac => \m_ula|Mux7~3_combout\,
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux7~6_combout\);

-- Location: LCCOMB_X14_Y11_N26
\m_ula|Mult0|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(1) = (\regB|valueOut\(0) & (\regA|valueOut\(1) $ (((\regB|valueOut\(1)))))) # (!\regB|valueOut\(0) & (((!\regA|valueOut\(0) & \regB|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datab => \regA|valueOut\(0),
	datac => \regB|valueOut\(0),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X14_Y11_N2
\m_ula|Mult0|auto_generated|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~2_combout\ = (\m_ula|Mult0|auto_generated|le3a\(1) & (!\m_ula|Mult0|auto_generated|op_3~1\)) # (!\m_ula|Mult0|auto_generated|le3a\(1) & ((\m_ula|Mult0|auto_generated|op_3~1\) # (GND)))
-- \m_ula|Mult0|auto_generated|op_3~3\ = CARRY((!\m_ula|Mult0|auto_generated|op_3~1\) # (!\m_ula|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~1\,
	combout => \m_ula|Mult0|auto_generated|op_3~2_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~3\);

-- Location: LCFF_X13_Y12_N15
\regA|valueOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(1),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(1));

-- Location: LCCOMB_X12_Y12_N2
\m_ula|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~2_combout\ = (\regB|valueOut\(1) & ((\regA|valueOut\(1) & (!\m_ula|Add1~1\)) # (!\regA|valueOut\(1) & ((\m_ula|Add1~1\) # (GND))))) # (!\regB|valueOut\(1) & ((\regA|valueOut\(1) & (\m_ula|Add1~1\ & VCC)) # (!\regA|valueOut\(1) & 
-- (!\m_ula|Add1~1\))))
-- \m_ula|Add1~3\ = CARRY((\regB|valueOut\(1) & ((!\m_ula|Add1~1\) # (!\regA|valueOut\(1)))) # (!\regB|valueOut\(1) & (!\regA|valueOut\(1) & !\m_ula|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regA|valueOut\(1),
	datad => VCC,
	cin => \m_ula|Add1~1\,
	combout => \m_ula|Add1~2_combout\,
	cout => \m_ula|Add1~3\);

-- Location: LCCOMB_X15_Y12_N22
\m_ula|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~0_combout\ = (\ula_operation~combout\(1) & (!\ula_operation~combout\(2) & !\ula_operation~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y11_N16
\m_ula|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~11_combout\ = (\m_ula|Mux6~10_combout\ & (((\m_ula|Add1~2_combout\) # (!\m_ula|Mux6~0_combout\)))) # (!\m_ula|Mux6~10_combout\ & (\m_ula|Mult0|auto_generated|op_3~2_combout\ & ((\m_ula|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~10_combout\,
	datab => \m_ula|Mult0|auto_generated|op_3~2_combout\,
	datac => \m_ula|Add1~2_combout\,
	datad => \m_ula|Mux6~0_combout\,
	combout => \m_ula|Mux6~11_combout\);

-- Location: LCCOMB_X15_Y12_N26
\m_ula|Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~12_combout\ = (\ula_operation~combout\(0) & (!\ula_operation~combout\(2) & !\ula_operation~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_operation~combout\(0),
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux6~12_combout\);

-- Location: LCCOMB_X14_Y11_N18
\m_ula|Mux6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~13_combout\ = (\ula_operation~combout\(3) & ((\m_ula|Mux6~12_combout\ & ((!\regA|valueOut\(1)))) # (!\m_ula|Mux6~12_combout\ & (\m_ula|Mux6~11_combout\)))) # (!\ula_operation~combout\(3) & (\m_ula|Mux6~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~11_combout\,
	datab => \ula_operation~combout\(3),
	datac => \regA|valueOut\(1),
	datad => \m_ula|Mux6~12_combout\,
	combout => \m_ula|Mux6~13_combout\);

-- Location: LCCOMB_X12_Y12_N4
\m_ula|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~4_combout\ = ((\regA|valueOut\(2) $ (\regB|valueOut\(2) $ (\m_ula|Add1~3\)))) # (GND)
-- \m_ula|Add1~5\ = CARRY((\regA|valueOut\(2) & ((!\m_ula|Add1~3\) # (!\regB|valueOut\(2)))) # (!\regA|valueOut\(2) & (!\regB|valueOut\(2) & !\m_ula|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \regB|valueOut\(2),
	datad => VCC,
	cin => \m_ula|Add1~3\,
	combout => \m_ula|Add1~4_combout\,
	cout => \m_ula|Add1~5\);

-- Location: LCCOMB_X14_Y11_N28
\m_ula|Mult0|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(0) = \regB|valueOut\(3) $ (((\regB|valueOut\(1) & ((\regA|valueOut\(0)) # (\regB|valueOut\(2)))) # (!\regB|valueOut\(1) & (\regA|valueOut\(0) & \regB|valueOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regA|valueOut\(0),
	datac => \regB|valueOut\(2),
	datad => \regB|valueOut\(3),
	combout => \m_ula|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X14_Y11_N4
\m_ula|Mult0|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~4_combout\ = ((\m_ula|Mult0|auto_generated|op_1~0_combout\ $ (\m_ula|Mult0|auto_generated|le4a\(0) $ (!\m_ula|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \m_ula|Mult0|auto_generated|op_3~5\ = CARRY((\m_ula|Mult0|auto_generated|op_1~0_combout\ & ((\m_ula|Mult0|auto_generated|le4a\(0)) # (!\m_ula|Mult0|auto_generated|op_3~3\))) # (!\m_ula|Mult0|auto_generated|op_1~0_combout\ & 
-- (\m_ula|Mult0|auto_generated|le4a\(0) & !\m_ula|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_1~0_combout\,
	datab => \m_ula|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~3\,
	combout => \m_ula|Mult0|auto_generated|op_3~4_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X14_Y11_N20
\m_ula|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux5~5_combout\ = (\m_ula|Mux5~4_combout\ & ((\m_ula|Add1~4_combout\) # ((!\m_ula|Mux6~0_combout\)))) # (!\m_ula|Mux5~4_combout\ & (((\m_ula|Mult0|auto_generated|op_3~4_combout\ & \m_ula|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux5~4_combout\,
	datab => \m_ula|Add1~4_combout\,
	datac => \m_ula|Mult0|auto_generated|op_3~4_combout\,
	datad => \m_ula|Mux6~0_combout\,
	combout => \m_ula|Mux5~5_combout\);

-- Location: LCCOMB_X14_Y11_N22
\m_ula|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux5~6_combout\ = (\ula_operation~combout\(3) & ((\m_ula|Mux6~12_combout\ & ((!\regA|valueOut\(2)))) # (!\m_ula|Mux6~12_combout\ & (\m_ula|Mux5~5_combout\)))) # (!\ula_operation~combout\(3) & (\m_ula|Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux5~5_combout\,
	datab => \ula_operation~combout\(3),
	datac => \regA|valueOut\(2),
	datad => \m_ula|Mux6~12_combout\,
	combout => \m_ula|Mux5~6_combout\);

-- Location: LCCOMB_X12_Y12_N6
\m_ula|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~6_combout\ = (\regA|valueOut\(3) & ((\regB|valueOut\(3) & (!\m_ula|Add1~5\)) # (!\regB|valueOut\(3) & (\m_ula|Add1~5\ & VCC)))) # (!\regA|valueOut\(3) & ((\regB|valueOut\(3) & ((\m_ula|Add1~5\) # (GND))) # (!\regB|valueOut\(3) & 
-- (!\m_ula|Add1~5\))))
-- \m_ula|Add1~7\ = CARRY((\regA|valueOut\(3) & (\regB|valueOut\(3) & !\m_ula|Add1~5\)) # (!\regA|valueOut\(3) & ((\regB|valueOut\(3)) # (!\m_ula|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \regB|valueOut\(3),
	datad => VCC,
	cin => \m_ula|Add1~5\,
	combout => \m_ula|Add1~6_combout\,
	cout => \m_ula|Add1~7\);

-- Location: LCCOMB_X13_Y11_N26
\m_ula|Mult0|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ = \regB|valueOut\(1) $ (\regB|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X13_Y11_N0
\m_ula|Mult0|auto_generated|le4a[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(5) = \regB|valueOut\(3) $ (((\regB|valueOut\(2) & \regB|valueOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(3),
	combout => \m_ula|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X13_Y11_N4
\m_ula|Mult0|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(1) = (\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (\regA|valueOut\(1) $ (((\m_ula|Mult0|auto_generated|le4a\(5)))))) # (!\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\regA|valueOut\(0) & 
-- \m_ula|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datab => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \regA|valueOut\(0),
	datad => \m_ula|Mult0|auto_generated|le4a\(5),
	combout => \m_ula|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X14_Y11_N6
\m_ula|Mult0|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~6_combout\ = (\m_ula|Mult0|auto_generated|op_1~2_combout\ & ((\m_ula|Mult0|auto_generated|le4a\(1) & (\m_ula|Mult0|auto_generated|op_3~5\ & VCC)) # (!\m_ula|Mult0|auto_generated|le4a\(1) & 
-- (!\m_ula|Mult0|auto_generated|op_3~5\)))) # (!\m_ula|Mult0|auto_generated|op_1~2_combout\ & ((\m_ula|Mult0|auto_generated|le4a\(1) & (!\m_ula|Mult0|auto_generated|op_3~5\)) # (!\m_ula|Mult0|auto_generated|le4a\(1) & ((\m_ula|Mult0|auto_generated|op_3~5\) 
-- # (GND)))))
-- \m_ula|Mult0|auto_generated|op_3~7\ = CARRY((\m_ula|Mult0|auto_generated|op_1~2_combout\ & (!\m_ula|Mult0|auto_generated|le4a\(1) & !\m_ula|Mult0|auto_generated|op_3~5\)) # (!\m_ula|Mult0|auto_generated|op_1~2_combout\ & 
-- ((!\m_ula|Mult0|auto_generated|op_3~5\) # (!\m_ula|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_1~2_combout\,
	datab => \m_ula|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~5\,
	combout => \m_ula|Mult0|auto_generated|op_3~6_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X15_Y12_N24
\m_ula|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~9_combout\ = (\ula_operation~combout\(3)) # ((\ula_operation~combout\(1) & (\ula_operation~combout\(0) & !\ula_operation~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \ula_operation~combout\(0),
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux6~9_combout\);

-- Location: LCCOMB_X14_Y12_N14
\m_ula|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~0_combout\ = (\regB|valueOut\(3) & (\regA|valueOut\(3) $ (\m_ula|Mux6~9_combout\))) # (!\regB|valueOut\(3) & (\regA|valueOut\(3) & \m_ula|Mux6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(3),
	datac => \regA|valueOut\(3),
	datad => \m_ula|Mux6~9_combout\,
	combout => \m_ula|Mux4~0_combout\);

-- Location: LCCOMB_X15_Y12_N30
\m_ula|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~8_combout\ = (\ula_operation~combout\(2) & ((!\ula_operation~combout\(3)))) # (!\ula_operation~combout\(2) & (!\ula_operation~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux6~8_combout\);

-- Location: LCCOMB_X14_Y12_N6
\m_ula|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~5_combout\ = (\m_ula|Mux6~8_combout\ & (\m_ula|Mux4~0_combout\ $ (((\m_ula|Mux4~4_combout\ & !\m_ula|Mux6~9_combout\))))) # (!\m_ula|Mux6~8_combout\ & (((!\m_ula|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux4~4_combout\,
	datab => \m_ula|Mux6~9_combout\,
	datac => \m_ula|Mux4~0_combout\,
	datad => \m_ula|Mux6~8_combout\,
	combout => \m_ula|Mux4~5_combout\);

-- Location: LCCOMB_X15_Y11_N0
\m_ula|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~6_combout\ = (\m_ula|Mux6~0_combout\ & ((\m_ula|Mux4~5_combout\ & (\m_ula|Add1~6_combout\)) # (!\m_ula|Mux4~5_combout\ & ((\m_ula|Mult0|auto_generated|op_3~6_combout\))))) # (!\m_ula|Mux6~0_combout\ & (((\m_ula|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~0_combout\,
	datab => \m_ula|Add1~6_combout\,
	datac => \m_ula|Mult0|auto_generated|op_3~6_combout\,
	datad => \m_ula|Mux4~5_combout\,
	combout => \m_ula|Mux4~6_combout\);

-- Location: LCCOMB_X15_Y11_N2
\m_ula|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~7_combout\ = (\m_ula|Mux6~12_combout\ & ((\ula_operation~combout\(3) & ((!\regA|valueOut\(3)))) # (!\ula_operation~combout\(3) & (\m_ula|Mux4~6_combout\)))) # (!\m_ula|Mux6~12_combout\ & (\m_ula|Mux4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~12_combout\,
	datab => \m_ula|Mux4~6_combout\,
	datac => \regA|valueOut\(3),
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux4~7_combout\);

-- Location: LCCOMB_X14_Y11_N30
\m_ula|Mult0|auto_generated|le5a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(0) = (\regA|valueOut\(0) & ((\regB|valueOut\(3)) # ((\regB|valueOut\(1) & \regB|valueOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regA|valueOut\(0),
	datac => \regB|valueOut\(2),
	datad => \regB|valueOut\(3),
	combout => \m_ula|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X14_Y11_N8
\m_ula|Mult0|auto_generated|op_3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~8_combout\ = ((\m_ula|Mult0|auto_generated|op_1~4_combout\ $ (\m_ula|Mult0|auto_generated|le5a\(0) $ (!\m_ula|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \m_ula|Mult0|auto_generated|op_3~9\ = CARRY((\m_ula|Mult0|auto_generated|op_1~4_combout\ & ((\m_ula|Mult0|auto_generated|le5a\(0)) # (!\m_ula|Mult0|auto_generated|op_3~7\))) # (!\m_ula|Mult0|auto_generated|op_1~4_combout\ & 
-- (\m_ula|Mult0|auto_generated|le5a\(0) & !\m_ula|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_1~4_combout\,
	datab => \m_ula|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~7\,
	combout => \m_ula|Mult0|auto_generated|op_3~8_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X15_Y11_N28
\m_ula|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~0_combout\ = (\m_ula|Mux6~0_combout\ & ((\ula_operation~combout\(0) & ((\m_ula|Mult0|auto_generated|op_3~8_combout\))) # (!\ula_operation~combout\(0) & (\m_ula|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add1~8_combout\,
	datab => \ula_operation~combout\(0),
	datac => \m_ula|Mux6~0_combout\,
	datad => \m_ula|Mult0|auto_generated|op_3~8_combout\,
	combout => \m_ula|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y12_N26
\m_ula|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~8_combout\ = !\m_ula|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m_ula|Add0~7\,
	combout => \m_ula|Add0~8_combout\);

-- Location: LCCOMB_X15_Y11_N6
\m_ula|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~1_combout\ = (\m_ula|Mux3~0_combout\) # ((\m_ula|Mux6~12_combout\ & ((\m_ula|Add0~8_combout\) # (\ula_operation~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~12_combout\,
	datab => \m_ula|Mux3~0_combout\,
	datac => \m_ula|Add0~8_combout\,
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux3~1_combout\);

-- Location: LCCOMB_X13_Y11_N24
\m_ula|Mult0|auto_generated|le5a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(1) = (\regA|valueOut\(1) & ((\regB|valueOut\(3)) # ((\regB|valueOut\(2) & \regB|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \regA|valueOut\(1),
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(3),
	combout => \m_ula|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X13_Y11_N22
\m_ula|Mult0|auto_generated|le3a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(4) = (\regB|valueOut\(1) & ((\regB|valueOut\(0)) # (!\regA|valueOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \regB|valueOut\(0),
	datac => \regB|valueOut\(1),
	combout => \m_ula|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X12_Y12_N16
\m_ula|Mult0|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(3) = (\regB|valueOut\(0) & (\regA|valueOut\(3) $ (((\regB|valueOut\(1)))))) # (!\regB|valueOut\(0) & (((!\regA|valueOut\(2) & \regB|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \regA|valueOut\(2),
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(0),
	combout => \m_ula|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X13_Y11_N14
\m_ula|Mult0|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_1~6_combout\ = (\m_ula|Mult0|auto_generated|le4a\(3) & ((\m_ula|Mult0|auto_generated|le5a\(1) & (\m_ula|Mult0|auto_generated|op_1~5\ & VCC)) # (!\m_ula|Mult0|auto_generated|le5a\(1) & 
-- (!\m_ula|Mult0|auto_generated|op_1~5\)))) # (!\m_ula|Mult0|auto_generated|le4a\(3) & ((\m_ula|Mult0|auto_generated|le5a\(1) & (!\m_ula|Mult0|auto_generated|op_1~5\)) # (!\m_ula|Mult0|auto_generated|le5a\(1) & ((\m_ula|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \m_ula|Mult0|auto_generated|op_1~7\ = CARRY((\m_ula|Mult0|auto_generated|le4a\(3) & (!\m_ula|Mult0|auto_generated|le5a\(1) & !\m_ula|Mult0|auto_generated|op_1~5\)) # (!\m_ula|Mult0|auto_generated|le4a\(3) & ((!\m_ula|Mult0|auto_generated|op_1~5\) # 
-- (!\m_ula|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le4a\(3),
	datab => \m_ula|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_1~5\,
	combout => \m_ula|Mult0|auto_generated|op_1~6_combout\,
	cout => \m_ula|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X14_Y11_N10
\m_ula|Mult0|auto_generated|op_3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~10_combout\ = (\regB|valueOut\(1) & ((\m_ula|Mult0|auto_generated|op_1~6_combout\ & (\m_ula|Mult0|auto_generated|op_3~9\ & VCC)) # (!\m_ula|Mult0|auto_generated|op_1~6_combout\ & (!\m_ula|Mult0|auto_generated|op_3~9\)))) # 
-- (!\regB|valueOut\(1) & ((\m_ula|Mult0|auto_generated|op_1~6_combout\ & (!\m_ula|Mult0|auto_generated|op_3~9\)) # (!\m_ula|Mult0|auto_generated|op_1~6_combout\ & ((\m_ula|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \m_ula|Mult0|auto_generated|op_3~11\ = CARRY((\regB|valueOut\(1) & (!\m_ula|Mult0|auto_generated|op_1~6_combout\ & !\m_ula|Mult0|auto_generated|op_3~9\)) # (!\regB|valueOut\(1) & ((!\m_ula|Mult0|auto_generated|op_3~9\) # 
-- (!\m_ula|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \m_ula|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~9\,
	combout => \m_ula|Mult0|auto_generated|op_3~10_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X15_Y12_N4
\m_ula|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~1_combout\ = (\ula_operation~combout\(2)) # (\ula_operation~combout\(1) $ (!\ula_operation~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datac => \ula_operation~combout\(2),
	datad => \ula_operation~combout\(3),
	combout => \m_ula|Mux2~1_combout\);

-- Location: LCCOMB_X12_Y12_N8
\m_ula|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~8_combout\ = \m_ula|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m_ula|Add1~7\,
	combout => \m_ula|Add1~8_combout\);

-- Location: LCCOMB_X15_Y11_N24
\m_ula|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~0_combout\ = (\ula_operation~combout\(3) & ((!\ula_operation~combout\(0)))) # (!\ula_operation~combout\(3) & ((\ula_operation~combout\(0)) # (!\m_ula|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_operation~combout\(3),
	datac => \m_ula|Add1~8_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y11_N26
\m_ula|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~2_combout\ = (!\m_ula|Mux2~1_combout\ & (((\m_ula|Mult0|auto_generated|op_3~10_combout\ & \ula_operation~combout\(0))) # (!\m_ula|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_3~10_combout\,
	datab => \m_ula|Mux2~1_combout\,
	datac => \m_ula|Mux2~0_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux2~2_combout\);

-- Location: LCCOMB_X13_Y11_N2
\m_ula|Mult0|auto_generated|le4a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(4) = (\regA|valueOut\(3) & (\regB|valueOut\(3) & (\regB|valueOut\(1) $ (\regB|valueOut\(2))))) # (!\regA|valueOut\(3) & (\regB|valueOut\(3) $ (((\regB|valueOut\(1) & \regB|valueOut\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \regB|valueOut\(3),
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X13_Y11_N16
\m_ula|Mult0|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_1~8_combout\ = ((\m_ula|Mult0|auto_generated|le5a\(2) $ (\m_ula|Mult0|auto_generated|le4a\(4) $ (!\m_ula|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \m_ula|Mult0|auto_generated|op_1~9\ = CARRY((\m_ula|Mult0|auto_generated|le5a\(2) & ((\m_ula|Mult0|auto_generated|le4a\(4)) # (!\m_ula|Mult0|auto_generated|op_1~7\))) # (!\m_ula|Mult0|auto_generated|le5a\(2) & (\m_ula|Mult0|auto_generated|le4a\(4) & 
-- !\m_ula|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le5a\(2),
	datab => \m_ula|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_1~7\,
	combout => \m_ula|Mult0|auto_generated|op_1~8_combout\,
	cout => \m_ula|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X14_Y11_N12
\m_ula|Mult0|auto_generated|op_3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~12_combout\ = ((\regB|valueOut\(1) $ (\m_ula|Mult0|auto_generated|op_1~8_combout\ $ (!\m_ula|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \m_ula|Mult0|auto_generated|op_3~13\ = CARRY((\regB|valueOut\(1) & ((\m_ula|Mult0|auto_generated|op_1~8_combout\) # (!\m_ula|Mult0|auto_generated|op_3~11\))) # (!\regB|valueOut\(1) & (\m_ula|Mult0|auto_generated|op_1~8_combout\ & 
-- !\m_ula|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \m_ula|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~11\,
	combout => \m_ula|Mult0|auto_generated|op_3~12_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X15_Y11_N12
\m_ula|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~0_combout\ = (!\m_ula|Mux2~1_combout\ & (((\m_ula|Mult0|auto_generated|op_3~12_combout\ & \ula_operation~combout\(0))) # (!\m_ula|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_3~12_combout\,
	datab => \m_ula|Mux2~1_combout\,
	datac => \m_ula|Mux2~0_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y11_N30
\m_ula|Mult0|auto_generated|le5a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(3) = (\regA|valueOut\(3) & ((\regB|valueOut\(3)) # ((\regB|valueOut\(1) & \regB|valueOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \regB|valueOut\(3),
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X13_Y11_N18
\m_ula|Mult0|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_1~10_combout\ = \m_ula|Mult0|auto_generated|le4a\(5) $ (\m_ula|Mult0|auto_generated|op_1~9\ $ (!\m_ula|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|auto_generated|le4a\(5),
	datad => \m_ula|Mult0|auto_generated|le5a\(3),
	cin => \m_ula|Mult0|auto_generated|op_1~9\,
	combout => \m_ula|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X14_Y11_N14
\m_ula|Mult0|auto_generated|op_3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~14_combout\ = \m_ula|Mult0|auto_generated|op_1~10_combout\ $ (\m_ula|Mult0|auto_generated|op_3~13\ $ (!\regB|valueOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|auto_generated|op_1~10_combout\,
	datad => \regB|valueOut\(1),
	cin => \m_ula|Mult0|auto_generated|op_3~13\,
	combout => \m_ula|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X15_Y11_N22
\m_ula|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~0_combout\ = (!\m_ula|Mux2~1_combout\ & (((\m_ula|Mult0|auto_generated|op_3~14_combout\ & \ula_operation~combout\(0))) # (!\m_ula|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_3~14_combout\,
	datab => \m_ula|Mux2~1_combout\,
	datac => \m_ula|Mux2~0_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y11_N16
\m_ula|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~1_combout\ = (\ula_operation~combout\(3) & (((\ula_operation~combout\(0))))) # (!\ula_operation~combout\(3) & ((\ula_operation~combout\(0) & (\m_ula|Mult0|auto_generated|op_3~14_combout\)) # (!\ula_operation~combout\(0) & 
-- ((\m_ula|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_3~14_combout\,
	datab => \ula_operation~combout\(3),
	datac => \m_ula|Add1~8_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux0~1_combout\);

-- Location: LCCOMB_X15_Y11_N18
\m_ula|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~1_combout\ = (\ula_operation~combout\(3) & (((\ula_operation~combout\(0))))) # (!\ula_operation~combout\(3) & ((\ula_operation~combout\(0) & (\m_ula|Mult0|auto_generated|op_3~12_combout\)) # (!\ula_operation~combout\(0) & 
-- ((\m_ula|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_3~12_combout\,
	datab => \ula_operation~combout\(3),
	datac => \m_ula|Add1~8_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux1~1_combout\);

-- Location: LCCOMB_X15_Y11_N4
\m_ula|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~3_combout\ = (\ula_operation~combout\(3) & (((\ula_operation~combout\(0))))) # (!\ula_operation~combout\(3) & ((\ula_operation~combout\(0) & (\m_ula|Mult0|auto_generated|op_3~10_combout\)) # (!\ula_operation~combout\(0) & 
-- ((\m_ula|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_3~10_combout\,
	datab => \ula_operation~combout\(3),
	datac => \m_ula|Add1~8_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux2~3_combout\);

-- Location: LCCOMB_X18_Y11_N8
\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (!\m_ula|Mux2~1_combout\ & (\m_ula|Mux0~1_combout\ & VCC))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((!\m_ula|Mux2~1_combout\ & \m_ula|Mux0~1_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((!\m_ula|Mux2~1_combout\ & (\m_ula|Mux0~1_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datab => \m_ula|Mux0~1_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X18_Y11_N10
\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X18_Y11_N14
\Div1|auto_generated|divider|divider|StageOut[54]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X18_Y11_N16
\Div1|auto_generated|divider|divider|StageOut[53]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X19_Y11_N26
\Div1|auto_generated|divider|divider|StageOut[52]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ = (!\m_ula|Mux2~1_combout\ & (\m_ula|Mux2~3_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datac => \m_ula|Mux2~3_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X19_Y11_N0
\Div1|auto_generated|divider|divider|StageOut[51]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\m_ula|Mux3~1_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux3~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X19_Y11_N2
\Div1|auto_generated|divider|divider|StageOut[50]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\m_ula|Mux4~7_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|Mux4~7_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X19_Y11_N28
\Div1|auto_generated|divider|divider|StageOut[49]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\m_ula|Mux5~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|Mux5~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X19_Y11_N10
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\Div1|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X19_Y11_N12
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X19_Y11_N14
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X19_Y11_N16
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ & !\Div1|auto_generated|divider|divider|StageOut[52]~4_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X19_Y11_N18
\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X19_Y11_N20
\Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X19_Y11_N22
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

-- Location: LCCOMB_X19_Y11_N4
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & VCC)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (GND)))
-- \Add0~1\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X19_Y11_N6
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Add0~1\) # (GND))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\Add0~1\))
-- \Add0~3\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # (!\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X19_Y11_N8
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = !\Add0~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~3\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X2_Y20_N0
\disp|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|LessThan0~2_combout\ = (!\Add0~4_combout\ & (!\Add0~2_combout\ & ((\disp|LessThan0~1_combout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|LessThan0~1_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~0_combout\,
	combout => \disp|LessThan0~2_combout\);

-- Location: LCCOMB_X20_Y12_N16
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\m_ula|Mux2~1_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))) # (!\m_ula|Mux2~1_combout\ & ((\m_ula|Mux1~1_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\m_ula|Mux1~1_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & ((\m_ula|Mux2~1_combout\) # (!\m_ula|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datab => \m_ula|Mux1~1_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X20_Y12_N20
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X21_Y12_N8
\Mod0|auto_generated|divider|divider|StageOut[18]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~24_combout\ = (\m_ula|Mux0~1_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\m_ula|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux0~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \m_ula|Mux2~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~24_combout\);

-- Location: LCCOMB_X21_Y12_N14
\Mod0|auto_generated|divider|divider|StageOut[17]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~27_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~27_combout\);

-- Location: LCCOMB_X21_Y12_N0
\Mod0|auto_generated|divider|divider|StageOut[16]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~28_combout\ = (\m_ula|Mux2~3_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\m_ula|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux2~3_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \m_ula|Mux2~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~28_combout\);

-- Location: LCCOMB_X21_Y12_N28
\Mod0|auto_generated|divider|divider|StageOut[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \m_ula|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \m_ula|Mux3~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~30_combout\);

-- Location: LCCOMB_X21_Y12_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~29_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[16]~28_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~29_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~28_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[16]~29_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~28_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~29_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~28_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X21_Y12_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~27_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[17]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~27_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~27_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X21_Y12_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[18]~25_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[18]~24_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~25_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~24_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y12_N26
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

-- Location: LCCOMB_X21_Y12_N16
\Mod0|auto_generated|divider|divider|StageOut[23]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~32_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~32_combout\);

-- Location: LCCOMB_X22_Y12_N0
\Mod0|auto_generated|divider|divider|StageOut[22]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~33_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~33_combout\);

-- Location: LCCOMB_X22_Y12_N2
\Mod0|auto_generated|divider|divider|StageOut[21]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~34_combout\ = (\m_ula|Mux3~1_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux3~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~34_combout\);

-- Location: LCCOMB_X22_Y12_N14
\Mod0|auto_generated|divider|divider|StageOut[20]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~36_combout\ = (\m_ula|Mux4~7_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux4~7_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~36_combout\);

-- Location: LCCOMB_X22_Y12_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[23]~53_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~32_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~53_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~32_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y12_N26
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

-- Location: LCCOMB_X23_Y12_N18
\Mod0|auto_generated|divider|divider|StageOut[27]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\m_ula|Mux3~1_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \m_ula|Mux3~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\);

-- Location: LCCOMB_X23_Y12_N30
\Mod0|auto_generated|divider|divider|StageOut[26]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\ = (\m_ula|Mux4~7_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux4~7_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\);

-- Location: LCCOMB_X23_Y12_N26
\Mod0|auto_generated|divider|divider|StageOut[25]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~42_combout\ = (\m_ula|Mux5~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux5~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~42_combout\);

-- Location: LCCOMB_X23_Y12_N0
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[25]~43_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~42_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[25]~43_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~43_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~42_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X23_Y12_N4
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[27]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~39_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X23_Y12_N14
\Mod0|auto_generated|divider|divider|StageOut[28]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~55_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~54_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~55_combout\);

-- Location: LCCOMB_X23_Y12_N6
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[28]~38_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[28]~55_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~55_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y12_N8
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

-- Location: LCCOMB_X24_Y12_N28
\Mod0|auto_generated|divider|divider|StageOut[33]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\);

-- Location: LCCOMB_X24_Y12_N24
\Mod0|auto_generated|divider|divider|StageOut[32]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~47_combout\);

-- Location: LCCOMB_X24_Y12_N18
\Mod0|auto_generated|divider|divider|StageOut[31]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\ = (\m_ula|Mux5~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux5~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\);

-- Location: LCCOMB_X24_Y12_N2
\Mod0|auto_generated|divider|divider|StageOut[30]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~45_combout\ = (\m_ula|Mux6~13_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~13_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~45_combout\);

-- Location: LCCOMB_X24_Y12_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[30]~44_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~45_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[30]~44_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~45_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X24_Y12_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~58_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~47_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~58_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~47_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~58_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~47_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X24_Y12_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y12_N14
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

-- Location: LCCOMB_X24_Y12_N22
\Mod0|auto_generated|divider|divider|StageOut[36]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\m_ula|Mux6~13_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~13_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~50_combout\);

-- Location: LCCOMB_X1_Y19_N14
\disp|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~4_combout\ = (\disp|LessThan0~2_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~50_combout\))) # (!\disp|LessThan0~2_combout\ & (\disp|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~2_combout\,
	datab => \disp|LessThan0~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~50_combout\,
	combout => \disp|Add0~4_combout\);

-- Location: LCCOMB_X24_Y12_N20
\Mod0|auto_generated|divider|divider|StageOut[31]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~49_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~49_combout\);

-- Location: LCCOMB_X24_Y12_N26
\Mod0|auto_generated|divider|divider|StageOut[37]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~52_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~49_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~49_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~52_combout\);

-- Location: LCCOMB_X2_Y20_N2
\disp|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~1_cout\ = CARRY(!\m_ula|Mux7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux7~6_combout\,
	datad => VCC,
	cout => \disp|Add0~1_cout\);

-- Location: LCCOMB_X2_Y20_N6
\disp|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~5_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[37]~52_combout\ & (\disp|Add0~3\ $ (GND))) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~52_combout\ & ((GND) # (!\disp|Add0~3\)))
-- \disp|Add0~6\ = CARRY((!\disp|Add0~3\) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~52_combout\,
	datad => VCC,
	cin => \disp|Add0~3\,
	combout => \disp|Add0~5_combout\,
	cout => \disp|Add0~6\);

-- Location: LCCOMB_X2_Y20_N8
\disp|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\ & ((\disp|Add0~6\) # (GND))) # (!\Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\ & (!\disp|Add0~6\))
-- \disp|Add0~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\) # (!\disp|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\,
	datad => VCC,
	cin => \disp|Add0~6\,
	combout => \disp|Add0~8_combout\,
	cout => \disp|Add0~9\);

-- Location: LCCOMB_X24_Y12_N0
\Mod0|auto_generated|divider|divider|StageOut[38]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~58_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~47_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\);

-- Location: LCCOMB_X1_Y19_N2
\disp|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~10_combout\ = (\disp|LessThan0~2_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\))) # (!\disp|LessThan0~2_combout\ & (\disp|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Add0~8_combout\,
	datac => \disp|LessThan0~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[38]~51_combout\,
	combout => \disp|Add0~10_combout\);

-- Location: LCCOMB_X1_Y19_N24
\disp|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~7_combout\ = (\disp|LessThan0~2_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[37]~52_combout\)) # (!\disp|LessThan0~2_combout\ & ((\disp|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~52_combout\,
	datab => \disp|LessThan0~2_combout\,
	datad => \disp|Add0~5_combout\,
	combout => \disp|Add0~7_combout\);

-- Location: LCCOMB_X1_Y19_N20
\disp|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux6~0_combout\ = (\disp|Add0~4_combout\ & (\disp|Add0~10_combout\ & (!\disp|Add0~7_combout\ & !\m_ula|Mux7~6_combout\))) # (!\disp|Add0~4_combout\ & (!\disp|Add0~10_combout\ & (\disp|Add0~7_combout\ $ (\m_ula|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~4_combout\,
	datab => \disp|Add0~10_combout\,
	datac => \disp|Add0~7_combout\,
	datad => \m_ula|Mux7~6_combout\,
	combout => \disp|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\disp|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux5~0_combout\ = (\disp|Add0~4_combout\ & (!\m_ula|Mux7~6_combout\ & (\disp|Add0~10_combout\ $ (\disp|Add0~7_combout\)))) # (!\disp|Add0~4_combout\ & (!\disp|Add0~10_combout\ & (\disp|Add0~7_combout\ & \m_ula|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~4_combout\,
	datab => \disp|Add0~10_combout\,
	datac => \disp|Add0~7_combout\,
	datad => \m_ula|Mux7~6_combout\,
	combout => \disp|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y19_N8
\disp|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux4~0_combout\ = (\disp|Add0~4_combout\ & (!\disp|Add0~7_combout\ & !\m_ula|Mux7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~4_combout\,
	datac => \disp|Add0~7_combout\,
	datad => \m_ula|Mux7~6_combout\,
	combout => \disp|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y19_N10
\disp|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux3~0_combout\ = (\disp|Add0~4_combout\ & ((\disp|Add0~10_combout\ & (!\disp|Add0~7_combout\ & !\m_ula|Mux7~6_combout\)) # (!\disp|Add0~10_combout\ & (\disp|Add0~7_combout\ & \m_ula|Mux7~6_combout\)))) # (!\disp|Add0~4_combout\ & 
-- (!\disp|Add0~10_combout\ & (\disp|Add0~7_combout\ $ (\m_ula|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~4_combout\,
	datab => \disp|Add0~10_combout\,
	datac => \disp|Add0~7_combout\,
	datad => \m_ula|Mux7~6_combout\,
	combout => \disp|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y19_N4
\disp|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux2~0_combout\ = (\m_ula|Mux7~6_combout\) # ((\disp|Add0~4_combout\ & (\disp|Add0~10_combout\ & !\disp|Add0~7_combout\)) # (!\disp|Add0~4_combout\ & (!\disp|Add0~10_combout\ & \disp|Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~4_combout\,
	datab => \disp|Add0~10_combout\,
	datac => \disp|Add0~7_combout\,
	datad => \m_ula|Mux7~6_combout\,
	combout => \disp|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y19_N6
\disp|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux1~0_combout\ = (\m_ula|Mux7~6_combout\ & (!\disp|Add0~10_combout\ & ((\disp|Add0~4_combout\) # (!\disp|Add0~7_combout\)))) # (!\m_ula|Mux7~6_combout\ & (\disp|Add0~4_combout\ & ((!\disp|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~4_combout\,
	datab => \disp|Add0~10_combout\,
	datac => \disp|Add0~7_combout\,
	datad => \m_ula|Mux7~6_combout\,
	combout => \disp|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y19_N0
\disp|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux0~0_combout\ = (\disp|Add0~10_combout\) # ((\disp|Add0~4_combout\ & ((!\m_ula|Mux7~6_combout\) # (!\disp|Add0~7_combout\))) # (!\disp|Add0~4_combout\ & (\disp|Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~4_combout\,
	datab => \disp|Add0~10_combout\,
	datac => \disp|Add0~7_combout\,
	datad => \m_ula|Mux7~6_combout\,
	combout => \disp|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y12_N0
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((!\m_ula|Mux2~1_combout\ & \m_ula|Mux2~3_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((!\m_ula|Mux2~1_combout\ & \m_ula|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datab => \m_ula|Mux2~3_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X20_Y12_N2
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\m_ula|Mux2~1_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))) # (!\m_ula|Mux2~1_combout\ & ((\m_ula|Mux1~1_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\m_ula|Mux1~1_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & ((\m_ula|Mux2~1_combout\) # (!\m_ula|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datab => \m_ula|Mux1~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X20_Y12_N4
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (!\m_ula|Mux2~1_combout\ & (\m_ula|Mux0~1_combout\ & VCC))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((!\m_ula|Mux2~1_combout\ & \m_ula|Mux0~1_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\m_ula|Mux2~1_combout\ & (\m_ula|Mux0~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datab => \m_ula|Mux0~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X20_Y12_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X19_Y12_N2
\Div0|auto_generated|divider|divider|StageOut[16]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~28_combout\ = (!\m_ula|Mux2~1_combout\ & (\m_ula|Mux2~3_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux2~1_combout\,
	datac => \m_ula|Mux2~3_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~28_combout\);

-- Location: LCCOMB_X20_Y12_N24
\Div0|auto_generated|divider|divider|StageOut[18]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~25_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~25_combout\);

-- Location: LCCOMB_X20_Y12_N10
\Div0|auto_generated|divider|divider|StageOut[17]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~26_combout\ = (!\m_ula|Mux2~1_combout\ & (\m_ula|Mux1~1_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux2~1_combout\,
	datac => \m_ula|Mux1~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~26_combout\);

-- Location: LCCOMB_X19_Y12_N14
\Div0|auto_generated|divider|divider|StageOut[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~30_combout\ = (\m_ula|Mux3~1_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux3~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~30_combout\);

-- Location: LCCOMB_X19_Y12_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~31_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~30_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~31_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~31_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~30_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X19_Y12_N26
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~24_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~25_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~25_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y12_N28
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

-- Location: LCCOMB_X19_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[22]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~51_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[16]~28_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~28_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~51_combout\);

-- Location: LCCOMB_X1_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[21]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~35_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~35_combout\);

-- Location: LCCOMB_X20_Y12_N8
\Div0|auto_generated|divider|divider|StageOut[20]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~37_combout\ = (\m_ula|Mux4~7_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|Mux4~7_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~37_combout\);

-- Location: LCCOMB_X16_Y12_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~34_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~35_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~34_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~35_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~34_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~35_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~34_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~35_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X16_Y12_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~33_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~51_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~33_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~51_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~33_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~33_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~51_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X20_Y12_N26
\Div0|auto_generated|divider|divider|StageOut[23]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~50_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~26_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~50_combout\);

-- Location: LCCOMB_X16_Y12_N24
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~32_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~50_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~32_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~50_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X16_Y12_N26
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

-- Location: LCCOMB_X16_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[28]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~38_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~38_combout\);

-- Location: LCCOMB_X16_Y12_N2
\Div0|auto_generated|divider|divider|StageOut[27]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~39_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~39_combout\);

-- Location: LCCOMB_X16_Y12_N28
\Div0|auto_generated|divider|divider|StageOut[26]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~40_combout\ = (\m_ula|Mux4~7_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux4~7_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~40_combout\);

-- Location: LCCOMB_X16_Y12_N4
\Div0|auto_generated|divider|divider|StageOut[25]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~42_combout\ = (\m_ula|Mux5~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux5~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~42_combout\);

-- Location: LCCOMB_X16_Y12_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[25]~43_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~42_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~43_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~43_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~42_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X16_Y12_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~54_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~39_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[27]~54_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~39_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~54_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~39_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X16_Y12_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~52_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~38_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~38_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X16_Y12_N16
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

-- Location: LCCOMB_X18_Y12_N8
\Div0|auto_generated|divider|divider|StageOut[33]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~44_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~44_combout\);

-- Location: LCCOMB_X18_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[32]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~55_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\m_ula|Mux4~7_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \m_ula|Mux4~7_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~55_combout\);

-- Location: LCCOMB_X18_Y12_N14
\Div0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X18_Y12_N2
\Div0|auto_generated|divider|divider|StageOut[30]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~49_combout\ = (\m_ula|Mux6~13_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux6~13_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~49_combout\);

-- Location: LCCOMB_X18_Y12_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~48_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~49_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X18_Y12_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~46_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~46_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X18_Y12_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~45_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~45_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~55_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X18_Y12_N26
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~53_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~44_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~53_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~44_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y12_N28
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

-- Location: LCCOMB_X2_Y20_N26
\disp|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~13_combout\ = (\disp|LessThan0~2_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\disp|LessThan0~2_combout\ & (\disp|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~11_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \disp|LessThan0~2_combout\,
	combout => \disp|Add0~13_combout\);

-- Location: LCCOMB_X2_Y20_N14
\disp|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~17_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\disp|Add0~15\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\disp|Add0~15\ & VCC))
-- \disp|Add0~18\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\disp|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	cin => \disp|Add0~15\,
	combout => \disp|Add0~17_combout\,
	cout => \disp|Add0~18\);

-- Location: LCCOMB_X2_Y20_N30
\disp|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~19_combout\ = (\disp|LessThan0~2_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\disp|LessThan0~2_combout\ & (\disp|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Add0~17_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \disp|LessThan0~2_combout\,
	combout => \disp|Add0~19_combout\);

-- Location: LCCOMB_X2_Y20_N16
\disp|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\disp|Add0~18\ & VCC)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\disp|Add0~18\))
-- \disp|Add0~21\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\disp|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \disp|Add0~18\,
	combout => \disp|Add0~20_combout\,
	cout => \disp|Add0~21\);

-- Location: LCCOMB_X1_Y20_N24
\disp|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~22_combout\ = (\disp|LessThan0~2_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\disp|LessThan0~2_combout\ & (\disp|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|LessThan0~2_combout\,
	datac => \disp|Add0~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp|Add0~22_combout\);

-- Location: LCCOMB_X2_Y20_N28
\disp|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~16_combout\ = (\disp|LessThan0~2_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\disp|LessThan0~2_combout\ & (\disp|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \disp|LessThan0~2_combout\,
	combout => \disp|Add0~16_combout\);

-- Location: LCCOMB_X1_Y20_N10
\disp|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux13~0_combout\ = (\disp|Add0~22_combout\ & (!\disp|Add0~13_combout\ & (!\disp|Add0~19_combout\ & \disp|Add0~16_combout\))) # (!\disp|Add0~22_combout\ & (!\disp|Add0~16_combout\ & (\disp|Add0~13_combout\ $ (\disp|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~13_combout\,
	datab => \disp|Add0~19_combout\,
	datac => \disp|Add0~22_combout\,
	datad => \disp|Add0~16_combout\,
	combout => \disp|Mux13~0_combout\);

-- Location: LCCOMB_X1_Y20_N4
\disp|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux12~0_combout\ = (\disp|Add0~13_combout\ & (\disp|Add0~19_combout\ & (!\disp|Add0~22_combout\ & !\disp|Add0~16_combout\))) # (!\disp|Add0~13_combout\ & (\disp|Add0~16_combout\ & (\disp|Add0~19_combout\ $ (\disp|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~13_combout\,
	datab => \disp|Add0~19_combout\,
	datac => \disp|Add0~22_combout\,
	datad => \disp|Add0~16_combout\,
	combout => \disp|Mux12~0_combout\);

-- Location: LCCOMB_X1_Y20_N6
\disp|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux11~0_combout\ = (!\disp|Add0~19_combout\ & (!\disp|Add0~13_combout\ & \disp|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Add0~19_combout\,
	datac => \disp|Add0~13_combout\,
	datad => \disp|Add0~16_combout\,
	combout => \disp|Mux11~0_combout\);

-- Location: LCCOMB_X1_Y20_N0
\disp|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux10~0_combout\ = (\disp|Add0~13_combout\ & (!\disp|Add0~22_combout\ & (\disp|Add0~19_combout\ $ (!\disp|Add0~16_combout\)))) # (!\disp|Add0~13_combout\ & ((\disp|Add0~19_combout\ & (!\disp|Add0~22_combout\ & !\disp|Add0~16_combout\)) # 
-- (!\disp|Add0~19_combout\ & (\disp|Add0~22_combout\ & \disp|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~13_combout\,
	datab => \disp|Add0~19_combout\,
	datac => \disp|Add0~22_combout\,
	datad => \disp|Add0~16_combout\,
	combout => \disp|Mux10~0_combout\);

-- Location: LCCOMB_X1_Y20_N2
\disp|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux9~0_combout\ = (\disp|Add0~13_combout\) # ((\disp|Add0~19_combout\ & (!\disp|Add0~22_combout\ & !\disp|Add0~16_combout\)) # (!\disp|Add0~19_combout\ & (\disp|Add0~22_combout\ & \disp|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~13_combout\,
	datab => \disp|Add0~19_combout\,
	datac => \disp|Add0~22_combout\,
	datad => \disp|Add0~16_combout\,
	combout => \disp|Mux9~0_combout\);

-- Location: LCCOMB_X1_Y20_N12
\disp|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux8~0_combout\ = (\disp|Add0~13_combout\ & (!\disp|Add0~22_combout\ & ((\disp|Add0~16_combout\) # (!\disp|Add0~19_combout\)))) # (!\disp|Add0~13_combout\ & (!\disp|Add0~19_combout\ & ((\disp|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~13_combout\,
	datab => \disp|Add0~19_combout\,
	datac => \disp|Add0~22_combout\,
	datad => \disp|Add0~16_combout\,
	combout => \disp|Mux8~0_combout\);

-- Location: LCCOMB_X1_Y20_N22
\disp|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux7~0_combout\ = (\disp|Add0~22_combout\) # ((\disp|Add0~19_combout\ & ((!\disp|Add0~16_combout\) # (!\disp|Add0~13_combout\))) # (!\disp|Add0~19_combout\ & ((\disp|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~13_combout\,
	datab => \disp|Add0~19_combout\,
	datac => \disp|Add0~22_combout\,
	datad => \disp|Add0~16_combout\,
	combout => \disp|Mux7~0_combout\);

-- Location: LCCOMB_X2_Y20_N20
\disp|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~26_combout\ = (\Add0~2_combout\ & (!\disp|Add0~24\)) # (!\Add0~2_combout\ & (\disp|Add0~24\ & VCC))
-- \disp|Add0~27\ = CARRY((\Add0~2_combout\ & !\disp|Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \disp|Add0~24\,
	combout => \disp|Add0~26_combout\,
	cout => \disp|Add0~27\);

-- Location: LCCOMB_X2_Y20_N22
\disp|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~29_combout\ = (\Add0~4_combout\ & (!\disp|Add0~27\ & VCC)) # (!\Add0~4_combout\ & (\disp|Add0~27\ $ (GND)))
-- \disp|Add0~30\ = CARRY((!\Add0~4_combout\ & !\disp|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \disp|Add0~27\,
	combout => \disp|Add0~29_combout\,
	cout => \disp|Add0~30\);

-- Location: LCCOMB_X2_Y20_N24
\disp|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~32_combout\ = !\disp|Add0~30\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \disp|Add0~30\,
	combout => \disp|Add0~32_combout\);

-- Location: LCCOMB_X1_Y23_N6
\disp|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~34_combout\ = (\disp|Add0~32_combout\ & !\disp|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Add0~32_combout\,
	datad => \disp|LessThan0~2_combout\,
	combout => \disp|Add0~34_combout\);

-- Location: LCCOMB_X1_Y23_N28
\disp|Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~31_combout\ = (\disp|Add0~29_combout\ & !\disp|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|Add0~29_combout\,
	datad => \disp|LessThan0~2_combout\,
	combout => \disp|Add0~31_combout\);

-- Location: LCCOMB_X1_Y23_N24
\disp|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~25_combout\ = (\disp|LessThan0~2_combout\ & ((\Add0~0_combout\))) # (!\disp|LessThan0~2_combout\ & (\disp|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~23_combout\,
	datac => \Add0~0_combout\,
	datad => \disp|LessThan0~2_combout\,
	combout => \disp|Add0~25_combout\);

-- Location: LCCOMB_X1_Y23_N10
\disp|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Add0~28_combout\ = (\disp|Add0~26_combout\ & !\disp|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Add0~26_combout\,
	datad => \disp|LessThan0~2_combout\,
	combout => \disp|Add0~28_combout\);

-- Location: LCCOMB_X1_Y23_N16
\disp|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux20~0_combout\ = (\disp|Add0~34_combout\ & (!\disp|Add0~31_combout\ & (!\disp|Add0~25_combout\ & \disp|Add0~28_combout\))) # (!\disp|Add0~34_combout\ & (!\disp|Add0~28_combout\ & (\disp|Add0~31_combout\ $ (\disp|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~34_combout\,
	datab => \disp|Add0~31_combout\,
	datac => \disp|Add0~25_combout\,
	datad => \disp|Add0~28_combout\,
	combout => \disp|Mux20~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\disp|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux19~0_combout\ = (\disp|Add0~34_combout\ & (!\disp|Add0~31_combout\ & (!\disp|Add0~25_combout\ & \disp|Add0~28_combout\))) # (!\disp|Add0~34_combout\ & (\disp|Add0~31_combout\ & (\disp|Add0~25_combout\ $ (\disp|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~34_combout\,
	datab => \disp|Add0~31_combout\,
	datac => \disp|Add0~25_combout\,
	datad => \disp|Add0~28_combout\,
	combout => \disp|Mux19~0_combout\);

-- Location: LCCOMB_X1_Y23_N12
\disp|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux18~0_combout\ = (!\disp|Add0~29_combout\ & (\disp|Add0~26_combout\ & (!\disp|Add0~25_combout\ & !\disp|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~29_combout\,
	datab => \disp|Add0~26_combout\,
	datac => \disp|Add0~25_combout\,
	datad => \disp|LessThan0~2_combout\,
	combout => \disp|Mux18~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\disp|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux17~0_combout\ = (\disp|Add0~34_combout\ & (!\disp|Add0~31_combout\ & (!\disp|Add0~25_combout\ & \disp|Add0~28_combout\))) # (!\disp|Add0~34_combout\ & ((\disp|Add0~31_combout\ & (\disp|Add0~25_combout\ $ (!\disp|Add0~28_combout\))) # 
-- (!\disp|Add0~31_combout\ & (\disp|Add0~25_combout\ & !\disp|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~34_combout\,
	datab => \disp|Add0~31_combout\,
	datac => \disp|Add0~25_combout\,
	datad => \disp|Add0~28_combout\,
	combout => \disp|Mux17~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\disp|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux16~0_combout\ = (\disp|Add0~25_combout\) # ((\disp|Add0~34_combout\ & (!\disp|Add0~31_combout\ & \disp|Add0~28_combout\)) # (!\disp|Add0~34_combout\ & (\disp|Add0~31_combout\ & !\disp|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~34_combout\,
	datab => \disp|Add0~31_combout\,
	datac => \disp|Add0~25_combout\,
	datad => \disp|Add0~28_combout\,
	combout => \disp|Mux16~0_combout\);

-- Location: LCCOMB_X1_Y23_N2
\disp|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux15~0_combout\ = (\disp|Add0~25_combout\ & (!\disp|Add0~34_combout\ & ((\disp|Add0~28_combout\) # (!\disp|Add0~31_combout\)))) # (!\disp|Add0~25_combout\ & (((!\disp|Add0~31_combout\ & \disp|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~34_combout\,
	datab => \disp|Add0~31_combout\,
	datac => \disp|Add0~25_combout\,
	datad => \disp|Add0~28_combout\,
	combout => \disp|Mux15~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\disp|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp|Mux14~0_combout\ = (\disp|Add0~34_combout\) # ((\disp|Add0~31_combout\ & ((!\disp|Add0~28_combout\) # (!\disp|Add0~25_combout\))) # (!\disp|Add0~31_combout\ & ((\disp|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~34_combout\,
	datab => \disp|Add0~31_combout\,
	datac => \disp|Add0~25_combout\,
	datad => \disp|Add0~28_combout\,
	combout => \disp|Mux14~0_combout\);

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	datain => \m_ula|Mux7~6_combout\,
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
	datain => \m_ula|Mux6~13_combout\,
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
	datain => \m_ula|Mux5~6_combout\,
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
	datain => \m_ula|Mux4~7_combout\,
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
	datain => \m_ula|Mux3~1_combout\,
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
	datain => \m_ula|Mux2~2_combout\,
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
	datain => \m_ula|Mux1~0_combout\,
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
	datain => \m_ula|Mux0~0_combout\,
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
	datain => \disp|Mux12~0_combout\,
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
	datain => \disp|Mux10~0_combout\,
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
	datain => \disp|Mux9~0_combout\,
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
	datain => \disp|ALT_INV_Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \disp|Mux20~0_combout\,
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
	datain => \disp|Mux19~0_combout\,
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
	datain => \disp|Mux18~0_combout\,
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
	datain => \disp|Mux17~0_combout\,
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
	datain => \disp|Mux16~0_combout\,
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
	datain => \disp|Mux15~0_combout\,
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
	datain => \disp|ALT_INV_Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(7));
END structure;


