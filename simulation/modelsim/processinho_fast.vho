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

-- DATE "11/22/2016 14:11:50"

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
	reset : IN std_logic;
	latch_ula : IN std_logic;
	grab_ula : IN std_logic;
	data_bus_in : IN std_logic_vector(3 DOWNTO 0);
	gp_read : IN std_logic;
	gp_write : IN std_logic;
	result : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END processinho;

-- Design Ports Information
-- result[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[7]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[7]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[7]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[7]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- grab_ula	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- latch_ula	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus_in[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus_in[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus_in[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus_in[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- gp_read	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- gp_write	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_reset : std_logic;
SIGNAL ww_latch_ula : std_logic;
SIGNAL ww_grab_ula : std_logic;
SIGNAL ww_data_bus_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_gp_read : std_logic;
SIGNAL ww_gp_write : std_logic;
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \dp|m_ula|result[1]~7_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[33]~3_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[32]~4_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|StageOut[33]~0_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|StageOut[32]~2_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|StageOut[31]~4_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|StageOut[30]~6_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|value~3_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|value~4_combout\ : std_logic;
SIGNAL \dp|regA|valueOut~2_combout\ : std_logic;
SIGNAL \dp|regA|valueOut~3_combout\ : std_logic;
SIGNAL \dp|regA|value~1_combout\ : std_logic;
SIGNAL \dp|regA|value~2_combout\ : std_logic;
SIGNAL \dp|regA|value~3_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \grab_ula~combout\ : std_logic;
SIGNAL \gp_read~combout\ : std_logic;
SIGNAL \gp_write~combout\ : std_logic;
SIGNAL \dp|regA|value~0_combout\ : std_logic;
SIGNAL \dp|regA|valueOut~0_combout\ : std_logic;
SIGNAL \dp|regA|valueOut[0]~1_combout\ : std_logic;
SIGNAL \dp|m_ula|result[0]~5_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|value~0_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|valueOut~0_combout\ : std_logic;
SIGNAL \latch_ula~combout\ : std_logic;
SIGNAL \dp|ula_result_reg|valueOut[0]~1_combout\ : std_logic;
SIGNAL \dp|m_ula_latch|value~0_combout\ : std_logic;
SIGNAL \dp|m_ula_latch|out[0]~feeder_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|value~1_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|valueOut~2_combout\ : std_logic;
SIGNAL \dp|m_ula_latch|value~1_combout\ : std_logic;
SIGNAL \dp|m_ula_latch|out[1]~feeder_combout\ : std_logic;
SIGNAL \dp|regA|valueOut~4_combout\ : std_logic;
SIGNAL \dp|m_ula|result[0]~6\ : std_logic;
SIGNAL \dp|m_ula|result[1]~8\ : std_logic;
SIGNAL \dp|m_ula|result[2]~9_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|valueOut~5_combout\ : std_logic;
SIGNAL \dp|m_ula_latch|value~2_combout\ : std_logic;
SIGNAL \dp|m_ula_latch|out[2]~feeder_combout\ : std_logic;
SIGNAL \dp|m_ula|result[2]~10\ : std_logic;
SIGNAL \dp|m_ula|result[3]~11_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|valueOut~4_combout\ : std_logic;
SIGNAL \dp|m_ula_latch|value~3_combout\ : std_logic;
SIGNAL \dp|m_ula_latch|out[3]~feeder_combout\ : std_logic;
SIGNAL \dp|m_ula|result[3]~12\ : std_logic;
SIGNAL \dp|m_ula|result[4]~13_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|value~2_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|valueOut~3_combout\ : std_logic;
SIGNAL \dp|m_ula_latch|value~4_combout\ : std_logic;
SIGNAL \dp|m_ula_latch|out[4]~feeder_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[30]~1_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[33]~2_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[32]~5_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\ : std_logic;
SIGNAL \dp|disp|Mux6~0_combout\ : std_logic;
SIGNAL \dp|disp|Mux5~0_combout\ : std_logic;
SIGNAL \dp|disp|Mux4~0_combout\ : std_logic;
SIGNAL \dp|disp|Mux3~0_combout\ : std_logic;
SIGNAL \dp|disp|Mux2~0_combout\ : std_logic;
SIGNAL \dp|disp|Mux1~11_combout\ : std_logic;
SIGNAL \dp|disp|Mux1~8_combout\ : std_logic;
SIGNAL \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \dp|disp|Mux1~9_combout\ : std_logic;
SIGNAL \dp|disp|Mux1~10_combout\ : std_logic;
SIGNAL \dp|disp|Mux0~8_combout\ : std_logic;
SIGNAL \dp|disp|Mux0~9_combout\ : std_logic;
SIGNAL \dp|disp|Mux0~11_combout\ : std_logic;
SIGNAL \dp|disp|Mux0~10_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|StageOut[33]~1_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|StageOut[31]~5_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|StageOut[30]~7_combout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \dp|disp|Mux13~0_combout\ : std_logic;
SIGNAL \dp|disp|Mux11~0_combout\ : std_logic;
SIGNAL \dp|disp|Mux8~0_combout\ : std_logic;
SIGNAL \dp|ula_result_reg|value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp|ula_result_reg|valueOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp|regA|valueOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp|regA|value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp|m_ula|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp|m_ula_latch|value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp|m_ula_latch|out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_bus_in~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \dp|disp|ALT_INV_Mux0~10_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_latch_ula <= latch_ula;
ww_grab_ula <= grab_ula;
ww_data_bus_in <= data_bus_in;
ww_gp_read <= gp_read;
ww_gp_write <= gp_write;
result <= ww_result;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\dp|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ <= NOT \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\;
\dp|disp|ALT_INV_Mux0~10_combout\ <= NOT \dp|disp|Mux0~10_combout\;

-- Location: LCCOMB_X5_Y12_N26
\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\dp|ula_result_reg|valueOut\(4) & (\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND))) # (!\dp|ula_result_reg|valueOut\(4) & 
-- (!\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC))
-- \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\dp|ula_result_reg|valueOut\(4) & !\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|valueOut\(4),
	datad => VCC,
	cin => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X6_Y12_N6
\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\dp|ula_result_reg|valueOut\(4) & (\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND))) # (!\dp|ula_result_reg|valueOut\(4) & 
-- (!\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC))
-- \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\dp|ula_result_reg|valueOut\(4) & !\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|ula_result_reg|valueOut\(4),
	datad => VCC,
	cin => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCFF_X12_Y4_N21
