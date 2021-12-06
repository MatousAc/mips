-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "12/05/2021 20:52:30"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	aluControl : IN std_logic_vector(3 DOWNTO 0);
	inputA : IN std_logic_vector(31 DOWNTO 0);
	inputB : IN std_logic_vector(31 DOWNTO 0);
	shamt : IN std_logic_vector(4 DOWNTO 0);
	zero : OUT std_logic;
	aluResult : OUT std_logic_vector(31 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- zero	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[5]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[8]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[9]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[10]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[12]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[13]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[14]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[16]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[17]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[18]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[19]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[20]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[21]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[22]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[23]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[24]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[25]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[26]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[27]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[28]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[29]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[30]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[31]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[11]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[12]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[14]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[15]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[16]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[17]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[18]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[19]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[20]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[21]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[22]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[23]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[24]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[25]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[26]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[31]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[27]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[28]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[29]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[30]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[11]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[10]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[9]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[6]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[10]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[7]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[14]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[13]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[12]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[18]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[21]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[20]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[19]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[17]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[16]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[25]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[28]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[27]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[26]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[24]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[23]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[22]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[30]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[31]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[29]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_aluControl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inputA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inputB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_shamt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_aluResult : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \aluControl[0]~input_o\ : std_logic;
SIGNAL \inputA[0]~input_o\ : std_logic;
SIGNAL \aluControl[2]~input_o\ : std_logic;
SIGNAL \inputB[0]~input_o\ : std_logic;
SIGNAL \Add0~130_cout\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \aluControl[3]~input_o\ : std_logic;
SIGNAL \aluControl[1]~input_o\ : std_logic;
SIGNAL \Mux109~1_combout\ : std_logic;
SIGNAL \inputB[30]~input_o\ : std_logic;
SIGNAL \inputB[31]~input_o\ : std_logic;
SIGNAL \inputA[31]~input_o\ : std_logic;
SIGNAL \Mux109~2_combout\ : std_logic;
SIGNAL \inputB[29]~input_o\ : std_logic;
SIGNAL \inputA[30]~input_o\ : std_logic;
SIGNAL \inputA[29]~input_o\ : std_logic;
SIGNAL \Mux109~3_combout\ : std_logic;
SIGNAL \inputB[22]~input_o\ : std_logic;
SIGNAL \inputA[22]~input_o\ : std_logic;
SIGNAL \inputA[24]~input_o\ : std_logic;
SIGNAL \inputA[27]~input_o\ : std_logic;
SIGNAL \inputB[28]~input_o\ : std_logic;
SIGNAL \inputA[26]~input_o\ : std_logic;
SIGNAL \inputA[28]~input_o\ : std_logic;
SIGNAL \inputB[27]~input_o\ : std_logic;
SIGNAL \inputB[26]~input_o\ : std_logic;
SIGNAL \LessThan0~28_combout\ : std_logic;
SIGNAL \inputB[25]~input_o\ : std_logic;
SIGNAL \LessThan0~34_combout\ : std_logic;
SIGNAL \inputA[25]~input_o\ : std_logic;
SIGNAL \inputB[24]~input_o\ : std_logic;
SIGNAL \LessThan0~35_combout\ : std_logic;
SIGNAL \inputB[23]~input_o\ : std_logic;
SIGNAL \LessThan0~29_combout\ : std_logic;
SIGNAL \LessThan0~33_combout\ : std_logic;
SIGNAL \inputA[23]~input_o\ : std_logic;
SIGNAL \LessThan0~36_combout\ : std_logic;
SIGNAL \LessThan0~31_combout\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \LessThan0~32_combout\ : std_logic;
SIGNAL \Mux109~4_combout\ : std_logic;
SIGNAL \Mux109~5_combout\ : std_logic;
SIGNAL \inputB[8]~input_o\ : std_logic;
SIGNAL \inputA[8]~input_o\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \inputB[11]~input_o\ : std_logic;
SIGNAL \inputA[11]~input_o\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \inputB[14]~input_o\ : std_logic;
SIGNAL \inputA[13]~input_o\ : std_logic;
SIGNAL \inputA[14]~input_o\ : std_logic;
SIGNAL \inputB[13]~input_o\ : std_logic;
SIGNAL \inputB[12]~input_o\ : std_logic;
SIGNAL \inputA[12]~input_o\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \inputB[9]~input_o\ : std_logic;
SIGNAL \inputA[9]~input_o\ : std_logic;
SIGNAL \inputB[10]~input_o\ : std_logic;
SIGNAL \inputA[10]~input_o\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \inputA[5]~input_o\ : std_logic;
SIGNAL \inputA[4]~input_o\ : std_logic;
SIGNAL \inputB[4]~input_o\ : std_logic;
SIGNAL \inputB[5]~input_o\ : std_logic;
SIGNAL \inputB[6]~input_o\ : std_logic;
SIGNAL \inputB[7]~input_o\ : std_logic;
SIGNAL \inputA[7]~input_o\ : std_logic;
SIGNAL \inputA[6]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \inputB[17]~input_o\ : std_logic;
SIGNAL \inputA[17]~input_o\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \inputB[16]~input_o\ : std_logic;
SIGNAL \inputA[16]~input_o\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \inputB[20]~input_o\ : std_logic;
SIGNAL \inputA[19]~input_o\ : std_logic;
SIGNAL \inputA[20]~input_o\ : std_logic;
SIGNAL \inputB[19]~input_o\ : std_logic;
SIGNAL \inputB[21]~input_o\ : std_logic;
SIGNAL \inputA[21]~input_o\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \inputA[15]~input_o\ : std_logic;
SIGNAL \inputB[15]~input_o\ : std_logic;
SIGNAL \LessThan0~21_combout\ : std_logic;
SIGNAL \inputB[18]~input_o\ : std_logic;
SIGNAL \inputA[18]~input_o\ : std_logic;
SIGNAL \LessThan0~22_combout\ : std_logic;
SIGNAL \inputA[3]~input_o\ : std_logic;
SIGNAL \inputB[2]~input_o\ : std_logic;
SIGNAL \inputA[2]~input_o\ : std_logic;
SIGNAL \inputB[3]~input_o\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \inputB[1]~input_o\ : std_logic;
SIGNAL \inputA[1]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~23_combout\ : std_logic;
SIGNAL \LessThan0~25_combout\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \LessThan0~24_combout\ : std_logic;
SIGNAL \LessThan0~27_combout\ : std_logic;
SIGNAL \Mux109~6_combout\ : std_logic;
SIGNAL \shamt[4]~input_o\ : std_logic;
SIGNAL \shamt[3]~input_o\ : std_logic;
SIGNAL \shamt[0]~input_o\ : std_logic;
SIGNAL \shamt[1]~input_o\ : std_logic;
SIGNAL \shamt[2]~input_o\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux103~0_combout\ : std_logic;
SIGNAL \Mux103~1_combout\ : std_logic;
SIGNAL \Mux109~12_combout\ : std_logic;
SIGNAL \Mux138~20_combout\ : std_logic;
SIGNAL \Mux138~16_combout\ : std_logic;
SIGNAL \Mux138~24_combout\ : std_logic;
SIGNAL \Mux138~28_combout\ : std_logic;
SIGNAL \Mux138~29_combout\ : std_logic;
SIGNAL \Mux34~11_combout\ : std_logic;
SIGNAL \Mux34~7_combout\ : std_logic;
SIGNAL \Mux34~10_combout\ : std_logic;
SIGNAL \Mux34~6_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux34~14_combout\ : std_logic;
SIGNAL \Mux34~9_combout\ : std_logic;
SIGNAL \Mux34~16_combout\ : std_logic;
SIGNAL \Mux34~8_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux109~0_combout\ : std_logic;
SIGNAL \Mux138~18_combout\ : std_logic;
SIGNAL \Mux138~22_combout\ : std_logic;
SIGNAL \Mux138~26_combout\ : std_logic;
SIGNAL \Mux138~30_combout\ : std_logic;
SIGNAL \Mux138~31_combout\ : std_logic;
SIGNAL \Mux109~8_combout\ : std_logic;
SIGNAL \Mux109~7_combout\ : std_logic;
SIGNAL \Mux160~0_combout\ : std_logic;
SIGNAL \Mux104~5_combout\ : std_logic;
SIGNAL \Mux104~4_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux92~14_combout\ : std_logic;
SIGNAL \Mux92~3_combout\ : std_logic;
SIGNAL \Mux92~10_combout\ : std_logic;
SIGNAL \Mux92~18_combout\ : std_logic;
SIGNAL \Mux92~8_combout\ : std_logic;
SIGNAL \Mux92~12_combout\ : std_logic;
SIGNAL \Mux92~16_combout\ : std_logic;
SIGNAL \Mux92~19_combout\ : std_logic;
SIGNAL \Mux104~8_combout\ : std_logic;
SIGNAL \Mux104~3_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Mux104~9_combout\ : std_logic;
SIGNAL \Mux104~1_combout\ : std_logic;
SIGNAL \Mux104~0_combout\ : std_logic;
SIGNAL \Mux61~7_combout\ : std_logic;
SIGNAL \Mux61~14_combout\ : std_logic;
SIGNAL \Mux61~9_combout\ : std_logic;
SIGNAL \Mux61~8_combout\ : std_logic;
SIGNAL \Mux104~6_combout\ : std_logic;
SIGNAL \Mux138~14_combout\ : std_logic;
SIGNAL \Mux138~10_combout\ : std_logic;
SIGNAL \Mux138~5_combout\ : std_logic;
SIGNAL \Mux138~19_combout\ : std_logic;
SIGNAL \Mux61~11_combout\ : std_logic;
SIGNAL \Mux61~12_combout\ : std_logic;
SIGNAL \Mux61~10_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux138~12_combout\ : std_logic;
SIGNAL \Mux138~0_combout\ : std_logic;
SIGNAL \Mux138~21_combout\ : std_logic;
SIGNAL \Mux104~7_combout\ : std_logic;
SIGNAL \Mux104~2_combout\ : std_logic;
SIGNAL \Mux104~10_combout\ : std_logic;
SIGNAL \Mux107~0_combout\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \Mux107~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux92~21_combout\ : std_logic;
SIGNAL \Mux101~0_combout\ : std_logic;
SIGNAL \Mux107~5_combout\ : std_logic;
SIGNAL \Mux138~27_combout\ : std_logic;
SIGNAL \Mux138~25_combout\ : std_logic;
SIGNAL \Mux107~2_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux34~12_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~15_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux107~1_combout\ : std_logic;
SIGNAL \Mux107~4_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Mux92~20_combout\ : std_logic;
SIGNAL \Mux105~2_combout\ : std_logic;
SIGNAL \Mux100~0_combout\ : std_logic;
SIGNAL \Mux106~5_combout\ : std_logic;
SIGNAL \Mux106~0_combout\ : std_logic;
SIGNAL \Mux106~3_combout\ : std_logic;
SIGNAL \Mux138~23_combout\ : std_logic;
SIGNAL \Mux106~2_combout\ : std_logic;
SIGNAL \Mux61~16_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~13_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux61~17_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux61~15_combout\ : std_logic;
SIGNAL \Mux106~1_combout\ : std_logic;
SIGNAL \Mux106~4_combout\ : std_logic;
SIGNAL \Mux108~2_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Mux102~0_combout\ : std_logic;
SIGNAL \Mux102~1_combout\ : std_logic;
SIGNAL \Mux108~5_combout\ : std_logic;
SIGNAL \Mux108~0_combout\ : std_logic;
SIGNAL \Mux108~3_combout\ : std_logic;
SIGNAL \Mux61~18_combout\ : std_logic;
SIGNAL \Mux63~2_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \Mux108~1_combout\ : std_logic;
SIGNAL \Mux108~4_combout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux105~3_combout\ : std_logic;
SIGNAL \Mux105~4_combout\ : std_logic;
SIGNAL \Mux105~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux105~1_combout\ : std_logic;
SIGNAL \Mux105~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux70~1_combout\ : std_logic;
SIGNAL \Mux138~2_combout\ : std_logic;
SIGNAL \Mux138~17_combout\ : std_logic;
SIGNAL \Mux138~7_combout\ : std_logic;
SIGNAL \Mux138~15_combout\ : std_logic;
SIGNAL \Mux70~2_combout\ : std_logic;
SIGNAL \Mux92~1_combout\ : std_logic;
SIGNAL \Mux92~15_combout\ : std_logic;
SIGNAL \Mux92~6_combout\ : std_logic;
SIGNAL \Mux92~17_combout\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux70~5_combout\ : std_logic;
SIGNAL \Mux70~3_combout\ : std_logic;
SIGNAL \Mux70~4_combout\ : std_logic;
SIGNAL \Mux138~1_combout\ : std_logic;
SIGNAL \Mux138~3_combout\ : std_logic;
SIGNAL \Mux138~4_combout\ : std_logic;
SIGNAL \Mux138~6_combout\ : std_logic;
SIGNAL \Mux138~11_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux67~1_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux92~2_combout\ : std_logic;
SIGNAL \Mux92~11_combout\ : std_logic;
SIGNAL \Mux92~7_combout\ : std_logic;
SIGNAL \Mux92~5_combout\ : std_logic;
SIGNAL \Mux92~9_combout\ : std_logic;
SIGNAL \Mux66~2_combout\ : std_logic;
SIGNAL \Mux67~2_combout\ : std_logic;
SIGNAL \Mux67~3_combout\ : std_logic;
SIGNAL \Mux67~4_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux92~0_combout\ : std_logic;
SIGNAL \Mux92~4_combout\ : std_logic;
SIGNAL \Mux66~3_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mux66~4_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux61~6_combout\ : std_logic;
SIGNAL \Mux138~8_combout\ : std_logic;
SIGNAL \Mux138~9_combout\ : std_logic;
SIGNAL \Mux66~1_combout\ : std_logic;
SIGNAL \Mux66~5_combout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mux69~3_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Mux138~13_combout\ : std_logic;
SIGNAL \Mux69~1_combout\ : std_logic;
SIGNAL \Mux69~2_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux92~13_combout\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \Mux69~5_combout\ : std_logic;
SIGNAL \Mux69~4_combout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux68~2_combout\ : std_logic;
SIGNAL \Mux68~3_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux68~1_combout\ : std_logic;
SIGNAL \Mux68~4_combout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux71~4_combout\ : std_logic;
SIGNAL \Mux71~2_combout\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \Mux34~13_combout\ : std_logic;
SIGNAL \Mux71~1_combout\ : std_logic;
SIGNAL \Mux71~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Mux143~3_combout\ : std_logic;
SIGNAL \Mux92~26_combout\ : std_logic;
SIGNAL \Mux92~24_combout\ : std_logic;
SIGNAL \Mux92~27_combout\ : std_logic;
SIGNAL \Mux92~28_combout\ : std_logic;
SIGNAL \Mux92~22_combout\ : std_logic;
SIGNAL \Mux92~29_combout\ : std_logic;
SIGNAL \Mux88~0_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux143~5_combout\ : std_logic;
SIGNAL \Mux143~0_combout\ : std_logic;
SIGNAL \Mux138~36_combout\ : std_logic;
SIGNAL \Mux138~32_combout\ : std_logic;
SIGNAL \Mux138~37_combout\ : std_logic;
SIGNAL \Mux138~34_combout\ : std_logic;
SIGNAL \Mux138~38_combout\ : std_logic;
SIGNAL \Mux138~39_combout\ : std_logic;
SIGNAL \Mux143~1_combout\ : std_logic;
SIGNAL \Mux143~2_combout\ : std_logic;
SIGNAL \Mux143~4_combout\ : std_logic;
SIGNAL \Mux138~33_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux65~1_combout\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux92~25_combout\ : std_logic;
SIGNAL \Mux65~2_combout\ : std_logic;
SIGNAL \Mux65~3_combout\ : std_logic;
SIGNAL \Mux65~4_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Mux144~1_combout\ : std_logic;
SIGNAL \Mux144~2_combout\ : std_logic;
SIGNAL \Mux92~30_combout\ : std_logic;
SIGNAL \Mux92~31_combout\ : std_logic;
SIGNAL \Mux138~40_combout\ : std_logic;
SIGNAL \Mux138~41_combout\ : std_logic;
SIGNAL \Mux144~0_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux144~7_combout\ : std_logic;
SIGNAL \Mux144~3_combout\ : std_logic;
SIGNAL \Mux138~35_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux92~23_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Mux150~1_combout\ : std_logic;
SIGNAL \Mux138~42_combout\ : std_logic;
SIGNAL \Mux138~43_combout\ : std_logic;
SIGNAL \Mux92~32_combout\ : std_logic;
SIGNAL \Mux92~33_combout\ : std_logic;
SIGNAL \Mux145~4_combout\ : std_logic;
SIGNAL \res~0_combout\ : std_logic;
SIGNAL \Mux150~0_combout\ : std_logic;
SIGNAL \Mux145~0_combout\ : std_logic;
SIGNAL \Mux21~9_combout\ : std_logic;
SIGNAL \Mux145~2_combout\ : std_logic;
SIGNAL \Mux148~0_combout\ : std_logic;
SIGNAL \Mux145~1_combout\ : std_logic;
SIGNAL \Mux145~3_combout\ : std_logic;
SIGNAL \Mux145~5_combout\ : std_logic;
SIGNAL \Mux145~6_combout\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux142~2_combout\ : std_logic;
SIGNAL \Mux142~3_combout\ : std_logic;
SIGNAL \Mux34~17_combout\ : std_logic;
SIGNAL \Mux142~0_combout\ : std_logic;
SIGNAL \Mux142~1_combout\ : std_logic;
SIGNAL \Mux142~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Mux138~46_combout\ : std_logic;
SIGNAL \Mux138~50_combout\ : std_logic;
SIGNAL \Mux138~51_combout\ : std_logic;
SIGNAL \Mux92~42_combout\ : std_logic;
SIGNAL \Mux92~38_combout\ : std_logic;
SIGNAL \Mux92~34_combout\ : std_logic;
SIGNAL \Mux92~43_combout\ : std_logic;
SIGNAL \Mux92~36_combout\ : std_logic;
SIGNAL \Mux92~40_combout\ : std_logic;
SIGNAL \Mux92~41_combout\ : std_logic;
SIGNAL \Mux138~48_combout\ : std_logic;
SIGNAL \Mux138~52_combout\ : std_logic;
SIGNAL \Mux138~44_combout\ : std_logic;
SIGNAL \Mux138~53_combout\ : std_logic;
SIGNAL \Mux150~4_combout\ : std_logic;
SIGNAL \res~5_combout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \Mux150~2_combout\ : std_logic;
SIGNAL \Mux150~3_combout\ : std_logic;
SIGNAL \Mux150~5_combout\ : std_logic;
SIGNAL \Mux150~6_combout\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Mux146~1_combout\ : std_logic;
SIGNAL \Mux146~0_combout\ : std_logic;
SIGNAL \Mux146~2_combout\ : std_logic;
SIGNAL \res~1_combout\ : std_logic;
SIGNAL \Mux138~45_combout\ : std_logic;
SIGNAL \Mux92~35_combout\ : std_logic;
SIGNAL \Mux146~3_combout\ : std_logic;
SIGNAL \Mux146~4_combout\ : std_logic;
SIGNAL \Mux146~5_combout\ : std_logic;
SIGNAL \Mux21~11_combout\ : std_logic;
SIGNAL \Mux149~0_combout\ : std_logic;
SIGNAL \Mux149~1_combout\ : std_logic;
SIGNAL \res~4_combout\ : std_logic;
SIGNAL \Mux92~39_combout\ : std_logic;
SIGNAL \Mux138~49_combout\ : std_logic;
SIGNAL \Mux149~2_combout\ : std_logic;
SIGNAL \Mux149~3_combout\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Mux149~4_combout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Mux151~1_combout\ : std_logic;
SIGNAL \Mux151~2_combout\ : std_logic;
SIGNAL \Mux138~54_combout\ : std_logic;
SIGNAL \Mux138~55_combout\ : std_logic;
SIGNAL \Mux92~44_combout\ : std_logic;
SIGNAL \Mux92~45_combout\ : std_logic;
SIGNAL \Mux151~0_combout\ : std_logic;
SIGNAL \Mux21~10_combout\ : std_logic;
SIGNAL \Mux21~12_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux151~3_combout\ : std_logic;
SIGNAL \Mux151~4_combout\ : std_logic;
SIGNAL \Mux138~47_combout\ : std_logic;
SIGNAL \Mux92~37_combout\ : std_logic;
SIGNAL \Mux148~3_combout\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \Mux148~1_combout\ : std_logic;
SIGNAL \Mux148~2_combout\ : std_logic;
SIGNAL \res~3_combout\ : std_logic;
SIGNAL \Mux148~4_combout\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Mux148~5_combout\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Mux147~3_combout\ : std_logic;
SIGNAL \res~2_combout\ : std_logic;
SIGNAL \Mux147~1_combout\ : std_logic;
SIGNAL \Mux147~0_combout\ : std_logic;
SIGNAL \Mux147~2_combout\ : std_logic;
SIGNAL \Mux147~4_combout\ : std_logic;
SIGNAL \Mux147~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Mux2~16_combout\ : std_logic;
SIGNAL \Mux2~14_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux156~4_combout\ : std_logic;
SIGNAL \Mux138~61_combout\ : std_logic;
SIGNAL \Mux113~0_combout\ : std_logic;
SIGNAL \Mux156~0_combout\ : std_logic;
SIGNAL \Mux92~54_combout\ : std_logic;
SIGNAL \Mux92~50_combout\ : std_logic;
SIGNAL \Mux92~46_combout\ : std_logic;
SIGNAL \Mux92~55_combout\ : std_logic;
SIGNAL \Mux92~52_combout\ : std_logic;
SIGNAL \Mux92~48_combout\ : std_logic;
SIGNAL \Mux92~53_combout\ : std_logic;
SIGNAL \Mux156~1_combout\ : std_logic;
SIGNAL \Mux156~3_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Mux156~2_combout\ : std_logic;
SIGNAL \Mux156~5_combout\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Mux152~1_combout\ : std_logic;
SIGNAL \Mux152~2_combout\ : std_logic;
SIGNAL \Mux92~47_combout\ : std_logic;
SIGNAL \Mux138~56_combout\ : std_logic;
SIGNAL \Mux138~57_combout\ : std_logic;
SIGNAL \Mux152~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux152~3_combout\ : std_logic;
SIGNAL \Mux152~4_combout\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Mux2~15_combout\ : std_logic;
SIGNAL \Mux154~0_combout\ : std_logic;
SIGNAL \Mux154~1_combout\ : std_logic;
SIGNAL \Mux92~49_combout\ : std_logic;
SIGNAL \Mux138~59_combout\ : std_logic;
SIGNAL \Mux138~58_combout\ : std_logic;
SIGNAL \Mux92~51_combout\ : std_logic;
SIGNAL \Mux154~2_combout\ : std_logic;
SIGNAL \res~7_combout\ : std_logic;
SIGNAL \Mux154~3_combout\ : std_logic;
SIGNAL \Mux154~4_combout\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Mux21~13_combout\ : std_logic;
SIGNAL \Mux153~0_combout\ : std_logic;
SIGNAL \Mux153~1_combout\ : std_logic;
SIGNAL \res~6_combout\ : std_logic;
SIGNAL \Mux153~2_combout\ : std_logic;
SIGNAL \Mux153~3_combout\ : std_logic;
SIGNAL \Mux153~4_combout\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Mux138~60_combout\ : std_logic;
SIGNAL \Mux155~2_combout\ : std_logic;
SIGNAL \Mux21~14_combout\ : std_logic;
SIGNAL \Mux155~0_combout\ : std_logic;
SIGNAL \Mux155~1_combout\ : std_logic;
SIGNAL \res~8_combout\ : std_logic;
SIGNAL \Mux155~3_combout\ : std_logic;
SIGNAL \Mux155~4_combout\ : std_logic;
SIGNAL \Mux157~0_combout\ : std_logic;
SIGNAL \Mux157~1_combout\ : std_logic;
SIGNAL \Mux92~56_combout\ : std_logic;
SIGNAL \Mux92~57_combout\ : std_logic;
SIGNAL \Mux157~2_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Mux157~3_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux21~15_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux157~5_combout\ : std_logic;
SIGNAL \Mux157~4_combout\ : std_logic;
SIGNAL \Mux157~6_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Mux158~3_combout\ : std_logic;
SIGNAL \Mux158~0_combout\ : std_logic;
SIGNAL \Mux92~58_combout\ : std_logic;
SIGNAL \Mux92~59_combout\ : std_logic;
SIGNAL \Mux158~1_combout\ : std_logic;
SIGNAL \Mux2~17_combout\ : std_logic;
SIGNAL \Mux2~18_combout\ : std_logic;
SIGNAL \Mux2~19_combout\ : std_logic;
SIGNAL \Mux158~5_combout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Mux158~2_combout\ : std_logic;
SIGNAL \Mux158~4_combout\ : std_logic;
SIGNAL \Mux21~16_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux159~4_combout\ : std_logic;
SIGNAL \Mux159~0_combout\ : std_logic;
SIGNAL \Mux92~60_combout\ : std_logic;
SIGNAL \Mux92~61_combout\ : std_logic;
SIGNAL \Mux159~1_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Mux159~2_combout\ : std_logic;
SIGNAL \Mux159~3_combout\ : std_logic;
SIGNAL \Mux159~5_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL res : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_inputA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_aluControl[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_aluControl[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_aluControl[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_aluControl[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[11]~input_o\ : std_logic;
SIGNAL ALT_INV_res : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Mux159~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux159~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux159~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux159~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux159~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux159~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~61_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~60_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~59_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~58_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~57_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~56_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~61_combout\ : std_logic;
SIGNAL \ALT_INV_Mux113~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~55_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~54_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~3_combout\ : std_logic;
SIGNAL \ALT_INV_res~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~60_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~53_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~52_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~3_combout\ : std_logic;
SIGNAL \ALT_INV_res~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~59_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~51_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~50_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~3_combout\ : std_logic;
SIGNAL \ALT_INV_res~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~58_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~48_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~47_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~46_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~57_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~56_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~45_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~44_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~55_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~54_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~5_combout\ : std_logic;
SIGNAL \ALT_INV_res~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~53_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~52_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~43_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~51_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~50_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~41_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~11_combout\ : std_logic;
SIGNAL \ALT_INV_res~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~48_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~39_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~38_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~12_combout\ : std_logic;
SIGNAL \ALT_INV_res~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~47_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~46_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~10_combout\ : std_logic;
SIGNAL \ALT_INV_res~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~45_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~44_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~35_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~34_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~0_combout\ : std_logic;
SIGNAL \ALT_INV_res~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~43_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~0_combout\ : std_logic;
SIGNAL \ALT_INV_res~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~41_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux88~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~39_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~38_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~35_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~34_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux109~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux109~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux109~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux109~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux109~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux109~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~36_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~35_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~34_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~33_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~32_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~31_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~30_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~29_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~27_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux109~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux109~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux103~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux108~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux108~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux102~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux102~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux108~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux108~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux63~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux63~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux108~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux107~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux107~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux101~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux103~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux107~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux107~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux107~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux106~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux106~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux100~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux106~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux106~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux106~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux105~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux105~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux105~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux105~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux105~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux105~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux71~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux71~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux71~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux71~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux70~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux70~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux70~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux70~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux69~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux69~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux70~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux95~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux69~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux69~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux69~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux68~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux68~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux68~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux68~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux63~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux68~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux67~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux67~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux67~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux67~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux67~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux160~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux66~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux66~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux66~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux66~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux66~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux66~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux69~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux70~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux71~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux106~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux107~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux108~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux109~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux109~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~5_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_aluControl <= aluControl;
ww_inputA <= inputA;
ww_inputB <= inputB;
ww_shamt <= shamt;
zero <= ww_zero;
aluResult <= ww_aluResult;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inputA[29]~input_o\ <= NOT \inputA[29]~input_o\;
\ALT_INV_inputA[31]~input_o\ <= NOT \inputA[31]~input_o\;
\ALT_INV_inputA[30]~input_o\ <= NOT \inputA[30]~input_o\;
\ALT_INV_inputA[22]~input_o\ <= NOT \inputA[22]~input_o\;
\ALT_INV_inputA[23]~input_o\ <= NOT \inputA[23]~input_o\;
\ALT_INV_inputA[24]~input_o\ <= NOT \inputA[24]~input_o\;
\ALT_INV_inputA[26]~input_o\ <= NOT \inputA[26]~input_o\;
\ALT_INV_inputA[27]~input_o\ <= NOT \inputA[27]~input_o\;
\ALT_INV_inputA[28]~input_o\ <= NOT \inputA[28]~input_o\;
\ALT_INV_inputA[25]~input_o\ <= NOT \inputA[25]~input_o\;
\ALT_INV_inputA[15]~input_o\ <= NOT \inputA[15]~input_o\;
\ALT_INV_inputA[16]~input_o\ <= NOT \inputA[16]~input_o\;
\ALT_INV_inputA[17]~input_o\ <= NOT \inputA[17]~input_o\;
\ALT_INV_inputA[19]~input_o\ <= NOT \inputA[19]~input_o\;
\ALT_INV_inputA[20]~input_o\ <= NOT \inputA[20]~input_o\;
\ALT_INV_inputA[21]~input_o\ <= NOT \inputA[21]~input_o\;
\ALT_INV_inputA[18]~input_o\ <= NOT \inputA[18]~input_o\;
\ALT_INV_inputA[12]~input_o\ <= NOT \inputA[12]~input_o\;
\ALT_INV_inputA[13]~input_o\ <= NOT \inputA[13]~input_o\;
\ALT_INV_inputA[14]~input_o\ <= NOT \inputA[14]~input_o\;
\ALT_INV_inputA[5]~input_o\ <= NOT \inputA[5]~input_o\;
\ALT_INV_inputA[6]~input_o\ <= NOT \inputA[6]~input_o\;
\ALT_INV_inputA[7]~input_o\ <= NOT \inputA[7]~input_o\;
\ALT_INV_inputA[8]~input_o\ <= NOT \inputA[8]~input_o\;
\ALT_INV_inputA[9]~input_o\ <= NOT \inputA[9]~input_o\;
\ALT_INV_inputA[10]~input_o\ <= NOT \inputA[10]~input_o\;
\ALT_INV_inputB[4]~input_o\ <= NOT \inputB[4]~input_o\;
\ALT_INV_inputB[5]~input_o\ <= NOT \inputB[5]~input_o\;
\ALT_INV_inputB[6]~input_o\ <= NOT \inputB[6]~input_o\;
\ALT_INV_inputB[7]~input_o\ <= NOT \inputB[7]~input_o\;
\ALT_INV_inputB[8]~input_o\ <= NOT \inputB[8]~input_o\;
\ALT_INV_inputB[9]~input_o\ <= NOT \inputB[9]~input_o\;
\ALT_INV_inputB[10]~input_o\ <= NOT \inputB[10]~input_o\;
\ALT_INV_inputB[0]~input_o\ <= NOT \inputB[0]~input_o\;
\ALT_INV_inputB[1]~input_o\ <= NOT \inputB[1]~input_o\;
\ALT_INV_inputB[2]~input_o\ <= NOT \inputB[2]~input_o\;
\ALT_INV_inputB[3]~input_o\ <= NOT \inputB[3]~input_o\;
\ALT_INV_inputA[11]~input_o\ <= NOT \inputA[11]~input_o\;
\ALT_INV_aluControl[3]~input_o\ <= NOT \aluControl[3]~input_o\;
\ALT_INV_aluControl[2]~input_o\ <= NOT \aluControl[2]~input_o\;
\ALT_INV_aluControl[0]~input_o\ <= NOT \aluControl[0]~input_o\;
\ALT_INV_shamt[4]~input_o\ <= NOT \shamt[4]~input_o\;
\ALT_INV_inputA[0]~input_o\ <= NOT \inputA[0]~input_o\;
\ALT_INV_aluControl[1]~input_o\ <= NOT \aluControl[1]~input_o\;
\ALT_INV_inputA[1]~input_o\ <= NOT \inputA[1]~input_o\;
\ALT_INV_inputA[2]~input_o\ <= NOT \inputA[2]~input_o\;
\ALT_INV_inputA[3]~input_o\ <= NOT \inputA[3]~input_o\;
\ALT_INV_inputA[4]~input_o\ <= NOT \inputA[4]~input_o\;
\ALT_INV_inputB[30]~input_o\ <= NOT \inputB[30]~input_o\;
\ALT_INV_inputB[29]~input_o\ <= NOT \inputB[29]~input_o\;
\ALT_INV_inputB[28]~input_o\ <= NOT \inputB[28]~input_o\;
\ALT_INV_inputB[27]~input_o\ <= NOT \inputB[27]~input_o\;
\ALT_INV_inputB[31]~input_o\ <= NOT \inputB[31]~input_o\;
\ALT_INV_shamt[3]~input_o\ <= NOT \shamt[3]~input_o\;
\ALT_INV_shamt[2]~input_o\ <= NOT \shamt[2]~input_o\;
\ALT_INV_inputB[26]~input_o\ <= NOT \inputB[26]~input_o\;
\ALT_INV_inputB[25]~input_o\ <= NOT \inputB[25]~input_o\;
\ALT_INV_inputB[24]~input_o\ <= NOT \inputB[24]~input_o\;
\ALT_INV_inputB[23]~input_o\ <= NOT \inputB[23]~input_o\;
\ALT_INV_inputB[22]~input_o\ <= NOT \inputB[22]~input_o\;
\ALT_INV_inputB[21]~input_o\ <= NOT \inputB[21]~input_o\;
\ALT_INV_inputB[20]~input_o\ <= NOT \inputB[20]~input_o\;
\ALT_INV_inputB[19]~input_o\ <= NOT \inputB[19]~input_o\;
\ALT_INV_inputB[18]~input_o\ <= NOT \inputB[18]~input_o\;
\ALT_INV_inputB[17]~input_o\ <= NOT \inputB[17]~input_o\;
\ALT_INV_inputB[16]~input_o\ <= NOT \inputB[16]~input_o\;
\ALT_INV_inputB[15]~input_o\ <= NOT \inputB[15]~input_o\;
\ALT_INV_shamt[1]~input_o\ <= NOT \shamt[1]~input_o\;
\ALT_INV_shamt[0]~input_o\ <= NOT \shamt[0]~input_o\;
\ALT_INV_inputB[14]~input_o\ <= NOT \inputB[14]~input_o\;
\ALT_INV_inputB[13]~input_o\ <= NOT \inputB[13]~input_o\;
\ALT_INV_inputB[12]~input_o\ <= NOT \inputB[12]~input_o\;
\ALT_INV_inputB[11]~input_o\ <= NOT \inputB[11]~input_o\;
ALT_INV_res(31) <= NOT res(31);
ALT_INV_res(30) <= NOT res(30);
ALT_INV_res(29) <= NOT res(29);
ALT_INV_res(28) <= NOT res(28);
ALT_INV_res(27) <= NOT res(27);
ALT_INV_res(26) <= NOT res(26);
ALT_INV_res(25) <= NOT res(25);
ALT_INV_res(24) <= NOT res(24);
ALT_INV_res(23) <= NOT res(23);
ALT_INV_res(22) <= NOT res(22);
ALT_INV_res(21) <= NOT res(21);
ALT_INV_res(20) <= NOT res(20);
ALT_INV_res(19) <= NOT res(19);
ALT_INV_res(18) <= NOT res(18);
ALT_INV_res(17) <= NOT res(17);
ALT_INV_res(16) <= NOT res(16);
ALT_INV_res(15) <= NOT res(15);
ALT_INV_res(14) <= NOT res(14);
ALT_INV_res(12) <= NOT res(12);
ALT_INV_res(13) <= NOT res(13);
ALT_INV_res(0) <= NOT res(0);
ALT_INV_res(1) <= NOT res(1);
ALT_INV_res(2) <= NOT res(2);
ALT_INV_res(3) <= NOT res(3);
ALT_INV_res(4) <= NOT res(4);
ALT_INV_res(5) <= NOT res(5);
ALT_INV_res(6) <= NOT res(6);
ALT_INV_res(7) <= NOT res(7);
ALT_INV_res(8) <= NOT res(8);
ALT_INV_res(9) <= NOT res(9);
ALT_INV_res(10) <= NOT res(10);
ALT_INV_res(11) <= NOT res(11);
\ALT_INV_Mux159~5_combout\ <= NOT \Mux159~5_combout\;
\ALT_INV_Mux159~4_combout\ <= NOT \Mux159~4_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux21~16_combout\ <= NOT \Mux21~16_combout\;
\ALT_INV_Mux159~3_combout\ <= NOT \Mux159~3_combout\;
\ALT_INV_Mux159~2_combout\ <= NOT \Mux159~2_combout\;
\ALT_INV_Mux159~1_combout\ <= NOT \Mux159~1_combout\;
\ALT_INV_Mux159~0_combout\ <= NOT \Mux159~0_combout\;
\ALT_INV_Mux92~61_combout\ <= NOT \Mux92~61_combout\;
\ALT_INV_Mux92~60_combout\ <= NOT \Mux92~60_combout\;
\ALT_INV_Mux158~4_combout\ <= NOT \Mux158~4_combout\;
\ALT_INV_Mux2~19_combout\ <= NOT \Mux2~19_combout\;
\ALT_INV_Mux2~18_combout\ <= NOT \Mux2~18_combout\;
\ALT_INV_Mux2~17_combout\ <= NOT \Mux2~17_combout\;
\ALT_INV_Mux158~3_combout\ <= NOT \Mux158~3_combout\;
\ALT_INV_Mux158~2_combout\ <= NOT \Mux158~2_combout\;
\ALT_INV_Mux158~1_combout\ <= NOT \Mux158~1_combout\;
\ALT_INV_Mux158~0_combout\ <= NOT \Mux158~0_combout\;
\ALT_INV_Mux92~59_combout\ <= NOT \Mux92~59_combout\;
\ALT_INV_Mux92~58_combout\ <= NOT \Mux92~58_combout\;
\ALT_INV_Mux157~6_combout\ <= NOT \Mux157~6_combout\;
\ALT_INV_Mux157~5_combout\ <= NOT \Mux157~5_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux21~15_combout\ <= NOT \Mux21~15_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_Mux157~4_combout\ <= NOT \Mux157~4_combout\;
\ALT_INV_Mux157~3_combout\ <= NOT \Mux157~3_combout\;
\ALT_INV_Mux157~2_combout\ <= NOT \Mux157~2_combout\;
\ALT_INV_Mux157~1_combout\ <= NOT \Mux157~1_combout\;
\ALT_INV_Mux157~0_combout\ <= NOT \Mux157~0_combout\;
\ALT_INV_Mux92~57_combout\ <= NOT \Mux92~57_combout\;
\ALT_INV_Mux92~56_combout\ <= NOT \Mux92~56_combout\;
\ALT_INV_Mux156~5_combout\ <= NOT \Mux156~5_combout\;
\ALT_INV_Mux156~4_combout\ <= NOT \Mux156~4_combout\;
\ALT_INV_Mux4~3_combout\ <= NOT \Mux4~3_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux2~16_combout\ <= NOT \Mux2~16_combout\;
\ALT_INV_Mux36~2_combout\ <= NOT \Mux36~2_combout\;
\ALT_INV_Mux156~3_combout\ <= NOT \Mux156~3_combout\;
\ALT_INV_Mux156~2_combout\ <= NOT \Mux156~2_combout\;
\ALT_INV_Mux156~1_combout\ <= NOT \Mux156~1_combout\;
\ALT_INV_Mux156~0_combout\ <= NOT \Mux156~0_combout\;
\ALT_INV_Mux138~61_combout\ <= NOT \Mux138~61_combout\;
\ALT_INV_Mux113~0_combout\ <= NOT \Mux113~0_combout\;
\ALT_INV_Mux92~55_combout\ <= NOT \Mux92~55_combout\;
\ALT_INV_Mux92~54_combout\ <= NOT \Mux92~54_combout\;
\ALT_INV_Mux155~3_combout\ <= NOT \Mux155~3_combout\;
\ALT_INV_res~8_combout\ <= NOT \res~8_combout\;
\ALT_INV_Mux155~2_combout\ <= NOT \Mux155~2_combout\;
\ALT_INV_Mux138~60_combout\ <= NOT \Mux138~60_combout\;
\ALT_INV_Mux92~53_combout\ <= NOT \Mux92~53_combout\;
\ALT_INV_Mux92~52_combout\ <= NOT \Mux92~52_combout\;
\ALT_INV_Mux155~1_combout\ <= NOT \Mux155~1_combout\;
\ALT_INV_Mux155~0_combout\ <= NOT \Mux155~0_combout\;
\ALT_INV_Mux21~14_combout\ <= NOT \Mux21~14_combout\;
\ALT_INV_Mux154~3_combout\ <= NOT \Mux154~3_combout\;
\ALT_INV_res~7_combout\ <= NOT \res~7_combout\;
\ALT_INV_Mux154~2_combout\ <= NOT \Mux154~2_combout\;
\ALT_INV_Mux138~59_combout\ <= NOT \Mux138~59_combout\;
\ALT_INV_Mux92~51_combout\ <= NOT \Mux92~51_combout\;
\ALT_INV_Mux92~50_combout\ <= NOT \Mux92~50_combout\;
\ALT_INV_Mux154~1_combout\ <= NOT \Mux154~1_combout\;
\ALT_INV_Mux154~0_combout\ <= NOT \Mux154~0_combout\;
\ALT_INV_Mux2~15_combout\ <= NOT \Mux2~15_combout\;
\ALT_INV_Mux153~3_combout\ <= NOT \Mux153~3_combout\;
\ALT_INV_res~6_combout\ <= NOT \res~6_combout\;
\ALT_INV_Mux153~2_combout\ <= NOT \Mux153~2_combout\;
\ALT_INV_Mux138~58_combout\ <= NOT \Mux138~58_combout\;
\ALT_INV_Mux92~49_combout\ <= NOT \Mux92~49_combout\;
\ALT_INV_Mux92~48_combout\ <= NOT \Mux92~48_combout\;
\ALT_INV_Mux153~1_combout\ <= NOT \Mux153~1_combout\;
\ALT_INV_Mux153~0_combout\ <= NOT \Mux153~0_combout\;
\ALT_INV_Mux21~13_combout\ <= NOT \Mux21~13_combout\;
\ALT_INV_Mux152~3_combout\ <= NOT \Mux152~3_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux2~14_combout\ <= NOT \Mux2~14_combout\;
\ALT_INV_Mux40~3_combout\ <= NOT \Mux40~3_combout\;
\ALT_INV_Mux152~2_combout\ <= NOT \Mux152~2_combout\;
\ALT_INV_Mux152~1_combout\ <= NOT \Mux152~1_combout\;
\ALT_INV_Mux152~0_combout\ <= NOT \Mux152~0_combout\;
\ALT_INV_Mux92~47_combout\ <= NOT \Mux92~47_combout\;
\ALT_INV_Mux92~46_combout\ <= NOT \Mux92~46_combout\;
\ALT_INV_Mux138~57_combout\ <= NOT \Mux138~57_combout\;
\ALT_INV_Mux138~56_combout\ <= NOT \Mux138~56_combout\;
\ALT_INV_Mux151~3_combout\ <= NOT \Mux151~3_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux21~12_combout\ <= NOT \Mux21~12_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\ALT_INV_Mux151~2_combout\ <= NOT \Mux151~2_combout\;
\ALT_INV_Mux151~1_combout\ <= NOT \Mux151~1_combout\;
\ALT_INV_Mux151~0_combout\ <= NOT \Mux151~0_combout\;
\ALT_INV_Mux92~45_combout\ <= NOT \Mux92~45_combout\;
\ALT_INV_Mux92~44_combout\ <= NOT \Mux92~44_combout\;
\ALT_INV_Mux138~55_combout\ <= NOT \Mux138~55_combout\;
\ALT_INV_Mux138~54_combout\ <= NOT \Mux138~54_combout\;
\ALT_INV_Mux150~5_combout\ <= NOT \Mux150~5_combout\;
\ALT_INV_res~5_combout\ <= NOT \res~5_combout\;
\ALT_INV_Mux150~4_combout\ <= NOT \Mux150~4_combout\;
\ALT_INV_Mux138~53_combout\ <= NOT \Mux138~53_combout\;
\ALT_INV_Mux138~52_combout\ <= NOT \Mux138~52_combout\;
\ALT_INV_Mux92~43_combout\ <= NOT \Mux92~43_combout\;
\ALT_INV_Mux92~42_combout\ <= NOT \Mux92~42_combout\;
\ALT_INV_Mux150~3_combout\ <= NOT \Mux150~3_combout\;
\ALT_INV_Mux150~2_combout\ <= NOT \Mux150~2_combout\;
\ALT_INV_Mux2~13_combout\ <= NOT \Mux2~13_combout\;
\ALT_INV_Mux149~3_combout\ <= NOT \Mux149~3_combout\;
\ALT_INV_Mux149~2_combout\ <= NOT \Mux149~2_combout\;
\ALT_INV_Mux138~51_combout\ <= NOT \Mux138~51_combout\;
\ALT_INV_Mux138~50_combout\ <= NOT \Mux138~50_combout\;
\ALT_INV_Mux92~41_combout\ <= NOT \Mux92~41_combout\;
\ALT_INV_Mux92~40_combout\ <= NOT \Mux92~40_combout\;
\ALT_INV_Mux149~1_combout\ <= NOT \Mux149~1_combout\;
\ALT_INV_Mux149~0_combout\ <= NOT \Mux149~0_combout\;
\ALT_INV_Mux21~11_combout\ <= NOT \Mux21~11_combout\;
\ALT_INV_res~4_combout\ <= NOT \res~4_combout\;
\ALT_INV_Mux148~4_combout\ <= NOT \Mux148~4_combout\;
\ALT_INV_Mux148~3_combout\ <= NOT \Mux148~3_combout\;
\ALT_INV_Mux138~49_combout\ <= NOT \Mux138~49_combout\;
\ALT_INV_Mux138~48_combout\ <= NOT \Mux138~48_combout\;
\ALT_INV_Mux92~39_combout\ <= NOT \Mux92~39_combout\;
\ALT_INV_Mux92~38_combout\ <= NOT \Mux92~38_combout\;
\ALT_INV_Mux148~2_combout\ <= NOT \Mux148~2_combout\;
\ALT_INV_Mux148~1_combout\ <= NOT \Mux148~1_combout\;
\ALT_INV_Mux2~12_combout\ <= NOT \Mux2~12_combout\;
\ALT_INV_res~3_combout\ <= NOT \res~3_combout\;
\ALT_INV_Mux147~4_combout\ <= NOT \Mux147~4_combout\;
\ALT_INV_Mux147~3_combout\ <= NOT \Mux147~3_combout\;
\ALT_INV_Mux138~47_combout\ <= NOT \Mux138~47_combout\;
\ALT_INV_Mux138~46_combout\ <= NOT \Mux138~46_combout\;
\ALT_INV_Mux92~37_combout\ <= NOT \Mux92~37_combout\;
\ALT_INV_Mux92~36_combout\ <= NOT \Mux92~36_combout\;
\ALT_INV_Mux147~2_combout\ <= NOT \Mux147~2_combout\;
\ALT_INV_Mux147~1_combout\ <= NOT \Mux147~1_combout\;
\ALT_INV_Mux147~0_combout\ <= NOT \Mux147~0_combout\;
\ALT_INV_Mux21~10_combout\ <= NOT \Mux21~10_combout\;
\ALT_INV_res~2_combout\ <= NOT \res~2_combout\;
\ALT_INV_Mux146~4_combout\ <= NOT \Mux146~4_combout\;
\ALT_INV_Mux146~3_combout\ <= NOT \Mux146~3_combout\;
\ALT_INV_Mux138~45_combout\ <= NOT \Mux138~45_combout\;
\ALT_INV_Mux138~44_combout\ <= NOT \Mux138~44_combout\;
\ALT_INV_Mux92~35_combout\ <= NOT \Mux92~35_combout\;
\ALT_INV_Mux92~34_combout\ <= NOT \Mux92~34_combout\;
\ALT_INV_Mux146~2_combout\ <= NOT \Mux146~2_combout\;
\ALT_INV_Mux146~1_combout\ <= NOT \Mux146~1_combout\;
\ALT_INV_Mux2~11_combout\ <= NOT \Mux2~11_combout\;
\ALT_INV_Mux146~0_combout\ <= NOT \Mux146~0_combout\;
\ALT_INV_res~1_combout\ <= NOT \res~1_combout\;
\ALT_INV_Mux145~5_combout\ <= NOT \Mux145~5_combout\;
\ALT_INV_Mux150~1_combout\ <= NOT \Mux150~1_combout\;
\ALT_INV_Mux145~4_combout\ <= NOT \Mux145~4_combout\;
\ALT_INV_Mux138~43_combout\ <= NOT \Mux138~43_combout\;
\ALT_INV_Mux138~42_combout\ <= NOT \Mux138~42_combout\;
\ALT_INV_Mux92~33_combout\ <= NOT \Mux92~33_combout\;
\ALT_INV_Mux92~32_combout\ <= NOT \Mux92~32_combout\;
\ALT_INV_Mux145~3_combout\ <= NOT \Mux145~3_combout\;
\ALT_INV_Mux145~2_combout\ <= NOT \Mux145~2_combout\;
\ALT_INV_Mux21~9_combout\ <= NOT \Mux21~9_combout\;
\ALT_INV_Mux145~1_combout\ <= NOT \Mux145~1_combout\;
\ALT_INV_Mux148~0_combout\ <= NOT \Mux148~0_combout\;
\ALT_INV_Mux145~0_combout\ <= NOT \Mux145~0_combout\;
\ALT_INV_Mux150~0_combout\ <= NOT \Mux150~0_combout\;
\ALT_INV_res~0_combout\ <= NOT \res~0_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux2~10_combout\ <= NOT \Mux2~10_combout\;
\ALT_INV_Mux144~2_combout\ <= NOT \Mux144~2_combout\;
\ALT_INV_Mux144~1_combout\ <= NOT \Mux144~1_combout\;
\ALT_INV_Mux144~0_combout\ <= NOT \Mux144~0_combout\;
\ALT_INV_Mux92~31_combout\ <= NOT \Mux92~31_combout\;
\ALT_INV_Mux92~30_combout\ <= NOT \Mux92~30_combout\;
\ALT_INV_Mux138~41_combout\ <= NOT \Mux138~41_combout\;
\ALT_INV_Mux138~40_combout\ <= NOT \Mux138~40_combout\;
\ALT_INV_Mux143~4_combout\ <= NOT \Mux143~4_combout\;
\ALT_INV_Mux143~3_combout\ <= NOT \Mux143~3_combout\;
\ALT_INV_Mux88~0_combout\ <= NOT \Mux88~0_combout\;
\ALT_INV_Mux92~29_combout\ <= NOT \Mux92~29_combout\;
\ALT_INV_Mux92~28_combout\ <= NOT \Mux92~28_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux21~8_combout\ <= NOT \Mux21~8_combout\;
\ALT_INV_Mux143~2_combout\ <= NOT \Mux143~2_combout\;
\ALT_INV_Mux143~1_combout\ <= NOT \Mux143~1_combout\;
\ALT_INV_Mux138~39_combout\ <= NOT \Mux138~39_combout\;
\ALT_INV_Mux138~38_combout\ <= NOT \Mux138~38_combout\;
\ALT_INV_Mux143~0_combout\ <= NOT \Mux143~0_combout\;
\ALT_INV_Mux142~4_combout\ <= NOT \Mux142~4_combout\;
\ALT_INV_Mux142~3_combout\ <= NOT \Mux142~3_combout\;
\ALT_INV_Mux142~2_combout\ <= NOT \Mux142~2_combout\;
\ALT_INV_Mux92~27_combout\ <= NOT \Mux92~27_combout\;
\ALT_INV_Mux92~26_combout\ <= NOT \Mux92~26_combout\;
\ALT_INV_Mux2~9_combout\ <= NOT \Mux2~9_combout\;
\ALT_INV_Mux2~8_combout\ <= NOT \Mux2~8_combout\;
\ALT_INV_Mux142~1_combout\ <= NOT \Mux142~1_combout\;
\ALT_INV_Mux138~37_combout\ <= NOT \Mux138~37_combout\;
\ALT_INV_Mux138~36_combout\ <= NOT \Mux138~36_combout\;
\ALT_INV_Mux34~17_combout\ <= NOT \Mux34~17_combout\;
\ALT_INV_Mux142~0_combout\ <= NOT \Mux142~0_combout\;
\ALT_INV_Mux65~4_combout\ <= NOT \Mux65~4_combout\;
\ALT_INV_Mux65~3_combout\ <= NOT \Mux65~3_combout\;
\ALT_INV_Mux65~2_combout\ <= NOT \Mux65~2_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux2~7_combout\ <= NOT \Mux2~7_combout\;
\ALT_INV_Mux65~1_combout\ <= NOT \Mux65~1_combout\;
\ALT_INV_Mux36~1_combout\ <= NOT \Mux36~1_combout\;
\ALT_INV_Mux65~0_combout\ <= NOT \Mux65~0_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_Mux92~25_combout\ <= NOT \Mux92~25_combout\;
\ALT_INV_Mux92~24_combout\ <= NOT \Mux92~24_combout\;
\ALT_INV_Mux92~23_combout\ <= NOT \Mux92~23_combout\;
\ALT_INV_Mux92~22_combout\ <= NOT \Mux92~22_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux21~7_combout\ <= NOT \Mux21~7_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux138~35_combout\ <= NOT \Mux138~35_combout\;
\ALT_INV_Mux138~34_combout\ <= NOT \Mux138~34_combout\;
\ALT_INV_Mux138~33_combout\ <= NOT \Mux138~33_combout\;
\ALT_INV_Mux138~32_combout\ <= NOT \Mux138~32_combout\;
\ALT_INV_Mux59~1_combout\ <= NOT \Mux59~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux109~7_combout\ <= NOT \Mux109~7_combout\;
\ALT_INV_Mux109~6_combout\ <= NOT \Mux109~6_combout\;
\ALT_INV_Mux109~5_combout\ <= NOT \Mux109~5_combout\;
\ALT_INV_Mux109~4_combout\ <= NOT \Mux109~4_combout\;
\ALT_INV_Mux109~3_combout\ <= NOT \Mux109~3_combout\;
\ALT_INV_Mux109~2_combout\ <= NOT \Mux109~2_combout\;
\ALT_INV_LessThan0~36_combout\ <= NOT \LessThan0~36_combout\;
\ALT_INV_LessThan0~35_combout\ <= NOT \LessThan0~35_combout\;
\ALT_INV_LessThan0~34_combout\ <= NOT \LessThan0~34_combout\;
\ALT_INV_LessThan0~33_combout\ <= NOT \LessThan0~33_combout\;
\ALT_INV_LessThan0~32_combout\ <= NOT \LessThan0~32_combout\;
\ALT_INV_LessThan0~31_combout\ <= NOT \LessThan0~31_combout\;
\ALT_INV_LessThan0~30_combout\ <= NOT \LessThan0~30_combout\;
\ALT_INV_LessThan0~29_combout\ <= NOT \LessThan0~29_combout\;
\ALT_INV_LessThan0~28_combout\ <= NOT \LessThan0~28_combout\;
\ALT_INV_LessThan0~27_combout\ <= NOT \LessThan0~27_combout\;
\ALT_INV_LessThan0~26_combout\ <= NOT \LessThan0~26_combout\;
\ALT_INV_LessThan0~25_combout\ <= NOT \LessThan0~25_combout\;
\ALT_INV_LessThan0~24_combout\ <= NOT \LessThan0~24_combout\;
\ALT_INV_LessThan0~23_combout\ <= NOT \LessThan0~23_combout\;
\ALT_INV_LessThan0~22_combout\ <= NOT \LessThan0~22_combout\;
\ALT_INV_LessThan0~21_combout\ <= NOT \LessThan0~21_combout\;
\ALT_INV_LessThan0~20_combout\ <= NOT \LessThan0~20_combout\;
\ALT_INV_LessThan0~19_combout\ <= NOT \LessThan0~19_combout\;
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Mux109~1_combout\ <= NOT \Mux109~1_combout\;
\ALT_INV_Mux109~0_combout\ <= NOT \Mux109~0_combout\;
\ALT_INV_Mux40~2_combout\ <= NOT \Mux40~2_combout\;
\ALT_INV_Mux34~16_combout\ <= NOT \Mux34~16_combout\;
\ALT_INV_Mux40~1_combout\ <= NOT \Mux40~1_combout\;
\ALT_INV_Mux138~31_combout\ <= NOT \Mux138~31_combout\;
\ALT_INV_Mux138~30_combout\ <= NOT \Mux138~30_combout\;
\ALT_INV_Mux103~1_combout\ <= NOT \Mux103~1_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Mux108~4_combout\ <= NOT \Mux108~4_combout\;
\ALT_INV_Mux108~3_combout\ <= NOT \Mux108~3_combout\;
\ALT_INV_Mux102~1_combout\ <= NOT \Mux102~1_combout\;
\ALT_INV_Mux102~0_combout\ <= NOT \Mux102~0_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Mux108~2_combout\ <= NOT \Mux108~2_combout\;
\ALT_INV_Mux138~29_combout\ <= NOT \Mux138~29_combout\;
\ALT_INV_Mux138~28_combout\ <= NOT \Mux138~28_combout\;
\ALT_INV_Mux108~1_combout\ <= NOT \Mux108~1_combout\;
\ALT_INV_Mux63~2_combout\ <= NOT \Mux63~2_combout\;
\ALT_INV_Mux61~18_combout\ <= NOT \Mux61~18_combout\;
\ALT_INV_Mux63~1_combout\ <= NOT \Mux63~1_combout\;
\ALT_INV_Mux108~0_combout\ <= NOT \Mux108~0_combout\;
\ALT_INV_Mux107~4_combout\ <= NOT \Mux107~4_combout\;
\ALT_INV_Mux107~3_combout\ <= NOT \Mux107~3_combout\;
\ALT_INV_Mux101~0_combout\ <= NOT \Mux101~0_combout\;
\ALT_INV_Mux103~0_combout\ <= NOT \Mux103~0_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux107~2_combout\ <= NOT \Mux107~2_combout\;
\ALT_INV_Mux138~27_combout\ <= NOT \Mux138~27_combout\;
\ALT_INV_Mux138~26_combout\ <= NOT \Mux138~26_combout\;
\ALT_INV_Mux107~1_combout\ <= NOT \Mux107~1_combout\;
\ALT_INV_Mux38~2_combout\ <= NOT \Mux38~2_combout\;
\ALT_INV_Mux34~15_combout\ <= NOT \Mux34~15_combout\;
\ALT_INV_Mux38~1_combout\ <= NOT \Mux38~1_combout\;
\ALT_INV_Mux107~0_combout\ <= NOT \Mux107~0_combout\;
\ALT_INV_Mux106~4_combout\ <= NOT \Mux106~4_combout\;
\ALT_INV_Mux106~3_combout\ <= NOT \Mux106~3_combout\;
\ALT_INV_Mux100~0_combout\ <= NOT \Mux100~0_combout\;
\ALT_INV_Mux92~21_combout\ <= NOT \Mux92~21_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux106~2_combout\ <= NOT \Mux106~2_combout\;
\ALT_INV_Mux138~25_combout\ <= NOT \Mux138~25_combout\;
\ALT_INV_Mux138~24_combout\ <= NOT \Mux138~24_combout\;
\ALT_INV_Mux106~1_combout\ <= NOT \Mux106~1_combout\;
\ALT_INV_Mux61~17_combout\ <= NOT \Mux61~17_combout\;
\ALT_INV_Mux61~16_combout\ <= NOT \Mux61~16_combout\;
\ALT_INV_Mux61~15_combout\ <= NOT \Mux61~15_combout\;
\ALT_INV_Mux106~0_combout\ <= NOT \Mux106~0_combout\;
\ALT_INV_Mux105~5_combout\ <= NOT \Mux105~5_combout\;
\ALT_INV_Mux105~4_combout\ <= NOT \Mux105~4_combout\;
\ALT_INV_Mux105~3_combout\ <= NOT \Mux105~3_combout\;
\ALT_INV_Mux105~2_combout\ <= NOT \Mux105~2_combout\;
\ALT_INV_Mux92~20_combout\ <= NOT \Mux92~20_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux105~1_combout\ <= NOT \Mux105~1_combout\;
\ALT_INV_Mux138~23_combout\ <= NOT \Mux138~23_combout\;
\ALT_INV_Mux138~22_combout\ <= NOT \Mux138~22_combout\;
\ALT_INV_Mux36~0_combout\ <= NOT \Mux36~0_combout\;
\ALT_INV_Mux105~0_combout\ <= NOT \Mux105~0_combout\;
\ALT_INV_Mux34~14_combout\ <= NOT \Mux34~14_combout\;
\ALT_INV_Mux104~10_combout\ <= NOT \Mux104~10_combout\;
\ALT_INV_Mux104~9_combout\ <= NOT \Mux104~9_combout\;
\ALT_INV_Mux104~8_combout\ <= NOT \Mux104~8_combout\;
\ALT_INV_Mux92~19_combout\ <= NOT \Mux92~19_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux104~7_combout\ <= NOT \Mux104~7_combout\;
\ALT_INV_Mux138~21_combout\ <= NOT \Mux138~21_combout\;
\ALT_INV_Mux138~20_combout\ <= NOT \Mux138~20_combout\;
\ALT_INV_Mux59~0_combout\ <= NOT \Mux59~0_combout\;
\ALT_INV_Mux104~6_combout\ <= NOT \Mux104~6_combout\;
\ALT_INV_Mux61~14_combout\ <= NOT \Mux61~14_combout\;
\ALT_INV_Mux71~3_combout\ <= NOT \Mux71~3_combout\;
\ALT_INV_Mux71~2_combout\ <= NOT \Mux71~2_combout\;
\ALT_INV_Mux92~18_combout\ <= NOT \Mux92~18_combout\;
\ALT_INV_Mux2~6_combout\ <= NOT \Mux2~6_combout\;
\ALT_INV_Mux104~5_combout\ <= NOT \Mux104~5_combout\;
\ALT_INV_Mux104~4_combout\ <= NOT \Mux104~4_combout\;
\ALT_INV_Mux71~1_combout\ <= NOT \Mux71~1_combout\;
\ALT_INV_Mux138~19_combout\ <= NOT \Mux138~19_combout\;
\ALT_INV_Mux138~18_combout\ <= NOT \Mux138~18_combout\;
\ALT_INV_Mux34~13_combout\ <= NOT \Mux34~13_combout\;
\ALT_INV_Mux71~0_combout\ <= NOT \Mux71~0_combout\;
\ALT_INV_Mux34~12_combout\ <= NOT \Mux34~12_combout\;
\ALT_INV_Mux70~4_combout\ <= NOT \Mux70~4_combout\;
\ALT_INV_Mux70~3_combout\ <= NOT \Mux70~3_combout\;
\ALT_INV_Mux96~0_combout\ <= NOT \Mux96~0_combout\;
\ALT_INV_Mux92~17_combout\ <= NOT \Mux92~17_combout\;
\ALT_INV_Mux92~16_combout\ <= NOT \Mux92~16_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux70~2_combout\ <= NOT \Mux70~2_combout\;
\ALT_INV_Mux138~17_combout\ <= NOT \Mux138~17_combout\;
\ALT_INV_Mux138~16_combout\ <= NOT \Mux138~16_combout\;
\ALT_INV_Mux70~1_combout\ <= NOT \Mux70~1_combout\;
\ALT_INV_Mux57~1_combout\ <= NOT \Mux57~1_combout\;
\ALT_INV_Mux61~13_combout\ <= NOT \Mux61~13_combout\;
\ALT_INV_Mux57~0_combout\ <= NOT \Mux57~0_combout\;
\ALT_INV_Mux69~4_combout\ <= NOT \Mux69~4_combout\;
\ALT_INV_Mux69~3_combout\ <= NOT \Mux69~3_combout\;
\ALT_INV_Mux70~0_combout\ <= NOT \Mux70~0_combout\;
\ALT_INV_Mux95~0_combout\ <= NOT \Mux95~0_combout\;
\ALT_INV_Mux92~15_combout\ <= NOT \Mux92~15_combout\;
\ALT_INV_Mux92~14_combout\ <= NOT \Mux92~14_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux2~5_combout\ <= NOT \Mux2~5_combout\;
\ALT_INV_Mux2~4_combout\ <= NOT \Mux2~4_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux69~2_combout\ <= NOT \Mux69~2_combout\;
\ALT_INV_Mux69~1_combout\ <= NOT \Mux69~1_combout\;
\ALT_INV_Mux138~15_combout\ <= NOT \Mux138~15_combout\;
\ALT_INV_Mux138~14_combout\ <= NOT \Mux138~14_combout\;
\ALT_INV_Mux69~0_combout\ <= NOT \Mux69~0_combout\;
\ALT_INV_Mux40~0_combout\ <= NOT \Mux40~0_combout\;
\ALT_INV_Mux34~11_combout\ <= NOT \Mux34~11_combout\;
\ALT_INV_Mux34~10_combout\ <= NOT \Mux34~10_combout\;
\ALT_INV_Mux34~9_combout\ <= NOT \Mux34~9_combout\;
\ALT_INV_Mux34~8_combout\ <= NOT \Mux34~8_combout\;
\ALT_INV_Mux34~7_combout\ <= NOT \Mux34~7_combout\;
\ALT_INV_Mux34~6_combout\ <= NOT \Mux34~6_combout\;
\ALT_INV_Mux68~4_combout\ <= NOT \Mux68~4_combout\;
\ALT_INV_Mux68~3_combout\ <= NOT \Mux68~3_combout\;
\ALT_INV_Mux68~2_combout\ <= NOT \Mux68~2_combout\;
\ALT_INV_Mux92~13_combout\ <= NOT \Mux92~13_combout\;
\ALT_INV_Mux92~12_combout\ <= NOT \Mux92~12_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux21~6_combout\ <= NOT \Mux21~6_combout\;
\ALT_INV_Mux21~5_combout\ <= NOT \Mux21~5_combout\;
\ALT_INV_Mux21~4_combout\ <= NOT \Mux21~4_combout\;
\ALT_INV_Mux68~1_combout\ <= NOT \Mux68~1_combout\;
\ALT_INV_Mux138~13_combout\ <= NOT \Mux138~13_combout\;
\ALT_INV_Mux138~12_combout\ <= NOT \Mux138~12_combout\;
\ALT_INV_Mux63~0_combout\ <= NOT \Mux63~0_combout\;
\ALT_INV_Mux61~12_combout\ <= NOT \Mux61~12_combout\;
\ALT_INV_Mux61~11_combout\ <= NOT \Mux61~11_combout\;
\ALT_INV_Mux68~0_combout\ <= NOT \Mux68~0_combout\;
\ALT_INV_Mux61~10_combout\ <= NOT \Mux61~10_combout\;
\ALT_INV_Mux61~9_combout\ <= NOT \Mux61~9_combout\;
\ALT_INV_Mux61~8_combout\ <= NOT \Mux61~8_combout\;
\ALT_INV_Mux61~7_combout\ <= NOT \Mux61~7_combout\;
\ALT_INV_Mux67~4_combout\ <= NOT \Mux67~4_combout\;
\ALT_INV_Mux67~3_combout\ <= NOT \Mux67~3_combout\;
\ALT_INV_Mux67~2_combout\ <= NOT \Mux67~2_combout\;
\ALT_INV_Mux92~11_combout\ <= NOT \Mux92~11_combout\;
\ALT_INV_Mux92~10_combout\ <= NOT \Mux92~10_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux67~1_combout\ <= NOT \Mux67~1_combout\;
\ALT_INV_Mux138~11_combout\ <= NOT \Mux138~11_combout\;
\ALT_INV_Mux138~10_combout\ <= NOT \Mux138~10_combout\;
\ALT_INV_Mux38~0_combout\ <= NOT \Mux38~0_combout\;
\ALT_INV_Mux34~5_combout\ <= NOT \Mux34~5_combout\;
\ALT_INV_Mux34~4_combout\ <= NOT \Mux34~4_combout\;
\ALT_INV_Mux67~0_combout\ <= NOT \Mux67~0_combout\;
\ALT_INV_Mux34~3_combout\ <= NOT \Mux34~3_combout\;
\ALT_INV_Mux34~2_combout\ <= NOT \Mux34~2_combout\;
\ALT_INV_Mux34~1_combout\ <= NOT \Mux34~1_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux160~0_combout\ <= NOT \Mux160~0_combout\;
\ALT_INV_Mux66~5_combout\ <= NOT \Mux66~5_combout\;
\ALT_INV_Mux66~4_combout\ <= NOT \Mux66~4_combout\;
\ALT_INV_Mux66~3_combout\ <= NOT \Mux66~3_combout\;
\ALT_INV_Mux92~9_combout\ <= NOT \Mux92~9_combout\;
\ALT_INV_Mux92~8_combout\ <= NOT \Mux92~8_combout\;
\ALT_INV_Mux92~7_combout\ <= NOT \Mux92~7_combout\;
\ALT_INV_Mux92~6_combout\ <= NOT \Mux92~6_combout\;
\ALT_INV_Mux92~5_combout\ <= NOT \Mux92~5_combout\;
\ALT_INV_Mux92~4_combout\ <= NOT \Mux92~4_combout\;
\ALT_INV_Mux92~3_combout\ <= NOT \Mux92~3_combout\;
\ALT_INV_Mux92~2_combout\ <= NOT \Mux92~2_combout\;
\ALT_INV_Mux92~1_combout\ <= NOT \Mux92~1_combout\;
\ALT_INV_Mux92~0_combout\ <= NOT \Mux92~0_combout\;
\ALT_INV_Mux21~3_combout\ <= NOT \Mux21~3_combout\;
\ALT_INV_Mux21~2_combout\ <= NOT \Mux21~2_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux66~2_combout\ <= NOT \Mux66~2_combout\;
\ALT_INV_Mux104~3_combout\ <= NOT \Mux104~3_combout\;
\ALT_INV_Mux104~2_combout\ <= NOT \Mux104~2_combout\;
\ALT_INV_Mux104~1_combout\ <= NOT \Mux104~1_combout\;
\ALT_INV_Mux66~1_combout\ <= NOT \Mux66~1_combout\;
\ALT_INV_Mux104~0_combout\ <= NOT \Mux104~0_combout\;
\ALT_INV_Mux138~9_combout\ <= NOT \Mux138~9_combout\;
\ALT_INV_Mux138~8_combout\ <= NOT \Mux138~8_combout\;
\ALT_INV_Mux138~7_combout\ <= NOT \Mux138~7_combout\;
\ALT_INV_Mux138~6_combout\ <= NOT \Mux138~6_combout\;
\ALT_INV_Mux138~5_combout\ <= NOT \Mux138~5_combout\;
\ALT_INV_Mux138~4_combout\ <= NOT \Mux138~4_combout\;
\ALT_INV_Mux138~3_combout\ <= NOT \Mux138~3_combout\;
\ALT_INV_Mux138~2_combout\ <= NOT \Mux138~2_combout\;
\ALT_INV_Mux138~1_combout\ <= NOT \Mux138~1_combout\;
\ALT_INV_Mux138~0_combout\ <= NOT \Mux138~0_combout\;
\ALT_INV_Mux61~6_combout\ <= NOT \Mux61~6_combout\;
\ALT_INV_Mux61~5_combout\ <= NOT \Mux61~5_combout\;
\ALT_INV_Mux61~4_combout\ <= NOT \Mux61~4_combout\;
\ALT_INV_Mux66~0_combout\ <= NOT \Mux66~0_combout\;
\ALT_INV_Mux61~3_combout\ <= NOT \Mux61~3_combout\;
\ALT_INV_Mux61~2_combout\ <= NOT \Mux61~2_combout\;
\ALT_INV_Mux61~1_combout\ <= NOT \Mux61~1_combout\;
\ALT_INV_Mux61~0_combout\ <= NOT \Mux61~0_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Mux69~5_combout\ <= NOT \Mux69~5_combout\;
\ALT_INV_Mux70~5_combout\ <= NOT \Mux70~5_combout\;
\ALT_INV_Mux71~4_combout\ <= NOT \Mux71~4_combout\;
\ALT_INV_Mux106~5_combout\ <= NOT \Mux106~5_combout\;
\ALT_INV_Mux107~5_combout\ <= NOT \Mux107~5_combout\;
\ALT_INV_Mux108~5_combout\ <= NOT \Mux108~5_combout\;
\ALT_INV_Mux109~12_combout\ <= NOT \Mux109~12_combout\;
\ALT_INV_Mux109~8_combout\ <= NOT \Mux109~8_combout\;
\ALT_INV_Mux143~5_combout\ <= NOT \Mux143~5_combout\;
\ALT_INV_Mux144~7_combout\ <= NOT \Mux144~7_combout\;
\ALT_INV_Mux144~3_combout\ <= NOT \Mux144~3_combout\;
\ALT_INV_Mux145~6_combout\ <= NOT \Mux145~6_combout\;
\ALT_INV_Mux146~5_combout\ <= NOT \Mux146~5_combout\;
\ALT_INV_Mux147~5_combout\ <= NOT \Mux147~5_combout\;
\ALT_INV_Mux148~5_combout\ <= NOT \Mux148~5_combout\;
\ALT_INV_Mux149~4_combout\ <= NOT \Mux149~4_combout\;
\ALT_INV_Mux150~6_combout\ <= NOT \Mux150~6_combout\;
\ALT_INV_Mux151~4_combout\ <= NOT \Mux151~4_combout\;
\ALT_INV_Mux152~4_combout\ <= NOT \Mux152~4_combout\;
\ALT_INV_Mux153~4_combout\ <= NOT \Mux153~4_combout\;
\ALT_INV_Mux154~4_combout\ <= NOT \Mux154~4_combout\;
\ALT_INV_Mux155~4_combout\ <= NOT \Mux155~4_combout\;
\ALT_INV_Mux158~5_combout\ <= NOT \Mux158~5_combout\;
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X0_Y20_N56
\zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~6_combout\,
	devoe => ww_devoe,
	o => ww_zero);

-- Location: IOOBUF_X33_Y0_N93
\aluResult[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(0),
	devoe => ww_devoe,
	o => ww_aluResult(0));

-- Location: IOOBUF_X12_Y45_N19
\aluResult[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(1),
	devoe => ww_devoe,
	o => ww_aluResult(1));

-- Location: IOOBUF_X43_Y0_N19
\aluResult[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(2),
	devoe => ww_devoe,
	o => ww_aluResult(2));

-- Location: IOOBUF_X18_Y45_N36
\aluResult[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(3),
	devoe => ww_devoe,
	o => ww_aluResult(3));

-- Location: IOOBUF_X54_Y15_N5
\aluResult[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(4),
	devoe => ww_devoe,
	o => ww_aluResult(4));

-- Location: IOOBUF_X0_Y20_N5
\aluResult[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(5),
	devoe => ww_devoe,
	o => ww_aluResult(5));

-- Location: IOOBUF_X54_Y18_N45
\aluResult[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(6),
	devoe => ww_devoe,
	o => ww_aluResult(6));

-- Location: IOOBUF_X10_Y45_N36
\aluResult[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(7),
	devoe => ww_devoe,
	o => ww_aluResult(7));

-- Location: IOOBUF_X0_Y18_N79
\aluResult[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(8),
	devoe => ww_devoe,
	o => ww_aluResult(8));

-- Location: IOOBUF_X29_Y0_N2
\aluResult[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(9),
	devoe => ww_devoe,
	o => ww_aluResult(9));

-- Location: IOOBUF_X0_Y19_N5
\aluResult[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(10),
	devoe => ww_devoe,
	o => ww_aluResult(10));

-- Location: IOOBUF_X16_Y45_N59
\aluResult[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(11),
	devoe => ww_devoe,
	o => ww_aluResult(11));

-- Location: IOOBUF_X36_Y0_N2
\aluResult[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(12),
	devoe => ww_devoe,
	o => ww_aluResult(12));

-- Location: IOOBUF_X16_Y0_N59
\aluResult[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(13),
	devoe => ww_devoe,
	o => ww_aluResult(13));

-- Location: IOOBUF_X36_Y0_N19
\aluResult[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(14),
	devoe => ww_devoe,
	o => ww_aluResult(14));

-- Location: IOOBUF_X40_Y0_N59
\aluResult[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(15),
	devoe => ww_devoe,
	o => ww_aluResult(15));

-- Location: IOOBUF_X48_Y0_N93
\aluResult[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(16),
	devoe => ww_devoe,
	o => ww_aluResult(16));

-- Location: IOOBUF_X12_Y0_N2
\aluResult[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(17),
	devoe => ww_devoe,
	o => ww_aluResult(17));

-- Location: IOOBUF_X10_Y0_N76
\aluResult[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(18),
	devoe => ww_devoe,
	o => ww_aluResult(18));

-- Location: IOOBUF_X10_Y0_N59
\aluResult[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(19),
	devoe => ww_devoe,
	o => ww_aluResult(19));

-- Location: IOOBUF_X12_Y45_N53
\aluResult[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(20),
	devoe => ww_devoe,
	o => ww_aluResult(20));

-- Location: IOOBUF_X0_Y19_N56
\aluResult[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(21),
	devoe => ww_devoe,
	o => ww_aluResult(21));

-- Location: IOOBUF_X14_Y45_N36
\aluResult[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(22),
	devoe => ww_devoe,
	o => ww_aluResult(22));

-- Location: IOOBUF_X12_Y45_N36
\aluResult[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(23),
	devoe => ww_devoe,
	o => ww_aluResult(23));

-- Location: IOOBUF_X54_Y15_N39
\aluResult[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(24),
	devoe => ww_devoe,
	o => ww_aluResult(24));

-- Location: IOOBUF_X24_Y0_N2
\aluResult[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(25),
	devoe => ww_devoe,
	o => ww_aluResult(25));

-- Location: IOOBUF_X16_Y0_N42
\aluResult[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(26),
	devoe => ww_devoe,
	o => ww_aluResult(26));

-- Location: IOOBUF_X18_Y45_N19
\aluResult[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(27),
	devoe => ww_devoe,
	o => ww_aluResult(27));

-- Location: IOOBUF_X10_Y45_N19
\aluResult[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(28),
	devoe => ww_devoe,
	o => ww_aluResult(28));

-- Location: IOOBUF_X16_Y45_N76
\aluResult[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(29),
	devoe => ww_devoe,
	o => ww_aluResult(29));

-- Location: IOOBUF_X8_Y45_N76
\aluResult[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(30),
	devoe => ww_devoe,
	o => ww_aluResult(30));

-- Location: IOOBUF_X0_Y21_N5
\aluResult[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => res(31),
	devoe => ww_devoe,
	o => ww_aluResult(31));

-- Location: IOIBUF_X10_Y0_N41
\aluControl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(0),
	o => \aluControl[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N92
\inputA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(0),
	o => \inputA[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N52
\aluControl[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(2),
	o => \aluControl[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\inputB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(0),
	o => \inputB[0]~input_o\);

-- Location: LABCELL_X12_Y7_N0
\Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~130_cout\ = CARRY(( \aluControl[2]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	cin => GND,
	cout => \Add0~130_cout\);

-- Location: LABCELL_X12_Y7_N3
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[0]~input_o\) ) + ( \inputA[0]~input_o\ ) + ( \Add0~130_cout\ ))
-- \Add0~46\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[0]~input_o\) ) + ( \inputA[0]~input_o\ ) + ( \Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	cin => \Add0~130_cout\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: IOIBUF_X18_Y0_N35
\aluControl[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(3),
	o => \aluControl[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N35
\aluControl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(1),
	o => \aluControl[1]~input_o\);

-- Location: MLABCELL_X9_Y1_N15
\Mux109~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux109~1_combout\ = ( \aluControl[1]~input_o\ & ( (\Add0~45_sumout\ & !\aluControl[3]~input_o\) ) ) # ( !\aluControl[1]~input_o\ & ( (!\inputA[0]~input_o\ & (\aluControl[3]~input_o\ & !\inputB[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000001100000011000000001010000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_Add0~45_sumout\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	combout => \Mux109~1_combout\);

-- Location: IOIBUF_X18_Y0_N1
\inputB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(30),
	o => \inputB[30]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\inputB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(31),
	o => \inputB[31]~input_o\);

-- Location: IOIBUF_X29_Y0_N35
\inputA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(31),
	o => \inputA[31]~input_o\);

-- Location: LABCELL_X10_Y5_N3
\Mux109~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux109~2_combout\ = ( \inputA[31]~input_o\ & ( (!\aluControl[3]~input_o\ & (\aluControl[1]~input_o\ & \inputB[31]~input_o\)) ) ) # ( !\inputA[31]~input_o\ & ( (!\aluControl[3]~input_o\ & (\aluControl[1]~input_o\ & !\inputB[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_inputA[31]~input_o\,
	combout => \Mux109~2_combout\);

-- Location: IOIBUF_X36_Y0_N35
\inputB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(29),
	o => \inputB[29]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\inputA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(30),
	o => \inputA[30]~input_o\);

-- Location: IOIBUF_X14_Y45_N52
\inputA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(29),
	o => \inputA[29]~input_o\);

-- Location: LABCELL_X12_Y6_N54
\Mux109~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux109~3_combout\ = ( \inputA[29]~input_o\ & ( (\Mux109~2_combout\ & (\inputB[29]~input_o\ & (!\inputB[30]~input_o\ $ (\inputA[30]~input_o\)))) ) ) # ( !\inputA[29]~input_o\ & ( (\Mux109~2_combout\ & (!\inputB[29]~input_o\ & (!\inputB[30]~input_o\ $ 
-- (\inputA[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000000010000000010000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[30]~input_o\,
	datab => \ALT_INV_Mux109~2_combout\,
	datac => \ALT_INV_inputB[29]~input_o\,
	datad => \ALT_INV_inputA[30]~input_o\,
	dataf => \ALT_INV_inputA[29]~input_o\,
	combout => \Mux109~3_combout\);

-- Location: IOIBUF_X14_Y0_N18
\inputB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(22),
	o => \inputB[22]~input_o\);

-- Location: IOIBUF_X8_Y45_N58
\inputA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(22),
	o => \inputA[22]~input_o\);

-- Location: IOIBUF_X10_Y45_N1
\inputA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(24),
	o => \inputA[24]~input_o\);

-- Location: IOIBUF_X8_Y45_N92
\inputA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(27),
	o => \inputA[27]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\inputB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(28),
	o => \inputB[28]~input_o\);

-- Location: IOIBUF_X0_Y18_N95
\inputA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(26),
	o => \inputA[26]~input_o\);

-- Location: IOIBUF_X0_Y19_N21
\inputA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(28),
	o => \inputA[28]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\inputB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(27),
	o => \inputB[27]~input_o\);

-- Location: IOIBUF_X23_Y0_N75
\inputB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(26),
	o => \inputB[26]~input_o\);

-- Location: LABCELL_X12_Y6_N42
\LessThan0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~28_combout\ = ( \inputB[27]~input_o\ & ( \inputB[26]~input_o\ & ( (\inputA[27]~input_o\ & (\inputA[26]~input_o\ & (!\inputB[28]~input_o\ $ (\inputA[28]~input_o\)))) ) ) ) # ( !\inputB[27]~input_o\ & ( \inputB[26]~input_o\ & ( 
-- (!\inputA[27]~input_o\ & (\inputA[26]~input_o\ & (!\inputB[28]~input_o\ $ (\inputA[28]~input_o\)))) ) ) ) # ( \inputB[27]~input_o\ & ( !\inputB[26]~input_o\ & ( (\inputA[27]~input_o\ & (!\inputA[26]~input_o\ & (!\inputB[28]~input_o\ $ 
-- (\inputA[28]~input_o\)))) ) ) ) # ( !\inputB[27]~input_o\ & ( !\inputB[26]~input_o\ & ( (!\inputA[27]~input_o\ & (!\inputA[26]~input_o\ & (!\inputB[28]~input_o\ $ (\inputA[28]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[27]~input_o\,
	datab => \ALT_INV_inputB[28]~input_o\,
	datac => \ALT_INV_inputA[26]~input_o\,
	datad => \ALT_INV_inputA[28]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \LessThan0~28_combout\);

-- Location: IOIBUF_X14_Y0_N52
\inputB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(25),
	o => \inputB[25]~input_o\);

-- Location: LABCELL_X12_Y6_N48
\LessThan0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~34_combout\ = ( \inputB[27]~input_o\ & ( \inputB[26]~input_o\ & ( (!\inputB[28]~input_o\ & (!\inputA[28]~input_o\ & ((!\inputA[27]~input_o\) # (!\inputA[26]~input_o\)))) # (\inputB[28]~input_o\ & ((!\inputA[27]~input_o\) # 
-- ((!\inputA[26]~input_o\) # (!\inputA[28]~input_o\)))) ) ) ) # ( !\inputB[27]~input_o\ & ( \inputB[26]~input_o\ & ( (!\inputB[28]~input_o\ & (!\inputA[27]~input_o\ & (!\inputA[26]~input_o\ & !\inputA[28]~input_o\))) # (\inputB[28]~input_o\ & 
-- ((!\inputA[28]~input_o\) # ((!\inputA[27]~input_o\ & !\inputA[26]~input_o\)))) ) ) ) # ( \inputB[27]~input_o\ & ( !\inputB[26]~input_o\ & ( (!\inputA[27]~input_o\ & ((!\inputA[28]~input_o\) # (\inputB[28]~input_o\))) # (\inputA[27]~input_o\ & 
-- (\inputB[28]~input_o\ & !\inputA[28]~input_o\)) ) ) ) # ( !\inputB[27]~input_o\ & ( !\inputB[26]~input_o\ & ( (\inputB[28]~input_o\ & !\inputA[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000101110110010001010110011001000001111101100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[27]~input_o\,
	datab => \ALT_INV_inputB[28]~input_o\,
	datac => \ALT_INV_inputA[26]~input_o\,
	datad => \ALT_INV_inputA[28]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \LessThan0~34_combout\);

-- Location: IOIBUF_X12_Y0_N18
\inputA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(25),
	o => \inputA[25]~input_o\);

-- Location: IOIBUF_X16_Y0_N75
\inputB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(24),
	o => \inputB[24]~input_o\);

-- Location: MLABCELL_X9_Y3_N0
\LessThan0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~35_combout\ = ( \inputA[25]~input_o\ & ( \inputB[24]~input_o\ & ( (!\LessThan0~34_combout\ & (((!\LessThan0~28_combout\) # (!\inputB[25]~input_o\)) # (\inputA[24]~input_o\))) ) ) ) # ( !\inputA[25]~input_o\ & ( \inputB[24]~input_o\ & ( 
-- (!\LessThan0~34_combout\ & ((!\LessThan0~28_combout\) # ((\inputA[24]~input_o\ & !\inputB[25]~input_o\)))) ) ) ) # ( \inputA[25]~input_o\ & ( !\inputB[24]~input_o\ & ( !\LessThan0~34_combout\ ) ) ) # ( !\inputA[25]~input_o\ & ( !\inputB[24]~input_o\ & ( 
-- (!\LessThan0~34_combout\ & ((!\LessThan0~28_combout\) # (!\inputB[25]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111110000000011011100000000001111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[24]~input_o\,
	datab => \ALT_INV_LessThan0~28_combout\,
	datac => \ALT_INV_inputB[25]~input_o\,
	datad => \ALT_INV_LessThan0~34_combout\,
	datae => \ALT_INV_inputA[25]~input_o\,
	dataf => \ALT_INV_inputB[24]~input_o\,
	combout => \LessThan0~35_combout\);

-- Location: IOIBUF_X34_Y0_N1
\inputB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(23),
	o => \inputB[23]~input_o\);

-- Location: MLABCELL_X9_Y3_N21
\LessThan0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~29_combout\ = ( \inputB[24]~input_o\ & ( !\inputA[24]~input_o\ ) ) # ( !\inputB[24]~input_o\ & ( \inputA[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[24]~input_o\,
	dataf => \ALT_INV_inputB[24]~input_o\,
	combout => \LessThan0~29_combout\);

-- Location: MLABCELL_X9_Y3_N36
\LessThan0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~33_combout\ = ( \inputB[25]~input_o\ & ( (!\LessThan0~29_combout\ & (\LessThan0~28_combout\ & \inputA[25]~input_o\)) ) ) # ( !\inputB[25]~input_o\ & ( (!\LessThan0~29_combout\ & (\LessThan0~28_combout\ & !\inputA[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~29_combout\,
	datab => \ALT_INV_LessThan0~28_combout\,
	datad => \ALT_INV_inputA[25]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \LessThan0~33_combout\);

-- Location: IOIBUF_X54_Y15_N55
\inputA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(23),
	o => \inputA[23]~input_o\);

-- Location: MLABCELL_X9_Y3_N42
\LessThan0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~36_combout\ = ( \LessThan0~33_combout\ & ( \inputA[23]~input_o\ & ( (\LessThan0~35_combout\ & ((!\inputB[22]~input_o\) # ((!\inputB[23]~input_o\) # (\inputA[22]~input_o\)))) ) ) ) # ( !\LessThan0~33_combout\ & ( \inputA[23]~input_o\ & ( 
-- \LessThan0~35_combout\ ) ) ) # ( \LessThan0~33_combout\ & ( !\inputA[23]~input_o\ & ( (\LessThan0~35_combout\ & (!\inputB[23]~input_o\ & ((!\inputB[22]~input_o\) # (\inputA[22]~input_o\)))) ) ) ) # ( !\LessThan0~33_combout\ & ( !\inputA[23]~input_o\ & ( 
-- \LessThan0~35_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010110000000000001111000011110000111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[22]~input_o\,
	datab => \ALT_INV_inputA[22]~input_o\,
	datac => \ALT_INV_LessThan0~35_combout\,
	datad => \ALT_INV_inputB[23]~input_o\,
	datae => \ALT_INV_LessThan0~33_combout\,
	dataf => \ALT_INV_inputA[23]~input_o\,
	combout => \LessThan0~36_combout\);

-- Location: MLABCELL_X9_Y3_N54
\LessThan0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~31_combout\ = ( \inputB[22]~input_o\ & ( !\inputA[22]~input_o\ ) ) # ( !\inputB[22]~input_o\ & ( \inputA[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[22]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \LessThan0~31_combout\);

-- Location: MLABCELL_X9_Y3_N12
\LessThan0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = ( \inputB[23]~input_o\ & ( !\inputA[23]~input_o\ ) ) # ( !\inputB[23]~input_o\ & ( \inputA[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[23]~input_o\,
	dataf => \ALT_INV_inputB[23]~input_o\,
	combout => \LessThan0~30_combout\);

-- Location: MLABCELL_X9_Y3_N48
\LessThan0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~32_combout\ = ( !\LessThan0~31_combout\ & ( !\LessThan0~30_combout\ & ( (!\LessThan0~29_combout\ & (\LessThan0~28_combout\ & (!\inputA[25]~input_o\ $ (\inputB[25]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~29_combout\,
	datab => \ALT_INV_inputA[25]~input_o\,
	datac => \ALT_INV_inputB[25]~input_o\,
	datad => \ALT_INV_LessThan0~28_combout\,
	datae => \ALT_INV_LessThan0~31_combout\,
	dataf => \ALT_INV_LessThan0~30_combout\,
	combout => \LessThan0~32_combout\);

-- Location: LABCELL_X20_Y5_N6
\Mux109~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux109~4_combout\ = ( !\inputB[31]~input_o\ & ( !\aluControl[3]~input_o\ & ( (\aluControl[1]~input_o\ & \inputA[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_inputA[31]~input_o\,
	datae => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux109~4_combout\);

-- Location: LABCELL_X12_Y3_N6
\Mux109~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux109~5_combout\ = ( \inputB[29]~input_o\ & ( \inputA[30]~input_o\ & ( (!\Mux109~4_combout\ & ((!\inputB[30]~input_o\) # ((!\Mux109~2_combout\) # (\inputA[29]~input_o\)))) ) ) ) # ( !\inputB[29]~input_o\ & ( \inputA[30]~input_o\ & ( !\Mux109~4_combout\ 
-- ) ) ) # ( \inputB[29]~input_o\ & ( !\inputA[30]~input_o\ & ( (!\Mux109~4_combout\ & ((!\Mux109~2_combout\) # ((!\inputB[30]~input_o\ & \inputA[29]~input_o\)))) ) ) ) # ( !\inputB[29]~input_o\ & ( !\inputA[30]~input_o\ & ( (!\Mux109~4_combout\ & 
-- ((!\inputB[30]~input_o\) # (!\Mux109~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011000000100011001100110011001100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[30]~input_o\,
	datab => \ALT_INV_Mux109~4_combout\,
	datac => \ALT_INV_inputA[29]~input_o\,
	datad => \ALT_INV_Mux109~2_combout\,
	datae => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputA[30]~input_o\,
	combout => \Mux109~5_combout\);

-- Location: IOIBUF_X25_Y0_N52
\inputB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(8),
	o => \inputB[8]~input_o\);

-- Location: IOIBUF_X16_Y45_N92
\inputA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(8),
	o => \inputA[8]~input_o\);

-- Location: MLABCELL_X13_Y5_N51
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( !\inputA[8]~input_o\ & ( \inputB[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	dataf => \ALT_INV_inputA[8]~input_o\,
	combout => \LessThan0~16_combout\);

-- Location: IOIBUF_X34_Y0_N35
\inputB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(11),
	o => \inputB[11]~input_o\);

-- Location: IOIBUF_X54_Y14_N78
\inputA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(11),
	o => \inputA[11]~input_o\);

-- Location: MLABCELL_X13_Y5_N6
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( \inputA[11]~input_o\ & ( !\inputB[11]~input_o\ ) ) # ( !\inputA[11]~input_o\ & ( \inputB[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[11]~input_o\,
	dataf => \ALT_INV_inputA[11]~input_o\,
	combout => \LessThan0~10_combout\);

-- Location: IOIBUF_X11_Y0_N18
\inputB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(14),
	o => \inputB[14]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\inputA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(13),
	o => \inputA[13]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\inputA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(14),
	o => \inputA[14]~input_o\);

-- Location: IOIBUF_X23_Y0_N92
\inputB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(13),
	o => \inputB[13]~input_o\);

-- Location: IOIBUF_X0_Y20_N38
\inputB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(12),
	o => \inputB[12]~input_o\);

-- Location: IOIBUF_X51_Y0_N35
\inputA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(12),
	o => \inputA[12]~input_o\);

-- Location: MLABCELL_X13_Y5_N0
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \inputB[12]~input_o\ & ( \inputA[12]~input_o\ & ( (!\inputB[14]~input_o\ & (!\inputA[14]~input_o\ & (!\inputA[13]~input_o\ $ (\inputB[13]~input_o\)))) # (\inputB[14]~input_o\ & (\inputA[14]~input_o\ & (!\inputA[13]~input_o\ $ 
-- (\inputB[13]~input_o\)))) ) ) ) # ( !\inputB[12]~input_o\ & ( !\inputA[12]~input_o\ & ( (!\inputB[14]~input_o\ & (!\inputA[14]~input_o\ & (!\inputA[13]~input_o\ $ (\inputB[13]~input_o\)))) # (\inputB[14]~input_o\ & (\inputA[14]~input_o\ & 
-- (!\inputA[13]~input_o\ $ (\inputB[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[14]~input_o\,
	datab => \ALT_INV_inputA[13]~input_o\,
	datac => \ALT_INV_inputA[14]~input_o\,
	datad => \ALT_INV_inputB[13]~input_o\,
	datae => \ALT_INV_inputB[12]~input_o\,
	dataf => \ALT_INV_inputA[12]~input_o\,
	combout => \LessThan0~9_combout\);

-- Location: IOIBUF_X11_Y0_N52
\inputB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(9),
	o => \inputB[9]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\inputA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(9),
	o => \inputA[9]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\inputB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(10),
	o => \inputB[10]~input_o\);

-- Location: IOIBUF_X0_Y18_N61
\inputA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(10),
	o => \inputA[10]~input_o\);

-- Location: MLABCELL_X13_Y5_N9
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( \inputA[10]~input_o\ & ( !\inputB[10]~input_o\ ) ) # ( !\inputA[10]~input_o\ & ( \inputB[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputB[10]~input_o\,
	dataf => \ALT_INV_inputA[10]~input_o\,
	combout => \LessThan0~11_combout\);

-- Location: MLABCELL_X13_Y5_N12
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( \inputA[9]~input_o\ & ( !\LessThan0~11_combout\ & ( (\LessThan0~16_combout\ & (!\LessThan0~10_combout\ & (\LessThan0~9_combout\ & \inputB[9]~input_o\))) ) ) ) # ( !\inputA[9]~input_o\ & ( !\LessThan0~11_combout\ & ( 
-- (!\LessThan0~10_combout\ & (\LessThan0~9_combout\ & ((\inputB[9]~input_o\) # (\LessThan0~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~16_combout\,
	datab => \ALT_INV_LessThan0~10_combout\,
	datac => \ALT_INV_LessThan0~9_combout\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_inputA[9]~input_o\,
	dataf => \ALT_INV_LessThan0~11_combout\,
	combout => \LessThan0~17_combout\);

-- Location: MLABCELL_X13_Y5_N48
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( \inputA[8]~input_o\ & ( !\inputB[8]~input_o\ ) ) # ( !\inputA[8]~input_o\ & ( \inputB[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	dataf => \ALT_INV_inputA[8]~input_o\,
	combout => \LessThan0~12_combout\);

-- Location: MLABCELL_X13_Y5_N18
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( \inputA[9]~input_o\ & ( !\LessThan0~11_combout\ & ( (!\LessThan0~12_combout\ & (!\LessThan0~10_combout\ & (\LessThan0~9_combout\ & \inputB[9]~input_o\))) ) ) ) # ( !\inputA[9]~input_o\ & ( !\LessThan0~11_combout\ & ( 
-- (!\LessThan0~12_combout\ & (!\LessThan0~10_combout\ & (\LessThan0~9_combout\ & !\inputB[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~12_combout\,
	datab => \ALT_INV_LessThan0~10_combout\,
	datac => \ALT_INV_LessThan0~9_combout\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_inputA[9]~input_o\,
	dataf => \ALT_INV_LessThan0~11_combout\,
	combout => \LessThan0~13_combout\);

-- Location: IOIBUF_X14_Y45_N1
\inputA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(5),
	o => \inputA[5]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\inputA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(4),
	o => \inputA[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\inputB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(4),
	o => \inputB[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N75
\inputB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(5),
	o => \inputB[5]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\inputB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(6),
	o => \inputB[6]~input_o\);

-- Location: IOIBUF_X0_Y18_N44
\inputB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(7),
	o => \inputB[7]~input_o\);

-- Location: IOIBUF_X8_Y45_N41
\inputA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(7),
	o => \inputA[7]~input_o\);

-- Location: IOIBUF_X54_Y14_N95
\inputA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(6),
	o => \inputA[6]~input_o\);

-- Location: MLABCELL_X13_Y6_N3
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \inputA[6]~input_o\ & ( (\inputB[6]~input_o\ & (!\inputB[7]~input_o\ $ (\inputA[7]~input_o\))) ) ) # ( !\inputA[6]~input_o\ & ( (!\inputB[6]~input_o\ & (!\inputB[7]~input_o\ $ (\inputA[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputA[7]~input_o\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X13_Y6_N24
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \inputB[6]~input_o\ & ( (!\inputA[6]~input_o\ & ((!\inputA[7]~input_o\) # (\inputB[7]~input_o\))) # (\inputA[6]~input_o\ & (\inputB[7]~input_o\ & !\inputA[7]~input_o\)) ) ) # ( !\inputB[6]~input_o\ & ( (\inputB[7]~input_o\ & 
-- !\inputA[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000010111011001000101011101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[6]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputA[7]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \LessThan0~7_combout\);

-- Location: MLABCELL_X13_Y6_N6
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( \LessThan0~0_combout\ & ( !\LessThan0~7_combout\ & ( (!\inputA[5]~input_o\ & (!\inputB[5]~input_o\ & ((!\inputB[4]~input_o\) # (\inputA[4]~input_o\)))) # (\inputA[5]~input_o\ & (((!\inputB[4]~input_o\) # (!\inputB[5]~input_o\)) # 
-- (\inputA[4]~input_o\))) ) ) ) # ( !\LessThan0~0_combout\ & ( !\LessThan0~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101110101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[5]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[4]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: MLABCELL_X13_Y5_N36
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( \inputB[12]~input_o\ & ( \inputA[12]~input_o\ & ( (!\inputB[14]~input_o\ & (!\inputA[13]~input_o\ & (!\inputA[14]~input_o\ & \inputB[13]~input_o\))) # (\inputB[14]~input_o\ & ((!\inputA[14]~input_o\) # ((!\inputA[13]~input_o\ & 
-- \inputB[13]~input_o\)))) ) ) ) # ( !\inputB[12]~input_o\ & ( \inputA[12]~input_o\ & ( (!\inputB[14]~input_o\ & (!\inputA[13]~input_o\ & (!\inputA[14]~input_o\ & \inputB[13]~input_o\))) # (\inputB[14]~input_o\ & ((!\inputA[14]~input_o\) # 
-- ((!\inputA[13]~input_o\ & \inputB[13]~input_o\)))) ) ) ) # ( \inputB[12]~input_o\ & ( !\inputA[12]~input_o\ & ( (!\inputB[14]~input_o\ & (!\inputA[14]~input_o\ & ((!\inputA[13]~input_o\) # (\inputB[13]~input_o\)))) # (\inputB[14]~input_o\ & 
-- ((!\inputA[13]~input_o\) # ((!\inputA[14]~input_o\) # (\inputB[13]~input_o\)))) ) ) ) # ( !\inputB[12]~input_o\ & ( !\inputA[12]~input_o\ & ( (!\inputB[14]~input_o\ & (!\inputA[13]~input_o\ & (!\inputA[14]~input_o\ & \inputB[13]~input_o\))) # 
-- (\inputB[14]~input_o\ & ((!\inputA[14]~input_o\) # ((!\inputA[13]~input_o\ & \inputB[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011010100110101001111010101010000110101000101000011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[14]~input_o\,
	datab => \ALT_INV_inputA[13]~input_o\,
	datac => \ALT_INV_inputA[14]~input_o\,
	datad => \ALT_INV_inputB[13]~input_o\,
	datae => \ALT_INV_inputB[12]~input_o\,
	dataf => \ALT_INV_inputA[12]~input_o\,
	combout => \LessThan0~14_combout\);

-- Location: MLABCELL_X13_Y5_N54
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( !\LessThan0~14_combout\ & ( \inputA[11]~input_o\ & ( (!\LessThan0~9_combout\) # ((!\inputB[11]~input_o\) # ((!\inputB[10]~input_o\) # (\inputA[10]~input_o\))) ) ) ) # ( !\LessThan0~14_combout\ & ( !\inputA[11]~input_o\ & ( 
-- (!\LessThan0~9_combout\) # ((!\inputB[11]~input_o\ & ((!\inputB[10]~input_o\) # (\inputA[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101110000000000000000011111110111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~9_combout\,
	datab => \ALT_INV_inputB[11]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputA[10]~input_o\,
	datae => \ALT_INV_LessThan0~14_combout\,
	dataf => \ALT_INV_inputA[11]~input_o\,
	combout => \LessThan0~15_combout\);

-- Location: IOIBUF_X25_Y0_N18
\inputB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(17),
	o => \inputB[17]~input_o\);

-- Location: IOIBUF_X29_Y0_N18
\inputA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(17),
	o => \inputA[17]~input_o\);

-- Location: LABCELL_X20_Y5_N51
\LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( \inputA[17]~input_o\ & ( !\inputB[17]~input_o\ ) ) # ( !\inputA[17]~input_o\ & ( \inputB[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputA[17]~input_o\,
	combout => \LessThan0~19_combout\);

-- Location: IOIBUF_X25_Y0_N1
\inputB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(16),
	o => \inputB[16]~input_o\);

-- Location: IOIBUF_X46_Y0_N35
\inputA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(16),
	o => \inputA[16]~input_o\);

-- Location: LABCELL_X20_Y5_N42
\LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( \inputA[16]~input_o\ & ( !\inputB[16]~input_o\ ) ) # ( !\inputA[16]~input_o\ & ( \inputB[16]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[16]~input_o\,
	dataf => \ALT_INV_inputA[16]~input_o\,
	combout => \LessThan0~20_combout\);

-- Location: IOIBUF_X29_Y0_N52
\inputB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(20),
	o => \inputB[20]~input_o\);

-- Location: IOIBUF_X32_Y45_N58
\inputA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(19),
	o => \inputA[19]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\inputA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(20),
	o => \inputA[20]~input_o\);

-- Location: IOIBUF_X23_Y0_N58
\inputB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(19),
	o => \inputB[19]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\inputB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(21),
	o => \inputB[21]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\inputA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(21),
	o => \inputA[21]~input_o\);

-- Location: LABCELL_X24_Y4_N0
\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( \inputB[21]~input_o\ & ( \inputA[21]~input_o\ & ( (!\inputB[20]~input_o\ & (!\inputA[20]~input_o\ & (!\inputA[19]~input_o\ $ (\inputB[19]~input_o\)))) # (\inputB[20]~input_o\ & (\inputA[20]~input_o\ & (!\inputA[19]~input_o\ $ 
-- (\inputB[19]~input_o\)))) ) ) ) # ( !\inputB[21]~input_o\ & ( !\inputA[21]~input_o\ & ( (!\inputB[20]~input_o\ & (!\inputA[20]~input_o\ & (!\inputA[19]~input_o\ $ (\inputB[19]~input_o\)))) # (\inputB[20]~input_o\ & (\inputA[20]~input_o\ & 
-- (!\inputA[19]~input_o\ $ (\inputB[19]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[20]~input_o\,
	datab => \ALT_INV_inputA[19]~input_o\,
	datac => \ALT_INV_inputA[20]~input_o\,
	datad => \ALT_INV_inputB[19]~input_o\,
	datae => \ALT_INV_inputB[21]~input_o\,
	dataf => \ALT_INV_inputA[21]~input_o\,
	combout => \LessThan0~18_combout\);

-- Location: IOIBUF_X25_Y0_N35
\inputA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(15),
	o => \inputA[15]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\inputB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(15),
	o => \inputB[15]~input_o\);

-- Location: LABCELL_X20_Y5_N45
\LessThan0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~21_combout\ = !\inputA[15]~input_o\ $ (!\inputB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[15]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	combout => \LessThan0~21_combout\);

-- Location: IOIBUF_X33_Y0_N75
\inputB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(18),
	o => \inputB[18]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\inputA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(18),
	o => \inputA[18]~input_o\);

-- Location: LABCELL_X20_Y5_N12
\LessThan0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~22_combout\ = ( \inputB[18]~input_o\ & ( \inputA[18]~input_o\ & ( (!\LessThan0~19_combout\ & (!\LessThan0~20_combout\ & (\LessThan0~18_combout\ & !\LessThan0~21_combout\))) ) ) ) # ( !\inputB[18]~input_o\ & ( !\inputA[18]~input_o\ & ( 
-- (!\LessThan0~19_combout\ & (!\LessThan0~20_combout\ & (\LessThan0~18_combout\ & !\LessThan0~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~19_combout\,
	datab => \ALT_INV_LessThan0~20_combout\,
	datac => \ALT_INV_LessThan0~18_combout\,
	datad => \ALT_INV_LessThan0~21_combout\,
	datae => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_inputA[18]~input_o\,
	combout => \LessThan0~22_combout\);

-- Location: IOIBUF_X22_Y0_N35
\inputA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(3),
	o => \inputA[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\inputB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(2),
	o => \inputB[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\inputA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(2),
	o => \inputA[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\inputB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(3),
	o => \inputB[3]~input_o\);

-- Location: MLABCELL_X13_Y6_N48
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \inputB[3]~input_o\ & ( (\inputA[3]~input_o\ & (!\inputB[2]~input_o\ $ (\inputA[2]~input_o\))) ) ) # ( !\inputB[3]~input_o\ & ( (!\inputA[3]~input_o\ & (!\inputB[2]~input_o\ $ (\inputA[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputB[3]~input_o\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X14_Y6_N3
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \inputB[3]~input_o\ & ( (!\inputA[3]~input_o\) # ((\inputB[2]~input_o\ & !\inputA[2]~input_o\)) ) ) # ( !\inputB[3]~input_o\ & ( (\inputB[2]~input_o\ & (!\inputA[3]~input_o\ & !\inputA[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011110101111100001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputB[3]~input_o\,
	combout => \LessThan0~5_combout\);

-- Location: MLABCELL_X13_Y6_N45
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \inputB[5]~input_o\ & ( !\inputA[5]~input_o\ ) ) # ( !\inputB[5]~input_o\ & ( \inputA[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[5]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X13_Y6_N0
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \inputA[4]~input_o\ & ( !\inputB[4]~input_o\ ) ) # ( !\inputA[4]~input_o\ & ( \inputB[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X23_Y0_N41
\inputB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(1),
	o => \inputB[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\inputA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(1),
	o => \inputA[1]~input_o\);

-- Location: MLABCELL_X13_Y6_N51
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \inputA[0]~input_o\ & ( (\inputB[1]~input_o\ & !\inputA[1]~input_o\) ) ) # ( !\inputA[0]~input_o\ & ( (!\inputB[0]~input_o\ & (\inputB[1]~input_o\ & !\inputA[1]~input_o\)) # (\inputB[0]~input_o\ & ((!\inputA[1]~input_o\) # 
-- (\inputB[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \LessThan0~3_combout\);

-- Location: MLABCELL_X13_Y6_N18
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( !\LessThan0~2_combout\ & ( \LessThan0~3_combout\ & ( (\LessThan0~0_combout\ & (!\LessThan0~1_combout\ & ((\LessThan0~5_combout\) # (\LessThan0~4_combout\)))) ) ) ) # ( !\LessThan0~2_combout\ & ( !\LessThan0~3_combout\ & ( 
-- (\LessThan0~5_combout\ & (\LessThan0~0_combout\ & !\LessThan0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000000000000000000111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datab => \ALT_INV_LessThan0~5_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X14_Y6_N54
\LessThan0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~23_combout\ = ( \LessThan0~22_combout\ & ( \LessThan0~6_combout\ & ( ((!\LessThan0~15_combout\) # (\LessThan0~13_combout\)) # (\LessThan0~17_combout\) ) ) ) # ( \LessThan0~22_combout\ & ( !\LessThan0~6_combout\ & ( ((!\LessThan0~15_combout\) # 
-- ((\LessThan0~13_combout\ & !\LessThan0~8_combout\))) # (\LessThan0~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111010100000000000000001111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~17_combout\,
	datab => \ALT_INV_LessThan0~13_combout\,
	datac => \ALT_INV_LessThan0~8_combout\,
	datad => \ALT_INV_LessThan0~15_combout\,
	datae => \ALT_INV_LessThan0~22_combout\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \LessThan0~23_combout\);

-- Location: LABCELL_X24_Y4_N30
\LessThan0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~25_combout\ = ( \inputB[21]~input_o\ & ( \inputA[21]~input_o\ & ( (!\inputB[20]~input_o\ & (!\inputA[19]~input_o\ & (!\inputA[20]~input_o\ & \inputB[19]~input_o\))) # (\inputB[20]~input_o\ & ((!\inputA[20]~input_o\) # ((!\inputA[19]~input_o\ & 
-- \inputB[19]~input_o\)))) ) ) ) # ( \inputB[21]~input_o\ & ( !\inputA[21]~input_o\ ) ) # ( !\inputB[21]~input_o\ & ( !\inputA[21]~input_o\ & ( (!\inputB[20]~input_o\ & (!\inputA[19]~input_o\ & (!\inputA[20]~input_o\ & \inputB[19]~input_o\))) # 
-- (\inputB[20]~input_o\ & ((!\inputA[20]~input_o\) # ((!\inputA[19]~input_o\ & \inputB[19]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011010100111111111111111100000000000000000101000011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[20]~input_o\,
	datab => \ALT_INV_inputA[19]~input_o\,
	datac => \ALT_INV_inputA[20]~input_o\,
	datad => \ALT_INV_inputB[19]~input_o\,
	datae => \ALT_INV_inputB[21]~input_o\,
	dataf => \ALT_INV_inputA[21]~input_o\,
	combout => \LessThan0~25_combout\);

-- Location: LABCELL_X20_Y5_N54
\LessThan0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = ( \inputB[17]~input_o\ & ( \inputA[18]~input_o\ & ( (!\LessThan0~25_combout\ & ((!\LessThan0~18_combout\) # ((!\inputB[18]~input_o\) # (\inputA[17]~input_o\)))) ) ) ) # ( !\inputB[17]~input_o\ & ( \inputA[18]~input_o\ & ( 
-- !\LessThan0~25_combout\ ) ) ) # ( \inputB[17]~input_o\ & ( !\inputA[18]~input_o\ & ( (!\LessThan0~25_combout\ & ((!\LessThan0~18_combout\) # ((!\inputB[18]~input_o\ & \inputA[17]~input_o\)))) ) ) ) # ( !\inputB[17]~input_o\ & ( !\inputA[18]~input_o\ & ( 
-- (!\LessThan0~25_combout\ & ((!\LessThan0~18_combout\) # (!\inputB[18]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000101011100000000011111111000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~18_combout\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_inputA[17]~input_o\,
	datad => \ALT_INV_LessThan0~25_combout\,
	datae => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputA[18]~input_o\,
	combout => \LessThan0~26_combout\);

-- Location: LABCELL_X20_Y5_N48
\LessThan0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~24_combout\ = ( \inputA[18]~input_o\ & ( (\LessThan0~18_combout\ & (\inputB[18]~input_o\ & !\LessThan0~19_combout\)) ) ) # ( !\inputA[18]~input_o\ & ( (\LessThan0~18_combout\ & (!\inputB[18]~input_o\ & !\LessThan0~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~18_combout\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_LessThan0~19_combout\,
	dataf => \ALT_INV_inputA[18]~input_o\,
	combout => \LessThan0~24_combout\);

-- Location: LABCELL_X20_Y5_N24
\LessThan0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~27_combout\ = ( \inputB[15]~input_o\ & ( \LessThan0~24_combout\ & ( (\LessThan0~26_combout\ & ((!\inputA[16]~input_o\ & (!\inputB[16]~input_o\ & \inputA[15]~input_o\)) # (\inputA[16]~input_o\ & ((!\inputB[16]~input_o\) # 
-- (\inputA[15]~input_o\))))) ) ) ) # ( !\inputB[15]~input_o\ & ( \LessThan0~24_combout\ & ( (\LessThan0~26_combout\ & ((!\inputB[16]~input_o\) # (\inputA[16]~input_o\))) ) ) ) # ( \inputB[15]~input_o\ & ( !\LessThan0~24_combout\ & ( \LessThan0~26_combout\ ) 
-- ) ) # ( !\inputB[15]~input_o\ & ( !\LessThan0~24_combout\ & ( \LessThan0~26_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001101000011010000010000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[16]~input_o\,
	datab => \ALT_INV_inputB[16]~input_o\,
	datac => \ALT_INV_LessThan0~26_combout\,
	datad => \ALT_INV_inputA[15]~input_o\,
	datae => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_LessThan0~24_combout\,
	combout => \LessThan0~27_combout\);

-- Location: LABCELL_X10_Y1_N0
\Mux109~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux109~6_combout\ = ( \LessThan0~23_combout\ & ( \LessThan0~27_combout\ & ( (\Mux109~5_combout\ & ((!\Mux109~3_combout\) # ((\LessThan0~36_combout\ & !\LessThan0~32_combout\)))) ) ) ) # ( !\LessThan0~23_combout\ & ( \LessThan0~27_combout\ & ( 
-- (\Mux109~5_combout\ & ((!\Mux109~3_combout\) # (\LessThan0~36_combout\))) ) ) ) # ( \LessThan0~23_combout\ & ( !\LessThan0~27_combout\ & ( (\Mux109~5_combout\ & ((!\Mux109~3_combout\) # ((\LessThan0~36_combout\ & !\LessThan0~32_combout\)))) ) ) ) # ( 
-- !\LessThan0~23_combout\ & ( !\LessThan0~27_combout\ & ( (\Mux109~5_combout\ & ((!\Mux109~3_combout\) # ((\LessThan0~36_combout\ & !\LessThan0~32_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111010000000001011101000000000101110110000000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux109~3_combout\,
	datab => \ALT_INV_LessThan0~36_combout\,
	datac => \ALT_INV_LessThan0~32_combout\,
	datad => \ALT_INV_Mux109~5_combout\,
	datae => \ALT_INV_LessThan0~23_combout\,
	dataf => \ALT_INV_LessThan0~27_combout\,
	combout => \Mux109~6_combout\);

-- Location: IOIBUF_X19_Y0_N52
\shamt[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(4),
	o => \shamt[4]~input_o\);

-- Location: IOIBUF_X14_Y45_N18
\shamt[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(3),
	o => \shamt[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\shamt[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(0),
	o => \shamt[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\shamt[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(1),
	o => \shamt[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\shamt[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(2),
	o => \shamt[2]~input_o\);

-- Location: MLABCELL_X18_Y5_N24
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( !\shamt[1]~input_o\ & ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (!\shamt[3]~input_o\ & !\shamt[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LABCELL_X17_Y4_N6
\Mux103~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux103~0_combout\ = ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & !\inputA[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux103~0_combout\);

-- Location: MLABCELL_X9_Y4_N33
\Mux103~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux103~1_combout\ = ( !\inputA[2]~input_o\ & ( (\Mux103~0_combout\ & (\inputB[0]~input_o\ & !\inputA[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux103~0_combout\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux103~1_combout\);

-- Location: MLABCELL_X9_Y4_N54
\Mux109~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux109~12_combout\ = ( !\aluControl[1]~input_o\ & ( (\inputB[0]~input_o\ & ((!\aluControl[3]~input_o\ & (\inputA[0]~input_o\)) # (\aluControl[3]~input_o\ & (((\Mux32~0_combout\)))))) ) ) # ( \aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- (((\Add0~45_sumout\)))) # (\aluControl[3]~input_o\ & ((((\Mux103~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000010100000101000000010000100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_inputB[0]~input_o\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_Mux32~0_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux103~1_combout\,
	datag => \ALT_INV_inputA[0]~input_o\,
	combout => \Mux109~12_combout\);

-- Location: LABCELL_X20_Y4_N54
\Mux138~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~20_combout\ = ( \inputB[13]~input_o\ & ( \inputB[5]~input_o\ & ( (!\inputA[4]~input_o\) # ((!\inputA[3]~input_o\ & (\inputB[21]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[29]~input_o\)))) ) ) ) # ( !\inputB[13]~input_o\ & ( \inputB[5]~input_o\ 
-- & ( (!\inputA[4]~input_o\ & (((!\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[21]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[29]~input_o\))))) ) ) ) # ( \inputB[13]~input_o\ & ( !\inputB[5]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & (((\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[21]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[29]~input_o\))))) ) ) ) # ( !\inputB[13]~input_o\ & ( !\inputB[5]~input_o\ & ( 
-- (\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[21]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[29]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_inputB[29]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[13]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux138~20_combout\);

-- Location: LABCELL_X19_Y4_N18
\Mux138~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~16_combout\ = ( \inputB[7]~input_o\ & ( \inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputB[15]~input_o\)) # (\inputA[4]~input_o\ & ((\inputB[31]~input_o\))) ) ) ) # ( !\inputB[7]~input_o\ & ( \inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & 
-- (\inputB[15]~input_o\)) # (\inputA[4]~input_o\ & ((\inputB[31]~input_o\))) ) ) ) # ( \inputB[7]~input_o\ & ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\) # (\inputB[23]~input_o\) ) ) ) # ( !\inputB[7]~input_o\ & ( !\inputA[3]~input_o\ & ( 
-- (\inputA[4]~input_o\ & \inputB[23]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[15]~input_o\,
	datac => \ALT_INV_inputB[23]~input_o\,
	datad => \ALT_INV_inputB[31]~input_o\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux138~16_combout\);

-- Location: LABCELL_X20_Y4_N6
\Mux138~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~24_combout\ = ( \inputB[19]~input_o\ & ( \inputA[4]~input_o\ & ( (!\inputA[3]~input_o\) # (\inputB[27]~input_o\) ) ) ) # ( !\inputB[19]~input_o\ & ( \inputA[4]~input_o\ & ( (\inputA[3]~input_o\ & \inputB[27]~input_o\) ) ) ) # ( 
-- \inputB[19]~input_o\ & ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & (\inputB[3]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[11]~input_o\))) ) ) ) # ( !\inputB[19]~input_o\ & ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & (\inputB[3]~input_o\)) 
-- # (\inputA[3]~input_o\ & ((\inputB[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputB[27]~input_o\,
	datae => \ALT_INV_inputB[19]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux138~24_combout\);

-- Location: LABCELL_X17_Y4_N48
\Mux138~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~28_combout\ = ( \inputB[9]~input_o\ & ( \inputB[25]~input_o\ & ( ((!\inputA[4]~input_o\ & ((\inputB[1]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[17]~input_o\))) # (\inputA[3]~input_o\) ) ) ) # ( !\inputB[9]~input_o\ & ( \inputB[25]~input_o\ & 
-- ( (!\inputA[4]~input_o\ & (((\inputB[1]~input_o\ & !\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & (((\inputA[3]~input_o\)) # (\inputB[17]~input_o\))) ) ) ) # ( \inputB[9]~input_o\ & ( !\inputB[25]~input_o\ & ( (!\inputA[4]~input_o\ & 
-- (((\inputA[3]~input_o\) # (\inputB[1]~input_o\)))) # (\inputA[4]~input_o\ & (\inputB[17]~input_o\ & ((!\inputA[3]~input_o\)))) ) ) ) # ( !\inputB[9]~input_o\ & ( !\inputB[25]~input_o\ & ( (!\inputA[3]~input_o\ & ((!\inputA[4]~input_o\ & 
-- ((\inputB[1]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[17]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[17]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \Mux138~28_combout\);

-- Location: LABCELL_X20_Y4_N30
\Mux138~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~29_combout\ = ( \Mux138~28_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~24_combout\))) # (\inputA[2]~input_o\ & (\Mux138~16_combout\)) ) ) ) # ( !\Mux138~28_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & 
-- ((\Mux138~24_combout\))) # (\inputA[2]~input_o\ & (\Mux138~16_combout\)) ) ) ) # ( \Mux138~28_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\) # (\Mux138~20_combout\) ) ) ) # ( !\Mux138~28_combout\ & ( !\inputA[1]~input_o\ & ( 
-- (\Mux138~20_combout\ & \inputA[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~20_combout\,
	datab => \ALT_INV_Mux138~16_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux138~24_combout\,
	datae => \ALT_INV_Mux138~28_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~29_combout\);

-- Location: LABCELL_X7_Y6_N6
\Mux34~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~11_combout\ = ( \inputB[23]~input_o\ & ( \shamt[1]~input_o\ & ( (\inputB[22]~input_o\) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[23]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & \inputB[22]~input_o\) ) ) ) # ( \inputB[23]~input_o\ & ( 
-- !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[20]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[21]~input_o\)) ) ) ) # ( !\inputB[23]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[20]~input_o\))) # (\shamt[0]~input_o\ & 
-- (\inputB[21]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_inputB[20]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[22]~input_o\,
	datae => \ALT_INV_inputB[23]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \Mux34~11_combout\);

-- Location: LABCELL_X7_Y6_N48
\Mux34~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~7_combout\ = ( \inputB[25]~input_o\ & ( \inputB[26]~input_o\ & ( (!\shamt[0]~input_o\ & (((\inputB[24]~input_o\)) # (\shamt[1]~input_o\))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[27]~input_o\)))) ) ) ) # ( !\inputB[25]~input_o\ & 
-- ( \inputB[26]~input_o\ & ( (!\shamt[0]~input_o\ & (((\inputB[24]~input_o\)) # (\shamt[1]~input_o\))) # (\shamt[0]~input_o\ & (\shamt[1]~input_o\ & ((\inputB[27]~input_o\)))) ) ) ) # ( \inputB[25]~input_o\ & ( !\inputB[26]~input_o\ & ( (!\shamt[0]~input_o\ 
-- & (!\shamt[1]~input_o\ & (\inputB[24]~input_o\))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[27]~input_o\)))) ) ) ) # ( !\inputB[25]~input_o\ & ( !\inputB[26]~input_o\ & ( (!\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & 
-- (\inputB[24]~input_o\))) # (\shamt[0]~input_o\ & (\shamt[1]~input_o\ & ((\inputB[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_inputB[27]~input_o\,
	datae => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \Mux34~7_combout\);

-- Location: LABCELL_X19_Y5_N36
\Mux34~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~10_combout\ = ( \inputB[18]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[17]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[19]~input_o\)) ) ) ) # ( !\inputB[18]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- ((\inputB[17]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[19]~input_o\)) ) ) ) # ( \inputB[18]~input_o\ & ( !\shamt[0]~input_o\ & ( (\shamt[1]~input_o\) # (\inputB[16]~input_o\) ) ) ) # ( !\inputB[18]~input_o\ & ( !\shamt[0]~input_o\ & ( 
-- (\inputB[16]~input_o\ & !\shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	datae => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux34~10_combout\);

-- Location: LABCELL_X14_Y5_N12
\Mux34~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~6_combout\ = ( \shamt[1]~input_o\ & ( \inputB[29]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[30]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[31]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[29]~input_o\ & ( (\inputB[28]~input_o\) # 
-- (\shamt[0]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[29]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[30]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[31]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[29]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & \inputB[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000110110001101101010101111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux34~6_combout\);

-- Location: MLABCELL_X13_Y8_N6
\Mux40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = ( \Mux34~6_combout\ & ( \shamt[3]~input_o\ & ( (\Mux34~7_combout\) # (\shamt[2]~input_o\) ) ) ) # ( !\Mux34~6_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & \Mux34~7_combout\) ) ) ) # ( \Mux34~6_combout\ & ( 
-- !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux34~10_combout\))) # (\shamt[2]~input_o\ & (\Mux34~11_combout\)) ) ) ) # ( !\Mux34~6_combout\ & ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux34~10_combout\))) # (\shamt[2]~input_o\ & 
-- (\Mux34~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~11_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux34~7_combout\,
	datad => \ALT_INV_Mux34~10_combout\,
	datae => \ALT_INV_Mux34~6_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux40~1_combout\);

-- Location: LABCELL_X16_Y8_N6
\Mux34~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~14_combout\ = ( \inputB[6]~input_o\ & ( \inputB[4]~input_o\ & ( (!\shamt[0]~input_o\) # ((!\shamt[1]~input_o\ & ((\inputB[5]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[7]~input_o\))) ) ) ) # ( !\inputB[6]~input_o\ & ( \inputB[4]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[5]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[7]~input_o\ & ((\shamt[0]~input_o\)))) ) ) ) # ( \inputB[6]~input_o\ & ( !\inputB[4]~input_o\ & ( (!\shamt[1]~input_o\ & (((\inputB[5]~input_o\ & 
-- \shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\inputB[7]~input_o\))) ) ) ) # ( !\inputB[6]~input_o\ & ( !\inputB[4]~input_o\ & ( (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\inputB[5]~input_o\))) # (\shamt[1]~input_o\ & 
-- (\inputB[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[7]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_inputB[4]~input_o\,
	combout => \Mux34~14_combout\);

-- Location: LABCELL_X16_Y7_N48
\Mux34~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~9_combout\ = ( \inputB[14]~input_o\ & ( \inputB[15]~input_o\ & ( ((!\shamt[0]~input_o\ & ((\inputB[12]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[13]~input_o\))) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[14]~input_o\ & ( \inputB[15]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & ((\inputB[12]~input_o\)))) # (\shamt[0]~input_o\ & (((\inputB[13]~input_o\)) # (\shamt[1]~input_o\))) ) ) ) # ( \inputB[14]~input_o\ & ( !\inputB[15]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- (((\inputB[12]~input_o\)) # (\shamt[1]~input_o\))) # (\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & (\inputB[13]~input_o\))) ) ) ) # ( !\inputB[14]~input_o\ & ( !\inputB[15]~input_o\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & 
-- ((\inputB[12]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	datae => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux34~9_combout\);

-- Location: LABCELL_X17_Y7_N42
\Mux34~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~16_combout\ = ( \shamt[1]~input_o\ & ( \shamt[0]~input_o\ & ( \inputB[3]~input_o\ ) ) ) # ( !\shamt[1]~input_o\ & ( \shamt[0]~input_o\ & ( \inputB[1]~input_o\ ) ) ) # ( \shamt[1]~input_o\ & ( !\shamt[0]~input_o\ & ( \inputB[2]~input_o\ ) ) ) # ( 
-- !\shamt[1]~input_o\ & ( !\shamt[0]~input_o\ & ( \inputB[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux34~16_combout\);

-- Location: LABCELL_X16_Y8_N12
\Mux34~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~8_combout\ = ( \shamt[1]~input_o\ & ( \inputB[11]~input_o\ & ( (\shamt[0]~input_o\) # (\inputB[10]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[8]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[9]~input_o\))) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[11]~input_o\ & ( (\inputB[10]~input_o\ & !\shamt[0]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[8]~input_o\)) # 
-- (\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[10]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux34~8_combout\);

-- Location: MLABCELL_X13_Y8_N0
\Mux40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = ( \Mux34~8_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\) # (\Mux34~9_combout\) ) ) ) # ( !\Mux34~8_combout\ & ( \shamt[3]~input_o\ & ( (\shamt[2]~input_o\ & \Mux34~9_combout\) ) ) ) # ( \Mux34~8_combout\ & ( 
-- !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux34~16_combout\))) # (\shamt[2]~input_o\ & (\Mux34~14_combout\)) ) ) ) # ( !\Mux34~8_combout\ & ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux34~16_combout\))) # (\shamt[2]~input_o\ & 
-- (\Mux34~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~14_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux34~9_combout\,
	datad => \ALT_INV_Mux34~16_combout\,
	datae => \ALT_INV_Mux34~8_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux40~2_combout\);

-- Location: LABCELL_X14_Y6_N0
\Mux109~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux109~0_combout\ = ( \Mux40~2_combout\ & ( (!\shamt[4]~input_o\) # (\Mux40~1_combout\) ) ) # ( !\Mux40~2_combout\ & ( (\Mux40~1_combout\ & \shamt[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux40~1_combout\,
	datac => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_Mux40~2_combout\,
	combout => \Mux109~0_combout\);

-- Location: LABCELL_X17_Y6_N48
\Mux138~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~18_combout\ = ( \inputB[14]~input_o\ & ( \inputA[3]~input_o\ & ( (!\inputA[4]~input_o\) # (\inputB[30]~input_o\) ) ) ) # ( !\inputB[14]~input_o\ & ( \inputA[3]~input_o\ & ( (\inputB[30]~input_o\ & \inputA[4]~input_o\) ) ) ) # ( 
-- \inputB[14]~input_o\ & ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[6]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[22]~input_o\)) ) ) ) # ( !\inputB[14]~input_o\ & ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & 
-- ((\inputB[6]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[22]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[22]~input_o\,
	datab => \ALT_INV_inputB[30]~input_o\,
	datac => \ALT_INV_inputB[6]~input_o\,
	datad => \ALT_INV_inputA[4]~input_o\,
	datae => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux138~18_combout\);

-- Location: LABCELL_X17_Y6_N30
\Mux138~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~22_combout\ = ( \inputB[20]~input_o\ & ( \inputB[4]~input_o\ & ( (!\inputA[3]~input_o\) # ((!\inputA[4]~input_o\ & ((\inputB[12]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[28]~input_o\))) ) ) ) # ( !\inputB[20]~input_o\ & ( \inputB[4]~input_o\ 
-- & ( (!\inputA[4]~input_o\ & (((!\inputA[3]~input_o\) # (\inputB[12]~input_o\)))) # (\inputA[4]~input_o\ & (\inputB[28]~input_o\ & ((\inputA[3]~input_o\)))) ) ) ) # ( \inputB[20]~input_o\ & ( !\inputB[4]~input_o\ & ( (!\inputA[4]~input_o\ & 
-- (((\inputB[12]~input_o\ & \inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & (((!\inputA[3]~input_o\)) # (\inputB[28]~input_o\))) ) ) ) # ( !\inputB[20]~input_o\ & ( !\inputB[4]~input_o\ & ( (\inputA[3]~input_o\ & ((!\inputA[4]~input_o\ & 
-- ((\inputB[12]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[28]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[28]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[12]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_inputB[4]~input_o\,
	combout => \Mux138~22_combout\);

-- Location: LABCELL_X17_Y6_N36
\Mux138~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~26_combout\ = ( \inputB[10]~input_o\ & ( \inputB[2]~input_o\ & ( (!\inputA[4]~input_o\) # ((!\inputA[3]~input_o\ & ((\inputB[18]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[26]~input_o\))) ) ) ) # ( !\inputB[10]~input_o\ & ( \inputB[2]~input_o\ 
-- & ( (!\inputA[4]~input_o\ & (((!\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[18]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[26]~input_o\)))) ) ) ) # ( \inputB[10]~input_o\ & ( !\inputB[2]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & (((\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[18]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[26]~input_o\)))) ) ) ) # ( !\inputB[10]~input_o\ & ( !\inputB[2]~input_o\ & ( 
-- (\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[18]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[26]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[18]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[10]~input_o\,
	dataf => \ALT_INV_inputB[2]~input_o\,
	combout => \Mux138~26_combout\);

-- Location: LABCELL_X17_Y6_N24
\Mux138~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~30_combout\ = ( \inputB[8]~input_o\ & ( \inputB[16]~input_o\ & ( (!\inputA[3]~input_o\ & (((\inputA[4]~input_o\)) # (\inputB[0]~input_o\))) # (\inputA[3]~input_o\ & (((!\inputA[4]~input_o\) # (\inputB[24]~input_o\)))) ) ) ) # ( 
-- !\inputB[8]~input_o\ & ( \inputB[16]~input_o\ & ( (!\inputA[3]~input_o\ & (((\inputA[4]~input_o\)) # (\inputB[0]~input_o\))) # (\inputA[3]~input_o\ & (((\inputB[24]~input_o\ & \inputA[4]~input_o\)))) ) ) ) # ( \inputB[8]~input_o\ & ( !\inputB[16]~input_o\ 
-- & ( (!\inputA[3]~input_o\ & (\inputB[0]~input_o\ & ((!\inputA[4]~input_o\)))) # (\inputA[3]~input_o\ & (((!\inputA[4]~input_o\) # (\inputB[24]~input_o\)))) ) ) ) # ( !\inputB[8]~input_o\ & ( !\inputB[16]~input_o\ & ( (!\inputA[3]~input_o\ & 
-- (\inputB[0]~input_o\ & ((!\inputA[4]~input_o\)))) # (\inputA[3]~input_o\ & (((\inputB[24]~input_o\ & \inputA[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_inputA[4]~input_o\,
	datae => \ALT_INV_inputB[8]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \Mux138~30_combout\);

-- Location: LABCELL_X17_Y6_N54
\Mux138~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~31_combout\ = ( \Mux138~26_combout\ & ( \Mux138~30_combout\ & ( (!\inputA[2]~input_o\) # ((!\inputA[1]~input_o\ & ((\Mux138~22_combout\))) # (\inputA[1]~input_o\ & (\Mux138~18_combout\))) ) ) ) # ( !\Mux138~26_combout\ & ( \Mux138~30_combout\ & ( 
-- (!\inputA[2]~input_o\ & (((!\inputA[1]~input_o\)))) # (\inputA[2]~input_o\ & ((!\inputA[1]~input_o\ & ((\Mux138~22_combout\))) # (\inputA[1]~input_o\ & (\Mux138~18_combout\)))) ) ) ) # ( \Mux138~26_combout\ & ( !\Mux138~30_combout\ & ( 
-- (!\inputA[2]~input_o\ & (((\inputA[1]~input_o\)))) # (\inputA[2]~input_o\ & ((!\inputA[1]~input_o\ & ((\Mux138~22_combout\))) # (\inputA[1]~input_o\ & (\Mux138~18_combout\)))) ) ) ) # ( !\Mux138~26_combout\ & ( !\Mux138~30_combout\ & ( 
-- (\inputA[2]~input_o\ & ((!\inputA[1]~input_o\ & ((\Mux138~22_combout\))) # (\inputA[1]~input_o\ & (\Mux138~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~18_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~22_combout\,
	datad => \ALT_INV_inputA[1]~input_o\,
	datae => \ALT_INV_Mux138~26_combout\,
	dataf => \ALT_INV_Mux138~30_combout\,
	combout => \Mux138~31_combout\);

-- Location: MLABCELL_X13_Y6_N12
\Mux109~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux109~8_combout\ = ( !\aluControl[3]~input_o\ & ( ((!\aluControl[1]~input_o\ & (((\inputA[0]~input_o\)) # (\inputB[0]~input_o\)))) ) ) # ( \aluControl[3]~input_o\ & ( (!\aluControl[1]~input_o\ & (((\Mux109~0_combout\)))) # (\aluControl[1]~input_o\ & 
-- (((!\inputA[0]~input_o\ & ((\Mux138~31_combout\))) # (\inputA[0]~input_o\ & (\Mux138~29_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000011111111001100110011000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~29_combout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux109~0_combout\,
	datad => \ALT_INV_Mux138~31_combout\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	datag => \ALT_INV_inputB[0]~input_o\,
	combout => \Mux109~8_combout\);

-- Location: MLABCELL_X9_Y4_N6
\Mux109~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux109~7_combout\ = ( \Mux109~12_combout\ & ( \Mux109~8_combout\ & ( (!\aluControl[2]~input_o\) # ((!\aluControl[0]~input_o\ & (\Mux109~1_combout\)) # (\aluControl[0]~input_o\ & ((!\Mux109~6_combout\)))) ) ) ) # ( !\Mux109~12_combout\ & ( 
-- \Mux109~8_combout\ & ( (!\aluControl[0]~input_o\ & (\Mux109~1_combout\ & (\aluControl[2]~input_o\))) # (\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\) # (!\Mux109~6_combout\)))) ) ) ) # ( \Mux109~12_combout\ & ( !\Mux109~8_combout\ & ( 
-- (!\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\)) # (\Mux109~1_combout\))) # (\aluControl[0]~input_o\ & (((\aluControl[2]~input_o\ & !\Mux109~6_combout\)))) ) ) ) # ( !\Mux109~12_combout\ & ( !\Mux109~8_combout\ & ( (\aluControl[2]~input_o\ & 
-- ((!\aluControl[0]~input_o\ & (\Mux109~1_combout\)) # (\aluControl[0]~input_o\ & ((!\Mux109~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000010101001111010001001010111010100101111011111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_Mux109~1_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_Mux109~6_combout\,
	datae => \ALT_INV_Mux109~12_combout\,
	dataf => \ALT_INV_Mux109~8_combout\,
	combout => \Mux109~7_combout\);

-- Location: LABCELL_X10_Y3_N36
\Mux160~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux160~0_combout\ = ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (!\aluControl[2]~input_o\ $ (!\aluControl[1]~input_o\))) # (\aluControl[3]~input_o\ & (\aluControl[2]~input_o\ & \aluControl[1]~input_o\)) ) ) # ( !\aluControl[0]~input_o\ & ( 
-- (\aluControl[2]~input_o\ & (!\aluControl[3]~input_o\ $ (\aluControl[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001100001100110000110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux160~0_combout\);

-- Location: MLABCELL_X9_Y4_N30
\res[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(0) = ( \Mux160~0_combout\ & ( res(0) ) ) # ( !\Mux160~0_combout\ & ( \Mux109~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_res(0),
	datac => \ALT_INV_Mux109~7_combout\,
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(0));

-- Location: MLABCELL_X18_Y1_N33
\Mux104~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~5_combout\ = ( \inputA[0]~input_o\ & ( \shamt[4]~input_o\ & ( (!\aluControl[1]~input_o\ & !\aluControl[2]~input_o\) ) ) ) # ( !\inputA[0]~input_o\ & ( \shamt[4]~input_o\ & ( (!\aluControl[2]~input_o\) # (\aluControl[1]~input_o\) ) ) ) # ( 
-- !\inputA[0]~input_o\ & ( !\shamt[4]~input_o\ & ( \aluControl[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000011110101111101011010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux104~5_combout\);

-- Location: MLABCELL_X18_Y1_N12
\Mux104~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~4_combout\ = ( \inputA[0]~input_o\ & ( \shamt[4]~input_o\ & ( (!\aluControl[2]~input_o\) # (\aluControl[1]~input_o\) ) ) ) # ( !\inputA[0]~input_o\ & ( \shamt[4]~input_o\ & ( (!\aluControl[2]~input_o\ & !\aluControl[1]~input_o\) ) ) ) # ( 
-- \inputA[0]~input_o\ & ( !\shamt[4]~input_o\ & ( \aluControl[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111000000110000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux104~4_combout\);

-- Location: LABCELL_X17_Y7_N24
\Mux21~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = ( \inputB[5]~input_o\ & ( \inputB[3]~input_o\ & ( (!\shamt[0]~input_o\) # ((!\shamt[1]~input_o\ & (\inputB[4]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[2]~input_o\)))) ) ) ) # ( !\inputB[5]~input_o\ & ( \inputB[3]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[4]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[2]~input_o\))))) ) ) ) # ( \inputB[5]~input_o\ & ( !\inputB[3]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- (((!\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[4]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[2]~input_o\))))) ) ) ) # ( !\inputB[5]~input_o\ & ( !\inputB[3]~input_o\ & ( (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & 
-- (\inputB[4]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[5]~input_o\,
	dataf => \ALT_INV_inputB[3]~input_o\,
	combout => \Mux21~6_combout\);

-- Location: LABCELL_X17_Y7_N3
\Mux21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = ( \shamt[0]~input_o\ & ( (\inputB[0]~input_o\ & !\shamt[1]~input_o\) ) ) # ( !\shamt[0]~input_o\ & ( (\inputB[1]~input_o\ & !\shamt[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux21~4_combout\);

-- Location: MLABCELL_X18_Y7_N57
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Mux21~4_combout\ & ( (!\shamt[3]~input_o\ & ((\shamt[2]~input_o\) # (\Mux21~6_combout\))) ) ) # ( !\Mux21~4_combout\ & ( (!\shamt[3]~input_o\ & (\Mux21~6_combout\ & !\shamt[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux21~6_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux21~4_combout\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X18_Y4_N54
\Mux92~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~14_combout\ = ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & \inputB[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux92~14_combout\);

-- Location: LABCELL_X17_Y4_N15
\Mux92~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~3_combout\ = ( \inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & !\inputA[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux92~3_combout\);

-- Location: MLABCELL_X18_Y4_N57
\Mux92~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~10_combout\ = ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & \inputB[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux92~10_combout\);

-- Location: MLABCELL_X18_Y4_N36
\Mux92~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~18_combout\ = ( \Mux92~10_combout\ & ( \inputA[1]~input_o\ & ( !\inputA[2]~input_o\ ) ) ) # ( \Mux92~10_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux92~3_combout\))) # (\inputA[2]~input_o\ & (\Mux92~14_combout\)) ) ) ) # ( 
-- !\Mux92~10_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux92~3_combout\))) # (\inputA[2]~input_o\ & (\Mux92~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~14_combout\,
	datab => \ALT_INV_Mux92~3_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_Mux92~10_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~18_combout\);

-- Location: LABCELL_X21_Y2_N12
\Mux92~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~8_combout\ = ( !\inputA[4]~input_o\ & ( (\inputB[4]~input_o\ & !\inputA[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux92~8_combout\);

-- Location: LABCELL_X16_Y5_N45
\Mux92~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~12_combout\ = ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux92~12_combout\);

-- Location: LABCELL_X16_Y5_N33
\Mux92~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~16_combout\ = ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux92~16_combout\);

-- Location: LABCELL_X16_Y5_N30
\Mux92~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~19_combout\ = ( \inputA[1]~input_o\ & ( (\Mux92~12_combout\ & !\inputA[2]~input_o\) ) ) # ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux92~8_combout\)) # (\inputA[2]~input_o\ & ((\Mux92~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~8_combout\,
	datab => \ALT_INV_Mux92~12_combout\,
	datac => \ALT_INV_Mux92~16_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~19_combout\);

-- Location: LABCELL_X16_Y5_N42
\Mux104~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~8_combout\ = ( \Mux92~19_combout\ & ( (!\Mux104~5_combout\ & (((\Mux3~0_combout\)) # (\Mux104~4_combout\))) # (\Mux104~5_combout\ & (!\Mux104~4_combout\ & ((\Mux92~18_combout\)))) ) ) # ( !\Mux92~19_combout\ & ( (!\Mux104~4_combout\ & 
-- ((!\Mux104~5_combout\ & (\Mux3~0_combout\)) # (\Mux104~5_combout\ & ((\Mux92~18_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~5_combout\,
	datab => \ALT_INV_Mux104~4_combout\,
	datac => \ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_Mux92~18_combout\,
	dataf => \ALT_INV_Mux92~19_combout\,
	combout => \Mux104~8_combout\);

-- Location: MLABCELL_X9_Y6_N9
\Mux104~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~3_combout\ = ( \aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\) # (\aluControl[2]~input_o\) ) ) # ( !\aluControl[1]~input_o\ & ( (\aluControl[2]~input_o\ & \aluControl[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[1]~input_o\,
	combout => \Mux104~3_combout\);

-- Location: LABCELL_X12_Y7_N6
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \inputA[1]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[1]~input_o\) ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( \inputA[1]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[1]~input_o\) ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_inputA[1]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X12_Y7_N9
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \inputA[2]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[2]~input_o\) ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( \inputA[2]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[2]~input_o\) ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputB[2]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X12_Y7_N12
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[3]~input_o\) ) + ( \inputA[3]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[3]~input_o\) ) + ( \inputA[3]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X12_Y7_N15
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \inputA[4]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[4]~input_o\) ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( \inputA[4]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[4]~input_o\) ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[4]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X12_Y7_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[5]~input_o\) ) + ( \inputA[5]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[5]~input_o\) ) + ( \inputA[5]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[5]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X13_Y6_N30
\Mux104~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~9_combout\ = ( \aluControl[3]~input_o\ & ( \inputA[5]~input_o\ & ( (\Mux104~8_combout\ & !\Mux104~3_combout\) ) ) ) # ( !\aluControl[3]~input_o\ & ( \inputA[5]~input_o\ & ( (!\Mux104~3_combout\ & (\inputB[5]~input_o\)) # (\Mux104~3_combout\ & 
-- ((\Add0~25_sumout\))) ) ) ) # ( \aluControl[3]~input_o\ & ( !\inputA[5]~input_o\ & ( (!\Mux104~3_combout\ & (\Mux104~8_combout\)) # (\Mux104~3_combout\ & ((!\inputB[5]~input_o\))) ) ) ) # ( !\aluControl[3]~input_o\ & ( !\inputA[5]~input_o\ & ( 
-- (\Mux104~3_combout\ & \Add0~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010111000101110000110000001111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~8_combout\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Mux104~3_combout\,
	datad => \ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	combout => \Mux104~9_combout\);

-- Location: MLABCELL_X9_Y2_N0
\Mux104~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~1_combout\ = ( \aluControl[3]~input_o\ & ( \aluControl[0]~input_o\ ) ) # ( !\aluControl[3]~input_o\ & ( \aluControl[0]~input_o\ & ( \aluControl[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux104~1_combout\);

-- Location: MLABCELL_X18_Y6_N24
\Mux104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~0_combout\ = (!\aluControl[1]~input_o\ & ((\shamt[4]~input_o\))) # (\aluControl[1]~input_o\ & (\inputA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	combout => \Mux104~0_combout\);

-- Location: LABCELL_X16_Y8_N36
\Mux61~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~7_combout\ = ( \inputB[12]~input_o\ & ( \inputB[11]~input_o\ & ( ((!\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[10]~input_o\))) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[12]~input_o\ & ( \inputB[11]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[10]~input_o\)))) # (\shamt[1]~input_o\ & (!\shamt[0]~input_o\)) ) ) ) # ( \inputB[12]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- ((!\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[10]~input_o\)))) # (\shamt[1]~input_o\ & (\shamt[0]~input_o\)) ) ) ) # ( !\inputB[12]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & 
-- ((\inputB[9]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_inputB[12]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux61~7_combout\);

-- Location: LABCELL_X16_Y8_N0
\Mux61~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~14_combout\ = ( \inputB[7]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[6]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[8]~input_o\)) ) ) ) # ( !\inputB[7]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- ((\inputB[6]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[8]~input_o\)) ) ) ) # ( \inputB[7]~input_o\ & ( !\shamt[0]~input_o\ & ( (\shamt[1]~input_o\) # (\inputB[5]~input_o\) ) ) ) # ( !\inputB[7]~input_o\ & ( !\shamt[0]~input_o\ & ( (\inputB[5]~input_o\ 
-- & !\shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[6]~input_o\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux61~14_combout\);

-- Location: LABCELL_X19_Y5_N18
\Mux61~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~9_combout\ = ( \inputB[20]~input_o\ & ( \shamt[1]~input_o\ & ( (\inputB[19]~input_o\) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[20]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & \inputB[19]~input_o\) ) ) ) # ( \inputB[20]~input_o\ & ( 
-- !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[17]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[18]~input_o\)) ) ) ) # ( !\inputB[20]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[17]~input_o\))) # (\shamt[0]~input_o\ & 
-- (\inputB[18]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	datae => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \Mux61~9_combout\);

-- Location: LABCELL_X16_Y7_N42
\Mux61~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~8_combout\ = ( \shamt[1]~input_o\ & ( \inputB[15]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[16]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[15]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[13]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[14]~input_o\))) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[15]~input_o\ & ( (\shamt[0]~input_o\ & \inputB[16]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[15]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[13]~input_o\)) # 
-- (\shamt[0]~input_o\ & ((\inputB[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[16]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux61~8_combout\);

-- Location: MLABCELL_X18_Y7_N0
\Mux104~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~6_combout\ = ( \Mux61~9_combout\ & ( \Mux61~8_combout\ & ( ((!\shamt[2]~input_o\ & ((\Mux61~14_combout\))) # (\shamt[2]~input_o\ & (\Mux61~7_combout\))) # (\shamt[3]~input_o\) ) ) ) # ( !\Mux61~9_combout\ & ( \Mux61~8_combout\ & ( 
-- (!\shamt[2]~input_o\ & (((\shamt[3]~input_o\) # (\Mux61~14_combout\)))) # (\shamt[2]~input_o\ & (\Mux61~7_combout\ & ((!\shamt[3]~input_o\)))) ) ) ) # ( \Mux61~9_combout\ & ( !\Mux61~8_combout\ & ( (!\shamt[2]~input_o\ & (((\Mux61~14_combout\ & 
-- !\shamt[3]~input_o\)))) # (\shamt[2]~input_o\ & (((\shamt[3]~input_o\)) # (\Mux61~7_combout\))) ) ) ) # ( !\Mux61~9_combout\ & ( !\Mux61~8_combout\ & ( (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & ((\Mux61~14_combout\))) # (\shamt[2]~input_o\ & 
-- (\Mux61~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~7_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux61~14_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_Mux61~9_combout\,
	dataf => \ALT_INV_Mux61~8_combout\,
	combout => \Mux104~6_combout\);

-- Location: LABCELL_X17_Y6_N45
\Mux138~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~14_combout\ = ( \inputA[3]~input_o\ & ( (\inputB[16]~input_o\ & !\inputA[4]~input_o\) ) ) # ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputB[8]~input_o\)) # (\inputA[4]~input_o\ & ((\inputB[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_inputB[24]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux138~14_combout\);

-- Location: LABCELL_X17_Y6_N0
\Mux138~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~10_combout\ = ( \inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & \inputB[26]~input_o\) ) ) # ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & (\inputB[10]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[10]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[18]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux138~10_combout\);

-- Location: LABCELL_X17_Y6_N15
\Mux138~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~5_combout\ = ( \inputB[12]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # ((\inputB[20]~input_o\)))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & ((\inputB[28]~input_o\)))) ) ) # ( !\inputB[12]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & (\inputA[3]~input_o\ & (\inputB[20]~input_o\))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & ((\inputB[28]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[20]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputB[12]~input_o\,
	combout => \Mux138~5_combout\);

-- Location: MLABCELL_X18_Y6_N12
\Mux138~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~19_combout\ = ( \Mux138~18_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~14_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~5_combout\))) ) ) ) # ( !\Mux138~18_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & 
-- (\Mux138~14_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~5_combout\))) ) ) ) # ( \Mux138~18_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\) # (\Mux138~10_combout\) ) ) ) # ( !\Mux138~18_combout\ & ( !\inputA[1]~input_o\ & ( 
-- (\Mux138~10_combout\ & \inputA[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~14_combout\,
	datab => \ALT_INV_Mux138~10_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux138~5_combout\,
	datae => \ALT_INV_Mux138~18_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~19_combout\);

-- Location: LABCELL_X14_Y5_N6
\Mux61~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~11_combout\ = ( \inputB[29]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[30]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[31]~input_o\ & (!\shamt[0]~input_o\))) ) ) # ( !\inputB[29]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- (((\shamt[0]~input_o\ & \inputB[30]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[31]~input_o\ & (!\shamt[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000100000001101010110000101110101011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux61~11_combout\);

-- Location: LABCELL_X20_Y5_N21
\Mux61~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~12_combout\ = ( \inputB[27]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[26]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[28]~input_o\)) ) ) ) # ( !\inputB[27]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- ((\inputB[26]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[28]~input_o\)) ) ) ) # ( \inputB[27]~input_o\ & ( !\shamt[0]~input_o\ & ( (\inputB[25]~input_o\) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[27]~input_o\ & ( !\shamt[0]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & \inputB[25]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[28]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[26]~input_o\,
	datad => \ALT_INV_inputB[25]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux61~12_combout\);

-- Location: LABCELL_X7_Y6_N54
\Mux61~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~10_combout\ = ( \inputB[23]~input_o\ & ( \inputB[24]~input_o\ & ( ((!\shamt[0]~input_o\ & (\inputB[21]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[22]~input_o\)))) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[23]~input_o\ & ( \inputB[24]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & (\inputB[21]~input_o\))) # (\shamt[0]~input_o\ & (((\inputB[22]~input_o\)) # (\shamt[1]~input_o\))) ) ) ) # ( \inputB[23]~input_o\ & ( !\inputB[24]~input_o\ & ( (!\shamt[0]~input_o\ & (((\inputB[21]~input_o\)) 
-- # (\shamt[1]~input_o\))) # (\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & ((\inputB[22]~input_o\)))) ) ) ) # ( !\inputB[23]~input_o\ & ( !\inputB[24]~input_o\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[21]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[22]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[21]~input_o\,
	datad => \ALT_INV_inputB[22]~input_o\,
	datae => \ALT_INV_inputB[23]~input_o\,
	dataf => \ALT_INV_inputB[24]~input_o\,
	combout => \Mux61~10_combout\);

-- Location: MLABCELL_X18_Y7_N48
\Mux59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = ( \shamt[3]~input_o\ & ( (\Mux61~11_combout\ & !\shamt[2]~input_o\) ) ) # ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux61~10_combout\))) # (\shamt[2]~input_o\ & (\Mux61~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~11_combout\,
	datab => \ALT_INV_Mux61~12_combout\,
	datac => \ALT_INV_Mux61~10_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux59~0_combout\);

-- Location: LABCELL_X17_Y4_N24
\Mux138~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~12_combout\ = ( \inputB[9]~input_o\ & ( \inputB[17]~input_o\ & ( (!\inputA[4]~input_o\) # ((!\inputA[3]~input_o\ & \inputB[25]~input_o\)) ) ) ) # ( !\inputB[9]~input_o\ & ( \inputB[17]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputA[3]~input_o\)) # 
-- (\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[25]~input_o\)) ) ) ) # ( \inputB[9]~input_o\ & ( !\inputB[17]~input_o\ & ( (!\inputA[3]~input_o\ & ((!\inputA[4]~input_o\) # (\inputB[25]~input_o\))) ) ) ) # ( !\inputB[9]~input_o\ & ( 
-- !\inputB[17]~input_o\ & ( (\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[25]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100100011001000110000100110001001101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[25]~input_o\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputB[17]~input_o\,
	combout => \Mux138~12_combout\);

-- Location: LABCELL_X20_Y4_N0
\Mux138~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~0_combout\ = ( \inputB[27]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[11]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[19]~input_o\))))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\)) ) ) # ( !\inputB[27]~input_o\ & 
-- ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[11]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[19]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputB[19]~input_o\,
	dataf => \ALT_INV_inputB[27]~input_o\,
	combout => \Mux138~0_combout\);

-- Location: LABCELL_X20_Y4_N24
\Mux138~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~21_combout\ = ( \Mux138~0_combout\ & ( \inputA[1]~input_o\ & ( (\inputA[2]~input_o\) # (\Mux138~16_combout\) ) ) ) # ( !\Mux138~0_combout\ & ( \inputA[1]~input_o\ & ( (\Mux138~16_combout\ & !\inputA[2]~input_o\) ) ) ) # ( \Mux138~0_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~20_combout\))) # (\inputA[2]~input_o\ & (\Mux138~12_combout\)) ) ) ) # ( !\Mux138~0_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~20_combout\))) # (\inputA[2]~input_o\ & 
-- (\Mux138~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~12_combout\,
	datab => \ALT_INV_Mux138~16_combout\,
	datac => \ALT_INV_Mux138~20_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_Mux138~0_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~21_combout\);

-- Location: MLABCELL_X18_Y6_N36
\Mux104~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~7_combout\ = ( \Mux59~0_combout\ & ( \Mux138~21_combout\ & ( (!\Mux104~0_combout\ & (((\Mux104~6_combout\)) # (\aluControl[1]~input_o\))) # (\Mux104~0_combout\ & ((!\aluControl[1]~input_o\) # ((\Mux138~19_combout\)))) ) ) ) # ( !\Mux59~0_combout\ 
-- & ( \Mux138~21_combout\ & ( (!\Mux104~0_combout\ & (((\Mux104~6_combout\)) # (\aluControl[1]~input_o\))) # (\Mux104~0_combout\ & (\aluControl[1]~input_o\ & ((\Mux138~19_combout\)))) ) ) ) # ( \Mux59~0_combout\ & ( !\Mux138~21_combout\ & ( 
-- (!\Mux104~0_combout\ & (!\aluControl[1]~input_o\ & (\Mux104~6_combout\))) # (\Mux104~0_combout\ & ((!\aluControl[1]~input_o\) # ((\Mux138~19_combout\)))) ) ) ) # ( !\Mux59~0_combout\ & ( !\Mux138~21_combout\ & ( (!\Mux104~0_combout\ & 
-- (!\aluControl[1]~input_o\ & (\Mux104~6_combout\))) # (\Mux104~0_combout\ & (\aluControl[1]~input_o\ & ((\Mux138~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~0_combout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux104~6_combout\,
	datad => \ALT_INV_Mux138~19_combout\,
	datae => \ALT_INV_Mux59~0_combout\,
	dataf => \ALT_INV_Mux138~21_combout\,
	combout => \Mux104~7_combout\);

-- Location: MLABCELL_X9_Y6_N15
\Mux104~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~2_combout\ = ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\) # (\aluControl[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux104~2_combout\);

-- Location: MLABCELL_X9_Y6_N30
\Mux104~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~10_combout\ = ( \Mux104~7_combout\ & ( \Mux104~2_combout\ & ( (!\Mux104~1_combout\ & ((\inputA[5]~input_o\) # (\inputB[5]~input_o\))) ) ) ) # ( !\Mux104~7_combout\ & ( \Mux104~2_combout\ & ( (!\Mux104~1_combout\ & ((\inputA[5]~input_o\) # 
-- (\inputB[5]~input_o\))) ) ) ) # ( \Mux104~7_combout\ & ( !\Mux104~2_combout\ & ( (\Mux104~1_combout\) # (\Mux104~9_combout\) ) ) ) # ( !\Mux104~7_combout\ & ( !\Mux104~2_combout\ & ( (\Mux104~9_combout\ & !\Mux104~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~9_combout\,
	datab => \ALT_INV_Mux104~1_combout\,
	datac => \ALT_INV_inputB[5]~input_o\,
	datad => \ALT_INV_inputA[5]~input_o\,
	datae => \ALT_INV_Mux104~7_combout\,
	dataf => \ALT_INV_Mux104~2_combout\,
	combout => \Mux104~10_combout\);

-- Location: MLABCELL_X9_Y6_N42
\res[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(5) = ( \Mux160~0_combout\ & ( res(5) ) ) # ( !\Mux160~0_combout\ & ( \Mux104~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux104~10_combout\,
	datad => ALT_INV_res(5),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(5));

-- Location: LABCELL_X16_Y5_N6
\Mux107~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux107~0_combout\ = (!\inputB[2]~input_o\ & !\inputA[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux107~0_combout\);

-- Location: LABCELL_X14_Y6_N39
\Mux70~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = ( \aluControl[2]~input_o\ & ( \aluControl[3]~input_o\ & ( !\aluControl[1]~input_o\ ) ) ) # ( \aluControl[2]~input_o\ & ( !\aluControl[3]~input_o\ & ( \aluControl[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux70~0_combout\);

-- Location: LABCELL_X14_Y6_N48
\Mux107~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux107~3_combout\ = ( \Mux70~0_combout\ & ( (!\aluControl[1]~input_o\ & (\Mux107~0_combout\)) # (\aluControl[1]~input_o\ & ((\Add0~37_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux107~0_combout\,
	datad => \ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_Mux70~0_combout\,
	combout => \Mux107~3_combout\);

-- Location: LABCELL_X17_Y7_N0
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \shamt[0]~input_o\ & ( (\inputB[1]~input_o\ & !\shamt[1]~input_o\) ) ) # ( !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[2]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[0]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X19_Y6_N30
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \Mux2~0_combout\ & ( (!\shamt[4]~input_o\ & (!\shamt[2]~input_o\ & !\shamt[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux30~0_combout\);

-- Location: LABCELL_X16_Y5_N9
\Mux92~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~21_combout\ = ( \inputB[0]~input_o\ & ( (\inputA[1]~input_o\) # (\inputB[2]~input_o\) ) ) # ( !\inputB[0]~input_o\ & ( (\inputB[2]~input_o\ & !\inputA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_inputB[0]~input_o\,
	combout => \Mux92~21_combout\);

-- Location: LABCELL_X16_Y5_N24
\Mux101~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux101~0_combout\ = ( !\inputA[2]~input_o\ & ( \Mux92~14_combout\ & ( (!\inputA[1]~input_o\ & (((\Mux103~0_combout\ & \Mux92~21_combout\)) # (\inputA[0]~input_o\))) # (\inputA[1]~input_o\ & (((\Mux103~0_combout\ & \Mux92~21_combout\)))) ) ) ) # ( 
-- !\inputA[2]~input_o\ & ( !\Mux92~14_combout\ & ( (\Mux103~0_combout\ & \Mux92~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000000100010001011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux103~0_combout\,
	datad => \ALT_INV_Mux92~21_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux92~14_combout\,
	combout => \Mux101~0_combout\);

-- Location: LABCELL_X14_Y6_N12
\Mux107~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux107~5_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputB[2]~input_o\ & (((\inputA[2]~input_o\))))) # (\aluControl[3]~input_o\ & (((\Mux30~0_combout\)))) ) ) # ( \aluControl[1]~input_o\ & ( (((!\aluControl[3]~input_o\ & 
-- (\Add0~37_sumout\)) # (\aluControl[3]~input_o\ & ((\Mux101~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110011000011110000000000000101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_Add0~37_sumout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux101~0_combout\,
	datag => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux107~5_combout\);

-- Location: LABCELL_X17_Y6_N18
\Mux138~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~27_combout\ = ( \Mux138~26_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~22_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~14_combout\))) ) ) ) # ( !\Mux138~26_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & 
-- (\Mux138~22_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~14_combout\))) ) ) ) # ( \Mux138~26_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\) # (\Mux138~18_combout\) ) ) ) # ( !\Mux138~26_combout\ & ( !\inputA[1]~input_o\ & ( 
-- (\Mux138~18_combout\ & \inputA[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~18_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~22_combout\,
	datad => \ALT_INV_Mux138~14_combout\,
	datae => \ALT_INV_Mux138~26_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~27_combout\);

-- Location: LABCELL_X20_Y4_N48
\Mux138~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~25_combout\ = ( \Mux138~12_combout\ & ( \inputA[1]~input_o\ & ( (\Mux138~20_combout\) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux138~12_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & \Mux138~20_combout\) ) ) ) # ( \Mux138~12_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~24_combout\))) # (\inputA[2]~input_o\ & (\Mux138~16_combout\)) ) ) ) # ( !\Mux138~12_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~24_combout\))) # (\inputA[2]~input_o\ & 
-- (\Mux138~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux138~16_combout\,
	datac => \ALT_INV_Mux138~20_combout\,
	datad => \ALT_INV_Mux138~24_combout\,
	datae => \ALT_INV_Mux138~12_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~25_combout\);

-- Location: LABCELL_X14_Y6_N51
\Mux107~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux107~2_combout\ = ( \Mux138~25_combout\ & ( (\aluControl[1]~input_o\ & (\aluControl[3]~input_o\ & ((\inputA[0]~input_o\) # (\Mux138~27_combout\)))) ) ) # ( !\Mux138~25_combout\ & ( (\aluControl[1]~input_o\ & (\aluControl[3]~input_o\ & 
-- (\Mux138~27_combout\ & !\inputA[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Mux138~27_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_Mux138~25_combout\,
	combout => \Mux107~2_combout\);

-- Location: MLABCELL_X18_Y5_N48
\Mux34~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = ( \inputB[29]~input_o\ & ( \inputB[26]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\inputB[27]~input_o\))) # (\shamt[1]~input_o\ & (((\inputB[28]~input_o\) # (\shamt[0]~input_o\)))) ) ) ) # ( !\inputB[29]~input_o\ & 
-- ( \inputB[26]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\inputB[27]~input_o\))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\ & \inputB[28]~input_o\)))) ) ) ) # ( \inputB[29]~input_o\ & ( !\inputB[26]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & (\inputB[27]~input_o\ & (\shamt[0]~input_o\))) # (\shamt[1]~input_o\ & (((\inputB[28]~input_o\) # (\shamt[0]~input_o\)))) ) ) ) # ( !\inputB[29]~input_o\ & ( !\inputB[26]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[27]~input_o\ & 
-- (\shamt[0]~input_o\))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\ & \inputB[28]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[27]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	datae => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \Mux34~5_combout\);

-- Location: LABCELL_X7_Y6_N12
\Mux34~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = ( \inputB[25]~input_o\ & ( \inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\) # (\inputB[24]~input_o\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\inputB[23]~input_o\))) ) ) ) # ( !\inputB[25]~input_o\ & 
-- ( \inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\) # (\inputB[24]~input_o\)))) # (\shamt[0]~input_o\ & (\inputB[23]~input_o\ & ((!\shamt[1]~input_o\)))) ) ) ) # ( \inputB[25]~input_o\ & ( !\inputB[22]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (((\inputB[24]~input_o\ & \shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\inputB[23]~input_o\))) ) ) ) # ( !\inputB[25]~input_o\ & ( !\inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & (((\inputB[24]~input_o\ 
-- & \shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (\inputB[23]~input_o\ & ((!\shamt[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \Mux34~3_combout\);

-- Location: LABCELL_X14_Y5_N9
\Mux34~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & \inputB[31]~input_o\) ) ) # ( !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & \inputB[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux34~4_combout\);

-- Location: LABCELL_X19_Y5_N48
\Mux34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = ( \inputB[20]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[19]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[21]~input_o\)) ) ) ) # ( !\inputB[20]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- ((\inputB[19]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[21]~input_o\)) ) ) ) # ( \inputB[20]~input_o\ & ( !\shamt[0]~input_o\ & ( (\shamt[1]~input_o\) # (\inputB[18]~input_o\) ) ) ) # ( !\inputB[20]~input_o\ & ( !\shamt[0]~input_o\ & ( 
-- (\inputB[18]~input_o\ & !\shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux34~2_combout\);

-- Location: LABCELL_X19_Y6_N24
\Mux38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = ( \shamt[2]~input_o\ & ( \Mux34~2_combout\ & ( (!\shamt[3]~input_o\ & (\Mux34~3_combout\)) # (\shamt[3]~input_o\ & ((\Mux34~4_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux34~2_combout\ & ( (!\shamt[3]~input_o\) # 
-- (\Mux34~5_combout\) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux34~2_combout\ & ( (!\shamt[3]~input_o\ & (\Mux34~3_combout\)) # (\shamt[3]~input_o\ & ((\Mux34~4_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux34~2_combout\ & ( (\Mux34~5_combout\ & 
-- \shamt[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~5_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux34~3_combout\,
	datad => \ALT_INV_Mux34~4_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux34~2_combout\,
	combout => \Mux38~1_combout\);

-- Location: LABCELL_X16_Y8_N30
\Mux34~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~12_combout\ = ( \inputB[9]~input_o\ & ( \inputB[7]~input_o\ & ( ((!\shamt[1]~input_o\ & ((\inputB[6]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[8]~input_o\))) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[9]~input_o\ & ( \inputB[7]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\inputB[6]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[8]~input_o\)))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)))) ) ) ) # ( \inputB[9]~input_o\ & ( !\inputB[7]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- ((!\shamt[1]~input_o\ & ((\inputB[6]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[8]~input_o\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) ) ) ) # ( !\inputB[9]~input_o\ & ( !\inputB[7]~input_o\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & 
-- ((\inputB[6]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[6]~input_o\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputB[7]~input_o\,
	combout => \Mux34~12_combout\);

-- Location: LABCELL_X16_Y7_N54
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \shamt[1]~input_o\ & ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[12]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[13]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[11]~input_o\ & ( (\inputB[10]~input_o\) # 
-- (\shamt[0]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[12]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[13]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[11]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & \inputB[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[13]~input_o\,
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[10]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LABCELL_X16_Y7_N36
\Mux34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = ( \inputB[17]~input_o\ & ( \inputB[14]~input_o\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)) # (\inputB[16]~input_o\))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\) # (\inputB[15]~input_o\)))) ) ) ) # ( !\inputB[17]~input_o\ & 
-- ( \inputB[14]~input_o\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)) # (\inputB[16]~input_o\))) # (\shamt[0]~input_o\ & (((\inputB[15]~input_o\ & !\shamt[1]~input_o\)))) ) ) ) # ( \inputB[17]~input_o\ & ( !\inputB[14]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (\inputB[16]~input_o\ & ((\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\) # (\inputB[15]~input_o\)))) ) ) ) # ( !\inputB[17]~input_o\ & ( !\inputB[14]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[16]~input_o\ & 
-- ((\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (((\inputB[15]~input_o\ & !\shamt[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[16]~input_o\,
	datac => \ALT_INV_inputB[15]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputB[14]~input_o\,
	combout => \Mux34~1_combout\);

-- Location: LABCELL_X17_Y7_N6
\Mux34~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~15_combout\ = ( \inputB[5]~input_o\ & ( \inputB[3]~input_o\ & ( ((!\shamt[1]~input_o\ & ((\inputB[2]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[4]~input_o\))) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[5]~input_o\ & ( \inputB[3]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\inputB[2]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[4]~input_o\)))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)))) ) ) ) # ( \inputB[5]~input_o\ & ( !\inputB[3]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- ((!\shamt[1]~input_o\ & ((\inputB[2]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[4]~input_o\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) ) ) ) # ( !\inputB[5]~input_o\ & ( !\inputB[3]~input_o\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & 
-- ((\inputB[2]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[5]~input_o\,
	dataf => \ALT_INV_inputB[3]~input_o\,
	combout => \Mux34~15_combout\);

-- Location: MLABCELL_X18_Y7_N12
\Mux38~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = ( \Mux34~15_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & (\Mux34~0_combout\)) # (\shamt[2]~input_o\ & ((\Mux34~1_combout\))) ) ) ) # ( !\Mux34~15_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & 
-- (\Mux34~0_combout\)) # (\shamt[2]~input_o\ & ((\Mux34~1_combout\))) ) ) ) # ( \Mux34~15_combout\ & ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\) # (\Mux34~12_combout\) ) ) ) # ( !\Mux34~15_combout\ & ( !\shamt[3]~input_o\ & ( (\Mux34~12_combout\ & 
-- \shamt[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~12_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux34~0_combout\,
	datad => \ALT_INV_Mux34~1_combout\,
	datae => \ALT_INV_Mux34~15_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux38~2_combout\);

-- Location: LABCELL_X14_Y6_N42
\Mux107~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux107~1_combout\ = ( \shamt[4]~input_o\ & ( \Mux38~2_combout\ & ( (!\aluControl[1]~input_o\ & ((!\aluControl[3]~input_o\ & (!\Mux107~0_combout\)) # (\aluControl[3]~input_o\ & ((\Mux38~1_combout\))))) ) ) ) # ( !\shamt[4]~input_o\ & ( \Mux38~2_combout\ & 
-- ( (!\aluControl[1]~input_o\ & ((!\Mux107~0_combout\) # (\aluControl[3]~input_o\))) ) ) ) # ( \shamt[4]~input_o\ & ( !\Mux38~2_combout\ & ( (!\aluControl[1]~input_o\ & ((!\aluControl[3]~input_o\ & (!\Mux107~0_combout\)) # (\aluControl[3]~input_o\ & 
-- ((\Mux38~1_combout\))))) ) ) ) # ( !\shamt[4]~input_o\ & ( !\Mux38~2_combout\ & ( (!\Mux107~0_combout\ & (!\aluControl[1]~input_o\ & !\aluControl[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000011000010100000111100001010000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux107~0_combout\,
	datab => \ALT_INV_Mux38~1_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_Mux38~2_combout\,
	combout => \Mux107~1_combout\);

-- Location: LABCELL_X14_Y6_N18
\Mux107~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux107~4_combout\ = ( !\aluControl[2]~input_o\ & ( \aluControl[0]~input_o\ & ( (\Mux107~1_combout\) # (\Mux107~2_combout\) ) ) ) # ( \aluControl[2]~input_o\ & ( !\aluControl[0]~input_o\ & ( \Mux107~3_combout\ ) ) ) # ( !\aluControl[2]~input_o\ & ( 
-- !\aluControl[0]~input_o\ & ( (\Mux107~5_combout\) # (\Mux107~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111010101010101010100001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux107~3_combout\,
	datab => \ALT_INV_Mux107~5_combout\,
	datac => \ALT_INV_Mux107~2_combout\,
	datad => \ALT_INV_Mux107~1_combout\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux107~4_combout\);

-- Location: MLABCELL_X13_Y6_N27
\res[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(2) = ( \Mux107~4_combout\ & ( (!\Mux160~0_combout\) # (res(2)) ) ) # ( !\Mux107~4_combout\ & ( (\Mux160~0_combout\ & res(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux160~0_combout\,
	datad => ALT_INV_res(2),
	dataf => \ALT_INV_Mux107~4_combout\,
	combout => res(2));

-- Location: LABCELL_X17_Y7_N48
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \shamt[1]~input_o\ & ( \shamt[0]~input_o\ & ( \inputB[0]~input_o\ ) ) ) # ( !\shamt[1]~input_o\ & ( \shamt[0]~input_o\ & ( \inputB[2]~input_o\ ) ) ) # ( \shamt[1]~input_o\ & ( !\shamt[0]~input_o\ & ( \inputB[1]~input_o\ ) ) ) # ( 
-- !\shamt[1]~input_o\ & ( !\shamt[0]~input_o\ & ( \inputB[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X14_Y5_N42
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \Mux21~0_combout\ & ( (!\shamt[2]~input_o\ & (!\shamt[4]~input_o\ & !\shamt[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_Mux21~0_combout\,
	combout => \Mux29~0_combout\);

-- Location: LABCELL_X16_Y5_N21
\Mux92~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~20_combout\ = ( \inputB[1]~input_o\ & ( (\inputB[3]~input_o\) # (\inputA[1]~input_o\) ) ) # ( !\inputB[1]~input_o\ & ( (!\inputA[1]~input_o\ & \inputB[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	combout => \Mux92~20_combout\);

-- Location: MLABCELL_X18_Y4_N18
\Mux105~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux105~2_combout\ = ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & !\inputA[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux105~2_combout\);

-- Location: LABCELL_X16_Y5_N18
\Mux100~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux100~0_combout\ = ( \Mux92~21_combout\ & ( (\Mux105~2_combout\ & ((\Mux92~20_combout\) # (\inputA[0]~input_o\))) ) ) # ( !\Mux92~21_combout\ & ( (!\inputA[0]~input_o\ & (\Mux92~20_combout\ & \Mux105~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux92~20_combout\,
	datad => \ALT_INV_Mux105~2_combout\,
	dataf => \ALT_INV_Mux92~21_combout\,
	combout => \Mux100~0_combout\);

-- Location: LABCELL_X7_Y5_N30
\Mux106~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux106~5_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & (((\inputB[3]~input_o\ & (\inputA[3]~input_o\))))) # (\aluControl[3]~input_o\ & (\Mux29~0_combout\)) ) ) # ( \aluControl[1]~input_o\ & ( (((!\aluControl[3]~input_o\ & 
-- (\Add0~33_sumout\)) # (\aluControl[3]~input_o\ & ((\Mux100~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101000011110000000000000011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~0_combout\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux100~0_combout\,
	datag => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux106~5_combout\);

-- Location: MLABCELL_X18_Y4_N30
\Mux106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux106~0_combout\ = ( !\inputB[3]~input_o\ & ( !\inputA[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[3]~input_o\,
	combout => \Mux106~0_combout\);

-- Location: LABCELL_X14_Y6_N9
\Mux106~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux106~3_combout\ = ( \Mux106~0_combout\ & ( (\Mux70~0_combout\ & ((!\aluControl[1]~input_o\) # (\Add0~33_sumout\))) ) ) # ( !\Mux106~0_combout\ & ( (\aluControl[1]~input_o\ & (\Mux70~0_combout\ & \Add0~33_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux70~0_combout\,
	datad => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Mux106~0_combout\,
	combout => \Mux106~3_combout\);

-- Location: MLABCELL_X18_Y6_N6
\Mux138~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~23_combout\ = ( \Mux138~18_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\) # (\Mux138~10_combout\) ) ) ) # ( !\Mux138~18_combout\ & ( \inputA[1]~input_o\ & ( (\inputA[2]~input_o\ & \Mux138~10_combout\) ) ) ) # ( \Mux138~18_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~22_combout\))) # (\inputA[2]~input_o\ & (\Mux138~14_combout\)) ) ) ) # ( !\Mux138~18_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~22_combout\))) # (\inputA[2]~input_o\ & 
-- (\Mux138~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~14_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~22_combout\,
	datad => \ALT_INV_Mux138~10_combout\,
	datae => \ALT_INV_Mux138~18_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~23_combout\);

-- Location: LABCELL_X14_Y6_N6
\Mux106~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux106~2_combout\ = ( \Mux138~25_combout\ & ( (\aluControl[1]~input_o\ & (\aluControl[3]~input_o\ & ((!\inputA[0]~input_o\) # (\Mux138~23_combout\)))) ) ) # ( !\Mux138~25_combout\ & ( (\aluControl[1]~input_o\ & (\aluControl[3]~input_o\ & 
-- (\Mux138~23_combout\ & \inputA[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100010001000000010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Mux138~23_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_Mux138~25_combout\,
	combout => \Mux106~2_combout\);

-- Location: LABCELL_X17_Y7_N36
\Mux61~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~16_combout\ = ( \inputB[3]~input_o\ & ( \inputB[6]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\inputB[4]~input_o\))) # (\shamt[1]~input_o\ & (((\inputB[5]~input_o\) # (\shamt[0]~input_o\)))) ) ) ) # ( !\inputB[3]~input_o\ & ( 
-- \inputB[6]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[4]~input_o\ & (\shamt[0]~input_o\))) # (\shamt[1]~input_o\ & (((\inputB[5]~input_o\) # (\shamt[0]~input_o\)))) ) ) ) # ( \inputB[3]~input_o\ & ( !\inputB[6]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- (((!\shamt[0]~input_o\)) # (\inputB[4]~input_o\))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\ & \inputB[5]~input_o\)))) ) ) ) # ( !\inputB[3]~input_o\ & ( !\inputB[6]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[4]~input_o\ & (\shamt[0]~input_o\))) # 
-- (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\ & \inputB[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \Mux61~16_combout\);

-- Location: LABCELL_X16_Y7_N24
\Mux61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = ( \inputB[14]~input_o\ & ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[13]~input_o\)))) # (\shamt[0]~input_o\ & (((\inputB[12]~input_o\)) # (\shamt[1]~input_o\))) ) ) ) # ( !\inputB[14]~input_o\ & 
-- ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[13]~input_o\)))) # (\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & ((\inputB[12]~input_o\)))) ) ) ) # ( \inputB[14]~input_o\ & ( !\inputB[11]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (\shamt[1]~input_o\ & (\inputB[13]~input_o\))) # (\shamt[0]~input_o\ & (((\inputB[12]~input_o\)) # (\shamt[1]~input_o\))) ) ) ) # ( !\inputB[14]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & (\shamt[1]~input_o\ & 
-- (\inputB[13]~input_o\))) # (\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & ((\inputB[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	datae => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux61~0_combout\);

-- Location: LABCELL_X16_Y8_N24
\Mux61~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~13_combout\ = ( \inputB[7]~input_o\ & ( \inputB[8]~input_o\ & ( (!\shamt[1]~input_o\) # ((!\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[10]~input_o\))) ) ) ) # ( !\inputB[7]~input_o\ & ( \inputB[8]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & (\shamt[0]~input_o\)) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[10]~input_o\)))) ) ) ) # ( \inputB[7]~input_o\ & ( !\inputB[8]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- (!\shamt[0]~input_o\)) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[10]~input_o\)))) ) ) ) # ( !\inputB[7]~input_o\ & ( !\inputB[8]~input_o\ & ( (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & 
-- ((\inputB[9]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputB[8]~input_o\,
	combout => \Mux61~13_combout\);

-- Location: LABCELL_X19_Y5_N12
\Mux61~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = ( \inputB[18]~input_o\ & ( \shamt[1]~input_o\ & ( (\inputB[17]~input_o\) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[18]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & \inputB[17]~input_o\) ) ) ) # ( \inputB[18]~input_o\ & ( 
-- !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[15]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[16]~input_o\))) ) ) ) # ( !\inputB[18]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[15]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[15]~input_o\,
	datac => \ALT_INV_inputB[16]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	datae => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \Mux61~1_combout\);

-- Location: LABCELL_X12_Y8_N24
\Mux61~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~17_combout\ = ( \Mux61~1_combout\ & ( \shamt[2]~input_o\ & ( (\Mux61~13_combout\) # (\shamt[3]~input_o\) ) ) ) # ( !\Mux61~1_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \Mux61~13_combout\) ) ) ) # ( \Mux61~1_combout\ & ( 
-- !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux61~16_combout\)) # (\shamt[3]~input_o\ & ((\Mux61~0_combout\))) ) ) ) # ( !\Mux61~1_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux61~16_combout\)) # (\shamt[3]~input_o\ & 
-- ((\Mux61~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_Mux61~16_combout\,
	datac => \ALT_INV_Mux61~0_combout\,
	datad => \ALT_INV_Mux61~13_combout\,
	datae => \ALT_INV_Mux61~1_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux61~17_combout\);

-- Location: LABCELL_X12_Y4_N12
\Mux61~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = ( \inputB[26]~input_o\ & ( \inputB[24]~input_o\ & ( ((!\shamt[1]~input_o\ & ((\inputB[23]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[25]~input_o\))) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[26]~input_o\ & ( \inputB[24]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & (((\inputB[23]~input_o\) # (\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[25]~input_o\ & (!\shamt[0]~input_o\))) ) ) ) # ( \inputB[26]~input_o\ & ( !\inputB[24]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\ & 
-- \inputB[23]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)) # (\inputB[25]~input_o\))) ) ) ) # ( !\inputB[26]~input_o\ & ( !\inputB[24]~input_o\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\inputB[23]~input_o\))) # 
-- (\shamt[1]~input_o\ & (\inputB[25]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[25]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[23]~input_o\,
	datae => \ALT_INV_inputB[26]~input_o\,
	dataf => \ALT_INV_inputB[24]~input_o\,
	combout => \Mux61~3_combout\);

-- Location: LABCELL_X19_Y5_N30
\Mux61~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = ( \inputB[20]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\) # (\inputB[22]~input_o\) ) ) ) # ( !\inputB[20]~input_o\ & ( \shamt[0]~input_o\ & ( (\shamt[1]~input_o\ & \inputB[22]~input_o\) ) ) ) # ( \inputB[20]~input_o\ & ( 
-- !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[19]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[21]~input_o\)) ) ) ) # ( !\inputB[20]~input_o\ & ( !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[19]~input_o\))) # (\shamt[1]~input_o\ & 
-- (\inputB[21]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_inputB[22]~input_o\,
	datae => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux61~2_combout\);

-- Location: LABCELL_X14_Y5_N36
\Mux61~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = ( \inputB[31]~input_o\ & ( (!\shamt[0]~input_o\ & !\shamt[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux61~4_combout\);

-- Location: LABCELL_X14_Y5_N30
\Mux61~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = ( \shamt[1]~input_o\ & ( \inputB[29]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[30]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[29]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[27]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[28]~input_o\))) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[29]~input_o\ & ( (\shamt[0]~input_o\ & \inputB[30]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[29]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[27]~input_o\)) # 
-- (\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000001010000010100100010011101111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[27]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux61~5_combout\);

-- Location: LABCELL_X14_Y5_N48
\Mux61~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~15_combout\ = ( \shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux61~4_combout\ ) ) ) # ( !\shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux61~3_combout\ ) ) ) # ( \shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux61~5_combout\ ) ) ) # ( 
-- !\shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux61~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~3_combout\,
	datab => \ALT_INV_Mux61~2_combout\,
	datac => \ALT_INV_Mux61~4_combout\,
	datad => \ALT_INV_Mux61~5_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux61~15_combout\);

-- Location: LABCELL_X12_Y8_N42
\Mux106~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux106~1_combout\ = ( \shamt[4]~input_o\ & ( \Mux106~0_combout\ & ( (\aluControl[3]~input_o\ & (!\aluControl[1]~input_o\ & \Mux61~15_combout\)) ) ) ) # ( !\shamt[4]~input_o\ & ( \Mux106~0_combout\ & ( (\aluControl[3]~input_o\ & (!\aluControl[1]~input_o\ 
-- & \Mux61~17_combout\)) ) ) ) # ( \shamt[4]~input_o\ & ( !\Mux106~0_combout\ & ( (!\aluControl[1]~input_o\ & ((!\aluControl[3]~input_o\) # (\Mux61~15_combout\))) ) ) ) # ( !\shamt[4]~input_o\ & ( !\Mux106~0_combout\ & ( (!\aluControl[1]~input_o\ & 
-- ((!\aluControl[3]~input_o\) # (\Mux61~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100010001100110000000100000001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux61~17_combout\,
	datad => \ALT_INV_Mux61~15_combout\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_Mux106~0_combout\,
	combout => \Mux106~1_combout\);

-- Location: LABCELL_X14_Y6_N27
\Mux106~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux106~4_combout\ = ( !\aluControl[2]~input_o\ & ( \aluControl[0]~input_o\ & ( (\Mux106~1_combout\) # (\Mux106~2_combout\) ) ) ) # ( \aluControl[2]~input_o\ & ( !\aluControl[0]~input_o\ & ( \Mux106~3_combout\ ) ) ) # ( !\aluControl[2]~input_o\ & ( 
-- !\aluControl[0]~input_o\ & ( (\Mux106~3_combout\) # (\Mux106~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111001100110011001100001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux106~5_combout\,
	datab => \ALT_INV_Mux106~3_combout\,
	datac => \ALT_INV_Mux106~2_combout\,
	datad => \ALT_INV_Mux106~1_combout\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux106~4_combout\);

-- Location: LABCELL_X12_Y6_N57
\res[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(3) = ( \Mux160~0_combout\ & ( res(3) ) ) # ( !\Mux160~0_combout\ & ( \Mux106~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux106~4_combout\,
	datad => ALT_INV_res(3),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(3));

-- Location: LABCELL_X10_Y6_N45
\Mux108~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux108~2_combout\ = ( \aluControl[1]~input_o\ & ( (\aluControl[3]~input_o\ & ((!\inputA[0]~input_o\ & (\Mux138~29_combout\)) # (\inputA[0]~input_o\ & ((\Mux138~27_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001110000010000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~29_combout\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_Mux138~27_combout\,
	dataf => \ALT_INV_aluControl[1]~input_o\,
	combout => \Mux108~2_combout\);

-- Location: MLABCELL_X9_Y4_N51
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( !\shamt[4]~input_o\ & ( (!\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & \Mux21~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_Mux21~4_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: MLABCELL_X13_Y4_N21
\Mux102~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux102~0_combout\ = ( !\inputA[1]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & !\inputA[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux102~0_combout\);

-- Location: LABCELL_X10_Y6_N24
\Mux102~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux102~1_combout\ = ( \inputB[0]~input_o\ & ( (\Mux102~0_combout\ & ((\inputB[1]~input_o\) # (\inputA[0]~input_o\))) ) ) # ( !\inputB[0]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux102~0_combout\ & \inputB[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux102~0_combout\,
	datad => \ALT_INV_inputB[1]~input_o\,
	dataf => \ALT_INV_inputB[0]~input_o\,
	combout => \Mux102~1_combout\);

-- Location: LABCELL_X10_Y6_N12
\Mux108~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux108~5_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & (((\inputB[1]~input_o\ & (\inputA[1]~input_o\))))) # (\aluControl[3]~input_o\ & (\Mux31~0_combout\)) ) ) # ( \aluControl[1]~input_o\ & ( (((!\aluControl[3]~input_o\ & 
-- (\Add0~41_sumout\)) # (\aluControl[3]~input_o\ & ((\Mux102~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101000011110000000000000011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux31~0_combout\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux102~1_combout\,
	datag => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux108~5_combout\);

-- Location: LABCELL_X12_Y5_N33
\Mux108~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = ( !\inputA[1]~input_o\ & ( !\inputB[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux108~0_combout\);

-- Location: LABCELL_X10_Y6_N54
\Mux108~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux108~3_combout\ = ( \Add0~41_sumout\ & ( (\Mux70~0_combout\ & ((\aluControl[1]~input_o\) # (\Mux108~0_combout\))) ) ) # ( !\Add0~41_sumout\ & ( (\Mux108~0_combout\ & (\Mux70~0_combout\ & !\aluControl[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux108~0_combout\,
	datac => \ALT_INV_Mux70~0_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \Mux108~3_combout\);

-- Location: LABCELL_X17_Y7_N12
\Mux61~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~18_combout\ = ( \inputB[3]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[2]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[4]~input_o\)) ) ) ) # ( !\inputB[3]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- ((\inputB[2]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[4]~input_o\)) ) ) ) # ( \inputB[3]~input_o\ & ( !\shamt[0]~input_o\ & ( (\shamt[1]~input_o\) # (\inputB[1]~input_o\) ) ) ) # ( !\inputB[3]~input_o\ & ( !\shamt[0]~input_o\ & ( (\inputB[1]~input_o\ 
-- & !\shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[4]~input_o\,
	datad => \ALT_INV_inputB[2]~input_o\,
	datae => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux61~18_combout\);

-- Location: MLABCELL_X18_Y7_N36
\Mux63~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux63~2_combout\ = ( \Mux61~18_combout\ & ( \Mux61~8_combout\ & ( (!\shamt[2]~input_o\ & (((!\shamt[3]~input_o\)) # (\Mux61~7_combout\))) # (\shamt[2]~input_o\ & (((\shamt[3]~input_o\) # (\Mux61~14_combout\)))) ) ) ) # ( !\Mux61~18_combout\ & ( 
-- \Mux61~8_combout\ & ( (!\shamt[2]~input_o\ & (\Mux61~7_combout\ & ((\shamt[3]~input_o\)))) # (\shamt[2]~input_o\ & (((\shamt[3]~input_o\) # (\Mux61~14_combout\)))) ) ) ) # ( \Mux61~18_combout\ & ( !\Mux61~8_combout\ & ( (!\shamt[2]~input_o\ & 
-- (((!\shamt[3]~input_o\)) # (\Mux61~7_combout\))) # (\shamt[2]~input_o\ & (((\Mux61~14_combout\ & !\shamt[3]~input_o\)))) ) ) ) # ( !\Mux61~18_combout\ & ( !\Mux61~8_combout\ & ( (!\shamt[2]~input_o\ & (\Mux61~7_combout\ & ((\shamt[3]~input_o\)))) # 
-- (\shamt[2]~input_o\ & (((\Mux61~14_combout\ & !\shamt[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~7_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux61~14_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_Mux61~18_combout\,
	dataf => \ALT_INV_Mux61~8_combout\,
	combout => \Mux63~2_combout\);

-- Location: MLABCELL_X18_Y7_N6
\Mux63~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = ( \Mux61~10_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & (\Mux61~12_combout\)) # (\shamt[2]~input_o\ & ((\Mux61~11_combout\))) ) ) ) # ( !\Mux61~10_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & 
-- (\Mux61~12_combout\)) # (\shamt[2]~input_o\ & ((\Mux61~11_combout\))) ) ) ) # ( \Mux61~10_combout\ & ( !\shamt[3]~input_o\ & ( (\shamt[2]~input_o\) # (\Mux61~9_combout\) ) ) ) # ( !\Mux61~10_combout\ & ( !\shamt[3]~input_o\ & ( (\Mux61~9_combout\ & 
-- !\shamt[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~9_combout\,
	datab => \ALT_INV_Mux61~12_combout\,
	datac => \ALT_INV_Mux61~11_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	datae => \ALT_INV_Mux61~10_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux63~1_combout\);

-- Location: MLABCELL_X9_Y7_N12
\Mux108~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux108~1_combout\ = ( !\aluControl[1]~input_o\ & ( \shamt[4]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\Mux108~0_combout\))) # (\aluControl[3]~input_o\ & (\Mux63~1_combout\)) ) ) ) # ( !\aluControl[1]~input_o\ & ( !\shamt[4]~input_o\ & ( 
-- (!\aluControl[3]~input_o\ & ((!\Mux108~0_combout\))) # (\aluControl[3]~input_o\ & (\Mux63~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101000000000000000011110011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux63~2_combout\,
	datab => \ALT_INV_Mux63~1_combout\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_Mux108~0_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux108~1_combout\);

-- Location: LABCELL_X10_Y6_N36
\Mux108~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux108~4_combout\ = ( \Mux108~3_combout\ & ( \Mux108~1_combout\ & ( (!\aluControl[0]~input_o\) # (!\aluControl[2]~input_o\) ) ) ) # ( !\Mux108~3_combout\ & ( \Mux108~1_combout\ & ( (!\aluControl[2]~input_o\ & ((\Mux108~5_combout\) # 
-- (\aluControl[0]~input_o\))) ) ) ) # ( \Mux108~3_combout\ & ( !\Mux108~1_combout\ & ( (!\aluControl[0]~input_o\) # ((\Mux108~2_combout\ & !\aluControl[2]~input_o\)) ) ) ) # ( !\Mux108~3_combout\ & ( !\Mux108~1_combout\ & ( (!\aluControl[2]~input_o\ & 
-- ((!\aluControl[0]~input_o\ & ((\Mux108~5_combout\))) # (\aluControl[0]~input_o\ & (\Mux108~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000101110101011101001010000111100001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_Mux108~2_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_Mux108~5_combout\,
	datae => \ALT_INV_Mux108~3_combout\,
	dataf => \ALT_INV_Mux108~1_combout\,
	combout => \Mux108~4_combout\);

-- Location: MLABCELL_X13_Y5_N42
\res[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(1) = ( \Mux160~0_combout\ & ( res(1) ) ) # ( !\Mux160~0_combout\ & ( res(1) & ( \Mux108~4_combout\ ) ) ) # ( !\Mux160~0_combout\ & ( !res(1) & ( \Mux108~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux108~4_combout\,
	datae => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(1),
	combout => res(1));

-- Location: MLABCELL_X13_Y7_N51
\Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & \inputB[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LABCELL_X17_Y7_N30
\Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \inputB[2]~input_o\ & ( \inputB[4]~input_o\ & ( (!\shamt[0]~input_o\) # ((!\shamt[1]~input_o\ & (\inputB[3]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[1]~input_o\)))) ) ) ) # ( !\inputB[2]~input_o\ & ( \inputB[4]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\inputB[3]~input_o\))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\ & \inputB[1]~input_o\)))) ) ) ) # ( \inputB[2]~input_o\ & ( !\inputB[4]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[3]~input_o\ & 
-- (\shamt[0]~input_o\))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[1]~input_o\)))) ) ) ) # ( !\inputB[2]~input_o\ & ( !\inputB[4]~input_o\ & ( (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[3]~input_o\)) # (\shamt[1]~input_o\ & 
-- ((\inputB[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[1]~input_o\,
	datae => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputB[4]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X13_Y7_N24
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux2~4_combout\ ) ) ) # ( !\shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux2~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~4_combout\,
	datab => \ALT_INV_Mux2~3_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X16_Y5_N12
\Mux105~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux105~3_combout\ = ( \Mux4~0_combout\ & ( \Mux92~19_combout\ & ( (!\Mux104~4_combout\) # ((!\Mux104~5_combout\ & (\Mux92~20_combout\ & \Mux105~2_combout\))) ) ) ) # ( !\Mux4~0_combout\ & ( \Mux92~19_combout\ & ( (!\Mux104~5_combout\ & 
-- (\Mux104~4_combout\ & (\Mux92~20_combout\ & \Mux105~2_combout\))) # (\Mux104~5_combout\ & (!\Mux104~4_combout\)) ) ) ) # ( \Mux4~0_combout\ & ( !\Mux92~19_combout\ & ( (!\Mux104~5_combout\ & ((!\Mux104~4_combout\) # ((\Mux92~20_combout\ & 
-- \Mux105~2_combout\)))) ) ) ) # ( !\Mux4~0_combout\ & ( !\Mux92~19_combout\ & ( (!\Mux104~5_combout\ & (\Mux104~4_combout\ & (\Mux92~20_combout\ & \Mux105~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010100010001000101001000100010001101100110011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~5_combout\,
	datab => \ALT_INV_Mux104~4_combout\,
	datac => \ALT_INV_Mux92~20_combout\,
	datad => \ALT_INV_Mux105~2_combout\,
	datae => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Mux92~19_combout\,
	combout => \Mux105~3_combout\);

-- Location: MLABCELL_X13_Y6_N36
\Mux105~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux105~4_combout\ = ( \aluControl[3]~input_o\ & ( \inputB[4]~input_o\ & ( (!\Mux104~3_combout\ & \Mux105~3_combout\) ) ) ) # ( !\aluControl[3]~input_o\ & ( \inputB[4]~input_o\ & ( (!\Mux104~3_combout\ & ((\inputA[4]~input_o\))) # (\Mux104~3_combout\ & 
-- (\Add0~29_sumout\)) ) ) ) # ( \aluControl[3]~input_o\ & ( !\inputB[4]~input_o\ & ( (!\Mux104~3_combout\ & ((\Mux105~3_combout\))) # (\Mux104~3_combout\ & (!\inputA[4]~input_o\)) ) ) ) # ( !\aluControl[3]~input_o\ & ( !\inputB[4]~input_o\ & ( 
-- (\Add0~29_sumout\ & \Mux104~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000011001111110000110101001101010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_Mux104~3_combout\,
	datad => \ALT_INV_Mux105~3_combout\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_inputB[4]~input_o\,
	combout => \Mux105~4_combout\);

-- Location: MLABCELL_X13_Y8_N18
\Mux105~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux105~0_combout\ = ( \Mux34~8_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & (\Mux34~9_combout\)) # (\shamt[2]~input_o\ & ((\Mux34~10_combout\))) ) ) ) # ( !\Mux34~8_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & 
-- (\Mux34~9_combout\)) # (\shamt[2]~input_o\ & ((\Mux34~10_combout\))) ) ) ) # ( \Mux34~8_combout\ & ( !\shamt[3]~input_o\ & ( (\shamt[2]~input_o\) # (\Mux34~14_combout\) ) ) ) # ( !\Mux34~8_combout\ & ( !\shamt[3]~input_o\ & ( (\Mux34~14_combout\ & 
-- !\shamt[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~14_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux34~9_combout\,
	datad => \ALT_INV_Mux34~10_combout\,
	datae => \ALT_INV_Mux34~8_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux105~0_combout\);

-- Location: MLABCELL_X13_Y8_N24
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \Mux34~7_combout\ & ( (!\shamt[3]~input_o\ & (((\Mux34~11_combout\)) # (\shamt[2]~input_o\))) # (\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & ((\Mux34~6_combout\)))) ) ) # ( !\Mux34~7_combout\ & ( (!\shamt[2]~input_o\ & 
-- ((!\shamt[3]~input_o\ & (\Mux34~11_combout\)) # (\shamt[3]~input_o\ & ((\Mux34~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux34~11_combout\,
	datad => \ALT_INV_Mux34~6_combout\,
	dataf => \ALT_INV_Mux34~7_combout\,
	combout => \Mux36~0_combout\);

-- Location: MLABCELL_X18_Y6_N0
\Mux105~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux105~1_combout\ = ( \aluControl[1]~input_o\ & ( \Mux138~21_combout\ & ( (\Mux138~23_combout\) # (\Mux104~0_combout\) ) ) ) # ( !\aluControl[1]~input_o\ & ( \Mux138~21_combout\ & ( (!\Mux104~0_combout\ & (\Mux105~0_combout\)) # (\Mux104~0_combout\ & 
-- ((\Mux36~0_combout\))) ) ) ) # ( \aluControl[1]~input_o\ & ( !\Mux138~21_combout\ & ( (!\Mux104~0_combout\ & \Mux138~23_combout\) ) ) ) # ( !\aluControl[1]~input_o\ & ( !\Mux138~21_combout\ & ( (!\Mux104~0_combout\ & (\Mux105~0_combout\)) # 
-- (\Mux104~0_combout\ & ((\Mux36~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~0_combout\,
	datab => \ALT_INV_Mux105~0_combout\,
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_Mux138~23_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux138~21_combout\,
	combout => \Mux105~1_combout\);

-- Location: MLABCELL_X13_Y6_N54
\Mux105~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux105~5_combout\ = ( \Mux105~1_combout\ & ( \Mux104~1_combout\ & ( !\Mux104~2_combout\ ) ) ) # ( \Mux105~1_combout\ & ( !\Mux104~1_combout\ & ( (!\Mux104~2_combout\ & (\Mux105~4_combout\)) # (\Mux104~2_combout\ & (((\inputA[4]~input_o\) # 
-- (\inputB[4]~input_o\)))) ) ) ) # ( !\Mux105~1_combout\ & ( !\Mux104~1_combout\ & ( (!\Mux104~2_combout\ & (\Mux105~4_combout\)) # (\Mux104~2_combout\ & (((\inputA[4]~input_o\) # (\inputB[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101110111010001110111011100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux105~4_combout\,
	datab => \ALT_INV_Mux104~2_combout\,
	datac => \ALT_INV_inputB[4]~input_o\,
	datad => \ALT_INV_inputA[4]~input_o\,
	datae => \ALT_INV_Mux105~1_combout\,
	dataf => \ALT_INV_Mux104~1_combout\,
	combout => \Mux105~5_combout\);

-- Location: MLABCELL_X13_Y6_N42
\res[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(4) = ( res(4) & ( (\Mux160~0_combout\) # (\Mux105~5_combout\) ) ) # ( !res(4) & ( (\Mux105~5_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux105~5_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(4),
	combout => res(4));

-- Location: LABCELL_X14_Y6_N30
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !res(1) & ( !res(4) & ( (!res(0) & (!res(5) & (!res(2) & !res(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(0),
	datab => ALT_INV_res(5),
	datac => ALT_INV_res(2),
	datad => ALT_INV_res(3),
	datae => ALT_INV_res(1),
	dataf => ALT_INV_res(4),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X12_Y8_N12
\Mux57~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = ( \shamt[4]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux61~5_combout\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux61~0_combout\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux61~3_combout\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux61~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~3_combout\,
	datab => \ALT_INV_Mux61~13_combout\,
	datac => \ALT_INV_Mux61~0_combout\,
	datad => \ALT_INV_Mux61~5_combout\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux57~1_combout\);

-- Location: LABCELL_X14_Y5_N45
\Mux57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = ( \shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & \Mux61~4_combout\) ) ) # ( !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux61~1_combout\))) # (\shamt[2]~input_o\ & (\Mux61~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_Mux61~2_combout\,
	datac => \ALT_INV_Mux61~1_combout\,
	datad => \ALT_INV_Mux61~4_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LABCELL_X12_Y8_N18
\Mux70~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux70~1_combout\ = ( \Mux57~0_combout\ & ( \inputA[7]~input_o\ & ( (\aluControl[3]~input_o\ & (!\Mux57~1_combout\ & !\shamt[3]~input_o\)) ) ) ) # ( !\Mux57~0_combout\ & ( \inputA[7]~input_o\ & ( (\aluControl[3]~input_o\ & ((!\Mux57~1_combout\) # 
-- (\shamt[3]~input_o\))) ) ) ) # ( \Mux57~0_combout\ & ( !\inputA[7]~input_o\ & ( (!\aluControl[3]~input_o\ & (((!\inputB[7]~input_o\)))) # (\aluControl[3]~input_o\ & (!\Mux57~1_combout\ & (!\shamt[3]~input_o\))) ) ) ) # ( !\Mux57~0_combout\ & ( 
-- !\inputA[7]~input_o\ & ( (!\aluControl[3]~input_o\ & (((!\inputB[7]~input_o\)))) # (\aluControl[3]~input_o\ & ((!\Mux57~1_combout\) # ((\shamt[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111101000101111010100100000001000101010001010100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_Mux57~1_combout\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_inputB[7]~input_o\,
	datae => \ALT_INV_Mux57~0_combout\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	combout => \Mux70~1_combout\);

-- Location: LABCELL_X20_Y4_N3
\Mux138~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~2_combout\ = ( \inputB[29]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[13]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[21]~input_o\))))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\)) ) ) # ( !\inputB[29]~input_o\ & 
-- ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[13]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[21]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputB[21]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux138~2_combout\);

-- Location: LABCELL_X20_Y4_N12
\Mux138~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~17_combout\ = ( \Mux138~2_combout\ & ( \inputA[1]~input_o\ & ( (\inputA[2]~input_o\) # (\Mux138~12_combout\) ) ) ) # ( !\Mux138~2_combout\ & ( \inputA[1]~input_o\ & ( (\Mux138~12_combout\ & !\inputA[2]~input_o\) ) ) ) # ( \Mux138~2_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~16_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~0_combout\))) ) ) ) # ( !\Mux138~2_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~16_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux138~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~12_combout\,
	datab => \ALT_INV_Mux138~16_combout\,
	datac => \ALT_INV_Mux138~0_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_Mux138~2_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~17_combout\);

-- Location: LABCELL_X17_Y6_N12
\Mux138~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~7_combout\ = ( \inputB[30]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[14]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[22]~input_o\)))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\)) ) ) # ( !\inputB[30]~input_o\ & 
-- ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[14]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[22]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputB[30]~input_o\,
	combout => \Mux138~7_combout\);

-- Location: MLABCELL_X18_Y6_N18
\Mux138~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~15_combout\ = ( \Mux138~7_combout\ & ( \inputA[1]~input_o\ & ( (\inputA[2]~input_o\) # (\Mux138~10_combout\) ) ) ) # ( !\Mux138~7_combout\ & ( \inputA[1]~input_o\ & ( (\Mux138~10_combout\ & !\inputA[2]~input_o\) ) ) ) # ( \Mux138~7_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~14_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~5_combout\))) ) ) ) # ( !\Mux138~7_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~14_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux138~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~14_combout\,
	datab => \ALT_INV_Mux138~10_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux138~5_combout\,
	datae => \ALT_INV_Mux138~7_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~15_combout\);

-- Location: LABCELL_X12_Y8_N36
\Mux70~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux70~2_combout\ = ( \Mux138~15_combout\ & ( \inputA[0]~input_o\ & ( (!\aluControl[1]~input_o\ & ((!\Mux70~1_combout\))) # (\aluControl[1]~input_o\ & (\aluControl[3]~input_o\)) ) ) ) # ( !\Mux138~15_combout\ & ( \inputA[0]~input_o\ & ( 
-- (!\aluControl[1]~input_o\ & !\Mux70~1_combout\) ) ) ) # ( \Mux138~15_combout\ & ( !\inputA[0]~input_o\ & ( (!\aluControl[1]~input_o\ & (((!\Mux70~1_combout\)))) # (\aluControl[1]~input_o\ & (\aluControl[3]~input_o\ & ((\Mux138~17_combout\)))) ) ) ) # ( 
-- !\Mux138~15_combout\ & ( !\inputA[0]~input_o\ & ( (!\aluControl[1]~input_o\ & (((!\Mux70~1_combout\)))) # (\aluControl[1]~input_o\ & (\aluControl[3]~input_o\ & ((\Mux138~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011010001110000001101000111000000110000001101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux70~1_combout\,
	datad => \ALT_INV_Mux138~17_combout\,
	datae => \ALT_INV_Mux138~15_combout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \Mux70~2_combout\);

-- Location: MLABCELL_X18_Y4_N21
\Mux92~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~1_combout\ = ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & \inputB[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux92~1_combout\);

-- Location: MLABCELL_X18_Y4_N42
\Mux92~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~15_combout\ = ( \Mux92~14_combout\ & ( \inputA[1]~input_o\ & ( (\Mux92~3_combout\) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux92~14_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & \Mux92~3_combout\) ) ) ) # ( \Mux92~14_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux92~1_combout\)) # (\inputA[2]~input_o\ & ((\Mux92~10_combout\))) ) ) ) # ( !\Mux92~14_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux92~1_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux92~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~1_combout\,
	datab => \ALT_INV_Mux92~10_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux92~3_combout\,
	datae => \ALT_INV_Mux92~14_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~15_combout\);

-- Location: LABCELL_X17_Y5_N39
\Mux92~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~6_combout\ = ( \inputB[6]~input_o\ & ( !\inputA[3]~input_o\ & ( !\inputA[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datae => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux92~6_combout\);

-- Location: LABCELL_X16_Y5_N36
\Mux92~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~17_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~16_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~8_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~12_combout\ ) ) ) # ( 
-- !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~16_combout\,
	datab => \ALT_INV_Mux92~12_combout\,
	datac => \ALT_INV_Mux92~8_combout\,
	datad => \ALT_INV_Mux92~6_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~17_combout\);

-- Location: MLABCELL_X18_Y6_N27
\Mux96~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = ( \Mux92~17_combout\ & ( (\Mux92~15_combout\) # (\inputA[0]~input_o\) ) ) # ( !\Mux92~17_combout\ & ( (!\inputA[0]~input_o\ & \Mux92~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux92~15_combout\,
	dataf => \ALT_INV_Mux92~17_combout\,
	combout => \Mux96~0_combout\);

-- Location: LABCELL_X12_Y7_N21
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\inputB[6]~input_o\ $ (!\aluControl[2]~input_o\) ) + ( \inputA[6]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( !\inputB[6]~input_o\ $ (!\aluControl[2]~input_o\) ) + ( \inputA[6]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X12_Y7_N24
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \inputA[7]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[7]~input_o\) ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( \inputA[7]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[7]~input_o\) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputA[7]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X17_Y7_N54
\Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \shamt[1]~input_o\ & ( \inputB[6]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[5]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[4]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[6]~input_o\ & ( (\inputB[7]~input_o\) # 
-- (\shamt[0]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[6]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[5]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[4]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[6]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- \inputB[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[7]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LABCELL_X10_Y7_N51
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux21~0_combout\ & !\shamt[4]~input_o\)) ) ) # ( !\shamt[2]~input_o\ & ( (\Mux21~2_combout\ & (!\shamt[3]~input_o\ & !\shamt[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~2_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X12_Y8_N0
\Mux70~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux70~5_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & (((\inputB[7]~input_o\ & ((\inputA[7]~input_o\)))))) # (\aluControl[3]~input_o\ & ((((\Mux25~0_combout\))))) ) ) # ( \aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- (((\Add0~17_sumout\)))) # (\aluControl[3]~input_o\ & (\Mux96~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000110110001101100001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_Mux96~0_combout\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Mux25~0_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	datag => \ALT_INV_inputB[7]~input_o\,
	combout => \Mux70~5_combout\);

-- Location: LABCELL_X12_Y8_N9
\Mux70~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux70~3_combout\ = ( \Add0~17_sumout\ & ( (\Mux70~0_combout\ & (((!\inputA[7]~input_o\ & !\inputB[7]~input_o\)) # (\aluControl[1]~input_o\))) ) ) # ( !\Add0~17_sumout\ & ( (\Mux70~0_combout\ & (!\aluControl[1]~input_o\ & (!\inputA[7]~input_o\ & 
-- !\inputB[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001010001000100010101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux70~0_combout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_inputA[7]~input_o\,
	datad => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mux70~3_combout\);

-- Location: MLABCELL_X9_Y6_N45
\Mux70~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux70~4_combout\ = ( \aluControl[2]~input_o\ & ( (!\aluControl[0]~input_o\ & \Mux70~3_combout\) ) ) # ( !\aluControl[2]~input_o\ & ( (!\aluControl[0]~input_o\ & (((\Mux70~3_combout\) # (\Mux70~5_combout\)))) # (\aluControl[0]~input_o\ & 
-- (\Mux70~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110111011101000111011101110100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux70~2_combout\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux70~5_combout\,
	datad => \ALT_INV_Mux70~3_combout\,
	dataf => \ALT_INV_aluControl[2]~input_o\,
	combout => \Mux70~4_combout\);

-- Location: LABCELL_X10_Y6_N27
\res[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(7) = ( \Mux160~0_combout\ & ( res(7) ) ) # ( !\Mux160~0_combout\ & ( \Mux70~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux70~4_combout\,
	datad => ALT_INV_res(7),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(7));

-- Location: LABCELL_X19_Y4_N24
\Mux138~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~1_combout\ = ( \inputB[15]~input_o\ & ( \inputB[31]~input_o\ & ( (!\inputA[3]~input_o\) # ((\inputB[23]~input_o\ & !\inputA[4]~input_o\)) ) ) ) # ( !\inputB[15]~input_o\ & ( \inputB[31]~input_o\ & ( (!\inputA[3]~input_o\ & ((\inputA[4]~input_o\))) 
-- # (\inputA[3]~input_o\ & (\inputB[23]~input_o\ & !\inputA[4]~input_o\)) ) ) ) # ( \inputB[15]~input_o\ & ( !\inputB[31]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[23]~input_o\))) ) ) ) # ( !\inputB[15]~input_o\ & ( 
-- !\inputB[31]~input_o\ & ( (\inputB[23]~input_o\ & (\inputA[3]~input_o\ & !\inputA[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000110100001101000000011100000111001101110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	datae => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux138~1_combout\);

-- Location: LABCELL_X17_Y4_N12
\Mux138~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~3_combout\ = ( \inputB[17]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[25]~input_o\))) ) ) # ( !\inputB[17]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputA[3]~input_o\ & \inputB[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputB[17]~input_o\,
	combout => \Mux138~3_combout\);

-- Location: LABCELL_X21_Y4_N24
\Mux138~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~4_combout\ = ( \inputA[2]~input_o\ & ( \Mux138~2_combout\ & ( (!\inputA[1]~input_o\ & (\Mux138~1_combout\)) # (\inputA[1]~input_o\ & ((\Mux138~3_combout\))) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux138~2_combout\ & ( (\Mux138~0_combout\) # 
-- (\inputA[1]~input_o\) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux138~2_combout\ & ( (!\inputA[1]~input_o\ & (\Mux138~1_combout\)) # (\inputA[1]~input_o\ & ((\Mux138~3_combout\))) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux138~2_combout\ & ( (!\inputA[1]~input_o\ 
-- & \Mux138~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_Mux138~0_combout\,
	datac => \ALT_INV_Mux138~1_combout\,
	datad => \ALT_INV_Mux138~3_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux138~2_combout\,
	combout => \Mux138~4_combout\);

-- Location: LABCELL_X17_Y6_N6
\Mux138~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~6_combout\ = ( \inputB[16]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[24]~input_o\))) ) ) # ( !\inputB[16]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputA[3]~input_o\ & \inputB[24]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \Mux138~6_combout\);

-- Location: MLABCELL_X18_Y6_N54
\Mux138~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~11_combout\ = ( \Mux138~7_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~5_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~6_combout\))) ) ) ) # ( !\Mux138~7_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & 
-- (\Mux138~5_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~6_combout\))) ) ) ) # ( \Mux138~7_combout\ & ( !\inputA[1]~input_o\ & ( (\Mux138~10_combout\) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux138~7_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ 
-- & \Mux138~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux138~5_combout\,
	datac => \ALT_INV_Mux138~6_combout\,
	datad => \ALT_INV_Mux138~10_combout\,
	datae => \ALT_INV_Mux138~7_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~11_combout\);

-- Location: MLABCELL_X18_Y7_N24
\Mux67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = ( \shamt[2]~input_o\ & ( \Mux34~3_combout\ & ( (\Mux34~1_combout\) # (\shamt[3]~input_o\) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux34~3_combout\ & ( (!\shamt[3]~input_o\ & ((\Mux34~0_combout\))) # (\shamt[3]~input_o\ & 
-- (\Mux34~2_combout\)) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux34~3_combout\ & ( (!\shamt[3]~input_o\ & \Mux34~1_combout\) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux34~3_combout\ & ( (!\shamt[3]~input_o\ & ((\Mux34~0_combout\))) # (\shamt[3]~input_o\ & 
-- (\Mux34~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~2_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux34~0_combout\,
	datad => \ALT_INV_Mux34~1_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux34~3_combout\,
	combout => \Mux67~0_combout\);

-- Location: LABCELL_X19_Y6_N51
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \Mux34~4_combout\ & ( (!\shamt[3]~input_o\ & ((\shamt[2]~input_o\) # (\Mux34~5_combout\))) ) ) # ( !\Mux34~4_combout\ & ( (\Mux34~5_combout\ & (!\shamt[2]~input_o\ & !\shamt[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~5_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_Mux34~4_combout\,
	combout => \Mux38~0_combout\);

-- Location: LABCELL_X12_Y3_N54
\Mux67~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = ( \Mux67~0_combout\ & ( \Mux38~0_combout\ & ( (!\aluControl[1]~input_o\) # ((!\Mux104~0_combout\ & ((\Mux138~11_combout\))) # (\Mux104~0_combout\ & (\Mux138~4_combout\))) ) ) ) # ( !\Mux67~0_combout\ & ( \Mux38~0_combout\ & ( 
-- (!\Mux104~0_combout\ & (((\aluControl[1]~input_o\ & \Mux138~11_combout\)))) # (\Mux104~0_combout\ & (((!\aluControl[1]~input_o\)) # (\Mux138~4_combout\))) ) ) ) # ( \Mux67~0_combout\ & ( !\Mux38~0_combout\ & ( (!\Mux104~0_combout\ & 
-- (((!\aluControl[1]~input_o\) # (\Mux138~11_combout\)))) # (\Mux104~0_combout\ & (\Mux138~4_combout\ & (\aluControl[1]~input_o\))) ) ) ) # ( !\Mux67~0_combout\ & ( !\Mux38~0_combout\ & ( (\aluControl[1]~input_o\ & ((!\Mux104~0_combout\ & 
-- ((\Mux138~11_combout\))) # (\Mux104~0_combout\ & (\Mux138~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~0_combout\,
	datab => \ALT_INV_Mux138~4_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Mux138~11_combout\,
	datae => \ALT_INV_Mux67~0_combout\,
	dataf => \ALT_INV_Mux38~0_combout\,
	combout => \Mux67~1_combout\);

-- Location: LABCELL_X12_Y7_N27
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[8]~input_o\) ) + ( \inputA[8]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[8]~input_o\) ) + ( \inputA[8]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	dataf => \ALT_INV_inputA[8]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X12_Y7_N30
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[9]~input_o\) ) + ( \inputA[9]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[9]~input_o\) ) + ( \inputA[9]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputA[9]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X12_Y7_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[10]~input_o\) ) + ( \inputA[10]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[10]~input_o\) ) + ( \inputA[10]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	dataf => \ALT_INV_inputA[10]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X16_Y8_N18
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \inputB[7]~input_o\ & ( \inputB[8]~input_o\ & ( ((!\shamt[0]~input_o\ & (\inputB[10]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[9]~input_o\)))) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[7]~input_o\ & ( \inputB[8]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[10]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[9]~input_o\))))) # (\shamt[1]~input_o\ & (!\shamt[0]~input_o\)) ) ) ) # ( \inputB[7]~input_o\ & ( !\inputB[8]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- ((!\shamt[0]~input_o\ & (\inputB[10]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[9]~input_o\))))) # (\shamt[1]~input_o\ & (\shamt[0]~input_o\)) ) ) ) # ( !\inputB[7]~input_o\ & ( !\inputB[8]~input_o\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & 
-- (\inputB[10]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputB[8]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X17_Y7_N18
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \inputB[3]~input_o\ & ( \inputB[6]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[5]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)) # (\inputB[4]~input_o\))) ) ) ) # ( !\inputB[3]~input_o\ & ( 
-- \inputB[6]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[5]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[4]~input_o\ & (!\shamt[0]~input_o\))) ) ) ) # ( \inputB[3]~input_o\ & ( !\inputB[6]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- (((\shamt[0]~input_o\ & \inputB[5]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)) # (\inputB[4]~input_o\))) ) ) ) # ( !\inputB[3]~input_o\ & ( !\inputB[6]~input_o\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\ & \inputB[5]~input_o\)))) # 
-- (\shamt[1]~input_o\ & (\inputB[4]~input_o\ & (!\shamt[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LABCELL_X19_Y6_N54
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Mux2~2_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & ((\Mux2~1_combout\))) # (\shamt[3]~input_o\ & (\Mux2~0_combout\)))) # (\shamt[2]~input_o\ & (((!\shamt[3]~input_o\)))) ) ) # ( !\Mux2~2_combout\ & ( 
-- (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & ((\Mux2~1_combout\))) # (\shamt[3]~input_o\ & (\Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111010001000011111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux2~1_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_Mux2~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X17_Y4_N45
\Mux92~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~2_combout\ = ( \inputB[9]~input_o\ & ( \inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[1]~input_o\) ) ) ) # ( !\inputB[9]~input_o\ & ( \inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[1]~input_o\) ) ) ) # ( \inputB[9]~input_o\ & ( 
-- !\inputA[3]~input_o\ & ( !\inputA[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[1]~input_o\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux92~2_combout\);

-- Location: MLABCELL_X18_Y4_N0
\Mux92~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~11_combout\ = ( \inputA[2]~input_o\ & ( \Mux92~3_combout\ & ( (!\inputA[1]~input_o\) # (\Mux92~10_combout\) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux92~3_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux92~2_combout\))) # (\inputA[1]~input_o\ & 
-- (\Mux92~1_combout\)) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux92~3_combout\ & ( (\inputA[1]~input_o\ & \Mux92~10_combout\) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux92~3_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux92~2_combout\))) # (\inputA[1]~input_o\ & 
-- (\Mux92~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~1_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux92~2_combout\,
	datad => \ALT_INV_Mux92~10_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux92~3_combout\,
	combout => \Mux92~11_combout\);

-- Location: LABCELL_X17_Y6_N9
\Mux92~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~7_combout\ = ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & (\inputB[8]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux92~7_combout\);

-- Location: LABCELL_X17_Y6_N3
\Mux92~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~5_combout\ = ( \inputB[2]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputA[3]~input_o\) # (\inputB[10]~input_o\))) ) ) # ( !\inputB[2]~input_o\ & ( (\inputB[10]~input_o\ & (!\inputA[3]~input_o\ & !\inputA[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[10]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[2]~input_o\,
	combout => \Mux92~5_combout\);

-- Location: LABCELL_X16_Y5_N0
\Mux92~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~9_combout\ = ( \Mux92~5_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux92~7_combout\)) # (\inputA[2]~input_o\ & ((\Mux92~8_combout\))) ) ) ) # ( !\Mux92~5_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & 
-- (\Mux92~7_combout\)) # (\inputA[2]~input_o\ & ((\Mux92~8_combout\))) ) ) ) # ( \Mux92~5_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\) # (\Mux92~6_combout\) ) ) ) # ( !\Mux92~5_combout\ & ( !\inputA[1]~input_o\ & ( (\inputA[2]~input_o\ & 
-- \Mux92~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~7_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux92~8_combout\,
	datad => \ALT_INV_Mux92~6_combout\,
	datae => \ALT_INV_Mux92~5_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~9_combout\);

-- Location: LABCELL_X12_Y4_N30
\Mux66~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux66~2_combout\ = (!\aluControl[1]~input_o\ & ((!\shamt[4]~input_o\) # (\aluControl[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	combout => \Mux66~2_combout\);

-- Location: LABCELL_X12_Y4_N6
\Mux67~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux67~2_combout\ = ( \aluControl[1]~input_o\ & ( \Mux66~2_combout\ & ( ((!\inputA[0]~input_o\ & ((\Mux92~9_combout\))) # (\inputA[0]~input_o\ & (\Mux92~11_combout\))) # (\Mux6~0_combout\) ) ) ) # ( !\aluControl[1]~input_o\ & ( \Mux66~2_combout\ & ( 
-- \Mux6~0_combout\ ) ) ) # ( \aluControl[1]~input_o\ & ( !\Mux66~2_combout\ & ( (!\inputA[0]~input_o\ & ((\Mux92~9_combout\))) # (\inputA[0]~input_o\ & (\Mux92~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111101010101010101010101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~0_combout\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux92~11_combout\,
	datad => \ALT_INV_Mux92~9_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux66~2_combout\,
	combout => \Mux67~2_combout\);

-- Location: LABCELL_X12_Y3_N18
\Mux67~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux67~3_combout\ = ( \aluControl[3]~input_o\ & ( \inputA[10]~input_o\ & ( (\Mux67~2_combout\ & !\Mux104~3_combout\) ) ) ) # ( !\aluControl[3]~input_o\ & ( \inputA[10]~input_o\ & ( (!\Mux104~3_combout\ & ((\inputB[10]~input_o\))) # (\Mux104~3_combout\ & 
-- (\Add0~5_sumout\)) ) ) ) # ( \aluControl[3]~input_o\ & ( !\inputA[10]~input_o\ & ( (!\Mux104~3_combout\ & ((\Mux67~2_combout\))) # (\Mux104~3_combout\ & (!\inputB[10]~input_o\)) ) ) ) # ( !\aluControl[3]~input_o\ & ( !\inputA[10]~input_o\ & ( 
-- (\Add0~5_sumout\ & \Mux104~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011111100110000110011010101010000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_inputB[10]~input_o\,
	datac => \ALT_INV_Mux67~2_combout\,
	datad => \ALT_INV_Mux104~3_combout\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_inputA[10]~input_o\,
	combout => \Mux67~3_combout\);

-- Location: LABCELL_X12_Y3_N48
\Mux67~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux67~4_combout\ = ( !\Mux104~1_combout\ & ( \Mux104~2_combout\ & ( (\inputB[10]~input_o\) # (\inputA[10]~input_o\) ) ) ) # ( \Mux104~1_combout\ & ( !\Mux104~2_combout\ & ( \Mux67~1_combout\ ) ) ) # ( !\Mux104~1_combout\ & ( !\Mux104~2_combout\ & ( 
-- \Mux67~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux67~1_combout\,
	datab => \ALT_INV_inputA[10]~input_o\,
	datac => \ALT_INV_Mux67~3_combout\,
	datad => \ALT_INV_inputB[10]~input_o\,
	datae => \ALT_INV_Mux104~1_combout\,
	dataf => \ALT_INV_Mux104~2_combout\,
	combout => \Mux67~4_combout\);

-- Location: LABCELL_X12_Y3_N30
\res[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(10) = ( res(10) & ( (\Mux160~0_combout\) # (\Mux67~4_combout\) ) ) # ( !res(10) & ( (\Mux67~4_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux67~4_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(10),
	combout => res(10));

-- Location: LABCELL_X16_Y8_N48
\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \shamt[1]~input_o\ & ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[8]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\) # 
-- (\inputB[10]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[8]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[11]~input_o\ & ( 
-- (\inputB[10]~input_o\ & \shamt[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[10]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LABCELL_X10_Y7_N48
\Mux21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = ( \shamt[2]~input_o\ & ( (\Mux21~2_combout\ & !\shamt[3]~input_o\) ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux21~1_combout\)) # (\shamt[3]~input_o\ & ((\Mux21~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~2_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux21~1_combout\,
	datad => \ALT_INV_Mux21~0_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux21~3_combout\);

-- Location: MLABCELL_X18_Y4_N27
\Mux92~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~0_combout\ = ( \inputB[11]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[3]~input_o\))) ) ) # ( !\inputB[11]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputB[3]~input_o\ & \inputA[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101010100000101000000000000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux92~0_combout\);

-- Location: MLABCELL_X18_Y4_N48
\Mux92~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~4_combout\ = ( \inputA[2]~input_o\ & ( \Mux92~2_combout\ & ( (!\inputA[1]~input_o\ & (\Mux92~1_combout\)) # (\inputA[1]~input_o\ & ((\Mux92~3_combout\))) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux92~2_combout\ & ( (\Mux92~0_combout\) # 
-- (\inputA[1]~input_o\) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux92~2_combout\ & ( (!\inputA[1]~input_o\ & (\Mux92~1_combout\)) # (\inputA[1]~input_o\ & ((\Mux92~3_combout\))) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux92~2_combout\ & ( (!\inputA[1]~input_o\ & 
-- \Mux92~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~1_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux92~0_combout\,
	datad => \ALT_INV_Mux92~3_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux92~2_combout\,
	combout => \Mux92~4_combout\);

-- Location: LABCELL_X12_Y4_N24
\Mux66~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux66~3_combout\ = ( \inputA[0]~input_o\ & ( \Mux92~4_combout\ & ( (!\Mux21~3_combout\ & (\aluControl[1]~input_o\ & (\Mux92~9_combout\))) # (\Mux21~3_combout\ & (((\aluControl[1]~input_o\ & \Mux92~9_combout\)) # (\Mux66~2_combout\))) ) ) ) # ( 
-- !\inputA[0]~input_o\ & ( \Mux92~4_combout\ & ( ((\Mux21~3_combout\ & \Mux66~2_combout\)) # (\aluControl[1]~input_o\) ) ) ) # ( \inputA[0]~input_o\ & ( !\Mux92~4_combout\ & ( (!\Mux21~3_combout\ & (\aluControl[1]~input_o\ & (\Mux92~9_combout\))) # 
-- (\Mux21~3_combout\ & (((\aluControl[1]~input_o\ & \Mux92~9_combout\)) # (\Mux66~2_combout\))) ) ) ) # ( !\inputA[0]~input_o\ & ( !\Mux92~4_combout\ & ( (\Mux21~3_combout\ & \Mux66~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000110101011100110011011101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~3_combout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux92~9_combout\,
	datad => \ALT_INV_Mux66~2_combout\,
	datae => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_Mux92~4_combout\,
	combout => \Mux66~3_combout\);

-- Location: LABCELL_X12_Y7_N36
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \inputA[11]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[11]~input_o\) ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( \inputA[11]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[11]~input_o\) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputA[11]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X12_Y3_N36
\Mux66~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux66~4_combout\ = ( \inputA[11]~input_o\ & ( \aluControl[3]~input_o\ & ( (\Mux66~3_combout\ & !\Mux104~3_combout\) ) ) ) # ( !\inputA[11]~input_o\ & ( \aluControl[3]~input_o\ & ( (!\Mux104~3_combout\ & ((\Mux66~3_combout\))) # (\Mux104~3_combout\ & 
-- (!\inputB[11]~input_o\)) ) ) ) # ( \inputA[11]~input_o\ & ( !\aluControl[3]~input_o\ & ( (!\Mux104~3_combout\ & (\inputB[11]~input_o\)) # (\Mux104~3_combout\ & ((\Add0~1_sumout\))) ) ) ) # ( !\inputA[11]~input_o\ & ( !\aluControl[3]~input_o\ & ( 
-- (\Add0~1_sumout\ & \Mux104~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010000111100110011101010100011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[11]~input_o\,
	datab => \ALT_INV_Mux66~3_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Mux104~3_combout\,
	datae => \ALT_INV_inputA[11]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux66~4_combout\);

-- Location: LABCELL_X12_Y8_N54
\Mux66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = ( \Mux61~3_combout\ & ( \shamt[2]~input_o\ & ( (\shamt[3]~input_o\) # (\Mux61~1_combout\) ) ) ) # ( !\Mux61~3_combout\ & ( \shamt[2]~input_o\ & ( (\Mux61~1_combout\ & !\shamt[3]~input_o\) ) ) ) # ( \Mux61~3_combout\ & ( 
-- !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux61~0_combout\)) # (\shamt[3]~input_o\ & ((\Mux61~2_combout\))) ) ) ) # ( !\Mux61~3_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux61~0_combout\)) # (\shamt[3]~input_o\ & 
-- ((\Mux61~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~0_combout\,
	datab => \ALT_INV_Mux61~2_combout\,
	datac => \ALT_INV_Mux61~1_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_Mux61~3_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux66~0_combout\);

-- Location: LABCELL_X14_Y5_N3
\Mux61~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~6_combout\ = ( \Mux61~4_combout\ & ( \shamt[2]~input_o\ & ( !\shamt[3]~input_o\ ) ) ) # ( \Mux61~4_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \Mux61~5_combout\) ) ) ) # ( !\Mux61~4_combout\ & ( !\shamt[2]~input_o\ & ( 
-- (!\shamt[3]~input_o\ & \Mux61~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux61~5_combout\,
	datae => \ALT_INV_Mux61~4_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux61~6_combout\);

-- Location: MLABCELL_X13_Y4_N27
\Mux138~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~8_combout\ = ( \inputB[26]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[18]~input_o\) # (\inputA[3]~input_o\))) ) ) # ( !\inputB[26]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[18]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \Mux138~8_combout\);

-- Location: LABCELL_X21_Y4_N54
\Mux138~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~9_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~8_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~7_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~6_combout\ ) ) ) # ( 
-- !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~6_combout\,
	datab => \ALT_INV_Mux138~8_combout\,
	datac => \ALT_INV_Mux138~5_combout\,
	datad => \ALT_INV_Mux138~7_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~9_combout\);

-- Location: LABCELL_X12_Y3_N12
\Mux66~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux66~1_combout\ = ( \Mux61~6_combout\ & ( \Mux138~9_combout\ & ( ((!\aluControl[1]~input_o\ & ((\Mux66~0_combout\))) # (\aluControl[1]~input_o\ & (\Mux138~4_combout\))) # (\Mux104~0_combout\) ) ) ) # ( !\Mux61~6_combout\ & ( \Mux138~9_combout\ & ( 
-- (!\Mux104~0_combout\ & ((!\aluControl[1]~input_o\ & ((\Mux66~0_combout\))) # (\aluControl[1]~input_o\ & (\Mux138~4_combout\)))) # (\Mux104~0_combout\ & (((\aluControl[1]~input_o\)))) ) ) ) # ( \Mux61~6_combout\ & ( !\Mux138~9_combout\ & ( 
-- (!\Mux104~0_combout\ & ((!\aluControl[1]~input_o\ & ((\Mux66~0_combout\))) # (\aluControl[1]~input_o\ & (\Mux138~4_combout\)))) # (\Mux104~0_combout\ & (((!\aluControl[1]~input_o\)))) ) ) ) # ( !\Mux61~6_combout\ & ( !\Mux138~9_combout\ & ( 
-- (!\Mux104~0_combout\ & ((!\aluControl[1]~input_o\ & ((\Mux66~0_combout\))) # (\aluControl[1]~input_o\ & (\Mux138~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~0_combout\,
	datab => \ALT_INV_Mux138~4_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Mux66~0_combout\,
	datae => \ALT_INV_Mux61~6_combout\,
	dataf => \ALT_INV_Mux138~9_combout\,
	combout => \Mux66~1_combout\);

-- Location: MLABCELL_X9_Y6_N48
\Mux66~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux66~5_combout\ = ( \inputB[11]~input_o\ & ( \Mux104~2_combout\ & ( !\Mux104~1_combout\ ) ) ) # ( !\inputB[11]~input_o\ & ( \Mux104~2_combout\ & ( (\inputA[11]~input_o\ & !\Mux104~1_combout\) ) ) ) # ( \inputB[11]~input_o\ & ( !\Mux104~2_combout\ & ( 
-- (!\Mux104~1_combout\ & (\Mux66~4_combout\)) # (\Mux104~1_combout\ & ((\Mux66~1_combout\))) ) ) ) # ( !\inputB[11]~input_o\ & ( !\Mux104~2_combout\ & ( (!\Mux104~1_combout\ & (\Mux66~4_combout\)) # (\Mux104~1_combout\ & ((\Mux66~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[11]~input_o\,
	datab => \ALT_INV_Mux104~1_combout\,
	datac => \ALT_INV_Mux66~4_combout\,
	datad => \ALT_INV_Mux66~1_combout\,
	datae => \ALT_INV_inputB[11]~input_o\,
	dataf => \ALT_INV_Mux104~2_combout\,
	combout => \Mux66~5_combout\);

-- Location: MLABCELL_X9_Y6_N6
\res[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(11) = ( \Mux160~0_combout\ & ( res(11) ) ) # ( !\Mux160~0_combout\ & ( \Mux66~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux66~5_combout\,
	datad => ALT_INV_res(11),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(11));

-- Location: MLABCELL_X13_Y8_N42
\Mux69~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~3_combout\ = ( \Mux70~0_combout\ & ( (!\aluControl[1]~input_o\ & (!\inputB[8]~input_o\ & (!\inputA[8]~input_o\))) # (\aluControl[1]~input_o\ & (((\Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000110101011000000011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_inputB[8]~input_o\,
	datac => \ALT_INV_inputA[8]~input_o\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Mux70~0_combout\,
	combout => \Mux69~3_combout\);

-- Location: MLABCELL_X13_Y8_N30
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \Mux34~8_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux34~10_combout\))) # (\shamt[2]~input_o\ & (\Mux34~11_combout\)) ) ) ) # ( !\Mux34~8_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & 
-- ((\Mux34~10_combout\))) # (\shamt[2]~input_o\ & (\Mux34~11_combout\)) ) ) ) # ( \Mux34~8_combout\ & ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\) # (\Mux34~9_combout\) ) ) ) # ( !\Mux34~8_combout\ & ( !\shamt[3]~input_o\ & ( (\Mux34~9_combout\ & 
-- \shamt[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~9_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux34~11_combout\,
	datad => \ALT_INV_Mux34~10_combout\,
	datae => \ALT_INV_Mux34~8_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: MLABCELL_X13_Y8_N12
\Mux69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = ( \shamt[2]~input_o\ & ( \Mux34~7_combout\ & ( (!\shamt[4]~input_o\ & (((\Mux40~0_combout\)))) # (\shamt[4]~input_o\ & (!\shamt[3]~input_o\ & (\Mux34~6_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux34~7_combout\ & ( 
-- (!\shamt[4]~input_o\ & ((\Mux40~0_combout\))) # (\shamt[4]~input_o\ & (!\shamt[3]~input_o\)) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux34~7_combout\ & ( (!\shamt[4]~input_o\ & (((\Mux40~0_combout\)))) # (\shamt[4]~input_o\ & (!\shamt[3]~input_o\ & 
-- (\Mux34~6_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux34~7_combout\ & ( (!\shamt[4]~input_o\ & \Mux40~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000101100111000100010111011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_Mux34~6_combout\,
	datad => \ALT_INV_Mux40~0_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux34~7_combout\,
	combout => \Mux69~0_combout\);

-- Location: LABCELL_X20_Y4_N42
\Mux138~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~13_combout\ = ( \Mux138~2_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~0_combout\))) # (\inputA[2]~input_o\ & (\Mux138~1_combout\)) ) ) ) # ( !\Mux138~2_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & 
-- ((\Mux138~0_combout\))) # (\inputA[2]~input_o\ & (\Mux138~1_combout\)) ) ) ) # ( \Mux138~2_combout\ & ( !\inputA[1]~input_o\ & ( (\inputA[2]~input_o\) # (\Mux138~12_combout\) ) ) ) # ( !\Mux138~2_combout\ & ( !\inputA[1]~input_o\ & ( (\Mux138~12_combout\ 
-- & !\inputA[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~12_combout\,
	datab => \ALT_INV_Mux138~1_combout\,
	datac => \ALT_INV_Mux138~0_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_Mux138~2_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~13_combout\);

-- Location: MLABCELL_X13_Y8_N45
\Mux69~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~1_combout\ = ( \inputA[0]~input_o\ & ( \Mux138~13_combout\ ) ) # ( !\inputA[0]~input_o\ & ( \Mux138~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux138~15_combout\,
	datad => \ALT_INV_Mux138~13_combout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \Mux69~1_combout\);

-- Location: MLABCELL_X13_Y8_N36
\Mux69~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~2_combout\ = ( \Mux69~1_combout\ & ( \aluControl[3]~input_o\ & ( (\Mux69~0_combout\) # (\aluControl[1]~input_o\) ) ) ) # ( !\Mux69~1_combout\ & ( \aluControl[3]~input_o\ & ( (!\aluControl[1]~input_o\ & \Mux69~0_combout\) ) ) ) # ( \Mux69~1_combout\ 
-- & ( !\aluControl[3]~input_o\ & ( (!\aluControl[1]~input_o\ & ((\inputB[8]~input_o\) # (\inputA[8]~input_o\))) ) ) ) # ( !\Mux69~1_combout\ & ( !\aluControl[3]~input_o\ & ( (!\aluControl[1]~input_o\ & ((\inputB[8]~input_o\) # (\inputA[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_Mux69~0_combout\,
	datac => \ALT_INV_inputA[8]~input_o\,
	datad => \ALT_INV_inputB[8]~input_o\,
	datae => \ALT_INV_Mux69~1_combout\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux69~2_combout\);

-- Location: LABCELL_X16_Y8_N42
\Mux2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = ( \inputB[7]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\) # (\inputB[5]~input_o\) ) ) ) # ( !\inputB[7]~input_o\ & ( \shamt[0]~input_o\ & ( (\inputB[5]~input_o\ & \shamt[1]~input_o\) ) ) ) # ( \inputB[7]~input_o\ & ( 
-- !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[8]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[6]~input_o\))) ) ) ) # ( !\inputB[7]~input_o\ & ( !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[8]~input_o\)) # (\shamt[1]~input_o\ & 
-- ((\inputB[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[6]~input_o\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: MLABCELL_X13_Y7_N30
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \Mux2~3_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & !\shamt[3]~input_o\) ) ) ) # ( \Mux2~3_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & (\Mux2~5_combout\)) # (\shamt[3]~input_o\ & 
-- ((\Mux2~4_combout\))))) ) ) ) # ( !\Mux2~3_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & (\Mux2~5_combout\)) # (\shamt[3]~input_o\ & ((\Mux2~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux2~5_combout\,
	datad => \ALT_INV_Mux2~4_combout\,
	datae => \ALT_INV_Mux2~3_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X16_Y5_N48
\Mux92~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~13_combout\ = ( \Mux92~12_combout\ & ( \inputA[1]~input_o\ & ( (\Mux92~6_combout\) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux92~12_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & \Mux92~6_combout\) ) ) ) # ( \Mux92~12_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux92~7_combout\)) # (\inputA[2]~input_o\ & ((\Mux92~8_combout\))) ) ) ) # ( !\Mux92~12_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux92~7_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux92~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~7_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux92~8_combout\,
	datad => \ALT_INV_Mux92~6_combout\,
	datae => \ALT_INV_Mux92~12_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~13_combout\);

-- Location: LABCELL_X12_Y4_N33
\Mux95~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = ( \Mux92~15_combout\ & ( (\inputA[0]~input_o\) # (\Mux92~13_combout\) ) ) # ( !\Mux92~15_combout\ & ( (\Mux92~13_combout\ & !\inputA[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~13_combout\,
	datac => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_Mux92~15_combout\,
	combout => \Mux95~0_combout\);

-- Location: MLABCELL_X13_Y8_N48
\Mux69~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~5_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputA[8]~input_o\ & (\inputB[8]~input_o\))) # (\aluControl[3]~input_o\ & ((((\Mux24~0_combout\))))) ) ) # ( \aluControl[1]~input_o\ & ( ((!\aluControl[3]~input_o\ & 
-- (\Add0~13_sumout\)) # (\aluControl[3]~input_o\ & (((\Mux95~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000110111000011000000110000000100001101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[8]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Mux24~0_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux95~0_combout\,
	datag => \ALT_INV_inputB[8]~input_o\,
	combout => \Mux69~5_combout\);

-- Location: MLABCELL_X9_Y6_N3
\Mux69~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~4_combout\ = ( \Mux69~5_combout\ & ( (!\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\)) # (\Mux69~3_combout\))) # (\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\ & \Mux69~2_combout\)))) ) ) # ( !\Mux69~5_combout\ & ( 
-- (!\aluControl[0]~input_o\ & (\Mux69~3_combout\)) # (\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\ & \Mux69~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010011000100111101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux69~3_combout\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_Mux69~2_combout\,
	dataf => \ALT_INV_Mux69~5_combout\,
	combout => \Mux69~4_combout\);

-- Location: MLABCELL_X9_Y6_N0
\res[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(8) = ( \Mux160~0_combout\ & ( res(8) ) ) # ( !\Mux160~0_combout\ & ( \Mux69~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux69~4_combout\,
	datad => ALT_INV_res(8),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(8));

-- Location: LABCELL_X16_Y8_N54
\Mux21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = ( \inputB[9]~input_o\ & ( \inputB[7]~input_o\ & ( (!\shamt[0]~input_o\) # ((!\shamt[1]~input_o\ & (\inputB[8]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[6]~input_o\)))) ) ) ) # ( !\inputB[9]~input_o\ & ( \inputB[7]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[8]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[6]~input_o\))))) ) ) ) # ( \inputB[9]~input_o\ & ( !\inputB[7]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- (((!\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[8]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[6]~input_o\))))) ) ) ) # ( !\inputB[9]~input_o\ & ( !\inputB[7]~input_o\ & ( (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & 
-- (\inputB[8]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[6]~input_o\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputB[7]~input_o\,
	combout => \Mux21~5_combout\);

-- Location: MLABCELL_X18_Y5_N21
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Mux21~6_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & (\Mux21~5_combout\)) # (\shamt[3]~input_o\ & ((\Mux21~4_combout\))))) # (\shamt[2]~input_o\ & (!\shamt[3]~input_o\)) ) ) # ( !\Mux21~6_combout\ & ( 
-- (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & (\Mux21~5_combout\)) # (\shamt[3]~input_o\ & ((\Mux21~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux21~5_combout\,
	datad => \ALT_INV_Mux21~4_combout\,
	dataf => \ALT_INV_Mux21~6_combout\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X12_Y4_N0
\Mux68~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux68~2_combout\ = ( \Mux7~0_combout\ & ( \Mux92~13_combout\ & ( ((\aluControl[1]~input_o\ & ((\inputA[0]~input_o\) # (\Mux92~11_combout\)))) # (\Mux66~2_combout\) ) ) ) # ( !\Mux7~0_combout\ & ( \Mux92~13_combout\ & ( (\aluControl[1]~input_o\ & 
-- ((\inputA[0]~input_o\) # (\Mux92~11_combout\))) ) ) ) # ( \Mux7~0_combout\ & ( !\Mux92~13_combout\ & ( ((\aluControl[1]~input_o\ & (\Mux92~11_combout\ & !\inputA[0]~input_o\))) # (\Mux66~2_combout\) ) ) ) # ( !\Mux7~0_combout\ & ( !\Mux92~13_combout\ & ( 
-- (\aluControl[1]~input_o\ & (\Mux92~11_combout\ & !\inputA[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000001101110011001100000101010101010011011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_Mux66~2_combout\,
	datac => \ALT_INV_Mux92~11_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux92~13_combout\,
	combout => \Mux68~2_combout\);

-- Location: MLABCELL_X9_Y6_N54
\Mux68~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux68~3_combout\ = ( \Mux68~2_combout\ & ( \inputA[9]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\Mux104~3_combout\ & ((\inputB[9]~input_o\))) # (\Mux104~3_combout\ & (\Add0~9_sumout\)))) # (\aluControl[3]~input_o\ & (((!\Mux104~3_combout\)))) ) ) ) # ( 
-- !\Mux68~2_combout\ & ( \inputA[9]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\Mux104~3_combout\ & ((\inputB[9]~input_o\))) # (\Mux104~3_combout\ & (\Add0~9_sumout\)))) ) ) ) # ( \Mux68~2_combout\ & ( !\inputA[9]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- (\Add0~9_sumout\ & ((\Mux104~3_combout\)))) # (\aluControl[3]~input_o\ & (((!\inputB[9]~input_o\) # (!\Mux104~3_combout\)))) ) ) ) # ( !\Mux68~2_combout\ & ( !\inputA[9]~input_o\ & ( (\Mux104~3_combout\ & ((!\aluControl[3]~input_o\ & (\Add0~9_sumout\)) # 
-- (\aluControl[3]~input_o\ & ((!\inputB[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110010010101010111001000001010001000100101111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_Mux104~3_combout\,
	datae => \ALT_INV_Mux68~2_combout\,
	dataf => \ALT_INV_inputA[9]~input_o\,
	combout => \Mux68~3_combout\);

-- Location: MLABCELL_X18_Y7_N30
\Mux68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = ( \Mux61~9_combout\ & ( \Mux61~8_combout\ & ( (!\shamt[2]~input_o\ & (((\shamt[3]~input_o\)) # (\Mux61~7_combout\))) # (\shamt[2]~input_o\ & (((!\shamt[3]~input_o\) # (\Mux61~10_combout\)))) ) ) ) # ( !\Mux61~9_combout\ & ( 
-- \Mux61~8_combout\ & ( (!\shamt[2]~input_o\ & (\Mux61~7_combout\ & ((!\shamt[3]~input_o\)))) # (\shamt[2]~input_o\ & (((!\shamt[3]~input_o\) # (\Mux61~10_combout\)))) ) ) ) # ( \Mux61~9_combout\ & ( !\Mux61~8_combout\ & ( (!\shamt[2]~input_o\ & 
-- (((\shamt[3]~input_o\)) # (\Mux61~7_combout\))) # (\shamt[2]~input_o\ & (((\Mux61~10_combout\ & \shamt[3]~input_o\)))) ) ) ) # ( !\Mux61~9_combout\ & ( !\Mux61~8_combout\ & ( (!\shamt[2]~input_o\ & (\Mux61~7_combout\ & ((!\shamt[3]~input_o\)))) # 
-- (\shamt[2]~input_o\ & (((\Mux61~10_combout\ & \shamt[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~7_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux61~10_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_Mux61~9_combout\,
	dataf => \ALT_INV_Mux61~8_combout\,
	combout => \Mux68~0_combout\);

-- Location: MLABCELL_X18_Y7_N51
\Mux63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux61~12_combout\))) # (\shamt[2]~input_o\ & (\Mux61~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~11_combout\,
	datab => \ALT_INV_Mux61~12_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux63~0_combout\);

-- Location: MLABCELL_X18_Y6_N48
\Mux68~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux68~1_combout\ = ( \Mux138~11_combout\ & ( \Mux104~0_combout\ & ( (\Mux63~0_combout\) # (\aluControl[1]~input_o\) ) ) ) # ( !\Mux138~11_combout\ & ( \Mux104~0_combout\ & ( (!\aluControl[1]~input_o\ & \Mux63~0_combout\) ) ) ) # ( \Mux138~11_combout\ & ( 
-- !\Mux104~0_combout\ & ( (!\aluControl[1]~input_o\ & (\Mux68~0_combout\)) # (\aluControl[1]~input_o\ & ((\Mux138~13_combout\))) ) ) ) # ( !\Mux138~11_combout\ & ( !\Mux104~0_combout\ & ( (!\aluControl[1]~input_o\ & (\Mux68~0_combout\)) # 
-- (\aluControl[1]~input_o\ & ((\Mux138~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux68~0_combout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux63~0_combout\,
	datad => \ALT_INV_Mux138~13_combout\,
	datae => \ALT_INV_Mux138~11_combout\,
	dataf => \ALT_INV_Mux104~0_combout\,
	combout => \Mux68~1_combout\);

-- Location: MLABCELL_X9_Y6_N24
\Mux68~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux68~4_combout\ = ( \Mux68~1_combout\ & ( \Mux104~2_combout\ & ( (!\Mux104~1_combout\ & ((\inputB[9]~input_o\) # (\inputA[9]~input_o\))) ) ) ) # ( !\Mux68~1_combout\ & ( \Mux104~2_combout\ & ( (!\Mux104~1_combout\ & ((\inputB[9]~input_o\) # 
-- (\inputA[9]~input_o\))) ) ) ) # ( \Mux68~1_combout\ & ( !\Mux104~2_combout\ & ( (\Mux68~3_combout\) # (\Mux104~1_combout\) ) ) ) # ( !\Mux68~1_combout\ & ( !\Mux104~2_combout\ & ( (!\Mux104~1_combout\ & \Mux68~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[9]~input_o\,
	datab => \ALT_INV_Mux104~1_combout\,
	datac => \ALT_INV_Mux68~3_combout\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_Mux68~1_combout\,
	dataf => \ALT_INV_Mux104~2_combout\,
	combout => \Mux68~4_combout\);

-- Location: MLABCELL_X9_Y6_N12
\res[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(9) = ( \Mux160~0_combout\ & ( res(9) ) ) # ( !\Mux160~0_combout\ & ( \Mux68~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux68~4_combout\,
	datad => ALT_INV_res(9),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(9));

-- Location: LABCELL_X19_Y6_N57
\Mux2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = ( \Mux2~2_combout\ & ( (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\) # (\Mux2~0_combout\))) ) ) # ( !\Mux2~2_combout\ & ( (\Mux2~0_combout\ & (\shamt[2]~input_o\ & !\shamt[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_Mux2~2_combout\,
	combout => \Mux2~6_combout\);

-- Location: LABCELL_X10_Y6_N18
\Mux71~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux71~4_combout\ = ( !\inputA[0]~input_o\ & ( (!\aluControl[1]~input_o\ & (((\Mux2~6_combout\ & ((!\shamt[4]~input_o\) # (\aluControl[2]~input_o\)))))) # (\aluControl[1]~input_o\ & (((\Mux92~17_combout\)))) ) ) # ( \inputA[0]~input_o\ & ( 
-- (!\aluControl[1]~input_o\ & (((\Mux2~6_combout\ & ((!\shamt[4]~input_o\) # (\aluControl[2]~input_o\)))))) # (\aluControl[1]~input_o\ & (((\Mux92~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux92~18_combout\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_Mux2~6_combout\,
	datag => \ALT_INV_Mux92~17_combout\,
	combout => \Mux71~4_combout\);

-- Location: MLABCELL_X9_Y6_N18
\Mux71~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux71~2_combout\ = ( \aluControl[3]~input_o\ & ( \Mux104~3_combout\ & ( (!\inputA[6]~input_o\ & !\inputB[6]~input_o\) ) ) ) # ( !\aluControl[3]~input_o\ & ( \Mux104~3_combout\ & ( \Add0~21_sumout\ ) ) ) # ( \aluControl[3]~input_o\ & ( !\Mux104~3_combout\ 
-- & ( \Mux71~4_combout\ ) ) ) # ( !\aluControl[3]~input_o\ & ( !\Mux104~3_combout\ & ( (\inputA[6]~input_o\ & \inputB[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110000111100110011001100111010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[6]~input_o\,
	datab => \ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_Mux71~4_combout\,
	datad => \ALT_INV_inputB[6]~input_o\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_Mux104~3_combout\,
	combout => \Mux71~2_combout\);

-- Location: MLABCELL_X18_Y7_N18
\Mux71~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = ( \shamt[2]~input_o\ & ( \Mux34~2_combout\ & ( (\shamt[3]~input_o\) # (\Mux34~0_combout\) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux34~2_combout\ & ( (!\shamt[3]~input_o\ & (\Mux34~12_combout\)) # (\shamt[3]~input_o\ & 
-- ((\Mux34~1_combout\))) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux34~2_combout\ & ( (\Mux34~0_combout\ & !\shamt[3]~input_o\) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux34~2_combout\ & ( (!\shamt[3]~input_o\ & (\Mux34~12_combout\)) # (\shamt[3]~input_o\ & 
-- ((\Mux34~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~12_combout\,
	datab => \ALT_INV_Mux34~1_combout\,
	datac => \ALT_INV_Mux34~0_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux34~2_combout\,
	combout => \Mux71~0_combout\);

-- Location: LABCELL_X19_Y6_N48
\Mux34~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~13_combout\ = ( \Mux34~4_combout\ & ( (!\shamt[2]~input_o\ & (((\shamt[3]~input_o\) # (\Mux34~3_combout\)))) # (\shamt[2]~input_o\ & (\Mux34~5_combout\ & ((!\shamt[3]~input_o\)))) ) ) # ( !\Mux34~4_combout\ & ( (!\shamt[3]~input_o\ & 
-- ((!\shamt[2]~input_o\ & ((\Mux34~3_combout\))) # (\shamt[2]~input_o\ & (\Mux34~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101110011000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~5_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux34~3_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_Mux34~4_combout\,
	combout => \Mux34~13_combout\);

-- Location: MLABCELL_X18_Y6_N30
\Mux71~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux71~1_combout\ = ( \Mux138~17_combout\ & ( \Mux104~0_combout\ & ( (\Mux34~13_combout\) # (\aluControl[1]~input_o\) ) ) ) # ( !\Mux138~17_combout\ & ( \Mux104~0_combout\ & ( (!\aluControl[1]~input_o\ & \Mux34~13_combout\) ) ) ) # ( \Mux138~17_combout\ & 
-- ( !\Mux104~0_combout\ & ( (!\aluControl[1]~input_o\ & (\Mux71~0_combout\)) # (\aluControl[1]~input_o\ & ((\Mux138~19_combout\))) ) ) ) # ( !\Mux138~17_combout\ & ( !\Mux104~0_combout\ & ( (!\aluControl[1]~input_o\ & (\Mux71~0_combout\)) # 
-- (\aluControl[1]~input_o\ & ((\Mux138~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux71~0_combout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux34~13_combout\,
	datad => \ALT_INV_Mux138~19_combout\,
	datae => \ALT_INV_Mux138~17_combout\,
	dataf => \ALT_INV_Mux104~0_combout\,
	combout => \Mux71~1_combout\);

-- Location: MLABCELL_X9_Y6_N36
\Mux71~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux71~3_combout\ = ( \Mux71~1_combout\ & ( \Mux104~2_combout\ & ( (!\Mux104~1_combout\ & ((\inputB[6]~input_o\) # (\inputA[6]~input_o\))) ) ) ) # ( !\Mux71~1_combout\ & ( \Mux104~2_combout\ & ( (!\Mux104~1_combout\ & ((\inputB[6]~input_o\) # 
-- (\inputA[6]~input_o\))) ) ) ) # ( \Mux71~1_combout\ & ( !\Mux104~2_combout\ & ( (\Mux71~2_combout\) # (\Mux104~1_combout\) ) ) ) # ( !\Mux71~1_combout\ & ( !\Mux104~2_combout\ & ( (!\Mux104~1_combout\ & \Mux71~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[6]~input_o\,
	datab => \ALT_INV_Mux104~1_combout\,
	datac => \ALT_INV_Mux71~2_combout\,
	datad => \ALT_INV_inputB[6]~input_o\,
	datae => \ALT_INV_Mux71~1_combout\,
	dataf => \ALT_INV_Mux104~2_combout\,
	combout => \Mux71~3_combout\);

-- Location: LABCELL_X10_Y6_N42
\res[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(6) = ( \Mux160~0_combout\ & ( res(6) ) ) # ( !\Mux160~0_combout\ & ( \Mux71~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux71~3_combout\,
	datad => ALT_INV_res(6),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(6));

-- Location: LABCELL_X10_Y6_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !res(9) & ( !res(6) & ( (!res(7) & (!res(10) & (!res(11) & !res(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(7),
	datab => ALT_INV_res(10),
	datac => ALT_INV_res(11),
	datad => ALT_INV_res(8),
	datae => ALT_INV_res(9),
	dataf => ALT_INV_res(6),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X12_Y7_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \inputA[12]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[12]~input_o\) ) + ( \Add0~2\ ))
-- \Add0~54\ = CARRY(( \inputA[12]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[12]~input_o\) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[12]~input_o\,
	dataf => \ALT_INV_inputB[12]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X12_Y7_N42
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[13]~input_o\) ) + ( \inputA[13]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[13]~input_o\) ) + ( \inputA[13]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	dataf => \ALT_INV_inputA[13]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X12_Y7_N45
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[14]~input_o\) ) + ( \inputA[14]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~58\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[14]~input_o\) ) + ( \inputA[14]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputA[14]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X12_Y7_N48
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[15]~input_o\) ) + ( \inputA[15]~input_o\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[15]~input_o\) ) + ( \inputA[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputA[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X12_Y8_N6
\Mux143~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~3_combout\ = ( \Add0~61_sumout\ & ( (\Mux70~0_combout\ & (((!\inputA[15]~input_o\ & !\inputB[15]~input_o\)) # (\aluControl[1]~input_o\))) ) ) # ( !\Add0~61_sumout\ & ( (\Mux70~0_combout\ & (!\aluControl[1]~input_o\ & (!\inputA[15]~input_o\ & 
-- !\inputB[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001010001000100010101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux70~0_combout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_inputA[15]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_Add0~61_sumout\,
	combout => \Mux143~3_combout\);

-- Location: LABCELL_X19_Y4_N33
\Mux92~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~26_combout\ = ( \inputB[6]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[14]~input_o\) # (\inputA[3]~input_o\))) ) ) # ( !\inputB[6]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \Mux92~26_combout\);

-- Location: LABCELL_X17_Y4_N57
\Mux92~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~24_combout\ = ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & ((\inputB[12]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux92~24_combout\);

-- Location: LABCELL_X16_Y4_N48
\Mux92~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~27_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~7_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~24_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~5_combout\ ) ) ) # ( 
-- !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~26_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~26_combout\,
	datab => \ALT_INV_Mux92~24_combout\,
	datac => \ALT_INV_Mux92~5_combout\,
	datad => \ALT_INV_Mux92~7_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~27_combout\);

-- Location: LABCELL_X19_Y4_N39
\Mux92~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~28_combout\ = ( \inputB[7]~input_o\ & ( \inputA[3]~input_o\ & ( !\inputA[4]~input_o\ ) ) ) # ( \inputB[7]~input_o\ & ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[15]~input_o\) ) ) ) # ( !\inputB[7]~input_o\ & ( !\inputA[3]~input_o\ & 
-- ( (!\inputA[4]~input_o\ & \inputB[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[15]~input_o\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux92~28_combout\);

-- Location: LABCELL_X20_Y4_N39
\Mux92~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~22_combout\ = ( \inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[13]~input_o\) # (\inputA[3]~input_o\))) ) ) # ( !\inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux92~22_combout\);

-- Location: LABCELL_X14_Y4_N12
\Mux92~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~29_combout\ = ( \inputA[1]~input_o\ & ( \Mux92~22_combout\ & ( (!\inputA[2]~input_o\) # (\Mux92~2_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux92~22_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~28_combout\))) # (\inputA[2]~input_o\ & 
-- (\Mux92~0_combout\)) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux92~22_combout\ & ( (\inputA[2]~input_o\ & \Mux92~2_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux92~22_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~28_combout\))) # (\inputA[2]~input_o\ & 
-- (\Mux92~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~0_combout\,
	datab => \ALT_INV_Mux92~28_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux92~2_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux92~22_combout\,
	combout => \Mux92~29_combout\);

-- Location: LABCELL_X12_Y4_N36
\Mux88~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux88~0_combout\ = ( \Mux92~29_combout\ & ( (!\inputA[0]~input_o\) # (\Mux92~27_combout\) ) ) # ( !\Mux92~29_combout\ & ( (\inputA[0]~input_o\ & \Mux92~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux92~27_combout\,
	dataf => \ALT_INV_Mux92~29_combout\,
	combout => \Mux88~0_combout\);

-- Location: LABCELL_X16_Y7_N0
\Mux21~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = ( \inputB[14]~input_o\ & ( \inputB[15]~input_o\ & ( (!\shamt[1]~input_o\) # ((!\shamt[0]~input_o\ & (\inputB[13]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[12]~input_o\)))) ) ) ) # ( !\inputB[14]~input_o\ & ( \inputB[15]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[13]~input_o\)))) # (\shamt[0]~input_o\ & (\shamt[1]~input_o\ & ((\inputB[12]~input_o\)))) ) ) ) # ( \inputB[14]~input_o\ & ( !\inputB[15]~input_o\ & ( (!\shamt[0]~input_o\ & (\shamt[1]~input_o\ & 
-- (\inputB[13]~input_o\))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[12]~input_o\)))) ) ) ) # ( !\inputB[14]~input_o\ & ( !\inputB[15]~input_o\ & ( (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[13]~input_o\)) # (\shamt[0]~input_o\ 
-- & ((\inputB[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	datae => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux21~8_combout\);

-- Location: LABCELL_X10_Y7_N6
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Mux21~8_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux21~1_combout\)) # (\shamt[3]~input_o\ & ((\Mux21~0_combout\))) ) ) ) # ( !\Mux21~8_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & 
-- (\Mux21~1_combout\)) # (\shamt[3]~input_o\ & ((\Mux21~0_combout\))) ) ) ) # ( \Mux21~8_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\) # (\Mux21~2_combout\) ) ) ) # ( !\Mux21~8_combout\ & ( !\shamt[2]~input_o\ & ( (\shamt[3]~input_o\ & 
-- \Mux21~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~1_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux21~2_combout\,
	datad => \ALT_INV_Mux21~0_combout\,
	datae => \ALT_INV_Mux21~8_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X10_Y7_N39
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!\shamt[4]~input_o\ & \Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X7_Y5_N48
\Mux143~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~5_combout\ = ( !\aluControl[1]~input_o\ & ( ((!\aluControl[3]~input_o\ & (\inputA[15]~input_o\ & (\inputB[15]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux17~0_combout\))))) ) ) # ( \aluControl[1]~input_o\ & ( (((!\aluControl[3]~input_o\ & 
-- ((\Add0~61_sumout\))) # (\aluControl[3]~input_o\ & (\Mux88~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux88~0_combout\,
	datab => \ALT_INV_inputA[15]~input_o\,
	datac => \ALT_INV_Add0~61_sumout\,
	datad => \ALT_INV_Mux17~0_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	datag => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux143~5_combout\);

-- Location: LABCELL_X12_Y8_N48
\Mux143~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~0_combout\ = ( \Mux61~3_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (((\Mux57~0_combout\)))) # (\shamt[3]~input_o\ & (\Mux61~5_combout\ & ((!\shamt[4]~input_o\)))) ) ) ) # ( !\Mux61~3_combout\ & ( \shamt[2]~input_o\ & ( 
-- (!\shamt[3]~input_o\ & (((\Mux57~0_combout\)))) # (\shamt[3]~input_o\ & (\Mux61~5_combout\ & ((!\shamt[4]~input_o\)))) ) ) ) # ( \Mux61~3_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux57~0_combout\)) # (\shamt[3]~input_o\ & 
-- ((!\shamt[4]~input_o\))) ) ) ) # ( !\Mux61~3_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \Mux57~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110000101000011011000010100001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_Mux61~5_combout\,
	datac => \ALT_INV_Mux57~0_combout\,
	datad => \ALT_INV_shamt[4]~input_o\,
	datae => \ALT_INV_Mux61~3_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux143~0_combout\);

-- Location: LABCELL_X17_Y4_N3
\Mux138~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~36_combout\ = ( \inputB[29]~input_o\ & ( \inputA[3]~input_o\ & ( !\inputA[4]~input_o\ ) ) ) # ( \inputB[29]~input_o\ & ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[21]~input_o\) ) ) ) # ( !\inputB[29]~input_o\ & ( 
-- !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[21]~input_o\,
	datae => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux138~36_combout\);

-- Location: LABCELL_X19_Y4_N51
\Mux138~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~32_combout\ = ( \inputB[19]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[27]~input_o\))) ) ) # ( !\inputB[19]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputA[3]~input_o\ & \inputB[27]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	combout => \Mux138~32_combout\);

-- Location: LABCELL_X21_Y4_N30
\Mux138~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~37_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~36_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~3_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~32_combout\ ) ) ) 
-- # ( !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~1_combout\,
	datab => \ALT_INV_Mux138~36_combout\,
	datac => \ALT_INV_Mux138~32_combout\,
	datad => \ALT_INV_Mux138~3_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~37_combout\);

-- Location: MLABCELL_X13_Y4_N24
\Mux138~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~34_combout\ = ( \inputB[20]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[28]~input_o\))) ) ) # ( !\inputB[20]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputA[3]~input_o\ & \inputB[28]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputB[20]~input_o\,
	combout => \Mux138~34_combout\);

-- Location: MLABCELL_X13_Y4_N0
\Mux138~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~38_combout\ = ( \inputB[30]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[22]~input_o\) # (\inputA[3]~input_o\))) ) ) # ( !\inputB[30]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[22]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[22]~input_o\,
	dataf => \ALT_INV_inputB[30]~input_o\,
	combout => \Mux138~38_combout\);

-- Location: MLABCELL_X13_Y4_N54
\Mux138~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~39_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~38_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~8_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~34_combout\ ) ) ) 
-- # ( !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~6_combout\,
	datab => \ALT_INV_Mux138~34_combout\,
	datac => \ALT_INV_Mux138~38_combout\,
	datad => \ALT_INV_Mux138~8_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~39_combout\);

-- Location: LABCELL_X12_Y4_N39
\Mux143~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~1_combout\ = (!\inputA[0]~input_o\ & (\Mux138~37_combout\)) # (\inputA[0]~input_o\ & ((\Mux138~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux138~37_combout\,
	datad => \ALT_INV_Mux138~39_combout\,
	combout => \Mux143~1_combout\);

-- Location: LABCELL_X12_Y8_N30
\Mux143~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~2_combout\ = ( \aluControl[1]~input_o\ & ( \inputA[15]~input_o\ & ( (\aluControl[3]~input_o\ & \Mux143~1_combout\) ) ) ) # ( !\aluControl[1]~input_o\ & ( \inputA[15]~input_o\ & ( (!\aluControl[3]~input_o\) # (\Mux143~0_combout\) ) ) ) # ( 
-- \aluControl[1]~input_o\ & ( !\inputA[15]~input_o\ & ( (\aluControl[3]~input_o\ & \Mux143~1_combout\) ) ) ) # ( !\aluControl[1]~input_o\ & ( !\inputA[15]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputB[15]~input_o\)) # (\aluControl[3]~input_o\ & 
-- ((\Mux143~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010110101111101011110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_inputB[15]~input_o\,
	datac => \ALT_INV_Mux143~0_combout\,
	datad => \ALT_INV_Mux143~1_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_inputA[15]~input_o\,
	combout => \Mux143~2_combout\);

-- Location: LABCELL_X12_Y5_N3
\Mux143~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~4_combout\ = ( \Mux143~2_combout\ & ( (!\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\ & \Mux143~5_combout\)) # (\Mux143~3_combout\))) # (\aluControl[0]~input_o\ & (!\aluControl[2]~input_o\)) ) ) # ( !\Mux143~2_combout\ & ( 
-- (!\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\ & \Mux143~5_combout\)) # (\Mux143~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010001100000011001000110000101110101011100010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux143~3_combout\,
	datad => \ALT_INV_Mux143~5_combout\,
	dataf => \ALT_INV_Mux143~2_combout\,
	combout => \Mux143~4_combout\);

-- Location: LABCELL_X12_Y5_N0
\res[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(15) = ( \Mux143~4_combout\ & ( (!\Mux160~0_combout\) # (res(15)) ) ) # ( !\Mux143~4_combout\ & ( (res(15) & \Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_res(15),
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => \ALT_INV_Mux143~4_combout\,
	combout => res(15));

-- Location: LABCELL_X21_Y4_N36
\Mux138~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~33_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~32_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~1_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~3_combout\ ) ) ) # 
-- ( !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~1_combout\,
	datab => \ALT_INV_Mux138~2_combout\,
	datac => \ALT_INV_Mux138~32_combout\,
	datad => \ALT_INV_Mux138~3_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~33_combout\);

-- Location: MLABCELL_X13_Y7_N18
\Mux36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \Mux34~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux34~6_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux36~1_combout\);

-- Location: MLABCELL_X13_Y8_N54
\Mux65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = ( \Mux34~9_combout\ & ( \Mux34~7_combout\ & ( (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\) # ((\Mux34~10_combout\)))) # (\shamt[3]~input_o\ & (((\Mux34~11_combout\)) # (\shamt[2]~input_o\))) ) ) ) # ( !\Mux34~9_combout\ & ( 
-- \Mux34~7_combout\ & ( (!\shamt[3]~input_o\ & (\shamt[2]~input_o\ & ((\Mux34~10_combout\)))) # (\shamt[3]~input_o\ & (((\Mux34~11_combout\)) # (\shamt[2]~input_o\))) ) ) ) # ( \Mux34~9_combout\ & ( !\Mux34~7_combout\ & ( (!\shamt[3]~input_o\ & 
-- ((!\shamt[2]~input_o\) # ((\Mux34~10_combout\)))) # (\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & (\Mux34~11_combout\))) ) ) ) # ( !\Mux34~9_combout\ & ( !\Mux34~7_combout\ & ( (!\shamt[3]~input_o\ & (\shamt[2]~input_o\ & ((\Mux34~10_combout\)))) # 
-- (\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & (\Mux34~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux34~11_combout\,
	datad => \ALT_INV_Mux34~10_combout\,
	datae => \ALT_INV_Mux34~9_combout\,
	dataf => \ALT_INV_Mux34~7_combout\,
	combout => \Mux65~0_combout\);

-- Location: LABCELL_X12_Y3_N24
\Mux65~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~1_combout\ = ( \Mux36~1_combout\ & ( \Mux65~0_combout\ & ( (!\aluControl[1]~input_o\) # ((!\Mux104~0_combout\ & ((\Mux138~9_combout\))) # (\Mux104~0_combout\ & (\Mux138~33_combout\))) ) ) ) # ( !\Mux36~1_combout\ & ( \Mux65~0_combout\ & ( 
-- (!\aluControl[1]~input_o\ & (((!\Mux104~0_combout\)))) # (\aluControl[1]~input_o\ & ((!\Mux104~0_combout\ & ((\Mux138~9_combout\))) # (\Mux104~0_combout\ & (\Mux138~33_combout\)))) ) ) ) # ( \Mux36~1_combout\ & ( !\Mux65~0_combout\ & ( 
-- (!\aluControl[1]~input_o\ & (((\Mux104~0_combout\)))) # (\aluControl[1]~input_o\ & ((!\Mux104~0_combout\ & ((\Mux138~9_combout\))) # (\Mux104~0_combout\ & (\Mux138~33_combout\)))) ) ) ) # ( !\Mux36~1_combout\ & ( !\Mux65~0_combout\ & ( 
-- (\aluControl[1]~input_o\ & ((!\Mux104~0_combout\ & ((\Mux138~9_combout\))) # (\Mux104~0_combout\ & (\Mux138~33_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_Mux138~33_combout\,
	datac => \ALT_INV_Mux104~0_combout\,
	datad => \ALT_INV_Mux138~9_combout\,
	datae => \ALT_INV_Mux36~1_combout\,
	dataf => \ALT_INV_Mux65~0_combout\,
	combout => \Mux65~1_combout\);

-- Location: LABCELL_X16_Y7_N12
\Mux2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = ( \shamt[1]~input_o\ & ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[10]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[11]~input_o\ & ( (\inputB[12]~input_o\) # 
-- (\shamt[0]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[10]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[9]~input_o\))) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[11]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & \inputB[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: MLABCELL_X13_Y7_N0
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \Mux2~3_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\Mux2~5_combout\))) # (\shamt[3]~input_o\ & (\Mux2~4_combout\)) ) ) ) # ( !\Mux2~3_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\Mux2~5_combout\))) # 
-- (\shamt[3]~input_o\ & (\Mux2~4_combout\)) ) ) ) # ( \Mux2~3_combout\ & ( !\shamt[2]~input_o\ & ( (\Mux2~7_combout\) # (\shamt[3]~input_o\) ) ) ) # ( !\Mux2~3_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \Mux2~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~4_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux2~5_combout\,
	datad => \ALT_INV_Mux2~7_combout\,
	datae => \ALT_INV_Mux2~3_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X16_Y5_N54
\Mux92~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~25_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~6_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~5_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~7_combout\ ) ) ) # ( 
-- !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~24_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~7_combout\,
	datab => \ALT_INV_Mux92~5_combout\,
	datac => \ALT_INV_Mux92~24_combout\,
	datad => \ALT_INV_Mux92~6_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~25_combout\);

-- Location: LABCELL_X12_Y4_N48
\Mux65~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~2_combout\ = ( \inputA[0]~input_o\ & ( \Mux92~4_combout\ & ( ((\Mux4~1_combout\ & \Mux66~2_combout\)) # (\aluControl[1]~input_o\) ) ) ) # ( !\inputA[0]~input_o\ & ( \Mux92~4_combout\ & ( (!\Mux4~1_combout\ & (\aluControl[1]~input_o\ & 
-- (\Mux92~25_combout\))) # (\Mux4~1_combout\ & (((\aluControl[1]~input_o\ & \Mux92~25_combout\)) # (\Mux66~2_combout\))) ) ) ) # ( \inputA[0]~input_o\ & ( !\Mux92~4_combout\ & ( (\Mux4~1_combout\ & \Mux66~2_combout\) ) ) ) # ( !\inputA[0]~input_o\ & ( 
-- !\Mux92~4_combout\ & ( (!\Mux4~1_combout\ & (\aluControl[1]~input_o\ & (\Mux92~25_combout\))) # (\Mux4~1_combout\ & (((\aluControl[1]~input_o\ & \Mux92~25_combout\)) # (\Mux66~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000000101010100000011010101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~1_combout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux92~25_combout\,
	datad => \ALT_INV_Mux66~2_combout\,
	datae => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_Mux92~4_combout\,
	combout => \Mux65~2_combout\);

-- Location: LABCELL_X12_Y3_N42
\Mux65~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~3_combout\ = ( \inputA[12]~input_o\ & ( \Mux65~2_combout\ & ( (!\Mux104~3_combout\ & (((\aluControl[3]~input_o\) # (\inputB[12]~input_o\)))) # (\Mux104~3_combout\ & (\Add0~53_sumout\ & ((!\aluControl[3]~input_o\)))) ) ) ) # ( !\inputA[12]~input_o\ 
-- & ( \Mux65~2_combout\ & ( (!\Mux104~3_combout\ & (((\aluControl[3]~input_o\)))) # (\Mux104~3_combout\ & ((!\aluControl[3]~input_o\ & (\Add0~53_sumout\)) # (\aluControl[3]~input_o\ & ((!\inputB[12]~input_o\))))) ) ) ) # ( \inputA[12]~input_o\ & ( 
-- !\Mux65~2_combout\ & ( (!\aluControl[3]~input_o\ & ((!\Mux104~3_combout\ & ((\inputB[12]~input_o\))) # (\Mux104~3_combout\ & (\Add0~53_sumout\)))) ) ) ) # ( !\inputA[12]~input_o\ & ( !\Mux65~2_combout\ & ( (\Mux104~3_combout\ & ((!\aluControl[3]~input_o\ 
-- & (\Add0~53_sumout\)) # (\aluControl[3]~input_o\ & ((!\inputB[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110000000111010000000000010001111111000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~53_sumout\,
	datab => \ALT_INV_Mux104~3_combout\,
	datac => \ALT_INV_inputB[12]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_inputA[12]~input_o\,
	dataf => \ALT_INV_Mux65~2_combout\,
	combout => \Mux65~3_combout\);

-- Location: LABCELL_X12_Y3_N0
\Mux65~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~4_combout\ = ( \inputA[12]~input_o\ & ( \Mux104~1_combout\ & ( (\Mux65~1_combout\ & !\Mux104~2_combout\) ) ) ) # ( !\inputA[12]~input_o\ & ( \Mux104~1_combout\ & ( (\Mux65~1_combout\ & !\Mux104~2_combout\) ) ) ) # ( \inputA[12]~input_o\ & ( 
-- !\Mux104~1_combout\ & ( (\Mux65~3_combout\) # (\Mux104~2_combout\) ) ) ) # ( !\inputA[12]~input_o\ & ( !\Mux104~1_combout\ & ( (!\Mux104~2_combout\ & ((\Mux65~3_combout\))) # (\Mux104~2_combout\ & (\inputB[12]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111001100111111111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~1_combout\,
	datab => \ALT_INV_Mux104~2_combout\,
	datac => \ALT_INV_inputB[12]~input_o\,
	datad => \ALT_INV_Mux65~3_combout\,
	datae => \ALT_INV_inputA[12]~input_o\,
	dataf => \ALT_INV_Mux104~1_combout\,
	combout => \Mux65~4_combout\);

-- Location: LABCELL_X12_Y3_N33
\res[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(12) = ( res(12) & ( (\Mux160~0_combout\) # (\Mux65~4_combout\) ) ) # ( !res(12) & ( (\Mux65~4_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~4_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(12),
	combout => res(12));

-- Location: LABCELL_X12_Y7_N51
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \inputA[16]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[16]~input_o\) ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \inputA[16]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[16]~input_o\) ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputA[16]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X10_Y6_N9
\Mux144~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~1_combout\ = ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & \Add0~65_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Add0~65_sumout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux144~1_combout\);

-- Location: LABCELL_X10_Y6_N6
\Mux144~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~2_combout\ = ( \aluControl[0]~input_o\ & ( (\inputB[0]~input_o\ & \aluControl[3]~input_o\) ) ) # ( !\aluControl[0]~input_o\ & ( (\aluControl[3]~input_o\ & (!\inputB[16]~input_o\ & !\inputA[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_inputB[16]~input_o\,
	datad => \ALT_INV_inputA[16]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux144~2_combout\);

-- Location: LABCELL_X17_Y6_N42
\Mux92~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~30_combout\ = ( \inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[8]~input_o\) ) ) # ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputB[16]~input_o\)) # (\inputA[4]~input_o\ & ((\inputB[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_inputB[8]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux92~30_combout\);

-- Location: LABCELL_X16_Y4_N54
\Mux92~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~31_combout\ = ( \Mux92~5_combout\ & ( \inputA[1]~input_o\ & ( (\Mux92~26_combout\) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux92~5_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & \Mux92~26_combout\) ) ) ) # ( \Mux92~5_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux92~30_combout\)) # (\inputA[2]~input_o\ & ((\Mux92~24_combout\))) ) ) ) # ( !\Mux92~5_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux92~30_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux92~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~30_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux92~26_combout\,
	datad => \ALT_INV_Mux92~24_combout\,
	datae => \ALT_INV_Mux92~5_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~31_combout\);

-- Location: LABCELL_X19_Y4_N57
\Mux138~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~40_combout\ = ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & (\inputB[23]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux138~40_combout\);

-- Location: LABCELL_X21_Y4_N0
\Mux138~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~41_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~40_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~32_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~36_combout\ ) ) ) 
-- # ( !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~32_combout\,
	datab => \ALT_INV_Mux138~36_combout\,
	datac => \ALT_INV_Mux138~40_combout\,
	datad => \ALT_INV_Mux138~3_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~41_combout\);

-- Location: LABCELL_X12_Y4_N18
\Mux144~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~0_combout\ = ( \inputA[0]~input_o\ & ( \aluControl[0]~input_o\ & ( \Mux138~41_combout\ ) ) ) # ( !\inputA[0]~input_o\ & ( \aluControl[0]~input_o\ & ( \Mux138~39_combout\ ) ) ) # ( \inputA[0]~input_o\ & ( !\aluControl[0]~input_o\ & ( 
-- \Mux92~29_combout\ ) ) ) # ( !\inputA[0]~input_o\ & ( !\aluControl[0]~input_o\ & ( \Mux92~31_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~31_combout\,
	datab => \ALT_INV_Mux138~39_combout\,
	datac => \ALT_INV_Mux138~41_combout\,
	datad => \ALT_INV_Mux92~29_combout\,
	datae => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux144~0_combout\);

-- Location: LABCELL_X16_Y7_N18
\Mux2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = ( \shamt[1]~input_o\ & ( \inputB[15]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[14]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[13]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[15]~input_o\ & ( (\inputB[16]~input_o\) # 
-- (\shamt[0]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[15]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[14]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[13]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[15]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & \inputB[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[16]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux2~10_combout\);

-- Location: MLABCELL_X13_Y7_N45
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & \Mux2~7_combout\) ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & ((\Mux2~10_combout\))) # (\shamt[4]~input_o\ & (\Mux2~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~4_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_Mux2~7_combout\,
	datad => \ALT_INV_Mux2~10_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X13_Y7_N12
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( (\Mux2~3_combout\ & !\shamt[4]~input_o\) ) ) ) # ( !\shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux8~0_combout\ ) ) ) # ( \shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( 
-- (\Mux2~5_combout\ & !\shamt[4]~input_o\) ) ) ) # ( !\shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010100000101000000000000111111110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~5_combout\,
	datab => \ALT_INV_Mux2~3_combout\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X10_Y6_N30
\Mux144~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~7_combout\ = ( !\aluControl[0]~input_o\ & ( ((!\aluControl[3]~input_o\ & (\inputB[16]~input_o\ & (\inputA[16]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux16~0_combout\))))) ) ) # ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- (((\inputA[16]~input_o\)) # (\inputB[16]~input_o\))) # (\aluControl[3]~input_o\ & ((((!\shamt[4]~input_o\ & \Mux40~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001011101110111011100001111000011110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_inputA[16]~input_o\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_Mux40~1_combout\,
	datae => \ALT_INV_aluControl[0]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	datag => \ALT_INV_Mux16~0_combout\,
	combout => \Mux144~7_combout\);

-- Location: LABCELL_X10_Y6_N48
\Mux144~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~3_combout\ = ( !\aluControl[2]~input_o\ & ( (!\aluControl[1]~input_o\ & (((\Mux144~7_combout\)))) # (\aluControl[1]~input_o\ & ((((\aluControl[3]~input_o\ & \Mux144~0_combout\))) # (\Mux144~1_combout\))) ) ) # ( \aluControl[2]~input_o\ & ( 
-- (!\aluControl[1]~input_o\ & (((\Mux144~2_combout\)))) # (\aluControl[1]~input_o\ & (\Mux144~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000110110001101100011011010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_Mux144~1_combout\,
	datac => \ALT_INV_Mux144~2_combout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_Mux144~0_combout\,
	datag => \ALT_INV_Mux144~7_combout\,
	combout => \Mux144~3_combout\);

-- Location: LABCELL_X10_Y6_N57
\res[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(16) = ( \Mux160~0_combout\ & ( res(16) ) ) # ( !\Mux160~0_combout\ & ( \Mux144~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux144~3_combout\,
	datad => ALT_INV_res(16),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(16));

-- Location: MLABCELL_X18_Y6_N42
\Mux138~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~35_combout\ = ( \Mux138~6_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\) # (\Mux138~34_combout\) ) ) ) # ( !\Mux138~6_combout\ & ( \inputA[1]~input_o\ & ( (\inputA[2]~input_o\ & \Mux138~34_combout\) ) ) ) # ( \Mux138~6_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~7_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~8_combout\))) ) ) ) # ( !\Mux138~6_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~7_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux138~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~7_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~8_combout\,
	datad => \ALT_INV_Mux138~34_combout\,
	datae => \ALT_INV_Mux138~6_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~35_combout\);

-- Location: MLABCELL_X18_Y7_N42
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Mux61~10_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\) # (\Mux61~12_combout\) ) ) ) # ( !\Mux61~10_combout\ & ( \shamt[3]~input_o\ & ( (\Mux61~12_combout\ & \shamt[2]~input_o\) ) ) ) # ( \Mux61~10_combout\ & ( 
-- !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux61~8_combout\))) # (\shamt[2]~input_o\ & (\Mux61~9_combout\)) ) ) ) # ( !\Mux61~10_combout\ & ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux61~8_combout\))) # (\shamt[2]~input_o\ & 
-- (\Mux61~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~9_combout\,
	datab => \ALT_INV_Mux61~12_combout\,
	datac => \ALT_INV_Mux61~8_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	datae => \ALT_INV_Mux61~10_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X18_Y7_N54
\Mux59~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = ( !\shamt[3]~input_o\ & ( (\Mux61~11_combout\ & !\shamt[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux61~11_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux59~1_combout\);

-- Location: LABCELL_X12_Y5_N24
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \Mux59~1_combout\ & ( \Mux138~33_combout\ & ( (!\Mux104~0_combout\ & (((\aluControl[1]~input_o\) # (\Mux0~0_combout\)))) # (\Mux104~0_combout\ & (((!\aluControl[1]~input_o\)) # (\Mux138~35_combout\))) ) ) ) # ( !\Mux59~1_combout\ & ( 
-- \Mux138~33_combout\ & ( (!\Mux104~0_combout\ & (((\aluControl[1]~input_o\) # (\Mux0~0_combout\)))) # (\Mux104~0_combout\ & (\Mux138~35_combout\ & ((\aluControl[1]~input_o\)))) ) ) ) # ( \Mux59~1_combout\ & ( !\Mux138~33_combout\ & ( (!\Mux104~0_combout\ & 
-- (((\Mux0~0_combout\ & !\aluControl[1]~input_o\)))) # (\Mux104~0_combout\ & (((!\aluControl[1]~input_o\)) # (\Mux138~35_combout\))) ) ) ) # ( !\Mux59~1_combout\ & ( !\Mux138~33_combout\ & ( (!\Mux104~0_combout\ & (((\Mux0~0_combout\ & 
-- !\aluControl[1]~input_o\)))) # (\Mux104~0_combout\ & (\Mux138~35_combout\ & ((\aluControl[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~0_combout\,
	datab => \ALT_INV_Mux138~35_combout\,
	datac => \ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux59~1_combout\,
	dataf => \ALT_INV_Mux138~33_combout\,
	combout => \Mux0~1_combout\);

-- Location: MLABCELL_X18_Y4_N12
\Mux92~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~23_combout\ = ( \Mux92~1_combout\ & ( \Mux92~2_combout\ & ( ((!\inputA[1]~input_o\ & (\Mux92~22_combout\)) # (\inputA[1]~input_o\ & ((\Mux92~0_combout\)))) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux92~1_combout\ & ( \Mux92~2_combout\ & ( 
-- (!\inputA[2]~input_o\ & ((!\inputA[1]~input_o\ & (\Mux92~22_combout\)) # (\inputA[1]~input_o\ & ((\Mux92~0_combout\))))) # (\inputA[2]~input_o\ & (((!\inputA[1]~input_o\)))) ) ) ) # ( \Mux92~1_combout\ & ( !\Mux92~2_combout\ & ( (!\inputA[2]~input_o\ & 
-- ((!\inputA[1]~input_o\ & (\Mux92~22_combout\)) # (\inputA[1]~input_o\ & ((\Mux92~0_combout\))))) # (\inputA[2]~input_o\ & (((\inputA[1]~input_o\)))) ) ) ) # ( !\Mux92~1_combout\ & ( !\Mux92~2_combout\ & ( (!\inputA[2]~input_o\ & ((!\inputA[1]~input_o\ & 
-- (\Mux92~22_combout\)) # (\inputA[1]~input_o\ & ((\Mux92~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~22_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux92~0_combout\,
	datad => \ALT_INV_inputA[1]~input_o\,
	datae => \ALT_INV_Mux92~1_combout\,
	dataf => \ALT_INV_Mux92~2_combout\,
	combout => \Mux92~23_combout\);

-- Location: LABCELL_X16_Y7_N6
\Mux21~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = ( \shamt[1]~input_o\ & ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[10]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[13]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[12]~input_o\))) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[11]~input_o\ & ( (\shamt[0]~input_o\ & \inputB[10]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[13]~input_o\)) # 
-- (\shamt[0]~input_o\ & ((\inputB[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[13]~input_o\,
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[10]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux21~7_combout\);

-- Location: MLABCELL_X18_Y5_N42
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Mux21~7_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\Mux21~5_combout\))) # (\shamt[3]~input_o\ & (\Mux21~4_combout\)) ) ) ) # ( !\Mux21~7_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & 
-- ((\Mux21~5_combout\))) # (\shamt[3]~input_o\ & (\Mux21~4_combout\)) ) ) ) # ( \Mux21~7_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\) # (\Mux21~6_combout\) ) ) ) # ( !\Mux21~7_combout\ & ( !\shamt[2]~input_o\ & ( (\Mux21~6_combout\ & 
-- \shamt[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~4_combout\,
	datab => \ALT_INV_Mux21~5_combout\,
	datac => \ALT_INV_Mux21~6_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_Mux21~7_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LABCELL_X12_Y4_N54
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \inputA[0]~input_o\ & ( \Mux3~1_combout\ & ( ((\aluControl[1]~input_o\ & \Mux92~25_combout\)) # (\Mux66~2_combout\) ) ) ) # ( !\inputA[0]~input_o\ & ( \Mux3~1_combout\ & ( ((\aluControl[1]~input_o\ & \Mux92~23_combout\)) # 
-- (\Mux66~2_combout\) ) ) ) # ( \inputA[0]~input_o\ & ( !\Mux3~1_combout\ & ( (\aluControl[1]~input_o\ & \Mux92~25_combout\) ) ) ) # ( !\inputA[0]~input_o\ & ( !\Mux3~1_combout\ & ( (\aluControl[1]~input_o\ & \Mux92~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001010000010100010001111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_Mux92~23_combout\,
	datac => \ALT_INV_Mux92~25_combout\,
	datad => \ALT_INV_Mux66~2_combout\,
	datae => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: LABCELL_X12_Y5_N18
\Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = ( \aluControl[3]~input_o\ & ( \Add0~49_sumout\ & ( (!\Mux104~3_combout\ & (\Mux0~2_combout\)) # (\Mux104~3_combout\ & (((!\inputA[13]~input_o\ & !\inputB[13]~input_o\)))) ) ) ) # ( !\aluControl[3]~input_o\ & ( \Add0~49_sumout\ & ( 
-- ((\inputA[13]~input_o\ & \inputB[13]~input_o\)) # (\Mux104~3_combout\) ) ) ) # ( \aluControl[3]~input_o\ & ( !\Add0~49_sumout\ & ( (!\Mux104~3_combout\ & (\Mux0~2_combout\)) # (\Mux104~3_combout\ & (((!\inputA[13]~input_o\ & !\inputB[13]~input_o\)))) ) ) 
-- ) # ( !\aluControl[3]~input_o\ & ( !\Add0~49_sumout\ & ( (!\Mux104~3_combout\ & (\inputA[13]~input_o\ & \inputB[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010011100100010001001010101010111110111001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~3_combout\,
	datab => \ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_inputA[13]~input_o\,
	datad => \ALT_INV_inputB[13]~input_o\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \Mux0~3_combout\);

-- Location: LABCELL_X12_Y5_N36
\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( !\Mux104~1_combout\ & ( \Mux104~2_combout\ & ( (\inputA[13]~input_o\) # (\inputB[13]~input_o\) ) ) ) # ( \Mux104~1_combout\ & ( !\Mux104~2_combout\ & ( \Mux0~1_combout\ ) ) ) # ( !\Mux104~1_combout\ & ( !\Mux104~2_combout\ & ( 
-- \Mux0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_inputB[13]~input_o\,
	datac => \ALT_INV_Mux0~3_combout\,
	datad => \ALT_INV_inputA[13]~input_o\,
	datae => \ALT_INV_Mux104~1_combout\,
	dataf => \ALT_INV_Mux104~2_combout\,
	combout => \Mux0~4_combout\);

-- Location: LABCELL_X12_Y5_N30
\res[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(13) = ( res(13) & ( (\Mux160~0_combout\) # (\Mux0~4_combout\) ) ) # ( !res(13) & ( (\Mux0~4_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux0~4_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(13),
	combout => res(13));

-- Location: LABCELL_X12_Y7_N54
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[17]~input_o\) ) + ( \inputA[17]~input_o\ ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[17]~input_o\) ) + ( \inputA[17]~input_o\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputA[17]~input_o\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X10_Y3_N18
\Mux150~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~1_combout\ = ( \aluControl[0]~input_o\ & ( (\aluControl[1]~input_o\) # (\aluControl[2]~input_o\) ) ) # ( !\aluControl[0]~input_o\ & ( (!\aluControl[2]~input_o\ & \aluControl[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux150~1_combout\);

-- Location: MLABCELL_X13_Y4_N3
\Mux138~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~42_combout\ = ( \inputB[24]~input_o\ & ( (!\inputA[4]~input_o\ & !\inputA[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[24]~input_o\,
	combout => \Mux138~42_combout\);

-- Location: MLABCELL_X13_Y4_N48
\Mux138~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~43_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~42_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux138~34_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~38_combout\ ) ) ) 
-- # ( !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux138~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~38_combout\,
	datab => \ALT_INV_Mux138~34_combout\,
	datac => \ALT_INV_Mux138~42_combout\,
	datad => \ALT_INV_Mux138~8_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~43_combout\);

-- Location: LABCELL_X17_Y4_N33
\Mux92~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~32_combout\ = ( \inputB[1]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[17]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[9]~input_o\))))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\)) ) ) # ( !\inputB[1]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[17]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[9]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[17]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	combout => \Mux92~32_combout\);

-- Location: LABCELL_X14_Y4_N42
\Mux92~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~33_combout\ = ( \inputA[1]~input_o\ & ( \Mux92~22_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~28_combout\))) # (\inputA[2]~input_o\ & (\Mux92~0_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux92~22_combout\ & ( (\Mux92~32_combout\) # 
-- (\inputA[2]~input_o\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux92~22_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~28_combout\))) # (\inputA[2]~input_o\ & (\Mux92~0_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux92~22_combout\ & ( (!\inputA[2]~input_o\ 
-- & \Mux92~32_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~0_combout\,
	datab => \ALT_INV_Mux92~28_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux92~32_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux92~22_combout\,
	combout => \Mux92~33_combout\);

-- Location: LABCELL_X10_Y4_N24
\Mux145~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~4_combout\ = ( \Mux138~41_combout\ & ( \Mux92~33_combout\ & ( (!\inputA[0]~input_o\) # ((!\aluControl[0]~input_o\ & (\Mux92~31_combout\)) # (\aluControl[0]~input_o\ & ((\Mux138~43_combout\)))) ) ) ) # ( !\Mux138~41_combout\ & ( \Mux92~33_combout\ 
-- & ( (!\inputA[0]~input_o\ & (!\aluControl[0]~input_o\)) # (\inputA[0]~input_o\ & ((!\aluControl[0]~input_o\ & (\Mux92~31_combout\)) # (\aluControl[0]~input_o\ & ((\Mux138~43_combout\))))) ) ) ) # ( \Mux138~41_combout\ & ( !\Mux92~33_combout\ & ( 
-- (!\inputA[0]~input_o\ & (\aluControl[0]~input_o\)) # (\inputA[0]~input_o\ & ((!\aluControl[0]~input_o\ & (\Mux92~31_combout\)) # (\aluControl[0]~input_o\ & ((\Mux138~43_combout\))))) ) ) ) # ( !\Mux138~41_combout\ & ( !\Mux92~33_combout\ & ( 
-- (\inputA[0]~input_o\ & ((!\aluControl[0]~input_o\ & (\Mux92~31_combout\)) # (\aluControl[0]~input_o\ & ((\Mux138~43_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux92~31_combout\,
	datad => \ALT_INV_Mux138~43_combout\,
	datae => \ALT_INV_Mux138~41_combout\,
	dataf => \ALT_INV_Mux92~33_combout\,
	combout => \Mux145~4_combout\);

-- Location: LABCELL_X20_Y5_N36
\res~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~0_combout\ = ( !\inputB[17]~input_o\ & ( !\inputA[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputA[17]~input_o\,
	combout => \res~0_combout\);

-- Location: LABCELL_X10_Y4_N12
\Mux150~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~0_combout\ = ( !\aluControl[0]~input_o\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux150~0_combout\);

-- Location: LABCELL_X10_Y4_N36
\Mux145~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~0_combout\ = ( \aluControl[0]~input_o\ & ( (!\shamt[4]~input_o\) # (\aluControl[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux145~0_combout\);

-- Location: LABCELL_X20_Y5_N30
\Mux21~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~9_combout\ = ( \inputB[17]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[15]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[14]~input_o\))) ) ) ) # ( !\inputB[17]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- (\inputB[15]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[14]~input_o\))) ) ) ) # ( \inputB[17]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[16]~input_o\) ) ) ) # ( !\inputB[17]~input_o\ & ( !\shamt[1]~input_o\ & ( 
-- (\shamt[0]~input_o\ & \inputB[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[15]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[16]~input_o\,
	datae => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \Mux21~9_combout\);

-- Location: MLABCELL_X18_Y5_N36
\Mux145~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~2_combout\ = ( \Mux21~9_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux21~5_combout\))) # (\shamt[2]~input_o\ & (\Mux21~6_combout\)) ) ) ) # ( !\Mux21~9_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & 
-- ((\Mux21~5_combout\))) # (\shamt[2]~input_o\ & (\Mux21~6_combout\)) ) ) ) # ( \Mux21~9_combout\ & ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\) # (\Mux21~7_combout\) ) ) ) # ( !\Mux21~9_combout\ & ( !\shamt[3]~input_o\ & ( (\Mux21~7_combout\ & 
-- \shamt[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~7_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux21~6_combout\,
	datad => \ALT_INV_Mux21~5_combout\,
	datae => \ALT_INV_Mux21~9_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux145~2_combout\);

-- Location: LABCELL_X10_Y4_N39
\Mux148~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~0_combout\ = ( !\aluControl[0]~input_o\ & ( \shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux148~0_combout\);

-- Location: LABCELL_X10_Y4_N15
\Mux145~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~1_combout\ = ( !\shamt[2]~input_o\ & ( (\Mux21~4_combout\ & (\Mux148~0_combout\ & !\shamt[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~4_combout\,
	datac => \ALT_INV_Mux148~0_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux145~1_combout\);

-- Location: LABCELL_X10_Y4_N48
\Mux145~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~3_combout\ = ( !\Mux145~1_combout\ & ( (!\Mux150~0_combout\ & ((!\Mux145~0_combout\) # ((!\Mux63~1_combout\)))) # (\Mux150~0_combout\ & (!\Mux145~2_combout\ & ((!\Mux145~0_combout\) # (!\Mux63~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux150~0_combout\,
	datab => \ALT_INV_Mux145~0_combout\,
	datac => \ALT_INV_Mux145~2_combout\,
	datad => \ALT_INV_Mux63~1_combout\,
	dataf => \ALT_INV_Mux145~1_combout\,
	combout => \Mux145~3_combout\);

-- Location: LABCELL_X10_Y4_N30
\Mux145~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~5_combout\ = ( \res~0_combout\ & ( \Mux145~3_combout\ & ( (!\Mux150~1_combout\ & (((\aluControl[2]~input_o\)))) # (\Mux150~1_combout\ & ((!\aluControl[2]~input_o\ & (\Mux145~4_combout\)) # (\aluControl[2]~input_o\ & ((\inputB[1]~input_o\))))) ) ) 
-- ) # ( !\res~0_combout\ & ( \Mux145~3_combout\ & ( (\Mux150~1_combout\ & ((!\aluControl[2]~input_o\ & (\Mux145~4_combout\)) # (\aluControl[2]~input_o\ & ((\inputB[1]~input_o\))))) ) ) ) # ( \res~0_combout\ & ( !\Mux145~3_combout\ & ( (!\Mux150~1_combout\) 
-- # ((!\aluControl[2]~input_o\ & (\Mux145~4_combout\)) # (\aluControl[2]~input_o\ & ((\inputB[1]~input_o\)))) ) ) ) # ( !\res~0_combout\ & ( !\Mux145~3_combout\ & ( (!\Mux150~1_combout\ & (((!\aluControl[2]~input_o\)))) # (\Mux150~1_combout\ & 
-- ((!\aluControl[2]~input_o\ & (\Mux145~4_combout\)) # (\aluControl[2]~input_o\ & ((\inputB[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000101101110111010111100010001000001010001000110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux150~1_combout\,
	datab => \ALT_INV_Mux145~4_combout\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_res~0_combout\,
	dataf => \ALT_INV_Mux145~3_combout\,
	combout => \Mux145~5_combout\);

-- Location: LABCELL_X10_Y4_N0
\Mux145~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~6_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[0]~input_o\ & (\inputA[17]~input_o\ & (\inputB[17]~input_o\))) # (\aluControl[0]~input_o\ & (((\inputB[17]~input_o\)) # (\inputA[17]~input_o\))))) # 
-- (\aluControl[3]~input_o\ & ((((\Mux145~5_combout\))))) ) ) # ( \aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & (!\aluControl[0]~input_o\ & (\Add0~69_sumout\))) # (\aluControl[3]~input_o\ & ((((\Mux145~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010001001100000010000000100000110111011111110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Add0~69_sumout\,
	datad => \ALT_INV_inputB[17]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux145~5_combout\,
	datag => \ALT_INV_inputA[17]~input_o\,
	combout => \Mux145~6_combout\);

-- Location: LABCELL_X10_Y4_N51
\res[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(17) = ( \Mux160~0_combout\ & ( res(17) ) ) # ( !\Mux160~0_combout\ & ( \Mux145~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_res(17),
	datad => \ALT_INV_Mux145~6_combout\,
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(17));

-- Location: LABCELL_X16_Y7_N30
\Mux2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = ( \inputB[14]~input_o\ & ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[12]~input_o\)))) # (\shamt[0]~input_o\ & (((\inputB[13]~input_o\)) # (\shamt[1]~input_o\))) ) ) ) # ( !\inputB[14]~input_o\ & 
-- ( \inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & (\shamt[1]~input_o\ & ((\inputB[12]~input_o\)))) # (\shamt[0]~input_o\ & (((\inputB[13]~input_o\)) # (\shamt[1]~input_o\))) ) ) ) # ( \inputB[14]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ 
-- & ((!\shamt[1]~input_o\) # ((\inputB[12]~input_o\)))) # (\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & (\inputB[13]~input_o\))) ) ) ) # ( !\inputB[14]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\shamt[0]~input_o\ & (\shamt[1]~input_o\ & 
-- ((\inputB[12]~input_o\)))) # (\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & (\inputB[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	datae => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: LABCELL_X19_Y6_N42
\Mux2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = ( \shamt[2]~input_o\ & ( \Mux2~0_combout\ & ( (\shamt[3]~input_o\) # (\Mux2~1_combout\) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux2~0_combout\ & ( (!\shamt[3]~input_o\ & ((\Mux2~8_combout\))) # (\shamt[3]~input_o\ & (\Mux2~2_combout\)) ) ) 
-- ) # ( \shamt[2]~input_o\ & ( !\Mux2~0_combout\ & ( (\Mux2~1_combout\ & !\shamt[3]~input_o\) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux2~0_combout\ & ( (!\shamt[3]~input_o\ & ((\Mux2~8_combout\))) # (\shamt[3]~input_o\ & (\Mux2~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~1_combout\,
	datab => \ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_Mux2~8_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux2~9_combout\);

-- Location: LABCELL_X12_Y4_N42
\Mux142~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~2_combout\ = ( \aluControl[1]~input_o\ & ( \Mux92~23_combout\ & ( (((\Mux2~9_combout\ & \Mux66~2_combout\)) # (\Mux92~27_combout\)) # (\inputA[0]~input_o\) ) ) ) # ( !\aluControl[1]~input_o\ & ( \Mux92~23_combout\ & ( (\Mux2~9_combout\ & 
-- \Mux66~2_combout\) ) ) ) # ( \aluControl[1]~input_o\ & ( !\Mux92~23_combout\ & ( (!\Mux2~9_combout\ & (!\inputA[0]~input_o\ & (\Mux92~27_combout\))) # (\Mux2~9_combout\ & (((!\inputA[0]~input_o\ & \Mux92~27_combout\)) # (\Mux66~2_combout\))) ) ) ) # ( 
-- !\aluControl[1]~input_o\ & ( !\Mux92~23_combout\ & ( (\Mux2~9_combout\ & \Mux66~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011000101110100000000010101010011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~9_combout\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux92~27_combout\,
	datad => \ALT_INV_Mux66~2_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux92~23_combout\,
	combout => \Mux142~2_combout\);

-- Location: LABCELL_X12_Y5_N48
\Mux142~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~3_combout\ = ( \inputA[14]~input_o\ & ( \Mux104~3_combout\ & ( (\Add0~57_sumout\ & !\aluControl[3]~input_o\) ) ) ) # ( !\inputA[14]~input_o\ & ( \Mux104~3_combout\ & ( (!\aluControl[3]~input_o\ & (\Add0~57_sumout\)) # (\aluControl[3]~input_o\ & 
-- ((!\inputB[14]~input_o\))) ) ) ) # ( \inputA[14]~input_o\ & ( !\Mux104~3_combout\ & ( (!\aluControl[3]~input_o\ & (\inputB[14]~input_o\)) # (\aluControl[3]~input_o\ & ((\Mux142~2_combout\))) ) ) ) # ( !\inputA[14]~input_o\ & ( !\Mux104~3_combout\ & ( 
-- (\Mux142~2_combout\ & \aluControl[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110000111101010101110011000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~57_sumout\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_Mux142~2_combout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_inputA[14]~input_o\,
	dataf => \ALT_INV_Mux104~3_combout\,
	combout => \Mux142~3_combout\);

-- Location: LABCELL_X14_Y5_N54
\Mux34~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~17_combout\ = ( !\shamt[1]~input_o\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[30]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[31]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_inputB[31]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux34~17_combout\);

-- Location: LABCELL_X19_Y6_N12
\Mux142~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~0_combout\ = ( \Mux34~3_combout\ & ( \Mux34~2_combout\ & ( (!\shamt[3]~input_o\ & (((\shamt[2]~input_o\) # (\Mux34~1_combout\)))) # (\shamt[3]~input_o\ & (((!\shamt[2]~input_o\)) # (\Mux34~5_combout\))) ) ) ) # ( !\Mux34~3_combout\ & ( 
-- \Mux34~2_combout\ & ( (!\shamt[3]~input_o\ & (((\shamt[2]~input_o\) # (\Mux34~1_combout\)))) # (\shamt[3]~input_o\ & (\Mux34~5_combout\ & ((\shamt[2]~input_o\)))) ) ) ) # ( \Mux34~3_combout\ & ( !\Mux34~2_combout\ & ( (!\shamt[3]~input_o\ & 
-- (((\Mux34~1_combout\ & !\shamt[2]~input_o\)))) # (\shamt[3]~input_o\ & (((!\shamt[2]~input_o\)) # (\Mux34~5_combout\))) ) ) ) # ( !\Mux34~3_combout\ & ( !\Mux34~2_combout\ & ( (!\shamt[3]~input_o\ & (((\Mux34~1_combout\ & !\shamt[2]~input_o\)))) # 
-- (\shamt[3]~input_o\ & (\Mux34~5_combout\ & ((\shamt[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~5_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux34~1_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	datae => \ALT_INV_Mux34~3_combout\,
	dataf => \ALT_INV_Mux34~2_combout\,
	combout => \Mux142~0_combout\);

-- Location: LABCELL_X12_Y5_N54
\Mux142~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~1_combout\ = ( \Mux138~37_combout\ & ( \Mux142~0_combout\ & ( (!\Mux104~0_combout\ & (((!\aluControl[1]~input_o\)) # (\Mux138~35_combout\))) # (\Mux104~0_combout\ & (((\aluControl[1]~input_o\) # (\Mux34~17_combout\)))) ) ) ) # ( 
-- !\Mux138~37_combout\ & ( \Mux142~0_combout\ & ( (!\Mux104~0_combout\ & (((!\aluControl[1]~input_o\)) # (\Mux138~35_combout\))) # (\Mux104~0_combout\ & (((\Mux34~17_combout\ & !\aluControl[1]~input_o\)))) ) ) ) # ( \Mux138~37_combout\ & ( 
-- !\Mux142~0_combout\ & ( (!\Mux104~0_combout\ & (\Mux138~35_combout\ & ((\aluControl[1]~input_o\)))) # (\Mux104~0_combout\ & (((\aluControl[1]~input_o\) # (\Mux34~17_combout\)))) ) ) ) # ( !\Mux138~37_combout\ & ( !\Mux142~0_combout\ & ( 
-- (!\Mux104~0_combout\ & (\Mux138~35_combout\ & ((\aluControl[1]~input_o\)))) # (\Mux104~0_combout\ & (((\Mux34~17_combout\ & !\aluControl[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux104~0_combout\,
	datab => \ALT_INV_Mux138~35_combout\,
	datac => \ALT_INV_Mux34~17_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux138~37_combout\,
	dataf => \ALT_INV_Mux142~0_combout\,
	combout => \Mux142~1_combout\);

-- Location: LABCELL_X12_Y5_N42
\Mux142~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~4_combout\ = ( !\Mux104~1_combout\ & ( \Mux104~2_combout\ & ( (\inputB[14]~input_o\) # (\inputA[14]~input_o\) ) ) ) # ( \Mux104~1_combout\ & ( !\Mux104~2_combout\ & ( \Mux142~1_combout\ ) ) ) # ( !\Mux104~1_combout\ & ( !\Mux104~2_combout\ & ( 
-- \Mux142~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101110111011101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[14]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_Mux142~3_combout\,
	datad => \ALT_INV_Mux142~1_combout\,
	datae => \ALT_INV_Mux104~1_combout\,
	dataf => \ALT_INV_Mux104~2_combout\,
	combout => \Mux142~4_combout\);

-- Location: LABCELL_X12_Y5_N6
\res[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(14) = ( res(14) & ( (\Mux160~0_combout\) # (\Mux142~4_combout\) ) ) # ( !res(14) & ( (\Mux142~4_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux142~4_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(14),
	combout => res(14));

-- Location: LABCELL_X12_Y5_N12
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !res(17) & ( !res(14) & ( (!res(15) & (!res(12) & (!res(16) & !res(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(15),
	datab => ALT_INV_res(12),
	datac => ALT_INV_res(16),
	datad => ALT_INV_res(13),
	datae => ALT_INV_res(17),
	dataf => ALT_INV_res(14),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X12_Y7_N57
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \inputA[18]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[18]~input_o\) ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( \inputA[18]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[18]~input_o\) ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[18]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X12_Y6_N0
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \inputA[19]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[19]~input_o\) ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \inputA[19]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[19]~input_o\) ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[19]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X12_Y6_N3
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[20]~input_o\) ) + ( \inputA[20]~input_o\ ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[20]~input_o\) ) + ( \inputA[20]~input_o\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_inputA[20]~input_o\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X12_Y6_N6
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[21]~input_o\) ) + ( \inputA[21]~input_o\ ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[21]~input_o\) ) + ( \inputA[21]~input_o\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[21]~input_o\,
	dataf => \ALT_INV_inputA[21]~input_o\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: LABCELL_X12_Y6_N9
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[22]~input_o\) ) + ( \inputA[22]~input_o\ ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[22]~input_o\) ) + ( \inputA[22]~input_o\ ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[22]~input_o\,
	datad => \ALT_INV_inputB[22]~input_o\,
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: MLABCELL_X13_Y4_N6
\Mux138~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~46_combout\ = (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[26]~input_o\,
	combout => \Mux138~46_combout\);

-- Location: MLABCELL_X13_Y4_N36
\Mux138~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~50_combout\ = ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux138~50_combout\);

-- Location: MLABCELL_X13_Y4_N42
\Mux138~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~51_combout\ = ( \Mux138~50_combout\ & ( \inputA[1]~input_o\ & ( (\Mux138~42_combout\) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux138~50_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & \Mux138~42_combout\) ) ) ) # ( \Mux138~50_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~38_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~46_combout\))) ) ) ) # ( !\Mux138~50_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~38_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux138~46_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~38_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~42_combout\,
	datad => \ALT_INV_Mux138~46_combout\,
	datae => \ALT_INV_Mux138~50_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~51_combout\);

-- Location: LABCELL_X19_Y4_N30
\Mux92~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~42_combout\ = ( \inputB[6]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[22]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[14]~input_o\))))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\)) ) ) # ( !\inputB[6]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[22]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[14]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[22]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \Mux92~42_combout\);

-- Location: LABCELL_X17_Y4_N54
\Mux92~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~38_combout\ = ( \inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[12]~input_o\) ) ) # ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[20]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputB[20]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux92~38_combout\);

-- Location: MLABCELL_X13_Y4_N18
\Mux92~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~34_combout\ = ( \inputB[2]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[18]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[10]~input_o\)))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\)) ) ) # ( !\inputB[2]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[18]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_inputB[2]~input_o\,
	combout => \Mux92~34_combout\);

-- Location: LABCELL_X16_Y4_N0
\Mux92~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~43_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~30_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~38_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~34_combout\ ) ) ) # ( 
-- !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~42_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~42_combout\,
	datab => \ALT_INV_Mux92~38_combout\,
	datac => \ALT_INV_Mux92~30_combout\,
	datad => \ALT_INV_Mux92~34_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~43_combout\);

-- Location: MLABCELL_X18_Y4_N6
\Mux92~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~36_combout\ = ( \inputB[11]~input_o\ & ( \inputA[4]~input_o\ & ( (\inputB[3]~input_o\ & !\inputA[3]~input_o\) ) ) ) # ( !\inputB[11]~input_o\ & ( \inputA[4]~input_o\ & ( (\inputB[3]~input_o\ & !\inputA[3]~input_o\) ) ) ) # ( \inputB[11]~input_o\ & 
-- ( !\inputA[4]~input_o\ & ( (\inputA[3]~input_o\) # (\inputB[19]~input_o\) ) ) ) # ( !\inputB[11]~input_o\ & ( !\inputA[4]~input_o\ & ( (\inputB[19]~input_o\ & !\inputA[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[11]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux92~36_combout\);

-- Location: LABCELL_X20_Y4_N36
\Mux92~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~40_combout\ = ( \inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[21]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[13]~input_o\))))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\)) ) ) # ( !\inputB[5]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[21]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[13]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[21]~input_o\,
	datad => \ALT_INV_inputB[13]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux92~40_combout\);

-- Location: LABCELL_X14_Y4_N48
\Mux92~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~41_combout\ = ( \inputA[1]~input_o\ & ( \Mux92~40_combout\ & ( (!\inputA[2]~input_o\ & (\Mux92~36_combout\)) # (\inputA[2]~input_o\ & ((\Mux92~28_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux92~40_combout\ & ( (!\inputA[2]~input_o\) # 
-- (\Mux92~32_combout\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux92~40_combout\ & ( (!\inputA[2]~input_o\ & (\Mux92~36_combout\)) # (\inputA[2]~input_o\ & ((\Mux92~28_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux92~40_combout\ & ( (\inputA[2]~input_o\ & 
-- \Mux92~32_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~36_combout\,
	datab => \ALT_INV_Mux92~28_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux92~32_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux92~40_combout\,
	combout => \Mux92~41_combout\);

-- Location: LABCELL_X19_Y4_N15
\Mux138~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~48_combout\ = (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[27]~input_o\,
	combout => \Mux138~48_combout\);

-- Location: LABCELL_X17_Y4_N30
\Mux138~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~52_combout\ = (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux138~52_combout\);

-- Location: LABCELL_X19_Y4_N12
\Mux138~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~44_combout\ = (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[25]~input_o\,
	combout => \Mux138~44_combout\);

-- Location: LABCELL_X21_Y4_N6
\Mux138~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~53_combout\ = ( \Mux138~44_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\) # (\Mux138~52_combout\) ) ) ) # ( !\Mux138~44_combout\ & ( \inputA[1]~input_o\ & ( (\inputA[2]~input_o\ & \Mux138~52_combout\) ) ) ) # ( \Mux138~44_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~40_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~48_combout\))) ) ) ) # ( !\Mux138~44_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~40_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux138~48_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~40_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~48_combout\,
	datad => \ALT_INV_Mux138~52_combout\,
	datae => \ALT_INV_Mux138~44_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~53_combout\);

-- Location: LABCELL_X10_Y3_N24
\Mux150~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~4_combout\ = ( \Mux138~53_combout\ & ( \aluControl[0]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux138~51_combout\) ) ) ) # ( !\Mux138~53_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux138~51_combout\ & !\inputA[0]~input_o\) ) ) ) # ( 
-- \Mux138~53_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux92~43_combout\)) # (\inputA[0]~input_o\ & ((\Mux92~41_combout\))) ) ) ) # ( !\Mux138~53_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- (\Mux92~43_combout\)) # (\inputA[0]~input_o\ & ((\Mux92~41_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~51_combout\,
	datab => \ALT_INV_Mux92~43_combout\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_Mux92~41_combout\,
	datae => \ALT_INV_Mux138~53_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux150~4_combout\);

-- Location: LABCELL_X10_Y3_N39
\res~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~5_combout\ = (!\inputB[22]~input_o\ & !\inputA[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[22]~input_o\,
	datad => \ALT_INV_inputA[22]~input_o\,
	combout => \res~5_combout\);

-- Location: LABCELL_X19_Y5_N42
\Mux2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = ( \inputB[20]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[21]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[19]~input_o\))) ) ) ) # ( !\inputB[20]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- (\inputB[21]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[19]~input_o\))) ) ) ) # ( \inputB[20]~input_o\ & ( !\shamt[0]~input_o\ & ( (\inputB[22]~input_o\) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[20]~input_o\ & ( !\shamt[0]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & \inputB[22]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_inputB[22]~input_o\,
	datae => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux2~13_combout\);

-- Location: LABCELL_X19_Y5_N6
\Mux2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = ( \inputB[18]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[16]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[15]~input_o\)) ) ) ) # ( !\inputB[18]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- ((\inputB[16]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[15]~input_o\)) ) ) ) # ( \inputB[18]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[17]~input_o\) ) ) ) # ( !\inputB[18]~input_o\ & ( !\shamt[1]~input_o\ & ( 
-- (\shamt[0]~input_o\ & \inputB[17]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[15]~input_o\,
	datac => \ALT_INV_inputB[16]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	datae => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \Mux2~11_combout\);

-- Location: LABCELL_X19_Y6_N6
\Mux150~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~2_combout\ = ( \Mux2~1_combout\ & ( \Mux2~11_combout\ & ( ((!\shamt[3]~input_o\ & ((\Mux2~13_combout\))) # (\shamt[3]~input_o\ & (\Mux2~8_combout\))) # (\shamt[2]~input_o\) ) ) ) # ( !\Mux2~1_combout\ & ( \Mux2~11_combout\ & ( (!\shamt[2]~input_o\ 
-- & ((!\shamt[3]~input_o\ & ((\Mux2~13_combout\))) # (\shamt[3]~input_o\ & (\Mux2~8_combout\)))) # (\shamt[2]~input_o\ & (((!\shamt[3]~input_o\)))) ) ) ) # ( \Mux2~1_combout\ & ( !\Mux2~11_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & 
-- ((\Mux2~13_combout\))) # (\shamt[3]~input_o\ & (\Mux2~8_combout\)))) # (\shamt[2]~input_o\ & (((\shamt[3]~input_o\)))) ) ) ) # ( !\Mux2~1_combout\ & ( !\Mux2~11_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & ((\Mux2~13_combout\))) # 
-- (\shamt[3]~input_o\ & (\Mux2~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~8_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux2~13_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_Mux2~1_combout\,
	dataf => \ALT_INV_Mux2~11_combout\,
	combout => \Mux150~2_combout\);

-- Location: LABCELL_X10_Y3_N48
\Mux150~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~3_combout\ = ( \aluControl[1]~input_o\ & ( \aluControl[0]~input_o\ & ( \Mux34~13_combout\ ) ) ) # ( !\aluControl[1]~input_o\ & ( \aluControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & \Mux34~13_combout\) ) ) ) # ( \aluControl[1]~input_o\ & ( 
-- !\aluControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & ((\Mux150~2_combout\))) # (\shamt[4]~input_o\ & (\Mux2~6_combout\)) ) ) ) # ( !\aluControl[1]~input_o\ & ( !\aluControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & ((\Mux150~2_combout\))) # 
-- (\shamt[4]~input_o\ & (\Mux2~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_Mux34~13_combout\,
	datac => \ALT_INV_Mux2~6_combout\,
	datad => \ALT_INV_Mux150~2_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux150~3_combout\);

-- Location: LABCELL_X10_Y3_N54
\Mux150~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~5_combout\ = ( \aluControl[2]~input_o\ & ( \Mux150~3_combout\ & ( (!\Mux150~1_combout\ & ((\res~5_combout\))) # (\Mux150~1_combout\ & (\inputB[6]~input_o\)) ) ) ) # ( !\aluControl[2]~input_o\ & ( \Mux150~3_combout\ & ( (!\Mux150~1_combout\) # 
-- (\Mux150~4_combout\) ) ) ) # ( \aluControl[2]~input_o\ & ( !\Mux150~3_combout\ & ( (!\Mux150~1_combout\ & ((\res~5_combout\))) # (\Mux150~1_combout\ & (\inputB[6]~input_o\)) ) ) ) # ( !\aluControl[2]~input_o\ & ( !\Mux150~3_combout\ & ( 
-- (\Mux150~1_combout\ & \Mux150~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux150~1_combout\,
	datab => \ALT_INV_Mux150~4_combout\,
	datac => \ALT_INV_inputB[6]~input_o\,
	datad => \ALT_INV_res~5_combout\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_Mux150~3_combout\,
	combout => \Mux150~5_combout\);

-- Location: LABCELL_X10_Y3_N0
\Mux150~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~6_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\inputA[22]~input_o\ & (\inputB[22]~input_o\ & (\aluControl[0]~input_o\))) # (\inputA[22]~input_o\ & (((\aluControl[0]~input_o\)) # (\inputB[22]~input_o\))))) # 
-- (\aluControl[3]~input_o\ & ((((\Mux150~5_combout\))))) ) ) # ( \aluControl[1]~input_o\ & ( ((!\aluControl[3]~input_o\ & (\Add0~89_sumout\ & (!\aluControl[0]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux150~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010001001100000011000000000000110111011111110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[22]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Add0~89_sumout\,
	datad => \ALT_INV_aluControl[0]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux150~5_combout\,
	datag => \ALT_INV_inputB[22]~input_o\,
	combout => \Mux150~6_combout\);

-- Location: LABCELL_X10_Y3_N21
\res[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(22) = (!\Mux160~0_combout\ & (\Mux150~6_combout\)) # (\Mux160~0_combout\ & ((res(22))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux160~0_combout\,
	datab => \ALT_INV_Mux150~6_combout\,
	datad => ALT_INV_res(22),
	combout => res(22));

-- Location: LABCELL_X19_Y6_N36
\Mux146~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~1_combout\ = ( \shamt[2]~input_o\ & ( \Mux2~11_combout\ & ( (!\shamt[3]~input_o\ & (\Mux2~8_combout\)) # (\shamt[3]~input_o\ & ((\Mux2~2_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux2~11_combout\ & ( (!\shamt[3]~input_o\) # (\Mux2~1_combout\) 
-- ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux2~11_combout\ & ( (!\shamt[3]~input_o\ & (\Mux2~8_combout\)) # (\shamt[3]~input_o\ & ((\Mux2~2_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux2~11_combout\ & ( (\Mux2~1_combout\ & \shamt[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~1_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux2~8_combout\,
	datad => \ALT_INV_Mux2~2_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux2~11_combout\,
	combout => \Mux146~1_combout\);

-- Location: LABCELL_X10_Y4_N42
\Mux146~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~0_combout\ = ( \Mux148~0_combout\ & ( (!\shamt[2]~input_o\ & (\Mux2~0_combout\ & !\shamt[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_Mux148~0_combout\,
	combout => \Mux146~0_combout\);

-- Location: LABCELL_X10_Y4_N54
\Mux146~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~2_combout\ = ( !\Mux146~0_combout\ & ( (!\Mux150~0_combout\ & ((!\Mux145~0_combout\) # ((!\Mux38~1_combout\)))) # (\Mux150~0_combout\ & (!\Mux146~1_combout\ & ((!\Mux145~0_combout\) # (!\Mux38~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux150~0_combout\,
	datab => \ALT_INV_Mux145~0_combout\,
	datac => \ALT_INV_Mux38~1_combout\,
	datad => \ALT_INV_Mux146~1_combout\,
	dataf => \ALT_INV_Mux146~0_combout\,
	combout => \Mux146~2_combout\);

-- Location: MLABCELL_X23_Y5_N48
\res~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~1_combout\ = ( !\inputA[18]~input_o\ & ( !\inputB[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_inputA[18]~input_o\,
	combout => \res~1_combout\);

-- Location: LABCELL_X21_Y4_N18
\Mux138~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~45_combout\ = ( \Mux138~44_combout\ & ( \inputA[1]~input_o\ & ( (\Mux138~36_combout\) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux138~44_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & \Mux138~36_combout\) ) ) ) # ( \Mux138~44_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~32_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~40_combout\))) ) ) ) # ( !\Mux138~44_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~32_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux138~40_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~32_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~40_combout\,
	datad => \ALT_INV_Mux138~36_combout\,
	datae => \ALT_INV_Mux138~44_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~45_combout\);

-- Location: LABCELL_X16_Y4_N36
\Mux92~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~35_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~24_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~30_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~26_combout\ ) ) ) # ( 
-- !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~34_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~26_combout\,
	datab => \ALT_INV_Mux92~24_combout\,
	datac => \ALT_INV_Mux92~30_combout\,
	datad => \ALT_INV_Mux92~34_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~35_combout\);

-- Location: MLABCELL_X9_Y4_N36
\Mux146~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~3_combout\ = ( \Mux92~35_combout\ & ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux138~43_combout\))) # (\inputA[0]~input_o\ & (\Mux138~45_combout\)) ) ) ) # ( !\Mux92~35_combout\ & ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ 
-- & ((\Mux138~43_combout\))) # (\inputA[0]~input_o\ & (\Mux138~45_combout\)) ) ) ) # ( \Mux92~35_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\) # (\Mux92~33_combout\) ) ) ) # ( !\Mux92~35_combout\ & ( !\aluControl[0]~input_o\ & ( 
-- (\Mux92~33_combout\ & \inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~33_combout\,
	datab => \ALT_INV_Mux138~45_combout\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_Mux138~43_combout\,
	datae => \ALT_INV_Mux92~35_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux146~3_combout\);

-- Location: LABCELL_X10_Y4_N6
\Mux146~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~4_combout\ = ( \inputB[2]~input_o\ & ( \Mux146~3_combout\ & ( ((!\aluControl[2]~input_o\ & (!\Mux146~2_combout\)) # (\aluControl[2]~input_o\ & ((\res~1_combout\)))) # (\Mux150~1_combout\) ) ) ) # ( !\inputB[2]~input_o\ & ( \Mux146~3_combout\ & ( 
-- (!\Mux150~1_combout\ & ((!\aluControl[2]~input_o\ & (!\Mux146~2_combout\)) # (\aluControl[2]~input_o\ & ((\res~1_combout\))))) # (\Mux150~1_combout\ & (((!\aluControl[2]~input_o\)))) ) ) ) # ( \inputB[2]~input_o\ & ( !\Mux146~3_combout\ & ( 
-- (!\Mux150~1_combout\ & ((!\aluControl[2]~input_o\ & (!\Mux146~2_combout\)) # (\aluControl[2]~input_o\ & ((\res~1_combout\))))) # (\Mux150~1_combout\ & (((\aluControl[2]~input_o\)))) ) ) ) # ( !\inputB[2]~input_o\ & ( !\Mux146~3_combout\ & ( 
-- (!\Mux150~1_combout\ & ((!\aluControl[2]~input_o\ & (!\Mux146~2_combout\)) # (\aluControl[2]~input_o\ & ((\res~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000001100100010000011111110111011000011001011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux146~2_combout\,
	datab => \ALT_INV_Mux150~1_combout\,
	datac => \ALT_INV_res~1_combout\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_Mux146~3_combout\,
	combout => \Mux146~4_combout\);

-- Location: LABCELL_X10_Y4_N18
\Mux146~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~5_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[0]~input_o\ & (\inputA[18]~input_o\ & (\inputB[18]~input_o\))) # (\aluControl[0]~input_o\ & (((\inputB[18]~input_o\)) # (\inputA[18]~input_o\))))) # 
-- (\aluControl[3]~input_o\ & ((((\Mux146~4_combout\))))) ) ) # ( \aluControl[1]~input_o\ & ( ((!\aluControl[3]~input_o\ & (!\aluControl[0]~input_o\ & (\Add0~73_sumout\))) # (\aluControl[3]~input_o\ & (((\Mux146~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001011100000000000010100000000000010111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_inputA[18]~input_o\,
	datac => \ALT_INV_Add0~73_sumout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux146~4_combout\,
	datag => \ALT_INV_inputB[18]~input_o\,
	combout => \Mux146~5_combout\);

-- Location: LABCELL_X10_Y4_N57
\res[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(18) = ( \Mux160~0_combout\ & ( res(18) ) ) # ( !\Mux160~0_combout\ & ( \Mux146~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux146~5_combout\,
	datad => ALT_INV_res(18),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(18));

-- Location: LABCELL_X19_Y5_N0
\Mux21~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~11_combout\ = ( \inputB[20]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\) # (\inputB[18]~input_o\) ) ) ) # ( !\inputB[20]~input_o\ & ( \shamt[0]~input_o\ & ( (\inputB[18]~input_o\ & \shamt[1]~input_o\) ) ) ) # ( \inputB[20]~input_o\ & ( 
-- !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[21]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[19]~input_o\))) ) ) ) # ( !\inputB[20]~input_o\ & ( !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[21]~input_o\)) # (\shamt[1]~input_o\ & 
-- ((\inputB[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux21~11_combout\);

-- Location: MLABCELL_X18_Y5_N54
\Mux149~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~0_combout\ = ( \Mux21~9_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & (\Mux21~7_combout\)) # (\shamt[2]~input_o\ & ((\Mux21~5_combout\))) ) ) ) # ( !\Mux21~9_combout\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & 
-- (\Mux21~7_combout\)) # (\shamt[2]~input_o\ & ((\Mux21~5_combout\))) ) ) ) # ( \Mux21~9_combout\ & ( !\shamt[3]~input_o\ & ( (\Mux21~11_combout\) # (\shamt[2]~input_o\) ) ) ) # ( !\Mux21~9_combout\ & ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & 
-- \Mux21~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~7_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux21~11_combout\,
	datad => \ALT_INV_Mux21~5_combout\,
	datae => \ALT_INV_Mux21~9_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux149~0_combout\);

-- Location: MLABCELL_X9_Y1_N54
\Mux149~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~1_combout\ = ( \shamt[4]~input_o\ & ( \aluControl[0]~input_o\ & ( (\Mux59~0_combout\ & \aluControl[1]~input_o\) ) ) ) # ( !\shamt[4]~input_o\ & ( \aluControl[0]~input_o\ & ( \Mux59~0_combout\ ) ) ) # ( \shamt[4]~input_o\ & ( 
-- !\aluControl[0]~input_o\ & ( \Mux3~0_combout\ ) ) ) # ( !\shamt[4]~input_o\ & ( !\aluControl[0]~input_o\ & ( \Mux149~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux59~0_combout\,
	datab => \ALT_INV_Mux149~0_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Mux3~0_combout\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux149~1_combout\);

-- Location: MLABCELL_X9_Y1_N3
\res~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~4_combout\ = ( !\inputB[21]~input_o\ & ( !\inputA[21]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[21]~input_o\,
	datae => \ALT_INV_inputB[21]~input_o\,
	combout => \res~4_combout\);

-- Location: LABCELL_X16_Y4_N18
\Mux92~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~39_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~26_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~34_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~30_combout\ ) ) ) # ( 
-- !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~38_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~26_combout\,
	datab => \ALT_INV_Mux92~38_combout\,
	datac => \ALT_INV_Mux92~30_combout\,
	datad => \ALT_INV_Mux92~34_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~39_combout\);

-- Location: LABCELL_X21_Y4_N48
\Mux138~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~49_combout\ = ( \Mux138~44_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~40_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~48_combout\))) ) ) ) # ( !\Mux138~44_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & 
-- (\Mux138~40_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~48_combout\))) ) ) ) # ( \Mux138~44_combout\ & ( !\inputA[1]~input_o\ & ( (\Mux138~36_combout\) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux138~44_combout\ & ( !\inputA[1]~input_o\ & ( 
-- (!\inputA[2]~input_o\ & \Mux138~36_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~40_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~48_combout\,
	datad => \ALT_INV_Mux138~36_combout\,
	datae => \ALT_INV_Mux138~44_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~49_combout\);

-- Location: LABCELL_X10_Y2_N48
\Mux149~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~2_combout\ = ( \Mux138~49_combout\ & ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\) # (\Mux138~51_combout\) ) ) ) # ( !\Mux138~49_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux138~51_combout\ & \inputA[0]~input_o\) ) ) ) # ( 
-- \Mux138~49_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux92~41_combout\))) # (\inputA[0]~input_o\ & (\Mux92~39_combout\)) ) ) ) # ( !\Mux138~49_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- ((\Mux92~41_combout\))) # (\inputA[0]~input_o\ & (\Mux92~39_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~51_combout\,
	datab => \ALT_INV_Mux92~39_combout\,
	datac => \ALT_INV_Mux92~41_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux138~49_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux149~2_combout\);

-- Location: MLABCELL_X9_Y1_N30
\Mux149~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~3_combout\ = ( \res~4_combout\ & ( \Mux149~2_combout\ & ( (!\Mux150~1_combout\ & (((\aluControl[2]~input_o\)) # (\Mux149~1_combout\))) # (\Mux150~1_combout\ & (((!\aluControl[2]~input_o\) # (\inputB[5]~input_o\)))) ) ) ) # ( !\res~4_combout\ & ( 
-- \Mux149~2_combout\ & ( (!\Mux150~1_combout\ & (\Mux149~1_combout\ & (!\aluControl[2]~input_o\))) # (\Mux150~1_combout\ & (((!\aluControl[2]~input_o\) # (\inputB[5]~input_o\)))) ) ) ) # ( \res~4_combout\ & ( !\Mux149~2_combout\ & ( (!\Mux150~1_combout\ & 
-- (((\aluControl[2]~input_o\)) # (\Mux149~1_combout\))) # (\Mux150~1_combout\ & (((\aluControl[2]~input_o\ & \inputB[5]~input_o\)))) ) ) ) # ( !\res~4_combout\ & ( !\Mux149~2_combout\ & ( (!\Mux150~1_combout\ & (\Mux149~1_combout\ & 
-- (!\aluControl[2]~input_o\))) # (\Mux150~1_combout\ & (((\aluControl[2]~input_o\ & \inputB[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux150~1_combout\,
	datab => \ALT_INV_Mux149~1_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_res~4_combout\,
	dataf => \ALT_INV_Mux149~2_combout\,
	combout => \Mux149~3_combout\);

-- Location: MLABCELL_X9_Y1_N18
\Mux149~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~4_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\inputA[21]~input_o\ & (((\inputB[21]~input_o\ & \aluControl[0]~input_o\)))) # (\inputA[21]~input_o\ & (((\aluControl[0]~input_o\) # (\inputB[21]~input_o\)))))) # 
-- (\aluControl[3]~input_o\ & (((\Mux149~3_combout\)))) ) ) # ( \aluControl[1]~input_o\ & ( ((!\aluControl[3]~input_o\ & (((\Add0~85_sumout\ & !\aluControl[0]~input_o\)))) # (\aluControl[3]~input_o\ & (\Mux149~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110011000011110011001101011111001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[21]~input_o\,
	datab => \ALT_INV_Mux149~3_combout\,
	datac => \ALT_INV_Add0~85_sumout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	datag => \ALT_INV_inputB[21]~input_o\,
	combout => \Mux149~4_combout\);

-- Location: MLABCELL_X9_Y1_N42
\res[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(21) = ( \Mux160~0_combout\ & ( res(21) ) ) # ( !\Mux160~0_combout\ & ( res(21) & ( \Mux149~4_combout\ ) ) ) # ( !\Mux160~0_combout\ & ( !res(21) & ( \Mux149~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux149~4_combout\,
	datae => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(21),
	combout => res(21));

-- Location: LABCELL_X12_Y6_N12
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[23]~input_o\) ) + ( \inputA[23]~input_o\ ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[23]~input_o\) ) + ( \inputA[23]~input_o\ ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[23]~input_o\,
	dataf => \ALT_INV_inputA[23]~input_o\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: MLABCELL_X9_Y4_N42
\Mux151~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~1_combout\ = ( !\aluControl[0]~input_o\ & ( (\Add0~93_sumout\ & !\aluControl[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~93_sumout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux151~1_combout\);

-- Location: MLABCELL_X9_Y3_N57
\Mux151~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~2_combout\ = ( \aluControl[0]~input_o\ & ( (\inputB[7]~input_o\ & \aluControl[3]~input_o\) ) ) # ( !\aluControl[0]~input_o\ & ( (!\inputA[23]~input_o\ & (!\inputB[23]~input_o\ & \aluControl[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[23]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_inputB[23]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux151~2_combout\);

-- Location: MLABCELL_X13_Y4_N9
\Mux138~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~54_combout\ = (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	combout => \Mux138~54_combout\);

-- Location: MLABCELL_X13_Y4_N12
\Mux138~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~55_combout\ = ( \Mux138~42_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux138~46_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~54_combout\))) ) ) ) # ( !\Mux138~42_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & 
-- (\Mux138~46_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~54_combout\))) ) ) ) # ( \Mux138~42_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\) # (\Mux138~50_combout\) ) ) ) # ( !\Mux138~42_combout\ & ( !\inputA[1]~input_o\ & ( 
-- (\inputA[2]~input_o\ & \Mux138~50_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~46_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~50_combout\,
	datad => \ALT_INV_Mux138~54_combout\,
	datae => \ALT_INV_Mux138~42_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~55_combout\);

-- Location: LABCELL_X19_Y4_N54
\Mux92~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~44_combout\ = ( \inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & \inputB[7]~input_o\) ) ) # ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & (\inputB[23]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux92~44_combout\);

-- Location: LABCELL_X14_Y4_N54
\Mux92~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~45_combout\ = ( \inputA[1]~input_o\ & ( \Mux92~40_combout\ & ( (!\inputA[2]~input_o\) # (\Mux92~32_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux92~40_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~44_combout\))) # (\inputA[2]~input_o\ & 
-- (\Mux92~36_combout\)) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux92~40_combout\ & ( (\Mux92~32_combout\ & \inputA[2]~input_o\) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux92~40_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~44_combout\))) # (\inputA[2]~input_o\ & 
-- (\Mux92~36_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~36_combout\,
	datab => \ALT_INV_Mux92~32_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux92~44_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux92~40_combout\,
	combout => \Mux92~45_combout\);

-- Location: MLABCELL_X9_Y2_N36
\Mux151~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~0_combout\ = ( \Mux138~53_combout\ & ( \Mux92~45_combout\ & ( (!\inputA[0]~input_o\) # ((!\aluControl[0]~input_o\ & (\Mux92~43_combout\)) # (\aluControl[0]~input_o\ & ((\Mux138~55_combout\)))) ) ) ) # ( !\Mux138~53_combout\ & ( \Mux92~45_combout\ 
-- & ( (!\aluControl[0]~input_o\ & (((!\inputA[0]~input_o\)) # (\Mux92~43_combout\))) # (\aluControl[0]~input_o\ & (((\inputA[0]~input_o\ & \Mux138~55_combout\)))) ) ) ) # ( \Mux138~53_combout\ & ( !\Mux92~45_combout\ & ( (!\aluControl[0]~input_o\ & 
-- (\Mux92~43_combout\ & (\inputA[0]~input_o\))) # (\aluControl[0]~input_o\ & (((!\inputA[0]~input_o\) # (\Mux138~55_combout\)))) ) ) ) # ( !\Mux138~53_combout\ & ( !\Mux92~45_combout\ & ( (\inputA[0]~input_o\ & ((!\aluControl[0]~input_o\ & 
-- (\Mux92~43_combout\)) # (\aluControl[0]~input_o\ & ((\Mux138~55_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~43_combout\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_Mux138~55_combout\,
	datae => \ALT_INV_Mux138~53_combout\,
	dataf => \ALT_INV_Mux92~45_combout\,
	combout => \Mux151~0_combout\);

-- Location: LABCELL_X19_Y5_N24
\Mux21~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~10_combout\ = ( \inputB[18]~input_o\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\) # (\inputB[16]~input_o\) ) ) ) # ( !\inputB[18]~input_o\ & ( \shamt[0]~input_o\ & ( (\inputB[16]~input_o\ & \shamt[1]~input_o\) ) ) ) # ( \inputB[18]~input_o\ & ( 
-- !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[19]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[17]~input_o\))) ) ) ) # ( !\inputB[18]~input_o\ & ( !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[19]~input_o\)) # (\shamt[1]~input_o\ & 
-- ((\inputB[17]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	datae => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux21~10_combout\);

-- Location: LABCELL_X7_Y6_N36
\Mux21~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~12_combout\ = ( \inputB[23]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[21]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[20]~input_o\))) ) ) ) # ( !\inputB[23]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- (\inputB[21]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[20]~input_o\))) ) ) ) # ( \inputB[23]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[22]~input_o\) ) ) ) # ( !\inputB[23]~input_o\ & ( !\shamt[1]~input_o\ & ( 
-- (\shamt[0]~input_o\ & \inputB[22]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_inputB[20]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[22]~input_o\,
	datae => \ALT_INV_inputB[23]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \Mux21~12_combout\);

-- Location: LABCELL_X10_Y7_N12
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \Mux21~1_combout\ & ( \shamt[2]~input_o\ & ( (\Mux21~10_combout\) # (\shamt[3]~input_o\) ) ) ) # ( !\Mux21~1_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \Mux21~10_combout\) ) ) ) # ( \Mux21~1_combout\ & ( 
-- !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\Mux21~12_combout\))) # (\shamt[3]~input_o\ & (\Mux21~8_combout\)) ) ) ) # ( !\Mux21~1_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\Mux21~12_combout\))) # (\shamt[3]~input_o\ & 
-- (\Mux21~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~8_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux21~10_combout\,
	datad => \ALT_INV_Mux21~12_combout\,
	datae => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X10_Y7_N54
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \shamt[4]~input_o\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \Mux21~0_combout\) ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux1~1_combout\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[2]~input_o\ & ( 
-- (\Mux21~2_combout\ & !\shamt[3]~input_o\) ) ) ) # ( !\shamt[4]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010001000100010000000000111111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~2_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_Mux1~1_combout\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X14_Y5_N24
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \Mux61~3_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (\Mux61~5_combout\ & !\shamt[3]~input_o\)) ) ) ) # ( !\Mux61~3_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (\Mux61~5_combout\ & !\shamt[3]~input_o\)) 
-- ) ) ) # ( \Mux61~3_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\) # (\Mux61~4_combout\))) ) ) ) # ( !\Mux61~3_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (\Mux61~4_combout\ & \shamt[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101010100000101000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_Mux61~5_combout\,
	datac => \ALT_INV_Mux61~4_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_Mux61~3_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: MLABCELL_X9_Y3_N6
\Mux151~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~3_combout\ = ( \Mux41~0_combout\ & ( \aluControl[0]~input_o\ & ( ((\aluControl[3]~input_o\) # (\inputB[23]~input_o\)) # (\inputA[23]~input_o\) ) ) ) # ( !\Mux41~0_combout\ & ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- ((\inputB[23]~input_o\) # (\inputA[23]~input_o\))) ) ) ) # ( \Mux41~0_combout\ & ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputA[23]~input_o\ & (\inputB[23]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux9~0_combout\)))) ) ) ) # ( 
-- !\Mux41~0_combout\ & ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputA[23]~input_o\ & (\inputB[23]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111101110111000000000111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[23]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_Mux9~0_combout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_Mux41~0_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux151~3_combout\);

-- Location: MLABCELL_X9_Y4_N24
\Mux151~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~4_combout\ = ( !\aluControl[2]~input_o\ & ( (!\aluControl[1]~input_o\ & ((((\Mux151~3_combout\))))) # (\aluControl[1]~input_o\ & (((\aluControl[3]~input_o\ & ((\Mux151~0_combout\)))) # (\Mux151~1_combout\))) ) ) # ( \aluControl[2]~input_o\ & ( 
-- ((!\aluControl[1]~input_o\ & (((\Mux151~2_combout\)))) # (\aluControl[1]~input_o\ & (\Mux151~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110011001100001111011101110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_Mux151~1_combout\,
	datac => \ALT_INV_Mux151~2_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_Mux151~0_combout\,
	datag => \ALT_INV_Mux151~3_combout\,
	combout => \Mux151~4_combout\);

-- Location: MLABCELL_X9_Y4_N48
\res[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(23) = ( \Mux160~0_combout\ & ( res(23) ) ) # ( !\Mux160~0_combout\ & ( \Mux151~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux151~4_combout\,
	datac => ALT_INV_res(23),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(23));

-- Location: LABCELL_X14_Y4_N30
\Mux138~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~47_combout\ = ( \inputA[1]~input_o\ & ( \Mux138~42_combout\ & ( (!\inputA[2]~input_o\ & (\Mux138~38_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~46_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux138~42_combout\ & ( (\Mux138~34_combout\) # 
-- (\inputA[2]~input_o\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux138~42_combout\ & ( (!\inputA[2]~input_o\ & (\Mux138~38_combout\)) # (\inputA[2]~input_o\ & ((\Mux138~46_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux138~42_combout\ & ( 
-- (!\inputA[2]~input_o\ & \Mux138~34_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux138~38_combout\,
	datac => \ALT_INV_Mux138~46_combout\,
	datad => \ALT_INV_Mux138~34_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux138~42_combout\,
	combout => \Mux138~47_combout\);

-- Location: LABCELL_X14_Y4_N36
\Mux92~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~37_combout\ = ( \inputA[1]~input_o\ & ( \Mux92~22_combout\ & ( (\Mux92~32_combout\) # (\inputA[2]~input_o\) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux92~22_combout\ & ( (!\inputA[2]~input_o\ & (\Mux92~36_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux92~28_combout\))) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux92~22_combout\ & ( (!\inputA[2]~input_o\ & \Mux92~32_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux92~22_combout\ & ( (!\inputA[2]~input_o\ & (\Mux92~36_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux92~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~36_combout\,
	datab => \ALT_INV_Mux92~28_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux92~32_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux92~22_combout\,
	combout => \Mux92~37_combout\);

-- Location: LABCELL_X10_Y2_N24
\Mux148~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~3_combout\ = ( \Mux138~49_combout\ & ( \aluControl[0]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux138~47_combout\) ) ) ) # ( !\Mux138~49_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux138~47_combout\ & !\inputA[0]~input_o\) ) ) ) # ( 
-- \Mux138~49_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux92~39_combout\)) # (\inputA[0]~input_o\ & ((\Mux92~37_combout\))) ) ) ) # ( !\Mux138~49_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- (\Mux92~39_combout\)) # (\inputA[0]~input_o\ & ((\Mux92~37_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~47_combout\,
	datab => \ALT_INV_Mux92~39_combout\,
	datac => \ALT_INV_Mux92~37_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux138~49_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux148~3_combout\);

-- Location: LABCELL_X19_Y5_N54
\Mux2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = ( \inputB[20]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[18]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[17]~input_o\))) ) ) ) # ( !\inputB[20]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- (\inputB[18]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[17]~input_o\))) ) ) ) # ( \inputB[20]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[19]~input_o\) ) ) ) # ( !\inputB[20]~input_o\ & ( !\shamt[1]~input_o\ & ( 
-- (\shamt[0]~input_o\ & \inputB[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	datae => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \Mux2~12_combout\);

-- Location: MLABCELL_X13_Y7_N54
\Mux148~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~1_combout\ = ( \Mux2~10_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\) # (\Mux2~5_combout\) ) ) ) # ( !\Mux2~10_combout\ & ( \shamt[2]~input_o\ & ( (\shamt[3]~input_o\ & \Mux2~5_combout\) ) ) ) # ( \Mux2~10_combout\ & ( 
-- !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux2~12_combout\)) # (\shamt[3]~input_o\ & ((\Mux2~7_combout\))) ) ) ) # ( !\Mux2~10_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux2~12_combout\)) # (\shamt[3]~input_o\ & 
-- ((\Mux2~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~12_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux2~5_combout\,
	datad => \ALT_INV_Mux2~7_combout\,
	datae => \ALT_INV_Mux2~10_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux148~1_combout\);

-- Location: LABCELL_X10_Y2_N12
\Mux148~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~2_combout\ = ( \aluControl[1]~input_o\ & ( \aluControl[0]~input_o\ & ( \Mux36~0_combout\ ) ) ) # ( !\aluControl[1]~input_o\ & ( \aluControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & \Mux36~0_combout\) ) ) ) # ( \aluControl[1]~input_o\ & ( 
-- !\aluControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & (\Mux148~1_combout\)) # (\shamt[4]~input_o\ & ((\Mux4~0_combout\))) ) ) ) # ( !\aluControl[1]~input_o\ & ( !\aluControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & (\Mux148~1_combout\)) # (\shamt[4]~input_o\ 
-- & ((\Mux4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_Mux148~1_combout\,
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_Mux4~0_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux148~2_combout\);

-- Location: LABCELL_X10_Y2_N21
\res~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~3_combout\ = ( !\inputA[20]~input_o\ & ( !\inputB[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_inputA[20]~input_o\,
	combout => \res~3_combout\);

-- Location: LABCELL_X10_Y2_N6
\Mux148~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~4_combout\ = ( \inputB[4]~input_o\ & ( \Mux150~1_combout\ & ( (\aluControl[2]~input_o\) # (\Mux148~3_combout\) ) ) ) # ( !\inputB[4]~input_o\ & ( \Mux150~1_combout\ & ( (\Mux148~3_combout\ & !\aluControl[2]~input_o\) ) ) ) # ( \inputB[4]~input_o\ 
-- & ( !\Mux150~1_combout\ & ( (!\aluControl[2]~input_o\ & (\Mux148~2_combout\)) # (\aluControl[2]~input_o\ & ((\res~3_combout\))) ) ) ) # ( !\inputB[4]~input_o\ & ( !\Mux150~1_combout\ & ( (!\aluControl[2]~input_o\ & (\Mux148~2_combout\)) # 
-- (\aluControl[2]~input_o\ & ((\res~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux148~3_combout\,
	datab => \ALT_INV_Mux148~2_combout\,
	datac => \ALT_INV_res~3_combout\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_Mux150~1_combout\,
	combout => \Mux148~4_combout\);

-- Location: LABCELL_X10_Y2_N0
\Mux148~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~5_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[0]~input_o\ & (((\inputB[20]~input_o\ & \inputA[20]~input_o\)))) # (\aluControl[0]~input_o\ & (((\inputA[20]~input_o\) # (\inputB[20]~input_o\)))))) # 
-- (\aluControl[3]~input_o\ & (((\Mux148~4_combout\)))) ) ) # ( \aluControl[1]~input_o\ & ( ((!\aluControl[3]~input_o\ & (!\aluControl[0]~input_o\ & ((\Add0~81_sumout\)))) # (\aluControl[3]~input_o\ & (((\Mux148~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010101011111000010100000101000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_Mux148~4_combout\,
	datac => \ALT_INV_Add0~81_sumout\,
	datad => \ALT_INV_inputA[20]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	datag => \ALT_INV_inputB[20]~input_o\,
	combout => \Mux148~5_combout\);

-- Location: LABCELL_X10_Y2_N18
\res[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(20) = ( \Mux160~0_combout\ & ( res(20) ) ) # ( !\Mux160~0_combout\ & ( \Mux148~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux148~5_combout\,
	datac => ALT_INV_res(20),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(20));

-- Location: LABCELL_X10_Y2_N36
\Mux147~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~3_combout\ = ( \Mux138~45_combout\ & ( \Mux92~37_combout\ & ( (!\inputA[0]~input_o\) # ((!\aluControl[0]~input_o\ & ((\Mux92~35_combout\))) # (\aluControl[0]~input_o\ & (\Mux138~47_combout\))) ) ) ) # ( !\Mux138~45_combout\ & ( \Mux92~37_combout\ 
-- & ( (!\aluControl[0]~input_o\ & ((!\inputA[0]~input_o\) # ((\Mux92~35_combout\)))) # (\aluControl[0]~input_o\ & (\inputA[0]~input_o\ & (\Mux138~47_combout\))) ) ) ) # ( \Mux138~45_combout\ & ( !\Mux92~37_combout\ & ( (!\aluControl[0]~input_o\ & 
-- (\inputA[0]~input_o\ & ((\Mux92~35_combout\)))) # (\aluControl[0]~input_o\ & ((!\inputA[0]~input_o\) # ((\Mux138~47_combout\)))) ) ) ) # ( !\Mux138~45_combout\ & ( !\Mux92~37_combout\ & ( (\inputA[0]~input_o\ & ((!\aluControl[0]~input_o\ & 
-- ((\Mux92~35_combout\))) # (\aluControl[0]~input_o\ & (\Mux138~47_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux138~47_combout\,
	datad => \ALT_INV_Mux92~35_combout\,
	datae => \ALT_INV_Mux138~45_combout\,
	dataf => \ALT_INV_Mux92~37_combout\,
	combout => \Mux147~3_combout\);

-- Location: LABCELL_X24_Y4_N12
\res~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~2_combout\ = ( !\inputB[19]~input_o\ & ( !\inputA[19]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_inputB[19]~input_o\,
	dataf => \ALT_INV_inputA[19]~input_o\,
	combout => \res~2_combout\);

-- Location: LABCELL_X10_Y4_N45
\Mux147~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~1_combout\ = ( !\aluControl[0]~input_o\ & ( (\shamt[4]~input_o\ & (!\shamt[2]~input_o\ & (\Mux21~0_combout\ & !\shamt[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux147~1_combout\);

-- Location: LABCELL_X10_Y7_N30
\Mux147~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~0_combout\ = ( \Mux21~1_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\Mux21~8_combout\))) # (\shamt[3]~input_o\ & (\Mux21~2_combout\)) ) ) ) # ( !\Mux21~1_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & 
-- ((\Mux21~8_combout\))) # (\shamt[3]~input_o\ & (\Mux21~2_combout\)) ) ) ) # ( \Mux21~1_combout\ & ( !\shamt[2]~input_o\ & ( (\shamt[3]~input_o\) # (\Mux21~10_combout\) ) ) ) # ( !\Mux21~1_combout\ & ( !\shamt[2]~input_o\ & ( (\Mux21~10_combout\ & 
-- !\shamt[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~10_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux21~2_combout\,
	datad => \ALT_INV_Mux21~8_combout\,
	datae => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux147~0_combout\);

-- Location: LABCELL_X10_Y2_N57
\Mux147~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~2_combout\ = ( \Mux145~0_combout\ & ( (!\Mux61~15_combout\ & (!\Mux147~1_combout\ & ((!\Mux150~0_combout\) # (!\Mux147~0_combout\)))) ) ) # ( !\Mux145~0_combout\ & ( (!\Mux147~1_combout\ & ((!\Mux150~0_combout\) # (!\Mux147~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~15_combout\,
	datab => \ALT_INV_Mux150~0_combout\,
	datac => \ALT_INV_Mux147~1_combout\,
	datad => \ALT_INV_Mux147~0_combout\,
	dataf => \ALT_INV_Mux145~0_combout\,
	combout => \Mux147~2_combout\);

-- Location: LABCELL_X10_Y2_N30
\Mux147~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~4_combout\ = ( \aluControl[2]~input_o\ & ( \Mux147~2_combout\ & ( (!\Mux150~1_combout\ & ((\res~2_combout\))) # (\Mux150~1_combout\ & (\inputB[3]~input_o\)) ) ) ) # ( !\aluControl[2]~input_o\ & ( \Mux147~2_combout\ & ( (\Mux150~1_combout\ & 
-- \Mux147~3_combout\) ) ) ) # ( \aluControl[2]~input_o\ & ( !\Mux147~2_combout\ & ( (!\Mux150~1_combout\ & ((\res~2_combout\))) # (\Mux150~1_combout\ & (\inputB[3]~input_o\)) ) ) ) # ( !\aluControl[2]~input_o\ & ( !\Mux147~2_combout\ & ( 
-- (!\Mux150~1_combout\) # (\Mux147~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011000001011010111100010001000100010000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux150~1_combout\,
	datab => \ALT_INV_Mux147~3_combout\,
	datac => \ALT_INV_inputB[3]~input_o\,
	datad => \ALT_INV_res~2_combout\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_Mux147~2_combout\,
	combout => \Mux147~4_combout\);

-- Location: LABCELL_X10_Y2_N42
\Mux147~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~5_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[0]~input_o\ & (\inputB[19]~input_o\ & (\inputA[19]~input_o\))) # (\aluControl[0]~input_o\ & (((\inputA[19]~input_o\)) # (\inputB[19]~input_o\))))) # 
-- (\aluControl[3]~input_o\ & ((((\Mux147~4_combout\))))) ) ) # ( \aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & (!\aluControl[0]~input_o\ & (\Add0~77_sumout\))) # (\aluControl[3]~input_o\ & ((((\Mux147~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010001001100000010000000100000110111011111110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Add0~77_sumout\,
	datad => \ALT_INV_inputA[19]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux147~4_combout\,
	datag => \ALT_INV_inputB[19]~input_o\,
	combout => \Mux147~5_combout\);

-- Location: LABCELL_X10_Y2_N54
\res[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(19) = ( \Mux160~0_combout\ & ( res(19) ) ) # ( !\Mux160~0_combout\ & ( \Mux147~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux147~5_combout\,
	datad => ALT_INV_res(19),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(19));

-- Location: LABCELL_X7_Y3_N51
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !res(20) & ( !res(19) & ( (!res(22) & (!res(18) & (!res(21) & !res(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(22),
	datab => ALT_INV_res(18),
	datac => ALT_INV_res(21),
	datad => ALT_INV_res(23),
	datae => ALT_INV_res(20),
	dataf => ALT_INV_res(19),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X14_Y5_N18
\Mux2~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~16_combout\ = ( \inputB[25]~input_o\ & ( \inputB[26]~input_o\ & ( ((!\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[27]~input_o\))) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[25]~input_o\ & ( \inputB[26]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[27]~input_o\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)))) ) ) ) # ( \inputB[25]~input_o\ & ( !\inputB[26]~input_o\ & ( (!\shamt[1]~input_o\ 
-- & ((!\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[27]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)))) ) ) ) # ( !\inputB[25]~input_o\ & ( !\inputB[26]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- ((!\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[27]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	datae => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \Mux2~16_combout\);

-- Location: LABCELL_X7_Y6_N18
\Mux2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~14_combout\ = ( \inputB[23]~input_o\ & ( \inputB[24]~input_o\ & ( (!\shamt[1]~input_o\) # ((!\shamt[0]~input_o\ & ((\inputB[22]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[21]~input_o\))) ) ) ) # ( !\inputB[23]~input_o\ & ( \inputB[24]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[22]~input_o\)))) # (\shamt[0]~input_o\ & (\shamt[1]~input_o\ & (\inputB[21]~input_o\))) ) ) ) # ( \inputB[23]~input_o\ & ( !\inputB[24]~input_o\ & ( (!\shamt[0]~input_o\ & (\shamt[1]~input_o\ & 
-- ((\inputB[22]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[21]~input_o\)))) ) ) ) # ( !\inputB[23]~input_o\ & ( !\inputB[24]~input_o\ & ( (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[22]~input_o\))) # 
-- (\shamt[0]~input_o\ & (\inputB[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[21]~input_o\,
	datad => \ALT_INV_inputB[22]~input_o\,
	datae => \ALT_INV_inputB[23]~input_o\,
	dataf => \ALT_INV_inputB[24]~input_o\,
	combout => \Mux2~14_combout\);

-- Location: MLABCELL_X13_Y7_N6
\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Mux2~10_combout\ & ( \shamt[2]~input_o\ & ( (\Mux2~14_combout\) # (\shamt[3]~input_o\) ) ) ) # ( !\Mux2~10_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \Mux2~14_combout\) ) ) ) # ( \Mux2~10_combout\ & ( 
-- !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\Mux2~16_combout\))) # (\shamt[3]~input_o\ & (\Mux2~12_combout\)) ) ) ) # ( !\Mux2~10_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\Mux2~16_combout\))) # (\shamt[3]~input_o\ & 
-- (\Mux2~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~12_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux2~16_combout\,
	datad => \ALT_INV_Mux2~14_combout\,
	datae => \ALT_INV_Mux2~10_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X13_Y7_N42
\Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \Mux4~2_combout\ & ( (!\shamt[4]~input_o\) # (\Mux4~1_combout\) ) ) # ( !\Mux4~2_combout\ & ( (\shamt[4]~input_o\ & \Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_Mux4~1_combout\,
	dataf => \ALT_INV_Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LABCELL_X14_Y5_N39
\Mux36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (\Mux34~6_combout\ & !\shamt[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_Mux34~6_combout\,
	datac => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux36~2_combout\);

-- Location: LABCELL_X10_Y5_N30
\Mux156~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~4_combout\ = ( \Mux36~2_combout\ & ( \aluControl[0]~input_o\ & ( ((\aluControl[3]~input_o\) # (\inputA[28]~input_o\)) # (\inputB[28]~input_o\) ) ) ) # ( !\Mux36~2_combout\ & ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- ((\inputA[28]~input_o\) # (\inputB[28]~input_o\))) ) ) ) # ( \Mux36~2_combout\ & ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputB[28]~input_o\ & (\inputA[28]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux4~3_combout\)))) ) ) ) # ( 
-- !\Mux36~2_combout\ & ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputB[28]~input_o\ & (\inputA[28]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux4~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111101110000011100000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[28]~input_o\,
	datab => \ALT_INV_inputA[28]~input_o\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_Mux4~3_combout\,
	datae => \ALT_INV_Mux36~2_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux156~4_combout\);

-- Location: LABCELL_X10_Y5_N6
\Mux138~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~61_combout\ = ( \inputB[29]~input_o\ & ( (!\inputA[1]~input_o\) # (\inputB[31]~input_o\) ) ) # ( !\inputB[29]~input_o\ & ( (\inputB[31]~input_o\ & \inputA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux138~61_combout\);

-- Location: MLABCELL_X9_Y4_N12
\Mux113~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux113~0_combout\ = ( \inputB[30]~input_o\ & ( (\inputB[28]~input_o\) # (\inputA[1]~input_o\) ) ) # ( !\inputB[30]~input_o\ & ( (!\inputA[1]~input_o\ & \inputB[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputB[30]~input_o\,
	combout => \Mux113~0_combout\);

-- Location: LABCELL_X10_Y5_N39
\Mux156~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~0_combout\ = ( \Mux113~0_combout\ & ( (\Mux105~2_combout\ & (\aluControl[0]~input_o\ & ((!\inputA[0]~input_o\) # (\Mux138~61_combout\)))) ) ) # ( !\Mux113~0_combout\ & ( (\Mux105~2_combout\ & (\aluControl[0]~input_o\ & (\Mux138~61_combout\ & 
-- \inputA[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100010001000000010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux105~2_combout\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux138~61_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_Mux113~0_combout\,
	combout => \Mux156~0_combout\);

-- Location: LABCELL_X17_Y4_N18
\Mux92~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~54_combout\ = ( \inputB[4]~input_o\ & ( \inputA[4]~input_o\ & ( (\inputB[12]~input_o\) # (\inputA[3]~input_o\) ) ) ) # ( !\inputB[4]~input_o\ & ( \inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & \inputB[12]~input_o\) ) ) ) # ( \inputB[4]~input_o\ & 
-- ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & ((\inputB[28]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[20]~input_o\)) ) ) ) # ( !\inputB[4]~input_o\ & ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & ((\inputB[28]~input_o\))) # 
-- (\inputA[3]~input_o\ & (\inputB[20]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[20]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[12]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	datae => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux92~54_combout\);

-- Location: MLABCELL_X13_Y4_N30
\Mux92~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~50_combout\ = ( \inputB[18]~input_o\ & ( \inputB[2]~input_o\ & ( ((!\inputA[4]~input_o\ & ((\inputB[26]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[10]~input_o\))) # (\inputA[3]~input_o\) ) ) ) # ( !\inputB[18]~input_o\ & ( \inputB[2]~input_o\ & 
-- ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & ((\inputB[26]~input_o\)))) # (\inputA[4]~input_o\ & (((\inputB[10]~input_o\)) # (\inputA[3]~input_o\))) ) ) ) # ( \inputB[18]~input_o\ & ( !\inputB[2]~input_o\ & ( (!\inputA[4]~input_o\ & 
-- (((\inputB[26]~input_o\)) # (\inputA[3]~input_o\))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & (\inputB[10]~input_o\))) ) ) ) # ( !\inputB[18]~input_o\ & ( !\inputB[2]~input_o\ & ( (!\inputA[3]~input_o\ & ((!\inputA[4]~input_o\ & 
-- ((\inputB[26]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	datae => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_inputB[2]~input_o\,
	combout => \Mux92~50_combout\);

-- Location: LABCELL_X16_Y4_N42
\Mux92~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~46_combout\ = ( \inputB[0]~input_o\ & ( \inputB[8]~input_o\ & ( ((!\inputA[3]~input_o\ & ((\inputB[24]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[16]~input_o\))) # (\inputA[4]~input_o\) ) ) ) # ( !\inputB[0]~input_o\ & ( \inputB[8]~input_o\ & ( 
-- (!\inputA[3]~input_o\ & (((\inputB[24]~input_o\) # (\inputA[4]~input_o\)))) # (\inputA[3]~input_o\ & (\inputB[16]~input_o\ & (!\inputA[4]~input_o\))) ) ) ) # ( \inputB[0]~input_o\ & ( !\inputB[8]~input_o\ & ( (!\inputA[3]~input_o\ & 
-- (((!\inputA[4]~input_o\ & \inputB[24]~input_o\)))) # (\inputA[3]~input_o\ & (((\inputA[4]~input_o\)) # (\inputB[16]~input_o\))) ) ) ) # ( !\inputB[0]~input_o\ & ( !\inputB[8]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & 
-- ((\inputB[24]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[16]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[24]~input_o\,
	datae => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_inputB[8]~input_o\,
	combout => \Mux92~46_combout\);

-- Location: LABCELL_X16_Y4_N24
\Mux92~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~55_combout\ = ( \inputA[1]~input_o\ & ( \Mux92~46_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~50_combout\))) # (\inputA[2]~input_o\ & (\Mux92~42_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux92~46_combout\ & ( (\inputA[2]~input_o\) # 
-- (\Mux92~54_combout\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux92~46_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~50_combout\))) # (\inputA[2]~input_o\ & (\Mux92~42_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux92~46_combout\ & ( (\Mux92~54_combout\ & 
-- !\inputA[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000011110101010100110011111111110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~42_combout\,
	datab => \ALT_INV_Mux92~54_combout\,
	datac => \ALT_INV_Mux92~50_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux92~46_combout\,
	combout => \Mux92~55_combout\);

-- Location: LABCELL_X19_Y4_N6
\Mux92~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~52_combout\ = ( \inputB[3]~input_o\ & ( \inputA[4]~input_o\ & ( (\inputB[11]~input_o\) # (\inputA[3]~input_o\) ) ) ) # ( !\inputB[3]~input_o\ & ( \inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & \inputB[11]~input_o\) ) ) ) # ( \inputB[3]~input_o\ & 
-- ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & ((\inputB[27]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[19]~input_o\)) ) ) ) # ( !\inputB[3]~input_o\ & ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & ((\inputB[27]~input_o\))) # 
-- (\inputA[3]~input_o\ & (\inputB[19]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputB[27]~input_o\,
	datae => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux92~52_combout\);

-- Location: LABCELL_X17_Y4_N36
\Mux92~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~48_combout\ = ( \inputB[9]~input_o\ & ( \inputB[25]~input_o\ & ( (!\inputA[3]~input_o\) # ((!\inputA[4]~input_o\ & (\inputB[17]~input_o\)) # (\inputA[4]~input_o\ & ((\inputB[1]~input_o\)))) ) ) ) # ( !\inputB[9]~input_o\ & ( \inputB[25]~input_o\ & 
-- ( (!\inputA[4]~input_o\ & (((!\inputA[3]~input_o\)) # (\inputB[17]~input_o\))) # (\inputA[4]~input_o\ & (((\inputB[1]~input_o\ & \inputA[3]~input_o\)))) ) ) ) # ( \inputB[9]~input_o\ & ( !\inputB[25]~input_o\ & ( (!\inputA[4]~input_o\ & 
-- (\inputB[17]~input_o\ & ((\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & (((!\inputA[3]~input_o\) # (\inputB[1]~input_o\)))) ) ) ) # ( !\inputB[9]~input_o\ & ( !\inputB[25]~input_o\ & ( (\inputA[3]~input_o\ & ((!\inputA[4]~input_o\ & 
-- (\inputB[17]~input_o\)) # (\inputA[4]~input_o\ & ((\inputB[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[17]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \Mux92~48_combout\);

-- Location: LABCELL_X14_Y4_N6
\Mux92~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~53_combout\ = ( \inputA[1]~input_o\ & ( \Mux92~40_combout\ & ( (\inputA[2]~input_o\) # (\Mux92~48_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux92~40_combout\ & ( (!\inputA[2]~input_o\ & (\Mux92~52_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux92~44_combout\))) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux92~40_combout\ & ( (\Mux92~48_combout\ & !\inputA[2]~input_o\) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux92~40_combout\ & ( (!\inputA[2]~input_o\ & (\Mux92~52_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux92~44_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~52_combout\,
	datab => \ALT_INV_Mux92~48_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux92~44_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux92~40_combout\,
	combout => \Mux92~53_combout\);

-- Location: LABCELL_X10_Y5_N54
\Mux156~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~1_combout\ = ( \inputA[0]~input_o\ & ( \aluControl[3]~input_o\ & ( ((!\aluControl[0]~input_o\ & \Mux92~53_combout\)) # (\Mux156~0_combout\) ) ) ) # ( !\inputA[0]~input_o\ & ( \aluControl[3]~input_o\ & ( ((!\aluControl[0]~input_o\ & 
-- \Mux92~55_combout\)) # (\Mux156~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011101010111010101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux156~0_combout\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux92~55_combout\,
	datad => \ALT_INV_Mux92~53_combout\,
	datae => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux156~1_combout\);

-- Location: LABCELL_X10_Y5_N15
\Mux156~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~3_combout\ = ( \inputB[12]~input_o\ & ( (\aluControl[3]~input_o\ & (((!\inputA[28]~input_o\ & !\inputB[28]~input_o\)) # (\aluControl[0]~input_o\))) ) ) # ( !\inputB[12]~input_o\ & ( (\aluControl[3]~input_o\ & (!\aluControl[0]~input_o\ & 
-- (!\inputA[28]~input_o\ & !\inputB[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001010001000100010101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_inputA[28]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputB[12]~input_o\,
	combout => \Mux156~3_combout\);

-- Location: LABCELL_X12_Y6_N15
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[24]~input_o\) ) + ( \inputA[24]~input_o\ ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[24]~input_o\) ) + ( \inputA[24]~input_o\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	dataf => \ALT_INV_inputA[24]~input_o\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: LABCELL_X12_Y6_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \inputA[25]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[25]~input_o\) ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( \inputA[25]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[25]~input_o\) ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[25]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: LABCELL_X12_Y6_N21
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \inputA[26]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[26]~input_o\) ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( \inputA[26]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[26]~input_o\) ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputA[26]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: LABCELL_X12_Y6_N24
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \inputA[27]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[27]~input_o\) ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( \inputA[27]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[27]~input_o\) ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[27]~input_o\,
	dataf => \ALT_INV_inputB[27]~input_o\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: LABCELL_X12_Y6_N27
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[28]~input_o\) ) + ( \inputA[28]~input_o\ ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[28]~input_o\) ) + ( \inputA[28]~input_o\ ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputA[28]~input_o\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X10_Y5_N12
\Mux156~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~2_combout\ = ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & \Add0~113_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Add0~113_sumout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux156~2_combout\);

-- Location: LABCELL_X10_Y5_N48
\Mux156~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~5_combout\ = ( \Mux156~3_combout\ & ( \Mux156~2_combout\ & ( ((\aluControl[1]~input_o\) # (\aluControl[2]~input_o\)) # (\Mux156~4_combout\) ) ) ) # ( !\Mux156~3_combout\ & ( \Mux156~2_combout\ & ( ((\Mux156~4_combout\ & !\aluControl[2]~input_o\)) 
-- # (\aluControl[1]~input_o\) ) ) ) # ( \Mux156~3_combout\ & ( !\Mux156~2_combout\ & ( (!\aluControl[2]~input_o\ & ((!\aluControl[1]~input_o\ & (\Mux156~4_combout\)) # (\aluControl[1]~input_o\ & ((\Mux156~1_combout\))))) # (\aluControl[2]~input_o\ & 
-- (((!\aluControl[1]~input_o\)))) ) ) ) # ( !\Mux156~3_combout\ & ( !\Mux156~2_combout\ & ( (!\aluControl[2]~input_o\ & ((!\aluControl[1]~input_o\ & (\Mux156~4_combout\)) # (\aluControl[1]~input_o\ & ((\Mux156~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux156~4_combout\,
	datab => \ALT_INV_Mux156~1_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux156~3_combout\,
	dataf => \ALT_INV_Mux156~2_combout\,
	combout => \Mux156~5_combout\);

-- Location: LABCELL_X10_Y5_N9
\res[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(28) = ( \Mux160~0_combout\ & ( res(28) ) ) # ( !\Mux160~0_combout\ & ( \Mux156~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux156~5_combout\,
	datac => ALT_INV_res(28),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(28));

-- Location: MLABCELL_X9_Y3_N39
\Mux152~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~1_combout\ = ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & \Add0~97_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_Add0~97_sumout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux152~1_combout\);

-- Location: MLABCELL_X9_Y3_N15
\Mux152~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~2_combout\ = ( \aluControl[0]~input_o\ & ( (\inputB[8]~input_o\ & \aluControl[3]~input_o\) ) ) # ( !\aluControl[0]~input_o\ & ( (!\inputB[24]~input_o\ & (\aluControl[3]~input_o\ & !\inputA[24]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	datab => \ALT_INV_inputB[24]~input_o\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_inputA[24]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux152~2_combout\);

-- Location: LABCELL_X16_Y4_N12
\Mux92~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~47_combout\ = ( \inputA[2]~input_o\ & ( \Mux92~46_combout\ & ( (!\inputA[1]~input_o\ & (\Mux92~38_combout\)) # (\inputA[1]~input_o\ & ((\Mux92~34_combout\))) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux92~46_combout\ & ( (!\inputA[1]~input_o\) # 
-- (\Mux92~42_combout\) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux92~46_combout\ & ( (!\inputA[1]~input_o\ & (\Mux92~38_combout\)) # (\inputA[1]~input_o\ & ((\Mux92~34_combout\))) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux92~46_combout\ & ( (\Mux92~42_combout\ & 
-- \inputA[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~42_combout\,
	datab => \ALT_INV_Mux92~38_combout\,
	datac => \ALT_INV_inputA[1]~input_o\,
	datad => \ALT_INV_Mux92~34_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux92~46_combout\,
	combout => \Mux92~47_combout\);

-- Location: LABCELL_X19_Y4_N48
\Mux138~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~56_combout\ = ( \inputB[31]~input_o\ & ( (!\inputA[4]~input_o\ & !\inputA[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux138~56_combout\);

-- Location: LABCELL_X21_Y4_N12
\Mux138~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~57_combout\ = ( \Mux138~44_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~48_combout\))) # (\inputA[2]~input_o\ & (\Mux138~56_combout\)) ) ) ) # ( !\Mux138~44_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & 
-- ((\Mux138~48_combout\))) # (\inputA[2]~input_o\ & (\Mux138~56_combout\)) ) ) ) # ( \Mux138~44_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\) # (\Mux138~52_combout\) ) ) ) # ( !\Mux138~44_combout\ & ( !\inputA[1]~input_o\ & ( 
-- (\inputA[2]~input_o\ & \Mux138~52_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~56_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~48_combout\,
	datad => \ALT_INV_Mux138~52_combout\,
	datae => \ALT_INV_Mux138~44_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~57_combout\);

-- Location: MLABCELL_X9_Y2_N54
\Mux152~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~0_combout\ = ( \Mux138~57_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux138~55_combout\) # (\inputA[0]~input_o\) ) ) ) # ( !\Mux138~57_combout\ & ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & \Mux138~55_combout\) ) ) ) # ( 
-- \Mux138~57_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux92~47_combout\)) # (\inputA[0]~input_o\ & ((\Mux92~45_combout\))) ) ) ) # ( !\Mux138~57_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- (\Mux92~47_combout\)) # (\inputA[0]~input_o\ & ((\Mux92~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_Mux138~55_combout\,
	datac => \ALT_INV_Mux92~47_combout\,
	datad => \ALT_INV_Mux92~45_combout\,
	datae => \ALT_INV_Mux138~57_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux152~0_combout\);

-- Location: MLABCELL_X13_Y7_N36
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \Mux2~14_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (\Mux2~12_combout\)) # (\shamt[4]~input_o\ & ((\Mux2~3_combout\))) ) ) ) # ( !\Mux2~14_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (\Mux2~12_combout\)) 
-- # (\shamt[4]~input_o\ & ((\Mux2~3_combout\))) ) ) ) # ( \Mux2~14_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\) # (\Mux2~5_combout\) ) ) ) # ( !\Mux2~14_combout\ & ( !\shamt[2]~input_o\ & ( (\Mux2~5_combout\ & \shamt[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~12_combout\,
	datab => \ALT_INV_Mux2~3_combout\,
	datac => \ALT_INV_Mux2~5_combout\,
	datad => \ALT_INV_shamt[4]~input_o\,
	datae => \ALT_INV_Mux2~14_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: MLABCELL_X13_Y7_N21
\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (!\shamt[3]~input_o\ & ((\Mux8~1_combout\))) # (\shamt[3]~input_o\ & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: MLABCELL_X13_Y8_N27
\Mux40~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = ( \Mux34~7_combout\ & ( (!\shamt[3]~input_o\ & (!\shamt[4]~input_o\ & ((!\shamt[2]~input_o\) # (\Mux34~6_combout\)))) ) ) # ( !\Mux34~7_combout\ & ( (!\shamt[3]~input_o\ & (\shamt[2]~input_o\ & (!\shamt[4]~input_o\ & 
-- \Mux34~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000010000000101000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_Mux34~6_combout\,
	dataf => \ALT_INV_Mux34~7_combout\,
	combout => \Mux40~3_combout\);

-- Location: MLABCELL_X9_Y3_N30
\Mux152~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~3_combout\ = ( \Mux40~3_combout\ & ( \aluControl[0]~input_o\ & ( ((\inputB[24]~input_o\) # (\aluControl[3]~input_o\)) # (\inputA[24]~input_o\) ) ) ) # ( !\Mux40~3_combout\ & ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- ((\inputB[24]~input_o\) # (\inputA[24]~input_o\))) ) ) ) # ( \Mux40~3_combout\ & ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputA[24]~input_o\ & ((\inputB[24]~input_o\)))) # (\aluControl[3]~input_o\ & (((\Mux8~2_combout\)))) ) ) ) # ( 
-- !\Mux40~3_combout\ & ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputA[24]~input_o\ & ((\inputB[24]~input_o\)))) # (\aluControl[3]~input_o\ & (((\Mux8~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011101000100110011000111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[24]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Mux8~2_combout\,
	datad => \ALT_INV_inputB[24]~input_o\,
	datae => \ALT_INV_Mux40~3_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux152~3_combout\);

-- Location: MLABCELL_X9_Y3_N24
\Mux152~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~4_combout\ = ( !\aluControl[2]~input_o\ & ( (!\aluControl[1]~input_o\ & (((\Mux152~3_combout\)))) # (\aluControl[1]~input_o\ & ((((\aluControl[3]~input_o\ & \Mux152~0_combout\))) # (\Mux152~1_combout\))) ) ) # ( \aluControl[2]~input_o\ & ( 
-- (!\aluControl[1]~input_o\ & (((\Mux152~2_combout\)))) # (\aluControl[1]~input_o\ & (\Mux152~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000110110001101100011011010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_Mux152~1_combout\,
	datac => \ALT_INV_Mux152~2_combout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_Mux152~0_combout\,
	datag => \ALT_INV_Mux152~3_combout\,
	combout => \Mux152~4_combout\);

-- Location: MLABCELL_X9_Y3_N18
\res[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(24) = ( res(24) & ( (\Mux160~0_combout\) # (\Mux152~4_combout\) ) ) # ( !res(24) & ( (\Mux152~4_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux152~4_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(24),
	combout => res(24));

-- Location: LABCELL_X7_Y6_N30
\Mux2~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~15_combout\ = ( \inputB[23]~input_o\ & ( \inputB[25]~input_o\ & ( ((!\shamt[1]~input_o\ & (\inputB[26]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[24]~input_o\)))) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[23]~input_o\ & ( \inputB[25]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[26]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[24]~input_o\))))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)))) ) ) ) # ( \inputB[23]~input_o\ & ( !\inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ 
-- & ((!\shamt[1]~input_o\ & (\inputB[26]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[24]~input_o\))))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) ) ) ) # ( !\inputB[23]~input_o\ & ( !\inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- ((!\shamt[1]~input_o\ & (\inputB[26]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[24]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[26]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[23]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \Mux2~15_combout\);

-- Location: LABCELL_X19_Y6_N0
\Mux154~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~0_combout\ = ( \shamt[2]~input_o\ & ( \Mux2~11_combout\ & ( (!\shamt[3]~input_o\ & (\Mux2~13_combout\)) # (\shamt[3]~input_o\ & ((\Mux2~8_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux2~11_combout\ & ( (\Mux2~15_combout\) # 
-- (\shamt[3]~input_o\) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux2~11_combout\ & ( (!\shamt[3]~input_o\ & (\Mux2~13_combout\)) # (\shamt[3]~input_o\ & ((\Mux2~8_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux2~11_combout\ & ( (!\shamt[3]~input_o\ & 
-- \Mux2~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010001110100011100110011111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~13_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux2~8_combout\,
	datad => \ALT_INV_Mux2~15_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux2~11_combout\,
	combout => \Mux154~0_combout\);

-- Location: LABCELL_X10_Y3_N6
\Mux154~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~1_combout\ = ( \Mux6~0_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux38~0_combout\ & ((!\shamt[4]~input_o\) # (\aluControl[1]~input_o\))) ) ) ) # ( !\Mux6~0_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux38~0_combout\ & ((!\shamt[4]~input_o\) # 
-- (\aluControl[1]~input_o\))) ) ) ) # ( \Mux6~0_combout\ & ( !\aluControl[0]~input_o\ & ( (\shamt[4]~input_o\) # (\Mux154~0_combout\) ) ) ) # ( !\Mux6~0_combout\ & ( !\aluControl[0]~input_o\ & ( (\Mux154~0_combout\ & !\shamt[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_Mux154~0_combout\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_Mux38~0_combout\,
	datae => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux154~1_combout\);

-- Location: LABCELL_X14_Y4_N24
\Mux92~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~49_combout\ = ( \inputA[1]~input_o\ & ( \Mux92~40_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~44_combout\))) # (\inputA[2]~input_o\ & (\Mux92~36_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux92~40_combout\ & ( (\inputA[2]~input_o\) # 
-- (\Mux92~48_combout\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux92~40_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~44_combout\))) # (\inputA[2]~input_o\ & (\Mux92~36_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux92~40_combout\ & ( (\Mux92~48_combout\ & 
-- !\inputA[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~36_combout\,
	datab => \ALT_INV_Mux92~48_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux92~44_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux92~40_combout\,
	combout => \Mux92~49_combout\);

-- Location: LABCELL_X21_Y4_N42
\Mux138~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~59_combout\ = ( \Mux138~52_combout\ & ( \inputA[1]~input_o\ & ( !\inputA[2]~input_o\ ) ) ) # ( \Mux138~52_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~48_combout\))) # (\inputA[2]~input_o\ & (\Mux138~56_combout\)) ) ) ) 
-- # ( !\Mux138~52_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~48_combout\))) # (\inputA[2]~input_o\ & (\Mux138~56_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~56_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~48_combout\,
	datae => \ALT_INV_Mux138~52_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~59_combout\);

-- Location: MLABCELL_X13_Y4_N39
\Mux138~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~58_combout\ = ( \inputA[1]~input_o\ & ( (\Mux138~50_combout\ & !\inputA[2]~input_o\) ) ) # ( !\inputA[1]~input_o\ & ( (!\inputA[2]~input_o\ & ((\Mux138~46_combout\))) # (\inputA[2]~input_o\ & (\Mux138~54_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~50_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux138~54_combout\,
	datad => \ALT_INV_Mux138~46_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~58_combout\);

-- Location: LABCELL_X16_Y4_N6
\Mux92~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~51_combout\ = ( \inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~38_combout\ ) ) ) # ( !\inputA[2]~input_o\ & ( \inputA[1]~input_o\ & ( \Mux92~46_combout\ ) ) ) # ( \inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~42_combout\ ) ) ) # ( 
-- !\inputA[2]~input_o\ & ( !\inputA[1]~input_o\ & ( \Mux92~50_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~42_combout\,
	datab => \ALT_INV_Mux92~38_combout\,
	datac => \ALT_INV_Mux92~50_combout\,
	datad => \ALT_INV_Mux92~46_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux92~51_combout\);

-- Location: MLABCELL_X9_Y2_N18
\Mux154~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~2_combout\ = ( \Mux92~51_combout\ & ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux138~58_combout\))) # (\inputA[0]~input_o\ & (\Mux138~59_combout\)) ) ) ) # ( !\Mux92~51_combout\ & ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ 
-- & ((\Mux138~58_combout\))) # (\inputA[0]~input_o\ & (\Mux138~59_combout\)) ) ) ) # ( \Mux92~51_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\) # (\Mux92~49_combout\) ) ) ) # ( !\Mux92~51_combout\ & ( !\aluControl[0]~input_o\ & ( 
-- (\Mux92~49_combout\ & \inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~49_combout\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux138~59_combout\,
	datad => \ALT_INV_Mux138~58_combout\,
	datae => \ALT_INV_Mux92~51_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux154~2_combout\);

-- Location: LABCELL_X12_Y5_N9
\res~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~7_combout\ = ( !\inputB[26]~input_o\ & ( !\inputA[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[26]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \res~7_combout\);

-- Location: LABCELL_X10_Y3_N42
\Mux154~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~3_combout\ = ( \inputB[10]~input_o\ & ( \res~7_combout\ & ( ((!\Mux150~1_combout\ & (\Mux154~1_combout\)) # (\Mux150~1_combout\ & ((\Mux154~2_combout\)))) # (\aluControl[2]~input_o\) ) ) ) # ( !\inputB[10]~input_o\ & ( \res~7_combout\ & ( 
-- (!\aluControl[2]~input_o\ & ((!\Mux150~1_combout\ & (\Mux154~1_combout\)) # (\Mux150~1_combout\ & ((\Mux154~2_combout\))))) # (\aluControl[2]~input_o\ & (((!\Mux150~1_combout\)))) ) ) ) # ( \inputB[10]~input_o\ & ( !\res~7_combout\ & ( 
-- (!\aluControl[2]~input_o\ & ((!\Mux150~1_combout\ & (\Mux154~1_combout\)) # (\Mux150~1_combout\ & ((\Mux154~2_combout\))))) # (\aluControl[2]~input_o\ & (((\Mux150~1_combout\)))) ) ) ) # ( !\inputB[10]~input_o\ & ( !\res~7_combout\ & ( 
-- (!\aluControl[2]~input_o\ & ((!\Mux150~1_combout\ & (\Mux154~1_combout\)) # (\Mux150~1_combout\ & ((\Mux154~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux154~1_combout\,
	datab => \ALT_INV_Mux154~2_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_Mux150~1_combout\,
	datae => \ALT_INV_inputB[10]~input_o\,
	dataf => \ALT_INV_res~7_combout\,
	combout => \Mux154~3_combout\);

-- Location: LABCELL_X10_Y3_N12
\Mux154~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~4_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\inputA[26]~input_o\ & (\aluControl[0]~input_o\ & (\inputB[26]~input_o\))) # (\inputA[26]~input_o\ & (((\inputB[26]~input_o\)) # (\aluControl[0]~input_o\))))) # 
-- (\aluControl[3]~input_o\ & ((((\Mux154~3_combout\))))) ) ) # ( \aluControl[1]~input_o\ & ( ((!\aluControl[3]~input_o\ & (!\aluControl[0]~input_o\ & (\Add0~105_sumout\))) # (\aluControl[3]~input_o\ & (((\Mux154~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001011100000000000011000000000000010111111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[26]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Add0~105_sumout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux154~3_combout\,
	datag => \ALT_INV_inputB[26]~input_o\,
	combout => \Mux154~4_combout\);

-- Location: LABCELL_X10_Y3_N33
\res[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(26) = ( \Mux160~0_combout\ & ( res(26) ) ) # ( !\Mux160~0_combout\ & ( res(26) & ( \Mux154~4_combout\ ) ) ) # ( !\Mux160~0_combout\ & ( !res(26) & ( \Mux154~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux154~4_combout\,
	datae => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(26),
	combout => res(26));

-- Location: LABCELL_X7_Y6_N0
\Mux21~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~13_combout\ = ( \inputB[25]~input_o\ & ( \inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)) # (\inputB[23]~input_o\))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\) # (\inputB[24]~input_o\)))) ) ) ) # ( !\inputB[25]~input_o\ 
-- & ( \inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[23]~input_o\ & ((\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\) # (\inputB[24]~input_o\)))) ) ) ) # ( \inputB[25]~input_o\ & ( !\inputB[22]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)) # (\inputB[23]~input_o\))) # (\shamt[0]~input_o\ & (((\inputB[24]~input_o\ & !\shamt[1]~input_o\)))) ) ) ) # ( !\inputB[25]~input_o\ & ( !\inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[23]~input_o\ 
-- & ((\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (((\inputB[24]~input_o\ & !\shamt[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \Mux21~13_combout\);

-- Location: MLABCELL_X18_Y5_N0
\Mux153~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~0_combout\ = ( \Mux21~7_combout\ & ( \shamt[3]~input_o\ & ( (\shamt[2]~input_o\) # (\Mux21~9_combout\) ) ) ) # ( !\Mux21~7_combout\ & ( \shamt[3]~input_o\ & ( (\Mux21~9_combout\ & !\shamt[2]~input_o\) ) ) ) # ( \Mux21~7_combout\ & ( 
-- !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux21~13_combout\))) # (\shamt[2]~input_o\ & (\Mux21~11_combout\)) ) ) ) # ( !\Mux21~7_combout\ & ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux21~13_combout\))) # (\shamt[2]~input_o\ & 
-- (\Mux21~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~11_combout\,
	datab => \ALT_INV_Mux21~9_combout\,
	datac => \ALT_INV_Mux21~13_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	datae => \ALT_INV_Mux21~7_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux153~0_combout\);

-- Location: MLABCELL_X9_Y1_N24
\Mux153~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~1_combout\ = ( \Mux7~0_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux63~0_combout\ & ((!\shamt[4]~input_o\) # (\aluControl[1]~input_o\))) ) ) ) # ( !\Mux7~0_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux63~0_combout\ & ((!\shamt[4]~input_o\) # 
-- (\aluControl[1]~input_o\))) ) ) ) # ( \Mux7~0_combout\ & ( !\aluControl[0]~input_o\ & ( (\Mux153~0_combout\) # (\shamt[4]~input_o\) ) ) ) # ( !\Mux7~0_combout\ & ( !\aluControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & \Mux153~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux63~0_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_Mux153~0_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux153~1_combout\);

-- Location: MLABCELL_X9_Y1_N9
\res~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~6_combout\ = ( !\inputA[25]~input_o\ & ( !\inputB[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputA[25]~input_o\,
	combout => \res~6_combout\);

-- Location: MLABCELL_X9_Y2_N12
\Mux153~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~2_combout\ = ( \Mux138~58_combout\ & ( \aluControl[0]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux138~57_combout\) ) ) ) # ( !\Mux138~58_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux138~57_combout\ & !\inputA[0]~input_o\) ) ) ) # ( 
-- \Mux138~58_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux92~49_combout\)) # (\inputA[0]~input_o\ & ((\Mux92~47_combout\))) ) ) ) # ( !\Mux138~58_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- (\Mux92~49_combout\)) # (\inputA[0]~input_o\ & ((\Mux92~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~57_combout\,
	datab => \ALT_INV_Mux92~49_combout\,
	datac => \ALT_INV_Mux92~47_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux138~58_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux153~2_combout\);

-- Location: MLABCELL_X9_Y1_N48
\Mux153~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~3_combout\ = ( \inputB[9]~input_o\ & ( \Mux153~2_combout\ & ( ((!\aluControl[2]~input_o\ & (\Mux153~1_combout\)) # (\aluControl[2]~input_o\ & ((\res~6_combout\)))) # (\Mux150~1_combout\) ) ) ) # ( !\inputB[9]~input_o\ & ( \Mux153~2_combout\ & ( 
-- (!\Mux150~1_combout\ & ((!\aluControl[2]~input_o\ & (\Mux153~1_combout\)) # (\aluControl[2]~input_o\ & ((\res~6_combout\))))) # (\Mux150~1_combout\ & (((!\aluControl[2]~input_o\)))) ) ) ) # ( \inputB[9]~input_o\ & ( !\Mux153~2_combout\ & ( 
-- (!\Mux150~1_combout\ & ((!\aluControl[2]~input_o\ & (\Mux153~1_combout\)) # (\aluControl[2]~input_o\ & ((\res~6_combout\))))) # (\Mux150~1_combout\ & (((\aluControl[2]~input_o\)))) ) ) ) # ( !\inputB[9]~input_o\ & ( !\Mux153~2_combout\ & ( 
-- (!\Mux150~1_combout\ & ((!\aluControl[2]~input_o\ & (\Mux153~1_combout\)) # (\aluControl[2]~input_o\ & ((\res~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux150~1_combout\,
	datab => \ALT_INV_Mux153~1_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_res~6_combout\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_Mux153~2_combout\,
	combout => \Mux153~3_combout\);

-- Location: MLABCELL_X9_Y1_N36
\Mux153~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~4_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[0]~input_o\ & (\inputB[25]~input_o\ & (\inputA[25]~input_o\))) # (\aluControl[0]~input_o\ & (((\inputA[25]~input_o\)) # (\inputB[25]~input_o\))))) # 
-- (\aluControl[3]~input_o\ & ((((\Mux153~3_combout\))))) ) ) # ( \aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & (!\aluControl[0]~input_o\ & (\Add0~101_sumout\))) # (\aluControl[3]~input_o\ & ((((\Mux153~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000101010000010000000100001010111011111110101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Add0~101_sumout\,
	datad => \ALT_INV_inputA[25]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux153~3_combout\,
	datag => \ALT_INV_inputB[25]~input_o\,
	combout => \Mux153~4_combout\);

-- Location: MLABCELL_X9_Y1_N6
\res[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(25) = ( res(25) & ( (\Mux160~0_combout\) # (\Mux153~4_combout\) ) ) # ( !res(25) & ( (\Mux153~4_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux153~4_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(25),
	combout => res(25));

-- Location: LABCELL_X10_Y7_N42
\Mux138~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~60_combout\ = ( !\inputA[3]~input_o\ & ( \inputA[1]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[2]~input_o\ & \inputB[30]~input_o\)) ) ) ) # ( !\inputA[3]~input_o\ & ( !\inputA[1]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputB[28]~input_o\ & 
-- !\inputA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[28]~input_o\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	datae => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~60_combout\);

-- Location: MLABCELL_X9_Y2_N24
\Mux155~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~2_combout\ = ( \Mux138~60_combout\ & ( \aluControl[0]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux138~59_combout\) ) ) ) # ( !\Mux138~60_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux138~59_combout\ & !\inputA[0]~input_o\) ) ) ) # ( 
-- \Mux138~60_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux92~53_combout\)) # (\inputA[0]~input_o\ & ((\Mux92~51_combout\))) ) ) ) # ( !\Mux138~60_combout\ & ( !\aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- (\Mux92~53_combout\)) # (\inputA[0]~input_o\ & ((\Mux92~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~53_combout\,
	datab => \ALT_INV_Mux138~59_combout\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_Mux92~51_combout\,
	datae => \ALT_INV_Mux138~60_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux155~2_combout\);

-- Location: LABCELL_X7_Y6_N24
\Mux21~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~14_combout\ = ( \inputB[25]~input_o\ & ( \inputB[26]~input_o\ & ( (!\shamt[0]~input_o\ & (((\inputB[27]~input_o\)) # (\shamt[1]~input_o\))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[24]~input_o\)))) ) ) ) # ( !\inputB[25]~input_o\ 
-- & ( \inputB[26]~input_o\ & ( (!\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & ((\inputB[27]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\) # ((\inputB[24]~input_o\)))) ) ) ) # ( \inputB[25]~input_o\ & ( !\inputB[26]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (((\inputB[27]~input_o\)) # (\shamt[1]~input_o\))) # (\shamt[0]~input_o\ & (\shamt[1]~input_o\ & (\inputB[24]~input_o\))) ) ) ) # ( !\inputB[25]~input_o\ & ( !\inputB[26]~input_o\ & ( (!\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & 
-- ((\inputB[27]~input_o\)))) # (\shamt[0]~input_o\ & (\shamt[1]~input_o\ & (\inputB[24]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_inputB[27]~input_o\,
	datae => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \Mux21~14_combout\);

-- Location: LABCELL_X10_Y7_N24
\Mux155~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~0_combout\ = ( \shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux21~8_combout\ ) ) ) # ( !\shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux21~12_combout\ ) ) ) # ( \shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux21~10_combout\ ) ) ) # ( 
-- !\shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux21~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~8_combout\,
	datab => \ALT_INV_Mux21~14_combout\,
	datac => \ALT_INV_Mux21~10_combout\,
	datad => \ALT_INV_Mux21~12_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux155~0_combout\);

-- Location: MLABCELL_X9_Y2_N48
\Mux155~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~1_combout\ = ( \aluControl[1]~input_o\ & ( \Mux21~3_combout\ & ( (!\aluControl[0]~input_o\ & (((\Mux155~0_combout\)) # (\shamt[4]~input_o\))) # (\aluControl[0]~input_o\ & (((\Mux61~6_combout\)))) ) ) ) # ( !\aluControl[1]~input_o\ & ( 
-- \Mux21~3_combout\ & ( (!\shamt[4]~input_o\ & ((!\aluControl[0]~input_o\ & (\Mux155~0_combout\)) # (\aluControl[0]~input_o\ & ((\Mux61~6_combout\))))) # (\shamt[4]~input_o\ & (((!\aluControl[0]~input_o\)))) ) ) ) # ( \aluControl[1]~input_o\ & ( 
-- !\Mux21~3_combout\ & ( (!\aluControl[0]~input_o\ & (!\shamt[4]~input_o\ & (\Mux155~0_combout\))) # (\aluControl[0]~input_o\ & (((\Mux61~6_combout\)))) ) ) ) # ( !\aluControl[1]~input_o\ & ( !\Mux21~3_combout\ & ( (!\shamt[4]~input_o\ & 
-- ((!\aluControl[0]~input_o\ & (\Mux155~0_combout\)) # (\aluControl[0]~input_o\ & ((\Mux61~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100000111101110111000010100111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_Mux155~0_combout\,
	datac => \ALT_INV_Mux61~6_combout\,
	datad => \ALT_INV_aluControl[0]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux21~3_combout\,
	combout => \Mux155~1_combout\);

-- Location: MLABCELL_X9_Y2_N9
\res~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~8_combout\ = (!\inputA[27]~input_o\ & !\inputB[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[27]~input_o\,
	datad => \ALT_INV_inputB[27]~input_o\,
	combout => \res~8_combout\);

-- Location: MLABCELL_X9_Y2_N42
\Mux155~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~3_combout\ = ( \res~8_combout\ & ( \Mux150~1_combout\ & ( (!\aluControl[2]~input_o\ & (\Mux155~2_combout\)) # (\aluControl[2]~input_o\ & ((\inputB[11]~input_o\))) ) ) ) # ( !\res~8_combout\ & ( \Mux150~1_combout\ & ( (!\aluControl[2]~input_o\ & 
-- (\Mux155~2_combout\)) # (\aluControl[2]~input_o\ & ((\inputB[11]~input_o\))) ) ) ) # ( \res~8_combout\ & ( !\Mux150~1_combout\ & ( (\aluControl[2]~input_o\) # (\Mux155~1_combout\) ) ) ) # ( !\res~8_combout\ & ( !\Mux150~1_combout\ & ( (\Mux155~1_combout\ 
-- & !\aluControl[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux155~2_combout\,
	datab => \ALT_INV_Mux155~1_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputB[11]~input_o\,
	datae => \ALT_INV_res~8_combout\,
	dataf => \ALT_INV_Mux150~1_combout\,
	combout => \Mux155~3_combout\);

-- Location: MLABCELL_X9_Y2_N30
\Mux155~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~4_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[0]~input_o\ & (\inputB[27]~input_o\ & (\inputA[27]~input_o\))) # (\aluControl[0]~input_o\ & (((\inputA[27]~input_o\)) # (\inputB[27]~input_o\))))) # 
-- (\aluControl[3]~input_o\ & ((((\Mux155~3_combout\))))) ) ) # ( \aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & (!\aluControl[0]~input_o\ & (\Add0~109_sumout\))) # (\aluControl[3]~input_o\ & ((((\Mux155~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000101010000010000000100001010111011111110101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Add0~109_sumout\,
	datad => \ALT_INV_inputA[27]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux155~3_combout\,
	datag => \ALT_INV_inputB[27]~input_o\,
	combout => \Mux155~4_combout\);

-- Location: MLABCELL_X9_Y2_N6
\res[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(27) = ( \Mux160~0_combout\ & ( res(27) ) ) # ( !\Mux160~0_combout\ & ( \Mux155~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_res(27),
	datac => \ALT_INV_Mux155~4_combout\,
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(27));

-- Location: MLABCELL_X9_Y4_N45
\Mux157~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~0_combout\ = ( \inputB[30]~input_o\ & ( (!\inputA[1]~input_o\ & (\inputA[0]~input_o\ & (!\inputA[3]~input_o\ & !\inputA[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[30]~input_o\,
	combout => \Mux157~0_combout\);

-- Location: MLABCELL_X9_Y5_N6
\Mux157~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~1_combout\ = ( \Mux103~0_combout\ & ( (\aluControl[0]~input_o\ & (!\inputA[2]~input_o\ & ((\Mux138~61_combout\) # (\Mux157~0_combout\)))) ) ) # ( !\Mux103~0_combout\ & ( (\aluControl[0]~input_o\ & (\Mux157~0_combout\ & !\inputA[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000010100000001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_Mux157~0_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux138~61_combout\,
	dataf => \ALT_INV_Mux103~0_combout\,
	combout => \Mux157~1_combout\);

-- Location: LABCELL_X20_Y4_N18
\Mux92~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~56_combout\ = ( \inputB[13]~input_o\ & ( \inputB[5]~input_o\ & ( ((!\inputA[3]~input_o\ & ((\inputB[29]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[21]~input_o\))) # (\inputA[4]~input_o\) ) ) ) # ( !\inputB[13]~input_o\ & ( \inputB[5]~input_o\ & 
-- ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[29]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[21]~input_o\)))) # (\inputA[4]~input_o\ & (((\inputA[3]~input_o\)))) ) ) ) # ( \inputB[13]~input_o\ & ( !\inputB[5]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[29]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[21]~input_o\)))) # (\inputA[4]~input_o\ & (((!\inputA[3]~input_o\)))) ) ) ) # ( !\inputB[13]~input_o\ & ( !\inputB[5]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[29]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_inputB[29]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[13]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux92~56_combout\);

-- Location: LABCELL_X14_Y4_N0
\Mux92~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~57_combout\ = ( \inputA[1]~input_o\ & ( \Mux92~56_combout\ & ( (!\inputA[2]~input_o\ & (\Mux92~52_combout\)) # (\inputA[2]~input_o\ & ((\Mux92~44_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux92~56_combout\ & ( (!\inputA[2]~input_o\) # 
-- (\Mux92~48_combout\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux92~56_combout\ & ( (!\inputA[2]~input_o\ & (\Mux92~52_combout\)) # (\inputA[2]~input_o\ & ((\Mux92~44_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux92~56_combout\ & ( (\Mux92~48_combout\ & 
-- \inputA[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~52_combout\,
	datab => \ALT_INV_Mux92~48_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux92~44_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux92~56_combout\,
	combout => \Mux92~57_combout\);

-- Location: MLABCELL_X9_Y5_N24
\Mux157~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~2_combout\ = ( \Mux92~55_combout\ & ( \aluControl[3]~input_o\ & ( ((!\aluControl[0]~input_o\ & ((\Mux92~57_combout\) # (\inputA[0]~input_o\)))) # (\Mux157~1_combout\) ) ) ) # ( !\Mux92~55_combout\ & ( \aluControl[3]~input_o\ & ( 
-- ((!\aluControl[0]~input_o\ & (!\inputA[0]~input_o\ & \Mux92~57_combout\))) # (\Mux157~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101110101010101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux157~1_combout\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_Mux92~57_combout\,
	datae => \ALT_INV_Mux92~55_combout\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux157~2_combout\);

-- Location: LABCELL_X12_Y6_N30
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[29]~input_o\) ) + ( \inputA[29]~input_o\ ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[29]~input_o\) ) + ( \inputA[29]~input_o\ ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputA[29]~input_o\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: LABCELL_X10_Y5_N36
\Mux157~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~3_combout\ = ( !\aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & \Add0~117_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_aluControl[0]~input_o\,
	datad => \ALT_INV_Add0~117_sumout\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux157~3_combout\);

-- Location: MLABCELL_X18_Y5_N18
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & \Mux61~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux61~11_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: MLABCELL_X18_Y5_N30
\Mux21~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~15_combout\ = ( \inputB[29]~input_o\ & ( \inputB[26]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[28]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)) # (\inputB[27]~input_o\))) ) ) ) # ( !\inputB[29]~input_o\ 
-- & ( \inputB[26]~input_o\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\ & \inputB[28]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)) # (\inputB[27]~input_o\))) ) ) ) # ( \inputB[29]~input_o\ & ( !\inputB[26]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[28]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[27]~input_o\ & (!\shamt[0]~input_o\))) ) ) ) # ( !\inputB[29]~input_o\ & ( !\inputB[26]~input_o\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\ & 
-- \inputB[28]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[27]~input_o\ & (!\shamt[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[27]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	datae => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \Mux21~15_combout\);

-- Location: MLABCELL_X18_Y5_N12
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \Mux21~9_combout\ & ( \shamt[3]~input_o\ & ( (\shamt[2]~input_o\) # (\Mux21~11_combout\) ) ) ) # ( !\Mux21~9_combout\ & ( \shamt[3]~input_o\ & ( (\Mux21~11_combout\ & !\shamt[2]~input_o\) ) ) ) # ( \Mux21~9_combout\ & ( 
-- !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux21~15_combout\))) # (\shamt[2]~input_o\ & (\Mux21~13_combout\)) ) ) ) # ( !\Mux21~9_combout\ & ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux21~15_combout\))) # (\shamt[2]~input_o\ & 
-- (\Mux21~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~11_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux21~13_combout\,
	datad => \ALT_INV_Mux21~15_combout\,
	datae => \ALT_INV_Mux21~9_combout\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X9_Y5_N42
\Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \shamt[4]~input_o\ & ( \Mux3~1_combout\ ) ) # ( !\shamt[4]~input_o\ & ( \Mux3~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux3~1_combout\,
	datad => \ALT_INV_Mux3~2_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: MLABCELL_X9_Y5_N36
\Mux157~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~5_combout\ = ( \inputB[29]~input_o\ & ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\) # (\Mux35~0_combout\) ) ) ) # ( !\inputB[29]~input_o\ & ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & ((\inputA[29]~input_o\))) # 
-- (\aluControl[3]~input_o\ & (\Mux35~0_combout\)) ) ) ) # ( \inputB[29]~input_o\ & ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & ((\inputA[29]~input_o\))) # (\aluControl[3]~input_o\ & (\Mux3~3_combout\)) ) ) ) # ( !\inputB[29]~input_o\ & ( 
-- !\aluControl[0]~input_o\ & ( (\Mux3~3_combout\ & \aluControl[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011001100001111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux35~0_combout\,
	datab => \ALT_INV_Mux3~3_combout\,
	datac => \ALT_INV_inputA[29]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux157~5_combout\);

-- Location: MLABCELL_X9_Y5_N45
\Mux157~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~4_combout\ = ( \aluControl[0]~input_o\ & ( (\aluControl[3]~input_o\ & \inputB[13]~input_o\) ) ) # ( !\aluControl[0]~input_o\ & ( (!\inputA[29]~input_o\ & (\aluControl[3]~input_o\ & !\inputB[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[29]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux157~4_combout\);

-- Location: MLABCELL_X9_Y5_N54
\Mux157~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~6_combout\ = ( \aluControl[2]~input_o\ & ( \Mux157~4_combout\ & ( (!\aluControl[1]~input_o\) # (\Mux157~3_combout\) ) ) ) # ( !\aluControl[2]~input_o\ & ( \Mux157~4_combout\ & ( (!\aluControl[1]~input_o\ & (((\Mux157~5_combout\)))) # 
-- (\aluControl[1]~input_o\ & (((\Mux157~3_combout\)) # (\Mux157~2_combout\))) ) ) ) # ( \aluControl[2]~input_o\ & ( !\Mux157~4_combout\ & ( (\Mux157~3_combout\ & \aluControl[1]~input_o\) ) ) ) # ( !\aluControl[2]~input_o\ & ( !\Mux157~4_combout\ & ( 
-- (!\aluControl[1]~input_o\ & (((\Mux157~5_combout\)))) # (\aluControl[1]~input_o\ & (((\Mux157~3_combout\)) # (\Mux157~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111110111000000110000001100000111111101111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux157~2_combout\,
	datab => \ALT_INV_Mux157~3_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Mux157~5_combout\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_Mux157~4_combout\,
	combout => \Mux157~6_combout\);

-- Location: MLABCELL_X9_Y5_N9
\res[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(29) = ( res(29) & ( (\Mux160~0_combout\) # (\Mux157~6_combout\) ) ) # ( !res(29) & ( (\Mux157~6_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux157~6_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(29),
	combout => res(29));

-- Location: LABCELL_X20_Y5_N0
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !res(27) & ( !res(29) & ( (!res(28) & (!res(24) & (!res(26) & !res(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(28),
	datab => ALT_INV_res(24),
	datac => ALT_INV_res(26),
	datad => ALT_INV_res(25),
	datae => ALT_INV_res(27),
	dataf => ALT_INV_res(29),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X9_Y5_N48
\Mux158~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~3_combout\ = ( \aluControl[0]~input_o\ & ( (\aluControl[3]~input_o\ & \inputB[14]~input_o\) ) ) # ( !\aluControl[0]~input_o\ & ( (\aluControl[3]~input_o\ & (!\inputA[30]~input_o\ & !\inputB[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_inputA[30]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux158~3_combout\);

-- Location: MLABCELL_X9_Y5_N12
\Mux158~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~0_combout\ = ( \inputA[0]~input_o\ & ( (\aluControl[0]~input_o\ & (\inputB[31]~input_o\ & \Mux102~0_combout\)) ) ) # ( !\inputA[0]~input_o\ & ( (\aluControl[0]~input_o\ & (\inputB[30]~input_o\ & \Mux102~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_Mux102~0_combout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \Mux158~0_combout\);

-- Location: LABCELL_X19_Y4_N0
\Mux92~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~58_combout\ = ( \inputB[30]~input_o\ & ( \inputB[6]~input_o\ & ( (!\inputA[4]~input_o\ & (((!\inputA[3]~input_o\)) # (\inputB[22]~input_o\))) # (\inputA[4]~input_o\ & (((\inputA[3]~input_o\) # (\inputB[14]~input_o\)))) ) ) ) # ( 
-- !\inputB[30]~input_o\ & ( \inputB[6]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputB[22]~input_o\ & ((\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & (((\inputA[3]~input_o\) # (\inputB[14]~input_o\)))) ) ) ) # ( \inputB[30]~input_o\ & ( 
-- !\inputB[6]~input_o\ & ( (!\inputA[4]~input_o\ & (((!\inputA[3]~input_o\)) # (\inputB[22]~input_o\))) # (\inputA[4]~input_o\ & (((\inputB[14]~input_o\ & !\inputA[3]~input_o\)))) ) ) ) # ( !\inputB[30]~input_o\ & ( !\inputB[6]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & (\inputB[22]~input_o\ & ((\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & (((\inputB[14]~input_o\ & !\inputA[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[22]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \Mux92~58_combout\);

-- Location: LABCELL_X16_Y4_N30
\Mux92~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~59_combout\ = ( \inputA[2]~input_o\ & ( \Mux92~46_combout\ & ( (\inputA[1]~input_o\) # (\Mux92~50_combout\) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux92~46_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux92~58_combout\))) # (\inputA[1]~input_o\ & 
-- (\Mux92~54_combout\)) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux92~46_combout\ & ( (\Mux92~50_combout\ & !\inputA[1]~input_o\) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux92~46_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux92~58_combout\))) # (\inputA[1]~input_o\ & 
-- (\Mux92~54_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~50_combout\,
	datab => \ALT_INV_Mux92~54_combout\,
	datac => \ALT_INV_Mux92~58_combout\,
	datad => \ALT_INV_inputA[1]~input_o\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux92~46_combout\,
	combout => \Mux92~59_combout\);

-- Location: MLABCELL_X9_Y5_N30
\Mux158~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~1_combout\ = ( \Mux92~59_combout\ & ( \aluControl[3]~input_o\ & ( ((!\aluControl[0]~input_o\ & ((!\inputA[0]~input_o\) # (\Mux92~57_combout\)))) # (\Mux158~0_combout\) ) ) ) # ( !\Mux92~59_combout\ & ( \aluControl[3]~input_o\ & ( 
-- ((!\aluControl[0]~input_o\ & (\inputA[0]~input_o\ & \Mux92~57_combout\))) # (\Mux158~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001110111011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_Mux158~0_combout\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_Mux92~57_combout\,
	datae => \ALT_INV_Mux92~59_combout\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux158~1_combout\);

-- Location: MLABCELL_X18_Y5_N6
\Mux2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~17_combout\ = ( \inputB[29]~input_o\ & ( \inputB[30]~input_o\ & ( (!\shamt[1]~input_o\) # ((!\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[27]~input_o\))) ) ) ) # ( !\inputB[29]~input_o\ & ( \inputB[30]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[27]~input_o\)))) ) ) ) # ( \inputB[29]~input_o\ & ( !\inputB[30]~input_o\ & ( (!\shamt[1]~input_o\ 
-- & (((\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[27]~input_o\)))) ) ) ) # ( !\inputB[29]~input_o\ & ( !\inputB[30]~input_o\ & ( (\shamt[1]~input_o\ & 
-- ((!\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[27]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	datae => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputB[30]~input_o\,
	combout => \Mux2~17_combout\);

-- Location: LABCELL_X19_Y6_N18
\Mux2~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~18_combout\ = ( \shamt[2]~input_o\ & ( \Mux2~11_combout\ & ( (\Mux2~15_combout\) # (\shamt[3]~input_o\) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux2~11_combout\ & ( (!\shamt[3]~input_o\ & ((\Mux2~17_combout\))) # (\shamt[3]~input_o\ & 
-- (\Mux2~13_combout\)) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux2~11_combout\ & ( (!\shamt[3]~input_o\ & \Mux2~15_combout\) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux2~11_combout\ & ( (!\shamt[3]~input_o\ & ((\Mux2~17_combout\))) # (\shamt[3]~input_o\ & 
-- (\Mux2~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~13_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux2~17_combout\,
	datad => \ALT_INV_Mux2~15_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux2~11_combout\,
	combout => \Mux2~18_combout\);

-- Location: LABCELL_X19_Y6_N33
\Mux2~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~19_combout\ = ( \Mux2~18_combout\ & ( (!\shamt[4]~input_o\) # (\Mux2~9_combout\) ) ) # ( !\Mux2~18_combout\ & ( (\shamt[4]~input_o\ & \Mux2~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_Mux2~9_combout\,
	dataf => \ALT_INV_Mux2~18_combout\,
	combout => \Mux2~19_combout\);

-- Location: MLABCELL_X9_Y5_N0
\Mux158~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~5_combout\ = ( !\aluControl[0]~input_o\ & ( ((!\aluControl[3]~input_o\ & (\inputB[30]~input_o\ & ((\inputA[30]~input_o\)))) # (\aluControl[3]~input_o\ & (((\Mux2~19_combout\))))) ) ) # ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- ((((\inputA[30]~input_o\))) # (\inputB[30]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux34~17_combout\ & (!\shamt[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101010101011111111100001111000011110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[30]~input_o\,
	datab => \ALT_INV_Mux34~17_combout\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputA[30]~input_o\,
	datae => \ALT_INV_aluControl[0]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	datag => \ALT_INV_Mux2~19_combout\,
	combout => \Mux158~5_combout\);

-- Location: LABCELL_X12_Y6_N33
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[30]~input_o\) ) + ( \inputA[30]~input_o\ ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[30]~input_o\) ) + ( \inputA[30]~input_o\ ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[30]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: MLABCELL_X9_Y5_N51
\Mux158~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~2_combout\ = ( \Add0~121_sumout\ & ( (!\aluControl[3]~input_o\ & !\aluControl[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_aluControl[0]~input_o\,
	dataf => \ALT_INV_Add0~121_sumout\,
	combout => \Mux158~2_combout\);

-- Location: MLABCELL_X9_Y5_N18
\Mux158~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~4_combout\ = ( \Mux158~5_combout\ & ( \Mux158~2_combout\ & ( ((!\aluControl[2]~input_o\) # (\aluControl[1]~input_o\)) # (\Mux158~3_combout\) ) ) ) # ( !\Mux158~5_combout\ & ( \Mux158~2_combout\ & ( ((\Mux158~3_combout\ & \aluControl[2]~input_o\)) 
-- # (\aluControl[1]~input_o\) ) ) ) # ( \Mux158~5_combout\ & ( !\Mux158~2_combout\ & ( (!\aluControl[2]~input_o\ & (((!\aluControl[1]~input_o\) # (\Mux158~1_combout\)))) # (\aluControl[2]~input_o\ & (\Mux158~3_combout\ & ((!\aluControl[1]~input_o\)))) ) ) ) 
-- # ( !\Mux158~5_combout\ & ( !\Mux158~2_combout\ & ( (!\aluControl[2]~input_o\ & (((\Mux158~1_combout\ & \aluControl[1]~input_o\)))) # (\aluControl[2]~input_o\ & (\Mux158~3_combout\ & ((!\aluControl[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux158~3_combout\,
	datab => \ALT_INV_Mux158~1_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux158~5_combout\,
	dataf => \ALT_INV_Mux158~2_combout\,
	combout => \Mux158~4_combout\);

-- Location: MLABCELL_X9_Y5_N15
\res[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(30) = ( res(30) & ( (\Mux160~0_combout\) # (\Mux158~4_combout\) ) ) # ( !res(30) & ( (\Mux158~4_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux158~4_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(30),
	combout => res(30));

-- Location: LABCELL_X10_Y7_N0
\Mux21~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~16_combout\ = ( \shamt[0]~input_o\ & ( \inputB[31]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[30]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[28]~input_o\))) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[31]~input_o\ & ( (!\shamt[1]~input_o\) # 
-- (\inputB[29]~input_o\) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[31]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[30]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[28]~input_o\))) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[31]~input_o\ & ( 
-- (\shamt[1]~input_o\ & \inputB[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[30]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux21~16_combout\);

-- Location: LABCELL_X10_Y7_N18
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux21~10_combout\ ) ) ) # ( !\shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \Mux21~14_combout\ ) ) ) # ( \shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux21~12_combout\ ) ) ) # ( 
-- !\shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( \Mux21~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~10_combout\,
	datab => \ALT_INV_Mux21~14_combout\,
	datac => \ALT_INV_Mux21~16_combout\,
	datad => \ALT_INV_Mux21~12_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X10_Y7_N36
\Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \Mux1~2_combout\ & ( (!\shamt[4]~input_o\) # (\Mux1~0_combout\) ) ) # ( !\Mux1~2_combout\ & ( (\shamt[4]~input_o\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LABCELL_X10_Y5_N24
\Mux159~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~4_combout\ = ( \inputB[31]~input_o\ & ( \aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & (\Mux1~3_combout\)) # (\aluControl[0]~input_o\ & ((\Mux32~0_combout\))) ) ) ) # ( !\inputB[31]~input_o\ & ( \aluControl[3]~input_o\ & ( 
-- (!\aluControl[0]~input_o\ & \Mux1~3_combout\) ) ) ) # ( \inputB[31]~input_o\ & ( !\aluControl[3]~input_o\ & ( (\aluControl[0]~input_o\) # (\inputA[31]~input_o\) ) ) ) # ( !\inputB[31]~input_o\ & ( !\aluControl[3]~input_o\ & ( (\inputA[31]~input_o\ & 
-- \aluControl[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001011101110111011100001100000011000000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[31]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux1~3_combout\,
	datad => \ALT_INV_Mux32~0_combout\,
	datae => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux159~4_combout\);

-- Location: MLABCELL_X9_Y4_N3
\Mux159~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~0_combout\ = ( !\inputA[1]~input_o\ & ( \aluControl[0]~input_o\ & ( (\Mux103~0_combout\ & (\inputB[31]~input_o\ & !\inputA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux103~0_combout\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux159~0_combout\);

-- Location: LABCELL_X19_Y4_N42
\Mux92~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~60_combout\ = ( \inputB[7]~input_o\ & ( \inputA[3]~input_o\ & ( (\inputB[23]~input_o\) # (\inputA[4]~input_o\) ) ) ) # ( !\inputB[7]~input_o\ & ( \inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[23]~input_o\) ) ) ) # ( \inputB[7]~input_o\ & 
-- ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[31]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[15]~input_o\)) ) ) ) # ( !\inputB[7]~input_o\ & ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[31]~input_o\))) # 
-- (\inputA[4]~input_o\ & (\inputB[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[15]~input_o\,
	datac => \ALT_INV_inputB[23]~input_o\,
	datad => \ALT_INV_inputB[31]~input_o\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux92~60_combout\);

-- Location: LABCELL_X14_Y4_N18
\Mux92~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~61_combout\ = ( \inputA[1]~input_o\ & ( \Mux92~56_combout\ & ( (!\inputA[2]~input_o\) # (\Mux92~48_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux92~56_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~60_combout\))) # (\inputA[2]~input_o\ & 
-- (\Mux92~52_combout\)) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux92~56_combout\ & ( (\inputA[2]~input_o\ & \Mux92~48_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux92~56_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux92~60_combout\))) # (\inputA[2]~input_o\ & 
-- (\Mux92~52_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux92~52_combout\,
	datab => \ALT_INV_Mux92~60_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux92~48_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux92~56_combout\,
	combout => \Mux92~61_combout\);

-- Location: MLABCELL_X9_Y4_N18
\Mux159~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~1_combout\ = ( \aluControl[3]~input_o\ & ( \aluControl[0]~input_o\ & ( \Mux159~0_combout\ ) ) ) # ( \aluControl[3]~input_o\ & ( !\aluControl[0]~input_o\ & ( ((!\inputA[0]~input_o\ & ((\Mux92~61_combout\))) # (\inputA[0]~input_o\ & 
-- (\Mux92~59_combout\))) # (\Mux159~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101111101111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux159~0_combout\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux92~59_combout\,
	datad => \ALT_INV_Mux92~61_combout\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux159~1_combout\);

-- Location: LABCELL_X12_Y6_N36
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( !\inputB[31]~input_o\ $ (!\aluControl[2]~input_o\) ) + ( \inputA[31]~input_o\ ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[31]~input_o\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\);

-- Location: LABCELL_X10_Y5_N21
\Mux159~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~2_combout\ = ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & \Add0~125_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_Add0~125_sumout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux159~2_combout\);

-- Location: LABCELL_X10_Y5_N18
\Mux159~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~3_combout\ = ( \inputA[31]~input_o\ & ( (\aluControl[3]~input_o\ & (\aluControl[0]~input_o\ & \inputB[15]~input_o\)) ) ) # ( !\inputA[31]~input_o\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[0]~input_o\ & (!\inputB[31]~input_o\)) # 
-- (\aluControl[0]~input_o\ & ((\inputB[15]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010001010000000101000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputA[31]~input_o\,
	combout => \Mux159~3_combout\);

-- Location: LABCELL_X10_Y5_N42
\Mux159~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~5_combout\ = ( \Mux159~2_combout\ & ( \Mux159~3_combout\ & ( ((\aluControl[1]~input_o\) # (\aluControl[2]~input_o\)) # (\Mux159~4_combout\) ) ) ) # ( !\Mux159~2_combout\ & ( \Mux159~3_combout\ & ( (!\aluControl[2]~input_o\ & 
-- ((!\aluControl[1]~input_o\ & (\Mux159~4_combout\)) # (\aluControl[1]~input_o\ & ((\Mux159~1_combout\))))) # (\aluControl[2]~input_o\ & (((!\aluControl[1]~input_o\)))) ) ) ) # ( \Mux159~2_combout\ & ( !\Mux159~3_combout\ & ( ((\Mux159~4_combout\ & 
-- !\aluControl[2]~input_o\)) # (\aluControl[1]~input_o\) ) ) ) # ( !\Mux159~2_combout\ & ( !\Mux159~3_combout\ & ( (!\aluControl[2]~input_o\ & ((!\aluControl[1]~input_o\ & (\Mux159~4_combout\)) # (\aluControl[1]~input_o\ & ((\Mux159~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100001111111101011111001100000101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux159~4_combout\,
	datab => \ALT_INV_Mux159~1_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux159~2_combout\,
	dataf => \ALT_INV_Mux159~3_combout\,
	combout => \Mux159~5_combout\);

-- Location: LABCELL_X10_Y5_N0
\res[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(31) = ( \Mux160~0_combout\ & ( res(31) ) ) # ( !\Mux160~0_combout\ & ( \Mux159~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux159~5_combout\,
	datad => ALT_INV_res(31),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(31));

-- Location: MLABCELL_X13_Y5_N24
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !res(31) & ( !res(30) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_res(30),
	datae => ALT_INV_res(31),
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X13_Y5_N30
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~4_combout\ & ( \Equal0~5_combout\ & ( (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X47_Y25_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


