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

-- DATE "11/09/2016 14:35:18"

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
-- latch_ula	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- HEX0[7]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[7]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[7]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ula_operation[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[0]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setRegB	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setRegA	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando[2]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \m_ula|Mux8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \m_ula|Add2~0_combout\ : std_logic;
SIGNAL \m_ula|Add1~2_combout\ : std_logic;
SIGNAL \m_ula|Add1~5\ : std_logic;
SIGNAL \m_ula|Add2~4_combout\ : std_logic;
SIGNAL \m_ula|Add1~6_combout\ : std_logic;
SIGNAL \m_ula|Add1~7\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \m_ula|Add1~8_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[54]~32_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[53]~34_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[52]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[51]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[50]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[49]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[60]~46_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~53_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~55_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~57_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~60_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~61_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~64_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~67_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[62]~49_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[59]~52_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~72_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \m_ula|Mux8~0_combout\ : std_logic;
SIGNAL \m_ula|Mux8~0clkctrl_outclk\ : std_logic;
SIGNAL \setRegA~combout\ : std_logic;
SIGNAL \m_ula|Add1~0_combout\ : std_logic;
SIGNAL \setRegB~combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~0_combout\ : std_logic;
SIGNAL \m_ula|LessThan0~0_combout\ : std_logic;
SIGNAL \m_ula|LessThan0~1_combout\ : std_logic;
SIGNAL \m_ula|LessThan0~2_combout\ : std_logic;
SIGNAL \m_ula|Mux0~0_combout\ : std_logic;
SIGNAL \m_ula|Mux0~1_combout\ : std_logic;
SIGNAL \m_ula|Mux0~2_combout\ : std_logic;
SIGNAL \m_ula|Mux0~3_combout\ : std_logic;
SIGNAL \m_ula|Add0~1\ : std_logic;
SIGNAL \m_ula|Add0~2_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \m_ula|Add2~1\ : std_logic;
SIGNAL \m_ula|Add2~2_combout\ : std_logic;
SIGNAL \m_ula|Mux1~0_combout\ : std_logic;
SIGNAL \m_ula|Mux1~1_combout\ : std_logic;
SIGNAL \m_ula|Add1~1\ : std_logic;
SIGNAL \m_ula|Add1~3\ : std_logic;
SIGNAL \m_ula|Add1~4_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \m_ula|Add0~3\ : std_logic;
SIGNAL \m_ula|Add0~4_combout\ : std_logic;
SIGNAL \m_ula|Mux2~0_combout\ : std_logic;
SIGNAL \m_ula|Mux2~1_combout\ : std_logic;
SIGNAL \m_ula|Add0~5\ : std_logic;
SIGNAL \m_ula|Add0~6_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \m_ula|Add2~3\ : std_logic;
SIGNAL \m_ula|Add2~5\ : std_logic;
SIGNAL \m_ula|Add2~6_combout\ : std_logic;
SIGNAL \m_ula|Mux3~0_combout\ : std_logic;
SIGNAL \m_ula|Mux3~1_combout\ : std_logic;
SIGNAL \m_ula|Add2~7\ : std_logic;
SIGNAL \m_ula|Add2~8_combout\ : std_logic;
SIGNAL \m_ula|Mux4~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~7\ : std_logic;
SIGNAL \m_ula|Add0~8_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \m_ula|Mux4~1_combout\ : std_logic;
SIGNAL \m_ula|Mux4~2_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \m_ula|Mux5~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \m_ula|Mux6~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \m_ula|Mux7~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ : std_logic;
SIGNAL \display0|decode~0_combout\ : std_logic;
SIGNAL \display0|decode~1_combout\ : std_logic;
SIGNAL \display0|decode~2_combout\ : std_logic;
SIGNAL \display0|decode~3_combout\ : std_logic;
SIGNAL \display0|decode~4_combout\ : std_logic;
SIGNAL \display0|decode~5_combout\ : std_logic;
SIGNAL \display0|decode~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[54]~33_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[53]~35_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[52]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[51]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[50]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[49]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[61]~50_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~62_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[62]~44_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[61]~45_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[60]~51_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~50_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~63_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~65_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~66_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~54_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~56_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~71_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~58_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~70_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~59_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~47_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~73_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \display1|decode~0_combout\ : std_logic;
SIGNAL \display1|decode~1_combout\ : std_logic;
SIGNAL \display1|decode~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \display1|decode~3_combout\ : std_logic;
SIGNAL \display1|decode~4_combout\ : std_logic;
SIGNAL \display1|decode~5_combout\ : std_logic;
SIGNAL \display1|decode~6_combout\ : std_logic;
SIGNAL \display1|decode~7_combout\ : std_logic;
SIGNAL \display1|decode~8_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \display2|decode~0_combout\ : std_logic;
SIGNAL \display2|decode~1_combout\ : std_logic;
SIGNAL \display2|decode~2_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \m_ula|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \m_ula|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \regB|valueOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regA|valueOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_ula|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ula_operation~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \operando~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \display1|ALT_INV_decode~8_combout\ : std_logic;
SIGNAL \display0|ALT_INV_decode~6_combout\ : std_logic;

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

\m_ula|Mux8~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \m_ula|Mux8~0_combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\Div4|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
\display1|ALT_INV_decode~8_combout\ <= NOT \display1|decode~8_combout\;
\display0|ALT_INV_decode~6_combout\ <= NOT \display0|decode~6_combout\;

-- Location: LCCOMB_X35_Y13_N16
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\m_ula|result\(6) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\m_ula|result\(6) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\m_ula|result\(6) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(6),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X35_Y13_N18
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\m_ula|result\(7) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\m_ula|result\(7) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\m_ula|result\(7) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(7),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X34_Y13_N4
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X34_Y13_N6
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X33_Y13_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X33_Y13_N12
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X30_Y13_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X24_Y19_N16
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \m_ula|result\(3) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\m_ula|result\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(3),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X23_Y19_N4
\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[60]~46_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[60]~51_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[60]~46_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[60]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[60]~46_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[60]~51_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y19_N20
\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[15]~64_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~65_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[15]~64_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[15]~64_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[15]~65_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X23_Y19_N24
\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[17]~51_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~62_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[17]~51_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~62_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[17]~51_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[17]~62_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X24_Y20_N6
\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[20]~70_combout\) # (\Div2|auto_generated|divider|divider|StageOut[20]~71_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[20]~70_combout\) # (\Div2|auto_generated|divider|divider|StageOut[20]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[20]~70_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~71_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y20_N8
\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[21]~55_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[21]~56_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~55_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[21]~56_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[21]~55_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~56_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[21]~55_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~56_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y20_N10
\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[22]~67_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~54_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[22]~67_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~54_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~67_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~67_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[22]~54_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X29_Y19_N14
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \m_ula|result\(5) $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\m_ula|result\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(5),
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X29_Y19_N16
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\m_ula|result\(6) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\m_ula|result\(6) & 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\m_ula|result\(6) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(6),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X29_Y19_N18
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\m_ula|result\(7) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\m_ula|result\(7) & 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\m_ula|result\(7) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(7),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X32_Y19_N22
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~40_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X30_Y19_N20
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X30_Y19_N22
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X25_Y18_N20
\Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \m_ula|result\(3) $ (VCC)
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\m_ula|result\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(3),
	datad => VCC,
	combout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X25_Y18_N22
\Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\m_ula|result\(4) & (\Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\m_ula|result\(4) & 
-- (!\Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\m_ula|result\(4) & !\Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(4),
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X25_Y18_N26
\Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\m_ula|result\(6) & (!\Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\m_ula|result\(6) & ((\Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # 
-- (GND)))
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\m_ula|result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(6),
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X49_Y13_N0
\m_ula|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add2~0_combout\ = (\regB|valueOut\(0) & (\regA|valueOut\(0) $ (VCC))) # (!\regB|valueOut\(0) & ((\regA|valueOut\(0)) # (GND)))
-- \m_ula|Add2~1\ = CARRY((\regA|valueOut\(0)) # (!\regB|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(0),
	datab => \regA|valueOut\(0),
	datad => VCC,
	combout => \m_ula|Add2~0_combout\,
	cout => \m_ula|Add2~1\);

-- Location: LCCOMB_X46_Y13_N12
\m_ula|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~2_combout\ = (\regA|valueOut\(1) & ((\regB|valueOut\(1) & (!\m_ula|Add1~1\)) # (!\regB|valueOut\(1) & ((\m_ula|Add1~1\) # (GND))))) # (!\regA|valueOut\(1) & ((\regB|valueOut\(1) & (\m_ula|Add1~1\ & VCC)) # (!\regB|valueOut\(1) & 
-- (!\m_ula|Add1~1\))))
-- \m_ula|Add1~3\ = CARRY((\regA|valueOut\(1) & ((!\m_ula|Add1~1\) # (!\regB|valueOut\(1)))) # (!\regA|valueOut\(1) & (!\regB|valueOut\(1) & !\m_ula|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datab => \regB|valueOut\(1),
	datad => VCC,
	cin => \m_ula|Add1~1\,
	combout => \m_ula|Add1~2_combout\,
	cout => \m_ula|Add1~3\);

-- Location: LCCOMB_X46_Y13_N14
\m_ula|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~4_combout\ = ((\regA|valueOut\(2) $ (\regB|valueOut\(2) $ (\m_ula|Add1~3\)))) # (GND)
-- \m_ula|Add1~5\ = CARRY((\regA|valueOut\(2) & (\regB|valueOut\(2) & !\m_ula|Add1~3\)) # (!\regA|valueOut\(2) & ((\regB|valueOut\(2)) # (!\m_ula|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \regB|valueOut\(2),
	datad => VCC,
	cin => \m_ula|Add1~3\,
	combout => \m_ula|Add1~4_combout\,
	cout => \m_ula|Add1~5\);

-- Location: LCCOMB_X49_Y13_N4
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

-- Location: LCCOMB_X46_Y13_N16
\m_ula|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~6_combout\ = (\regB|valueOut\(3) & ((\regA|valueOut\(3) & (!\m_ula|Add1~5\)) # (!\regA|valueOut\(3) & (\m_ula|Add1~5\ & VCC)))) # (!\regB|valueOut\(3) & ((\regA|valueOut\(3) & ((\m_ula|Add1~5\) # (GND))) # (!\regA|valueOut\(3) & 
-- (!\m_ula|Add1~5\))))
-- \m_ula|Add1~7\ = CARRY((\regB|valueOut\(3) & (\regA|valueOut\(3) & !\m_ula|Add1~5\)) # (!\regB|valueOut\(3) & ((\regA|valueOut\(3)) # (!\m_ula|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(3),
	datab => \regA|valueOut\(3),
	datad => VCC,
	cin => \m_ula|Add1~5\,
	combout => \m_ula|Add1~6_combout\,
	cout => \m_ula|Add1~7\);

-- Location: LCCOMB_X48_Y13_N20
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

-- Location: LCCOMB_X46_Y13_N18
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

-- Location: LCCOMB_X48_Y13_N24
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

-- Location: LCCOMB_X35_Y13_N30
\Mod0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X35_Y13_N2
\Mod0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X35_Y13_N6
\Mod0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X36_Y13_N16
\Mod0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\m_ula|result\(4) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X33_Y13_N20
\Mod0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X33_Y13_N6
\Mod0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\m_ula|result\(4) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X33_Y13_N24
\Mod0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\m_ula|result\(3) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X30_Y13_N10
\Mod0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X30_Y13_N6
\Mod0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X31_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|result\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \m_ula|result\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X29_Y13_N6
\Mod0|auto_generated|divider|divider|StageOut[30]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\ = (\m_ula|result\(1) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\);

-- Location: LCCOMB_X31_Y13_N8
\Mod0|auto_generated|divider|divider|StageOut[31]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \m_ula|result\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \m_ula|result\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\);

-- Location: LCCOMB_X24_Y19_N12
\Mod1|auto_generated|divider|divider|StageOut[54]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[54]~32_combout\ = (\m_ula|result\(7) & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(7),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[54]~32_combout\);

-- Location: LCCOMB_X24_Y19_N14
\Mod1|auto_generated|divider|divider|StageOut[53]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[53]~34_combout\ = (\m_ula|result\(6) & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(6),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[53]~34_combout\);

-- Location: LCCOMB_X25_Y19_N20
\Mod1|auto_generated|divider|divider|StageOut[52]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[52]~37_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[52]~37_combout\);

-- Location: LCCOMB_X26_Y19_N4
\Mod1|auto_generated|divider|divider|StageOut[51]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[51]~38_combout\ = (\m_ula|result\(4) & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[51]~38_combout\);

-- Location: LCCOMB_X25_Y19_N24
\Mod1|auto_generated|divider|divider|StageOut[50]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[50]~41_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[50]~41_combout\);

-- Location: LCCOMB_X25_Y20_N16
\Mod1|auto_generated|divider|divider|StageOut[49]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[49]~43_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \m_ula|result\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \m_ula|result\(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[49]~43_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Mod1|auto_generated|divider|divider|StageOut[60]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[60]~46_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[60]~46_combout\);

-- Location: LCCOMB_X23_Y19_N16
\Div2|auto_generated|divider|divider|StageOut[17]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~51_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X23_Y19_N18
\Div2|auto_generated|divider|divider|StageOut[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X23_Y20_N0
\Div2|auto_generated|divider|divider|StageOut[23]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~53_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~53_combout\);

-- Location: LCCOMB_X24_Y20_N16
\Div2|auto_generated|divider|divider|StageOut[21]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~55_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[15]~65_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[15]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[15]~65_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[15]~64_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~55_combout\);

-- Location: LCCOMB_X25_Y20_N10
\Div2|auto_generated|divider|divider|StageOut[28]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~57_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~57_combout\);

-- Location: LCCOMB_X25_Y20_N20
\Div2|auto_generated|divider|divider|StageOut[26]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~60_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~60_combout\);