\dp|m_ula|result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula|result[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula|result\(1));

-- Location: LCCOMB_X12_Y4_N20
\dp|m_ula|result[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula|result[1]~7_combout\ = (\dp|regA|valueOut\(1) & ((\data_bus_in~combout\(1) & (\dp|m_ula|result[0]~6\ & VCC)) # (!\data_bus_in~combout\(1) & (!\dp|m_ula|result[0]~6\)))) # (!\dp|regA|valueOut\(1) & ((\data_bus_in~combout\(1) & 
-- (!\dp|m_ula|result[0]~6\)) # (!\data_bus_in~combout\(1) & ((\dp|m_ula|result[0]~6\) # (GND)))))
-- \dp|m_ula|result[1]~8\ = CARRY((\dp|regA|valueOut\(1) & (!\data_bus_in~combout\(1) & !\dp|m_ula|result[0]~6\)) # (!\dp|regA|valueOut\(1) & ((!\dp|m_ula|result[0]~6\) # (!\data_bus_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|regA|valueOut\(1),
	datab => \data_bus_in~combout\(1),
	datad => VCC,
	cin => \dp|m_ula|result[0]~6\,
	combout => \dp|m_ula|result[1]~7_combout\,
	cout => \dp|m_ula|result[1]~8\);

-- Location: LCCOMB_X4_Y12_N16
\dp|Mod0|auto_generated|divider|divider|StageOut[30]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ = (\dp|ula_result_reg|valueOut\(1) & \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ula_result_reg|valueOut\(1),
	datad => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\);

-- Location: LCCOMB_X5_Y12_N2
\dp|Mod0|auto_generated|divider|divider|StageOut[33]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[33]~3_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[33]~3_combout\);

-- Location: LCCOMB_X5_Y12_N4
\dp|Mod0|auto_generated|divider|divider|StageOut[32]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[32]~4_combout\ = (\dp|ula_result_reg|valueOut\(3) & \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ula_result_reg|valueOut\(3),
	datad => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[32]~4_combout\);

-- Location: LCCOMB_X6_Y12_N24
\dp|Div0|auto_generated|divider|divider|StageOut[33]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|StageOut[33]~0_combout\ = (\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \dp|ula_result_reg|valueOut\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \dp|ula_result_reg|valueOut\(4),
	combout => \dp|Div0|auto_generated|divider|divider|StageOut[33]~0_combout\);

-- Location: LCCOMB_X5_Y12_N20
\dp|Div0|auto_generated|divider|divider|StageOut[32]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|StageOut[32]~2_combout\ = (\dp|ula_result_reg|valueOut\(3) & \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|valueOut\(3),
	datac => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Div0|auto_generated|divider|divider|StageOut[32]~2_combout\);

-- Location: LCCOMB_X5_Y12_N14
\dp|Div0|auto_generated|divider|divider|StageOut[31]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|StageOut[31]~4_combout\ = (\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \dp|ula_result_reg|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \dp|ula_result_reg|valueOut\(2),
	combout => \dp|Div0|auto_generated|divider|divider|StageOut[31]~4_combout\);

-- Location: LCCOMB_X6_Y12_N12
\dp|Div0|auto_generated|divider|divider|StageOut[30]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|StageOut[30]~6_combout\ = (\dp|ula_result_reg|valueOut\(1) & \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ula_result_reg|valueOut\(1),
	datad => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Div0|auto_generated|divider|divider|StageOut[30]~6_combout\);

-- Location: LCFF_X13_Y4_N21
\dp|ula_result_reg|value[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|ula_result_reg|value~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|ula_result_reg|value\(3));

-- Location: LCFF_X13_Y4_N11
\dp|ula_result_reg|value[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|ula_result_reg|value~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|ula_result_reg|value\(2));

-- Location: LCFF_X12_Y4_N11
\dp|regA|valueOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|regA|valueOut~2_combout\,
	ena => \dp|regA|valueOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|regA|valueOut\(1));

-- Location: LCFF_X12_Y4_N17
\dp|regA|valueOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|regA|valueOut~3_combout\,
	ena => \dp|regA|valueOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|regA|valueOut\(3));

-- Location: LCCOMB_X13_Y4_N20
\dp|ula_result_reg|value~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|value~3_combout\ = (\grab_ula~combout\ & ((\dp|m_ula|result\(3)))) # (!\grab_ula~combout\ & (\dp|ula_result_reg|value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \grab_ula~combout\,
	datac => \dp|ula_result_reg|value\(3),
	datad => \dp|m_ula|result\(3),
	combout => \dp|ula_result_reg|value~3_combout\);

-- Location: LCCOMB_X13_Y4_N10
\dp|ula_result_reg|value~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|value~4_combout\ = (\grab_ula~combout\ & ((\dp|m_ula|result\(2)))) # (!\grab_ula~combout\ & (\dp|ula_result_reg|value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \grab_ula~combout\,
	datac => \dp|ula_result_reg|value\(2),
	datad => \dp|m_ula|result\(2),
	combout => \dp|ula_result_reg|value~4_combout\);

