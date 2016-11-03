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

-- DATE "11/03/2016 16:32:13"

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
	ula_operation : IN std_logic_vector(1 DOWNTO 0);
	operando1 : IN std_logic_vector(3 DOWNTO 0);
	operando2 : IN std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(7 DOWNTO 0)
	);
END processinho;

-- Design Ports Information
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- latch_ula	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- result[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ula_operation[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando2[1]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando2[0]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando1[0]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ula_operation[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando1[1]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando2[3]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando2[2]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando1[2]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operando1[3]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_ula_operation : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_operando1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_operando2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \m_ula|Mux8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_ula|Add0~1_combout\ : std_logic;
SIGNAL \m_ula|Add0~5_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \m_ula|Add1~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~0_combout\ : std_logic;
SIGNAL \m_ula|Add0~3_combout\ : std_logic;
SIGNAL \m_ula|Mux8~0_combout\ : std_logic;
SIGNAL \m_ula|Mux8~0clkctrl_outclk\ : std_logic;
SIGNAL \m_ula|Add1~1\ : std_logic;
SIGNAL \m_ula|Add1~2_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \m_ula|Add0~4_combout\ : std_logic;
SIGNAL \m_ula|Add0~7_combout\ : std_logic;
SIGNAL \m_ula|Add0~2\ : std_logic;
SIGNAL \m_ula|Add0~6\ : std_logic;
SIGNAL \m_ula|Add0~9_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \m_ula|Add1~3\ : std_logic;
SIGNAL \m_ula|Add1~4_combout\ : std_logic;
SIGNAL \m_ula|Add0~8_combout\ : std_logic;
SIGNAL \m_ula|Add0~11_combout\ : std_logic;
SIGNAL \m_ula|Add0~10\ : std_logic;
SIGNAL \m_ula|Add0~13_combout\ : std_logic;
SIGNAL \m_ula|Add1~5\ : std_logic;
SIGNAL \m_ula|Add1~6_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \m_ula|Add0~12_combout\ : std_logic;
SIGNAL \m_ula|Add0~15_combout\ : std_logic;
SIGNAL \m_ula|Add1~7\ : std_logic;
SIGNAL \m_ula|Add1~8_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \m_ula|Add0~14\ : std_logic;
SIGNAL \m_ula|Add0~16_combout\ : std_logic;
SIGNAL \m_ula|Add0~18_combout\ : std_logic;
SIGNAL \m_ula|Add0~19_combout\ : std_logic;
SIGNAL \m_ula|Add1~9\ : std_logic;
SIGNAL \m_ula|Add1~10_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \m_ula|Mux5~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \m_ula|Mux6~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \m_ula|Mux7~0_combout\ : std_logic;
SIGNAL \m_ula|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \m_ula|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \m_ula|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \m_ula|result\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operando1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \operando2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ula_operation~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_latch_ula <= latch_ula;
ww_ula_operation <= ula_operation;
ww_operando1 <= operando1;
ww_operando2 <= operando2;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\m_ula|Mux8~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \m_ula|Mux8~0_combout\);

-- Location: LCCOMB_X47_Y14_N0
\m_ula|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~1_combout\ = (\operando1~combout\(0) & (\operando2~combout\(0) $ (VCC))) # (!\operando1~combout\(0) & (\operando2~combout\(0) & VCC))
-- \m_ula|Add0~2\ = CARRY((\operando1~combout\(0) & \operando2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando1~combout\(0),
	datab => \operando2~combout\(0),
	datad => VCC,
	combout => \m_ula|Add0~1_combout\,
	cout => \m_ula|Add0~2\);

-- Location: LCCOMB_X47_Y14_N2
\m_ula|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~5_combout\ = (\operando2~combout\(1) & ((\operando1~combout\(1) & (\m_ula|Add0~2\ & VCC)) # (!\operando1~combout\(1) & (!\m_ula|Add0~2\)))) # (!\operando2~combout\(1) & ((\operando1~combout\(1) & (!\m_ula|Add0~2\)) # (!\operando1~combout\(1) & 
-- ((\m_ula|Add0~2\) # (GND)))))
-- \m_ula|Add0~6\ = CARRY((\operando2~combout\(1) & (!\operando1~combout\(1) & !\m_ula|Add0~2\)) # (!\operando2~combout\(1) & ((!\m_ula|Add0~2\) # (!\operando1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(1),
	datab => \operando1~combout\(1),
	datad => VCC,
	cin => \m_ula|Add0~2\,
	combout => \m_ula|Add0~5_combout\,
	cout => \m_ula|Add0~6\);

-- Location: LCCOMB_X46_Y14_N16
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

-- Location: LCCOMB_X46_Y14_N20
\m_ula|Mult0|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_1~4_combout\ = ((\m_ula|Mult0|auto_generated|le3a\(4) $ (\m_ula|Mult0|auto_generated|le4a\(2) $ (!\m_ula|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \m_ula|Mult0|auto_generated|op_1~5\ = CARRY((\m_ula|Mult0|auto_generated|le3a\(4) & ((\m_ula|Mult0|auto_generated|le4a\(2)) # (!\m_ula|Mult0|auto_generated|op_1~3\))) # (!\m_ula|Mult0|auto_generated|le3a\(4) & (\m_ula|Mult0|auto_generated|le4a\(2) & 
-- !\m_ula|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le3a\(4),
	datab => \m_ula|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_1~3\,
	combout => \m_ula|Mult0|auto_generated|op_1~4_combout\,
	cout => \m_ula|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X46_Y14_N22
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

-- Location: LCCOMB_X46_Y14_N24
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

-- Location: LCCOMB_X45_Y14_N8
\m_ula|Mult0|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(0) = \operando2~combout\(1) $ (((\operando2~combout\(0) & \operando1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operando2~combout\(0),
	datac => \operando2~combout\(1),
	datad => \operando1~combout\(0),
	combout => \m_ula|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X47_Y14_N16
\m_ula|Mult0|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(2) = (\operando2~combout\(0) & (\operando2~combout\(1) $ ((\operando1~combout\(2))))) # (!\operando2~combout\(0) & (\operando2~combout\(1) & ((!\operando1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(1),
	datab => \operando1~combout\(2),
	datac => \operando1~combout\(1),
	datad => \operando2~combout\(0),
	combout => \m_ula|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X47_Y14_N20
\m_ula|Mult0|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(1) = (\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\operando1~combout\(1) $ (\m_ula|Mult0|auto_generated|le4a\(5))))) # (!\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\operando1~combout\(0) & 
-- ((\m_ula|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando1~combout\(0),
	datab => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \operando1~combout\(1),
	datad => \m_ula|Mult0|auto_generated|le4a\(5),
	combout => \m_ula|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X45_Y14_N2
\m_ula|Mult0|auto_generated|le3a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(4) = (\operando2~combout\(1) & ((\operando2~combout\(0)) # (!\operando1~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando1~combout\(3),
	datab => \operando2~combout\(1),
	datad => \operando2~combout\(0),
	combout => \m_ula|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X47_Y14_N12
\m_ula|Mult0|auto_generated|le4a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(3) = (\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (\operando1~combout\(3) $ (((\m_ula|Mult0|auto_generated|le4a\(5)))))) # (!\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\operando1~combout\(2) & 
-- \m_ula|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando1~combout\(3),
	datab => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \operando1~combout\(2),
	datad => \m_ula|Mult0|auto_generated|le4a\(5),
	combout => \m_ula|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X45_Y14_N30
\m_ula|Mult0|auto_generated|le5a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(2) = (\operando1~combout\(2) & ((\operando2~combout\(3)) # ((\operando2~combout\(1) & \operando2~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(3),
	datab => \operando2~combout\(1),
	datac => \operando2~combout\(2),
	datad => \operando1~combout\(2),
	combout => \m_ula|Mult0|auto_generated|le5a\(2));

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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando2[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_operando2(1),
	combout => \operando2~combout\(1));

-- Location: LCCOMB_X46_Y14_N0
\m_ula|Mult0|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~0_combout\ = (\m_ula|Mult0|auto_generated|le3a\(0) & (\operando2~combout\(1) $ (VCC))) # (!\m_ula|Mult0|auto_generated|le3a\(0) & (\operando2~combout\(1) & VCC))
-- \m_ula|Mult0|auto_generated|op_3~1\ = CARRY((\m_ula|Mult0|auto_generated|le3a\(0) & \operando2~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le3a\(0),
	datab => \operando2~combout\(1),
	datad => VCC,
	combout => \m_ula|Mult0|auto_generated|op_3~0_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~1\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando1[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_operando1(0),
	combout => \operando1~combout\(0));

-- Location: LCCOMB_X45_Y14_N10
\m_ula|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~0_combout\ = (\operando2~combout\(0) & (\operando1~combout\(0) $ (VCC))) # (!\operando2~combout\(0) & ((\operando1~combout\(0)) # (GND)))
-- \m_ula|Add1~1\ = CARRY((\operando1~combout\(0)) # (!\operando2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(0),
	datab => \operando1~combout\(0),
	datad => VCC,
	combout => \m_ula|Add1~0_combout\,
	cout => \m_ula|Add1~1\);

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

-- Location: LCCOMB_X49_Y14_N18
\m_ula|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~0_combout\ = (\ula_operation~combout\(1) & ((\ula_operation~combout\(0) & (\m_ula|Mult0|auto_generated|op_3~0_combout\)) # (!\ula_operation~combout\(0) & ((\m_ula|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \m_ula|Mult0|auto_generated|op_3~0_combout\,
	datac => \m_ula|Add1~0_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Add0~0_combout\);

-- Location: LCCOMB_X49_Y14_N14
\m_ula|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~3_combout\ = (\m_ula|Add0~0_combout\) # ((\m_ula|Add0~1_combout\ & !\ula_operation~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add0~1_combout\,
	datac => \ula_operation~combout\(1),
	datad => \m_ula|Add0~0_combout\,
	combout => \m_ula|Add0~3_combout\);

-- Location: LCCOMB_X49_Y14_N6
\m_ula|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux8~0_combout\ = (\ula_operation~combout\(1)) # (\ula_operation~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datad => \ula_operation~combout\(0),
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

-- Location: LCCOMB_X49_Y14_N26
\m_ula|result[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(0) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Add0~3_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(0),
	datac => \m_ula|Add0~3_combout\,
	datad => \m_ula|Mux8~0clkctrl_outclk\,
	combout => \m_ula|result\(0));

-- Location: LCCOMB_X45_Y14_N12
\m_ula|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~2_combout\ = (\operando1~combout\(1) & ((\operando2~combout\(1) & (!\m_ula|Add1~1\)) # (!\operando2~combout\(1) & (\m_ula|Add1~1\ & VCC)))) # (!\operando1~combout\(1) & ((\operando2~combout\(1) & ((\m_ula|Add1~1\) # (GND))) # 
-- (!\operando2~combout\(1) & (!\m_ula|Add1~1\))))
-- \m_ula|Add1~3\ = CARRY((\operando1~combout\(1) & (\operando2~combout\(1) & !\m_ula|Add1~1\)) # (!\operando1~combout\(1) & ((\operando2~combout\(1)) # (!\m_ula|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operando1~combout\(1),
	datab => \operando2~combout\(1),
	datad => VCC,
	cin => \m_ula|Add1~1\,
	combout => \m_ula|Add1~2_combout\,
	cout => \m_ula|Add1~3\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando1[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_operando1(1),
	combout => \operando1~combout\(1));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando2[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_operando2(0),
	combout => \operando2~combout\(0));

-- Location: LCCOMB_X47_Y14_N18
\m_ula|Mult0|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(1) = (\operando2~combout\(0) & (\operando2~combout\(1) $ ((\operando1~combout\(1))))) # (!\operando2~combout\(0) & (\operando2~combout\(1) & ((!\operando1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(1),
	datab => \operando1~combout\(1),
	datac => \operando1~combout\(0),
	datad => \operando2~combout\(0),
	combout => \m_ula|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X46_Y14_N2
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

-- Location: LCCOMB_X49_Y14_N20
\m_ula|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~4_combout\ = (\ula_operation~combout\(1) & ((\ula_operation~combout\(0) & ((\m_ula|Mult0|auto_generated|op_3~2_combout\))) # (!\ula_operation~combout\(0) & (\m_ula|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \m_ula|Add1~2_combout\,
	datac => \m_ula|Mult0|auto_generated|op_3~2_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Add0~4_combout\);

-- Location: LCCOMB_X49_Y14_N8
\m_ula|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~7_combout\ = (\m_ula|Add0~4_combout\) # ((\m_ula|Add0~5_combout\ & !\ula_operation~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add0~5_combout\,
	datac => \m_ula|Add0~4_combout\,
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Add0~7_combout\);

-- Location: LCCOMB_X49_Y14_N2
\m_ula|result[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(1) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Add0~7_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(1),
	datac => \m_ula|Add0~7_combout\,
	datad => \m_ula|Mux8~0clkctrl_outclk\,
	combout => \m_ula|result\(1));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando2[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_operando2(2),
	combout => \operando2~combout\(2));

-- Location: LCCOMB_X47_Y14_N4
\m_ula|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~9_combout\ = ((\operando1~combout\(2) $ (\operando2~combout\(2) $ (!\m_ula|Add0~6\)))) # (GND)
-- \m_ula|Add0~10\ = CARRY((\operando1~combout\(2) & ((\operando2~combout\(2)) # (!\m_ula|Add0~6\))) # (!\operando1~combout\(2) & (\operando2~combout\(2) & !\m_ula|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operando1~combout\(2),
	datab => \operando2~combout\(2),
	datad => VCC,
	cin => \m_ula|Add0~6\,
	combout => \m_ula|Add0~9_combout\,
	cout => \m_ula|Add0~10\);

-- Location: LCCOMB_X45_Y14_N6
\m_ula|Mult0|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(0) = \operando2~combout\(3) $ (((\operando2~combout\(2) & ((\operando2~combout\(1)) # (\operando1~combout\(0)))) # (!\operando2~combout\(2) & (\operando2~combout\(1) & \operando1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(3),
	datab => \operando2~combout\(2),
	datac => \operando2~combout\(1),
	datad => \operando1~combout\(0),
	combout => \m_ula|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X46_Y14_N4
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

-- Location: LCCOMB_X45_Y14_N14
\m_ula|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~4_combout\ = ((\operando1~combout\(2) $ (\operando2~combout\(2) $ (\m_ula|Add1~3\)))) # (GND)
-- \m_ula|Add1~5\ = CARRY((\operando1~combout\(2) & ((!\m_ula|Add1~3\) # (!\operando2~combout\(2)))) # (!\operando1~combout\(2) & (!\operando2~combout\(2) & !\m_ula|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operando1~combout\(2),
	datab => \operando2~combout\(2),
	datad => VCC,
	cin => \m_ula|Add1~3\,
	combout => \m_ula|Add1~4_combout\,
	cout => \m_ula|Add1~5\);

-- Location: LCCOMB_X49_Y14_N4
\m_ula|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~8_combout\ = (\ula_operation~combout\(1) & ((\ula_operation~combout\(0) & (\m_ula|Mult0|auto_generated|op_3~4_combout\)) # (!\ula_operation~combout\(0) & ((\m_ula|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \m_ula|Mult0|auto_generated|op_3~4_combout\,
	datac => \m_ula|Add1~4_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Add0~8_combout\);

-- Location: LCCOMB_X49_Y14_N16
\m_ula|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~11_combout\ = (\m_ula|Add0~8_combout\) # ((\m_ula|Add0~9_combout\ & !\ula_operation~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Add0~9_combout\,
	datac => \m_ula|Add0~8_combout\,
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Add0~11_combout\);

-- Location: LCCOMB_X49_Y14_N12
\m_ula|result[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(2) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Add0~11_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(2),
	datac => \m_ula|Add0~11_combout\,
	datad => \m_ula|Mux8~0clkctrl_outclk\,
	combout => \m_ula|result\(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando2[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_operando2(3),
	combout => \operando2~combout\(3));

-- Location: LCCOMB_X47_Y14_N6
\m_ula|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~13_combout\ = (\operando1~combout\(3) & ((\operando2~combout\(3) & (\m_ula|Add0~10\ & VCC)) # (!\operando2~combout\(3) & (!\m_ula|Add0~10\)))) # (!\operando1~combout\(3) & ((\operando2~combout\(3) & (!\m_ula|Add0~10\)) # 
-- (!\operando2~combout\(3) & ((\m_ula|Add0~10\) # (GND)))))
-- \m_ula|Add0~14\ = CARRY((\operando1~combout\(3) & (!\operando2~combout\(3) & !\m_ula|Add0~10\)) # (!\operando1~combout\(3) & ((!\m_ula|Add0~10\) # (!\operando2~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operando1~combout\(3),
	datab => \operando2~combout\(3),
	datad => VCC,
	cin => \m_ula|Add0~10\,
	combout => \m_ula|Add0~13_combout\,
	cout => \m_ula|Add0~14\);

-- Location: LCCOMB_X45_Y14_N16
\m_ula|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~6_combout\ = (\operando1~combout\(3) & ((\operando2~combout\(3) & (!\m_ula|Add1~5\)) # (!\operando2~combout\(3) & (\m_ula|Add1~5\ & VCC)))) # (!\operando1~combout\(3) & ((\operando2~combout\(3) & ((\m_ula|Add1~5\) # (GND))) # 
-- (!\operando2~combout\(3) & (!\m_ula|Add1~5\))))
-- \m_ula|Add1~7\ = CARRY((\operando1~combout\(3) & (\operando2~combout\(3) & !\m_ula|Add1~5\)) # (!\operando1~combout\(3) & ((\operando2~combout\(3)) # (!\m_ula|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operando1~combout\(3),
	datab => \operando2~combout\(3),
	datad => VCC,
	cin => \m_ula|Add1~5\,
	combout => \m_ula|Add1~6_combout\,
	cout => \m_ula|Add1~7\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando1[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_operando1(2),
	combout => \operando1~combout\(2));

-- Location: LCCOMB_X45_Y14_N4
\m_ula|Mult0|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le3a\(3) = (\operando2~combout\(0) & (\operando1~combout\(3) $ ((\operando2~combout\(1))))) # (!\operando2~combout\(0) & (((\operando2~combout\(1) & !\operando1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando1~combout\(3),
	datab => \operando2~combout\(0),
	datac => \operando2~combout\(1),
	datad => \operando1~combout\(2),
	combout => \m_ula|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X47_Y14_N22
\m_ula|Mult0|auto_generated|le4a[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(5) = \operando2~combout\(3) $ (((\operando2~combout\(1) & \operando2~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(1),
	datab => \operando2~combout\(2),
	datac => \operando2~combout\(3),
	combout => \m_ula|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X46_Y14_N18
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

-- Location: LCCOMB_X46_Y14_N6
\m_ula|Mult0|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~6_combout\ = (\m_ula|Mult0|auto_generated|le4a\(1) & ((\m_ula|Mult0|auto_generated|op_1~2_combout\ & (\m_ula|Mult0|auto_generated|op_3~5\ & VCC)) # (!\m_ula|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\m_ula|Mult0|auto_generated|op_3~5\)))) # (!\m_ula|Mult0|auto_generated|le4a\(1) & ((\m_ula|Mult0|auto_generated|op_1~2_combout\ & (!\m_ula|Mult0|auto_generated|op_3~5\)) # (!\m_ula|Mult0|auto_generated|op_1~2_combout\ & 
-- ((\m_ula|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \m_ula|Mult0|auto_generated|op_3~7\ = CARRY((\m_ula|Mult0|auto_generated|le4a\(1) & (!\m_ula|Mult0|auto_generated|op_1~2_combout\ & !\m_ula|Mult0|auto_generated|op_3~5\)) # (!\m_ula|Mult0|auto_generated|le4a\(1) & ((!\m_ula|Mult0|auto_generated|op_3~5\) # 
-- (!\m_ula|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le4a\(1),
	datab => \m_ula|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~5\,
	combout => \m_ula|Mult0|auto_generated|op_3~6_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X49_Y14_N28
\m_ula|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~12_combout\ = (\ula_operation~combout\(1) & ((\ula_operation~combout\(0) & ((\m_ula|Mult0|auto_generated|op_3~6_combout\))) # (!\ula_operation~combout\(0) & (\m_ula|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \m_ula|Add1~6_combout\,
	datac => \m_ula|Mult0|auto_generated|op_3~6_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Add0~12_combout\);

-- Location: LCCOMB_X48_Y14_N12
\m_ula|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~15_combout\ = (\m_ula|Add0~12_combout\) # ((!\ula_operation~combout\(1) & \m_ula|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_operation~combout\(1),
	datac => \m_ula|Add0~13_combout\,
	datad => \m_ula|Add0~12_combout\,
	combout => \m_ula|Add0~15_combout\);

-- Location: LCCOMB_X48_Y14_N14
\m_ula|result[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(3) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Add0~15_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(3),
	datac => \m_ula|Mux8~0clkctrl_outclk\,
	datad => \m_ula|Add0~15_combout\,
	combout => \m_ula|result\(3));

-- Location: LCCOMB_X45_Y14_N18
\m_ula|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~8_combout\ = \m_ula|Add1~7\ $ (GND)
-- \m_ula|Add1~9\ = CARRY(!\m_ula|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \m_ula|Add1~7\,
	combout => \m_ula|Add1~8_combout\,
	cout => \m_ula|Add1~9\);

-- Location: LCCOMB_X45_Y14_N0
\m_ula|Mult0|auto_generated|le5a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(0) = (\operando1~combout\(0) & ((\operando2~combout\(3)) # ((\operando2~combout\(2) & \operando2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(3),
	datab => \operando2~combout\(2),
	datac => \operando2~combout\(1),
	datad => \operando1~combout\(0),
	combout => \m_ula|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X46_Y14_N8
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

-- Location: LCCOMB_X47_Y14_N8
\m_ula|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~16_combout\ = !\m_ula|Add0~14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m_ula|Add0~14\,
	combout => \m_ula|Add0~16_combout\);

-- Location: LCCOMB_X49_Y14_N0
\m_ula|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~18_combout\ = (\ula_operation~combout\(1) & ((\ula_operation~combout\(0)))) # (!\ula_operation~combout\(1) & (\m_ula|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \m_ula|Add0~16_combout\,
	datad => \ula_operation~combout\(0),
	combout => \m_ula|Add0~18_combout\);

-- Location: LCCOMB_X49_Y14_N24
\m_ula|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add0~19_combout\ = (\ula_operation~combout\(1) & ((\m_ula|Add0~18_combout\ & ((\m_ula|Mult0|auto_generated|op_3~8_combout\))) # (!\m_ula|Add0~18_combout\ & (\m_ula|Add1~8_combout\)))) # (!\ula_operation~combout\(1) & (((\m_ula|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(1),
	datab => \m_ula|Add1~8_combout\,
	datac => \m_ula|Mult0|auto_generated|op_3~8_combout\,
	datad => \m_ula|Add0~18_combout\,
	combout => \m_ula|Add0~19_combout\);

-- Location: LCCOMB_X49_Y14_N22
\m_ula|result[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(4) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Add0~19_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|result\(4),
	datac => \m_ula|Add0~19_combout\,
	datad => \m_ula|Mux8~0clkctrl_outclk\,
	combout => \m_ula|result\(4));

-- Location: LCCOMB_X45_Y14_N20
\m_ula|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Add1~10_combout\ = !\m_ula|Add1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \m_ula|Add1~9\,
	combout => \m_ula|Add1~10_combout\);

-- Location: LCCOMB_X46_Y14_N10
\m_ula|Mult0|auto_generated|op_3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~10_combout\ = (\m_ula|Mult0|auto_generated|op_1~6_combout\ & ((\operando2~combout\(1) & (\m_ula|Mult0|auto_generated|op_3~9\ & VCC)) # (!\operando2~combout\(1) & (!\m_ula|Mult0|auto_generated|op_3~9\)))) # 
-- (!\m_ula|Mult0|auto_generated|op_1~6_combout\ & ((\operando2~combout\(1) & (!\m_ula|Mult0|auto_generated|op_3~9\)) # (!\operando2~combout\(1) & ((\m_ula|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \m_ula|Mult0|auto_generated|op_3~11\ = CARRY((\m_ula|Mult0|auto_generated|op_1~6_combout\ & (!\operando2~combout\(1) & !\m_ula|Mult0|auto_generated|op_3~9\)) # (!\m_ula|Mult0|auto_generated|op_1~6_combout\ & ((!\m_ula|Mult0|auto_generated|op_3~9\) # 
-- (!\operando2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_1~6_combout\,
	datab => \operando2~combout\(1),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~9\,
	combout => \m_ula|Mult0|auto_generated|op_3~10_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X47_Y14_N28
\m_ula|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux5~0_combout\ = (\ula_operation~combout\(1) & ((\ula_operation~combout\(0) & ((\m_ula|Mult0|auto_generated|op_3~10_combout\))) # (!\ula_operation~combout\(0) & (\m_ula|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_operation~combout\(0),
	datab => \ula_operation~combout\(1),
	datac => \m_ula|Add1~10_combout\,
	datad => \m_ula|Mult0|auto_generated|op_3~10_combout\,
	combout => \m_ula|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y14_N14
\m_ula|result[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(5) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|Mux5~0_combout\)) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux5~0_combout\,
	datac => \m_ula|result\(5),
	datad => \m_ula|Mux8~0clkctrl_outclk\,
	combout => \m_ula|result\(5));

-- Location: LCCOMB_X46_Y14_N12
\m_ula|Mult0|auto_generated|op_3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~12_combout\ = ((\m_ula|Mult0|auto_generated|op_1~8_combout\ $ (\operando2~combout\(1) $ (!\m_ula|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \m_ula|Mult0|auto_generated|op_3~13\ = CARRY((\m_ula|Mult0|auto_generated|op_1~8_combout\ & ((\operando2~combout\(1)) # (!\m_ula|Mult0|auto_generated|op_3~11\))) # (!\m_ula|Mult0|auto_generated|op_1~8_combout\ & (\operando2~combout\(1) & 
-- !\m_ula|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|op_1~8_combout\,
	datab => \operando2~combout\(1),
	datad => VCC,
	cin => \m_ula|Mult0|auto_generated|op_3~11\,
	combout => \m_ula|Mult0|auto_generated|op_3~12_combout\,
	cout => \m_ula|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X49_Y14_N30
\m_ula|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux6~0_combout\ = (\ula_operation~combout\(1) & ((\ula_operation~combout\(0) & ((\m_ula|Mult0|auto_generated|op_3~12_combout\))) # (!\ula_operation~combout\(0) & (\m_ula|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add1~10_combout\,
	datab => \m_ula|Mult0|auto_generated|op_3~12_combout\,
	datac => \ula_operation~combout\(0),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux6~0_combout\);

-- Location: LCCOMB_X48_Y14_N20
\m_ula|result[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(6) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|Mux6~0_combout\)) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mux6~0_combout\,
	datac => \m_ula|result\(6),
	datad => \m_ula|Mux8~0clkctrl_outclk\,
	combout => \m_ula|result\(6));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operando1[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_operando1(3),
	combout => \operando1~combout\(3));

-- Location: LCCOMB_X45_Y14_N24
\m_ula|Mult0|auto_generated|le5a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(3) = (\operando1~combout\(3) & ((\operando2~combout\(3)) # ((\operando2~combout\(1) & \operando2~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(3),
	datab => \operando2~combout\(1),
	datac => \operando2~combout\(2),
	datad => \operando1~combout\(3),
	combout => \m_ula|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X45_Y14_N28
\m_ula|Mult0|auto_generated|le4a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(4) = (\operando1~combout\(3) & (\operando2~combout\(3) & (\operando2~combout\(1) $ (\operando2~combout\(2))))) # (!\operando1~combout\(3) & (\operando2~combout\(3) $ (((\operando2~combout\(1) & \operando2~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(3),
	datab => \operando2~combout\(1),
	datac => \operando2~combout\(2),
	datad => \operando1~combout\(3),
	combout => \m_ula|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X45_Y14_N22
\m_ula|Mult0|auto_generated|le5a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le5a\(1) = (\operando1~combout\(1) & ((\operando2~combout\(3)) # ((\operando2~combout\(1) & \operando2~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(3),
	datab => \operando2~combout\(1),
	datac => \operando2~combout\(2),
	datad => \operando1~combout\(1),
	combout => \m_ula|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X47_Y14_N26
\m_ula|Mult0|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ = \operando2~combout\(1) $ (\operando2~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operando2~combout\(1),
	datac => \operando2~combout\(2),
	combout => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X47_Y14_N30
\m_ula|Mult0|auto_generated|le4a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|le4a\(2) = (\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (\m_ula|Mult0|auto_generated|le4a\(5) $ (((\operando1~combout\(2)))))) # (!\m_ula|Mult0|auto_generated|cs2a[1]~0_combout\ & (\m_ula|Mult0|auto_generated|le4a\(5) & 
-- (!\operando1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Mult0|auto_generated|le4a\(5),
	datab => \operando1~combout\(1),
	datac => \operando1~combout\(2),
	datad => \m_ula|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \m_ula|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X46_Y14_N26
\m_ula|Mult0|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_1~10_combout\ = \m_ula|Mult0|auto_generated|le5a\(3) $ (\m_ula|Mult0|auto_generated|op_1~9\ $ (!\m_ula|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_ula|Mult0|auto_generated|le5a\(3),
	datad => \m_ula|Mult0|auto_generated|le4a\(5),
	cin => \m_ula|Mult0|auto_generated|op_1~9\,
	combout => \m_ula|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X46_Y14_N14
\m_ula|Mult0|auto_generated|op_3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mult0|auto_generated|op_3~14_combout\ = \operando2~combout\(1) $ (\m_ula|Mult0|auto_generated|op_3~13\ $ (!\m_ula|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \operando2~combout\(1),
	datad => \m_ula|Mult0|auto_generated|op_1~10_combout\,
	cin => \m_ula|Mult0|auto_generated|op_3~13\,
	combout => \m_ula|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X49_Y14_N10
\m_ula|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|Mux7~0_combout\ = (\ula_operation~combout\(1) & ((\ula_operation~combout\(0) & ((\m_ula|Mult0|auto_generated|op_3~14_combout\))) # (!\ula_operation~combout\(0) & (\m_ula|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|Add1~10_combout\,
	datab => \m_ula|Mult0|auto_generated|op_3~14_combout\,
	datac => \ula_operation~combout\(0),
	datad => \ula_operation~combout\(1),
	combout => \m_ula|Mux7~0_combout\);

-- Location: LCCOMB_X48_Y14_N10
\m_ula|result[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \m_ula|result\(7) = (GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & ((\m_ula|Mux7~0_combout\))) # (!GLOBAL(\m_ula|Mux8~0clkctrl_outclk\) & (\m_ula|result\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ula|result\(7),
	datab => \m_ula|Mux7~0_combout\,
	datad => \m_ula|Mux8~0clkctrl_outclk\,
	combout => \m_ula|result\(7));

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
	padio => ww_clock);

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_reset);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
END structure;