-- Location: LCCOMB_X29_Y19_N6
\Div1|auto_generated|divider|divider|StageOut[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X32_Y19_N10
\Div1|auto_generated|divider|divider|StageOut[17]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X32_Y19_N12
\Div1|auto_generated|divider|divider|StageOut[16]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\m_ula|result\(5) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(5),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X32_Y19_N16
\Div1|auto_generated|divider|divider|StageOut[15]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\m_ula|result\(4) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X31_Y19_N16
\Div1|auto_generated|divider|divider|StageOut[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X31_Y19_N10
\Div1|auto_generated|divider|divider|StageOut[21]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\m_ula|result\(4) & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X31_Y19_N30
\Div1|auto_generated|divider|divider|StageOut[20]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\m_ula|result\(3) & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X31_Y19_N14
\Div1|auto_generated|divider|divider|StageOut[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\m_ula|result\(3) & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X31_Y19_N6
\Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\m_ula|result\(2) & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X29_Y19_N0
\Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X30_Y19_N6
\Div1|auto_generated|divider|divider|StageOut[31]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X29_Y19_N10
\Div1|auto_generated|divider|divider|StageOut[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\m_ula|result\(1) & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(1),
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X25_Y18_N16
\Div4|auto_generated|divider|divider|StageOut[54]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\m_ula|result\(7) & \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(7),
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X24_Y18_N24
\Div4|auto_generated|divider|divider|StageOut[53]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X25_Y18_N6
\Div4|auto_generated|divider|divider|StageOut[52]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\m_ula|result\(5) & \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(5),
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X24_Y18_N0
\Div4|auto_generated|divider|divider|StageOut[51]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X25_Y18_N4
\Div4|auto_generated|divider|divider|StageOut[50]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X25_Y18_N2
\Div4|auto_generated|divider|divider|StageOut[49]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\m_ula|result\(2) & \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(2),
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X47_Y13_N28
\m_ula|Mult0|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(0) = \regB|valueOut\(3) $ (((\regA|valueOut\(0) & ((\regB|valueOut\(1)) # (\regB|valueOut\(2)))) # (!\regA|valueOut\(0) & (\regB|valueOut\(1) & \regB|valueOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datab => \regB|valueOut\(1),
	datac => \regB|valueOut\(3),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X47_Y13_N30
\m_ula|Mult0|auto_generated|le4a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(2) = (\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (\regA|valueOut\(2) $ (((\m_ula|Mult0|auto_generated|le4a\(5)))))) # (!\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\regA|valueOut\(1) & 
-- \m_ula|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \regA|valueOut\(1),
	datac => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \m_ula|Mult0|auto_generated|le4a\(5),
	combout => \m_ula|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X46_Y13_N8
\m_ula|Mult0|auto_generated|le5a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(0) = (\regA|valueOut\(0) & ((\regB|valueOut\(3)) # ((\regB|valueOut\(1) & \regB|valueOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datab => \regB|valueOut\(3),
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X47_Y13_N0
\m_ula|Mult0|auto_generated|le4a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(3) = (\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\regA|valueOut\(3) $ (\m_ula|Mult0|auto_generated|le4a\(5))))) # (!\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\regA|valueOut\(2) & 
-- ((\m_ula|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \regA|valueOut\(3),
	datad => \m_ula|Mult0|auto_generated|le4a\(5),
	combout => \m_ula|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X47_Y13_N20
\m_ula|Mult0|auto_generated|le5a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(2) = (\regA|valueOut\(2) & ((\regB|valueOut\(3)) # ((\regB|valueOut\(2) & \regB|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(3),
	datab => \regB|valueOut\(2),
	datac => \regA|valueOut\(2),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X33_Y13_N8
\Mod0|auto_generated|divider|divider|StageOut[28]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\);

-- Location: LCCOMB_X30_Y13_N2
\Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X24_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[18]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~61_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[62]~49_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[62]~49_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~61_combout\);

-- Location: LCCOMB_X24_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[15]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~64_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[59]~52_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[59]~52_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~64_combout\);

-- Location: LCCOMB_X23_Y19_N14
\Div2|auto_generated|divider|divider|StageOut[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~67_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[16]~63_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[16]~63_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~67_combout\);

-- Location: LCCOMB_X24_Y20_N0
\Div2|auto_generated|divider|divider|StageOut[27]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[21]~55_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[21]~55_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X31_Y19_N4
\Div1|auto_generated|divider|divider|StageOut[28]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X30_Y19_N18
\Div1|auto_generated|divider|divider|StageOut[33]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X35_Y13_N28
\Mod0|auto_generated|divider|divider|StageOut[23]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\m_ula|result\(6)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \m_ula|result\(6),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\);

-- Location: LCCOMB_X24_Y19_N6
\Mod1|auto_generated|divider|divider|StageOut[62]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[62]~49_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\m_ula|result\(6)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \m_ula|result\(6),
	combout => \Mod1|auto_generated|divider|divider|StageOut[62]~49_combout\);

-- Location: LCCOMB_X24_Y19_N10
\Mod1|auto_generated|divider|divider|StageOut[59]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[59]~52_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\m_ula|result\(3)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \m_ula|result\(3),
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[59]~52_combout\);

-- Location: LCCOMB_X24_Y20_N30
\Div2|auto_generated|divider|divider|StageOut[25]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~72_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\m_ula|result\(1))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(1),
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~72_combout\);

-- Location: LCCOMB_X32_Y19_N4
\Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\m_ula|result\(6)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \m_ula|result\(6),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X31_Y19_N2
\Div1|auto_generated|divider|divider|StageOut[27]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\m_ula|result\(4))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(4),
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~66_combout\);

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

-- Location: LCCOMB_X49_Y14_N16
\m_ula|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux8~0_combout\ = (!\ula_operation~combout\(3) & (!\ula_operation~combout\(2) & ((\ula_operation~combout\(1)) # (\ula_operation~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \ula_operation~combout\(3),
	datac => \ula_operation~combout\(0),
	datad => \ula_operation~combout\(2),
	combout => \m_ula|Mux8~0_combout\);

-- Location: CLKCTRL_G6
\m_ula|Mux8~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \m_ula|Mux8~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \m_ula|Mux8~0clkctrl_outclk\);

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

-- Location: LCFF_X47_Y13_N11
\regA|valueOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(0),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(0));

-- Location: LCCOMB_X46_Y13_N10
\m_ula|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~0_combout\ = (\regB|valueOut\(0) & ((GND) # (!\regA|valueOut\(0)))) # (!\regB|valueOut\(0) & (\regA|valueOut\(0) $ (GND)))
-- \m_ula|Add1~1\ = CARRY((\regB|valueOut\(0)) # (!\regA|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(0),
	datab => \regA|valueOut\(0),
	datad => VCC,
	combout => \m_ula|Add1~0_combout\,
	cout => \m_ula|Add1~1\);

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

-- Location: LCFF_X47_Y13_N5
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

-- Location: LCFF_X47_Y13_N9
\regB|valueOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(1),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(1));

-- Location: LCCOMB_X47_Y13_N8
\m_ula|Mult0|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(0) = \regB|valueOut\(1) $ (((\regB|valueOut\(0) & \regA|valueOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|valueOut\(0),
	datac => \regB|valueOut\(1),
	datad => \regA|valueOut\(0),
	combout => \m_ula|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X48_Y13_N2
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

-- Location: LCCOMB_X46_Y13_N20
\m_ula|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~0_combout\ = (\regB|valueOut\(0) & (\regA|valueOut\(0) $ (VCC))) # (!\regB|valueOut\(0) & (\regA|valueOut\(0) & VCC))
-- \m_ula|Add0~1\ = CARRY((\regB|valueOut\(0) & \regA|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(0),
	datab => \regA|valueOut\(0),
	datad => VCC,
	combout => \m_ula|Add0~0_combout\,
	cout => \m_ula|Add0~1\);

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

-- Location: LCFF_X47_Y13_N13
\regA|valueOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(3),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(3));

-- Location: LCFF_X47_Y13_N29
\regB|valueOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(3),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(3));

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

-- Location: LCFF_X47_Y13_N19
\regB|valueOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(2),
	sload => VCC,
	ena => \setRegB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regB|valueOut\(2));

-- Location: LCFF_X47_Y13_N23
\regA|valueOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(1),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(1));

-- Location: LCCOMB_X47_Y13_N10
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

-- Location: LCFF_X47_Y13_N21
\regA|valueOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \operando~combout\(2),
	sload => VCC,
	ena => \setRegA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regA|valueOut\(2));

-- Location: LCCOMB_X47_Y13_N2
\m_ula|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|LessThan0~1_combout\ = (\regB|valueOut\(2) & ((\m_ula|LessThan0~0_combout\) # (!\regA|valueOut\(2)))) # (!\regB|valueOut\(2) & (\m_ula|LessThan0~0_combout\ & !\regA|valueOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|valueOut\(2),
	datac => \m_ula|LessThan0~0_combout\,
	datad => \regA|valueOut\(2),
	combout => \m_ula|LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y13_N0
\m_ula|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|LessThan0~2_combout\ = (\regA|valueOut\(3) & (\regB|valueOut\(3) & \m_ula|LessThan0~1_combout\)) # (!\regA|valueOut\(3) & ((\regB|valueOut\(3)) # (\m_ula|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regA|valueOut\(3),
	datac => \regB|valueOut\(3),
	datad => \m_ula|LessThan0~1_combout\,
	combout => \m_ula|LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y14_N14
\m_ula|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~0_combout\ = (\ula_operation~combout\(1) & ((\ula_operation~combout\(0)) # (\m_ula|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datac => \ula_operation~combout\(0),
	datad => \m_ula|LessThan0~2_combout\,
	combout => \m_ula|Mux0~0_combout\);

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

-- Location: LCCOMB_X49_Y14_N30
\m_ula|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~1_combout\ = (\ula_operation~combout\(0)) # (!\ula_operation~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_operation~combout\(0),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux0~1_combout\);

-- Location: LCCOMB_X49_Y14_N10
\m_ula|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~2_combout\ = (\m_ula|Mux0~0_combout\ & (((\m_ula|Mux0~1_combout\)))) # (!\m_ula|Mux0~0_combout\ & ((\m_ula|Mux0~1_combout\ & ((\m_ula|Add0~0_combout\))) # (!\m_ula|Mux0~1_combout\ & (\m_ula|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add2~0_combout\,
	datab => \m_ula|Add0~0_combout\,
	datac => \m_ula|Mux0~0_combout\,
	datad => \m_ula|Mux0~1_combout\,
	combout => \m_ula|Mux0~2_combout\);

-- Location: LCCOMB_X49_Y14_N2
\m_ula|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux0~3_combout\ = (\m_ula|Mux0~0_combout\ & ((\m_ula|Mux0~2_combout\ & ((\m_ula|Mult0|auto_generated|op_3~0_combout\))) # (!\m_ula|Mux0~2_combout\ & (\m_ula|Add1~0_combout\)))) # (!\m_ula|Mux0~0_combout\ & (((\m_ula|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~0_combout\,
	datab => \m_ula|Add1~0_combout\,
	datac => \m_ula|Mult0|auto_generated|op_3~0_combout\,
	datad => \m_ula|Mux0~2_combout\,
	combout => \m_ula|Mux0~3_combout\);

-- Location: LCCOMB_X49_Y14_N24
\m_ula|result[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(0) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Mux0~3_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(0),
	datac => \m_ula|Mux8~0clkctrl_outclk\,
	datad => \m_ula|Mux0~3_combout\,
	combout => \m_ula|result\(0));

-- Location: LCCOMB_X46_Y13_N22
\m_ula|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~2_combout\ = (\regA|valueOut\(1) & ((\regB|valueOut\(1) & (\m_ula|Add0~1\ & VCC)) # (!\regB|valueOut\(1) & (!\m_ula|Add0~1\)))) # (!\regA|valueOut\(1) & ((\regB|valueOut\(1) & (!\m_ula|Add0~1\)) # (!\regB|valueOut\(1) & ((\m_ula|Add0~1\) # 
-- (GND)))))
-- \m_ula|Add0~3\ = CARRY((\regA|valueOut\(1) & (!\regB|valueOut\(1) & !\m_ula|Add0~1\)) # (!\regA|valueOut\(1) & ((!\m_ula|Add0~1\) # (!\regB|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datab => \regB|valueOut\(1),
	datad => VCC,
	cin => \m_ula|Add0~1\,
	combout => \m_ula|Add0~2_combout\,
	cout => \m_ula|Add0~3\);

-- Location: LCCOMB_X47_Y13_N22
\m_ula|Mult0|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(1) = (\regB|valueOut\(0) & (\regB|valueOut\(1) $ ((\regA|valueOut\(1))))) # (!\regB|valueOut\(0) & (\regB|valueOut\(1) & ((!\regA|valueOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regB|valueOut\(0),
	datac => \regA|valueOut\(1),
	datad => \regA|valueOut\(0),
	combout => \m_ula|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X48_Y13_N4
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

-- Location: LCCOMB_X49_Y13_N2
\m_ula|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add2~2_combout\ = (\regA|valueOut\(1) & ((\regB|valueOut\(1) & (!\m_ula|Add2~1\)) # (!\regB|valueOut\(1) & (\m_ula|Add2~1\ & VCC)))) # (!\regA|valueOut\(1) & ((\regB|valueOut\(1) & ((\m_ula|Add2~1\) # (GND))) # (!\regB|valueOut\(1) & 
-- (!\m_ula|Add2~1\))))
-- \m_ula|Add2~3\ = CARRY((\regA|valueOut\(1) & (\regB|valueOut\(1) & !\m_ula|Add2~1\)) # (!\regA|valueOut\(1) & ((\regB|valueOut\(1)) # (!\m_ula|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(1),
	datab => \regB|valueOut\(1),
	datad => VCC,
	cin => \m_ula|Add2~1\,
	combout => \m_ula|Add2~2_combout\,
	cout => \m_ula|Add2~3\);

-- Location: LCCOMB_X49_Y14_N26
\m_ula|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~0_combout\ = (\m_ula|Mux0~0_combout\ & ((\m_ula|Add1~2_combout\) # ((\m_ula|Mux0~1_combout\)))) # (!\m_ula|Mux0~0_combout\ & (((\m_ula|Add2~2_combout\ & !\m_ula|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add1~2_combout\,
	datab => \m_ula|Add2~2_combout\,
	datac => \m_ula|Mux0~0_combout\,
	datad => \m_ula|Mux0~1_combout\,
	combout => \m_ula|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y14_N0
\m_ula|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux1~1_combout\ = (\m_ula|Mux0~1_combout\ & ((\m_ula|Mux1~0_combout\ & ((\m_ula|Mult0|auto_generated|op_3~2_combout\))) # (!\m_ula|Mux1~0_combout\ & (\m_ula|Add0~2_combout\)))) # (!\m_ula|Mux0~1_combout\ & (((\m_ula|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~1_combout\,
	datab => \m_ula|Add0~2_combout\,
	datac => \m_ula|Mult0|auto_generated|op_3~2_combout\,
	datad => \m_ula|Mux1~0_combout\,
	combout => \m_ula|Mux1~1_combout\);

-- Location: LCCOMB_X49_Y14_N22
\m_ula|result[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(1) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Mux1~1_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(1),
	datac => \m_ula|Mux8~0clkctrl_outclk\,
	datad => \m_ula|Mux1~1_combout\,
	combout => \m_ula|result\(1));

-- Location: LCCOMB_X47_Y13_N26
\m_ula|Mult0|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(2) = (\regB|valueOut\(0) & (\regA|valueOut\(2) $ ((\regB|valueOut\(1))))) # (!\regB|valueOut\(0) & (((\regB|valueOut\(1) & !\regA|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \regB|valueOut\(0),
	datac => \regB|valueOut\(1),
	datad => \regA|valueOut\(1),
	combout => \m_ula|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X48_Y13_N18
\m_ula|Mult0|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_1~0_combout\ = (\m_ula|Mult0|auto_generated|le4a\(5) & (\m_ula|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\m_ula|Mult0|auto_generated|le4a\(5) & (\m_ula|Mult0|auto_generated|le3a\(2) & VCC))
-- \m_ula|Mult0|auto_generated|op_1~1\ = CARRY((\m_ula|Mult0|auto_generated|le4a\(5) & \m_ula|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le4a\(5),
	datab => \m_ula|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \m_ula|Mult0|auto_generated|op_1~0_combout\,
	cout => \m_ula|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X48_Y13_N6
\m_ula|Mult0|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~4_combout\ = ((\m_ula|Mult0|auto_generated|le4a\(0) $ (\m_ula|Mult0|auto_generated|op_1~0_combout\ $ (!\m_ula|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \m_ula|Mult0|auto_generated|op_3~5\ = CARRY((\m_ula|Mult0|auto_generated|le4a\(0) & ((\m_ula|Mult0|auto_generated|op_1~0_combout\) # (!\m_ula|Mult0|auto_generated|op_3~3\))) # (!\m_ula|Mult0|auto_generated|le4a\(0) & 
-- (\m_ula|Mult0|auto_generated|op_1~0_combout\ & !\m_ula|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le4a\(0),
	datab => \m_ula|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~3\,
	combout => \m_ula|Mult0|auto_generated|op_3~4_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X46_Y13_N24
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

-- Location: LCCOMB_X49_Y14_N6
\m_ula|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~0_combout\ = (\m_ula|Mux0~0_combout\ & (((\m_ula|Mux0~1_combout\)))) # (!\m_ula|Mux0~0_combout\ & ((\m_ula|Mux0~1_combout\ & ((\m_ula|Add0~4_combout\))) # (!\m_ula|Mux0~1_combout\ & (\m_ula|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add2~4_combout\,
	datab => \m_ula|Add0~4_combout\,
	datac => \m_ula|Mux0~0_combout\,
	datad => \m_ula|Mux0~1_combout\,
	combout => \m_ula|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y14_N12
\m_ula|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux2~1_combout\ = (\m_ula|Mux0~0_combout\ & ((\m_ula|Mux2~0_combout\ & ((\m_ula|Mult0|auto_generated|op_3~4_combout\))) # (!\m_ula|Mux2~0_combout\ & (\m_ula|Add1~4_combout\)))) # (!\m_ula|Mux0~0_combout\ & (((\m_ula|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~0_combout\,
	datab => \m_ula|Add1~4_combout\,
	datac => \m_ula|Mult0|auto_generated|op_3~4_combout\,
	datad => \m_ula|Mux2~0_combout\,
	combout => \m_ula|Mux2~1_combout\);

-- Location: LCCOMB_X49_Y14_N4
\m_ula|result[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(2) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Mux2~1_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(2),
	datac => \m_ula|Mux8~0clkctrl_outclk\,
	datad => \m_ula|Mux2~1_combout\,
	combout => \m_ula|result\(2));

-- Location: LCCOMB_X46_Y13_N26
\m_ula|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~6_combout\ = (\regB|valueOut\(3) & ((\regA|valueOut\(3) & (\m_ula|Add0~5\ & VCC)) # (!\regA|valueOut\(3) & (!\m_ula|Add0~5\)))) # (!\regB|valueOut\(3) & ((\regA|valueOut\(3) & (!\m_ula|Add0~5\)) # (!\regA|valueOut\(3) & ((\m_ula|Add0~5\) # 
-- (GND)))))
-- \m_ula|Add0~7\ = CARRY((\regB|valueOut\(3) & (!\regA|valueOut\(3) & !\m_ula|Add0~5\)) # (!\regB|valueOut\(3) & ((!\m_ula|Add0~5\) # (!\regA|valueOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(3),
	datab => \regA|valueOut\(3),
	datad => VCC,
	cin => \m_ula|Add0~5\,
	combout => \m_ula|Add0~6_combout\,
	cout => \m_ula|Add0~7\);

-- Location: LCCOMB_X47_Y13_N14
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

-- Location: LCCOMB_X47_Y13_N12
\m_ula|Mult0|auto_generated|le4a[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(5) = \regB|valueOut\(3) $ (((\regB|valueOut\(2) & \regB|valueOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \regB|valueOut\(1),
	datad => \regB|valueOut\(3),
	combout => \m_ula|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X47_Y13_N24
\m_ula|Mult0|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(1) = (\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\regA|valueOut\(1) $ (\m_ula|Mult0|auto_generated|le4a\(5))))) # (!\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\regA|valueOut\(0) & 
-- ((\m_ula|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(0),
	datab => \regA|valueOut\(1),
	datac => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \m_ula|Mult0|auto_generated|le4a\(5),
	combout => \m_ula|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X48_Y13_N8
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

-- Location: LCCOMB_X49_Y13_N6
\m_ula|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add2~6_combout\ = (\regA|valueOut\(3) & ((\regB|valueOut\(3) & (!\m_ula|Add2~5\)) # (!\regB|valueOut\(3) & (\m_ula|Add2~5\ & VCC)))) # (!\regA|valueOut\(3) & ((\regB|valueOut\(3) & ((\m_ula|Add2~5\) # (GND))) # (!\regB|valueOut\(3) & 
-- (!\m_ula|Add2~5\))))
-- \m_ula|Add2~7\ = CARRY((\regA|valueOut\(3) & (\regB|valueOut\(3) & !\m_ula|Add2~5\)) # (!\regA|valueOut\(3) & ((\regB|valueOut\(3)) # (!\m_ula|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(3),
	datab => \regB|valueOut\(3),
	datad => VCC,
	cin => \m_ula|Add2~5\,
	combout => \m_ula|Add2~6_combout\,
	cout => \m_ula|Add2~7\);

-- Location: LCCOMB_X49_Y14_N18
\m_ula|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~0_combout\ = (\m_ula|Mux0~0_combout\ & ((\m_ula|Add1~6_combout\) # ((\m_ula|Mux0~1_combout\)))) # (!\m_ula|Mux0~0_combout\ & (((\m_ula|Add2~6_combout\ & !\m_ula|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add1~6_combout\,
	datab => \m_ula|Add2~6_combout\,
	datac => \m_ula|Mux0~0_combout\,
	datad => \m_ula|Mux0~1_combout\,
	combout => \m_ula|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y14_N28
\m_ula|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux3~1_combout\ = (\m_ula|Mux0~1_combout\ & ((\m_ula|Mux3~0_combout\ & ((\m_ula|Mult0|auto_generated|op_3~6_combout\))) # (!\m_ula|Mux3~0_combout\ & (\m_ula|Add0~6_combout\)))) # (!\m_ula|Mux0~1_combout\ & (((\m_ula|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mux0~1_combout\,
	datab => \m_ula|Add0~6_combout\,
	datac => \m_ula|Mult0|auto_generated|op_3~6_combout\,
	datad => \m_ula|Mux3~0_combout\,
	combout => \m_ula|Mux3~1_combout\);

-- Location: LCCOMB_X49_Y14_N20
\m_ula|result[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(3) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Mux3~1_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(3),
	datac => \m_ula|Mux8~0clkctrl_outclk\,
	datad => \m_ula|Mux3~1_combout\,
	combout => \m_ula|result\(3));

-- Location: LCCOMB_X49_Y13_N8
\m_ula|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add2~8_combout\ = \m_ula|Add2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m_ula|Add2~7\,
	combout => \m_ula|Add2~8_combout\);

-- Location: LCCOMB_X49_Y13_N14
\m_ula|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~0_combout\ = (!\ula_operation~combout\(0) & ((\m_ula|LessThan0~2_combout\ & (\m_ula|Add1~8_combout\)) # (!\m_ula|LessThan0~2_combout\ & ((\m_ula|Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add1~8_combout\,
	datab => \m_ula|LessThan0~2_combout\,
	datac => \m_ula|Add2~8_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y13_N28
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

-- Location: LCCOMB_X47_Y13_N4
\m_ula|Mult0|auto_generated|le3a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(4) = (\regB|valueOut\(1) & ((\regB|valueOut\(0)) # (!\regA|valueOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regB|valueOut\(1),
	datac => \regB|valueOut\(0),
	datad => \regA|valueOut\(3),
	combout => \m_ula|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X47_Y13_N16
\m_ula|Mult0|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(3) = (\regB|valueOut\(0) & ((\regB|valueOut\(1) $ (\regA|valueOut\(3))))) # (!\regB|valueOut\(0) & (!\regA|valueOut\(2) & (\regB|valueOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regA|valueOut\(2),
	datab => \regB|valueOut\(0),
	datac => \regB|valueOut\(1),
	datad => \regA|valueOut\(3),
	combout => \m_ula|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X48_Y13_N22
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

-- Location: LCCOMB_X48_Y13_N10
\m_ula|Mult0|auto_generated|op_3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~8_combout\ = ((\m_ula|Mult0|auto_generated|le5a\(0) $ (\m_ula|Mult0|auto_generated|op_1~4_combout\ $ (!\m_ula|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \m_ula|Mult0|auto_generated|op_3~9\ = CARRY((\m_ula|Mult0|auto_generated|le5a\(0) & ((\m_ula|Mult0|auto_generated|op_1~4_combout\) # (!\m_ula|Mult0|auto_generated|op_3~7\))) # (!\m_ula|Mult0|auto_generated|le5a\(0) & 
-- (\m_ula|Mult0|auto_generated|op_1~4_combout\ & !\m_ula|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le5a\(0),
	datab => \m_ula|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~7\,
	combout => \m_ula|Mult0|auto_generated|op_3~8_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X49_Y13_N12
\m_ula|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~1_combout\ = (\ula_operation~combout\(0) & ((\ula_operation~combout\(1) & ((\m_ula|Mult0|auto_generated|op_3~8_combout\))) # (!\ula_operation~combout\(1) & (\m_ula|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \ula_operation~combout\(0),
	datac => \m_ula|Add0~8_combout\,
	datad => \m_ula|Mult0|auto_generated|op_3~8_combout\,
	combout => \m_ula|Mux4~1_combout\);

-- Location: LCCOMB_X49_Y13_N30
\m_ula|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux4~2_combout\ = (\m_ula|Mux4~0_combout\) # (\m_ula|Mux4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|Mux4~0_combout\,
	datad => \m_ula|Mux4~1_combout\,
	combout => \m_ula|Mux4~2_combout\);

-- Location: LCCOMB_X49_Y13_N18
\m_ula|result[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(4) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Mux4~2_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(4),
	datac => \m_ula|Mux8~0clkctrl_outclk\,
	datad => \m_ula|Mux4~2_combout\,
	combout => \m_ula|result\(4));

-- Location: LCCOMB_X48_Y13_N12
\m_ula|Mult0|auto_generated|op_3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~10_combout\ = (\m_ula|Mult0|auto_generated|op_1~6_combout\ & ((\regB|valueOut\(1) & (\m_ula|Mult0|auto_generated|op_3~9\ & VCC)) # (!\regB|valueOut\(1) & (!\m_ula|Mult0|auto_generated|op_3~9\)))) # 
-- (!\m_ula|Mult0|auto_generated|op_1~6_combout\ & ((\regB|valueOut\(1) & (!\m_ula|Mult0|auto_generated|op_3~9\)) # (!\regB|valueOut\(1) & ((\m_ula|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \m_ula|Mult0|auto_generated|op_3~11\ = CARRY((\m_ula|Mult0|auto_generated|op_1~6_combout\ & (!\regB|valueOut\(1) & !\m_ula|Mult0|auto_generated|op_3~9\)) # (!\m_ula|Mult0|auto_generated|op_1~6_combout\ & ((!\m_ula|Mult0|auto_generated|op_3~9\) # 
-- (!\regB|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_1~6_combout\,
	datab => \regB|valueOut\(1),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~9\,
	combout => \m_ula|Mult0|auto_generated|op_3~10_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X49_Y13_N24
\m_ula|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux5~0_combout\ = (\ula_operation~combout\(1) & ((\m_ula|Mux4~0_combout\) # ((\ula_operation~combout\(0) & \m_ula|Mult0|auto_generated|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datab => \ula_operation~combout\(1),
	datac => \m_ula|Mux4~0_combout\,
	datad => \m_ula|Mult0|auto_generated|op_3~10_combout\,
	combout => \m_ula|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y13_N16
\m_ula|result[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(5) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Mux5~0_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(5),
	datac => \m_ula|Mux5~0_combout\,
	datad => \m_ula|Mux8~0clkctrl_outclk\,
	combout => \m_ula|result\(5));

-- Location: LCCOMB_X47_Y13_N18
\m_ula|Mult0|auto_generated|le4a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(4) = (\regA|valueOut\(3) & (\regB|valueOut\(3) & (\regB|valueOut\(1) $ (\regB|valueOut\(2))))) # (!\regA|valueOut\(3) & (\regB|valueOut\(3) $ (((\regB|valueOut\(1) & \regB|valueOut\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datab => \regB|valueOut\(3),
	datac => \regB|valueOut\(2),
	datad => \regA|valueOut\(3),
	combout => \m_ula|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X47_Y13_N6
\m_ula|Mult0|auto_generated|le5a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(1) = (\regA|valueOut\(1) & ((\regB|valueOut\(3)) # ((\regB|valueOut\(1) & \regB|valueOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(3),
	datab => \regA|valueOut\(1),
	datac => \regB|valueOut\(1),
	datad => \regB|valueOut\(2),
	combout => \m_ula|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X48_Y13_N26
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

-- Location: LCCOMB_X48_Y13_N14
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

-- Location: LCCOMB_X49_Y13_N26
\m_ula|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~0_combout\ = (\ula_operation~combout\(1) & ((\m_ula|Mux4~0_combout\) # ((\ula_operation~combout\(0) & \m_ula|Mult0|auto_generated|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datab => \ula_operation~combout\(1),
	datac => \m_ula|Mux4~0_combout\,
	datad => \m_ula|Mult0|auto_generated|op_3~12_combout\,
	combout => \m_ula|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y13_N22
\m_ula|result[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(6) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Mux6~0_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(6),
	datac => \m_ula|Mux8~0clkctrl_outclk\,
	datad => \m_ula|Mux6~0_combout\,
	combout => \m_ula|result\(6));

-- Location: LCCOMB_X48_Y13_N30
\m_ula|Mult0|auto_generated|le5a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(3) = (\regA|valueOut\(3) & ((\regB|valueOut\(3)) # ((\regB|valueOut\(2) & \regB|valueOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(2),
	datab => \regA|valueOut\(3),
	datac => \regB|valueOut\(3),
	datad => \regB|valueOut\(1),
	combout => \m_ula|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X48_Y13_N28
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

-- Location: LCCOMB_X48_Y13_N16
\m_ula|Mult0|auto_generated|op_3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~14_combout\ = \regB|valueOut\(1) $ (\m_ula|Mult0|auto_generated|op_3~13\ $ (!\m_ula|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regB|valueOut\(1),
	datad => \m_ula|Mult0|auto_generated|op_1~10_combout\,
	cin => \m_ula|Mult0|auto_generated|op_3~13\,
	combout => \m_ula|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X49_Y13_N28
\m_ula|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux7~0_combout\ = (\ula_operation~combout\(1) & ((\m_ula|Mux4~0_combout\) # ((\ula_operation~combout\(0) & \m_ula|Mult0|auto_generated|op_3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datab => \ula_operation~combout\(1),
	datac => \m_ula|Mux4~0_combout\,
	datad => \m_ula|Mult0|auto_generated|op_3~14_combout\,
	combout => \m_ula|Mux7~0_combout\);

-- Location: LCCOMB_X49_Y13_N20
\m_ula|result[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(7) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Mux7~0_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(7),
	datac => \m_ula|Mux8~0clkctrl_outclk\,
	datad => \m_ula|Mux7~0_combout\,
	combout => \m_ula|result\(7));

-- Location: LCCOMB_X35_Y13_N14
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \m_ula|result\(5) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\m_ula|result\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(5),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X35_Y13_N20
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

-- Location: LCCOMB_X35_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\m_ula|result\(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \m_ula|result\(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\);

-- Location: LCCOMB_X35_Y13_N24
\Mod0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \m_ula|result\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \m_ula|result\(7),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X35_Y13_N8
\Mod0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\m_ula|result\(6) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(6),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X35_Y13_N0
\Mod0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \m_ula|result\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \m_ula|result\(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X36_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\m_ula|result\(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X34_Y13_N2
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X34_Y13_N8
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X34_Y13_N10
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

-- Location: LCCOMB_X33_Y13_N4
\Mod0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X33_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\m_ula|result\(3) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X33_Y13_N14
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X34_Y13_N24
\Mod0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X33_Y13_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X33_Y13_N18
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

-- Location: LCCOMB_X30_Y13_N0
\Mod0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X33_Y13_N2
\Mod0|auto_generated|divider|divider|StageOut[27]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\m_ula|result\(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \m_ula|result\(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X30_Y13_N4
\Mod0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\m_ula|result\(3) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X31_Y13_N24
\Mod0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \m_ula|result\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \m_ula|result\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X30_Y13_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X30_Y13_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X30_Y13_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X30_Y13_N20
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

-- Location: LCCOMB_X29_Y13_N0
\Mod0|auto_generated|divider|divider|StageOut[30]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\ = (\m_ula|result\(1) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\);

-- Location: LCCOMB_X29_Y13_N18
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X30_Y13_N8
\Mod0|auto_generated|divider|divider|StageOut[33]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~58_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~58_combout\);

-- Location: LCCOMB_X30_Y13_N24
\Mod0|auto_generated|divider|divider|StageOut[32]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\m_ula|result\(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \m_ula|result\(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X30_Y13_N30
\Mod0|auto_generated|divider|divider|StageOut[31]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\);

-- Location: LCCOMB_X29_Y13_N20
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X29_Y13_N22
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X29_Y13_N24
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~58_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~58_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y13_N26
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

-- Location: LCCOMB_X29_Y13_N16
\Mod0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\m_ula|result\(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \m_ula|result\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X29_Y13_N30
\Mod0|auto_generated|divider|divider|StageOut[37]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\);

-- Location: LCCOMB_X30_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[32]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\);

-- Location: LCCOMB_X30_Y13_N28
\Mod0|auto_generated|divider|divider|StageOut[38]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\);

-- Location: LCCOMB_X29_Y13_N4
\display0|decode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~0_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ $ (\m_ula|result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \m_ula|result\(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	combout => \display0|decode~0_combout\);

-- Location: LCCOMB_X29_Y13_N2
\display0|decode~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~1_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ $ (\m_ula|result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \m_ula|result\(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	combout => \display0|decode~1_combout\);

-- Location: LCCOMB_X29_Y13_N8
\display0|decode~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!\m_ula|result\(0) & !\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \m_ula|result\(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	combout => \display0|decode~2_combout\);

-- Location: LCCOMB_X29_Y13_N14
\display0|decode~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~3_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & \m_ula|result\(0))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ $ (\m_ula|result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \m_ula|result\(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	combout => \display0|decode~3_combout\);

-- Location: LCCOMB_X29_Y13_N12
\display0|decode~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~4_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & (((\m_ula|result\(0) & !\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (\m_ula|result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \m_ula|result\(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	combout => \display0|decode~4_combout\);

-- Location: LCCOMB_X29_Y13_N28
\display0|decode~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~5_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & ((\m_ula|result\(0)) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & \m_ula|result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \m_ula|result\(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	combout => \display0|decode~5_combout\);

-- Location: LCCOMB_X29_Y13_N10
\display0|decode~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0|decode~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & ((!\m_ula|result\(0)) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \m_ula|result\(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	combout => \display0|decode~6_combout\);

-- Location: LCCOMB_X29_Y19_N20
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X32_Y19_N0
\Div1|auto_generated|divider|divider|StageOut[17]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\m_ula|result\(6) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(6),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X32_Y19_N18
\Div1|auto_generated|divider|divider|StageOut[16]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X32_Y19_N2
\Div1|auto_generated|divider|divider|StageOut[15]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\m_ula|result\(4) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X32_Y19_N20
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X32_Y19_N24
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X29_Y19_N12
\Div1|auto_generated|divider|divider|StageOut[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\m_ula|result\(7) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(7),
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X32_Y19_N26
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y19_N28
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

-- Location: LCCOMB_X32_Y19_N8
\Div1|auto_generated|divider|divider|StageOut[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X32_Y19_N30
\Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\m_ula|result\(5)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \m_ula|result\(5),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X32_Y19_N14
\Div1|auto_generated|divider|divider|StageOut[21]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X31_Y19_N0
\Div1|auto_generated|divider|divider|StageOut[20]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\m_ula|result\(3) & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X31_Y19_N18
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X31_Y19_N20
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X31_Y19_N22
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X31_Y19_N24
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X31_Y19_N26
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

-- Location: LCCOMB_X26_Y19_N18
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y19_N10
\comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\LessThan0~0_combout\) # ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X24_Y19_N18
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\m_ula|result\(4) & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\m_ula|result\(4) & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\m_ula|result\(4) & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(4),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X24_Y19_N20
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\m_ula|result\(5) & ((GND) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\m_ula|result\(5) & 
-- (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\m_ula|result\(5)) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(5),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X24_Y19_N22
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\m_ula|result\(6) & (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\m_ula|result\(6) & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # 
-- (GND)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\m_ula|result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(6),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X24_Y19_N24
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\m_ula|result\(7) & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\m_ula|result\(7) & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\m_ula|result\(7) & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(7),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X24_Y19_N26
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X25_Y19_N22
\Mod1|auto_generated|divider|divider|StageOut[54]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[54]~33_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[54]~33_combout\);

-- Location: LCCOMB_X25_Y19_N28
\Mod1|auto_generated|divider|divider|StageOut[53]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[53]~35_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[53]~35_combout\);

-- Location: LCCOMB_X25_Y19_N26
\Mod1|auto_generated|divider|divider|StageOut[52]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[52]~36_combout\ = (\m_ula|result\(5) & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[52]~36_combout\);

-- Location: LCCOMB_X25_Y19_N14
\Mod1|auto_generated|divider|divider|StageOut[51]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[51]~39_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[51]~39_combout\);

-- Location: LCCOMB_X24_Y19_N4
\Mod1|auto_generated|divider|divider|StageOut[50]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[50]~40_combout\ = (\m_ula|result\(3) & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[50]~40_combout\);

-- Location: LCCOMB_X25_Y20_N18
\Mod1|auto_generated|divider|divider|StageOut[49]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[49]~42_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \m_ula|result\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \m_ula|result\(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[49]~42_combout\);

-- Location: LCCOMB_X25_Y19_N0
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[49]~43_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[49]~42_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[49]~43_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[49]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[49]~43_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[49]~42_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X25_Y19_N2
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[50]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~40_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[50]~41_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[50]~40_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[50]~41_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[50]~40_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[50]~41_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[50]~40_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X25_Y19_N4
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[51]~38_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[51]~39_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[51]~38_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[51]~39_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[51]~38_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[51]~39_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[51]~38_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[51]~39_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X25_Y19_N6
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[52]~37_combout\ & (((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[52]~37_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[52]~36_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[52]~36_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Mod1|auto_generated|divider|divider|StageOut[52]~37_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[52]~36_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[52]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[52]~36_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X25_Y19_N8
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Mod1|auto_generated|divider|divider|StageOut[53]~34_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[53]~35_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[53]~34_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[53]~35_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[53]~34_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[53]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[53]~34_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[53]~35_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X25_Y19_N10
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[54]~32_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[54]~33_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[54]~32_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[54]~33_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X25_Y19_N12
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

-- Location: LCCOMB_X25_Y19_N30
\Mod1|auto_generated|divider|divider|StageOut[61]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[61]~50_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\m_ula|result\(5))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(5),
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[61]~50_combout\);

-- Location: LCCOMB_X24_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[17]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~62_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[61]~50_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[61]~50_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~62_combout\);

-- Location: LCCOMB_X25_Y19_N18
\Mod1|auto_generated|divider|divider|StageOut[62]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[62]~44_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[62]~44_combout\);

-- Location: LCCOMB_X25_Y19_N16
\Mod1|auto_generated|divider|divider|StageOut[61]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[61]~45_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[61]~45_combout\);

-- Location: LCCOMB_X24_Y19_N8
\Mod1|auto_generated|divider|divider|StageOut[60]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[60]~51_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\m_ula|result\(4))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(4),
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[60]~51_combout\);

-- Location: LCCOMB_X23_Y19_N6
\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[61]~50_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[61]~45_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[61]~50_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[61]~45_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[61]~50_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[61]~45_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[61]~50_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[61]~45_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y19_N8
\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[62]~49_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[62]~44_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[62]~49_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[62]~44_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[62]~49_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[62]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[62]~49_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[62]~44_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X23_Y19_N10
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

-- Location: LCCOMB_X23_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[18]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~50_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~50_combout\);

-- Location: LCCOMB_X23_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[16]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~63_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[60]~51_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[60]~51_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~63_combout\);

-- Location: LCCOMB_X24_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[15]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~65_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[59]~52_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[59]~52_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~65_combout\);

-- Location: LCCOMB_X23_Y19_N22
\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[16]~52_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[16]~63_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~52_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[16]~63_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[16]~52_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~63_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[16]~63_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X23_Y19_N26
\Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[18]~61_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[18]~50_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[18]~61_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[18]~50_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y19_N28
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

-- Location: LCCOMB_X23_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[23]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~66_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[17]~62_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[17]~62_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~66_combout\);

-- Location: LCCOMB_X24_Y20_N22
\Div2|auto_generated|divider|divider|StageOut[22]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~54_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~54_combout\);

-- Location: LCCOMB_X24_Y20_N28
\Div2|auto_generated|divider|divider|StageOut[21]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~56_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~56_combout\);

-- Location: LCCOMB_X25_Y20_N24
\Div2|auto_generated|divider|divider|StageOut[20]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~71_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\m_ula|result\(2))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \m_ula|result\(2),
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~71_combout\);

-- Location: LCCOMB_X24_Y20_N12
\Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[23]~53_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[23]~66_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[23]~53_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[23]~66_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y20_N14
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

-- Location: LCCOMB_X31_Y19_N28
\Div1|auto_generated|divider|divider|StageOut[28]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X30_Y19_N4
\Div1|auto_generated|divider|divider|StageOut[27]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X30_Y19_N2
\Div1|auto_generated|divider|divider|StageOut[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X31_Y19_N8
\Div1|auto_generated|divider|divider|StageOut[25]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\m_ula|result\(2) & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X30_Y19_N24
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X30_Y19_N26
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X30_Y19_N28
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

-- Location: LCCOMB_X26_Y19_N22
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\LessThan0~0_combout\ & (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\LessThan0~0_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X24_Y20_N18
\Div2|auto_generated|divider|divider|StageOut[28]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~67_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~67_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X25_Y20_N28
\Div2|auto_generated|divider|divider|StageOut[27]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~58_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~58_combout\);

-- Location: LCCOMB_X25_Y20_N26
\Div2|auto_generated|divider|divider|StageOut[20]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~70_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\m_ula|result\(2))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \m_ula|result\(2),
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~70_combout\);

-- Location: LCCOMB_X25_Y20_N22
\Div2|auto_generated|divider|divider|StageOut[26]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~59_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[20]~70_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[20]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~70_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[20]~71_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~59_combout\);

-- Location: LCCOMB_X24_Y20_N20
\Mod1|auto_generated|divider|divider|StageOut[48]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \m_ula|result\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \m_ula|result\(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\);

-- Location: LCCOMB_X24_Y20_N26
\Mod1|auto_generated|divider|divider|StageOut[48]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~47_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \m_ula|result\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \m_ula|result\(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~47_combout\);

-- Location: LCCOMB_X24_Y20_N24
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[48]~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[48]~47_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X24_Y20_N4
\Div2|auto_generated|divider|divider|StageOut[25]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~73_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\m_ula|result\(1))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(1),
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~73_combout\);

-- Location: LCCOMB_X25_Y20_N0
\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[25]~72_combout\) # (\Div2|auto_generated|divider|divider|StageOut[25]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[25]~72_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[25]~73_combout\,
	datad => VCC,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X25_Y20_N2
\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[26]~60_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[26]~59_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[26]~60_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[26]~59_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X25_Y20_N4
\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[27]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[27]~58_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X25_Y20_N6
\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[28]~57_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[28]~68_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[28]~57_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y20_N8
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

-- Location: LCCOMB_X26_Y19_N12
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\LessThan0~0_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\LessThan0~0_combout\ & (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X26_Y19_N28
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\LessThan0~0_combout\ & (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\LessThan0~0_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X26_Y19_N0
\display1|decode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~0_combout\ = (\comb~3_combout\ & (\comb~1_combout\ & (\comb~0_combout\ $ (\comb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => \comb~2_combout\,
	combout => \display1|decode~0_combout\);

-- Location: LCCOMB_X26_Y19_N14
\display1|decode~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~1_combout\ = (\LessThan0~0_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\LessThan0~0_combout\ & (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display1|decode~1_combout\);

-- Location: LCCOMB_X26_Y19_N20
\display1|decode~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~2_combout\ = (\comb~3_combout\ & (!\comb~2_combout\ & (\comb~1_combout\ $ (\display1|decode~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \comb~1_combout\,
	datac => \display1|decode~1_combout\,
	datad => \comb~2_combout\,
	combout => \display1|decode~2_combout\);

-- Location: LCCOMB_X30_Y19_N0
\Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X30_Y19_N30
\Div1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\m_ula|result\(3))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \m_ula|result\(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X31_Y19_N12
\Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\m_ula|result\(2) & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X29_Y19_N4
\Div1|auto_generated|divider|divider|StageOut[30]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ = (\m_ula|result\(1) & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(1),
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X30_Y19_N8
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X30_Y19_N10
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X30_Y19_N12
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X30_Y19_N14
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X30_Y19_N16
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

-- Location: LCCOMB_X26_Y19_N6
\display1|decode~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~3_combout\ = (\comb~3_combout\ & (\comb~2_combout\ & ((\LessThan0~0_combout\) # (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \comb~2_combout\,
	combout => \display1|decode~3_combout\);

-- Location: LCCOMB_X26_Y19_N24
\display1|decode~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~4_combout\ = (\display1|decode~3_combout\ & (!\comb~1_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display1|decode~3_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \comb~1_combout\,
	combout => \display1|decode~4_combout\);

-- Location: LCCOMB_X26_Y19_N26
\display1|decode~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~5_combout\ = (\comb~3_combout\ & ((\comb~1_combout\ & (\display1|decode~1_combout\ $ (\comb~2_combout\))) # (!\comb~1_combout\ & (!\display1|decode~1_combout\ & !\comb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \comb~1_combout\,
	datac => \display1|decode~1_combout\,
	datad => \comb~2_combout\,
	combout => \display1|decode~5_combout\);

-- Location: LCCOMB_X26_Y19_N8
\display1|decode~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~6_combout\ = (\comb~1_combout\ & ((\comb~2_combout\ & ((!\comb~0_combout\))) # (!\comb~2_combout\ & (\comb~3_combout\)))) # (!\comb~1_combout\ & (\comb~3_combout\ & (!\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => \comb~2_combout\,
	combout => \display1|decode~6_combout\);

-- Location: LCCOMB_X26_Y19_N2
\display1|decode~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~7_combout\ = (\comb~3_combout\ & ((\comb~1_combout\ & (!\comb~0_combout\ & \comb~2_combout\)) # (!\comb~1_combout\ & ((\comb~2_combout\) # (!\comb~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => \comb~2_combout\,
	combout => \display1|decode~7_combout\);

-- Location: LCCOMB_X26_Y19_N16
\display1|decode~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1|decode~8_combout\ = ((\comb~1_combout\ & ((!\comb~2_combout\))) # (!\comb~1_combout\ & ((\comb~0_combout\) # (\comb~2_combout\)))) # (!\comb~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => \comb~2_combout\,
	combout => \display1|decode~8_combout\);

-- Location: LCCOMB_X25_Y18_N24
\Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\m_ula|result\(5) & ((GND) # (!\Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\m_ula|result\(5) & 
-- (\Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\m_ula|result\(5)) # (!\Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(5),
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X25_Y18_N28
\Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\m_ula|result\(7) & (\Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\m_ula|result\(7) & 
-- (!\Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\m_ula|result\(7) & !\Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(7),
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X25_Y18_N30
\Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X25_Y18_N14
\Div4|auto_generated|divider|divider|StageOut[54]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X25_Y18_N8
\Div4|auto_generated|divider|divider|StageOut[53]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\m_ula|result\(6) & \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(6),
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X24_Y18_N2
\Div4|auto_generated|divider|divider|StageOut[52]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X25_Y18_N0
\Div4|auto_generated|divider|divider|StageOut[51]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\m_ula|result\(4) & \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(4),
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X25_Y18_N18
\Div4|auto_generated|divider|divider|StageOut[50]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\m_ula|result\(3) & \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(3),
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X25_Y18_N12
\Div4|auto_generated|divider|divider|StageOut[49]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\m_ula|result\(2) & !\Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_ula|result\(2),
	datad => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X24_Y18_N10
\Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[49]~10_combout\) # (\Div4|auto_generated|divider|divider|StageOut[49]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datad => VCC,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X24_Y18_N12
\Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[50]~9_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- !\Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X24_Y18_N14
\Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\Div4|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\Div4|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X24_Y18_N16
\Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\Div4|auto_generated|divider|divider|StageOut[52]~4_combout\ & !\Div4|auto_generated|divider|divider|StageOut[52]~5_combout\)) # 
-- (!\Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X24_Y18_N18
\Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\Div4|auto_generated|divider|divider|StageOut[53]~3_combout\) # 
-- (\Div4|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X24_Y18_N20
\Div4|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Div4|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\Div4|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \Div4|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \Div4|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X24_Y18_N22
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

-- Location: LCCOMB_X1_Y23_N16
\display2|decode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2|decode~0_combout\ = (\Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \display2|decode~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\display2|decode~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2|decode~1_combout\ = (!\Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \display2|decode~1_combout\);

-- Location: LCCOMB_X1_Y23_N0
\display2|decode~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2|decode~2_combout\ = (!\Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (!\Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div4|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \display2|decode~2_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	datain => \m_ula|result\(0),
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
	datain => \m_ula|result\(1),
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
	datain => \m_ula|result\(2),
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
	datain => \m_ula|result\(3),
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
	datain => \m_ula|result\(4),
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
	datain => \m_ula|result\(5),
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
	datain => \m_ula|result\(6),
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
	datain => \m_ula|result\(7),
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

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \display2|decode~0_combout\,
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
	datain => \display2|decode~1_combout\,
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
	datain => \display2|decode~0_combout\,
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
	datain => \display2|decode~2_combout\,
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
	datain => \Div4|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