-- Location: LCFF_X12_Y4_N29
\dp|regA|value[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|regA|value~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|regA|value\(1));

-- Location: LCCOMB_X12_Y4_N10
\dp|regA|valueOut~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|regA|valueOut~2_combout\ = (\gp_read~combout\ & ((\gp_write~combout\ & ((\data_bus_in~combout\(1)))) # (!\gp_write~combout\ & (\dp|regA|value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gp_write~combout\,
	datab => \dp|regA|value\(1),
	datac => \gp_read~combout\,
	datad => \data_bus_in~combout\(1),
	combout => \dp|regA|valueOut~2_combout\);

-- Location: LCFF_X12_Y4_N3
\dp|regA|value[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|regA|value~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|regA|value\(3));

-- Location: LCCOMB_X12_Y4_N16
\dp|regA|valueOut~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|regA|valueOut~3_combout\ = (\gp_read~combout\ & ((\gp_write~combout\ & (\data_bus_in~combout\(3))) # (!\gp_write~combout\ & ((\dp|regA|value\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gp_write~combout\,
	datab => \gp_read~combout\,
	datac => \data_bus_in~combout\(3),
	datad => \dp|regA|value\(3),
	combout => \dp|regA|valueOut~3_combout\);

-- Location: LCFF_X12_Y4_N13
\dp|regA|value[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|regA|value~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|regA|value\(2));

-- Location: LCCOMB_X12_Y4_N28
\dp|regA|value~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|regA|value~1_combout\ = (\gp_write~combout\ & ((\data_bus_in~combout\(1)))) # (!\gp_write~combout\ & (\dp|regA|value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gp_write~combout\,
	datac => \dp|regA|value\(1),
	datad => \data_bus_in~combout\(1),
	combout => \dp|regA|value~1_combout\);

-- Location: LCCOMB_X12_Y4_N2
\dp|regA|value~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|regA|value~2_combout\ = (\gp_write~combout\ & (\data_bus_in~combout\(3))) # (!\gp_write~combout\ & ((\dp|regA|value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_bus_in~combout\(3),
	datac => \dp|regA|value\(3),
	datad => \gp_write~combout\,
	combout => \dp|regA|value~2_combout\);

-- Location: LCCOMB_X12_Y4_N12
\dp|regA|value~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|regA|value~3_combout\ = (\gp_write~combout\ & (\data_bus_in~combout\(2))) # (!\gp_write~combout\ & ((\dp|regA|value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus_in~combout\(2),
	datac => \dp|regA|value\(2),
	datad => \gp_write~combout\,
	combout => \dp|regA|value~3_combout\);

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

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X13_Y4_N15
\dp|m_ula_latch|value[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula_latch|value~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula_latch|value\(0));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\grab_ula~I\ : cycloneii_io
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
	padio => ww_grab_ula,
	combout => \grab_ula~combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gp_read~I\ : cycloneii_io
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
	padio => ww_gp_read,
	combout => \gp_read~combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_bus_in[0]~I\ : cycloneii_io
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
	padio => ww_data_bus_in(0),
	combout => \data_bus_in~combout\(0));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gp_write~I\ : cycloneii_io
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
	padio => ww_gp_write,
	combout => \gp_write~combout\);

-- Location: LCCOMB_X12_Y4_N0
\dp|regA|value~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|regA|value~0_combout\ = (\gp_write~combout\ & (\data_bus_in~combout\(0))) # (!\gp_write~combout\ & ((\dp|regA|value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus_in~combout\(0),
	datac => \dp|regA|value\(0),
	datad => \gp_write~combout\,
	combout => \dp|regA|value~0_combout\);

-- Location: LCFF_X12_Y4_N1
\dp|regA|value[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|regA|value~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|regA|value\(0));

-- Location: LCCOMB_X12_Y4_N8
\dp|regA|valueOut~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|regA|valueOut~0_combout\ = (\gp_read~combout\ & ((\gp_write~combout\ & (\data_bus_in~combout\(0))) # (!\gp_write~combout\ & ((\dp|regA|value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gp_write~combout\,
	datab => \gp_read~combout\,
	datac => \data_bus_in~combout\(0),
	datad => \dp|regA|value\(0),
	combout => \dp|regA|valueOut~0_combout\);

-- Location: LCCOMB_X12_Y4_N6
\dp|regA|valueOut[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|regA|valueOut[0]~1_combout\ = (\gp_read~combout\) # (\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gp_read~combout\,
	datad => \reset~combout\,
	combout => \dp|regA|valueOut[0]~1_combout\);

-- Location: LCFF_X12_Y4_N9
\dp|regA|valueOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|regA|valueOut~0_combout\,
	ena => \dp|regA|valueOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|regA|valueOut\(0));

-- Location: LCCOMB_X12_Y4_N18
\dp|m_ula|result[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula|result[0]~5_combout\ = (\data_bus_in~combout\(0) & (\dp|regA|valueOut\(0) $ (VCC))) # (!\data_bus_in~combout\(0) & (\dp|regA|valueOut\(0) & VCC))
-- \dp|m_ula|result[0]~6\ = CARRY((\data_bus_in~combout\(0) & \dp|regA|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus_in~combout\(0),
	datab => \dp|regA|valueOut\(0),
	datad => VCC,
	combout => \dp|m_ula|result[0]~5_combout\,
	cout => \dp|m_ula|result[0]~6\);

-- Location: LCFF_X12_Y4_N19
\dp|m_ula|result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula|result[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula|result\(0));

-- Location: LCCOMB_X13_Y4_N4
\dp|ula_result_reg|value~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|value~0_combout\ = (\grab_ula~combout\ & ((\dp|m_ula|result\(0)))) # (!\grab_ula~combout\ & (\dp|ula_result_reg|value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \grab_ula~combout\,
	datac => \dp|ula_result_reg|value\(0),
	datad => \dp|m_ula|result\(0),
	combout => \dp|ula_result_reg|value~0_combout\);

-- Location: LCFF_X13_Y4_N5
\dp|ula_result_reg|value[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|ula_result_reg|value~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|ula_result_reg|value\(0));

-- Location: LCCOMB_X13_Y4_N0
\dp|ula_result_reg|valueOut~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|valueOut~0_combout\ = (\latch_ula~combout\ & ((\grab_ula~combout\ & ((\dp|m_ula|result\(0)))) # (!\grab_ula~combout\ & (\dp|ula_result_reg|value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_ula~combout\,
	datab => \dp|ula_result_reg|value\(0),
	datac => \grab_ula~combout\,
	datad => \dp|m_ula|result\(0),
	combout => \dp|ula_result_reg|valueOut~0_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_latch_ula,
	combout => \latch_ula~combout\);

-- Location: LCCOMB_X13_Y4_N6
\dp|ula_result_reg|valueOut[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|valueOut[0]~1_combout\ = (\reset~combout\) # (\latch_ula~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \latch_ula~combout\,
	combout => \dp|ula_result_reg|valueOut[0]~1_combout\);

-- Location: LCFF_X13_Y4_N1
\dp|ula_result_reg|valueOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|ula_result_reg|valueOut~0_combout\,
	ena => \dp|ula_result_reg|valueOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|ula_result_reg|valueOut\(0));

-- Location: LCCOMB_X13_Y4_N14
\dp|m_ula_latch|value~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula_latch|value~0_combout\ = (\grab_ula~combout\ & (((\dp|ula_result_reg|valueOut\(0))))) # (!\grab_ula~combout\ & (\reset~combout\ & (\dp|m_ula_latch|value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grab_ula~combout\,
	datab => \reset~combout\,
	datac => \dp|m_ula_latch|value\(0),
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|m_ula_latch|value~0_combout\);

-- Location: LCCOMB_X14_Y4_N24
\dp|m_ula_latch|out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula_latch|out[0]~feeder_combout\ = \dp|m_ula_latch|value~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|m_ula_latch|value~0_combout\,
	combout => \dp|m_ula_latch|out[0]~feeder_combout\);

-- Location: LCFF_X14_Y4_N25
\dp|m_ula_latch|out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula_latch|out[0]~feeder_combout\,
	ena => \latch_ula~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula_latch|out\(0));

-- Location: LCFF_X13_Y4_N17
\dp|m_ula_latch|value[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula_latch|value~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula_latch|value\(1));

-- Location: LCCOMB_X13_Y4_N8
\dp|ula_result_reg|value~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|value~1_combout\ = (\grab_ula~combout\ & (\dp|m_ula|result\(1))) # (!\grab_ula~combout\ & ((\dp|ula_result_reg|value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|m_ula|result\(1),
	datac => \dp|ula_result_reg|value\(1),
	datad => \grab_ula~combout\,
	combout => \dp|ula_result_reg|value~1_combout\);

-- Location: LCFF_X13_Y4_N9
\dp|ula_result_reg|value[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|ula_result_reg|value~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|ula_result_reg|value\(1));

-- Location: LCCOMB_X13_Y4_N22
\dp|ula_result_reg|valueOut~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|valueOut~2_combout\ = (\latch_ula~combout\ & ((\grab_ula~combout\ & (\dp|m_ula|result\(1))) # (!\grab_ula~combout\ & ((\dp|ula_result_reg|value\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|m_ula|result\(1),
	datab => \dp|ula_result_reg|value\(1),
	datac => \grab_ula~combout\,
	datad => \latch_ula~combout\,
	combout => \dp|ula_result_reg|valueOut~2_combout\);

-- Location: LCFF_X13_Y4_N23
\dp|ula_result_reg|valueOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|ula_result_reg|valueOut~2_combout\,
	ena => \dp|ula_result_reg|valueOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|ula_result_reg|valueOut\(1));

-- Location: LCCOMB_X13_Y4_N16
\dp|m_ula_latch|value~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula_latch|value~1_combout\ = (\grab_ula~combout\ & (((\dp|ula_result_reg|valueOut\(1))))) # (!\grab_ula~combout\ & (\reset~combout\ & (\dp|m_ula_latch|value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grab_ula~combout\,
	datab => \reset~combout\,
	datac => \dp|m_ula_latch|value\(1),
	datad => \dp|ula_result_reg|valueOut\(1),
	combout => \dp|m_ula_latch|value~1_combout\);

-- Location: LCCOMB_X14_Y4_N22
\dp|m_ula_latch|out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula_latch|out[1]~feeder_combout\ = \dp|m_ula_latch|value~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|m_ula_latch|value~1_combout\,
	combout => \dp|m_ula_latch|out[1]~feeder_combout\);

-- Location: LCFF_X14_Y4_N23
\dp|m_ula_latch|out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula_latch|out[1]~feeder_combout\,
	ena => \latch_ula~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula_latch|out\(1));

-- Location: LCFF_X13_Y4_N3
\dp|m_ula_latch|value[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula_latch|value~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula_latch|value\(2));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_bus_in[2]~I\ : cycloneii_io
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
	padio => ww_data_bus_in(2),
	combout => \data_bus_in~combout\(2));

-- Location: LCCOMB_X12_Y4_N14
\dp|regA|valueOut~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|regA|valueOut~4_combout\ = (\gp_read~combout\ & ((\gp_write~combout\ & ((\data_bus_in~combout\(2)))) # (!\gp_write~combout\ & (\dp|regA|value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|regA|value\(2),
	datab => \gp_read~combout\,
	datac => \data_bus_in~combout\(2),
	datad => \gp_write~combout\,
	combout => \dp|regA|valueOut~4_combout\);

-- Location: LCFF_X12_Y4_N15
\dp|regA|valueOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|regA|valueOut~4_combout\,
	ena => \dp|regA|valueOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|regA|valueOut\(2));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_bus_in[1]~I\ : cycloneii_io
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
	padio => ww_data_bus_in(1),
	combout => \data_bus_in~combout\(1));

-- Location: LCCOMB_X12_Y4_N22
\dp|m_ula|result[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula|result[2]~9_combout\ = ((\data_bus_in~combout\(2) $ (\dp|regA|valueOut\(2) $ (!\dp|m_ula|result[1]~8\)))) # (GND)
-- \dp|m_ula|result[2]~10\ = CARRY((\data_bus_in~combout\(2) & ((\dp|regA|valueOut\(2)) # (!\dp|m_ula|result[1]~8\))) # (!\data_bus_in~combout\(2) & (\dp|regA|valueOut\(2) & !\dp|m_ula|result[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus_in~combout\(2),
	datab => \dp|regA|valueOut\(2),
	datad => VCC,
	cin => \dp|m_ula|result[1]~8\,
	combout => \dp|m_ula|result[2]~9_combout\,
	cout => \dp|m_ula|result[2]~10\);

-- Location: LCFF_X12_Y4_N23
\dp|m_ula|result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula|result[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula|result\(2));

-- Location: LCCOMB_X13_Y4_N12
\dp|ula_result_reg|valueOut~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|valueOut~5_combout\ = (\latch_ula~combout\ & ((\grab_ula~combout\ & ((\dp|m_ula|result\(2)))) # (!\grab_ula~combout\ & (\dp|ula_result_reg|value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|value\(2),
	datab => \dp|m_ula|result\(2),
	datac => \grab_ula~combout\,
	datad => \latch_ula~combout\,
	combout => \dp|ula_result_reg|valueOut~5_combout\);

-- Location: LCFF_X13_Y4_N13
\dp|ula_result_reg|valueOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|ula_result_reg|valueOut~5_combout\,
	ena => \dp|ula_result_reg|valueOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|ula_result_reg|valueOut\(2));

-- Location: LCCOMB_X13_Y4_N2
\dp|m_ula_latch|value~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula_latch|value~2_combout\ = (\grab_ula~combout\ & (((\dp|ula_result_reg|valueOut\(2))))) # (!\grab_ula~combout\ & (\reset~combout\ & (\dp|m_ula_latch|value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grab_ula~combout\,
	datab => \reset~combout\,
	datac => \dp|m_ula_latch|value\(2),
	datad => \dp|ula_result_reg|valueOut\(2),
	combout => \dp|m_ula_latch|value~2_combout\);

-- Location: LCCOMB_X14_Y4_N12
\dp|m_ula_latch|out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula_latch|out[2]~feeder_combout\ = \dp|m_ula_latch|value~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|m_ula_latch|value~2_combout\,
	combout => \dp|m_ula_latch|out[2]~feeder_combout\);

-- Location: LCFF_X14_Y4_N13
\dp|m_ula_latch|out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula_latch|out[2]~feeder_combout\,
	ena => \latch_ula~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula_latch|out\(2));

-- Location: LCFF_X13_Y4_N25
\dp|m_ula_latch|value[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula_latch|value~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula_latch|value\(3));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_bus_in[3]~I\ : cycloneii_io
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
	padio => ww_data_bus_in(3),
	combout => \data_bus_in~combout\(3));

-- Location: LCCOMB_X12_Y4_N24
\dp|m_ula|result[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula|result[3]~11_combout\ = (\dp|regA|valueOut\(3) & ((\data_bus_in~combout\(3) & (\dp|m_ula|result[2]~10\ & VCC)) # (!\data_bus_in~combout\(3) & (!\dp|m_ula|result[2]~10\)))) # (!\dp|regA|valueOut\(3) & ((\data_bus_in~combout\(3) & 
-- (!\dp|m_ula|result[2]~10\)) # (!\data_bus_in~combout\(3) & ((\dp|m_ula|result[2]~10\) # (GND)))))
-- \dp|m_ula|result[3]~12\ = CARRY((\dp|regA|valueOut\(3) & (!\data_bus_in~combout\(3) & !\dp|m_ula|result[2]~10\)) # (!\dp|regA|valueOut\(3) & ((!\dp|m_ula|result[2]~10\) # (!\data_bus_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|regA|valueOut\(3),
	datab => \data_bus_in~combout\(3),
	datad => VCC,
	cin => \dp|m_ula|result[2]~10\,
	combout => \dp|m_ula|result[3]~11_combout\,
	cout => \dp|m_ula|result[3]~12\);

-- Location: LCFF_X12_Y4_N25
\dp|m_ula|result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula|result[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula|result\(3));

-- Location: LCCOMB_X13_Y4_N30
\dp|ula_result_reg|valueOut~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|valueOut~4_combout\ = (\latch_ula~combout\ & ((\grab_ula~combout\ & ((\dp|m_ula|result\(3)))) # (!\grab_ula~combout\ & (\dp|ula_result_reg|value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|value\(3),
	datab => \dp|m_ula|result\(3),
	datac => \grab_ula~combout\,
	datad => \latch_ula~combout\,
	combout => \dp|ula_result_reg|valueOut~4_combout\);

-- Location: LCFF_X13_Y4_N31
\dp|ula_result_reg|valueOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|ula_result_reg|valueOut~4_combout\,
	ena => \dp|ula_result_reg|valueOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|ula_result_reg|valueOut\(3));

-- Location: LCCOMB_X13_Y4_N24
\dp|m_ula_latch|value~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula_latch|value~3_combout\ = (\grab_ula~combout\ & (((\dp|ula_result_reg|valueOut\(3))))) # (!\grab_ula~combout\ & (\reset~combout\ & (\dp|m_ula_latch|value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grab_ula~combout\,
	datab => \reset~combout\,
	datac => \dp|m_ula_latch|value\(3),
	datad => \dp|ula_result_reg|valueOut\(3),
	combout => \dp|m_ula_latch|value~3_combout\);

-- Location: LCCOMB_X14_Y4_N10
\dp|m_ula_latch|out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula_latch|out[3]~feeder_combout\ = \dp|m_ula_latch|value~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|m_ula_latch|value~3_combout\,
	combout => \dp|m_ula_latch|out[3]~feeder_combout\);

-- Location: LCFF_X14_Y4_N11
\dp|m_ula_latch|out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula_latch|out[3]~feeder_combout\,
	ena => \latch_ula~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula_latch|out\(3));

-- Location: LCFF_X13_Y4_N19
\dp|m_ula_latch|value[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula_latch|value~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula_latch|value\(4));

-- Location: LCCOMB_X12_Y4_N26
\dp|m_ula|result[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula|result[4]~13_combout\ = !\dp|m_ula|result[3]~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dp|m_ula|result[3]~12\,
	combout => \dp|m_ula|result[4]~13_combout\);

-- Location: LCFF_X12_Y4_N27
\dp|m_ula|result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula|result[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula|result\(4));

-- Location: LCCOMB_X13_Y4_N26
\dp|ula_result_reg|value~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|value~2_combout\ = (\grab_ula~combout\ & ((\dp|m_ula|result\(4)))) # (!\grab_ula~combout\ & (\dp|ula_result_reg|value\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \grab_ula~combout\,
	datac => \dp|ula_result_reg|value\(4),
	datad => \dp|m_ula|result\(4),
	combout => \dp|ula_result_reg|value~2_combout\);

-- Location: LCFF_X13_Y4_N27
\dp|ula_result_reg|value[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|ula_result_reg|value~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|ula_result_reg|value\(4));

-- Location: LCCOMB_X13_Y4_N28
\dp|ula_result_reg|valueOut~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|ula_result_reg|valueOut~3_combout\ = (\latch_ula~combout\ & ((\grab_ula~combout\ & (\dp|m_ula|result\(4))) # (!\grab_ula~combout\ & ((\dp|ula_result_reg|value\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch_ula~combout\,
	datab => \dp|m_ula|result\(4),
	datac => \grab_ula~combout\,
	datad => \dp|ula_result_reg|value\(4),
	combout => \dp|ula_result_reg|valueOut~3_combout\);

-- Location: LCFF_X13_Y4_N29
\dp|ula_result_reg|valueOut[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|ula_result_reg|valueOut~3_combout\,
	ena => \dp|ula_result_reg|valueOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|ula_result_reg|valueOut\(4));

-- Location: LCCOMB_X13_Y4_N18
\dp|m_ula_latch|value~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula_latch|value~4_combout\ = (\grab_ula~combout\ & (((\dp|ula_result_reg|valueOut\(4))))) # (!\grab_ula~combout\ & (\reset~combout\ & (\dp|m_ula_latch|value\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grab_ula~combout\,
	datab => \reset~combout\,
	datac => \dp|m_ula_latch|value\(4),
	datad => \dp|ula_result_reg|valueOut\(4),
	combout => \dp|m_ula_latch|value~4_combout\);

-- Location: LCCOMB_X14_Y4_N16
\dp|m_ula_latch|out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|m_ula_latch|out[4]~feeder_combout\ = \dp|m_ula_latch|value~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|m_ula_latch|value~4_combout\,
	combout => \dp|m_ula_latch|out[4]~feeder_combout\);

-- Location: LCFF_X14_Y4_N17
\dp|m_ula_latch|out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dp|m_ula_latch|out[4]~feeder_combout\,
	ena => \latch_ula~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dp|m_ula_latch|out\(4));

-- Location: LCCOMB_X5_Y12_N22
\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \dp|ula_result_reg|valueOut\(2) $ (VCC)
-- \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(\dp|ula_result_reg|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ula_result_reg|valueOut\(2),
	datad => VCC,
	combout => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X5_Y12_N24
\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\dp|ula_result_reg|valueOut\(3) & (\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)) # (!\dp|ula_result_reg|valueOut\(3) & 
-- (!\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))
-- \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\dp|ula_result_reg|valueOut\(3) & !\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|valueOut\(3),
	datad => VCC,
	cin => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X5_Y12_N28
\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X5_Y12_N30
\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X4_Y12_N2
\dp|Mod0|auto_generated|divider|divider|StageOut[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[30]~1_combout\ = (\dp|ula_result_reg|valueOut\(1) & !\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ula_result_reg|valueOut\(1),
	datad => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[30]~1_combout\);

-- Location: LCCOMB_X4_Y12_N20
\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\dp|Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\) # (\dp|Mod0|auto_generated|divider|divider|StageOut[30]~1_combout\)))
-- \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\dp|Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\) # (\dp|Mod0|auto_generated|divider|divider|StageOut[30]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[30]~1_combout\,
	datad => VCC,
	combout => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X5_Y12_N8
\dp|Mod0|auto_generated|divider|divider|StageOut[33]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[33]~2_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \dp|ula_result_reg|valueOut\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \dp|ula_result_reg|valueOut\(4),
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[33]~2_combout\);

-- Location: LCCOMB_X5_Y12_N18
\dp|Mod0|auto_generated|divider|divider|StageOut[32]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[32]~5_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[32]~5_combout\);

-- Location: LCCOMB_X5_Y12_N12
\dp|Mod0|auto_generated|divider|divider|StageOut[31]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \dp|ula_result_reg|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \dp|ula_result_reg|valueOut\(2),
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\);

-- Location: LCCOMB_X4_Y12_N22
\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\) # 
-- (\dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\)))) # (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\ & 
-- (!\dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\)))
-- \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\ & 
-- !\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datad => VCC,
	cin => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X4_Y12_N24
\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\dp|Mod0|auto_generated|divider|divider|StageOut[32]~4_combout\) # 
-- (\dp|Mod0|auto_generated|divider|divider|StageOut[32]~5_combout\)))) # (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\dp|Mod0|auto_generated|divider|divider|StageOut[32]~4_combout\) # 
-- (\dp|Mod0|auto_generated|divider|divider|StageOut[32]~5_combout\)))))
-- \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\dp|Mod0|auto_generated|divider|divider|StageOut[32]~4_combout\) # 
-- (\dp|Mod0|auto_generated|divider|divider|StageOut[32]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[32]~5_combout\,
	datad => VCC,
	cin => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X4_Y12_N26
\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\dp|Mod0|auto_generated|divider|divider|StageOut[33]~3_combout\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[33]~2_combout\ & 
-- !\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|StageOut[33]~3_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[33]~2_combout\,
	datad => VCC,
	cin => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X4_Y12_N28
\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X4_Y12_N8
\dp|Mod0|auto_generated|divider|divider|StageOut[36]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\dp|ula_result_reg|valueOut\(1))) # 
-- (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|valueOut\(1),
	datac => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\);

-- Location: LCCOMB_X4_Y12_N0
\dp|Mod0|auto_generated|divider|divider|StageOut[38]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\dp|Mod0|auto_generated|divider|divider|StageOut[32]~4_combout\) # 
-- ((\dp|Mod0|auto_generated|divider|divider|StageOut[32]~5_combout\)))) # (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \dp|Mod0|auto_generated|divider|divider|StageOut[32]~5_combout\,
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\);

-- Location: LCCOMB_X5_Y12_N10
\dp|Mod0|auto_generated|divider|divider|StageOut[31]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\);

-- Location: LCCOMB_X4_Y12_N30
\dp|Mod0|auto_generated|divider|divider|StageOut[37]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\) # 
-- (\dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\)))) # (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datad => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\);

-- Location: LCCOMB_X1_Y12_N4
\dp|disp|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux6~0_combout\ = (\dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ & (\dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\ & 
-- !\dp|ula_result_reg|valueOut\(0)))) # (!\dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ & (\dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\ $ 
-- (\dp|ula_result_reg|valueOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\,
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|disp|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y12_N6
\dp|disp|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux5~0_combout\ = (\dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ & (!\dp|ula_result_reg|valueOut\(0) & (\dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ $ 
-- (\dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\)))) # (!\dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ & 
-- (\dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\ & \dp|ula_result_reg|valueOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\,
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|disp|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y12_N8
\dp|disp|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux4~0_combout\ = (\dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\ & !\dp|ula_result_reg|valueOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\,
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|disp|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y12_N22
\dp|disp|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux3~0_combout\ = (\dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ & ((\dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\ & 
-- !\dp|ula_result_reg|valueOut\(0))) # (!\dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ & (\dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\ & \dp|ula_result_reg|valueOut\(0))))) # 
-- (!\dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ & (\dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\ $ (\dp|ula_result_reg|valueOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\,
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|disp|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y12_N12
\dp|disp|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux2~0_combout\ = (\dp|ula_result_reg|valueOut\(0)) # ((\dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ & (\dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ & 
-- !\dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\)) # (!\dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\ & 
-- \dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|StageOut[36]~8_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[38]~10_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|StageOut[37]~9_combout\,
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|disp|Mux2~0_combout\);

-- Location: LCCOMB_X5_Y12_N16
\dp|disp|Mux1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux1~11_combout\ = ((\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\dp|ula_result_reg|valueOut\(3))) # (!\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)))) # (!\dp|ula_result_reg|valueOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|valueOut\(3),
	datab => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|disp|Mux1~11_combout\);

-- Location: LCCOMB_X4_Y12_N18
\dp|disp|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux1~8_combout\ = (\dp|ula_result_reg|valueOut\(1) & ((\dp|ula_result_reg|valueOut\(0)) # ((!\dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\ & !\dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\)))) # 
-- (!\dp|ula_result_reg|valueOut\(1) & (!\dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\ & (!\dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\ & \dp|ula_result_reg|valueOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|valueOut\(1),
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|disp|Mux1~8_combout\);

-- Location: LCCOMB_X4_Y12_N4
\dp|disp|Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux1~9_combout\ = (\dp|ula_result_reg|valueOut\(0) & (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & ((\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\) # 
-- (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)))) # (!\dp|ula_result_reg|valueOut\(0) & (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|disp|Mux1~9_combout\);

-- Location: LCCOMB_X4_Y12_N14
\dp|disp|Mux1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux1~10_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\dp|disp|Mux1~11_combout\ & (\dp|disp|Mux1~8_combout\))) # (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (((\dp|disp|Mux1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|disp|Mux1~11_combout\,
	datab => \dp|disp|Mux1~8_combout\,
	datac => \dp|disp|Mux1~9_combout\,
	datad => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \dp|disp|Mux1~10_combout\);

-- Location: LCCOMB_X4_Y12_N12
\dp|disp|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux0~8_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & ((!\dp|ula_result_reg|valueOut\(0)) # (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))) # 
-- (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|disp|Mux0~8_combout\);

-- Location: LCCOMB_X4_Y12_N6
\dp|disp|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux0~9_combout\ = (\dp|ula_result_reg|valueOut\(1) & (((!\dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\ & !\dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\)) # (!\dp|ula_result_reg|valueOut\(0)))) # 
-- (!\dp|ula_result_reg|valueOut\(1) & ((\dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\) # ((\dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|valueOut\(1),
	datab => \dp|Mod0|auto_generated|divider|divider|StageOut[31]~7_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datad => \dp|ula_result_reg|valueOut\(0),
	combout => \dp|disp|Mux0~9_combout\);

-- Location: LCCOMB_X5_Y12_N6
\dp|disp|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux0~11_combout\ = (\dp|disp|Mux0~9_combout\) # ((\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\dp|ula_result_reg|valueOut\(3))) # (!\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|valueOut\(3),
	datab => \dp|disp|Mux0~9_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \dp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|disp|Mux0~11_combout\);

-- Location: LCCOMB_X4_Y12_N10
\dp|disp|Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux0~10_combout\ = (\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\dp|disp|Mux0~11_combout\)))) # (!\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\dp|disp|Mux0~8_combout\) # 
-- ((\dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|disp|Mux0~8_combout\,
	datab => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \dp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \dp|disp|Mux0~11_combout\,
	combout => \dp|disp|Mux0~10_combout\);

-- Location: LCCOMB_X6_Y12_N2
\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \dp|ula_result_reg|valueOut\(2) $ (VCC)
-- \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(\dp|ula_result_reg|valueOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ula_result_reg|valueOut\(2),
	datad => VCC,
	combout => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X6_Y12_N4
\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\dp|ula_result_reg|valueOut\(3) & (\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)) # (!\dp|ula_result_reg|valueOut\(3) & 
-- (!\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))
-- \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\dp|ula_result_reg|valueOut\(3) & !\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ula_result_reg|valueOut\(3),
	datad => VCC,
	cin => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X6_Y12_N8
\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X6_Y12_N10
\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X6_Y12_N0
\dp|Div0|auto_generated|divider|divider|StageOut[33]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|StageOut[33]~1_combout\ = (\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Div0|auto_generated|divider|divider|StageOut[33]~1_combout\);

-- Location: LCCOMB_X6_Y12_N28
\dp|Div0|auto_generated|divider|divider|StageOut[32]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\ = (\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\);

-- Location: LCCOMB_X6_Y12_N26
\dp|Div0|auto_generated|divider|divider|StageOut[31]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|StageOut[31]~5_combout\ = (\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Div0|auto_generated|divider|divider|StageOut[31]~5_combout\);

-- Location: LCCOMB_X6_Y12_N30
\dp|Div0|auto_generated|divider|divider|StageOut[30]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|StageOut[30]~7_combout\ = (\dp|ula_result_reg|valueOut\(1) & !\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ula_result_reg|valueOut\(1),
	datad => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|Div0|auto_generated|divider|divider|StageOut[30]~7_combout\);

-- Location: LCCOMB_X6_Y12_N14
\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\dp|Div0|auto_generated|divider|divider|StageOut[30]~6_combout\) # (\dp|Div0|auto_generated|divider|divider|StageOut[30]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Div0|auto_generated|divider|divider|StageOut[30]~6_combout\,
	datab => \dp|Div0|auto_generated|divider|divider|StageOut[30]~7_combout\,
	datad => VCC,
	cout => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X6_Y12_N16
\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\dp|Div0|auto_generated|divider|divider|StageOut[31]~4_combout\ & (!\dp|Div0|auto_generated|divider|divider|StageOut[31]~5_combout\ & 
-- !\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Div0|auto_generated|divider|divider|StageOut[31]~4_combout\,
	datab => \dp|Div0|auto_generated|divider|divider|StageOut[31]~5_combout\,
	datad => VCC,
	cin => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X6_Y12_N18
\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\dp|Div0|auto_generated|divider|divider|StageOut[32]~2_combout\) # 
-- (\dp|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Div0|auto_generated|divider|divider|StageOut[32]~2_combout\,
	datab => \dp|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\,
	datad => VCC,
	cin => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X6_Y12_N20
\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\dp|Div0|auto_generated|divider|divider|StageOut[33]~0_combout\ & (!\dp|Div0|auto_generated|divider|divider|StageOut[33]~1_combout\ & 
-- !\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Div0|auto_generated|divider|divider|StageOut[33]~0_combout\,
	datab => \dp|Div0|auto_generated|divider|divider|StageOut[33]~1_combout\,
	datad => VCC,
	cin => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X6_Y12_N22
\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X1_Y21_N8
\dp|disp|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux13~0_combout\ = (!\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|disp|Mux13~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\dp|disp|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux11~0_combout\ = (\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|disp|Mux11~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\dp|disp|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dp|disp|Mux8~0_combout\ = (!\dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \dp|disp|Mux8~0_combout\);

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
	datain => \dp|m_ula_latch|out\(0),
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
	datain => \dp|m_ula_latch|out\(1),
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
	datain => \dp|m_ula_latch|out\(2),
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
	datain => \dp|m_ula_latch|out\(3),
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
	datain => \dp|m_ula_latch|out\(4),
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
	datain => GND,
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
	datain => GND,
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
	datain => \dp|disp|Mux6~0_combout\,
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
	datain => \dp|disp|Mux5~0_combout\,
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
	datain => \dp|disp|Mux4~0_combout\,
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
	datain => \dp|disp|Mux3~0_combout\,
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
	datain => \dp|disp|Mux2~0_combout\,
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
	datain => \dp|disp|Mux1~10_combout\,
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
	datain => \dp|disp|ALT_INV_Mux0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dp|disp|Mux13~0_combout\,
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
	datain => \dp|disp|Mux11~0_combout\,
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
	datain => \dp|disp|Mux13~0_combout\,
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
	datain => \dp|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\,
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
	datain => \dp|disp|Mux8~0_combout\,
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
	datain => \dp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


