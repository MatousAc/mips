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

-- DATE "12/07/2021 15:58:35"

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
-- zero	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[9]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[10]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[11]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[12]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[13]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[14]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[15]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[16]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[17]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[18]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[19]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[20]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[21]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[22]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[23]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[24]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[25]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[26]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[27]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[28]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[29]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[30]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluResult[31]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[17]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[25]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[21]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[13]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[29]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[19]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[11]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[27]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[23]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[15]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[31]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[16]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[24]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[20]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[12]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[28]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[18]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[10]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[26]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[22]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[14]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[30]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[14]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[13]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[12]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[11]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[9]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[8]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[18]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[21]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[20]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[19]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[17]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[16]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[25]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[28]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[27]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[26]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[24]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[23]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[22]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[30]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[31]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[29]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \shamt[3]~input_o\ : std_logic;
SIGNAL \inputB[27]~input_o\ : std_logic;
SIGNAL \shamt[4]~input_o\ : std_logic;
SIGNAL \inputB[19]~input_o\ : std_logic;
SIGNAL \Mux64~35_combout\ : std_logic;
SIGNAL \shamt[2]~input_o\ : std_logic;
SIGNAL \inputB[17]~input_o\ : std_logic;
SIGNAL \inputB[25]~input_o\ : std_logic;
SIGNAL \Mux64~28_combout\ : std_logic;
SIGNAL \shamt[1]~input_o\ : std_logic;
SIGNAL \inputB[29]~input_o\ : std_logic;
SIGNAL \inputB[13]~input_o\ : std_logic;
SIGNAL \inputB[21]~input_o\ : std_logic;
SIGNAL \Mux64~20_combout\ : std_logic;
SIGNAL \inputB[31]~input_o\ : std_logic;
SIGNAL \inputB[23]~input_o\ : std_logic;
SIGNAL \inputB[15]~input_o\ : std_logic;
SIGNAL \Mux64~24_combout\ : std_logic;
SIGNAL \Mux64~36_combout\ : std_logic;
SIGNAL \aluControl[1]~input_o\ : std_logic;
SIGNAL \inputA[0]~input_o\ : std_logic;
SIGNAL \shamt[0]~input_o\ : std_logic;
SIGNAL \Mux143~0_combout\ : std_logic;
SIGNAL \inputA[4]~input_o\ : std_logic;
SIGNAL \inputA[3]~input_o\ : std_logic;
SIGNAL \Mux128~28_combout\ : std_logic;
SIGNAL \inputA[1]~input_o\ : std_logic;
SIGNAL \Mux128~20_combout\ : std_logic;
SIGNAL \inputA[2]~input_o\ : std_logic;
SIGNAL \Mux128~24_combout\ : std_logic;
SIGNAL \Mux128~34_combout\ : std_logic;
SIGNAL \Mux128~35_combout\ : std_logic;
SIGNAL \inputB[28]~input_o\ : std_logic;
SIGNAL \inputB[20]~input_o\ : std_logic;
SIGNAL \Mux128~39_combout\ : std_logic;
SIGNAL \inputB[26]~input_o\ : std_logic;
SIGNAL \inputB[18]~input_o\ : std_logic;
SIGNAL \Mux128~30_combout\ : std_logic;
SIGNAL \inputB[24]~input_o\ : std_logic;
SIGNAL \inputB[16]~input_o\ : std_logic;
SIGNAL \Mux128~26_combout\ : std_logic;
SIGNAL \inputB[30]~input_o\ : std_logic;
SIGNAL \inputB[14]~input_o\ : std_logic;
SIGNAL \inputB[22]~input_o\ : std_logic;
SIGNAL \Mux128~22_combout\ : std_logic;
SIGNAL \Mux128~40_combout\ : std_logic;
SIGNAL \Mux64~30_combout\ : std_logic;
SIGNAL \Mux64~40_combout\ : std_logic;
SIGNAL \Mux64~22_combout\ : std_logic;
SIGNAL \Mux64~26_combout\ : std_logic;
SIGNAL \Mux64~41_combout\ : std_logic;
SIGNAL \Mux141~4_combout\ : std_logic;
SIGNAL \aluControl[3]~input_o\ : std_logic;
SIGNAL \aluControl[2]~input_o\ : std_logic;
SIGNAL \Mux143~1_combout\ : std_logic;
SIGNAL \inputA[13]~input_o\ : std_logic;
SIGNAL \Mux143~2_combout\ : std_logic;
SIGNAL \Mux141~5_combout\ : std_logic;
SIGNAL \inputA[12]~input_o\ : std_logic;
SIGNAL \inputB[12]~input_o\ : std_logic;
SIGNAL \inputA[11]~input_o\ : std_logic;
SIGNAL \inputB[11]~input_o\ : std_logic;
SIGNAL \inputA[10]~input_o\ : std_logic;
SIGNAL \inputB[10]~input_o\ : std_logic;
SIGNAL \inputB[9]~input_o\ : std_logic;
SIGNAL \inputA[9]~input_o\ : std_logic;
SIGNAL \inputA[8]~input_o\ : std_logic;
SIGNAL \inputB[8]~input_o\ : std_logic;
SIGNAL \inputB[7]~input_o\ : std_logic;
SIGNAL \inputA[7]~input_o\ : std_logic;
SIGNAL \inputA[6]~input_o\ : std_logic;
SIGNAL \inputB[6]~input_o\ : std_logic;
SIGNAL \inputA[5]~input_o\ : std_logic;
SIGNAL \inputB[5]~input_o\ : std_logic;
SIGNAL \inputB[4]~input_o\ : std_logic;
SIGNAL \inputB[3]~input_o\ : std_logic;
SIGNAL \inputB[2]~input_o\ : std_logic;
SIGNAL \inputB[1]~input_o\ : std_logic;
SIGNAL \inputB[0]~input_o\ : std_logic;
SIGNAL \Add0~130_cout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Mux141~3_combout\ : std_logic;
SIGNAL \Mux1~11_combout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \Mux1~49_combout\ : std_logic;
SIGNAL \Mux1~45_combout\ : std_logic;
SIGNAL \Mux141~1_combout\ : std_logic;
SIGNAL \Mux65~11_combout\ : std_logic;
SIGNAL \Mux65~10_combout\ : std_logic;
SIGNAL \Mux65~45_combout\ : std_logic;
SIGNAL \Mux65~49_combout\ : std_logic;
SIGNAL \Mux141~0_combout\ : std_logic;
SIGNAL \Mux141~2_combout\ : std_logic;
SIGNAL \Mux141~6_combout\ : std_logic;
SIGNAL \Mux160~0_combout\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Mux140~3_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Mux140~1_combout\ : std_logic;
SIGNAL \Mux65~9_combout\ : std_logic;
SIGNAL \Mux140~0_combout\ : std_logic;
SIGNAL \Mux140~2_combout\ : std_logic;
SIGNAL \Mux64~18_combout\ : std_logic;
SIGNAL \Mux64~31_combout\ : std_logic;
SIGNAL \Mux128~18_combout\ : std_logic;
SIGNAL \Mux128~31_combout\ : std_logic;
SIGNAL \Mux140~4_combout\ : std_logic;
SIGNAL \Mux140~5_combout\ : std_logic;
SIGNAL \Mux140~6_combout\ : std_logic;
SIGNAL \Mux152~3_combout\ : std_logic;
SIGNAL \Mux152~0_combout\ : std_logic;
SIGNAL \Mux128~52_combout\ : std_logic;
SIGNAL \Mux128~44_combout\ : std_logic;
SIGNAL \Mux128~53_combout\ : std_logic;
SIGNAL \Mux65~37_combout\ : std_logic;
SIGNAL \Mux65~41_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \Mux128~33_combout\ : std_logic;
SIGNAL \Mux128~51_combout\ : std_logic;
SIGNAL \Mux128~32_combout\ : std_logic;
SIGNAL \Mux65~12_combout\ : std_logic;
SIGNAL \Mux144~1_combout\ : std_logic;
SIGNAL \Mux128~49_combout\ : std_logic;
SIGNAL \Mux128~50_combout\ : std_logic;
SIGNAL \Mux144~2_combout\ : std_logic;
SIGNAL \Mux64~50_combout\ : std_logic;
SIGNAL \Mux64~51_combout\ : std_logic;
SIGNAL \Mux64~53_combout\ : std_logic;
SIGNAL \Mux64~45_combout\ : std_logic;
SIGNAL \Mux64~54_combout\ : std_logic;
SIGNAL \Mux64~32_combout\ : std_logic;
SIGNAL \Mux64~34_combout\ : std_logic;
SIGNAL \Mux64~33_combout\ : std_logic;
SIGNAL \Mux64~52_combout\ : std_logic;
SIGNAL \Mux1~12_combout\ : std_logic;
SIGNAL \Mux1~37_combout\ : std_logic;
SIGNAL \Mux1~41_combout\ : std_logic;
SIGNAL \Mux144~3_combout\ : std_logic;
SIGNAL \Mux152~1_combout\ : std_logic;
SIGNAL \Mux144~4_combout\ : std_logic;
SIGNAL \inputA[16]~input_o\ : std_logic;
SIGNAL \res~0_combout\ : std_logic;
SIGNAL \Mux152~2_combout\ : std_logic;
SIGNAL \inputA[15]~input_o\ : std_logic;
SIGNAL \inputA[14]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Mux144~0_combout\ : std_logic;
SIGNAL \Mux144~5_combout\ : std_logic;
SIGNAL \Mux128~37_combout\ : std_logic;
SIGNAL \Mux128~36_combout\ : std_logic;
SIGNAL \Mux128~38_combout\ : std_logic;
SIGNAL \Mux128~54_combout\ : std_logic;
SIGNAL \Mux65~13_combout\ : std_logic;
SIGNAL \Mux145~1_combout\ : std_logic;
SIGNAL \Mux128~55_combout\ : std_logic;
SIGNAL \Mux128~56_combout\ : std_logic;
SIGNAL \Mux145~2_combout\ : std_logic;
SIGNAL \Mux64~56_combout\ : std_logic;
SIGNAL \Mux64~57_combout\ : std_logic;
SIGNAL \Mux64~39_combout\ : std_logic;
SIGNAL \Mux64~55_combout\ : std_logic;
SIGNAL \Mux64~38_combout\ : std_logic;
SIGNAL \Mux64~37_combout\ : std_logic;
SIGNAL \Mux1~13_combout\ : std_logic;
SIGNAL \Mux145~3_combout\ : std_logic;
SIGNAL \Mux145~4_combout\ : std_logic;
SIGNAL \inputA[17]~input_o\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Mux145~0_combout\ : std_logic;
SIGNAL \res~1_combout\ : std_logic;
SIGNAL \Mux145~5_combout\ : std_logic;
SIGNAL \Mux128~45_combout\ : std_logic;
SIGNAL \Mux64~46_combout\ : std_logic;
SIGNAL \Mux142~4_combout\ : std_logic;
SIGNAL \Mux142~5_combout\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Mux142~3_combout\ : std_logic;
SIGNAL \Mux142~0_combout\ : std_logic;
SIGNAL \Mux142~1_combout\ : std_logic;
SIGNAL \Mux142~2_combout\ : std_logic;
SIGNAL \Mux142~6_combout\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Mux143~6_combout\ : std_logic;
SIGNAL \Mux143~4_combout\ : std_logic;
SIGNAL \Mux143~3_combout\ : std_logic;
SIGNAL \Mux143~5_combout\ : std_logic;
SIGNAL \Mux143~7_combout\ : std_logic;
SIGNAL \Mux143~8_combout\ : std_logic;
SIGNAL \Mux143~9_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Mux156~2_combout\ : std_logic;
SIGNAL \Mux158~1_combout\ : std_logic;
SIGNAL \Mux65~29_combout\ : std_logic;
SIGNAL \Mux65~33_combout\ : std_logic;
SIGNAL \Mux65~20_combout\ : std_logic;
SIGNAL \Mux65~24_combout\ : std_logic;
SIGNAL \Mux65~34_combout\ : std_logic;
SIGNAL \Mux65~26_combout\ : std_logic;
SIGNAL \Mux65~22_combout\ : std_logic;
SIGNAL \Mux65~31_combout\ : std_logic;
SIGNAL \Mux65~27_combout\ : std_logic;
SIGNAL \Mux158~0_combout\ : std_logic;
SIGNAL \Mux158~2_combout\ : std_logic;
SIGNAL \inputA[30]~input_o\ : std_logic;
SIGNAL \inputA[29]~input_o\ : std_logic;
SIGNAL \inputA[28]~input_o\ : std_logic;
SIGNAL \inputA[27]~input_o\ : std_logic;
SIGNAL \inputA[26]~input_o\ : std_logic;
SIGNAL \inputA[25]~input_o\ : std_logic;
SIGNAL \inputA[24]~input_o\ : std_logic;
SIGNAL \inputA[23]~input_o\ : std_logic;
SIGNAL \inputA[22]~input_o\ : std_logic;
SIGNAL \inputA[21]~input_o\ : std_logic;
SIGNAL \inputA[20]~input_o\ : std_logic;
SIGNAL \inputA[19]~input_o\ : std_logic;
SIGNAL \inputA[18]~input_o\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Mux158~3_combout\ : std_logic;
SIGNAL \Mux1~24_combout\ : std_logic;
SIGNAL \Mux1~32_combout\ : std_logic;
SIGNAL \Mux1~20_combout\ : std_logic;
SIGNAL \Mux1~28_combout\ : std_logic;
SIGNAL \Mux1~33_combout\ : std_logic;
SIGNAL \Mux1~22_combout\ : std_logic;
SIGNAL \Mux1~30_combout\ : std_logic;
SIGNAL \Mux1~31_combout\ : std_logic;
SIGNAL \Mux1~26_combout\ : std_logic;
SIGNAL \Mux64~47_combout\ : std_logic;
SIGNAL \Mux64~73_combout\ : std_logic;
SIGNAL \Mux1~27_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux158~5_combout\ : std_logic;
SIGNAL \Mux158~4_combout\ : std_logic;
SIGNAL \Mux158~6_combout\ : std_logic;
SIGNAL \inputA[31]~input_o\ : std_logic;
SIGNAL \Mux159~1_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Mux159~0_combout\ : std_logic;
SIGNAL \Mux1~34_combout\ : std_logic;
SIGNAL \Mux1~35_combout\ : std_logic;
SIGNAL \Mux1~36_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux159~2_combout\ : std_logic;
SIGNAL \Mux65~35_combout\ : std_logic;
SIGNAL \Mux65~36_combout\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \Mux159~4_combout\ : std_logic;
SIGNAL \Mux159~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Mux128~41_combout\ : std_logic;
SIGNAL \Mux128~43_combout\ : std_logic;
SIGNAL \Mux128~69_combout\ : std_logic;
SIGNAL \Mux128~57_combout\ : std_logic;
SIGNAL \Mux65~18_combout\ : std_logic;
SIGNAL \Mux128~66_combout\ : std_logic;
SIGNAL \Mux65~17_combout\ : std_logic;
SIGNAL \Mux128~72_combout\ : std_logic;
SIGNAL \Mux128~48_combout\ : std_logic;
SIGNAL \Mux128~60_combout\ : std_logic;
SIGNAL \Mux128~46_combout\ : std_logic;
SIGNAL \Mux65~19_combout\ : std_logic;
SIGNAL \Mux128~63_combout\ : std_logic;
SIGNAL \Mux65~16_combout\ : std_logic;
SIGNAL \Mux151~1_combout\ : std_logic;
SIGNAL \Mux128~58_combout\ : std_logic;
SIGNAL \Mux128~64_combout\ : std_logic;
SIGNAL \Mux128~70_combout\ : std_logic;
SIGNAL \Mux128~71_combout\ : std_logic;
SIGNAL \Mux128~73_combout\ : std_logic;
SIGNAL \Mux128~67_combout\ : std_logic;
SIGNAL \Mux128~61_combout\ : std_logic;
SIGNAL \Mux128~74_combout\ : std_logic;
SIGNAL \Mux151~2_combout\ : std_logic;
SIGNAL \Mux64~64_combout\ : std_logic;
SIGNAL \Mux1~16_combout\ : std_logic;
SIGNAL \Mux64~44_combout\ : std_logic;
SIGNAL \Mux64~70_combout\ : std_logic;
SIGNAL \Mux64~58_combout\ : std_logic;
SIGNAL \Mux64~42_combout\ : std_logic;
SIGNAL \Mux1~18_combout\ : std_logic;
SIGNAL \Mux64~49_combout\ : std_logic;
SIGNAL \Mux64~61_combout\ : std_logic;
SIGNAL \Mux1~19_combout\ : std_logic;
SIGNAL \Mux64~67_combout\ : std_logic;
SIGNAL \Mux1~17_combout\ : std_logic;
SIGNAL \Mux151~3_combout\ : std_logic;
SIGNAL \Mux64~59_combout\ : std_logic;
SIGNAL \Mux64~65_combout\ : std_logic;
SIGNAL \Mux64~71_combout\ : std_logic;
SIGNAL \Mux64~72_combout\ : std_logic;
SIGNAL \Mux64~68_combout\ : std_logic;
SIGNAL \Mux64~74_combout\ : std_logic;
SIGNAL \Mux64~62_combout\ : std_logic;
SIGNAL \Mux64~75_combout\ : std_logic;
SIGNAL \Mux151~4_combout\ : std_logic;
SIGNAL \res~7_combout\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Mux151~0_combout\ : std_logic;
SIGNAL \Mux151~5_combout\ : std_logic;
SIGNAL \Mux128~47_combout\ : std_logic;
SIGNAL \Mux65~15_combout\ : std_logic;
SIGNAL \Mux128~42_combout\ : std_logic;
SIGNAL \Mux65~14_combout\ : std_logic;
SIGNAL \Mux148~1_combout\ : std_logic;
SIGNAL \Mux128~65_combout\ : std_logic;
SIGNAL \Mux128~62_combout\ : std_logic;
SIGNAL \Mux148~2_combout\ : std_logic;
SIGNAL \Mux64~48_combout\ : std_logic;
SIGNAL \Mux1~15_combout\ : std_logic;
SIGNAL \Mux64~43_combout\ : std_logic;
SIGNAL \Mux1~14_combout\ : std_logic;
SIGNAL \Mux148~3_combout\ : std_logic;
SIGNAL \Mux64~63_combout\ : std_logic;
SIGNAL \Mux64~66_combout\ : std_logic;
SIGNAL \Mux148~4_combout\ : std_logic;
SIGNAL \res~4_combout\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Mux148~0_combout\ : std_logic;
SIGNAL \Mux148~5_combout\ : std_logic;
SIGNAL \Mux146~1_combout\ : std_logic;
SIGNAL \Mux128~59_combout\ : std_logic;
SIGNAL \Mux146~2_combout\ : std_logic;
SIGNAL \Mux64~60_combout\ : std_logic;
SIGNAL \Mux146~3_combout\ : std_logic;
SIGNAL \Mux146~4_combout\ : std_logic;
SIGNAL \res~2_combout\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Mux146~0_combout\ : std_logic;
SIGNAL \Mux146~5_combout\ : std_logic;
SIGNAL \Mux64~69_combout\ : std_logic;
SIGNAL \Mux150~3_combout\ : std_logic;
SIGNAL \Mux128~68_combout\ : std_logic;
SIGNAL \Mux150~1_combout\ : std_logic;
SIGNAL \Mux150~2_combout\ : std_logic;
SIGNAL \Mux150~4_combout\ : std_logic;
SIGNAL \res~6_combout\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Mux150~0_combout\ : std_logic;
SIGNAL \Mux150~5_combout\ : std_logic;
SIGNAL \Mux149~1_combout\ : std_logic;
SIGNAL \Mux149~2_combout\ : std_logic;
SIGNAL \Mux149~3_combout\ : std_logic;
SIGNAL \Mux149~4_combout\ : std_logic;
SIGNAL \res~5_combout\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Mux149~0_combout\ : std_logic;
SIGNAL \Mux149~5_combout\ : std_logic;
SIGNAL \Mux147~1_combout\ : std_logic;
SIGNAL \Mux147~2_combout\ : std_logic;
SIGNAL \Mux147~3_combout\ : std_logic;
SIGNAL \Mux147~4_combout\ : std_logic;
SIGNAL \res~3_combout\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Mux147~0_combout\ : std_logic;
SIGNAL \Mux147~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Mux128~75_combout\ : std_logic;
SIGNAL \Mux128~76_combout\ : std_logic;
SIGNAL \Mux65~21_combout\ : std_logic;
SIGNAL \Mux152~5_combout\ : std_logic;
SIGNAL \Mux152~6_combout\ : std_logic;
SIGNAL \Mux1~21_combout\ : std_logic;
SIGNAL \Mux152~7_combout\ : std_logic;
SIGNAL \Mux64~76_combout\ : std_logic;
SIGNAL \Mux64~77_combout\ : std_logic;
SIGNAL \Mux152~8_combout\ : std_logic;
SIGNAL \res~8_combout\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Mux152~4_combout\ : std_logic;
SIGNAL \Mux152~9_combout\ : std_logic;
SIGNAL \res~10_combout\ : std_logic;
SIGNAL \Mux1~25_combout\ : std_logic;
SIGNAL \Mux1~23_combout\ : std_logic;
SIGNAL \Mux154~3_combout\ : std_logic;
SIGNAL \Mux128~78_combout\ : std_logic;
SIGNAL \Mux65~23_combout\ : std_logic;
SIGNAL \Mux65~25_combout\ : std_logic;
SIGNAL \Mux154~1_combout\ : std_logic;
SIGNAL \Mux128~77_combout\ : std_logic;
SIGNAL \Mux154~2_combout\ : std_logic;
SIGNAL \Mux64~78_combout\ : std_logic;
SIGNAL \Mux64~79_combout\ : std_logic;
SIGNAL \Mux154~4_combout\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Mux154~0_combout\ : std_logic;
SIGNAL \Mux154~5_combout\ : std_logic;
SIGNAL \Mux157~3_combout\ : std_logic;
SIGNAL \Mux96~1_combout\ : std_logic;
SIGNAL \Mux128~80_combout\ : std_logic;
SIGNAL \Mux157~0_combout\ : std_logic;
SIGNAL \Mux65~28_combout\ : std_logic;
SIGNAL \Mux65~30_combout\ : std_logic;
SIGNAL \Mux65~32_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux157~1_combout\ : std_logic;
SIGNAL \Mux1~29_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux64~81_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux157~4_combout\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Mux157~2_combout\ : std_logic;
SIGNAL \Mux157~5_combout\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Mux153~0_combout\ : std_logic;
SIGNAL \Mux153~3_combout\ : std_logic;
SIGNAL \Mux153~1_combout\ : std_logic;
SIGNAL \Mux153~2_combout\ : std_logic;
SIGNAL \Mux153~4_combout\ : std_logic;
SIGNAL \res~9_combout\ : std_logic;
SIGNAL \Mux153~5_combout\ : std_logic;
SIGNAL \Mux128~79_combout\ : std_logic;
SIGNAL \Mux155~1_combout\ : std_logic;
SIGNAL \Mux155~5_combout\ : std_logic;
SIGNAL \Mux64~80_combout\ : std_logic;
SIGNAL \Mux155~2_combout\ : std_logic;
SIGNAL \Mux155~3_combout\ : std_logic;
SIGNAL \res~11_combout\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Mux155~0_combout\ : std_logic;
SIGNAL \Mux155~4_combout\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Mux156~0_combout\ : std_logic;
SIGNAL \Mux156~1_combout\ : std_logic;
SIGNAL \Mux156~3_combout\ : std_logic;
SIGNAL \Mux156~4_combout\ : std_logic;
SIGNAL \Mux156~5_combout\ : std_logic;
SIGNAL \res~12_combout\ : std_logic;
SIGNAL \Mux156~6_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Mux65~8_combout\ : std_logic;
SIGNAL \Mux139~2_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux139~3_combout\ : std_logic;
SIGNAL \Mux139~1_combout\ : std_logic;
SIGNAL \Mux139~4_combout\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Mux139~5_combout\ : std_logic;
SIGNAL \Mux128~16_combout\ : std_logic;
SIGNAL \Mux128~29_combout\ : std_logic;
SIGNAL \Mux64~16_combout\ : std_logic;
SIGNAL \Mux64~29_combout\ : std_logic;
SIGNAL \Mux139~0_combout\ : std_logic;
SIGNAL \Mux139~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux138~3_combout\ : std_logic;
SIGNAL \Mux138~1_combout\ : std_logic;
SIGNAL \Mux65~7_combout\ : std_logic;
SIGNAL \Mux138~2_combout\ : std_logic;
SIGNAL \Mux138~4_combout\ : std_logic;
SIGNAL \Mux128~14_combout\ : std_logic;
SIGNAL \Mux128~27_combout\ : std_logic;
SIGNAL \Mux64~14_combout\ : std_logic;
SIGNAL \Mux64~27_combout\ : std_logic;
SIGNAL \Mux138~0_combout\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Mux138~5_combout\ : std_logic;
SIGNAL \Mux138~6_combout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mux135~1_combout\ : std_logic;
SIGNAL \Mux135~2_combout\ : std_logic;
SIGNAL \Mux64~12_combout\ : std_logic;
SIGNAL \Mux64~3_combout\ : std_logic;
SIGNAL \Mux64~21_combout\ : std_logic;
SIGNAL \Mux128~10_combout\ : std_logic;
SIGNAL \Mux128~23_combout\ : std_logic;
SIGNAL \Mux64~10_combout\ : std_logic;
SIGNAL \Mux64~23_combout\ : std_logic;
SIGNAL \Mux128~12_combout\ : std_logic;
SIGNAL \Mux128~3_combout\ : std_logic;
SIGNAL \Mux128~21_combout\ : std_logic;
SIGNAL \Mux135~0_combout\ : std_logic;
SIGNAL \Mux65~6_combout\ : std_logic;
SIGNAL \Mux65~5_combout\ : std_logic;
SIGNAL \Mux65~4_combout\ : std_logic;
SIGNAL \Mux135~3_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux135~4_combout\ : std_logic;
SIGNAL \Mux135~5_combout\ : std_logic;
SIGNAL \Mux135~6_combout\ : std_logic;
SIGNAL \Mux134~2_combout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Mux134~1_combout\ : std_logic;
SIGNAL \Mux64~8_combout\ : std_logic;
SIGNAL \Mux64~19_combout\ : std_logic;
SIGNAL \Mux128~8_combout\ : std_logic;
SIGNAL \Mux128~19_combout\ : std_logic;
SIGNAL \Mux134~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux134~4_combout\ : std_logic;
SIGNAL \Mux65~3_combout\ : std_logic;
SIGNAL \Mux134~3_combout\ : std_logic;
SIGNAL \Mux134~5_combout\ : std_logic;
SIGNAL \Mux134~6_combout\ : std_logic;
SIGNAL \Mux136~1_combout\ : std_logic;
SIGNAL \Mux136~2_combout\ : std_logic;
SIGNAL \Mux136~3_combout\ : std_logic;
SIGNAL \Mux136~4_combout\ : std_logic;
SIGNAL \Mux64~25_combout\ : std_logic;
SIGNAL \Mux128~25_combout\ : std_logic;
SIGNAL \Mux136~0_combout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Mux136~5_combout\ : std_logic;
SIGNAL \Mux136~6_combout\ : std_logic;
SIGNAL \Mux137~0_combout\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Mux137~5_combout\ : std_logic;
SIGNAL \Mux137~3_combout\ : std_logic;
SIGNAL \Mux137~1_combout\ : std_logic;
SIGNAL \Mux137~2_combout\ : std_logic;
SIGNAL \Mux137~4_combout\ : std_logic;
SIGNAL \Mux137~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mux64~1_combout\ : std_logic;
SIGNAL \Mux64~2_combout\ : std_logic;
SIGNAL \Mux64~13_combout\ : std_logic;
SIGNAL \Mux64~6_combout\ : std_logic;
SIGNAL \Mux64~15_combout\ : std_logic;
SIGNAL \Mux128~1_combout\ : std_logic;
SIGNAL \Mux128~2_combout\ : std_logic;
SIGNAL \Mux128~13_combout\ : std_logic;
SIGNAL \Mux128~6_combout\ : std_logic;
SIGNAL \Mux128~15_combout\ : std_logic;
SIGNAL \Mux131~0_combout\ : std_logic;
SIGNAL \Mux131~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux131~4_combout\ : std_logic;
SIGNAL \Mux65~1_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux65~2_combout\ : std_logic;
SIGNAL \Mux131~3_combout\ : std_logic;
SIGNAL \Mux131~5_combout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mux131~1_combout\ : std_logic;
SIGNAL \Mux131~6_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux129~5_combout\ : std_logic;
SIGNAL \Mux129~0_combout\ : std_logic;
SIGNAL \Mux129~3_combout\ : std_logic;
SIGNAL \Mux64~7_combout\ : std_logic;
SIGNAL \Mux64~11_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux64~4_combout\ : std_logic;
SIGNAL \Mux129~1_combout\ : std_logic;
SIGNAL \Mux128~7_combout\ : std_logic;
SIGNAL \Mux128~11_combout\ : std_logic;
SIGNAL \Mux128~0_combout\ : std_logic;
SIGNAL \Mux128~4_combout\ : std_logic;
SIGNAL \Mux129~2_combout\ : std_logic;
SIGNAL \Mux129~4_combout\ : std_logic;
SIGNAL \Mux130~2_combout\ : std_logic;
SIGNAL \Mux130~0_combout\ : std_logic;
SIGNAL \Mux130~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Mux94~0_combout\ : std_logic;
SIGNAL \Mux130~5_combout\ : std_logic;
SIGNAL \Mux130~3_combout\ : std_logic;
SIGNAL \Mux130~4_combout\ : std_logic;
SIGNAL \Mux133~3_combout\ : std_logic;
SIGNAL \Mux133~2_combout\ : std_logic;
SIGNAL \Mux133~4_combout\ : std_logic;
SIGNAL \Mux133~5_combout\ : std_logic;
SIGNAL \Mux128~17_combout\ : std_logic;
SIGNAL \Mux64~17_combout\ : std_logic;
SIGNAL \Mux133~0_combout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Mux133~1_combout\ : std_logic;
SIGNAL \Mux133~6_combout\ : std_logic;
SIGNAL \Mux128~5_combout\ : std_logic;
SIGNAL \Mux128~9_combout\ : std_logic;
SIGNAL \Mux64~5_combout\ : std_logic;
SIGNAL \Mux64~9_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \LessThan0~32_combout\ : std_logic;
SIGNAL \LessThan0~31_combout\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \LessThan0~29_combout\ : std_logic;
SIGNAL \LessThan0~33_combout\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \LessThan0~25_combout\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \LessThan0~27_combout\ : std_logic;
SIGNAL \LessThan0~28_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~22_combout\ : std_logic;
SIGNAL \LessThan0~21_combout\ : std_logic;
SIGNAL \LessThan0~23_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \LessThan0~24_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \LessThan0~34_combout\ : std_logic;
SIGNAL \LessThan0~35_combout\ : std_logic;
SIGNAL \LessThan0~36_combout\ : std_logic;
SIGNAL \LessThan0~37_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux132~2_combout\ : std_logic;
SIGNAL \Mux132~3_combout\ : std_logic;
SIGNAL \Mux132~4_combout\ : std_logic;
SIGNAL \Mux132~5_combout\ : std_logic;
SIGNAL \Mux132~0_combout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Mux132~1_combout\ : std_logic;
SIGNAL \Mux132~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL res : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_aluControl[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_aluControl[0]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_inputA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_aluControl[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_aluControl[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[0]~input_o\ : std_logic;
SIGNAL ALT_INV_res : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Mux159~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux159~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~35_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~34_combout\ : std_logic;
SIGNAL \ALT_INV_Mux159~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux159~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~35_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux158~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~34_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux157~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux67~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~6_combout\ : std_logic;
SIGNAL \ALT_INV_res~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~81_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~80_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux156~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~4_combout\ : std_logic;
SIGNAL \ALT_INV_res~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~80_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~79_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~5_combout\ : std_logic;
SIGNAL \ALT_INV_res~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~79_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~78_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux154~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~5_combout\ : std_logic;
SIGNAL \ALT_INV_res~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~78_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~77_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux153~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~9_combout\ : std_logic;
SIGNAL \ALT_INV_res~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~77_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~76_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~76_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~75_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~5_combout\ : std_logic;
SIGNAL \ALT_INV_res~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~75_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~74_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~73_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~74_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~73_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~72_combout\ : std_logic;
SIGNAL \ALT_INV_Mux151~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~5_combout\ : std_logic;
SIGNAL \ALT_INV_res~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~72_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~71_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~70_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~71_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~70_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~69_combout\ : std_logic;
SIGNAL \ALT_INV_Mux150~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~5_combout\ : std_logic;
SIGNAL \ALT_INV_res~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~69_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~68_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~67_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~68_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~67_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~66_combout\ : std_logic;
SIGNAL \ALT_INV_Mux149~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~5_combout\ : std_logic;
SIGNAL \ALT_INV_res~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~66_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~65_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~64_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~65_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~64_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~63_combout\ : std_logic;
SIGNAL \ALT_INV_Mux148~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~5_combout\ : std_logic;
SIGNAL \ALT_INV_res~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~63_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~62_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~61_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~62_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~61_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~60_combout\ : std_logic;
SIGNAL \ALT_INV_Mux147~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~5_combout\ : std_logic;
SIGNAL \ALT_INV_res~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~60_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~59_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~58_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~59_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~58_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~57_combout\ : std_logic;
SIGNAL \ALT_INV_Mux146~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~5_combout\ : std_logic;
SIGNAL \ALT_INV_res~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~57_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~56_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~55_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~56_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~55_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~54_combout\ : std_logic;
SIGNAL \ALT_INV_Mux145~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~2_combout\ : std_logic;
SIGNAL \ALT_INV_res~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux152~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~54_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~53_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~52_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~53_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~52_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~51_combout\ : std_logic;
SIGNAL \ALT_INV_Mux144~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~50_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~51_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~50_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~48_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~47_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~48_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~47_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~46_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~45_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~44_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~46_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~45_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~44_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~43_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux142~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~43_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~41_combout\ : std_logic;
SIGNAL \ALT_INV_Mux141~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux141~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux141~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~39_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~41_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux141~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux141~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux141~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~39_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~38_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux141~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~38_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux140~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux140~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux140~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~35_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~34_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~35_combout\ : std_logic;
SIGNAL \ALT_INV_Mux140~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux140~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux140~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~34_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux140~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux139~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux139~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux139~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux139~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux139~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux139~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux137~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux137~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux137~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux137~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux137~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux137~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux136~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux136~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux136~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux136~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux136~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux136~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux135~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux135~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux135~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux135~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux135~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux135~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux135~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux134~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux134~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux134~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux134~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux134~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux134~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux134~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux133~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux133~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux133~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux133~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux133~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux133~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux133~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux132~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux132~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux132~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux132~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux132~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux132~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux132~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux131~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux131~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux131~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux131~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux131~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux131~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux131~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux143~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux130~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux130~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux94~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux130~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux130~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux130~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux129~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux129~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux95~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux129~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux129~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux129~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux160~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~37_combout\ : std_logic;
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
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux128~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux129~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux130~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux136~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux137~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux138~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux139~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~45_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~45_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~41_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~41_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux155~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux159~4_combout\ : std_logic;
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
\ALT_INV_aluControl[2]~input_o\ <= NOT \aluControl[2]~input_o\;
\ALT_INV_aluControl[0]~input_o\ <= NOT \aluControl[0]~input_o\;
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
\ALT_INV_inputA[8]~input_o\ <= NOT \inputA[8]~input_o\;
\ALT_INV_inputA[10]~input_o\ <= NOT \inputA[10]~input_o\;
\ALT_INV_inputA[9]~input_o\ <= NOT \inputA[9]~input_o\;
\ALT_INV_inputA[11]~input_o\ <= NOT \inputA[11]~input_o\;
\ALT_INV_inputA[12]~input_o\ <= NOT \inputA[12]~input_o\;
\ALT_INV_inputA[13]~input_o\ <= NOT \inputA[13]~input_o\;
\ALT_INV_inputA[14]~input_o\ <= NOT \inputA[14]~input_o\;
\ALT_INV_inputA[5]~input_o\ <= NOT \inputA[5]~input_o\;
\ALT_INV_inputA[6]~input_o\ <= NOT \inputA[6]~input_o\;
\ALT_INV_inputA[7]~input_o\ <= NOT \inputA[7]~input_o\;
\ALT_INV_inputB[30]~input_o\ <= NOT \inputB[30]~input_o\;
\ALT_INV_inputB[14]~input_o\ <= NOT \inputB[14]~input_o\;
\ALT_INV_inputB[22]~input_o\ <= NOT \inputB[22]~input_o\;
\ALT_INV_inputB[6]~input_o\ <= NOT \inputB[6]~input_o\;
\ALT_INV_inputB[26]~input_o\ <= NOT \inputB[26]~input_o\;
\ALT_INV_inputB[10]~input_o\ <= NOT \inputB[10]~input_o\;
\ALT_INV_inputB[18]~input_o\ <= NOT \inputB[18]~input_o\;
\ALT_INV_inputB[2]~input_o\ <= NOT \inputB[2]~input_o\;
\ALT_INV_inputB[28]~input_o\ <= NOT \inputB[28]~input_o\;
\ALT_INV_inputB[12]~input_o\ <= NOT \inputB[12]~input_o\;
\ALT_INV_inputB[20]~input_o\ <= NOT \inputB[20]~input_o\;
\ALT_INV_inputB[4]~input_o\ <= NOT \inputB[4]~input_o\;
\ALT_INV_inputB[24]~input_o\ <= NOT \inputB[24]~input_o\;
\ALT_INV_inputB[8]~input_o\ <= NOT \inputB[8]~input_o\;
\ALT_INV_inputB[16]~input_o\ <= NOT \inputB[16]~input_o\;
\ALT_INV_inputB[31]~input_o\ <= NOT \inputB[31]~input_o\;
\ALT_INV_inputB[15]~input_o\ <= NOT \inputB[15]~input_o\;
\ALT_INV_inputB[23]~input_o\ <= NOT \inputB[23]~input_o\;
\ALT_INV_inputB[7]~input_o\ <= NOT \inputB[7]~input_o\;
\ALT_INV_inputB[27]~input_o\ <= NOT \inputB[27]~input_o\;
\ALT_INV_inputB[11]~input_o\ <= NOT \inputB[11]~input_o\;
\ALT_INV_inputB[19]~input_o\ <= NOT \inputB[19]~input_o\;
\ALT_INV_inputB[3]~input_o\ <= NOT \inputB[3]~input_o\;
\ALT_INV_inputB[29]~input_o\ <= NOT \inputB[29]~input_o\;
\ALT_INV_inputB[13]~input_o\ <= NOT \inputB[13]~input_o\;
\ALT_INV_inputB[21]~input_o\ <= NOT \inputB[21]~input_o\;
\ALT_INV_inputB[5]~input_o\ <= NOT \inputB[5]~input_o\;
\ALT_INV_inputB[25]~input_o\ <= NOT \inputB[25]~input_o\;
\ALT_INV_inputB[9]~input_o\ <= NOT \inputB[9]~input_o\;
\ALT_INV_inputB[17]~input_o\ <= NOT \inputB[17]~input_o\;
\ALT_INV_inputB[1]~input_o\ <= NOT \inputB[1]~input_o\;
\ALT_INV_aluControl[1]~input_o\ <= NOT \aluControl[1]~input_o\;
\ALT_INV_aluControl[3]~input_o\ <= NOT \aluControl[3]~input_o\;
\ALT_INV_inputA[4]~input_o\ <= NOT \inputA[4]~input_o\;
\ALT_INV_inputA[3]~input_o\ <= NOT \inputA[3]~input_o\;
\ALT_INV_inputA[2]~input_o\ <= NOT \inputA[2]~input_o\;
\ALT_INV_inputA[1]~input_o\ <= NOT \inputA[1]~input_o\;
\ALT_INV_shamt[4]~input_o\ <= NOT \shamt[4]~input_o\;
\ALT_INV_shamt[3]~input_o\ <= NOT \shamt[3]~input_o\;
\ALT_INV_shamt[2]~input_o\ <= NOT \shamt[2]~input_o\;
\ALT_INV_shamt[1]~input_o\ <= NOT \shamt[1]~input_o\;
\ALT_INV_shamt[0]~input_o\ <= NOT \shamt[0]~input_o\;
\ALT_INV_inputB[0]~input_o\ <= NOT \inputB[0]~input_o\;
\ALT_INV_inputA[0]~input_o\ <= NOT \inputA[0]~input_o\;
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
ALT_INV_res(13) <= NOT res(13);
ALT_INV_res(12) <= NOT res(12);
ALT_INV_res(11) <= NOT res(11);
ALT_INV_res(10) <= NOT res(10);
ALT_INV_res(9) <= NOT res(9);
ALT_INV_res(8) <= NOT res(8);
ALT_INV_res(7) <= NOT res(7);
ALT_INV_res(6) <= NOT res(6);
ALT_INV_res(5) <= NOT res(5);
ALT_INV_res(4) <= NOT res(4);
ALT_INV_res(3) <= NOT res(3);
ALT_INV_res(2) <= NOT res(2);
ALT_INV_res(1) <= NOT res(1);
ALT_INV_res(0) <= NOT res(0);
\ALT_INV_Mux159~3_combout\ <= NOT \Mux159~3_combout\;
\ALT_INV_Mux159~2_combout\ <= NOT \Mux159~2_combout\;
\ALT_INV_Mux1~36_combout\ <= NOT \Mux1~36_combout\;
\ALT_INV_Mux1~35_combout\ <= NOT \Mux1~35_combout\;
\ALT_INV_Mux1~34_combout\ <= NOT \Mux1~34_combout\;
\ALT_INV_Mux159~1_combout\ <= NOT \Mux159~1_combout\;
\ALT_INV_Mux159~0_combout\ <= NOT \Mux159~0_combout\;
\ALT_INV_Mux65~36_combout\ <= NOT \Mux65~36_combout\;
\ALT_INV_Mux65~35_combout\ <= NOT \Mux65~35_combout\;
\ALT_INV_Mux158~6_combout\ <= NOT \Mux158~6_combout\;
\ALT_INV_Mux158~5_combout\ <= NOT \Mux158~5_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux1~33_combout\ <= NOT \Mux1~33_combout\;
\ALT_INV_Mux1~32_combout\ <= NOT \Mux1~32_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux158~4_combout\ <= NOT \Mux158~4_combout\;
\ALT_INV_Mux158~3_combout\ <= NOT \Mux158~3_combout\;
\ALT_INV_Mux158~2_combout\ <= NOT \Mux158~2_combout\;
\ALT_INV_Mux158~1_combout\ <= NOT \Mux158~1_combout\;
\ALT_INV_Mux158~0_combout\ <= NOT \Mux158~0_combout\;
\ALT_INV_Mux65~34_combout\ <= NOT \Mux65~34_combout\;
\ALT_INV_Mux65~33_combout\ <= NOT \Mux65~33_combout\;
\ALT_INV_Mux157~5_combout\ <= NOT \Mux157~5_combout\;
\ALT_INV_Mux157~4_combout\ <= NOT \Mux157~4_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux1~31_combout\ <= NOT \Mux1~31_combout\;
\ALT_INV_Mux1~30_combout\ <= NOT \Mux1~30_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_Mux157~3_combout\ <= NOT \Mux157~3_combout\;
\ALT_INV_Mux157~2_combout\ <= NOT \Mux157~2_combout\;
\ALT_INV_Mux157~1_combout\ <= NOT \Mux157~1_combout\;
\ALT_INV_Mux157~0_combout\ <= NOT \Mux157~0_combout\;
\ALT_INV_Mux67~0_combout\ <= NOT \Mux67~0_combout\;
\ALT_INV_Mux65~32_combout\ <= NOT \Mux65~32_combout\;
\ALT_INV_Mux65~31_combout\ <= NOT \Mux65~31_combout\;
\ALT_INV_Mux156~6_combout\ <= NOT \Mux156~6_combout\;
\ALT_INV_res~12_combout\ <= NOT \res~12_combout\;
\ALT_INV_Mux156~5_combout\ <= NOT \Mux156~5_combout\;
\ALT_INV_Mux64~81_combout\ <= NOT \Mux64~81_combout\;
\ALT_INV_Mux156~4_combout\ <= NOT \Mux156~4_combout\;
\ALT_INV_Mux1~29_combout\ <= NOT \Mux1~29_combout\;
\ALT_INV_Mux1~28_combout\ <= NOT \Mux1~28_combout\;
\ALT_INV_Mux156~3_combout\ <= NOT \Mux156~3_combout\;
\ALT_INV_Mux156~2_combout\ <= NOT \Mux156~2_combout\;
\ALT_INV_Mux128~80_combout\ <= NOT \Mux128~80_combout\;
\ALT_INV_Mux156~1_combout\ <= NOT \Mux156~1_combout\;
\ALT_INV_Mux65~30_combout\ <= NOT \Mux65~30_combout\;
\ALT_INV_Mux65~29_combout\ <= NOT \Mux65~29_combout\;
\ALT_INV_Mux156~0_combout\ <= NOT \Mux156~0_combout\;
\ALT_INV_Mux155~4_combout\ <= NOT \Mux155~4_combout\;
\ALT_INV_res~11_combout\ <= NOT \res~11_combout\;
\ALT_INV_Mux155~3_combout\ <= NOT \Mux155~3_combout\;
\ALT_INV_Mux64~80_combout\ <= NOT \Mux64~80_combout\;
\ALT_INV_Mux155~2_combout\ <= NOT \Mux155~2_combout\;
\ALT_INV_Mux1~27_combout\ <= NOT \Mux1~27_combout\;
\ALT_INV_Mux1~26_combout\ <= NOT \Mux1~26_combout\;
\ALT_INV_Mux128~79_combout\ <= NOT \Mux128~79_combout\;
\ALT_INV_Mux96~1_combout\ <= NOT \Mux96~1_combout\;
\ALT_INV_Mux155~1_combout\ <= NOT \Mux155~1_combout\;
\ALT_INV_Mux65~28_combout\ <= NOT \Mux65~28_combout\;
\ALT_INV_Mux65~27_combout\ <= NOT \Mux65~27_combout\;
\ALT_INV_Mux65~26_combout\ <= NOT \Mux65~26_combout\;
\ALT_INV_Mux155~0_combout\ <= NOT \Mux155~0_combout\;
\ALT_INV_Mux154~5_combout\ <= NOT \Mux154~5_combout\;
\ALT_INV_res~10_combout\ <= NOT \res~10_combout\;
\ALT_INV_Mux154~4_combout\ <= NOT \Mux154~4_combout\;
\ALT_INV_Mux64~79_combout\ <= NOT \Mux64~79_combout\;
\ALT_INV_Mux154~3_combout\ <= NOT \Mux154~3_combout\;
\ALT_INV_Mux1~25_combout\ <= NOT \Mux1~25_combout\;
\ALT_INV_Mux1~24_combout\ <= NOT \Mux1~24_combout\;
\ALT_INV_Mux154~2_combout\ <= NOT \Mux154~2_combout\;
\ALT_INV_Mux128~78_combout\ <= NOT \Mux128~78_combout\;
\ALT_INV_Mux154~1_combout\ <= NOT \Mux154~1_combout\;
\ALT_INV_Mux65~25_combout\ <= NOT \Mux65~25_combout\;
\ALT_INV_Mux65~24_combout\ <= NOT \Mux65~24_combout\;
\ALT_INV_Mux154~0_combout\ <= NOT \Mux154~0_combout\;
\ALT_INV_Mux153~5_combout\ <= NOT \Mux153~5_combout\;
\ALT_INV_res~9_combout\ <= NOT \res~9_combout\;
\ALT_INV_Mux153~4_combout\ <= NOT \Mux153~4_combout\;
\ALT_INV_Mux64~78_combout\ <= NOT \Mux64~78_combout\;
\ALT_INV_Mux153~3_combout\ <= NOT \Mux153~3_combout\;
\ALT_INV_Mux1~23_combout\ <= NOT \Mux1~23_combout\;
\ALT_INV_Mux1~22_combout\ <= NOT \Mux1~22_combout\;
\ALT_INV_Mux153~2_combout\ <= NOT \Mux153~2_combout\;
\ALT_INV_Mux128~77_combout\ <= NOT \Mux128~77_combout\;
\ALT_INV_Mux153~1_combout\ <= NOT \Mux153~1_combout\;
\ALT_INV_Mux65~23_combout\ <= NOT \Mux65~23_combout\;
\ALT_INV_Mux65~22_combout\ <= NOT \Mux65~22_combout\;
\ALT_INV_Mux153~0_combout\ <= NOT \Mux153~0_combout\;
\ALT_INV_Mux152~9_combout\ <= NOT \Mux152~9_combout\;
\ALT_INV_res~8_combout\ <= NOT \res~8_combout\;
\ALT_INV_Mux152~8_combout\ <= NOT \Mux152~8_combout\;
\ALT_INV_Mux64~77_combout\ <= NOT \Mux64~77_combout\;
\ALT_INV_Mux64~76_combout\ <= NOT \Mux64~76_combout\;
\ALT_INV_Mux152~7_combout\ <= NOT \Mux152~7_combout\;
\ALT_INV_Mux1~21_combout\ <= NOT \Mux1~21_combout\;
\ALT_INV_Mux1~20_combout\ <= NOT \Mux1~20_combout\;
\ALT_INV_Mux152~6_combout\ <= NOT \Mux152~6_combout\;
\ALT_INV_Mux128~76_combout\ <= NOT \Mux128~76_combout\;
\ALT_INV_Mux128~75_combout\ <= NOT \Mux128~75_combout\;
\ALT_INV_Mux152~5_combout\ <= NOT \Mux152~5_combout\;
\ALT_INV_Mux65~21_combout\ <= NOT \Mux65~21_combout\;
\ALT_INV_Mux65~20_combout\ <= NOT \Mux65~20_combout\;
\ALT_INV_Mux152~4_combout\ <= NOT \Mux152~4_combout\;
\ALT_INV_Mux151~5_combout\ <= NOT \Mux151~5_combout\;
\ALT_INV_res~7_combout\ <= NOT \res~7_combout\;
\ALT_INV_Mux151~4_combout\ <= NOT \Mux151~4_combout\;
\ALT_INV_Mux64~75_combout\ <= NOT \Mux64~75_combout\;
\ALT_INV_Mux64~74_combout\ <= NOT \Mux64~74_combout\;
\ALT_INV_Mux151~3_combout\ <= NOT \Mux151~3_combout\;
\ALT_INV_Mux1~19_combout\ <= NOT \Mux1~19_combout\;
\ALT_INV_Mux64~73_combout\ <= NOT \Mux64~73_combout\;
\ALT_INV_Mux151~2_combout\ <= NOT \Mux151~2_combout\;
\ALT_INV_Mux128~74_combout\ <= NOT \Mux128~74_combout\;
\ALT_INV_Mux128~73_combout\ <= NOT \Mux128~73_combout\;
\ALT_INV_Mux151~1_combout\ <= NOT \Mux151~1_combout\;
\ALT_INV_Mux65~19_combout\ <= NOT \Mux65~19_combout\;
\ALT_INV_Mux128~72_combout\ <= NOT \Mux128~72_combout\;
\ALT_INV_Mux151~0_combout\ <= NOT \Mux151~0_combout\;
\ALT_INV_Mux150~5_combout\ <= NOT \Mux150~5_combout\;
\ALT_INV_res~6_combout\ <= NOT \res~6_combout\;
\ALT_INV_Mux150~4_combout\ <= NOT \Mux150~4_combout\;
\ALT_INV_Mux64~72_combout\ <= NOT \Mux64~72_combout\;
\ALT_INV_Mux64~71_combout\ <= NOT \Mux64~71_combout\;
\ALT_INV_Mux150~3_combout\ <= NOT \Mux150~3_combout\;
\ALT_INV_Mux1~18_combout\ <= NOT \Mux1~18_combout\;
\ALT_INV_Mux64~70_combout\ <= NOT \Mux64~70_combout\;
\ALT_INV_Mux150~2_combout\ <= NOT \Mux150~2_combout\;
\ALT_INV_Mux128~71_combout\ <= NOT \Mux128~71_combout\;
\ALT_INV_Mux128~70_combout\ <= NOT \Mux128~70_combout\;
\ALT_INV_Mux150~1_combout\ <= NOT \Mux150~1_combout\;
\ALT_INV_Mux65~18_combout\ <= NOT \Mux65~18_combout\;
\ALT_INV_Mux128~69_combout\ <= NOT \Mux128~69_combout\;
\ALT_INV_Mux150~0_combout\ <= NOT \Mux150~0_combout\;
\ALT_INV_Mux149~5_combout\ <= NOT \Mux149~5_combout\;
\ALT_INV_res~5_combout\ <= NOT \res~5_combout\;
\ALT_INV_Mux149~4_combout\ <= NOT \Mux149~4_combout\;
\ALT_INV_Mux64~69_combout\ <= NOT \Mux64~69_combout\;
\ALT_INV_Mux64~68_combout\ <= NOT \Mux64~68_combout\;
\ALT_INV_Mux149~3_combout\ <= NOT \Mux149~3_combout\;
\ALT_INV_Mux1~17_combout\ <= NOT \Mux1~17_combout\;
\ALT_INV_Mux64~67_combout\ <= NOT \Mux64~67_combout\;
\ALT_INV_Mux149~2_combout\ <= NOT \Mux149~2_combout\;
\ALT_INV_Mux128~68_combout\ <= NOT \Mux128~68_combout\;
\ALT_INV_Mux128~67_combout\ <= NOT \Mux128~67_combout\;
\ALT_INV_Mux149~1_combout\ <= NOT \Mux149~1_combout\;
\ALT_INV_Mux65~17_combout\ <= NOT \Mux65~17_combout\;
\ALT_INV_Mux128~66_combout\ <= NOT \Mux128~66_combout\;
\ALT_INV_Mux149~0_combout\ <= NOT \Mux149~0_combout\;
\ALT_INV_Mux148~5_combout\ <= NOT \Mux148~5_combout\;
\ALT_INV_res~4_combout\ <= NOT \res~4_combout\;
\ALT_INV_Mux148~4_combout\ <= NOT \Mux148~4_combout\;
\ALT_INV_Mux64~66_combout\ <= NOT \Mux64~66_combout\;
\ALT_INV_Mux64~65_combout\ <= NOT \Mux64~65_combout\;
\ALT_INV_Mux148~3_combout\ <= NOT \Mux148~3_combout\;
\ALT_INV_Mux1~16_combout\ <= NOT \Mux1~16_combout\;
\ALT_INV_Mux64~64_combout\ <= NOT \Mux64~64_combout\;
\ALT_INV_Mux148~2_combout\ <= NOT \Mux148~2_combout\;
\ALT_INV_Mux128~65_combout\ <= NOT \Mux128~65_combout\;
\ALT_INV_Mux128~64_combout\ <= NOT \Mux128~64_combout\;
\ALT_INV_Mux148~1_combout\ <= NOT \Mux148~1_combout\;
\ALT_INV_Mux65~16_combout\ <= NOT \Mux65~16_combout\;
\ALT_INV_Mux128~63_combout\ <= NOT \Mux128~63_combout\;
\ALT_INV_Mux148~0_combout\ <= NOT \Mux148~0_combout\;
\ALT_INV_Mux147~5_combout\ <= NOT \Mux147~5_combout\;
\ALT_INV_res~3_combout\ <= NOT \res~3_combout\;
\ALT_INV_Mux147~4_combout\ <= NOT \Mux147~4_combout\;
\ALT_INV_Mux64~63_combout\ <= NOT \Mux64~63_combout\;
\ALT_INV_Mux64~62_combout\ <= NOT \Mux64~62_combout\;
\ALT_INV_Mux147~3_combout\ <= NOT \Mux147~3_combout\;
\ALT_INV_Mux1~15_combout\ <= NOT \Mux1~15_combout\;
\ALT_INV_Mux64~61_combout\ <= NOT \Mux64~61_combout\;
\ALT_INV_Mux147~2_combout\ <= NOT \Mux147~2_combout\;
\ALT_INV_Mux128~62_combout\ <= NOT \Mux128~62_combout\;
\ALT_INV_Mux128~61_combout\ <= NOT \Mux128~61_combout\;
\ALT_INV_Mux147~1_combout\ <= NOT \Mux147~1_combout\;
\ALT_INV_Mux65~15_combout\ <= NOT \Mux65~15_combout\;
\ALT_INV_Mux128~60_combout\ <= NOT \Mux128~60_combout\;
\ALT_INV_Mux147~0_combout\ <= NOT \Mux147~0_combout\;
\ALT_INV_Mux146~5_combout\ <= NOT \Mux146~5_combout\;
\ALT_INV_res~2_combout\ <= NOT \res~2_combout\;
\ALT_INV_Mux146~4_combout\ <= NOT \Mux146~4_combout\;
\ALT_INV_Mux64~60_combout\ <= NOT \Mux64~60_combout\;
\ALT_INV_Mux64~59_combout\ <= NOT \Mux64~59_combout\;
\ALT_INV_Mux146~3_combout\ <= NOT \Mux146~3_combout\;
\ALT_INV_Mux1~14_combout\ <= NOT \Mux1~14_combout\;
\ALT_INV_Mux64~58_combout\ <= NOT \Mux64~58_combout\;
\ALT_INV_Mux146~2_combout\ <= NOT \Mux146~2_combout\;
\ALT_INV_Mux128~59_combout\ <= NOT \Mux128~59_combout\;
\ALT_INV_Mux128~58_combout\ <= NOT \Mux128~58_combout\;
\ALT_INV_Mux146~1_combout\ <= NOT \Mux146~1_combout\;
\ALT_INV_Mux65~14_combout\ <= NOT \Mux65~14_combout\;
\ALT_INV_Mux128~57_combout\ <= NOT \Mux128~57_combout\;
\ALT_INV_Mux146~0_combout\ <= NOT \Mux146~0_combout\;
\ALT_INV_Mux145~5_combout\ <= NOT \Mux145~5_combout\;
\ALT_INV_res~1_combout\ <= NOT \res~1_combout\;
\ALT_INV_Mux145~4_combout\ <= NOT \Mux145~4_combout\;
\ALT_INV_Mux64~57_combout\ <= NOT \Mux64~57_combout\;
\ALT_INV_Mux64~56_combout\ <= NOT \Mux64~56_combout\;
\ALT_INV_Mux145~3_combout\ <= NOT \Mux145~3_combout\;
\ALT_INV_Mux1~13_combout\ <= NOT \Mux1~13_combout\;
\ALT_INV_Mux64~55_combout\ <= NOT \Mux64~55_combout\;
\ALT_INV_Mux145~2_combout\ <= NOT \Mux145~2_combout\;
\ALT_INV_Mux128~56_combout\ <= NOT \Mux128~56_combout\;
\ALT_INV_Mux128~55_combout\ <= NOT \Mux128~55_combout\;
\ALT_INV_Mux145~1_combout\ <= NOT \Mux145~1_combout\;
\ALT_INV_Mux65~13_combout\ <= NOT \Mux65~13_combout\;
\ALT_INV_Mux128~54_combout\ <= NOT \Mux128~54_combout\;
\ALT_INV_Mux145~0_combout\ <= NOT \Mux145~0_combout\;
\ALT_INV_Mux144~5_combout\ <= NOT \Mux144~5_combout\;
\ALT_INV_Mux152~3_combout\ <= NOT \Mux152~3_combout\;
\ALT_INV_Mux152~2_combout\ <= NOT \Mux152~2_combout\;
\ALT_INV_res~0_combout\ <= NOT \res~0_combout\;
\ALT_INV_Mux144~4_combout\ <= NOT \Mux144~4_combout\;
\ALT_INV_Mux152~1_combout\ <= NOT \Mux152~1_combout\;
\ALT_INV_Mux152~0_combout\ <= NOT \Mux152~0_combout\;
\ALT_INV_Mux64~54_combout\ <= NOT \Mux64~54_combout\;
\ALT_INV_Mux64~53_combout\ <= NOT \Mux64~53_combout\;
\ALT_INV_Mux144~3_combout\ <= NOT \Mux144~3_combout\;
\ALT_INV_Mux1~12_combout\ <= NOT \Mux1~12_combout\;
\ALT_INV_Mux64~52_combout\ <= NOT \Mux64~52_combout\;
\ALT_INV_Mux144~2_combout\ <= NOT \Mux144~2_combout\;
\ALT_INV_Mux128~53_combout\ <= NOT \Mux128~53_combout\;
\ALT_INV_Mux128~52_combout\ <= NOT \Mux128~52_combout\;
\ALT_INV_Mux144~1_combout\ <= NOT \Mux144~1_combout\;
\ALT_INV_Mux65~12_combout\ <= NOT \Mux65~12_combout\;
\ALT_INV_Mux128~51_combout\ <= NOT \Mux128~51_combout\;
\ALT_INV_Mux144~0_combout\ <= NOT \Mux144~0_combout\;
\ALT_INV_Mux143~9_combout\ <= NOT \Mux143~9_combout\;
\ALT_INV_Mux143~8_combout\ <= NOT \Mux143~8_combout\;
\ALT_INV_Mux143~7_combout\ <= NOT \Mux143~7_combout\;
\ALT_INV_Mux128~50_combout\ <= NOT \Mux128~50_combout\;
\ALT_INV_Mux128~49_combout\ <= NOT \Mux128~49_combout\;
\ALT_INV_Mux64~51_combout\ <= NOT \Mux64~51_combout\;
\ALT_INV_Mux64~50_combout\ <= NOT \Mux64~50_combout\;
\ALT_INV_Mux143~6_combout\ <= NOT \Mux143~6_combout\;
\ALT_INV_Mux143~5_combout\ <= NOT \Mux143~5_combout\;
\ALT_INV_Mux143~4_combout\ <= NOT \Mux143~4_combout\;
\ALT_INV_Mux64~49_combout\ <= NOT \Mux64~49_combout\;
\ALT_INV_Mux64~48_combout\ <= NOT \Mux64~48_combout\;
\ALT_INV_Mux64~47_combout\ <= NOT \Mux64~47_combout\;
\ALT_INV_Mux143~3_combout\ <= NOT \Mux143~3_combout\;
\ALT_INV_Mux128~48_combout\ <= NOT \Mux128~48_combout\;
\ALT_INV_Mux128~47_combout\ <= NOT \Mux128~47_combout\;
\ALT_INV_Mux128~46_combout\ <= NOT \Mux128~46_combout\;
\ALT_INV_Mux142~6_combout\ <= NOT \Mux142~6_combout\;
\ALT_INV_Mux142~5_combout\ <= NOT \Mux142~5_combout\;
\ALT_INV_Mux142~4_combout\ <= NOT \Mux142~4_combout\;
\ALT_INV_Mux128~45_combout\ <= NOT \Mux128~45_combout\;
\ALT_INV_Mux128~44_combout\ <= NOT \Mux128~44_combout\;
\ALT_INV_Mux64~46_combout\ <= NOT \Mux64~46_combout\;
\ALT_INV_Mux64~45_combout\ <= NOT \Mux64~45_combout\;
\ALT_INV_Mux142~3_combout\ <= NOT \Mux142~3_combout\;
\ALT_INV_Mux142~2_combout\ <= NOT \Mux142~2_combout\;
\ALT_INV_Mux142~1_combout\ <= NOT \Mux142~1_combout\;
\ALT_INV_Mux64~44_combout\ <= NOT \Mux64~44_combout\;
\ALT_INV_Mux64~43_combout\ <= NOT \Mux64~43_combout\;
\ALT_INV_Mux64~42_combout\ <= NOT \Mux64~42_combout\;
\ALT_INV_Mux142~0_combout\ <= NOT \Mux142~0_combout\;
\ALT_INV_Mux128~43_combout\ <= NOT \Mux128~43_combout\;
\ALT_INV_Mux128~42_combout\ <= NOT \Mux128~42_combout\;
\ALT_INV_Mux128~41_combout\ <= NOT \Mux128~41_combout\;
\ALT_INV_Mux141~6_combout\ <= NOT \Mux141~6_combout\;
\ALT_INV_Mux141~5_combout\ <= NOT \Mux141~5_combout\;
\ALT_INV_Mux141~4_combout\ <= NOT \Mux141~4_combout\;
\ALT_INV_Mux128~40_combout\ <= NOT \Mux128~40_combout\;
\ALT_INV_Mux128~39_combout\ <= NOT \Mux128~39_combout\;
\ALT_INV_Mux64~41_combout\ <= NOT \Mux64~41_combout\;
\ALT_INV_Mux64~40_combout\ <= NOT \Mux64~40_combout\;
\ALT_INV_Mux141~3_combout\ <= NOT \Mux141~3_combout\;
\ALT_INV_Mux141~2_combout\ <= NOT \Mux141~2_combout\;
\ALT_INV_Mux141~1_combout\ <= NOT \Mux141~1_combout\;
\ALT_INV_Mux64~39_combout\ <= NOT \Mux64~39_combout\;
\ALT_INV_Mux64~38_combout\ <= NOT \Mux64~38_combout\;
\ALT_INV_Mux64~37_combout\ <= NOT \Mux64~37_combout\;
\ALT_INV_Mux141~0_combout\ <= NOT \Mux141~0_combout\;
\ALT_INV_Mux128~38_combout\ <= NOT \Mux128~38_combout\;
\ALT_INV_Mux128~37_combout\ <= NOT \Mux128~37_combout\;
\ALT_INV_Mux128~36_combout\ <= NOT \Mux128~36_combout\;
\ALT_INV_Mux140~6_combout\ <= NOT \Mux140~6_combout\;
\ALT_INV_Mux140~5_combout\ <= NOT \Mux140~5_combout\;
\ALT_INV_Mux140~4_combout\ <= NOT \Mux140~4_combout\;
\ALT_INV_Mux128~35_combout\ <= NOT \Mux128~35_combout\;
\ALT_INV_Mux128~34_combout\ <= NOT \Mux128~34_combout\;
\ALT_INV_Mux64~36_combout\ <= NOT \Mux64~36_combout\;
\ALT_INV_Mux64~35_combout\ <= NOT \Mux64~35_combout\;
\ALT_INV_Mux140~3_combout\ <= NOT \Mux140~3_combout\;
\ALT_INV_Mux140~2_combout\ <= NOT \Mux140~2_combout\;
\ALT_INV_Mux140~1_combout\ <= NOT \Mux140~1_combout\;
\ALT_INV_Mux64~34_combout\ <= NOT \Mux64~34_combout\;
\ALT_INV_Mux64~33_combout\ <= NOT \Mux64~33_combout\;
\ALT_INV_Mux64~32_combout\ <= NOT \Mux64~32_combout\;
\ALT_INV_Mux140~0_combout\ <= NOT \Mux140~0_combout\;
\ALT_INV_Mux128~33_combout\ <= NOT \Mux128~33_combout\;
\ALT_INV_Mux128~32_combout\ <= NOT \Mux128~32_combout\;
\ALT_INV_Mux139~5_combout\ <= NOT \Mux139~5_combout\;
\ALT_INV_Mux139~4_combout\ <= NOT \Mux139~4_combout\;
\ALT_INV_Mux139~3_combout\ <= NOT \Mux139~3_combout\;
\ALT_INV_Mux1~11_combout\ <= NOT \Mux1~11_combout\;
\ALT_INV_Mux139~2_combout\ <= NOT \Mux139~2_combout\;
\ALT_INV_Mux65~11_combout\ <= NOT \Mux65~11_combout\;
\ALT_INV_Mux139~1_combout\ <= NOT \Mux139~1_combout\;
\ALT_INV_Mux139~0_combout\ <= NOT \Mux139~0_combout\;
\ALT_INV_Mux128~31_combout\ <= NOT \Mux128~31_combout\;
\ALT_INV_Mux128~30_combout\ <= NOT \Mux128~30_combout\;
\ALT_INV_Mux64~31_combout\ <= NOT \Mux64~31_combout\;
\ALT_INV_Mux64~30_combout\ <= NOT \Mux64~30_combout\;
\ALT_INV_Mux138~5_combout\ <= NOT \Mux138~5_combout\;
\ALT_INV_Mux138~4_combout\ <= NOT \Mux138~4_combout\;
\ALT_INV_Mux138~3_combout\ <= NOT \Mux138~3_combout\;
\ALT_INV_Mux1~10_combout\ <= NOT \Mux1~10_combout\;
\ALT_INV_Mux138~2_combout\ <= NOT \Mux138~2_combout\;
\ALT_INV_Mux65~10_combout\ <= NOT \Mux65~10_combout\;
\ALT_INV_Mux138~1_combout\ <= NOT \Mux138~1_combout\;
\ALT_INV_Mux138~0_combout\ <= NOT \Mux138~0_combout\;
\ALT_INV_Mux128~29_combout\ <= NOT \Mux128~29_combout\;
\ALT_INV_Mux128~28_combout\ <= NOT \Mux128~28_combout\;
\ALT_INV_Mux64~29_combout\ <= NOT \Mux64~29_combout\;
\ALT_INV_Mux64~28_combout\ <= NOT \Mux64~28_combout\;
\ALT_INV_Mux137~5_combout\ <= NOT \Mux137~5_combout\;
\ALT_INV_Mux137~4_combout\ <= NOT \Mux137~4_combout\;
\ALT_INV_Mux137~3_combout\ <= NOT \Mux137~3_combout\;
\ALT_INV_Mux1~9_combout\ <= NOT \Mux1~9_combout\;
\ALT_INV_Mux137~2_combout\ <= NOT \Mux137~2_combout\;
\ALT_INV_Mux65~9_combout\ <= NOT \Mux65~9_combout\;
\ALT_INV_Mux137~1_combout\ <= NOT \Mux137~1_combout\;
\ALT_INV_Mux137~0_combout\ <= NOT \Mux137~0_combout\;
\ALT_INV_Mux128~27_combout\ <= NOT \Mux128~27_combout\;
\ALT_INV_Mux128~26_combout\ <= NOT \Mux128~26_combout\;
\ALT_INV_Mux64~27_combout\ <= NOT \Mux64~27_combout\;
\ALT_INV_Mux64~26_combout\ <= NOT \Mux64~26_combout\;
\ALT_INV_Mux136~5_combout\ <= NOT \Mux136~5_combout\;
\ALT_INV_Mux136~4_combout\ <= NOT \Mux136~4_combout\;
\ALT_INV_Mux136~3_combout\ <= NOT \Mux136~3_combout\;
\ALT_INV_Mux1~8_combout\ <= NOT \Mux1~8_combout\;
\ALT_INV_Mux136~2_combout\ <= NOT \Mux136~2_combout\;
\ALT_INV_Mux65~8_combout\ <= NOT \Mux65~8_combout\;
\ALT_INV_Mux136~1_combout\ <= NOT \Mux136~1_combout\;
\ALT_INV_Mux136~0_combout\ <= NOT \Mux136~0_combout\;
\ALT_INV_Mux128~25_combout\ <= NOT \Mux128~25_combout\;
\ALT_INV_Mux128~24_combout\ <= NOT \Mux128~24_combout\;
\ALT_INV_Mux64~25_combout\ <= NOT \Mux64~25_combout\;
\ALT_INV_Mux64~24_combout\ <= NOT \Mux64~24_combout\;
\ALT_INV_Mux135~6_combout\ <= NOT \Mux135~6_combout\;
\ALT_INV_Mux135~5_combout\ <= NOT \Mux135~5_combout\;
\ALT_INV_Mux135~4_combout\ <= NOT \Mux135~4_combout\;
\ALT_INV_Mux1~7_combout\ <= NOT \Mux1~7_combout\;
\ALT_INV_Mux135~3_combout\ <= NOT \Mux135~3_combout\;
\ALT_INV_Mux65~7_combout\ <= NOT \Mux65~7_combout\;
\ALT_INV_Mux135~2_combout\ <= NOT \Mux135~2_combout\;
\ALT_INV_Mux135~1_combout\ <= NOT \Mux135~1_combout\;
\ALT_INV_Mux135~0_combout\ <= NOT \Mux135~0_combout\;
\ALT_INV_Mux128~23_combout\ <= NOT \Mux128~23_combout\;
\ALT_INV_Mux128~22_combout\ <= NOT \Mux128~22_combout\;
\ALT_INV_Mux64~23_combout\ <= NOT \Mux64~23_combout\;
\ALT_INV_Mux64~22_combout\ <= NOT \Mux64~22_combout\;
\ALT_INV_Mux134~6_combout\ <= NOT \Mux134~6_combout\;
\ALT_INV_Mux134~5_combout\ <= NOT \Mux134~5_combout\;
\ALT_INV_Mux134~4_combout\ <= NOT \Mux134~4_combout\;
\ALT_INV_Mux1~6_combout\ <= NOT \Mux1~6_combout\;
\ALT_INV_Mux134~3_combout\ <= NOT \Mux134~3_combout\;
\ALT_INV_Mux65~6_combout\ <= NOT \Mux65~6_combout\;
\ALT_INV_Mux134~2_combout\ <= NOT \Mux134~2_combout\;
\ALT_INV_Mux134~1_combout\ <= NOT \Mux134~1_combout\;
\ALT_INV_Mux134~0_combout\ <= NOT \Mux134~0_combout\;
\ALT_INV_Mux128~21_combout\ <= NOT \Mux128~21_combout\;
\ALT_INV_Mux128~20_combout\ <= NOT \Mux128~20_combout\;
\ALT_INV_Mux64~21_combout\ <= NOT \Mux64~21_combout\;
\ALT_INV_Mux64~20_combout\ <= NOT \Mux64~20_combout\;
\ALT_INV_Mux133~6_combout\ <= NOT \Mux133~6_combout\;
\ALT_INV_Mux133~5_combout\ <= NOT \Mux133~5_combout\;
\ALT_INV_Mux133~4_combout\ <= NOT \Mux133~4_combout\;
\ALT_INV_Mux1~5_combout\ <= NOT \Mux1~5_combout\;
\ALT_INV_Mux133~3_combout\ <= NOT \Mux133~3_combout\;
\ALT_INV_Mux65~5_combout\ <= NOT \Mux65~5_combout\;
\ALT_INV_Mux133~2_combout\ <= NOT \Mux133~2_combout\;
\ALT_INV_Mux133~1_combout\ <= NOT \Mux133~1_combout\;
\ALT_INV_Mux133~0_combout\ <= NOT \Mux133~0_combout\;
\ALT_INV_Mux128~19_combout\ <= NOT \Mux128~19_combout\;
\ALT_INV_Mux128~18_combout\ <= NOT \Mux128~18_combout\;
\ALT_INV_Mux64~19_combout\ <= NOT \Mux64~19_combout\;
\ALT_INV_Mux64~18_combout\ <= NOT \Mux64~18_combout\;
\ALT_INV_Mux132~6_combout\ <= NOT \Mux132~6_combout\;
\ALT_INV_Mux132~5_combout\ <= NOT \Mux132~5_combout\;
\ALT_INV_Mux132~4_combout\ <= NOT \Mux132~4_combout\;
\ALT_INV_Mux1~4_combout\ <= NOT \Mux1~4_combout\;
\ALT_INV_Mux132~3_combout\ <= NOT \Mux132~3_combout\;
\ALT_INV_Mux65~4_combout\ <= NOT \Mux65~4_combout\;
\ALT_INV_Mux132~2_combout\ <= NOT \Mux132~2_combout\;
\ALT_INV_Mux132~1_combout\ <= NOT \Mux132~1_combout\;
\ALT_INV_Mux132~0_combout\ <= NOT \Mux132~0_combout\;
\ALT_INV_Mux128~17_combout\ <= NOT \Mux128~17_combout\;
\ALT_INV_Mux128~16_combout\ <= NOT \Mux128~16_combout\;
\ALT_INV_Mux64~17_combout\ <= NOT \Mux64~17_combout\;
\ALT_INV_Mux64~16_combout\ <= NOT \Mux64~16_combout\;
\ALT_INV_Mux131~6_combout\ <= NOT \Mux131~6_combout\;
\ALT_INV_Mux131~5_combout\ <= NOT \Mux131~5_combout\;
\ALT_INV_Mux131~4_combout\ <= NOT \Mux131~4_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Mux131~3_combout\ <= NOT \Mux131~3_combout\;
\ALT_INV_Mux65~3_combout\ <= NOT \Mux65~3_combout\;
\ALT_INV_Mux131~2_combout\ <= NOT \Mux131~2_combout\;
\ALT_INV_Mux131~1_combout\ <= NOT \Mux131~1_combout\;
\ALT_INV_Mux143~2_combout\ <= NOT \Mux143~2_combout\;
\ALT_INV_Mux143~1_combout\ <= NOT \Mux143~1_combout\;
\ALT_INV_Mux131~0_combout\ <= NOT \Mux131~0_combout\;
\ALT_INV_Mux143~0_combout\ <= NOT \Mux143~0_combout\;
\ALT_INV_Mux128~15_combout\ <= NOT \Mux128~15_combout\;
\ALT_INV_Mux128~14_combout\ <= NOT \Mux128~14_combout\;
\ALT_INV_Mux64~15_combout\ <= NOT \Mux64~15_combout\;
\ALT_INV_Mux64~14_combout\ <= NOT \Mux64~14_combout\;
\ALT_INV_Mux130~4_combout\ <= NOT \Mux130~4_combout\;
\ALT_INV_Mux130~3_combout\ <= NOT \Mux130~3_combout\;
\ALT_INV_Mux94~0_combout\ <= NOT \Mux94~0_combout\;
\ALT_INV_Mux65~2_combout\ <= NOT \Mux65~2_combout\;
\ALT_INV_Mux65~1_combout\ <= NOT \Mux65~1_combout\;
\ALT_INV_Mux65~0_combout\ <= NOT \Mux65~0_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux130~2_combout\ <= NOT \Mux130~2_combout\;
\ALT_INV_Mux128~13_combout\ <= NOT \Mux128~13_combout\;
\ALT_INV_Mux128~12_combout\ <= NOT \Mux128~12_combout\;
\ALT_INV_Mux130~1_combout\ <= NOT \Mux130~1_combout\;
\ALT_INV_Mux64~13_combout\ <= NOT \Mux64~13_combout\;
\ALT_INV_Mux64~12_combout\ <= NOT \Mux64~12_combout\;
\ALT_INV_Mux130~0_combout\ <= NOT \Mux130~0_combout\;
\ALT_INV_Mux129~4_combout\ <= NOT \Mux129~4_combout\;
\ALT_INV_Mux129~3_combout\ <= NOT \Mux129~3_combout\;
\ALT_INV_Mux95~0_combout\ <= NOT \Mux95~0_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Mux32~1_combout\ <= NOT \Mux32~1_combout\;
\ALT_INV_Mux129~2_combout\ <= NOT \Mux129~2_combout\;
\ALT_INV_Mux128~11_combout\ <= NOT \Mux128~11_combout\;
\ALT_INV_Mux128~10_combout\ <= NOT \Mux128~10_combout\;
\ALT_INV_Mux129~1_combout\ <= NOT \Mux129~1_combout\;
\ALT_INV_Mux64~11_combout\ <= NOT \Mux64~11_combout\;
\ALT_INV_Mux64~10_combout\ <= NOT \Mux64~10_combout\;
\ALT_INV_Mux129~0_combout\ <= NOT \Mux129~0_combout\;
\ALT_INV_Mux160~0_combout\ <= NOT \Mux160~0_combout\;
\ALT_INV_Mux0~7_combout\ <= NOT \Mux0~7_combout\;
\ALT_INV_Mux0~6_combout\ <= NOT \Mux0~6_combout\;
\ALT_INV_Mux0~5_combout\ <= NOT \Mux0~5_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_LessThan0~37_combout\ <= NOT \LessThan0~37_combout\;
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
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux64~9_combout\ <= NOT \Mux64~9_combout\;
\ALT_INV_Mux64~8_combout\ <= NOT \Mux64~8_combout\;
\ALT_INV_Mux64~7_combout\ <= NOT \Mux64~7_combout\;
\ALT_INV_Mux64~6_combout\ <= NOT \Mux64~6_combout\;
\ALT_INV_Mux64~5_combout\ <= NOT \Mux64~5_combout\;
\ALT_INV_Mux64~4_combout\ <= NOT \Mux64~4_combout\;
\ALT_INV_Mux64~3_combout\ <= NOT \Mux64~3_combout\;
\ALT_INV_Mux64~2_combout\ <= NOT \Mux64~2_combout\;
\ALT_INV_Mux64~1_combout\ <= NOT \Mux64~1_combout\;
\ALT_INV_Mux64~0_combout\ <= NOT \Mux64~0_combout\;
\ALT_INV_Mux128~9_combout\ <= NOT \Mux128~9_combout\;
\ALT_INV_Mux128~8_combout\ <= NOT \Mux128~8_combout\;
\ALT_INV_Mux128~7_combout\ <= NOT \Mux128~7_combout\;
\ALT_INV_Mux128~6_combout\ <= NOT \Mux128~6_combout\;
\ALT_INV_Mux128~5_combout\ <= NOT \Mux128~5_combout\;
\ALT_INV_Mux128~4_combout\ <= NOT \Mux128~4_combout\;
\ALT_INV_Mux128~3_combout\ <= NOT \Mux128~3_combout\;
\ALT_INV_Mux128~2_combout\ <= NOT \Mux128~2_combout\;
\ALT_INV_Mux128~1_combout\ <= NOT \Mux128~1_combout\;
\ALT_INV_Mux128~0_combout\ <= NOT \Mux128~0_combout\;
\ALT_INV_Mux96~0_combout\ <= NOT \Mux96~0_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Mux0~12_combout\ <= NOT \Mux0~12_combout\;
\ALT_INV_Mux0~8_combout\ <= NOT \Mux0~8_combout\;
\ALT_INV_Mux129~5_combout\ <= NOT \Mux129~5_combout\;
\ALT_INV_Mux130~5_combout\ <= NOT \Mux130~5_combout\;
\ALT_INV_Mux136~6_combout\ <= NOT \Mux136~6_combout\;
\ALT_INV_Mux137~6_combout\ <= NOT \Mux137~6_combout\;
\ALT_INV_Mux138~6_combout\ <= NOT \Mux138~6_combout\;
\ALT_INV_Mux139~6_combout\ <= NOT \Mux139~6_combout\;
\ALT_INV_Mux65~49_combout\ <= NOT \Mux65~49_combout\;
\ALT_INV_Mux1~49_combout\ <= NOT \Mux1~49_combout\;
\ALT_INV_Mux65~45_combout\ <= NOT \Mux65~45_combout\;
\ALT_INV_Mux1~45_combout\ <= NOT \Mux1~45_combout\;
\ALT_INV_Mux65~41_combout\ <= NOT \Mux65~41_combout\;
\ALT_INV_Mux1~41_combout\ <= NOT \Mux1~41_combout\;
\ALT_INV_Mux65~37_combout\ <= NOT \Mux65~37_combout\;
\ALT_INV_Mux1~37_combout\ <= NOT \Mux1~37_combout\;
\ALT_INV_Mux155~5_combout\ <= NOT \Mux155~5_combout\;
\ALT_INV_Mux159~4_combout\ <= NOT \Mux159~4_combout\;
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X0_Y21_N39
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X14_Y45_N19
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X36_Y0_N53
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

-- Location: IOOBUF_X0_Y20_N5
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X33_Y0_N93
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

-- Location: IOOBUF_X48_Y0_N76
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

-- Location: IOOBUF_X54_Y16_N5
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X16_Y45_N93
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

-- Location: IOOBUF_X54_Y15_N56
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X0_Y21_N56
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

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X10_Y45_N2
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

-- Location: IOOBUF_X34_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X10_Y45_N53
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X54_Y18_N62
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

-- Location: IOOBUF_X43_Y0_N19
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X20_Y45_N53
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOIBUF_X10_Y0_N58
\aluControl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(0),
	o => \aluControl[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N58
\shamt[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(3),
	o => \shamt[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\inputB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(27),
	o => \inputB[27]~input_o\);

-- Location: IOIBUF_X16_Y0_N75
\shamt[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(4),
	o => \shamt[4]~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\inputB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(19),
	o => \inputB[19]~input_o\);

-- Location: LABCELL_X20_Y5_N45
\Mux64~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~35_combout\ = ( \inputB[19]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\) # (\inputB[27]~input_o\))) ) ) # ( !\inputB[19]~input_o\ & ( (\shamt[3]~input_o\ & (\inputB[27]~input_o\ & !\shamt[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[27]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	combout => \Mux64~35_combout\);

-- Location: IOIBUF_X24_Y0_N1
\shamt[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(2),
	o => \shamt[2]~input_o\);

-- Location: IOIBUF_X0_Y18_N78
\inputB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(17),
	o => \inputB[17]~input_o\);

-- Location: IOIBUF_X18_Y0_N35
\inputB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(25),
	o => \inputB[25]~input_o\);

-- Location: MLABCELL_X18_Y5_N33
\Mux64~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~28_combout\ = ( \shamt[3]~input_o\ & ( (\inputB[25]~input_o\ & !\shamt[4]~input_o\) ) ) # ( !\shamt[3]~input_o\ & ( (\inputB[17]~input_o\ & !\shamt[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[17]~input_o\,
	datab => \ALT_INV_inputB[25]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~28_combout\);

-- Location: IOIBUF_X19_Y0_N35
\shamt[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(1),
	o => \shamt[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\inputB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(29),
	o => \inputB[29]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\inputB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(13),
	o => \inputB[13]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\inputB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(21),
	o => \inputB[21]~input_o\);

-- Location: LABCELL_X20_Y5_N42
\Mux64~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~20_combout\ = ( \inputB[21]~input_o\ & ( (!\shamt[3]~input_o\ & ((!\shamt[4]~input_o\ & ((\inputB[13]~input_o\))) # (\shamt[4]~input_o\ & (\inputB[29]~input_o\)))) # (\shamt[3]~input_o\ & (((!\shamt[4]~input_o\)))) ) ) # ( !\inputB[21]~input_o\ & ( 
-- (!\shamt[3]~input_o\ & ((!\shamt[4]~input_o\ & ((\inputB[13]~input_o\))) # (\shamt[4]~input_o\ & (\inputB[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111010001000011111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[29]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[21]~input_o\,
	combout => \Mux64~20_combout\);

-- Location: IOIBUF_X18_Y0_N52
\inputB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(31),
	o => \inputB[31]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\inputB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(23),
	o => \inputB[23]~input_o\);

-- Location: IOIBUF_X0_Y19_N55
\inputB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(15),
	o => \inputB[15]~input_o\);

-- Location: MLABCELL_X18_Y4_N6
\Mux64~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~24_combout\ = ( \inputB[15]~input_o\ & ( (!\shamt[3]~input_o\ & (((!\shamt[4]~input_o\)) # (\inputB[31]~input_o\))) # (\shamt[3]~input_o\ & (((\inputB[23]~input_o\ & !\shamt[4]~input_o\)))) ) ) # ( !\inputB[15]~input_o\ & ( (!\shamt[3]~input_o\ & 
-- (\inputB[31]~input_o\ & ((\shamt[4]~input_o\)))) # (\shamt[3]~input_o\ & (((\inputB[23]~input_o\ & !\shamt[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101000011110011010100001111001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux64~24_combout\);

-- Location: LABCELL_X19_Y5_N36
\Mux64~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~36_combout\ = ( \Mux64~20_combout\ & ( \Mux64~24_combout\ & ( (!\shamt[2]~input_o\) # ((!\shamt[1]~input_o\ & ((\Mux64~28_combout\))) # (\shamt[1]~input_o\ & (\Mux64~35_combout\))) ) ) ) # ( !\Mux64~20_combout\ & ( \Mux64~24_combout\ & ( 
-- (!\shamt[2]~input_o\ & (((\shamt[1]~input_o\)))) # (\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & ((\Mux64~28_combout\))) # (\shamt[1]~input_o\ & (\Mux64~35_combout\)))) ) ) ) # ( \Mux64~20_combout\ & ( !\Mux64~24_combout\ & ( (!\shamt[2]~input_o\ & 
-- (((!\shamt[1]~input_o\)))) # (\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & ((\Mux64~28_combout\))) # (\shamt[1]~input_o\ & (\Mux64~35_combout\)))) ) ) ) # ( !\Mux64~20_combout\ & ( !\Mux64~24_combout\ & ( (\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & 
-- ((\Mux64~28_combout\))) # (\shamt[1]~input_o\ & (\Mux64~35_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~35_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~28_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux64~20_combout\,
	dataf => \ALT_INV_Mux64~24_combout\,
	combout => \Mux64~36_combout\);

-- Location: IOIBUF_X18_Y0_N1
\aluControl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(1),
	o => \aluControl[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\inputA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(0),
	o => \inputA[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\shamt[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(0),
	o => \shamt[0]~input_o\);

-- Location: LABCELL_X12_Y4_N36
\Mux143~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~0_combout\ = ( \shamt[0]~input_o\ & ( (!\aluControl[1]~input_o\) # (\inputA[0]~input_o\) ) ) # ( !\shamt[0]~input_o\ & ( (\inputA[0]~input_o\ & \aluControl[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux143~0_combout\);

-- Location: IOIBUF_X23_Y0_N75
\inputA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(4),
	o => \inputA[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\inputA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(3),
	o => \inputA[3]~input_o\);

-- Location: LABCELL_X17_Y4_N0
\Mux128~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~28_combout\ = ( \inputB[25]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[17]~input_o\) # (\inputA[3]~input_o\))) ) ) # ( !\inputB[25]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \Mux128~28_combout\);

-- Location: IOIBUF_X25_Y0_N1
\inputA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(1),
	o => \inputA[1]~input_o\);

-- Location: LABCELL_X20_Y5_N36
\Mux128~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~20_combout\ = ( \inputB[13]~input_o\ & ( (!\inputA[4]~input_o\ & (((!\inputA[3]~input_o\)) # (\inputB[21]~input_o\))) # (\inputA[4]~input_o\ & (((\inputB[29]~input_o\ & !\inputA[3]~input_o\)))) ) ) # ( !\inputB[13]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & (\inputB[21]~input_o\ & ((\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & (((\inputB[29]~input_o\ & !\inputA[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110100010011001111010001001100111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	combout => \Mux128~20_combout\);

-- Location: IOIBUF_X22_Y0_N1
\inputA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(2),
	o => \inputA[2]~input_o\);

-- Location: MLABCELL_X18_Y4_N0
\Mux128~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~24_combout\ = ( \inputB[31]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[15]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[23]~input_o\)))) # (\inputA[4]~input_o\ & (((!\inputA[3]~input_o\)))) ) ) # ( 
-- !\inputB[31]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[15]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[23]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010010111100100101001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux128~24_combout\);

-- Location: LABCELL_X20_Y5_N33
\Mux128~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~34_combout\ = ( \inputB[19]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[27]~input_o\))) ) ) # ( !\inputB[19]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputA[3]~input_o\ & \inputB[27]~input_o\)) ) )

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
	combout => \Mux128~34_combout\);

-- Location: LABCELL_X17_Y4_N54
\Mux128~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~35_combout\ = ( \Mux128~24_combout\ & ( \Mux128~34_combout\ & ( ((!\inputA[2]~input_o\ & ((\Mux128~20_combout\))) # (\inputA[2]~input_o\ & (\Mux128~28_combout\))) # (\inputA[1]~input_o\) ) ) ) # ( !\Mux128~24_combout\ & ( \Mux128~34_combout\ & ( 
-- (!\inputA[1]~input_o\ & ((!\inputA[2]~input_o\ & ((\Mux128~20_combout\))) # (\inputA[2]~input_o\ & (\Mux128~28_combout\)))) # (\inputA[1]~input_o\ & (((\inputA[2]~input_o\)))) ) ) ) # ( \Mux128~24_combout\ & ( !\Mux128~34_combout\ & ( 
-- (!\inputA[1]~input_o\ & ((!\inputA[2]~input_o\ & ((\Mux128~20_combout\))) # (\inputA[2]~input_o\ & (\Mux128~28_combout\)))) # (\inputA[1]~input_o\ & (((!\inputA[2]~input_o\)))) ) ) ) # ( !\Mux128~24_combout\ & ( !\Mux128~34_combout\ & ( 
-- (!\inputA[1]~input_o\ & ((!\inputA[2]~input_o\ & ((\Mux128~20_combout\))) # (\inputA[2]~input_o\ & (\Mux128~28_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~28_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~20_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_Mux128~24_combout\,
	dataf => \ALT_INV_Mux128~34_combout\,
	combout => \Mux128~35_combout\);

-- Location: IOIBUF_X11_Y0_N18
\inputB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(28),
	o => \inputB[28]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\inputB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(20),
	o => \inputB[20]~input_o\);

-- Location: LABCELL_X16_Y4_N57
\Mux128~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~39_combout\ = ( \inputB[20]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[28]~input_o\))) ) ) # ( !\inputB[20]~input_o\ & ( (\inputB[28]~input_o\ & (\inputA[3]~input_o\ & !\inputA[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[28]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[20]~input_o\,
	combout => \Mux128~39_combout\);

-- Location: IOIBUF_X19_Y0_N18
\inputB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(26),
	o => \inputB[26]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\inputB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(18),
	o => \inputB[18]~input_o\);

-- Location: LABCELL_X21_Y4_N45
\Mux128~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~30_combout\ = ( \inputB[18]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[26]~input_o\))) ) ) # ( !\inputB[18]~input_o\ & ( (\inputA[3]~input_o\ & (!\inputA[4]~input_o\ & \inputB[26]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[26]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \Mux128~30_combout\);

-- Location: IOIBUF_X25_Y0_N18
\inputB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(24),
	o => \inputB[24]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\inputB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(16),
	o => \inputB[16]~input_o\);

-- Location: LABCELL_X20_Y6_N27
\Mux128~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~26_combout\ = ( \inputB[16]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[24]~input_o\))) ) ) # ( !\inputB[16]~input_o\ & ( (\inputA[3]~input_o\ & (\inputB[24]~input_o\ & !\inputA[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datab => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \Mux128~26_combout\);

-- Location: IOIBUF_X0_Y18_N44
\inputB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(30),
	o => \inputB[30]~input_o\);

-- Location: IOIBUF_X40_Y0_N75
\inputB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(14),
	o => \inputB[14]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\inputB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(22),
	o => \inputB[22]~input_o\);

-- Location: LABCELL_X16_Y4_N3
\Mux128~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~22_combout\ = ( \inputB[22]~input_o\ & ( (!\inputA[4]~input_o\ & (((\inputB[14]~input_o\) # (\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & (\inputB[30]~input_o\ & (!\inputA[3]~input_o\))) ) ) # ( !\inputB[22]~input_o\ & ( (!\inputA[3]~input_o\ 
-- & ((!\inputA[4]~input_o\ & ((\inputB[14]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011100110111000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[30]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \Mux128~22_combout\);

-- Location: LABCELL_X21_Y5_N6
\Mux128~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~40_combout\ = ( \inputA[1]~input_o\ & ( \Mux128~22_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux128~26_combout\))) # (\inputA[2]~input_o\ & (\Mux128~39_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux128~22_combout\ & ( (!\inputA[2]~input_o\) # 
-- (\Mux128~30_combout\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux128~22_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux128~26_combout\))) # (\inputA[2]~input_o\ & (\Mux128~39_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux128~22_combout\ & ( 
-- (\inputA[2]~input_o\ & \Mux128~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux128~39_combout\,
	datac => \ALT_INV_Mux128~30_combout\,
	datad => \ALT_INV_Mux128~26_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux128~22_combout\,
	combout => \Mux128~40_combout\);

-- Location: LABCELL_X16_Y4_N6
\Mux64~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~30_combout\ = ( \inputB[18]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\) # (\inputB[26]~input_o\))) ) ) # ( !\inputB[18]~input_o\ & ( (\shamt[3]~input_o\ & (!\shamt[4]~input_o\ & \inputB[26]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \Mux64~30_combout\);

-- Location: LABCELL_X16_Y4_N9
\Mux64~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~40_combout\ = ( \inputB[20]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\) # (\inputB[28]~input_o\))) ) ) # ( !\inputB[20]~input_o\ & ( (\shamt[3]~input_o\ & (!\shamt[4]~input_o\ & \inputB[28]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputB[20]~input_o\,
	combout => \Mux64~40_combout\);

-- Location: MLABCELL_X18_Y6_N12
\Mux64~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~22_combout\ = ( \inputB[14]~input_o\ & ( (!\shamt[4]~input_o\ & (((!\shamt[3]~input_o\)) # (\inputB[22]~input_o\))) # (\shamt[4]~input_o\ & (((!\shamt[3]~input_o\ & \inputB[30]~input_o\)))) ) ) # ( !\inputB[14]~input_o\ & ( (!\shamt[4]~input_o\ & 
-- (\inputB[22]~input_o\ & (\shamt[3]~input_o\))) # (\shamt[4]~input_o\ & (((!\shamt[3]~input_o\ & \inputB[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001000011010011000100111101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[22]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_inputB[14]~input_o\,
	combout => \Mux64~22_combout\);

-- Location: LABCELL_X20_Y6_N33
\Mux64~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~26_combout\ = ( \shamt[3]~input_o\ & ( (\inputB[24]~input_o\ & !\shamt[4]~input_o\) ) ) # ( !\shamt[3]~input_o\ & ( (\inputB[16]~input_o\ & !\shamt[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~26_combout\);

-- Location: LABCELL_X17_Y6_N42
\Mux64~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~41_combout\ = ( \shamt[1]~input_o\ & ( \Mux64~26_combout\ & ( (!\shamt[2]~input_o\) # (\Mux64~40_combout\) ) ) ) # ( !\shamt[1]~input_o\ & ( \Mux64~26_combout\ & ( (!\shamt[2]~input_o\ & ((\Mux64~22_combout\))) # (\shamt[2]~input_o\ & 
-- (\Mux64~30_combout\)) ) ) ) # ( \shamt[1]~input_o\ & ( !\Mux64~26_combout\ & ( (\Mux64~40_combout\ & \shamt[2]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\Mux64~26_combout\ & ( (!\shamt[2]~input_o\ & ((\Mux64~22_combout\))) # (\shamt[2]~input_o\ & 
-- (\Mux64~30_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~30_combout\,
	datab => \ALT_INV_Mux64~40_combout\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_Mux64~22_combout\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_Mux64~26_combout\,
	combout => \Mux64~41_combout\);

-- Location: LABCELL_X12_Y4_N0
\Mux141~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux141~4_combout\ = ( \Mux128~40_combout\ & ( \Mux64~41_combout\ & ( ((!\aluControl[1]~input_o\ & (\Mux64~36_combout\)) # (\aluControl[1]~input_o\ & ((\Mux128~35_combout\)))) # (\Mux143~0_combout\) ) ) ) # ( !\Mux128~40_combout\ & ( \Mux64~41_combout\ & 
-- ( (!\aluControl[1]~input_o\ & (((\Mux143~0_combout\)) # (\Mux64~36_combout\))) # (\aluControl[1]~input_o\ & (((!\Mux143~0_combout\ & \Mux128~35_combout\)))) ) ) ) # ( \Mux128~40_combout\ & ( !\Mux64~41_combout\ & ( (!\aluControl[1]~input_o\ & 
-- (\Mux64~36_combout\ & (!\Mux143~0_combout\))) # (\aluControl[1]~input_o\ & (((\Mux128~35_combout\) # (\Mux143~0_combout\)))) ) ) ) # ( !\Mux128~40_combout\ & ( !\Mux64~41_combout\ & ( (!\Mux143~0_combout\ & ((!\aluControl[1]~input_o\ & 
-- (\Mux64~36_combout\)) # (\aluControl[1]~input_o\ & ((\Mux128~35_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~36_combout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux143~0_combout\,
	datad => \ALT_INV_Mux128~35_combout\,
	datae => \ALT_INV_Mux128~40_combout\,
	dataf => \ALT_INV_Mux64~41_combout\,
	combout => \Mux141~4_combout\);

-- Location: IOIBUF_X16_Y0_N41
\aluControl[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(3),
	o => \aluControl[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\aluControl[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(2),
	o => \aluControl[2]~input_o\);

-- Location: MLABCELL_X13_Y3_N18
\Mux143~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~1_combout\ = ( \aluControl[0]~input_o\ & ( (\aluControl[2]~input_o\) # (\aluControl[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux143~1_combout\);

-- Location: IOIBUF_X11_Y0_N1
\inputA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(13),
	o => \inputA[13]~input_o\);

-- Location: LABCELL_X12_Y3_N15
\Mux143~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~2_combout\ = ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\) # (\aluControl[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux143~2_combout\);

-- Location: MLABCELL_X13_Y3_N27
\Mux141~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux141~5_combout\ = ( \Mux143~2_combout\ & ( (!\Mux143~1_combout\ & ((\inputB[13]~input_o\) # (\inputA[13]~input_o\))) ) ) # ( !\Mux143~2_combout\ & ( (\Mux141~4_combout\ & \Mux143~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux141~4_combout\,
	datab => \ALT_INV_Mux143~1_combout\,
	datac => \ALT_INV_inputA[13]~input_o\,
	datad => \ALT_INV_inputB[13]~input_o\,
	dataf => \ALT_INV_Mux143~2_combout\,
	combout => \Mux141~5_combout\);

-- Location: IOIBUF_X52_Y0_N52
\inputA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(12),
	o => \inputA[12]~input_o\);

-- Location: IOIBUF_X11_Y0_N52
\inputB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(12),
	o => \inputB[12]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\inputA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(11),
	o => \inputA[11]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\inputB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(11),
	o => \inputB[11]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\inputA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(10),
	o => \inputA[10]~input_o\);

-- Location: IOIBUF_X23_Y0_N41
\inputB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(10),
	o => \inputB[10]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\inputB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(9),
	o => \inputB[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N92
\inputA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(9),
	o => \inputA[9]~input_o\);

-- Location: IOIBUF_X12_Y45_N52
\inputA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(8),
	o => \inputA[8]~input_o\);

-- Location: IOIBUF_X25_Y0_N35
\inputB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(8),
	o => \inputB[8]~input_o\);

-- Location: IOIBUF_X29_Y0_N35
\inputB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(7),
	o => \inputB[7]~input_o\);

-- Location: IOIBUF_X16_Y45_N41
\inputA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(7),
	o => \inputA[7]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\inputA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(6),
	o => \inputA[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N92
\inputB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(6),
	o => \inputB[6]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\inputA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(5),
	o => \inputA[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\inputB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(5),
	o => \inputB[5]~input_o\);

-- Location: IOIBUF_X19_Y0_N52
\inputB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(4),
	o => \inputB[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\inputB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(3),
	o => \inputB[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\inputB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(2),
	o => \inputB[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\inputB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(1),
	o => \inputB[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\inputB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(0),
	o => \inputB[0]~input_o\);

-- Location: LABCELL_X10_Y4_N0
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

-- Location: LABCELL_X10_Y4_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \inputA[0]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[0]~input_o\) ) + ( \Add0~130_cout\ ))
-- \Add0~2\ = CARRY(( \inputA[0]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[0]~input_o\) ) + ( \Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_inputB[0]~input_o\,
	cin => \Add0~130_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X10_Y4_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[1]~input_o\) ) + ( \inputA[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[1]~input_o\) ) + ( \inputA[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X10_Y4_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[2]~input_o\) ) + ( \inputA[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[2]~input_o\) ) + ( \inputA[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X10_Y4_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \inputA[3]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[3]~input_o\) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \inputA[3]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[3]~input_o\) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X10_Y4_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[4]~input_o\) ) + ( \inputA[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[4]~input_o\) ) + ( \inputA[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X10_Y4_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \inputA[5]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[5]~input_o\) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \inputA[5]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[5]~input_o\) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[5]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X10_Y4_N21
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \inputA[6]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[6]~input_o\) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \inputA[6]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[6]~input_o\) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[6]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X10_Y4_N24
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[7]~input_o\) ) + ( \inputA[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[7]~input_o\) ) + ( \inputA[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X10_Y4_N27
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[8]~input_o\) ) + ( \inputA[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[8]~input_o\) ) + ( \inputA[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[8]~input_o\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputB[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X10_Y4_N30
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \inputA[9]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[9]~input_o\) ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \inputA[9]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[9]~input_o\) ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_inputA[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X10_Y4_N33
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \inputA[10]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[10]~input_o\) ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \inputA[10]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[10]~input_o\) ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[10]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X10_Y4_N36
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[11]~input_o\) ) + ( \inputA[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[11]~input_o\) ) + ( \inputA[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[11]~input_o\,
	datad => \ALT_INV_inputB[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X10_Y4_N39
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \inputA[12]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[12]~input_o\) ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \inputA[12]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[12]~input_o\) ) + ( \Add0~46\ ))

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
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X10_Y4_N42
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \inputA[13]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[13]~input_o\) ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \inputA[13]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[13]~input_o\) ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[13]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: MLABCELL_X13_Y4_N30
\Mux141~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux141~3_combout\ = ( \Add0~53_sumout\ & ( ((\inputB[13]~input_o\ & \inputA[13]~input_o\)) # (\aluControl[1]~input_o\) ) ) # ( !\Add0~53_sumout\ & ( (\inputB[13]~input_o\ & (!\aluControl[1]~input_o\ & \inputA[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100001101110011011100000100000001000011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[13]~input_o\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_inputA[13]~input_o\,
	datae => \ALT_INV_Add0~53_sumout\,
	combout => \Mux141~3_combout\);

-- Location: MLABCELL_X18_Y3_N24
\Mux1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~11_combout\ = ( \inputB[7]~input_o\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & !\shamt[4]~input_o\) ) ) ) # ( \inputB[7]~input_o\ & ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & (\inputB[11]~input_o\)) # 
-- (\shamt[3]~input_o\ & ((\inputB[3]~input_o\))))) ) ) ) # ( !\inputB[7]~input_o\ & ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & (\inputB[11]~input_o\)) # (\shamt[3]~input_o\ & ((\inputB[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000000000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[11]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux1~11_combout\);

-- Location: MLABCELL_X18_Y3_N6
\Mux1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = ( \inputB[10]~input_o\ & ( !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\) # ((\inputB[2]~input_o\)))) # (\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & ((\inputB[6]~input_o\)))) ) ) ) # ( !\inputB[10]~input_o\ & ( 
-- !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & (\shamt[3]~input_o\ & (\inputB[2]~input_o\))) # (\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & ((\inputB[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputB[6]~input_o\,
	datae => \ALT_INV_inputB[10]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux1~10_combout\);

-- Location: MLABCELL_X18_Y3_N48
\Mux1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~49_combout\ = ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (((!\shamt[3]~input_o\ & ((\inputB[12]~input_o\))) # (\shamt[3]~input_o\ & (\inputB[4]~input_o\))))) ) ) # ( \shamt[2]~input_o\ & ( ((!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & 
-- (\inputB[8]~input_o\)) # (\shamt[3]~input_o\ & ((\inputB[0]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001000100010001000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	datag => \ALT_INV_inputB[12]~input_o\,
	combout => \Mux1~49_combout\);

-- Location: MLABCELL_X18_Y5_N36
\Mux1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~45_combout\ = ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & (\inputB[13]~input_o\)) # (\shamt[3]~input_o\ & (((\inputB[5]~input_o\)))))) ) ) # ( \shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & 
-- (\inputB[9]~input_o\)) # (\shamt[3]~input_o\ & (((\inputB[1]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000001000000010000010101000101010001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_inputB[1]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	datag => \ALT_INV_inputB[13]~input_o\,
	combout => \Mux1~45_combout\);

-- Location: MLABCELL_X18_Y3_N42
\Mux141~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux141~1_combout\ = ( \shamt[1]~input_o\ & ( \Mux1~45_combout\ & ( (!\shamt[0]~input_o\ & (\Mux1~11_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~10_combout\))) ) ) ) # ( !\shamt[1]~input_o\ & ( \Mux1~45_combout\ & ( (!\shamt[0]~input_o\) # 
-- (\Mux1~49_combout\) ) ) ) # ( \shamt[1]~input_o\ & ( !\Mux1~45_combout\ & ( (!\shamt[0]~input_o\ & (\Mux1~11_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~10_combout\))) ) ) ) # ( !\shamt[1]~input_o\ & ( !\Mux1~45_combout\ & ( (\Mux1~49_combout\ & 
-- \shamt[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~11_combout\,
	datab => \ALT_INV_Mux1~10_combout\,
	datac => \ALT_INV_Mux1~49_combout\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_Mux1~45_combout\,
	combout => \Mux141~1_combout\);

-- Location: LABCELL_X14_Y3_N51
\Mux65~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~11_combout\ = ( \inputA[2]~input_o\ & ( \inputB[7]~input_o\ & ( (!\inputA[3]~input_o\ & !\inputA[4]~input_o\) ) ) ) # ( !\inputA[2]~input_o\ & ( \inputB[7]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[11]~input_o\))) # 
-- (\inputA[3]~input_o\ & (\inputB[3]~input_o\)))) ) ) ) # ( !\inputA[2]~input_o\ & ( !\inputB[7]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[11]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000000000000000000011011000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputA[4]~input_o\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputB[7]~input_o\,
	combout => \Mux65~11_combout\);

-- Location: LABCELL_X16_Y3_N30
\Mux65~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~10_combout\ = ( \inputA[3]~input_o\ & ( !\inputA[4]~input_o\ & ( (\inputB[2]~input_o\ & !\inputA[2]~input_o\) ) ) ) # ( !\inputA[3]~input_o\ & ( !\inputA[4]~input_o\ & ( (!\inputA[2]~input_o\ & (\inputB[10]~input_o\)) # (\inputA[2]~input_o\ & 
-- ((\inputB[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[10]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux65~10_combout\);

-- Location: LABCELL_X16_Y3_N42
\Mux65~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~45_combout\ = ( !\inputA[2]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[13]~input_o\)) # (\inputA[3]~input_o\ & (((\inputB[5]~input_o\)))))) ) ) # ( \inputA[2]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & 
-- (\inputB[9]~input_o\)) # (\inputA[3]~input_o\ & (((\inputB[1]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000001000000010000010101000101010001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_inputB[1]~input_o\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	datag => \ALT_INV_inputB[13]~input_o\,
	combout => \Mux65~45_combout\);

-- Location: LABCELL_X16_Y3_N24
\Mux65~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~49_combout\ = ( !\inputA[2]~input_o\ & ( ((!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[12]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[4]~input_o\))))) ) ) # ( \inputA[2]~input_o\ & ( ((!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ 
-- & (\inputB[8]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[0]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	datag => \ALT_INV_inputB[12]~input_o\,
	combout => \Mux65~49_combout\);

-- Location: LABCELL_X14_Y3_N42
\Mux141~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux141~0_combout\ = ( \Mux65~49_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux65~11_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~10_combout\))) ) ) ) # ( !\Mux65~49_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- (\Mux65~11_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~10_combout\))) ) ) ) # ( \Mux65~49_combout\ & ( !\inputA[1]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux65~45_combout\) ) ) ) # ( !\Mux65~49_combout\ & ( !\inputA[1]~input_o\ & ( (\Mux65~45_combout\ & 
-- !\inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~11_combout\,
	datab => \ALT_INV_Mux65~10_combout\,
	datac => \ALT_INV_Mux65~45_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~49_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux141~0_combout\);

-- Location: LABCELL_X14_Y3_N39
\Mux141~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux141~2_combout\ = ( \inputB[13]~input_o\ & ( \inputA[13]~input_o\ & ( (!\aluControl[2]~input_o\ & ((!\aluControl[1]~input_o\ & (\Mux141~1_combout\)) # (\aluControl[1]~input_o\ & ((\Mux141~0_combout\))))) ) ) ) # ( !\inputB[13]~input_o\ & ( 
-- \inputA[13]~input_o\ & ( (!\aluControl[2]~input_o\ & ((!\aluControl[1]~input_o\ & (\Mux141~1_combout\)) # (\aluControl[1]~input_o\ & ((\Mux141~0_combout\))))) ) ) ) # ( \inputB[13]~input_o\ & ( !\inputA[13]~input_o\ & ( (!\aluControl[2]~input_o\ & 
-- ((!\aluControl[1]~input_o\ & (\Mux141~1_combout\)) # (\aluControl[1]~input_o\ & ((\Mux141~0_combout\))))) ) ) ) # ( !\inputB[13]~input_o\ & ( !\inputA[13]~input_o\ & ( ((!\aluControl[1]~input_o\ & (\Mux141~1_combout\)) # (\aluControl[1]~input_o\ & 
-- ((\Mux141~0_combout\)))) # (\aluControl[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100111111010100000011000001010000001100000101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux141~1_combout\,
	datab => \ALT_INV_Mux141~0_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_inputB[13]~input_o\,
	dataf => \ALT_INV_inputA[13]~input_o\,
	combout => \Mux141~2_combout\);

-- Location: MLABCELL_X13_Y3_N0
\Mux141~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux141~6_combout\ = ( \aluControl[3]~input_o\ & ( ((!\aluControl[0]~input_o\ & \Mux141~2_combout\)) # (\Mux141~5_combout\) ) ) # ( !\aluControl[3]~input_o\ & ( ((!\aluControl[0]~input_o\ & \Mux141~3_combout\)) # (\Mux141~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_Mux141~5_combout\,
	datac => \ALT_INV_Mux141~3_combout\,
	datad => \ALT_INV_Mux141~2_combout\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux141~6_combout\);

-- Location: LABCELL_X12_Y5_N39
\Mux160~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux160~0_combout\ = ( \aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & (\aluControl[2]~input_o\ & !\aluControl[3]~input_o\)) # (\aluControl[1]~input_o\ & (!\aluControl[2]~input_o\ $ (\aluControl[3]~input_o\))) ) ) # ( !\aluControl[0]~input_o\ & ( 
-- (\aluControl[2]~input_o\ & (!\aluControl[1]~input_o\ $ (\aluControl[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010101011010000001010101101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux160~0_combout\);

-- Location: MLABCELL_X13_Y3_N24
\res[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(13) = ( \Mux160~0_combout\ & ( res(13) ) ) # ( !\Mux160~0_combout\ & ( \Mux141~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux141~6_combout\,
	datad => ALT_INV_res(13),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(13));

-- Location: MLABCELL_X13_Y4_N42
\Mux140~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux140~3_combout\ = ( \inputB[12]~input_o\ & ( (!\aluControl[1]~input_o\ & ((\inputA[12]~input_o\))) # (\aluControl[1]~input_o\ & (\Add0~49_sumout\)) ) ) # ( !\inputB[12]~input_o\ & ( (\Add0~49_sumout\ & \aluControl[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~49_sumout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_inputA[12]~input_o\,
	dataf => \ALT_INV_inputB[12]~input_o\,
	combout => \Mux140~3_combout\);

-- Location: MLABCELL_X18_Y5_N0
\Mux1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & \inputB[1]~input_o\) ) ) ) # ( !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & (\inputB[9]~input_o\)) # (\shamt[2]~input_o\ & 
-- ((\inputB[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[9]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_inputB[5]~input_o\,
	datad => \ALT_INV_inputB[1]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~9_combout\);

-- Location: MLABCELL_X18_Y3_N0
\Mux140~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux140~1_combout\ = ( \shamt[1]~input_o\ & ( \Mux1~9_combout\ & ( (\shamt[0]~input_o\) # (\Mux1~10_combout\) ) ) ) # ( !\shamt[1]~input_o\ & ( \Mux1~9_combout\ & ( (!\shamt[0]~input_o\ & ((\Mux1~49_combout\))) # (\shamt[0]~input_o\ & (\Mux1~11_combout\)) 
-- ) ) ) # ( \shamt[1]~input_o\ & ( !\Mux1~9_combout\ & ( (\Mux1~10_combout\ & !\shamt[0]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\Mux1~9_combout\ & ( (!\shamt[0]~input_o\ & ((\Mux1~49_combout\))) # (\shamt[0]~input_o\ & (\Mux1~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~11_combout\,
	datab => \ALT_INV_Mux1~10_combout\,
	datac => \ALT_INV_Mux1~49_combout\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_Mux1~9_combout\,
	combout => \Mux140~1_combout\);

-- Location: LABCELL_X16_Y3_N48
\Mux65~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~9_combout\ = ( \inputA[3]~input_o\ & ( \inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputB[1]~input_o\ & !\inputA[2]~input_o\)) ) ) ) # ( !\inputA[3]~input_o\ & ( \inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputA[2]~input_o\) # 
-- (\inputB[9]~input_o\))) ) ) ) # ( \inputA[3]~input_o\ & ( !\inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputB[1]~input_o\ & !\inputA[2]~input_o\)) ) ) ) # ( !\inputA[3]~input_o\ & ( !\inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & 
-- (\inputB[9]~input_o\ & !\inputA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000010100000000000100010101010100000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[9]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux65~9_combout\);

-- Location: LABCELL_X14_Y3_N24
\Mux140~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux140~0_combout\ = ( \Mux65~49_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux65~10_combout\))) # (\inputA[0]~input_o\ & (\Mux65~9_combout\)) ) ) ) # ( !\Mux65~49_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- ((\Mux65~10_combout\))) # (\inputA[0]~input_o\ & (\Mux65~9_combout\)) ) ) ) # ( \Mux65~49_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\) # (\Mux65~11_combout\) ) ) ) # ( !\Mux65~49_combout\ & ( !\inputA[1]~input_o\ & ( (\Mux65~11_combout\ & 
-- \inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~11_combout\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux65~9_combout\,
	datad => \ALT_INV_Mux65~10_combout\,
	datae => \ALT_INV_Mux65~49_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux140~0_combout\);

-- Location: MLABCELL_X13_Y4_N0
\Mux140~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux140~2_combout\ = ( !\aluControl[2]~input_o\ & ( \inputB[12]~input_o\ & ( (!\aluControl[1]~input_o\ & (\Mux140~1_combout\)) # (\aluControl[1]~input_o\ & ((\Mux140~0_combout\))) ) ) ) # ( \aluControl[2]~input_o\ & ( !\inputB[12]~input_o\ & ( 
-- !\inputA[12]~input_o\ ) ) ) # ( !\aluControl[2]~input_o\ & ( !\inputB[12]~input_o\ & ( (!\aluControl[1]~input_o\ & (\Mux140~1_combout\)) # (\aluControl[1]~input_o\ & ((\Mux140~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111101010101010101000001100001111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[12]~input_o\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux140~1_combout\,
	datad => \ALT_INV_Mux140~0_combout\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_inputB[12]~input_o\,
	combout => \Mux140~2_combout\);

-- Location: LABCELL_X16_Y4_N51
\Mux64~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~18_combout\ = ( \inputB[20]~input_o\ & ( (!\shamt[3]~input_o\ & ((!\shamt[4]~input_o\ & (\inputB[12]~input_o\)) # (\shamt[4]~input_o\ & ((\inputB[28]~input_o\))))) # (\shamt[3]~input_o\ & (!\shamt[4]~input_o\)) ) ) # ( !\inputB[20]~input_o\ & ( 
-- (!\shamt[3]~input_o\ & ((!\shamt[4]~input_o\ & (\inputB[12]~input_o\)) # (\shamt[4]~input_o\ & ((\inputB[28]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[12]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputB[20]~input_o\,
	combout => \Mux64~18_combout\);

-- Location: LABCELL_X17_Y6_N48
\Mux64~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~31_combout\ = ( \Mux64~18_combout\ & ( \Mux64~26_combout\ & ( (!\shamt[1]~input_o\) # ((!\shamt[2]~input_o\ & ((\Mux64~22_combout\))) # (\shamt[2]~input_o\ & (\Mux64~30_combout\))) ) ) ) # ( !\Mux64~18_combout\ & ( \Mux64~26_combout\ & ( 
-- (!\shamt[1]~input_o\ & (((\shamt[2]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[2]~input_o\ & ((\Mux64~22_combout\))) # (\shamt[2]~input_o\ & (\Mux64~30_combout\)))) ) ) ) # ( \Mux64~18_combout\ & ( !\Mux64~26_combout\ & ( (!\shamt[1]~input_o\ & 
-- (((!\shamt[2]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[2]~input_o\ & ((\Mux64~22_combout\))) # (\shamt[2]~input_o\ & (\Mux64~30_combout\)))) ) ) ) # ( !\Mux64~18_combout\ & ( !\Mux64~26_combout\ & ( (\shamt[1]~input_o\ & ((!\shamt[2]~input_o\ & 
-- ((\Mux64~22_combout\))) # (\shamt[2]~input_o\ & (\Mux64~30_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~30_combout\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_Mux64~22_combout\,
	datae => \ALT_INV_Mux64~18_combout\,
	dataf => \ALT_INV_Mux64~26_combout\,
	combout => \Mux64~31_combout\);

-- Location: LABCELL_X16_Y4_N54
\Mux128~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~18_combout\ = ( \inputB[20]~input_o\ & ( (!\inputA[3]~input_o\ & ((!\inputA[4]~input_o\ & ((\inputB[12]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[28]~input_o\)))) # (\inputA[3]~input_o\ & (((!\inputA[4]~input_o\)))) ) ) # ( 
-- !\inputB[20]~input_o\ & ( (!\inputA[3]~input_o\ & ((!\inputA[4]~input_o\ & ((\inputB[12]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[28]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000110100111101000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[28]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	dataf => \ALT_INV_inputB[20]~input_o\,
	combout => \Mux128~18_combout\);

-- Location: LABCELL_X21_Y5_N24
\Mux128~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~31_combout\ = ( \inputA[2]~input_o\ & ( \Mux128~18_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux128~26_combout\))) # (\inputA[1]~input_o\ & (\Mux128~30_combout\)) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux128~18_combout\ & ( (!\inputA[1]~input_o\) # 
-- (\Mux128~22_combout\) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux128~18_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux128~26_combout\))) # (\inputA[1]~input_o\ & (\Mux128~30_combout\)) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux128~18_combout\ & ( 
-- (\inputA[1]~input_o\ & \Mux128~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~30_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~22_combout\,
	datad => \ALT_INV_Mux128~26_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux128~18_combout\,
	combout => \Mux128~31_combout\);

-- Location: LABCELL_X12_Y4_N12
\Mux140~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux140~4_combout\ = ( \Mux64~31_combout\ & ( \Mux128~31_combout\ & ( (!\Mux143~0_combout\) # ((!\aluControl[1]~input_o\ & (\Mux64~36_combout\)) # (\aluControl[1]~input_o\ & ((\Mux128~35_combout\)))) ) ) ) # ( !\Mux64~31_combout\ & ( \Mux128~31_combout\ & 
-- ( (!\Mux143~0_combout\ & (\aluControl[1]~input_o\)) # (\Mux143~0_combout\ & ((!\aluControl[1]~input_o\ & (\Mux64~36_combout\)) # (\aluControl[1]~input_o\ & ((\Mux128~35_combout\))))) ) ) ) # ( \Mux64~31_combout\ & ( !\Mux128~31_combout\ & ( 
-- (!\Mux143~0_combout\ & (!\aluControl[1]~input_o\)) # (\Mux143~0_combout\ & ((!\aluControl[1]~input_o\ & (\Mux64~36_combout\)) # (\aluControl[1]~input_o\ & ((\Mux128~35_combout\))))) ) ) ) # ( !\Mux64~31_combout\ & ( !\Mux128~31_combout\ & ( 
-- (\Mux143~0_combout\ & ((!\aluControl[1]~input_o\ & (\Mux64~36_combout\)) # (\aluControl[1]~input_o\ & ((\Mux128~35_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux143~0_combout\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Mux64~36_combout\,
	datad => \ALT_INV_Mux128~35_combout\,
	datae => \ALT_INV_Mux64~31_combout\,
	dataf => \ALT_INV_Mux128~31_combout\,
	combout => \Mux140~4_combout\);

-- Location: MLABCELL_X13_Y4_N39
\Mux140~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux140~5_combout\ = ( \Mux143~1_combout\ & ( (!\Mux143~2_combout\ & \Mux140~4_combout\) ) ) # ( !\Mux143~1_combout\ & ( (\Mux143~2_combout\ & ((\inputA[12]~input_o\) # (\inputB[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[12]~input_o\,
	datab => \ALT_INV_inputA[12]~input_o\,
	datac => \ALT_INV_Mux143~2_combout\,
	datad => \ALT_INV_Mux140~4_combout\,
	dataf => \ALT_INV_Mux143~1_combout\,
	combout => \Mux140~5_combout\);

-- Location: MLABCELL_X13_Y4_N27
\Mux140~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux140~6_combout\ = ( \Mux140~2_combout\ & ( \Mux140~5_combout\ ) ) # ( !\Mux140~2_combout\ & ( \Mux140~5_combout\ ) ) # ( \Mux140~2_combout\ & ( !\Mux140~5_combout\ & ( (!\aluControl[0]~input_o\ & ((\Mux140~3_combout\) # (\aluControl[3]~input_o\))) ) ) 
-- ) # ( !\Mux140~2_combout\ & ( !\Mux140~5_combout\ & ( (!\aluControl[3]~input_o\ & (!\aluControl[0]~input_o\ & \Mux140~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000010011000100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux140~3_combout\,
	datae => \ALT_INV_Mux140~2_combout\,
	dataf => \ALT_INV_Mux140~5_combout\,
	combout => \Mux140~6_combout\);

-- Location: MLABCELL_X13_Y4_N15
\res[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(12) = ( res(12) & ( (\Mux160~0_combout\) # (\Mux140~6_combout\) ) ) # ( !res(12) & ( (\Mux140~6_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux140~6_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(12),
	combout => res(12));

-- Location: LABCELL_X10_Y6_N30
\Mux152~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~3_combout\ = ( \aluControl[2]~input_o\ & ( \aluControl[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[2]~input_o\,
	combout => \Mux152~3_combout\);

-- Location: LABCELL_X10_Y6_N54
\Mux152~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~0_combout\ = ( \aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & \shamt[0]~input_o\) ) ) # ( !\aluControl[0]~input_o\ & ( !\aluControl[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux152~0_combout\);

-- Location: MLABCELL_X18_Y4_N9
\Mux128~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~52_combout\ = (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & ((\inputB[23]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux128~52_combout\);

-- Location: LABCELL_X20_Y5_N30
\Mux128~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~44_combout\ = ( \inputB[21]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[29]~input_o\))) ) ) # ( !\inputB[21]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputA[3]~input_o\ & \inputB[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputB[21]~input_o\,
	combout => \Mux128~44_combout\);

-- Location: LABCELL_X17_Y4_N30
\Mux128~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~53_combout\ = ( \Mux128~52_combout\ & ( \Mux128~44_combout\ & ( ((!\inputA[1]~input_o\ & (\Mux128~28_combout\)) # (\inputA[1]~input_o\ & ((\Mux128~34_combout\)))) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux128~52_combout\ & ( \Mux128~44_combout\ & ( 
-- (!\inputA[1]~input_o\ & (((\inputA[2]~input_o\)) # (\Mux128~28_combout\))) # (\inputA[1]~input_o\ & (((\Mux128~34_combout\ & !\inputA[2]~input_o\)))) ) ) ) # ( \Mux128~52_combout\ & ( !\Mux128~44_combout\ & ( (!\inputA[1]~input_o\ & (\Mux128~28_combout\ & 
-- ((!\inputA[2]~input_o\)))) # (\inputA[1]~input_o\ & (((\inputA[2]~input_o\) # (\Mux128~34_combout\)))) ) ) ) # ( !\Mux128~52_combout\ & ( !\Mux128~44_combout\ & ( (!\inputA[2]~input_o\ & ((!\inputA[1]~input_o\ & (\Mux128~28_combout\)) # 
-- (\inputA[1]~input_o\ & ((\Mux128~34_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~28_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~34_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_Mux128~52_combout\,
	dataf => \ALT_INV_Mux128~44_combout\,
	combout => \Mux128~53_combout\);

-- Location: MLABCELL_X18_Y4_N42
\Mux65~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~37_combout\ = ( !\inputA[2]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[15]~input_o\)) # (\inputA[3]~input_o\ & (((\inputB[7]~input_o\)))))) ) ) # ( \inputA[2]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & 
-- (\inputB[11]~input_o\)) # (\inputA[3]~input_o\ & (((\inputB[3]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000001000000010000010101000101010001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputB[7]~input_o\,
	datag => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux65~37_combout\);

-- Location: LABCELL_X16_Y3_N36
\Mux65~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~41_combout\ = ( !\inputA[2]~input_o\ & ( ((!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[14]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[6]~input_o\)))))) ) ) # ( \inputA[2]~input_o\ & ( ((!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ 
-- & ((\inputB[10]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputB[6]~input_o\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	datag => \ALT_INV_inputB[14]~input_o\,
	combout => \Mux65~41_combout\);

-- Location: LABCELL_X16_Y4_N30
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\inputA[4]~input_o\ & \inputB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[4]~input_o\,
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X20_Y6_N6
\Mux128~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~33_combout\ = ( \inputB[8]~input_o\ & ( !\inputA[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[8]~input_o\,
	combout => \Mux128~33_combout\);

-- Location: LABCELL_X20_Y6_N36
\Mux128~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~51_combout\ = ( \inputB[16]~input_o\ & ( (!\inputA[4]~input_o\) # (\inputB[0]~input_o\) ) ) # ( !\inputB[16]~input_o\ & ( (\inputA[4]~input_o\ & \inputB[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \Mux128~51_combout\);

-- Location: LABCELL_X20_Y6_N9
\Mux128~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~32_combout\ = (!\inputA[4]~input_o\ & \inputB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[12]~input_o\,
	combout => \Mux128~32_combout\);

-- Location: LABCELL_X20_Y6_N18
\Mux65~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~12_combout\ = ( \Mux128~51_combout\ & ( \Mux128~32_combout\ & ( (!\inputA[3]~input_o\) # ((!\inputA[2]~input_o\ & ((\Mux128~33_combout\))) # (\inputA[2]~input_o\ & (\LessThan0~7_combout\))) ) ) ) # ( !\Mux128~51_combout\ & ( \Mux128~32_combout\ & ( 
-- (!\inputA[2]~input_o\ & (((\inputA[3]~input_o\ & \Mux128~33_combout\)))) # (\inputA[2]~input_o\ & (((!\inputA[3]~input_o\)) # (\LessThan0~7_combout\))) ) ) ) # ( \Mux128~51_combout\ & ( !\Mux128~32_combout\ & ( (!\inputA[2]~input_o\ & 
-- (((!\inputA[3]~input_o\) # (\Mux128~33_combout\)))) # (\inputA[2]~input_o\ & (\LessThan0~7_combout\ & (\inputA[3]~input_o\))) ) ) ) # ( !\Mux128~51_combout\ & ( !\Mux128~32_combout\ & ( (\inputA[3]~input_o\ & ((!\inputA[2]~input_o\ & 
-- ((\Mux128~33_combout\))) # (\inputA[2]~input_o\ & (\LessThan0~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_LessThan0~7_combout\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_Mux128~33_combout\,
	datae => \ALT_INV_Mux128~51_combout\,
	dataf => \ALT_INV_Mux128~32_combout\,
	combout => \Mux65~12_combout\);

-- Location: LABCELL_X14_Y6_N36
\Mux144~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~1_combout\ = ( \Mux65~12_combout\ & ( \Mux65~45_combout\ & ( (!\inputA[1]~input_o\ & (((!\inputA[0]~input_o\)) # (\Mux65~37_combout\))) # (\inputA[1]~input_o\ & (((\inputA[0]~input_o\) # (\Mux65~41_combout\)))) ) ) ) # ( !\Mux65~12_combout\ & ( 
-- \Mux65~45_combout\ & ( (!\inputA[1]~input_o\ & (\Mux65~37_combout\ & ((\inputA[0]~input_o\)))) # (\inputA[1]~input_o\ & (((\inputA[0]~input_o\) # (\Mux65~41_combout\)))) ) ) ) # ( \Mux65~12_combout\ & ( !\Mux65~45_combout\ & ( (!\inputA[1]~input_o\ & 
-- (((!\inputA[0]~input_o\)) # (\Mux65~37_combout\))) # (\inputA[1]~input_o\ & (((\Mux65~41_combout\ & !\inputA[0]~input_o\)))) ) ) ) # ( !\Mux65~12_combout\ & ( !\Mux65~45_combout\ & ( (!\inputA[1]~input_o\ & (\Mux65~37_combout\ & ((\inputA[0]~input_o\)))) 
-- # (\inputA[1]~input_o\ & (((\Mux65~41_combout\ & !\inputA[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~37_combout\,
	datab => \ALT_INV_Mux65~41_combout\,
	datac => \ALT_INV_inputA[1]~input_o\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~12_combout\,
	dataf => \ALT_INV_Mux65~45_combout\,
	combout => \Mux144~1_combout\);

-- Location: LABCELL_X21_Y4_N42
\Mux128~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~49_combout\ = ( \inputB[22]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # (\inputB[30]~input_o\))) ) ) # ( !\inputB[22]~input_o\ & ( (\inputA[3]~input_o\ & (!\inputA[4]~input_o\ & \inputB[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \Mux128~49_combout\);

-- Location: LABCELL_X21_Y5_N0
\Mux128~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~50_combout\ = ( \inputA[1]~input_o\ & ( \Mux128~49_combout\ & ( (\inputA[2]~input_o\) # (\Mux128~30_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux128~49_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux128~26_combout\))) # (\inputA[2]~input_o\ & 
-- (\Mux128~39_combout\)) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux128~49_combout\ & ( (\Mux128~30_combout\ & !\inputA[2]~input_o\) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux128~49_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux128~26_combout\))) # 
-- (\inputA[2]~input_o\ & (\Mux128~39_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~30_combout\,
	datab => \ALT_INV_Mux128~39_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux128~26_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux128~49_combout\,
	combout => \Mux128~50_combout\);

-- Location: MLABCELL_X9_Y7_N27
\Mux144~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~2_combout\ = ( \Mux128~50_combout\ & ( (!\aluControl[0]~input_o\ & (((\Mux144~1_combout\)))) # (\aluControl[0]~input_o\ & ((!\inputA[0]~input_o\) # ((\Mux128~53_combout\)))) ) ) # ( !\Mux128~50_combout\ & ( (!\aluControl[0]~input_o\ & 
-- (((\Mux144~1_combout\)))) # (\aluControl[0]~input_o\ & (\inputA[0]~input_o\ & (\Mux128~53_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux128~53_combout\,
	datad => \ALT_INV_Mux144~1_combout\,
	dataf => \ALT_INV_Mux128~50_combout\,
	combout => \Mux144~2_combout\);

-- Location: LABCELL_X16_Y4_N42
\Mux64~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~50_combout\ = ( \inputB[22]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\) # (\inputB[30]~input_o\))) ) ) # ( !\inputB[22]~input_o\ & ( (!\shamt[4]~input_o\ & (\inputB[30]~input_o\ & \shamt[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \Mux64~50_combout\);

-- Location: LABCELL_X17_Y6_N24
\Mux64~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~51_combout\ = ( \shamt[1]~input_o\ & ( \Mux64~26_combout\ & ( (!\shamt[2]~input_o\ & (\Mux64~30_combout\)) # (\shamt[2]~input_o\ & ((\Mux64~50_combout\))) ) ) ) # ( !\shamt[1]~input_o\ & ( \Mux64~26_combout\ & ( (!\shamt[2]~input_o\) # 
-- (\Mux64~40_combout\) ) ) ) # ( \shamt[1]~input_o\ & ( !\Mux64~26_combout\ & ( (!\shamt[2]~input_o\ & (\Mux64~30_combout\)) # (\shamt[2]~input_o\ & ((\Mux64~50_combout\))) ) ) ) # ( !\shamt[1]~input_o\ & ( !\Mux64~26_combout\ & ( (\shamt[2]~input_o\ & 
-- \Mux64~40_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_Mux64~40_combout\,
	datac => \ALT_INV_Mux64~30_combout\,
	datad => \ALT_INV_Mux64~50_combout\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_Mux64~26_combout\,
	combout => \Mux64~51_combout\);

-- Location: MLABCELL_X18_Y4_N33
\Mux64~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~53_combout\ = ( \shamt[3]~input_o\ & ( (\inputB[31]~input_o\ & !\shamt[4]~input_o\) ) ) # ( !\shamt[3]~input_o\ & ( (\inputB[23]~input_o\ & !\shamt[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~53_combout\);

-- Location: LABCELL_X20_Y5_N39
\Mux64~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~45_combout\ = ( \inputB[29]~input_o\ & ( (!\shamt[4]~input_o\ & ((\shamt[3]~input_o\) # (\inputB[21]~input_o\))) ) ) # ( !\inputB[29]~input_o\ & ( (\inputB[21]~input_o\ & (!\shamt[3]~input_o\ & !\shamt[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux64~45_combout\);

-- Location: LABCELL_X19_Y5_N0
\Mux64~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~54_combout\ = ( \shamt[2]~input_o\ & ( \Mux64~35_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux64~45_combout\))) # (\shamt[1]~input_o\ & (\Mux64~53_combout\)) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux64~35_combout\ & ( (\Mux64~28_combout\) # 
-- (\shamt[1]~input_o\) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux64~35_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux64~45_combout\))) # (\shamt[1]~input_o\ & (\Mux64~53_combout\)) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux64~35_combout\ & ( (!\shamt[1]~input_o\ & 
-- \Mux64~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~53_combout\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_Mux64~45_combout\,
	datad => \ALT_INV_Mux64~28_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux64~35_combout\,
	combout => \Mux64~54_combout\);

-- Location: LABCELL_X16_Y4_N39
\Mux64~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~32_combout\ = (!\shamt[4]~input_o\ & \inputB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[12]~input_o\,
	combout => \Mux64~32_combout\);

-- Location: LABCELL_X19_Y2_N12
\Mux64~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~34_combout\ = ( \inputB[8]~input_o\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[8]~input_o\,
	combout => \Mux64~34_combout\);

-- Location: LABCELL_X16_Y4_N45
\Mux64~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~33_combout\ = (!\shamt[4]~input_o\ & \inputB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputB[4]~input_o\,
	combout => \Mux64~33_combout\);

-- Location: LABCELL_X20_Y5_N27
\Mux64~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~52_combout\ = ( \inputB[0]~input_o\ & ( (\inputB[16]~input_o\) # (\shamt[4]~input_o\) ) ) # ( !\inputB[0]~input_o\ & ( (!\shamt[4]~input_o\ & \inputB[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputB[16]~input_o\,
	dataf => \ALT_INV_inputB[0]~input_o\,
	combout => \Mux64~52_combout\);

-- Location: LABCELL_X19_Y6_N12
\Mux1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~12_combout\ = ( \shamt[2]~input_o\ & ( \Mux64~52_combout\ & ( (!\shamt[3]~input_o\ & (\Mux64~32_combout\)) # (\shamt[3]~input_o\ & ((\Mux64~33_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux64~52_combout\ & ( (!\shamt[3]~input_o\) # 
-- (\Mux64~34_combout\) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux64~52_combout\ & ( (!\shamt[3]~input_o\ & (\Mux64~32_combout\)) # (\shamt[3]~input_o\ & ((\Mux64~33_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux64~52_combout\ & ( (\shamt[3]~input_o\ & 
-- \Mux64~34_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~32_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux64~34_combout\,
	datad => \ALT_INV_Mux64~33_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux64~52_combout\,
	combout => \Mux1~12_combout\);

-- Location: MLABCELL_X18_Y4_N12
\Mux1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~37_combout\ = ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & (\inputB[15]~input_o\)) # (\shamt[3]~input_o\ & (((\inputB[7]~input_o\)))))) ) ) # ( \shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & 
-- (\inputB[11]~input_o\)) # (\shamt[3]~input_o\ & (((\inputB[3]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000001000000010000100110001001100010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_inputB[7]~input_o\,
	datag => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux1~37_combout\);

-- Location: MLABCELL_X18_Y4_N48
\Mux1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~41_combout\ = ( !\shamt[2]~input_o\ & ( ((!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & ((\inputB[14]~input_o\))) # (\shamt[3]~input_o\ & (\inputB[6]~input_o\))))) ) ) # ( \shamt[2]~input_o\ & ( ((!\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & 
-- ((\inputB[10]~input_o\))) # (\shamt[3]~input_o\ & (\inputB[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	datag => \ALT_INV_inputB[14]~input_o\,
	combout => \Mux1~41_combout\);

-- Location: LABCELL_X19_Y6_N54
\Mux144~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~3_combout\ = ( \Mux1~37_combout\ & ( \Mux1~41_combout\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\) # (\Mux1~12_combout\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\Mux1~45_combout\))) ) ) ) # ( !\Mux1~37_combout\ & ( 
-- \Mux1~41_combout\ & ( (!\shamt[1]~input_o\ & (((\Mux1~12_combout\ & !\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\Mux1~45_combout\))) ) ) ) # ( \Mux1~37_combout\ & ( !\Mux1~41_combout\ & ( (!\shamt[1]~input_o\ & 
-- (((\shamt[0]~input_o\) # (\Mux1~12_combout\)))) # (\shamt[1]~input_o\ & (\Mux1~45_combout\ & ((\shamt[0]~input_o\)))) ) ) ) # ( !\Mux1~37_combout\ & ( !\Mux1~41_combout\ & ( (!\shamt[1]~input_o\ & (((\Mux1~12_combout\ & !\shamt[0]~input_o\)))) # 
-- (\shamt[1]~input_o\ & (\Mux1~45_combout\ & ((\shamt[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~45_combout\,
	datab => \ALT_INV_Mux1~12_combout\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_Mux1~37_combout\,
	dataf => \ALT_INV_Mux1~41_combout\,
	combout => \Mux144~3_combout\);

-- Location: LABCELL_X10_Y7_N3
\Mux152~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~1_combout\ = ( \aluControl[0]~input_o\ & ( !\aluControl[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux152~1_combout\);

-- Location: LABCELL_X10_Y7_N48
\Mux144~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~4_combout\ = ( \Mux144~3_combout\ & ( \Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux64~51_combout\)) # (\Mux152~0_combout\ & ((\Mux64~54_combout\))) ) ) ) # ( !\Mux144~3_combout\ & ( \Mux152~1_combout\ & ( (!\Mux152~0_combout\ & 
-- (\Mux64~51_combout\)) # (\Mux152~0_combout\ & ((\Mux64~54_combout\))) ) ) ) # ( \Mux144~3_combout\ & ( !\Mux152~1_combout\ & ( (\Mux144~2_combout\) # (\Mux152~0_combout\) ) ) ) # ( !\Mux144~3_combout\ & ( !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & 
-- \Mux144~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~0_combout\,
	datab => \ALT_INV_Mux144~2_combout\,
	datac => \ALT_INV_Mux64~51_combout\,
	datad => \ALT_INV_Mux64~54_combout\,
	datae => \ALT_INV_Mux144~3_combout\,
	dataf => \ALT_INV_Mux152~1_combout\,
	combout => \Mux144~4_combout\);

-- Location: IOIBUF_X12_Y45_N18
\inputA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(16),
	o => \inputA[16]~input_o\);

-- Location: LABCELL_X10_Y8_N45
\res~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~0_combout\ = ( !\inputA[16]~input_o\ & ( !\inputB[16]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[16]~input_o\,
	dataf => \ALT_INV_inputA[16]~input_o\,
	combout => \res~0_combout\);

-- Location: LABCELL_X10_Y6_N36
\Mux152~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~2_combout\ = ( \aluControl[2]~input_o\ & ( (\aluControl[0]~input_o\ & \aluControl[3]~input_o\) ) ) # ( !\aluControl[2]~input_o\ & ( \aluControl[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[2]~input_o\,
	combout => \Mux152~2_combout\);

-- Location: IOIBUF_X14_Y45_N1
\inputA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(15),
	o => \inputA[15]~input_o\);

-- Location: IOIBUF_X12_Y45_N35
\inputA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(14),
	o => \inputA[14]~input_o\);

-- Location: LABCELL_X10_Y4_N45
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \inputA[14]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[14]~input_o\) ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \inputA[14]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[14]~input_o\) ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputA[14]~input_o\,
	dataf => \ALT_INV_inputB[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X10_Y4_N48
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[15]~input_o\) ) + ( \inputA[15]~input_o\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[15]~input_o\) ) + ( \inputA[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputA[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X10_Y4_N51
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \inputA[16]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[16]~input_o\) ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \inputA[16]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[16]~input_o\) ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[16]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X10_Y7_N12
\Mux144~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~0_combout\ = ( \inputB[16]~input_o\ & ( (!\aluControl[0]~input_o\ & ((!\aluControl[1]~input_o\ & ((\inputA[16]~input_o\))) # (\aluControl[1]~input_o\ & (\Add0~65_sumout\)))) # (\aluControl[0]~input_o\ & (!\aluControl[1]~input_o\)) ) ) # ( 
-- !\inputB[16]~input_o\ & ( (!\aluControl[0]~input_o\ & (\aluControl[1]~input_o\ & (\Add0~65_sumout\))) # (\aluControl[0]~input_o\ & (!\aluControl[1]~input_o\ & ((\inputA[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Add0~65_sumout\,
	datad => \ALT_INV_inputA[16]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \Mux144~0_combout\);

-- Location: LABCELL_X10_Y7_N36
\Mux144~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux144~5_combout\ = ( \Mux152~2_combout\ & ( \Mux144~0_combout\ & ( (!\Mux152~3_combout\ & (\Mux144~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[0]~input_o\))) ) ) ) # ( !\Mux152~2_combout\ & ( \Mux144~0_combout\ & ( (!\Mux152~3_combout\) # 
-- (\res~0_combout\) ) ) ) # ( \Mux152~2_combout\ & ( !\Mux144~0_combout\ & ( (!\Mux152~3_combout\ & (\Mux144~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[0]~input_o\))) ) ) ) # ( !\Mux152~2_combout\ & ( !\Mux144~0_combout\ & ( (\Mux152~3_combout\ & 
-- \res~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~3_combout\,
	datab => \ALT_INV_Mux144~4_combout\,
	datac => \ALT_INV_res~0_combout\,
	datad => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_Mux152~2_combout\,
	dataf => \ALT_INV_Mux144~0_combout\,
	combout => \Mux144~5_combout\);

-- Location: LABCELL_X10_Y7_N30
\res[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(16) = ( res(16) & ( (\Mux160~0_combout\) # (\Mux144~5_combout\) ) ) # ( !res(16) & ( (\Mux144~5_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux144~5_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(16),
	combout => res(16));

-- Location: LABCELL_X14_Y4_N48
\Mux128~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~37_combout\ = ( \inputB[5]~input_o\ & ( !\inputA[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux128~37_combout\);

-- Location: LABCELL_X14_Y4_N51
\Mux128~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~36_combout\ = (!\inputA[4]~input_o\ & \inputB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[13]~input_o\,
	combout => \Mux128~36_combout\);

-- Location: MLABCELL_X23_Y4_N39
\Mux128~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~38_combout\ = ( \inputB[9]~input_o\ & ( !\inputA[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[9]~input_o\,
	combout => \Mux128~38_combout\);

-- Location: LABCELL_X19_Y4_N24
\Mux128~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~54_combout\ = ( \inputA[4]~input_o\ & ( \inputB[1]~input_o\ ) ) # ( !\inputA[4]~input_o\ & ( \inputB[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux128~54_combout\);

-- Location: LABCELL_X14_Y4_N6
\Mux65~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~13_combout\ = ( \Mux128~38_combout\ & ( \Mux128~54_combout\ & ( (!\inputA[2]~input_o\) # ((!\inputA[3]~input_o\ & ((\Mux128~36_combout\))) # (\inputA[3]~input_o\ & (\Mux128~37_combout\))) ) ) ) # ( !\Mux128~38_combout\ & ( \Mux128~54_combout\ & ( 
-- (!\inputA[2]~input_o\ & (((!\inputA[3]~input_o\)))) # (\inputA[2]~input_o\ & ((!\inputA[3]~input_o\ & ((\Mux128~36_combout\))) # (\inputA[3]~input_o\ & (\Mux128~37_combout\)))) ) ) ) # ( \Mux128~38_combout\ & ( !\Mux128~54_combout\ & ( 
-- (!\inputA[2]~input_o\ & (((\inputA[3]~input_o\)))) # (\inputA[2]~input_o\ & ((!\inputA[3]~input_o\ & ((\Mux128~36_combout\))) # (\inputA[3]~input_o\ & (\Mux128~37_combout\)))) ) ) ) # ( !\Mux128~38_combout\ & ( !\Mux128~54_combout\ & ( 
-- (\inputA[2]~input_o\ & ((!\inputA[3]~input_o\ & ((\Mux128~36_combout\))) # (\inputA[3]~input_o\ & (\Mux128~37_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~37_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux128~36_combout\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_Mux128~38_combout\,
	dataf => \ALT_INV_Mux128~54_combout\,
	combout => \Mux65~13_combout\);

-- Location: LABCELL_X14_Y6_N42
\Mux145~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~1_combout\ = ( \Mux65~41_combout\ & ( \inputA[1]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux65~37_combout\) ) ) ) # ( !\Mux65~41_combout\ & ( \inputA[1]~input_o\ & ( (\Mux65~37_combout\ & !\inputA[0]~input_o\) ) ) ) # ( \Mux65~41_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux65~13_combout\))) # (\inputA[0]~input_o\ & (\Mux65~12_combout\)) ) ) ) # ( !\Mux65~41_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux65~13_combout\))) # (\inputA[0]~input_o\ & 
-- (\Mux65~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~12_combout\,
	datab => \ALT_INV_Mux65~13_combout\,
	datac => \ALT_INV_Mux65~37_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~41_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux145~1_combout\);

-- Location: LABCELL_X20_Y6_N39
\Mux128~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~55_combout\ = ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux128~55_combout\);

-- Location: LABCELL_X21_Y5_N18
\Mux128~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~56_combout\ = ( \inputA[1]~input_o\ & ( \Mux128~49_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~39_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~55_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux128~49_combout\ & ( (\inputA[2]~input_o\) # 
-- (\Mux128~30_combout\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux128~49_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~39_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~55_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux128~49_combout\ & ( 
-- (\Mux128~30_combout\ & !\inputA[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~30_combout\,
	datab => \ALT_INV_Mux128~39_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux128~55_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux128~49_combout\,
	combout => \Mux128~56_combout\);

-- Location: LABCELL_X10_Y7_N0
\Mux145~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~2_combout\ = ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux128~53_combout\))) # (\inputA[0]~input_o\ & (\Mux128~56_combout\)) ) ) # ( !\aluControl[0]~input_o\ & ( \Mux145~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_Mux145~1_combout\,
	datac => \ALT_INV_Mux128~56_combout\,
	datad => \ALT_INV_Mux128~53_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux145~2_combout\);

-- Location: LABCELL_X10_Y5_N18
\Mux64~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~56_combout\ = ( \inputB[24]~input_o\ & ( (!\shamt[4]~input_o\ & !\shamt[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_inputB[24]~input_o\,
	combout => \Mux64~56_combout\);

-- Location: LABCELL_X10_Y2_N30
\Mux64~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~57_combout\ = ( \shamt[2]~input_o\ & ( \Mux64~30_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux64~50_combout\))) # (\shamt[1]~input_o\ & (\Mux64~56_combout\)) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux64~30_combout\ & ( (!\shamt[1]~input_o\) # 
-- (\Mux64~40_combout\) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux64~30_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux64~50_combout\))) # (\shamt[1]~input_o\ & (\Mux64~56_combout\)) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux64~30_combout\ & ( (\shamt[1]~input_o\ & 
-- \Mux64~40_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_Mux64~56_combout\,
	datac => \ALT_INV_Mux64~50_combout\,
	datad => \ALT_INV_Mux64~40_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux64~30_combout\,
	combout => \Mux64~57_combout\);

-- Location: MLABCELL_X23_Y4_N51
\Mux64~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~39_combout\ = ( \inputB[9]~input_o\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[9]~input_o\,
	combout => \Mux64~39_combout\);

-- Location: LABCELL_X19_Y4_N27
\Mux64~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~55_combout\ = ( \shamt[4]~input_o\ & ( \inputB[1]~input_o\ ) ) # ( !\shamt[4]~input_o\ & ( \inputB[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux64~55_combout\);

-- Location: MLABCELL_X23_Y4_N48
\Mux64~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~38_combout\ = ( \inputB[5]~input_o\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux64~38_combout\);

-- Location: MLABCELL_X23_Y4_N18
\Mux64~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~37_combout\ = ( \inputB[13]~input_o\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	combout => \Mux64~37_combout\);

-- Location: MLABCELL_X23_Y4_N42
\Mux1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~13_combout\ = ( \Mux64~38_combout\ & ( \Mux64~37_combout\ & ( ((!\shamt[3]~input_o\ & ((\Mux64~55_combout\))) # (\shamt[3]~input_o\ & (\Mux64~39_combout\))) # (\shamt[2]~input_o\) ) ) ) # ( !\Mux64~38_combout\ & ( \Mux64~37_combout\ & ( 
-- (!\shamt[3]~input_o\ & (((\Mux64~55_combout\)) # (\shamt[2]~input_o\))) # (\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & (\Mux64~39_combout\))) ) ) ) # ( \Mux64~38_combout\ & ( !\Mux64~37_combout\ & ( (!\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & 
-- ((\Mux64~55_combout\)))) # (\shamt[3]~input_o\ & (((\Mux64~39_combout\)) # (\shamt[2]~input_o\))) ) ) ) # ( !\Mux64~38_combout\ & ( !\Mux64~37_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & ((\Mux64~55_combout\))) # (\shamt[3]~input_o\ & 
-- (\Mux64~39_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~39_combout\,
	datad => \ALT_INV_Mux64~55_combout\,
	datae => \ALT_INV_Mux64~38_combout\,
	dataf => \ALT_INV_Mux64~37_combout\,
	combout => \Mux1~13_combout\);

-- Location: LABCELL_X19_Y6_N36
\Mux145~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~3_combout\ = ( \Mux1~37_combout\ & ( \Mux1~12_combout\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\) # (\Mux1~13_combout\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\Mux1~41_combout\))) ) ) ) # ( !\Mux1~37_combout\ & ( 
-- \Mux1~12_combout\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\) # (\Mux1~13_combout\)))) # (\shamt[1]~input_o\ & (\Mux1~41_combout\ & ((\shamt[0]~input_o\)))) ) ) ) # ( \Mux1~37_combout\ & ( !\Mux1~12_combout\ & ( (!\shamt[1]~input_o\ & 
-- (((\Mux1~13_combout\ & !\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\Mux1~41_combout\))) ) ) ) # ( !\Mux1~37_combout\ & ( !\Mux1~12_combout\ & ( (!\shamt[1]~input_o\ & (((\Mux1~13_combout\ & !\shamt[0]~input_o\)))) # 
-- (\shamt[1]~input_o\ & (\Mux1~41_combout\ & ((\shamt[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~41_combout\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_Mux1~13_combout\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_Mux1~37_combout\,
	dataf => \ALT_INV_Mux1~12_combout\,
	combout => \Mux145~3_combout\);

-- Location: LABCELL_X10_Y7_N42
\Mux145~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~4_combout\ = ( \Mux145~3_combout\ & ( \Mux152~0_combout\ & ( (!\Mux152~1_combout\) # (\Mux64~57_combout\) ) ) ) # ( !\Mux145~3_combout\ & ( \Mux152~0_combout\ & ( (\Mux152~1_combout\ & \Mux64~57_combout\) ) ) ) # ( \Mux145~3_combout\ & ( 
-- !\Mux152~0_combout\ & ( (!\Mux152~1_combout\ & (\Mux145~2_combout\)) # (\Mux152~1_combout\ & ((\Mux64~54_combout\))) ) ) ) # ( !\Mux145~3_combout\ & ( !\Mux152~0_combout\ & ( (!\Mux152~1_combout\ & (\Mux145~2_combout\)) # (\Mux152~1_combout\ & 
-- ((\Mux64~54_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~1_combout\,
	datab => \ALT_INV_Mux145~2_combout\,
	datac => \ALT_INV_Mux64~57_combout\,
	datad => \ALT_INV_Mux64~54_combout\,
	datae => \ALT_INV_Mux145~3_combout\,
	dataf => \ALT_INV_Mux152~0_combout\,
	combout => \Mux145~4_combout\);

-- Location: IOIBUF_X18_Y45_N1
\inputA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(17),
	o => \inputA[17]~input_o\);

-- Location: LABCELL_X10_Y4_N54
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \inputA[17]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[17]~input_o\) ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \inputA[17]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[17]~input_o\) ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputA[17]~input_o\,
	dataf => \ALT_INV_inputB[17]~input_o\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X10_Y8_N48
\Mux145~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~0_combout\ = ( \inputA[17]~input_o\ & ( (!\aluControl[0]~input_o\ & ((!\aluControl[1]~input_o\ & (\inputB[17]~input_o\)) # (\aluControl[1]~input_o\ & ((\Add0~69_sumout\))))) # (\aluControl[0]~input_o\ & (((!\aluControl[1]~input_o\)))) ) ) # ( 
-- !\inputA[17]~input_o\ & ( (!\aluControl[0]~input_o\ & (((\aluControl[1]~input_o\ & \Add0~69_sumout\)))) # (\aluControl[0]~input_o\ & (\inputB[17]~input_o\ & (!\aluControl[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100000001110001110000011111000111000001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[17]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Add0~69_sumout\,
	dataf => \ALT_INV_inputA[17]~input_o\,
	combout => \Mux145~0_combout\);

-- Location: LABCELL_X10_Y8_N51
\res~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~1_combout\ = ( !\inputA[17]~input_o\ & ( !\inputB[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputA[17]~input_o\,
	combout => \res~1_combout\);

-- Location: LABCELL_X10_Y6_N48
\Mux145~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux145~5_combout\ = ( \res~1_combout\ & ( \Mux152~2_combout\ & ( (!\Mux152~3_combout\ & (\Mux145~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[1]~input_o\))) ) ) ) # ( !\res~1_combout\ & ( \Mux152~2_combout\ & ( (!\Mux152~3_combout\ & 
-- (\Mux145~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[1]~input_o\))) ) ) ) # ( \res~1_combout\ & ( !\Mux152~2_combout\ & ( (\Mux152~3_combout\) # (\Mux145~0_combout\) ) ) ) # ( !\res~1_combout\ & ( !\Mux152~2_combout\ & ( (\Mux145~0_combout\ & 
-- !\Mux152~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux145~4_combout\,
	datab => \ALT_INV_Mux145~0_combout\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_Mux152~3_combout\,
	datae => \ALT_INV_res~1_combout\,
	dataf => \ALT_INV_Mux152~2_combout\,
	combout => \Mux145~5_combout\);

-- Location: LABCELL_X10_Y6_N57
\res[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(17) = ( \Mux160~0_combout\ & ( res(17) ) ) # ( !\Mux160~0_combout\ & ( \Mux145~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux145~5_combout\,
	datad => ALT_INV_res(17),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(17));

-- Location: LABCELL_X17_Y4_N12
\Mux128~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~45_combout\ = ( \Mux128~24_combout\ & ( \Mux128~44_combout\ & ( (!\inputA[1]~input_o\ & (((!\inputA[2]~input_o\) # (\Mux128~34_combout\)))) # (\inputA[1]~input_o\ & (((\inputA[2]~input_o\)) # (\Mux128~28_combout\))) ) ) ) # ( !\Mux128~24_combout\ 
-- & ( \Mux128~44_combout\ & ( (!\inputA[1]~input_o\ & (((\Mux128~34_combout\ & \inputA[2]~input_o\)))) # (\inputA[1]~input_o\ & (((\inputA[2]~input_o\)) # (\Mux128~28_combout\))) ) ) ) # ( \Mux128~24_combout\ & ( !\Mux128~44_combout\ & ( 
-- (!\inputA[1]~input_o\ & (((!\inputA[2]~input_o\) # (\Mux128~34_combout\)))) # (\inputA[1]~input_o\ & (\Mux128~28_combout\ & ((!\inputA[2]~input_o\)))) ) ) ) # ( !\Mux128~24_combout\ & ( !\Mux128~44_combout\ & ( (!\inputA[1]~input_o\ & 
-- (((\Mux128~34_combout\ & \inputA[2]~input_o\)))) # (\inputA[1]~input_o\ & (\Mux128~28_combout\ & ((!\inputA[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~28_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~34_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_Mux128~24_combout\,
	dataf => \ALT_INV_Mux128~44_combout\,
	combout => \Mux128~45_combout\);

-- Location: LABCELL_X19_Y5_N54
\Mux64~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~46_combout\ = ( \shamt[1]~input_o\ & ( \Mux64~24_combout\ & ( (!\shamt[2]~input_o\ & ((\Mux64~28_combout\))) # (\shamt[2]~input_o\ & (\Mux64~45_combout\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \Mux64~24_combout\ & ( (!\shamt[2]~input_o\) # 
-- (\Mux64~35_combout\) ) ) ) # ( \shamt[1]~input_o\ & ( !\Mux64~24_combout\ & ( (!\shamt[2]~input_o\ & ((\Mux64~28_combout\))) # (\shamt[2]~input_o\ & (\Mux64~45_combout\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\Mux64~24_combout\ & ( (\Mux64~35_combout\ & 
-- \shamt[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~35_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~45_combout\,
	datad => \ALT_INV_Mux64~28_combout\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_Mux64~24_combout\,
	combout => \Mux64~46_combout\);

-- Location: LABCELL_X12_Y4_N6
\Mux142~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~4_combout\ = ( \Mux64~46_combout\ & ( \Mux64~41_combout\ & ( (!\aluControl[1]~input_o\) # ((!\Mux143~0_combout\ & ((\Mux128~40_combout\))) # (\Mux143~0_combout\ & (\Mux128~45_combout\))) ) ) ) # ( !\Mux64~46_combout\ & ( \Mux64~41_combout\ & ( 
-- (!\Mux143~0_combout\ & (((!\aluControl[1]~input_o\) # (\Mux128~40_combout\)))) # (\Mux143~0_combout\ & (\Mux128~45_combout\ & ((\aluControl[1]~input_o\)))) ) ) ) # ( \Mux64~46_combout\ & ( !\Mux64~41_combout\ & ( (!\Mux143~0_combout\ & 
-- (((\Mux128~40_combout\ & \aluControl[1]~input_o\)))) # (\Mux143~0_combout\ & (((!\aluControl[1]~input_o\)) # (\Mux128~45_combout\))) ) ) ) # ( !\Mux64~46_combout\ & ( !\Mux64~41_combout\ & ( (\aluControl[1]~input_o\ & ((!\Mux143~0_combout\ & 
-- ((\Mux128~40_combout\))) # (\Mux143~0_combout\ & (\Mux128~45_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux143~0_combout\,
	datab => \ALT_INV_Mux128~45_combout\,
	datac => \ALT_INV_Mux128~40_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux64~46_combout\,
	dataf => \ALT_INV_Mux64~41_combout\,
	combout => \Mux142~4_combout\);

-- Location: MLABCELL_X13_Y3_N42
\Mux142~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~5_combout\ = ( \Mux143~2_combout\ & ( (!\Mux143~1_combout\ & ((\inputB[14]~input_o\) # (\inputA[14]~input_o\))) ) ) # ( !\Mux143~2_combout\ & ( (\Mux143~1_combout\ & \Mux142~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[14]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_Mux143~1_combout\,
	datad => \ALT_INV_Mux142~4_combout\,
	dataf => \ALT_INV_Mux143~2_combout\,
	combout => \Mux142~5_combout\);

-- Location: MLABCELL_X13_Y3_N45
\Mux142~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~3_combout\ = ( \Add0~57_sumout\ & ( ((\inputA[14]~input_o\ & \inputB[14]~input_o\)) # (\aluControl[1]~input_o\) ) ) # ( !\Add0~57_sumout\ & ( (\inputA[14]~input_o\ & (\inputB[14]~input_o\ & !\aluControl[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[14]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \Mux142~3_combout\);

-- Location: LABCELL_X14_Y3_N18
\Mux142~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~0_combout\ = ( \Mux65~49_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\) # (\Mux65~11_combout\) ) ) ) # ( !\Mux65~49_combout\ & ( \inputA[1]~input_o\ & ( (\Mux65~11_combout\ & \inputA[0]~input_o\) ) ) ) # ( \Mux65~49_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux65~41_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~45_combout\))) ) ) ) # ( !\Mux65~49_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux65~41_combout\)) # (\inputA[0]~input_o\ & 
-- ((\Mux65~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~11_combout\,
	datab => \ALT_INV_Mux65~41_combout\,
	datac => \ALT_INV_Mux65~45_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~49_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux142~0_combout\);

-- Location: MLABCELL_X18_Y3_N36
\Mux142~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~1_combout\ = ( \shamt[1]~input_o\ & ( \Mux1~45_combout\ & ( (!\shamt[0]~input_o\ & ((\Mux1~49_combout\))) # (\shamt[0]~input_o\ & (\Mux1~11_combout\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \Mux1~45_combout\ & ( (\Mux1~41_combout\) # 
-- (\shamt[0]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\Mux1~45_combout\ & ( (!\shamt[0]~input_o\ & ((\Mux1~49_combout\))) # (\shamt[0]~input_o\ & (\Mux1~11_combout\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\Mux1~45_combout\ & ( (!\shamt[0]~input_o\ & 
-- \Mux1~41_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~11_combout\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_Mux1~41_combout\,
	datad => \ALT_INV_Mux1~49_combout\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_Mux1~45_combout\,
	combout => \Mux142~1_combout\);

-- Location: MLABCELL_X13_Y3_N6
\Mux142~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~2_combout\ = ( \inputA[14]~input_o\ & ( \Mux142~1_combout\ & ( (!\aluControl[2]~input_o\ & ((!\aluControl[1]~input_o\) # (\Mux142~0_combout\))) ) ) ) # ( !\inputA[14]~input_o\ & ( \Mux142~1_combout\ & ( (!\aluControl[2]~input_o\ & 
-- ((!\aluControl[1]~input_o\) # ((\Mux142~0_combout\)))) # (\aluControl[2]~input_o\ & (((!\inputB[14]~input_o\)))) ) ) ) # ( \inputA[14]~input_o\ & ( !\Mux142~1_combout\ & ( (\aluControl[1]~input_o\ & (!\aluControl[2]~input_o\ & \Mux142~0_combout\)) ) ) ) # 
-- ( !\inputA[14]~input_o\ & ( !\Mux142~1_combout\ & ( (!\aluControl[2]~input_o\ & (\aluControl[1]~input_o\ & ((\Mux142~0_combout\)))) # (\aluControl[2]~input_o\ & (((!\inputB[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011100000000000101000010101100111111001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_Mux142~0_combout\,
	datae => \ALT_INV_inputA[14]~input_o\,
	dataf => \ALT_INV_Mux142~1_combout\,
	combout => \Mux142~2_combout\);

-- Location: MLABCELL_X13_Y3_N51
\Mux142~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux142~6_combout\ = ( \Mux142~2_combout\ & ( ((!\aluControl[0]~input_o\ & ((\aluControl[3]~input_o\) # (\Mux142~3_combout\)))) # (\Mux142~5_combout\) ) ) # ( !\Mux142~2_combout\ & ( ((!\aluControl[0]~input_o\ & (\Mux142~3_combout\ & 
-- !\aluControl[3]~input_o\))) # (\Mux142~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100110011001110110011001100111011101110110011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_Mux142~5_combout\,
	datac => \ALT_INV_Mux142~3_combout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_Mux142~2_combout\,
	combout => \Mux142~6_combout\);

-- Location: MLABCELL_X13_Y3_N3
\res[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(14) = ( \Mux160~0_combout\ & ( res(14) ) ) # ( !\Mux160~0_combout\ & ( \Mux142~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux142~6_combout\,
	datad => ALT_INV_res(14),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(14));

-- Location: LABCELL_X12_Y4_N57
\Mux143~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~6_combout\ = ( \Add0~61_sumout\ & ( ((\inputA[15]~input_o\ & \inputB[15]~input_o\)) # (\aluControl[1]~input_o\) ) ) # ( !\Add0~61_sumout\ & ( (\inputA[15]~input_o\ & (!\aluControl[1]~input_o\ & \inputB[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[15]~input_o\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_Add0~61_sumout\,
	combout => \Mux143~6_combout\);

-- Location: MLABCELL_X18_Y3_N18
\Mux143~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~4_combout\ = ( \Mux1~37_combout\ & ( \Mux1~45_combout\ & ( (!\shamt[0]~input_o\) # ((!\shamt[1]~input_o\ & ((\Mux1~41_combout\))) # (\shamt[1]~input_o\ & (\Mux1~49_combout\))) ) ) ) # ( !\Mux1~37_combout\ & ( \Mux1~45_combout\ & ( 
-- (!\shamt[1]~input_o\ & (((\Mux1~41_combout\ & \shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\Mux1~49_combout\))) ) ) ) # ( \Mux1~37_combout\ & ( !\Mux1~45_combout\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # 
-- (\Mux1~41_combout\)))) # (\shamt[1]~input_o\ & (\Mux1~49_combout\ & ((\shamt[0]~input_o\)))) ) ) ) # ( !\Mux1~37_combout\ & ( !\Mux1~45_combout\ & ( (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\Mux1~41_combout\))) # (\shamt[1]~input_o\ & 
-- (\Mux1~49_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~49_combout\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_Mux1~41_combout\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_Mux1~37_combout\,
	dataf => \ALT_INV_Mux1~45_combout\,
	combout => \Mux143~4_combout\);

-- Location: LABCELL_X14_Y3_N12
\Mux143~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~3_combout\ = ( \Mux65~49_combout\ & ( \inputA[1]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux65~45_combout\) ) ) ) # ( !\Mux65~49_combout\ & ( \inputA[1]~input_o\ & ( (\Mux65~45_combout\ & !\inputA[0]~input_o\) ) ) ) # ( \Mux65~49_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux65~37_combout\))) # (\inputA[0]~input_o\ & (\Mux65~41_combout\)) ) ) ) # ( !\Mux65~49_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux65~37_combout\))) # (\inputA[0]~input_o\ & 
-- (\Mux65~41_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~45_combout\,
	datab => \ALT_INV_Mux65~41_combout\,
	datac => \ALT_INV_Mux65~37_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~49_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux143~3_combout\);

-- Location: LABCELL_X12_Y4_N48
\Mux143~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~5_combout\ = ( \aluControl[1]~input_o\ & ( \Mux143~3_combout\ & ( (!\aluControl[2]~input_o\) # ((!\inputA[15]~input_o\ & !\inputB[15]~input_o\)) ) ) ) # ( !\aluControl[1]~input_o\ & ( \Mux143~3_combout\ & ( (!\aluControl[2]~input_o\ & 
-- (((\Mux143~4_combout\)))) # (\aluControl[2]~input_o\ & (!\inputA[15]~input_o\ & (!\inputB[15]~input_o\))) ) ) ) # ( \aluControl[1]~input_o\ & ( !\Mux143~3_combout\ & ( (!\inputA[15]~input_o\ & (!\inputB[15]~input_o\ & \aluControl[2]~input_o\)) ) ) ) # ( 
-- !\aluControl[1]~input_o\ & ( !\Mux143~3_combout\ & ( (!\aluControl[2]~input_o\ & (((\Mux143~4_combout\)))) # (\aluControl[2]~input_o\ & (!\inputA[15]~input_o\ & (!\inputB[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001000000000001000100000001111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[15]~input_o\,
	datab => \ALT_INV_inputB[15]~input_o\,
	datac => \ALT_INV_Mux143~4_combout\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux143~3_combout\,
	combout => \Mux143~5_combout\);

-- Location: MLABCELL_X9_Y7_N6
\Mux143~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~7_combout\ = ( \Mux64~51_combout\ & ( \aluControl[1]~input_o\ & ( (!\Mux143~0_combout\ & ((\Mux128~45_combout\))) # (\Mux143~0_combout\ & (\Mux128~50_combout\)) ) ) ) # ( !\Mux64~51_combout\ & ( \aluControl[1]~input_o\ & ( (!\Mux143~0_combout\ & 
-- ((\Mux128~45_combout\))) # (\Mux143~0_combout\ & (\Mux128~50_combout\)) ) ) ) # ( \Mux64~51_combout\ & ( !\aluControl[1]~input_o\ & ( (\Mux143~0_combout\) # (\Mux64~46_combout\) ) ) ) # ( !\Mux64~51_combout\ & ( !\aluControl[1]~input_o\ & ( 
-- (\Mux64~46_combout\ & !\Mux143~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~50_combout\,
	datab => \ALT_INV_Mux64~46_combout\,
	datac => \ALT_INV_Mux143~0_combout\,
	datad => \ALT_INV_Mux128~45_combout\,
	datae => \ALT_INV_Mux64~51_combout\,
	dataf => \ALT_INV_aluControl[1]~input_o\,
	combout => \Mux143~7_combout\);

-- Location: LABCELL_X12_Y4_N54
\Mux143~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~8_combout\ = ( \Mux143~2_combout\ & ( (!\Mux143~1_combout\ & ((\inputB[15]~input_o\) # (\inputA[15]~input_o\))) ) ) # ( !\Mux143~2_combout\ & ( (\Mux143~1_combout\ & \Mux143~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[15]~input_o\,
	datab => \ALT_INV_Mux143~1_combout\,
	datac => \ALT_INV_inputB[15]~input_o\,
	datad => \ALT_INV_Mux143~7_combout\,
	dataf => \ALT_INV_Mux143~2_combout\,
	combout => \Mux143~8_combout\);

-- Location: LABCELL_X12_Y4_N39
\Mux143~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux143~9_combout\ = ( \Mux143~8_combout\ ) # ( !\Mux143~8_combout\ & ( (!\aluControl[0]~input_o\ & ((!\aluControl[3]~input_o\ & (\Mux143~6_combout\)) # (\aluControl[3]~input_o\ & ((\Mux143~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux143~6_combout\,
	datad => \ALT_INV_Mux143~5_combout\,
	dataf => \ALT_INV_Mux143~8_combout\,
	combout => \Mux143~9_combout\);

-- Location: LABCELL_X12_Y4_N42
\res[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(15) = ( \Mux160~0_combout\ & ( res(15) ) ) # ( !\Mux160~0_combout\ & ( \Mux143~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux143~9_combout\,
	datad => ALT_INV_res(15),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(15));

-- Location: LABCELL_X16_Y6_N18
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !res(14) & ( !res(15) & ( (!res(13) & (!res(12) & (!res(16) & !res(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(13),
	datab => ALT_INV_res(12),
	datac => ALT_INV_res(16),
	datad => ALT_INV_res(17),
	datae => ALT_INV_res(14),
	dataf => ALT_INV_res(15),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X9_Y6_N15
\Mux156~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~2_combout\ = ( \aluControl[0]~input_o\ & ( (!\inputA[3]~input_o\ & (!\inputA[4]~input_o\ & !\inputA[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux156~2_combout\);

-- Location: MLABCELL_X9_Y6_N18
\Mux158~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~1_combout\ = ( \Mux156~2_combout\ & ( (!\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ & (\inputB[30]~input_o\)) # (\inputA[0]~input_o\ & ((\inputB[31]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000011100000100000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[30]~input_o\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_inputA[1]~input_o\,
	datad => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_Mux156~2_combout\,
	combout => \Mux158~1_combout\);

-- Location: LABCELL_X16_Y4_N18
\Mux65~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~29_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[4]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[20]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[12]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[28]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[20]~input_o\,
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_inputB[4]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~29_combout\);

-- Location: MLABCELL_X18_Y6_N54
\Mux65~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~33_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[6]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[22]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[14]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[30]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[22]~input_o\,
	datab => \ALT_INV_inputB[30]~input_o\,
	datac => \ALT_INV_inputB[6]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~33_combout\);

-- Location: LABCELL_X20_Y6_N45
\Mux65~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~20_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[0]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[16]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[8]~input_o\ ) ) ) 
-- # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_inputB[24]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~20_combout\);

-- Location: LABCELL_X21_Y4_N18
\Mux65~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~24_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[2]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[18]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[10]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[26]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~24_combout\);

-- Location: LABCELL_X20_Y6_N54
\Mux65~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~34_combout\ = ( \inputA[1]~input_o\ & ( \Mux65~24_combout\ & ( (!\inputA[2]~input_o\ & (\Mux65~29_combout\)) # (\inputA[2]~input_o\ & ((\Mux65~20_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux65~24_combout\ & ( (\inputA[2]~input_o\) # 
-- (\Mux65~33_combout\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux65~24_combout\ & ( (!\inputA[2]~input_o\ & (\Mux65~29_combout\)) # (\inputA[2]~input_o\ & ((\Mux65~20_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux65~24_combout\ & ( (\Mux65~33_combout\ & 
-- !\inputA[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~29_combout\,
	datab => \ALT_INV_Mux65~33_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux65~20_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux65~24_combout\,
	combout => \Mux65~34_combout\);

-- Location: LABCELL_X20_Y5_N15
\Mux65~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~26_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[3]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[19]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[11]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[27]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datab => \ALT_INV_inputB[11]~input_o\,
	datac => \ALT_INV_inputB[27]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~26_combout\);

-- Location: LABCELL_X14_Y4_N30
\Mux65~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~22_combout\ = ( \inputB[25]~input_o\ & ( \inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[17]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[1]~input_o\)) ) ) ) # ( !\inputB[25]~input_o\ & ( \inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & 
-- ((\inputB[17]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[1]~input_o\)) ) ) ) # ( \inputB[25]~input_o\ & ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\) # (\inputB[9]~input_o\) ) ) ) # ( !\inputB[25]~input_o\ & ( !\inputA[3]~input_o\ & ( 
-- (\inputB[9]~input_o\ & \inputA[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[9]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	datae => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~22_combout\);

-- Location: LABCELL_X14_Y4_N54
\Mux65~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~31_combout\ = ( \inputB[21]~input_o\ & ( \inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & ((\inputB[13]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[5]~input_o\)) ) ) ) # ( !\inputB[21]~input_o\ & ( \inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & 
-- ((\inputB[13]~input_o\))) # (\inputA[3]~input_o\ & (\inputB[5]~input_o\)) ) ) ) # ( \inputB[21]~input_o\ & ( !\inputA[4]~input_o\ & ( (\inputA[3]~input_o\) # (\inputB[29]~input_o\) ) ) ) # ( !\inputB[21]~input_o\ & ( !\inputA[4]~input_o\ & ( 
-- (\inputB[29]~input_o\ & !\inputA[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[13]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[21]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux65~31_combout\);

-- Location: MLABCELL_X18_Y4_N3
\Mux65~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~27_combout\ = ( \inputB[7]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[23]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[15]~input_o\))))) # (\inputA[4]~input_o\ & (((!\inputA[3]~input_o\)))) ) ) # ( !\inputB[7]~input_o\ 
-- & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[23]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[15]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100000101001110111000010100111011100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputB[15]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[7]~input_o\,
	combout => \Mux65~27_combout\);

-- Location: LABCELL_X14_Y4_N0
\Mux158~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~0_combout\ = ( \Mux65~27_combout\ & ( \inputA[2]~input_o\ & ( (\inputA[1]~input_o\) # (\Mux65~22_combout\) ) ) ) # ( !\Mux65~27_combout\ & ( \inputA[2]~input_o\ & ( (\Mux65~22_combout\ & !\inputA[1]~input_o\) ) ) ) # ( \Mux65~27_combout\ & ( 
-- !\inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ & ((\Mux65~31_combout\))) # (\inputA[1]~input_o\ & (\Mux65~26_combout\)) ) ) ) # ( !\Mux65~27_combout\ & ( !\inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ & ((\Mux65~31_combout\))) # (\inputA[1]~input_o\ & 
-- (\Mux65~26_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~26_combout\,
	datab => \ALT_INV_Mux65~22_combout\,
	datac => \ALT_INV_Mux65~31_combout\,
	datad => \ALT_INV_inputA[1]~input_o\,
	datae => \ALT_INV_Mux65~27_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux158~0_combout\);

-- Location: MLABCELL_X9_Y6_N54
\Mux158~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~2_combout\ = ( \inputA[0]~input_o\ & ( \Mux158~0_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[0]~input_o\) # (\Mux158~1_combout\))) ) ) ) # ( !\inputA[0]~input_o\ & ( \Mux158~0_combout\ & ( (\aluControl[3]~input_o\ & 
-- (((!\aluControl[0]~input_o\ & \Mux65~34_combout\)) # (\Mux158~1_combout\))) ) ) ) # ( \inputA[0]~input_o\ & ( !\Mux158~0_combout\ & ( (\Mux158~1_combout\ & \aluControl[3]~input_o\) ) ) ) # ( !\inputA[0]~input_o\ & ( !\Mux158~0_combout\ & ( 
-- (\aluControl[3]~input_o\ & (((!\aluControl[0]~input_o\ & \Mux65~34_combout\)) # (\Mux158~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001101000001010000010100000101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux158~1_combout\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_Mux65~34_combout\,
	datae => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_Mux158~0_combout\,
	combout => \Mux158~2_combout\);

-- Location: IOIBUF_X40_Y0_N41
\inputA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(30),
	o => \inputA[30]~input_o\);

-- Location: IOIBUF_X8_Y45_N75
\inputA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(29),
	o => \inputA[29]~input_o\);

-- Location: IOIBUF_X12_Y45_N1
\inputA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(28),
	o => \inputA[28]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\inputA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(27),
	o => \inputA[27]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
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
\inputA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(25),
	o => \inputA[25]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\inputA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(24),
	o => \inputA[24]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\inputA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(23),
	o => \inputA[23]~input_o\);

-- Location: IOIBUF_X0_Y18_N61
\inputA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(22),
	o => \inputA[22]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\inputA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(21),
	o => \inputA[21]~input_o\);

-- Location: IOIBUF_X16_Y0_N58
\inputA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(20),
	o => \inputA[20]~input_o\);

-- Location: IOIBUF_X0_Y19_N4
\inputA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(19),
	o => \inputA[19]~input_o\);

-- Location: IOIBUF_X0_Y20_N21
\inputA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(18),
	o => \inputA[18]~input_o\);

-- Location: LABCELL_X10_Y4_N57
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[18]~input_o\) ) + ( \inputA[18]~input_o\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[18]~input_o\) ) + ( \inputA[18]~input_o\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[18]~input_o\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputB[18]~input_o\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X10_Y3_N0
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \inputA[19]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[19]~input_o\) ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \inputA[19]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[19]~input_o\) ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputA[19]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X10_Y3_N3
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

-- Location: LABCELL_X10_Y3_N6
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \inputA[21]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[21]~input_o\) ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( \inputA[21]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[21]~input_o\) ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_inputA[21]~input_o\,
	dataf => \ALT_INV_inputB[21]~input_o\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: LABCELL_X10_Y3_N9
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

-- Location: LABCELL_X10_Y3_N12
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[23]~input_o\) ) + ( \inputA[23]~input_o\ ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[23]~input_o\) ) + ( \inputA[23]~input_o\ ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputA[23]~input_o\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: LABCELL_X10_Y3_N15
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

-- Location: LABCELL_X10_Y3_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[25]~input_o\) ) + ( \inputA[25]~input_o\ ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[25]~input_o\) ) + ( \inputA[25]~input_o\ ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[25]~input_o\,
	datad => \ALT_INV_inputB[25]~input_o\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: LABCELL_X10_Y3_N21
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \inputA[26]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[26]~input_o\) ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( \inputA[26]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[26]~input_o\) ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[26]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: LABCELL_X10_Y3_N24
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[27]~input_o\) ) + ( \inputA[27]~input_o\ ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[27]~input_o\) ) + ( \inputA[27]~input_o\ ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputA[27]~input_o\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: LABCELL_X10_Y3_N27
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( !\aluControl[2]~input_o\ $ (!\inputB[28]~input_o\) ) + ( \inputA[28]~input_o\ ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( !\aluControl[2]~input_o\ $ (!\inputB[28]~input_o\) ) + ( \inputA[28]~input_o\ ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputA[28]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X10_Y3_N30
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

-- Location: LABCELL_X10_Y3_N33
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \inputA[30]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[30]~input_o\) ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( \inputA[30]~input_o\ ) + ( !\aluControl[2]~input_o\ $ (!\inputB[30]~input_o\) ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_inputA[30]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: LABCELL_X10_Y2_N0
\Mux158~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~3_combout\ = ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & \Add0~121_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Add0~121_sumout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux158~3_combout\);

-- Location: LABCELL_X21_Y4_N21
\Mux1~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~24_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[2]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[18]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[10]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[26]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_inputB[26]~input_o\,
	datad => \ALT_INV_inputB[10]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~24_combout\);

-- Location: MLABCELL_X18_Y6_N57
\Mux1~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~32_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[6]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[22]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[14]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[30]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[22]~input_o\,
	datab => \ALT_INV_inputB[30]~input_o\,
	datac => \ALT_INV_inputB[14]~input_o\,
	datad => \ALT_INV_inputB[6]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~32_combout\);

-- Location: LABCELL_X20_Y6_N42
\Mux1~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~20_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[0]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[16]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[8]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_inputB[24]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_inputB[8]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~20_combout\);

-- Location: LABCELL_X16_Y4_N21
\Mux1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~28_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[4]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[20]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[12]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[28]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[20]~input_o\,
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_inputB[28]~input_o\,
	datad => \ALT_INV_inputB[4]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~28_combout\);

-- Location: LABCELL_X20_Y4_N42
\Mux1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~33_combout\ = ( \Mux1~20_combout\ & ( \Mux1~28_combout\ & ( ((!\shamt[2]~input_o\ & ((\Mux1~32_combout\))) # (\shamt[2]~input_o\ & (\Mux1~24_combout\))) # (\shamt[1]~input_o\) ) ) ) # ( !\Mux1~20_combout\ & ( \Mux1~28_combout\ & ( 
-- (!\shamt[2]~input_o\ & (((\Mux1~32_combout\) # (\shamt[1]~input_o\)))) # (\shamt[2]~input_o\ & (\Mux1~24_combout\ & (!\shamt[1]~input_o\))) ) ) ) # ( \Mux1~20_combout\ & ( !\Mux1~28_combout\ & ( (!\shamt[2]~input_o\ & (((!\shamt[1]~input_o\ & 
-- \Mux1~32_combout\)))) # (\shamt[2]~input_o\ & (((\shamt[1]~input_o\)) # (\Mux1~24_combout\))) ) ) ) # ( !\Mux1~20_combout\ & ( !\Mux1~28_combout\ & ( (!\shamt[1]~input_o\ & ((!\shamt[2]~input_o\ & ((\Mux1~32_combout\))) # (\shamt[2]~input_o\ & 
-- (\Mux1~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~24_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_Mux1~32_combout\,
	datae => \ALT_INV_Mux1~20_combout\,
	dataf => \ALT_INV_Mux1~28_combout\,
	combout => \Mux1~33_combout\);

-- Location: MLABCELL_X18_Y5_N42
\Mux1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~22_combout\ = ( \inputB[9]~input_o\ & ( \shamt[3]~input_o\ & ( (!\shamt[4]~input_o\ & ((\inputB[17]~input_o\))) # (\shamt[4]~input_o\ & (\inputB[1]~input_o\)) ) ) ) # ( !\inputB[9]~input_o\ & ( \shamt[3]~input_o\ & ( (!\shamt[4]~input_o\ & 
-- ((\inputB[17]~input_o\))) # (\shamt[4]~input_o\ & (\inputB[1]~input_o\)) ) ) ) # ( \inputB[9]~input_o\ & ( !\shamt[3]~input_o\ & ( (\inputB[25]~input_o\) # (\shamt[4]~input_o\) ) ) ) # ( !\inputB[9]~input_o\ & ( !\shamt[3]~input_o\ & ( 
-- (!\shamt[4]~input_o\ & \inputB[25]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_inputB[17]~input_o\,
	datad => \ALT_INV_inputB[25]~input_o\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~22_combout\);

-- Location: LABCELL_X20_Y5_N18
\Mux1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~30_combout\ = ( \shamt[4]~input_o\ & ( \inputB[21]~input_o\ & ( (!\shamt[3]~input_o\ & ((\inputB[13]~input_o\))) # (\shamt[3]~input_o\ & (\inputB[5]~input_o\)) ) ) ) # ( !\shamt[4]~input_o\ & ( \inputB[21]~input_o\ & ( (\shamt[3]~input_o\) # 
-- (\inputB[29]~input_o\) ) ) ) # ( \shamt[4]~input_o\ & ( !\inputB[21]~input_o\ & ( (!\shamt[3]~input_o\ & ((\inputB[13]~input_o\))) # (\shamt[3]~input_o\ & (\inputB[5]~input_o\)) ) ) ) # ( !\shamt[4]~input_o\ & ( !\inputB[21]~input_o\ & ( 
-- (\inputB[29]~input_o\ & !\shamt[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[13]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[21]~input_o\,
	combout => \Mux1~30_combout\);

-- Location: LABCELL_X20_Y4_N3
\Mux1~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~31_combout\ = ( \Mux1~30_combout\ & ( (!\shamt[2]~input_o\) # (\Mux1~22_combout\) ) ) # ( !\Mux1~30_combout\ & ( (\shamt[2]~input_o\ & \Mux1~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux1~22_combout\,
	dataf => \ALT_INV_Mux1~30_combout\,
	combout => \Mux1~31_combout\);

-- Location: LABCELL_X20_Y5_N12
\Mux1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~26_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[3]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[19]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[11]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[27]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datab => \ALT_INV_inputB[11]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	datad => \ALT_INV_inputB[27]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~26_combout\);

-- Location: LABCELL_X19_Y4_N3
\Mux64~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~47_combout\ = ( \inputB[15]~input_o\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux64~47_combout\);

-- Location: LABCELL_X19_Y4_N30
\Mux64~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~73_combout\ = (!\shamt[4]~input_o\ & ((\inputB[23]~input_o\))) # (\shamt[4]~input_o\ & (\inputB[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_inputB[23]~input_o\,
	combout => \Mux64~73_combout\);

-- Location: LABCELL_X19_Y4_N42
\Mux1~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~27_combout\ = ( \Mux64~73_combout\ & ( (!\shamt[2]~input_o\ & (((\Mux1~26_combout\)))) # (\shamt[2]~input_o\ & ((!\shamt[3]~input_o\) # ((\Mux64~47_combout\)))) ) ) # ( !\Mux64~73_combout\ & ( (!\shamt[2]~input_o\ & (((\Mux1~26_combout\)))) # 
-- (\shamt[2]~input_o\ & (\shamt[3]~input_o\ & ((\Mux64~47_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux1~26_combout\,
	datad => \ALT_INV_Mux64~47_combout\,
	dataf => \ALT_INV_Mux64~73_combout\,
	combout => \Mux1~27_combout\);

-- Location: LABCELL_X20_Y4_N36
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\Mux1~33_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~27_combout\))) ) ) # ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\Mux1~33_combout\)) # (\shamt[0]~input_o\ & 
-- ((\Mux1~31_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_Mux1~33_combout\,
	datac => \ALT_INV_Mux1~31_combout\,
	datad => \ALT_INV_Mux1~27_combout\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X10_Y2_N12
\Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = ( !\shamt[4]~input_o\ & ( (!\shamt[1]~input_o\ & (!\shamt[2]~input_o\ & !\shamt[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux32~1_combout\);

-- Location: LABCELL_X10_Y2_N3
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \inputB[31]~input_o\ & ( (\Mux32~1_combout\ & ((\shamt[0]~input_o\) # (\inputB[30]~input_o\))) ) ) # ( !\inputB[31]~input_o\ & ( (\Mux32~1_combout\ & (\inputB[30]~input_o\ & !\shamt[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux32~1_combout\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LABCELL_X10_Y2_N6
\Mux158~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~5_combout\ = ( \Mux34~0_combout\ & ( \aluControl[0]~input_o\ & ( ((\inputA[30]~input_o\) # (\inputB[30]~input_o\)) # (\aluControl[3]~input_o\) ) ) ) # ( !\Mux34~0_combout\ & ( \aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- ((\inputA[30]~input_o\) # (\inputB[30]~input_o\))) ) ) ) # ( \Mux34~0_combout\ & ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputB[30]~input_o\ & (\inputA[30]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux2~0_combout\)))) ) ) ) # ( 
-- !\Mux34~0_combout\ & ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (\inputB[30]~input_o\ & (\inputA[30]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011100101010001010100111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_inputB[30]~input_o\,
	datac => \ALT_INV_inputA[30]~input_o\,
	datad => \ALT_INV_Mux2~0_combout\,
	datae => \ALT_INV_Mux34~0_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux158~5_combout\);

-- Location: MLABCELL_X13_Y6_N39
\Mux158~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~4_combout\ = ( \aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & (!\inputA[30]~input_o\ & (!\inputB[30]~input_o\))) # (\aluControl[0]~input_o\ & (((\inputB[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100011111000000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[30]~input_o\,
	datab => \ALT_INV_inputB[30]~input_o\,
	datac => \ALT_INV_aluControl[0]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux158~4_combout\);

-- Location: MLABCELL_X9_Y6_N24
\Mux158~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux158~6_combout\ = ( \Mux158~5_combout\ & ( \Mux158~4_combout\ & ( (!\aluControl[1]~input_o\) # (((!\aluControl[2]~input_o\ & \Mux158~2_combout\)) # (\Mux158~3_combout\)) ) ) ) # ( !\Mux158~5_combout\ & ( \Mux158~4_combout\ & ( (!\aluControl[1]~input_o\ 
-- & (\aluControl[2]~input_o\)) # (\aluControl[1]~input_o\ & (((!\aluControl[2]~input_o\ & \Mux158~2_combout\)) # (\Mux158~3_combout\))) ) ) ) # ( \Mux158~5_combout\ & ( !\Mux158~4_combout\ & ( (!\aluControl[1]~input_o\ & (!\aluControl[2]~input_o\)) # 
-- (\aluControl[1]~input_o\ & (((!\aluControl[2]~input_o\ & \Mux158~2_combout\)) # (\Mux158~3_combout\))) ) ) ) # ( !\Mux158~5_combout\ & ( !\Mux158~4_combout\ & ( (\aluControl[1]~input_o\ & (((!\aluControl[2]~input_o\ & \Mux158~2_combout\)) # 
-- (\Mux158~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001111101000101010111101010010010111111111001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datab => \ALT_INV_Mux158~2_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Mux158~3_combout\,
	datae => \ALT_INV_Mux158~5_combout\,
	dataf => \ALT_INV_Mux158~4_combout\,
	combout => \Mux158~6_combout\);

-- Location: MLABCELL_X9_Y6_N3
\res[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(30) = ( \Mux160~0_combout\ & ( res(30) ) ) # ( !\Mux160~0_combout\ & ( \Mux158~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux158~6_combout\,
	datad => ALT_INV_res(30),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(30));

-- Location: IOIBUF_X12_Y0_N18
\inputA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(31),
	o => \inputA[31]~input_o\);

-- Location: MLABCELL_X13_Y6_N57
\Mux159~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~1_combout\ = ( \inputB[15]~input_o\ & ( (\aluControl[3]~input_o\ & (((!\inputB[31]~input_o\ & !\inputA[31]~input_o\)) # (\aluControl[0]~input_o\))) ) ) # ( !\inputB[15]~input_o\ & ( (\aluControl[3]~input_o\ & (!\inputB[31]~input_o\ & 
-- (!\aluControl[0]~input_o\ & !\inputA[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000101000001010100010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_aluControl[0]~input_o\,
	datad => \ALT_INV_inputA[31]~input_o\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux159~1_combout\);

-- Location: LABCELL_X10_Y3_N36
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( !\inputB[31]~input_o\ $ (!\aluControl[2]~input_o\) ) + ( \inputA[31]~input_o\ ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_inputA[31]~input_o\,
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\);

-- Location: MLABCELL_X13_Y6_N24
\Mux159~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~0_combout\ = ( !\aluControl[0]~input_o\ & ( (!\aluControl[3]~input_o\ & \Add0~125_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Add0~125_sumout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux159~0_combout\);

-- Location: MLABCELL_X18_Y4_N21
\Mux1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~34_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[7]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[23]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[15]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[31]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputB[15]~input_o\,
	datad => \ALT_INV_inputB[7]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~34_combout\);

-- Location: LABCELL_X20_Y4_N6
\Mux1~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~35_combout\ = ( \Mux1~34_combout\ & ( \Mux1~26_combout\ & ( (!\shamt[1]~input_o\) # ((!\shamt[2]~input_o\ & (\Mux1~30_combout\)) # (\shamt[2]~input_o\ & ((\Mux1~22_combout\)))) ) ) ) # ( !\Mux1~34_combout\ & ( \Mux1~26_combout\ & ( 
-- (!\shamt[2]~input_o\ & (\Mux1~30_combout\ & ((\shamt[1]~input_o\)))) # (\shamt[2]~input_o\ & (((!\shamt[1]~input_o\) # (\Mux1~22_combout\)))) ) ) ) # ( \Mux1~34_combout\ & ( !\Mux1~26_combout\ & ( (!\shamt[2]~input_o\ & (((!\shamt[1]~input_o\)) # 
-- (\Mux1~30_combout\))) # (\shamt[2]~input_o\ & (((\Mux1~22_combout\ & \shamt[1]~input_o\)))) ) ) ) # ( !\Mux1~34_combout\ & ( !\Mux1~26_combout\ & ( (\shamt[1]~input_o\ & ((!\shamt[2]~input_o\ & (\Mux1~30_combout\)) # (\shamt[2]~input_o\ & 
-- ((\Mux1~22_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~30_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux1~22_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux1~34_combout\,
	dataf => \ALT_INV_Mux1~26_combout\,
	combout => \Mux1~35_combout\);

-- Location: LABCELL_X20_Y4_N39
\Mux1~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~36_combout\ = (!\shamt[0]~input_o\ & ((\Mux1~35_combout\))) # (\shamt[0]~input_o\ & (\Mux1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_Mux1~33_combout\,
	datac => \ALT_INV_Mux1~35_combout\,
	combout => \Mux1~36_combout\);

-- Location: LABCELL_X17_Y3_N39
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( !\shamt[4]~input_o\ & ( (!\shamt[1]~input_o\ & (!\shamt[0]~input_o\ & (!\shamt[2]~input_o\ & !\shamt[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: MLABCELL_X13_Y6_N0
\Mux159~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~2_combout\ = ( \inputB[31]~input_o\ & ( \aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & (\Mux1~36_combout\)) # (\aluControl[0]~input_o\ & ((\Mux32~0_combout\))) ) ) ) # ( !\inputB[31]~input_o\ & ( \aluControl[3]~input_o\ & ( 
-- (!\aluControl[0]~input_o\ & \Mux1~36_combout\) ) ) ) # ( \inputB[31]~input_o\ & ( !\aluControl[3]~input_o\ & ( (\inputA[31]~input_o\) # (\aluControl[0]~input_o\) ) ) ) # ( !\inputB[31]~input_o\ & ( !\aluControl[3]~input_o\ & ( (\aluControl[0]~input_o\ & 
-- \inputA[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001011101110111011100001010000010100000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_inputA[31]~input_o\,
	datac => \ALT_INV_Mux1~36_combout\,
	datad => \ALT_INV_Mux32~0_combout\,
	datae => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux159~2_combout\);

-- Location: MLABCELL_X18_Y4_N18
\Mux65~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~35_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[7]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[23]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[15]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[31]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~35_combout\);

-- Location: LABCELL_X14_Y4_N18
\Mux65~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~36_combout\ = ( \Mux65~31_combout\ & ( \inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ & (\Mux65~26_combout\)) # (\inputA[1]~input_o\ & ((\Mux65~22_combout\))) ) ) ) # ( !\Mux65~31_combout\ & ( \inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ & 
-- (\Mux65~26_combout\)) # (\inputA[1]~input_o\ & ((\Mux65~22_combout\))) ) ) ) # ( \Mux65~31_combout\ & ( !\inputA[2]~input_o\ & ( (\Mux65~35_combout\) # (\inputA[1]~input_o\) ) ) ) # ( !\Mux65~31_combout\ & ( !\inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ 
-- & \Mux65~35_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~26_combout\,
	datab => \ALT_INV_Mux65~22_combout\,
	datac => \ALT_INV_inputA[1]~input_o\,
	datad => \ALT_INV_Mux65~35_combout\,
	datae => \ALT_INV_Mux65~31_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux65~36_combout\);

-- Location: LABCELL_X17_Y5_N36
\Mux96~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = ( !\inputA[1]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[2]~input_o\ & !\inputA[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux96~0_combout\);

-- Location: MLABCELL_X13_Y6_N30
\Mux159~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~4_combout\ = ( !\aluControl[0]~input_o\ & ( ((\aluControl[3]~input_o\ & ((!\inputA[0]~input_o\ & (\Mux65~36_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~34_combout\)))))) ) ) # ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- (((\Mux96~0_combout\ & (\inputB[31]~input_o\ & \aluControl[3]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000100111001001110000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_Mux65~36_combout\,
	datac => \ALT_INV_Mux96~0_combout\,
	datad => \ALT_INV_inputB[31]~input_o\,
	datae => \ALT_INV_aluControl[0]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	datag => \ALT_INV_Mux65~34_combout\,
	combout => \Mux159~4_combout\);

-- Location: MLABCELL_X13_Y6_N18
\Mux159~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux159~3_combout\ = ( \Mux159~2_combout\ & ( \Mux159~4_combout\ & ( (!\aluControl[2]~input_o\) # ((!\aluControl[1]~input_o\ & (\Mux159~1_combout\)) # (\aluControl[1]~input_o\ & ((\Mux159~0_combout\)))) ) ) ) # ( !\Mux159~2_combout\ & ( \Mux159~4_combout\ 
-- & ( (!\aluControl[2]~input_o\ & (((\aluControl[1]~input_o\)))) # (\aluControl[2]~input_o\ & ((!\aluControl[1]~input_o\ & (\Mux159~1_combout\)) # (\aluControl[1]~input_o\ & ((\Mux159~0_combout\))))) ) ) ) # ( \Mux159~2_combout\ & ( !\Mux159~4_combout\ & ( 
-- (!\aluControl[1]~input_o\ & (((!\aluControl[2]~input_o\)) # (\Mux159~1_combout\))) # (\aluControl[1]~input_o\ & (((\Mux159~0_combout\)))) ) ) ) # ( !\Mux159~2_combout\ & ( !\Mux159~4_combout\ & ( (!\aluControl[1]~input_o\ & (\Mux159~1_combout\ & 
-- ((\aluControl[2]~input_o\)))) # (\aluControl[1]~input_o\ & (((\Mux159~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011111101010011001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux159~1_combout\,
	datab => \ALT_INV_Mux159~0_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux159~2_combout\,
	dataf => \ALT_INV_Mux159~4_combout\,
	combout => \Mux159~3_combout\);

-- Location: MLABCELL_X13_Y6_N42
\res[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(31) = ( res(31) & ( (\Mux160~0_combout\) # (\Mux159~3_combout\) ) ) # ( !res(31) & ( (\Mux159~3_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux159~3_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(31),
	combout => res(31));

-- Location: LABCELL_X16_Y6_N12
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !res(30) & ( !res(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_res(30),
	dataf => ALT_INV_res(31),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X21_Y4_N27
\Mux128~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~41_combout\ = ( \inputB[14]~input_o\ & ( !\inputA[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[14]~input_o\,
	combout => \Mux128~41_combout\);

-- Location: LABCELL_X21_Y4_N48
\Mux128~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~43_combout\ = (!\inputA[4]~input_o\ & \inputB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	combout => \Mux128~43_combout\);

-- Location: LABCELL_X21_Y4_N54
\Mux128~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~69_combout\ = ( \inputB[22]~input_o\ & ( (!\inputA[4]~input_o\) # (\inputB[6]~input_o\) ) ) # ( !\inputB[22]~input_o\ & ( (\inputB[6]~input_o\ & \inputA[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \Mux128~69_combout\);

-- Location: LABCELL_X21_Y4_N51
\Mux128~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~57_combout\ = ( \inputB[18]~input_o\ & ( (!\inputA[4]~input_o\) # (\inputB[2]~input_o\) ) ) # ( !\inputB[18]~input_o\ & ( (\inputA[4]~input_o\ & \inputB[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \Mux128~57_combout\);

-- Location: LABCELL_X21_Y4_N12
\Mux65~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~18_combout\ = ( \Mux128~69_combout\ & ( \Mux128~57_combout\ & ( (!\inputA[3]~input_o\) # ((!\inputA[2]~input_o\ & (\Mux128~41_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~43_combout\)))) ) ) ) # ( !\Mux128~69_combout\ & ( \Mux128~57_combout\ & ( 
-- (!\inputA[2]~input_o\ & (\Mux128~41_combout\ & ((\inputA[3]~input_o\)))) # (\inputA[2]~input_o\ & (((!\inputA[3]~input_o\) # (\Mux128~43_combout\)))) ) ) ) # ( \Mux128~69_combout\ & ( !\Mux128~57_combout\ & ( (!\inputA[2]~input_o\ & 
-- (((!\inputA[3]~input_o\)) # (\Mux128~41_combout\))) # (\inputA[2]~input_o\ & (((\Mux128~43_combout\ & \inputA[3]~input_o\)))) ) ) ) # ( !\Mux128~69_combout\ & ( !\Mux128~57_combout\ & ( (\inputA[3]~input_o\ & ((!\inputA[2]~input_o\ & 
-- (\Mux128~41_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~43_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux128~41_combout\,
	datac => \ALT_INV_Mux128~43_combout\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_Mux128~69_combout\,
	dataf => \ALT_INV_Mux128~57_combout\,
	combout => \Mux65~18_combout\);

-- Location: MLABCELL_X23_Y4_N36
\Mux128~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~66_combout\ = ( \inputB[5]~input_o\ & ( (\inputB[21]~input_o\) # (\inputA[4]~input_o\) ) ) # ( !\inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[21]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux128~66_combout\);

-- Location: LABCELL_X14_Y4_N12
\Mux65~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~17_combout\ = ( \Mux128~38_combout\ & ( \Mux128~54_combout\ & ( ((!\inputA[3]~input_o\ & (\Mux128~66_combout\)) # (\inputA[3]~input_o\ & ((\Mux128~36_combout\)))) # (\inputA[2]~input_o\) ) ) ) # ( !\Mux128~38_combout\ & ( \Mux128~54_combout\ & ( 
-- (!\inputA[2]~input_o\ & ((!\inputA[3]~input_o\ & (\Mux128~66_combout\)) # (\inputA[3]~input_o\ & ((\Mux128~36_combout\))))) # (\inputA[2]~input_o\ & (((!\inputA[3]~input_o\)))) ) ) ) # ( \Mux128~38_combout\ & ( !\Mux128~54_combout\ & ( 
-- (!\inputA[2]~input_o\ & ((!\inputA[3]~input_o\ & (\Mux128~66_combout\)) # (\inputA[3]~input_o\ & ((\Mux128~36_combout\))))) # (\inputA[2]~input_o\ & (((\inputA[3]~input_o\)))) ) ) ) # ( !\Mux128~38_combout\ & ( !\Mux128~54_combout\ & ( 
-- (!\inputA[2]~input_o\ & ((!\inputA[3]~input_o\ & (\Mux128~66_combout\)) # (\inputA[3]~input_o\ & ((\Mux128~36_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~66_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux128~36_combout\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_Mux128~38_combout\,
	dataf => \ALT_INV_Mux128~54_combout\,
	combout => \Mux65~17_combout\);

-- Location: MLABCELL_X18_Y4_N30
\Mux128~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~72_combout\ = ( \inputB[7]~input_o\ & ( (\inputA[4]~input_o\) # (\inputB[23]~input_o\) ) ) # ( !\inputB[7]~input_o\ & ( (\inputB[23]~input_o\ & !\inputA[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[7]~input_o\,
	combout => \Mux128~72_combout\);

-- Location: LABCELL_X19_Y4_N18
\Mux128~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~48_combout\ = (!\inputA[4]~input_o\ & \inputB[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux128~48_combout\);

-- Location: LABCELL_X19_Y4_N48
\Mux128~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~60_combout\ = ( \inputB[19]~input_o\ & ( (!\inputA[4]~input_o\) # (\inputB[3]~input_o\) ) ) # ( !\inputB[19]~input_o\ & ( (\inputA[4]~input_o\ & \inputB[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	combout => \Mux128~60_combout\);

-- Location: LABCELL_X19_Y4_N51
\Mux128~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~46_combout\ = ( \inputB[15]~input_o\ & ( !\inputA[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux128~46_combout\);

-- Location: LABCELL_X19_Y4_N6
\Mux65~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~19_combout\ = ( \inputA[2]~input_o\ & ( \Mux128~46_combout\ & ( (!\inputA[3]~input_o\ & ((\Mux128~60_combout\))) # (\inputA[3]~input_o\ & (\Mux128~48_combout\)) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux128~46_combout\ & ( (\inputA[3]~input_o\) # 
-- (\Mux128~72_combout\) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux128~46_combout\ & ( (!\inputA[3]~input_o\ & ((\Mux128~60_combout\))) # (\inputA[3]~input_o\ & (\Mux128~48_combout\)) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux128~46_combout\ & ( 
-- (\Mux128~72_combout\ & !\inputA[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~72_combout\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_Mux128~48_combout\,
	datad => \ALT_INV_Mux128~60_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux128~46_combout\,
	combout => \Mux65~19_combout\);

-- Location: LABCELL_X16_Y4_N0
\Mux128~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~63_combout\ = ( \inputB[20]~input_o\ & ( (!\inputA[4]~input_o\) # (\inputB[4]~input_o\) ) ) # ( !\inputB[20]~input_o\ & ( (\inputA[4]~input_o\ & \inputB[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_inputB[20]~input_o\,
	combout => \Mux128~63_combout\);

-- Location: LABCELL_X20_Y6_N0
\Mux65~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~16_combout\ = ( \Mux128~63_combout\ & ( \inputA[3]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux128~32_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~33_combout\))) ) ) ) # ( !\Mux128~63_combout\ & ( \inputA[3]~input_o\ & ( (!\inputA[2]~input_o\ & 
-- (\Mux128~32_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~33_combout\))) ) ) ) # ( \Mux128~63_combout\ & ( !\inputA[3]~input_o\ & ( (!\inputA[2]~input_o\) # (\Mux128~51_combout\) ) ) ) # ( !\Mux128~63_combout\ & ( !\inputA[3]~input_o\ & ( 
-- (\inputA[2]~input_o\ & \Mux128~51_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux128~32_combout\,
	datac => \ALT_INV_Mux128~51_combout\,
	datad => \ALT_INV_Mux128~33_combout\,
	datae => \ALT_INV_Mux128~63_combout\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~16_combout\);

-- Location: LABCELL_X14_Y6_N30
\Mux151~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~1_combout\ = ( \Mux65~19_combout\ & ( \Mux65~16_combout\ & ( (!\inputA[1]~input_o\ & (((!\inputA[0]~input_o\)) # (\Mux65~18_combout\))) # (\inputA[1]~input_o\ & (((\inputA[0]~input_o\) # (\Mux65~17_combout\)))) ) ) ) # ( !\Mux65~19_combout\ & ( 
-- \Mux65~16_combout\ & ( (!\inputA[1]~input_o\ & (\Mux65~18_combout\ & ((\inputA[0]~input_o\)))) # (\inputA[1]~input_o\ & (((\inputA[0]~input_o\) # (\Mux65~17_combout\)))) ) ) ) # ( \Mux65~19_combout\ & ( !\Mux65~16_combout\ & ( (!\inputA[1]~input_o\ & 
-- (((!\inputA[0]~input_o\)) # (\Mux65~18_combout\))) # (\inputA[1]~input_o\ & (((\Mux65~17_combout\ & !\inputA[0]~input_o\)))) ) ) ) # ( !\Mux65~19_combout\ & ( !\Mux65~16_combout\ & ( (!\inputA[1]~input_o\ & (\Mux65~18_combout\ & ((\inputA[0]~input_o\)))) 
-- # (\inputA[1]~input_o\ & (((\Mux65~17_combout\ & !\inputA[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_Mux65~18_combout\,
	datac => \ALT_INV_Mux65~17_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~19_combout\,
	dataf => \ALT_INV_Mux65~16_combout\,
	combout => \Mux151~1_combout\);

-- Location: MLABCELL_X18_Y6_N18
\Mux128~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~58_combout\ = ( \inputB[25]~input_o\ & ( (!\inputA[3]~input_o\ & !\inputA[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \Mux128~58_combout\);

-- Location: MLABCELL_X18_Y6_N21
\Mux128~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~64_combout\ = ( \inputB[27]~input_o\ & ( (!\inputA[3]~input_o\ & !\inputA[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[27]~input_o\,
	combout => \Mux128~64_combout\);

-- Location: LABCELL_X20_Y5_N48
\Mux128~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~70_combout\ = ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & \inputB[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux128~70_combout\);

-- Location: MLABCELL_X18_Y6_N42
\Mux128~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~71_combout\ = ( \inputA[2]~input_o\ & ( \Mux128~70_combout\ & ( (\Mux128~64_combout\) # (\inputA[1]~input_o\) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux128~70_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux128~52_combout\))) # (\inputA[1]~input_o\ & 
-- (\Mux128~58_combout\)) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux128~70_combout\ & ( (!\inputA[1]~input_o\ & \Mux128~64_combout\) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux128~70_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux128~52_combout\))) # 
-- (\inputA[1]~input_o\ & (\Mux128~58_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~58_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~64_combout\,
	datad => \ALT_INV_Mux128~52_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux128~70_combout\,
	combout => \Mux128~71_combout\);

-- Location: LABCELL_X16_Y4_N15
\Mux128~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~73_combout\ = ( \inputB[30]~input_o\ & ( (!\inputA[4]~input_o\ & !\inputA[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[30]~input_o\,
	combout => \Mux128~73_combout\);

-- Location: LABCELL_X16_Y4_N33
\Mux128~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~67_combout\ = ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & \inputB[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux128~67_combout\);

-- Location: LABCELL_X16_Y4_N12
\Mux128~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~61_combout\ = (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	combout => \Mux128~61_combout\);

-- Location: MLABCELL_X9_Y4_N54
\Mux128~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~74_combout\ = ( \inputA[1]~input_o\ & ( \Mux128~55_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux128~61_combout\))) # (\inputA[2]~input_o\ & (\Mux128~73_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux128~55_combout\ & ( (!\inputA[2]~input_o\) # 
-- (\Mux128~67_combout\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux128~55_combout\ & ( (!\inputA[2]~input_o\ & ((\Mux128~61_combout\))) # (\inputA[2]~input_o\ & (\Mux128~73_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux128~55_combout\ & ( 
-- (\inputA[2]~input_o\ & \Mux128~67_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux128~73_combout\,
	datac => \ALT_INV_Mux128~67_combout\,
	datad => \ALT_INV_Mux128~61_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux128~55_combout\,
	combout => \Mux128~74_combout\);

-- Location: LABCELL_X10_Y5_N33
\Mux151~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~2_combout\ = ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux128~71_combout\)) # (\inputA[0]~input_o\ & ((\Mux128~74_combout\))) ) ) # ( !\aluControl[0]~input_o\ & ( \Mux151~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux151~1_combout\,
	datab => \ALT_INV_Mux128~71_combout\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_Mux128~74_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux151~2_combout\);

-- Location: LABCELL_X16_Y4_N36
\Mux64~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~64_combout\ = ( \inputB[20]~input_o\ & ( (!\shamt[4]~input_o\) # (\inputB[4]~input_o\) ) ) # ( !\inputB[20]~input_o\ & ( (\shamt[4]~input_o\ & \inputB[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_inputB[20]~input_o\,
	combout => \Mux64~64_combout\);

-- Location: LABCELL_X19_Y6_N18
\Mux1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~16_combout\ = ( \shamt[2]~input_o\ & ( \Mux64~52_combout\ & ( (!\shamt[3]~input_o\) # (\Mux64~34_combout\) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux64~52_combout\ & ( (!\shamt[3]~input_o\ & ((\Mux64~64_combout\))) # (\shamt[3]~input_o\ & 
-- (\Mux64~32_combout\)) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux64~52_combout\ & ( (\shamt[3]~input_o\ & \Mux64~34_combout\) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux64~52_combout\ & ( (!\shamt[3]~input_o\ & ((\Mux64~64_combout\))) # (\shamt[3]~input_o\ & 
-- (\Mux64~32_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000110000001100010001110111011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~32_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux64~34_combout\,
	datad => \ALT_INV_Mux64~64_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux64~52_combout\,
	combout => \Mux1~16_combout\);

-- Location: MLABCELL_X23_Y4_N9
\Mux64~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~44_combout\ = (!\shamt[4]~input_o\ & \inputB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	combout => \Mux64~44_combout\);

-- Location: LABCELL_X16_Y4_N48
\Mux64~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~70_combout\ = ( \inputB[22]~input_o\ & ( (!\shamt[4]~input_o\) # (\inputB[6]~input_o\) ) ) # ( !\inputB[22]~input_o\ & ( (\shamt[4]~input_o\ & \inputB[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \Mux64~70_combout\);

-- Location: MLABCELL_X23_Y4_N3
\Mux64~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~58_combout\ = ( \inputB[18]~input_o\ & ( (!\shamt[4]~input_o\) # (\inputB[2]~input_o\) ) ) # ( !\inputB[18]~input_o\ & ( (\shamt[4]~input_o\ & \inputB[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \Mux64~58_combout\);

-- Location: MLABCELL_X23_Y4_N6
\Mux64~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~42_combout\ = ( \inputB[14]~input_o\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[14]~input_o\,
	combout => \Mux64~42_combout\);

-- Location: MLABCELL_X23_Y4_N24
\Mux1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~18_combout\ = ( \Mux64~58_combout\ & ( \Mux64~42_combout\ & ( (!\shamt[2]~input_o\ & (((\Mux64~70_combout\) # (\shamt[3]~input_o\)))) # (\shamt[2]~input_o\ & (((!\shamt[3]~input_o\)) # (\Mux64~44_combout\))) ) ) ) # ( !\Mux64~58_combout\ & ( 
-- \Mux64~42_combout\ & ( (!\shamt[2]~input_o\ & (((\Mux64~70_combout\) # (\shamt[3]~input_o\)))) # (\shamt[2]~input_o\ & (\Mux64~44_combout\ & (\shamt[3]~input_o\))) ) ) ) # ( \Mux64~58_combout\ & ( !\Mux64~42_combout\ & ( (!\shamt[2]~input_o\ & 
-- (((!\shamt[3]~input_o\ & \Mux64~70_combout\)))) # (\shamt[2]~input_o\ & (((!\shamt[3]~input_o\)) # (\Mux64~44_combout\))) ) ) ) # ( !\Mux64~58_combout\ & ( !\Mux64~42_combout\ & ( (!\shamt[2]~input_o\ & (((!\shamt[3]~input_o\ & \Mux64~70_combout\)))) # 
-- (\shamt[2]~input_o\ & (\Mux64~44_combout\ & (\shamt[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_Mux64~44_combout\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_Mux64~70_combout\,
	datae => \ALT_INV_Mux64~58_combout\,
	dataf => \ALT_INV_Mux64~42_combout\,
	combout => \Mux1~18_combout\);

-- Location: LABCELL_X19_Y4_N0
\Mux64~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~49_combout\ = (!\shamt[4]~input_o\ & \inputB[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux64~49_combout\);

-- Location: LABCELL_X20_Y5_N51
\Mux64~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~61_combout\ = ( \inputB[19]~input_o\ & ( (!\shamt[4]~input_o\) # (\inputB[3]~input_o\) ) ) # ( !\inputB[19]~input_o\ & ( (\shamt[4]~input_o\ & \inputB[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	combout => \Mux64~61_combout\);

-- Location: LABCELL_X19_Y4_N36
\Mux1~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~19_combout\ = ( \shamt[2]~input_o\ & ( \shamt[3]~input_o\ & ( \Mux64~49_combout\ ) ) ) # ( !\shamt[2]~input_o\ & ( \shamt[3]~input_o\ & ( \Mux64~47_combout\ ) ) ) # ( \shamt[2]~input_o\ & ( !\shamt[3]~input_o\ & ( \Mux64~61_combout\ ) ) ) # ( 
-- !\shamt[2]~input_o\ & ( !\shamt[3]~input_o\ & ( \Mux64~73_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~47_combout\,
	datab => \ALT_INV_Mux64~73_combout\,
	datac => \ALT_INV_Mux64~49_combout\,
	datad => \ALT_INV_Mux64~61_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~19_combout\);

-- Location: MLABCELL_X23_Y4_N21
\Mux64~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~67_combout\ = ( \inputB[5]~input_o\ & ( (\inputB[21]~input_o\) # (\shamt[4]~input_o\) ) ) # ( !\inputB[5]~input_o\ & ( (!\shamt[4]~input_o\ & \inputB[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[21]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux64~67_combout\);

-- Location: MLABCELL_X23_Y4_N54
\Mux1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~17_combout\ = ( \Mux64~67_combout\ & ( \Mux64~39_combout\ & ( (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\) # ((\Mux64~55_combout\)))) # (\shamt[3]~input_o\ & (((\Mux64~37_combout\)) # (\shamt[2]~input_o\))) ) ) ) # ( !\Mux64~67_combout\ & ( 
-- \Mux64~39_combout\ & ( (!\shamt[3]~input_o\ & (\shamt[2]~input_o\ & ((\Mux64~55_combout\)))) # (\shamt[3]~input_o\ & (((\Mux64~37_combout\)) # (\shamt[2]~input_o\))) ) ) ) # ( \Mux64~67_combout\ & ( !\Mux64~39_combout\ & ( (!\shamt[3]~input_o\ & 
-- ((!\shamt[2]~input_o\) # ((\Mux64~55_combout\)))) # (\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & (\Mux64~37_combout\))) ) ) ) # ( !\Mux64~67_combout\ & ( !\Mux64~39_combout\ & ( (!\shamt[3]~input_o\ & (\shamt[2]~input_o\ & ((\Mux64~55_combout\)))) # 
-- (\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & (\Mux64~37_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~37_combout\,
	datad => \ALT_INV_Mux64~55_combout\,
	datae => \ALT_INV_Mux64~67_combout\,
	dataf => \ALT_INV_Mux64~39_combout\,
	combout => \Mux1~17_combout\);

-- Location: LABCELL_X19_Y6_N9
\Mux151~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~3_combout\ = ( \Mux1~19_combout\ & ( \Mux1~17_combout\ & ( (!\shamt[0]~input_o\) # ((!\shamt[1]~input_o\ & ((\Mux1~18_combout\))) # (\shamt[1]~input_o\ & (\Mux1~16_combout\))) ) ) ) # ( !\Mux1~19_combout\ & ( \Mux1~17_combout\ & ( 
-- (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\Mux1~18_combout\))) # (\shamt[1]~input_o\ & (\Mux1~16_combout\)))) ) ) ) # ( \Mux1~19_combout\ & ( !\Mux1~17_combout\ & ( (!\shamt[0]~input_o\ & 
-- (((!\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\Mux1~18_combout\))) # (\shamt[1]~input_o\ & (\Mux1~16_combout\)))) ) ) ) # ( !\Mux1~19_combout\ & ( !\Mux1~17_combout\ & ( (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & 
-- ((\Mux1~18_combout\))) # (\shamt[1]~input_o\ & (\Mux1~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~16_combout\,
	datab => \ALT_INV_Mux1~18_combout\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux1~19_combout\,
	dataf => \ALT_INV_Mux1~17_combout\,
	combout => \Mux151~3_combout\);

-- Location: MLABCELL_X18_Y6_N9
\Mux64~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~59_combout\ = (!\shamt[3]~input_o\ & (!\shamt[4]~input_o\ & \inputB[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[25]~input_o\,
	combout => \Mux64~59_combout\);

-- Location: MLABCELL_X18_Y6_N6
\Mux64~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~65_combout\ = ( \inputB[27]~input_o\ & ( (!\shamt[3]~input_o\ & !\shamt[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[27]~input_o\,
	combout => \Mux64~65_combout\);

-- Location: LABCELL_X20_Y5_N57
\Mux64~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~71_combout\ = ( \inputB[29]~input_o\ & ( (!\shamt[4]~input_o\ & !\shamt[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux64~71_combout\);

-- Location: MLABCELL_X9_Y5_N24
\Mux64~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~72_combout\ = ( \Mux64~65_combout\ & ( \Mux64~71_combout\ & ( ((!\shamt[1]~input_o\ & ((\Mux64~53_combout\))) # (\shamt[1]~input_o\ & (\Mux64~59_combout\))) # (\shamt[2]~input_o\) ) ) ) # ( !\Mux64~65_combout\ & ( \Mux64~71_combout\ & ( 
-- (!\shamt[1]~input_o\ & (((!\shamt[2]~input_o\ & \Mux64~53_combout\)))) # (\shamt[1]~input_o\ & (((\shamt[2]~input_o\)) # (\Mux64~59_combout\))) ) ) ) # ( \Mux64~65_combout\ & ( !\Mux64~71_combout\ & ( (!\shamt[1]~input_o\ & (((\Mux64~53_combout\) # 
-- (\shamt[2]~input_o\)))) # (\shamt[1]~input_o\ & (\Mux64~59_combout\ & (!\shamt[2]~input_o\))) ) ) ) # ( !\Mux64~65_combout\ & ( !\Mux64~71_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & ((\Mux64~53_combout\))) # (\shamt[1]~input_o\ & 
-- (\Mux64~59_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~59_combout\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_Mux64~53_combout\,
	datae => \ALT_INV_Mux64~65_combout\,
	dataf => \ALT_INV_Mux64~71_combout\,
	combout => \Mux64~72_combout\);

-- Location: LABCELL_X10_Y2_N51
\Mux64~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~68_combout\ = ( !\shamt[4]~input_o\ & ( (!\shamt[3]~input_o\ & \inputB[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux64~68_combout\);

-- Location: LABCELL_X12_Y4_N30
\Mux64~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~74_combout\ = ( !\shamt[3]~input_o\ & ( (!\shamt[4]~input_o\ & \inputB[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~74_combout\);

-- Location: LABCELL_X10_Y2_N39
\Mux64~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~62_combout\ = ( !\shamt[4]~input_o\ & ( (\inputB[26]~input_o\ & !\shamt[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[26]~input_o\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux64~62_combout\);

-- Location: LABCELL_X10_Y2_N24
\Mux64~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~75_combout\ = ( \Mux64~56_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[1]~input_o\ & (\Mux64~68_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~74_combout\))) ) ) ) # ( !\Mux64~56_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- (\Mux64~68_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~74_combout\))) ) ) ) # ( \Mux64~56_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[1]~input_o\) # (\Mux64~62_combout\) ) ) ) # ( !\Mux64~56_combout\ & ( !\shamt[2]~input_o\ & ( (\shamt[1]~input_o\ & 
-- \Mux64~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~68_combout\,
	datab => \ALT_INV_Mux64~74_combout\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_Mux64~62_combout\,
	datae => \ALT_INV_Mux64~56_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux64~75_combout\);

-- Location: LABCELL_X10_Y5_N48
\Mux151~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~4_combout\ = ( \Mux64~75_combout\ & ( \Mux152~1_combout\ & ( (\Mux64~72_combout\) # (\Mux152~0_combout\) ) ) ) # ( !\Mux64~75_combout\ & ( \Mux152~1_combout\ & ( (!\Mux152~0_combout\ & \Mux64~72_combout\) ) ) ) # ( \Mux64~75_combout\ & ( 
-- !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux151~2_combout\)) # (\Mux152~0_combout\ & ((\Mux151~3_combout\))) ) ) ) # ( !\Mux64~75_combout\ & ( !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux151~2_combout\)) # (\Mux152~0_combout\ & 
-- ((\Mux151~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~0_combout\,
	datab => \ALT_INV_Mux151~2_combout\,
	datac => \ALT_INV_Mux151~3_combout\,
	datad => \ALT_INV_Mux64~72_combout\,
	datae => \ALT_INV_Mux64~75_combout\,
	dataf => \ALT_INV_Mux152~1_combout\,
	combout => \Mux151~4_combout\);

-- Location: MLABCELL_X9_Y3_N39
\res~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~7_combout\ = ( !\inputB[23]~input_o\ & ( !\inputA[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[23]~input_o\,
	dataf => \ALT_INV_inputB[23]~input_o\,
	combout => \res~7_combout\);

-- Location: LABCELL_X10_Y3_N57
\Mux151~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~0_combout\ = ( \inputB[23]~input_o\ & ( \aluControl[0]~input_o\ & ( !\aluControl[1]~input_o\ ) ) ) # ( !\inputB[23]~input_o\ & ( \aluControl[0]~input_o\ & ( (\inputA[23]~input_o\ & !\aluControl[1]~input_o\) ) ) ) # ( \inputB[23]~input_o\ & ( 
-- !\aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & (\inputA[23]~input_o\)) # (\aluControl[1]~input_o\ & ((\Add0~93_sumout\))) ) ) ) # ( !\inputB[23]~input_o\ & ( !\aluControl[0]~input_o\ & ( (\Add0~93_sumout\ & \aluControl[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100110101001101010000010100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[23]~input_o\,
	datab => \ALT_INV_Add0~93_sumout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_inputB[23]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux151~0_combout\);

-- Location: LABCELL_X10_Y5_N36
\Mux151~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux151~5_combout\ = ( \Mux152~3_combout\ & ( \Mux151~0_combout\ & ( (!\Mux152~2_combout\ & ((\res~7_combout\))) # (\Mux152~2_combout\ & (\inputB[7]~input_o\)) ) ) ) # ( !\Mux152~3_combout\ & ( \Mux151~0_combout\ & ( (!\Mux152~2_combout\) # 
-- (\Mux151~4_combout\) ) ) ) # ( \Mux152~3_combout\ & ( !\Mux151~0_combout\ & ( (!\Mux152~2_combout\ & ((\res~7_combout\))) # (\Mux152~2_combout\ & (\inputB[7]~input_o\)) ) ) ) # ( !\Mux152~3_combout\ & ( !\Mux151~0_combout\ & ( (\Mux152~2_combout\ & 
-- \Mux151~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~2_combout\,
	datab => \ALT_INV_Mux151~4_combout\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_res~7_combout\,
	datae => \ALT_INV_Mux152~3_combout\,
	dataf => \ALT_INV_Mux151~0_combout\,
	combout => \Mux151~5_combout\);

-- Location: LABCELL_X10_Y5_N30
\res[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(23) = ( res(23) & ( (\Mux160~0_combout\) # (\Mux151~5_combout\) ) ) # ( !res(23) & ( (\Mux151~5_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux151~5_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(23),
	combout => res(23));

-- Location: LABCELL_X19_Y4_N21
\Mux128~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~47_combout\ = (!\inputA[4]~input_o\ & \inputB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	combout => \Mux128~47_combout\);

-- Location: LABCELL_X19_Y4_N54
\Mux65~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~15_combout\ = ( \inputA[2]~input_o\ & ( \Mux128~46_combout\ & ( (!\inputA[3]~input_o\) # (\Mux128~47_combout\) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux128~46_combout\ & ( (!\inputA[3]~input_o\ & ((\Mux128~60_combout\))) # (\inputA[3]~input_o\ & 
-- (\Mux128~48_combout\)) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux128~46_combout\ & ( (\Mux128~47_combout\ & \inputA[3]~input_o\) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux128~46_combout\ & ( (!\inputA[3]~input_o\ & ((\Mux128~60_combout\))) # 
-- (\inputA[3]~input_o\ & (\Mux128~48_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~48_combout\,
	datab => \ALT_INV_Mux128~60_combout\,
	datac => \ALT_INV_Mux128~47_combout\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux128~46_combout\,
	combout => \Mux65~15_combout\);

-- Location: LABCELL_X21_Y4_N57
\Mux128~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~42_combout\ = (\inputB[6]~input_o\ & !\inputA[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux128~42_combout\);

-- Location: LABCELL_X21_Y4_N6
\Mux65~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~14_combout\ = ( \Mux128~41_combout\ & ( \Mux128~57_combout\ & ( (!\inputA[3]~input_o\) # ((!\inputA[2]~input_o\ & ((\Mux128~43_combout\))) # (\inputA[2]~input_o\ & (\Mux128~42_combout\))) ) ) ) # ( !\Mux128~41_combout\ & ( \Mux128~57_combout\ & ( 
-- (!\inputA[2]~input_o\ & (((!\inputA[3]~input_o\) # (\Mux128~43_combout\)))) # (\inputA[2]~input_o\ & (\Mux128~42_combout\ & ((\inputA[3]~input_o\)))) ) ) ) # ( \Mux128~41_combout\ & ( !\Mux128~57_combout\ & ( (!\inputA[2]~input_o\ & (((\Mux128~43_combout\ 
-- & \inputA[3]~input_o\)))) # (\inputA[2]~input_o\ & (((!\inputA[3]~input_o\)) # (\Mux128~42_combout\))) ) ) ) # ( !\Mux128~41_combout\ & ( !\Mux128~57_combout\ & ( (\inputA[3]~input_o\ & ((!\inputA[2]~input_o\ & ((\Mux128~43_combout\))) # 
-- (\inputA[2]~input_o\ & (\Mux128~42_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux128~42_combout\,
	datac => \ALT_INV_Mux128~43_combout\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_Mux128~41_combout\,
	dataf => \ALT_INV_Mux128~57_combout\,
	combout => \Mux65~14_combout\);

-- Location: LABCELL_X14_Y6_N12
\Mux148~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~1_combout\ = ( \Mux65~14_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\) # (\Mux65~13_combout\) ) ) ) # ( !\Mux65~14_combout\ & ( \inputA[1]~input_o\ & ( (\Mux65~13_combout\ & \inputA[0]~input_o\) ) ) ) # ( \Mux65~14_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux65~16_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~15_combout\))) ) ) ) # ( !\Mux65~14_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux65~16_combout\)) # (\inputA[0]~input_o\ & 
-- ((\Mux65~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~13_combout\,
	datab => \ALT_INV_Mux65~16_combout\,
	datac => \ALT_INV_Mux65~15_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~14_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux148~1_combout\);

-- Location: MLABCELL_X18_Y6_N0
\Mux128~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~65_combout\ = ( \Mux128~44_combout\ & ( \Mux128~58_combout\ & ( (!\inputA[1]~input_o\) # ((!\inputA[2]~input_o\ & ((\Mux128~52_combout\))) # (\inputA[2]~input_o\ & (\Mux128~64_combout\))) ) ) ) # ( !\Mux128~44_combout\ & ( \Mux128~58_combout\ & ( 
-- (!\inputA[2]~input_o\ & (\inputA[1]~input_o\ & ((\Mux128~52_combout\)))) # (\inputA[2]~input_o\ & ((!\inputA[1]~input_o\) # ((\Mux128~64_combout\)))) ) ) ) # ( \Mux128~44_combout\ & ( !\Mux128~58_combout\ & ( (!\inputA[2]~input_o\ & 
-- ((!\inputA[1]~input_o\) # ((\Mux128~52_combout\)))) # (\inputA[2]~input_o\ & (\inputA[1]~input_o\ & (\Mux128~64_combout\))) ) ) ) # ( !\Mux128~44_combout\ & ( !\Mux128~58_combout\ & ( (\inputA[1]~input_o\ & ((!\inputA[2]~input_o\ & 
-- ((\Mux128~52_combout\))) # (\inputA[2]~input_o\ & (\Mux128~64_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~64_combout\,
	datad => \ALT_INV_Mux128~52_combout\,
	datae => \ALT_INV_Mux128~44_combout\,
	dataf => \ALT_INV_Mux128~58_combout\,
	combout => \Mux128~65_combout\);

-- Location: MLABCELL_X9_Y4_N12
\Mux128~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~62_combout\ = ( \inputA[1]~input_o\ & ( \Mux128~49_combout\ & ( (!\inputA[2]~input_o\) # (\Mux128~61_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux128~49_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~39_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux128~55_combout\))) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux128~49_combout\ & ( (\inputA[2]~input_o\ & \Mux128~61_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux128~49_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~39_combout\)) # 
-- (\inputA[2]~input_o\ & ((\Mux128~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010100100111001001111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux128~39_combout\,
	datac => \ALT_INV_Mux128~55_combout\,
	datad => \ALT_INV_Mux128~61_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux128~49_combout\,
	combout => \Mux128~62_combout\);

-- Location: MLABCELL_X9_Y7_N24
\Mux148~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~2_combout\ = ( \Mux128~62_combout\ & ( (!\aluControl[0]~input_o\ & (((\Mux148~1_combout\)))) # (\aluControl[0]~input_o\ & ((!\inputA[0]~input_o\) # ((\Mux128~65_combout\)))) ) ) # ( !\Mux128~62_combout\ & ( (!\aluControl[0]~input_o\ & 
-- (((\Mux148~1_combout\)))) # (\aluControl[0]~input_o\ & (\inputA[0]~input_o\ & ((\Mux128~65_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux148~1_combout\,
	datad => \ALT_INV_Mux128~65_combout\,
	dataf => \ALT_INV_Mux128~62_combout\,
	combout => \Mux148~2_combout\);

-- Location: LABCELL_X19_Y4_N33
\Mux64~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~48_combout\ = (!\shamt[4]~input_o\ & \inputB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	combout => \Mux64~48_combout\);

-- Location: LABCELL_X19_Y4_N12
\Mux1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~15_combout\ = ( \Mux64~49_combout\ & ( \Mux64~48_combout\ & ( ((!\shamt[2]~input_o\ & ((\Mux64~61_combout\))) # (\shamt[2]~input_o\ & (\Mux64~47_combout\))) # (\shamt[3]~input_o\) ) ) ) # ( !\Mux64~49_combout\ & ( \Mux64~48_combout\ & ( 
-- (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & ((\Mux64~61_combout\))) # (\shamt[2]~input_o\ & (\Mux64~47_combout\)))) # (\shamt[3]~input_o\ & (((\shamt[2]~input_o\)))) ) ) ) # ( \Mux64~49_combout\ & ( !\Mux64~48_combout\ & ( (!\shamt[3]~input_o\ & 
-- ((!\shamt[2]~input_o\ & ((\Mux64~61_combout\))) # (\shamt[2]~input_o\ & (\Mux64~47_combout\)))) # (\shamt[3]~input_o\ & (((!\shamt[2]~input_o\)))) ) ) ) # ( !\Mux64~49_combout\ & ( !\Mux64~48_combout\ & ( (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & 
-- ((\Mux64~61_combout\))) # (\shamt[2]~input_o\ & (\Mux64~47_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~47_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_Mux64~61_combout\,
	datae => \ALT_INV_Mux64~49_combout\,
	dataf => \ALT_INV_Mux64~48_combout\,
	combout => \Mux1~15_combout\);

-- Location: MLABCELL_X23_Y4_N0
\Mux64~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~43_combout\ = ( \inputB[6]~input_o\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \Mux64~43_combout\);

-- Location: MLABCELL_X23_Y4_N12
\Mux1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~14_combout\ = ( \Mux64~58_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\Mux64~42_combout\)) # (\shamt[3]~input_o\ & ((\Mux64~43_combout\))) ) ) ) # ( !\Mux64~58_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & 
-- (\Mux64~42_combout\)) # (\shamt[3]~input_o\ & ((\Mux64~43_combout\))) ) ) ) # ( \Mux64~58_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\) # (\Mux64~44_combout\) ) ) ) # ( !\Mux64~58_combout\ & ( !\shamt[2]~input_o\ & ( (\shamt[3]~input_o\ & 
-- \Mux64~44_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_Mux64~42_combout\,
	datac => \ALT_INV_Mux64~43_combout\,
	datad => \ALT_INV_Mux64~44_combout\,
	datae => \ALT_INV_Mux64~58_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux1~14_combout\);

-- Location: LABCELL_X19_Y6_N24
\Mux148~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~3_combout\ = ( \Mux1~14_combout\ & ( \Mux1~13_combout\ & ( ((!\shamt[0]~input_o\ & (\Mux1~16_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~15_combout\)))) # (\shamt[1]~input_o\) ) ) ) # ( !\Mux1~14_combout\ & ( \Mux1~13_combout\ & ( 
-- (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\Mux1~16_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~15_combout\))))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)))) ) ) ) # ( \Mux1~14_combout\ & ( !\Mux1~13_combout\ & ( (!\shamt[1]~input_o\ & 
-- ((!\shamt[0]~input_o\ & (\Mux1~16_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~15_combout\))))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)))) ) ) ) # ( !\Mux1~14_combout\ & ( !\Mux1~13_combout\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & 
-- (\Mux1~16_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~16_combout\,
	datab => \ALT_INV_Mux1~15_combout\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_Mux1~14_combout\,
	dataf => \ALT_INV_Mux1~13_combout\,
	combout => \Mux148~3_combout\);

-- Location: LABCELL_X10_Y2_N42
\Mux64~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~63_combout\ = ( \Mux64~56_combout\ & ( \Mux64~40_combout\ & ( (!\shamt[1]~input_o\) # ((!\shamt[2]~input_o\ & (\Mux64~50_combout\)) # (\shamt[2]~input_o\ & ((\Mux64~62_combout\)))) ) ) ) # ( !\Mux64~56_combout\ & ( \Mux64~40_combout\ & ( 
-- (!\shamt[2]~input_o\ & (((!\shamt[1]~input_o\)) # (\Mux64~50_combout\))) # (\shamt[2]~input_o\ & (((\shamt[1]~input_o\ & \Mux64~62_combout\)))) ) ) ) # ( \Mux64~56_combout\ & ( !\Mux64~40_combout\ & ( (!\shamt[2]~input_o\ & (\Mux64~50_combout\ & 
-- (\shamt[1]~input_o\))) # (\shamt[2]~input_o\ & (((!\shamt[1]~input_o\) # (\Mux64~62_combout\)))) ) ) ) # ( !\Mux64~56_combout\ & ( !\Mux64~40_combout\ & ( (\shamt[1]~input_o\ & ((!\shamt[2]~input_o\ & (\Mux64~50_combout\)) # (\shamt[2]~input_o\ & 
-- ((\Mux64~62_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~50_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_Mux64~62_combout\,
	datae => \ALT_INV_Mux64~56_combout\,
	dataf => \ALT_INV_Mux64~40_combout\,
	combout => \Mux64~63_combout\);

-- Location: MLABCELL_X9_Y5_N6
\Mux64~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~66_combout\ = ( \Mux64~65_combout\ & ( \shamt[2]~input_o\ & ( (\Mux64~59_combout\) # (\shamt[1]~input_o\) ) ) ) # ( !\Mux64~65_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[1]~input_o\ & \Mux64~59_combout\) ) ) ) # ( \Mux64~65_combout\ & ( 
-- !\shamt[2]~input_o\ & ( (!\shamt[1]~input_o\ & (\Mux64~45_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~53_combout\))) ) ) ) # ( !\Mux64~65_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[1]~input_o\ & (\Mux64~45_combout\)) # (\shamt[1]~input_o\ & 
-- ((\Mux64~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~45_combout\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_Mux64~59_combout\,
	datad => \ALT_INV_Mux64~53_combout\,
	datae => \ALT_INV_Mux64~65_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux64~66_combout\);

-- Location: MLABCELL_X9_Y7_N0
\Mux148~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~4_combout\ = ( \Mux64~66_combout\ & ( \Mux152~1_combout\ & ( (\Mux64~63_combout\) # (\Mux152~0_combout\) ) ) ) # ( !\Mux64~66_combout\ & ( \Mux152~1_combout\ & ( (!\Mux152~0_combout\ & \Mux64~63_combout\) ) ) ) # ( \Mux64~66_combout\ & ( 
-- !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux148~2_combout\)) # (\Mux152~0_combout\ & ((\Mux148~3_combout\))) ) ) ) # ( !\Mux64~66_combout\ & ( !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux148~2_combout\)) # (\Mux152~0_combout\ & 
-- ((\Mux148~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~0_combout\,
	datab => \ALT_INV_Mux148~2_combout\,
	datac => \ALT_INV_Mux148~3_combout\,
	datad => \ALT_INV_Mux64~63_combout\,
	datae => \ALT_INV_Mux64~66_combout\,
	dataf => \ALT_INV_Mux152~1_combout\,
	combout => \Mux148~4_combout\);

-- Location: LABCELL_X17_Y7_N15
\res~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~4_combout\ = ( !\inputA[20]~input_o\ & ( !\inputB[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[20]~input_o\,
	datae => \ALT_INV_inputA[20]~input_o\,
	combout => \res~4_combout\);

-- Location: MLABCELL_X9_Y7_N30
\Mux148~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~0_combout\ = ( \aluControl[1]~input_o\ & ( (!\aluControl[0]~input_o\ & \Add0~81_sumout\) ) ) # ( !\aluControl[1]~input_o\ & ( (!\aluControl[0]~input_o\ & (\inputB[20]~input_o\ & \inputA[20]~input_o\)) # (\aluControl[0]~input_o\ & 
-- ((\inputA[20]~input_o\) # (\inputB[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_inputB[20]~input_o\,
	datac => \ALT_INV_Add0~81_sumout\,
	datad => \ALT_INV_inputA[20]~input_o\,
	dataf => \ALT_INV_aluControl[1]~input_o\,
	combout => \Mux148~0_combout\);

-- Location: MLABCELL_X9_Y7_N12
\Mux148~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux148~5_combout\ = ( \Mux152~2_combout\ & ( \Mux148~0_combout\ & ( (!\Mux152~3_combout\ & (\Mux148~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[4]~input_o\))) ) ) ) # ( !\Mux152~2_combout\ & ( \Mux148~0_combout\ & ( (!\Mux152~3_combout\) # 
-- (\res~4_combout\) ) ) ) # ( \Mux152~2_combout\ & ( !\Mux148~0_combout\ & ( (!\Mux152~3_combout\ & (\Mux148~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[4]~input_o\))) ) ) ) # ( !\Mux152~2_combout\ & ( !\Mux148~0_combout\ & ( (\res~4_combout\ & 
-- \Mux152~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux148~4_combout\,
	datab => \ALT_INV_res~4_combout\,
	datac => \ALT_INV_Mux152~3_combout\,
	datad => \ALT_INV_inputB[4]~input_o\,
	datae => \ALT_INV_Mux152~2_combout\,
	dataf => \ALT_INV_Mux148~0_combout\,
	combout => \Mux148~5_combout\);

-- Location: MLABCELL_X9_Y7_N33
\res[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(20) = ( res(20) & ( (\Mux160~0_combout\) # (\Mux148~5_combout\) ) ) # ( !res(20) & ( (\Mux148~5_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux148~5_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(20),
	combout => res(20));

-- Location: LABCELL_X14_Y6_N0
\Mux146~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~1_combout\ = ( \Mux65~14_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux65~12_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~37_combout\))) ) ) ) # ( !\Mux65~14_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- (\Mux65~12_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~37_combout\))) ) ) ) # ( \Mux65~14_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\) # (\Mux65~13_combout\) ) ) ) # ( !\Mux65~14_combout\ & ( !\inputA[1]~input_o\ & ( (\Mux65~13_combout\ & 
-- \inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~12_combout\,
	datab => \ALT_INV_Mux65~13_combout\,
	datac => \ALT_INV_Mux65~37_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~14_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux146~1_combout\);

-- Location: MLABCELL_X18_Y6_N36
\Mux128~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~59_combout\ = ( \Mux128~34_combout\ & ( \Mux128~58_combout\ & ( (!\inputA[1]~input_o\ & (((!\inputA[2]~input_o\) # (\Mux128~52_combout\)))) # (\inputA[1]~input_o\ & (((\inputA[2]~input_o\)) # (\Mux128~44_combout\))) ) ) ) # ( !\Mux128~34_combout\ 
-- & ( \Mux128~58_combout\ & ( (!\inputA[1]~input_o\ & (((\inputA[2]~input_o\ & \Mux128~52_combout\)))) # (\inputA[1]~input_o\ & (((\inputA[2]~input_o\)) # (\Mux128~44_combout\))) ) ) ) # ( \Mux128~34_combout\ & ( !\Mux128~58_combout\ & ( 
-- (!\inputA[1]~input_o\ & (((!\inputA[2]~input_o\) # (\Mux128~52_combout\)))) # (\inputA[1]~input_o\ & (\Mux128~44_combout\ & (!\inputA[2]~input_o\))) ) ) ) # ( !\Mux128~34_combout\ & ( !\Mux128~58_combout\ & ( (!\inputA[1]~input_o\ & (((\inputA[2]~input_o\ 
-- & \Mux128~52_combout\)))) # (\inputA[1]~input_o\ & (\Mux128~44_combout\ & (!\inputA[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~44_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux128~52_combout\,
	datae => \ALT_INV_Mux128~34_combout\,
	dataf => \ALT_INV_Mux128~58_combout\,
	combout => \Mux128~59_combout\);

-- Location: MLABCELL_X9_Y7_N36
\Mux146~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~2_combout\ = ( \Mux128~56_combout\ & ( (!\aluControl[0]~input_o\ & (((\Mux146~1_combout\)))) # (\aluControl[0]~input_o\ & ((!\inputA[0]~input_o\) # ((\Mux128~59_combout\)))) ) ) # ( !\Mux128~56_combout\ & ( (!\aluControl[0]~input_o\ & 
-- (((\Mux146~1_combout\)))) # (\aluControl[0]~input_o\ & (\inputA[0]~input_o\ & ((\Mux128~59_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux146~1_combout\,
	datad => \ALT_INV_Mux128~59_combout\,
	dataf => \ALT_INV_Mux128~56_combout\,
	combout => \Mux146~2_combout\);

-- Location: LABCELL_X19_Y5_N42
\Mux64~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~60_combout\ = ( \shamt[2]~input_o\ & ( \Mux64~35_combout\ & ( (!\shamt[1]~input_o\ & (\Mux64~53_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~59_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux64~35_combout\ & ( (!\shamt[1]~input_o\) # 
-- (\Mux64~45_combout\) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux64~35_combout\ & ( (!\shamt[1]~input_o\ & (\Mux64~53_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~59_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux64~35_combout\ & ( (\Mux64~45_combout\ & 
-- \shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~45_combout\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_Mux64~53_combout\,
	datad => \ALT_INV_Mux64~59_combout\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux64~35_combout\,
	combout => \Mux64~60_combout\);

-- Location: LABCELL_X19_Y6_N42
\Mux146~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~3_combout\ = ( \Mux1~14_combout\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\Mux1~12_combout\))) # (\shamt[0]~input_o\ & (\Mux1~37_combout\)) ) ) ) # ( !\Mux1~14_combout\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- ((\Mux1~12_combout\))) # (\shamt[0]~input_o\ & (\Mux1~37_combout\)) ) ) ) # ( \Mux1~14_combout\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\) # (\Mux1~13_combout\) ) ) ) # ( !\Mux1~14_combout\ & ( !\shamt[1]~input_o\ & ( (\Mux1~13_combout\ & 
-- \shamt[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~13_combout\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_Mux1~37_combout\,
	datad => \ALT_INV_Mux1~12_combout\,
	datae => \ALT_INV_Mux1~14_combout\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \Mux146~3_combout\);

-- Location: LABCELL_X10_Y7_N54
\Mux146~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~4_combout\ = ( \Mux146~3_combout\ & ( \Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux64~57_combout\)) # (\Mux152~0_combout\ & ((\Mux64~60_combout\))) ) ) ) # ( !\Mux146~3_combout\ & ( \Mux152~1_combout\ & ( (!\Mux152~0_combout\ & 
-- (\Mux64~57_combout\)) # (\Mux152~0_combout\ & ((\Mux64~60_combout\))) ) ) ) # ( \Mux146~3_combout\ & ( !\Mux152~1_combout\ & ( (\Mux146~2_combout\) # (\Mux152~0_combout\) ) ) ) # ( !\Mux146~3_combout\ & ( !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & 
-- \Mux146~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~0_combout\,
	datab => \ALT_INV_Mux146~2_combout\,
	datac => \ALT_INV_Mux64~57_combout\,
	datad => \ALT_INV_Mux64~60_combout\,
	datae => \ALT_INV_Mux146~3_combout\,
	dataf => \ALT_INV_Mux152~1_combout\,
	combout => \Mux146~4_combout\);

-- Location: LABCELL_X10_Y8_N33
\res~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~2_combout\ = ( !\inputA[18]~input_o\ & ( !\inputB[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_inputA[18]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \res~2_combout\);

-- Location: LABCELL_X10_Y8_N42
\Mux146~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~0_combout\ = ( \aluControl[1]~input_o\ & ( (!\aluControl[0]~input_o\ & \Add0~73_sumout\) ) ) # ( !\aluControl[1]~input_o\ & ( (!\inputB[18]~input_o\ & (\aluControl[0]~input_o\ & \inputA[18]~input_o\)) # (\inputB[18]~input_o\ & 
-- ((\inputA[18]~input_o\) # (\aluControl[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[18]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_inputA[18]~input_o\,
	datad => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_aluControl[1]~input_o\,
	combout => \Mux146~0_combout\);

-- Location: LABCELL_X10_Y7_N6
\Mux146~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux146~5_combout\ = ( \Mux152~2_combout\ & ( \Mux146~0_combout\ & ( (!\Mux152~3_combout\ & (\Mux146~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[2]~input_o\))) ) ) ) # ( !\Mux152~2_combout\ & ( \Mux146~0_combout\ & ( (!\Mux152~3_combout\) # 
-- (\res~2_combout\) ) ) ) # ( \Mux152~2_combout\ & ( !\Mux146~0_combout\ & ( (!\Mux152~3_combout\ & (\Mux146~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[2]~input_o\))) ) ) ) # ( !\Mux152~2_combout\ & ( !\Mux146~0_combout\ & ( (\Mux152~3_combout\ & 
-- \res~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~3_combout\,
	datab => \ALT_INV_Mux146~4_combout\,
	datac => \ALT_INV_res~2_combout\,
	datad => \ALT_INV_inputB[2]~input_o\,
	datae => \ALT_INV_Mux152~2_combout\,
	dataf => \ALT_INV_Mux146~0_combout\,
	combout => \Mux146~5_combout\);

-- Location: LABCELL_X10_Y7_N33
\res[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(18) = ( res(18) & ( (\Mux160~0_combout\) # (\Mux146~5_combout\) ) ) # ( !res(18) & ( (\Mux146~5_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux146~5_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(18),
	combout => res(18));

-- Location: LABCELL_X10_Y2_N54
\Mux64~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~69_combout\ = ( \Mux64~56_combout\ & ( \Mux64~50_combout\ & ( (!\shamt[2]~input_o\) # ((!\shamt[1]~input_o\ & ((\Mux64~62_combout\))) # (\shamt[1]~input_o\ & (\Mux64~68_combout\))) ) ) ) # ( !\Mux64~56_combout\ & ( \Mux64~50_combout\ & ( 
-- (!\shamt[1]~input_o\ & ((!\shamt[2]~input_o\) # ((\Mux64~62_combout\)))) # (\shamt[1]~input_o\ & (\shamt[2]~input_o\ & (\Mux64~68_combout\))) ) ) ) # ( \Mux64~56_combout\ & ( !\Mux64~50_combout\ & ( (!\shamt[1]~input_o\ & (\shamt[2]~input_o\ & 
-- ((\Mux64~62_combout\)))) # (\shamt[1]~input_o\ & ((!\shamt[2]~input_o\) # ((\Mux64~68_combout\)))) ) ) ) # ( !\Mux64~56_combout\ & ( !\Mux64~50_combout\ & ( (\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & ((\Mux64~62_combout\))) # (\shamt[1]~input_o\ & 
-- (\Mux64~68_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~68_combout\,
	datad => \ALT_INV_Mux64~62_combout\,
	datae => \ALT_INV_Mux64~56_combout\,
	dataf => \ALT_INV_Mux64~50_combout\,
	combout => \Mux64~69_combout\);

-- Location: LABCELL_X19_Y6_N0
\Mux150~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~3_combout\ = ( \Mux1~18_combout\ & ( \Mux1~17_combout\ & ( (!\shamt[1]~input_o\) # ((!\shamt[0]~input_o\ & (\Mux1~16_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~15_combout\)))) ) ) ) # ( !\Mux1~18_combout\ & ( \Mux1~17_combout\ & ( 
-- (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\Mux1~16_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~15_combout\))))) ) ) ) # ( \Mux1~18_combout\ & ( !\Mux1~17_combout\ & ( (!\shamt[1]~input_o\ & 
-- (((!\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\Mux1~16_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~15_combout\))))) ) ) ) # ( !\Mux1~18_combout\ & ( !\Mux1~17_combout\ & ( (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & 
-- (\Mux1~16_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~16_combout\,
	datab => \ALT_INV_Mux1~15_combout\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_Mux1~18_combout\,
	dataf => \ALT_INV_Mux1~17_combout\,
	combout => \Mux150~3_combout\);

-- Location: MLABCELL_X9_Y4_N18
\Mux128~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~68_combout\ = ( \inputA[1]~input_o\ & ( \Mux128~55_combout\ & ( (!\inputA[2]~input_o\) # (\Mux128~67_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux128~55_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~49_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux128~61_combout\))) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux128~55_combout\ & ( (\Mux128~67_combout\ & \inputA[2]~input_o\) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux128~55_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~49_combout\)) # 
-- (\inputA[2]~input_o\ & ((\Mux128~61_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~67_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux128~49_combout\,
	datad => \ALT_INV_Mux128~61_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux128~55_combout\,
	combout => \Mux128~68_combout\);

-- Location: LABCELL_X14_Y6_N48
\Mux150~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~1_combout\ = ( \Mux65~17_combout\ & ( \Mux65~16_combout\ & ( (!\inputA[1]~input_o\ & (((\inputA[0]~input_o\)) # (\Mux65~18_combout\))) # (\inputA[1]~input_o\ & (((!\inputA[0]~input_o\) # (\Mux65~15_combout\)))) ) ) ) # ( !\Mux65~17_combout\ & ( 
-- \Mux65~16_combout\ & ( (!\inputA[1]~input_o\ & (\Mux65~18_combout\ & ((!\inputA[0]~input_o\)))) # (\inputA[1]~input_o\ & (((!\inputA[0]~input_o\) # (\Mux65~15_combout\)))) ) ) ) # ( \Mux65~17_combout\ & ( !\Mux65~16_combout\ & ( (!\inputA[1]~input_o\ & 
-- (((\inputA[0]~input_o\)) # (\Mux65~18_combout\))) # (\inputA[1]~input_o\ & (((\Mux65~15_combout\ & \inputA[0]~input_o\)))) ) ) ) # ( !\Mux65~17_combout\ & ( !\Mux65~16_combout\ & ( (!\inputA[1]~input_o\ & (\Mux65~18_combout\ & ((!\inputA[0]~input_o\)))) # 
-- (\inputA[1]~input_o\ & (((\Mux65~15_combout\ & \inputA[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_Mux65~18_combout\,
	datac => \ALT_INV_Mux65~15_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~17_combout\,
	dataf => \ALT_INV_Mux65~16_combout\,
	combout => \Mux150~1_combout\);

-- Location: LABCELL_X10_Y5_N21
\Mux150~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~2_combout\ = ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux128~68_combout\)) # (\inputA[0]~input_o\ & ((\Mux128~71_combout\))) ) ) # ( !\aluControl[0]~input_o\ & ( \Mux150~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~68_combout\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux128~71_combout\,
	datad => \ALT_INV_Mux150~1_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux150~2_combout\);

-- Location: LABCELL_X10_Y5_N6
\Mux150~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~4_combout\ = ( \Mux150~3_combout\ & ( \Mux150~2_combout\ & ( (!\Mux152~1_combout\) # ((!\Mux152~0_combout\ & (\Mux64~69_combout\)) # (\Mux152~0_combout\ & ((\Mux64~72_combout\)))) ) ) ) # ( !\Mux150~3_combout\ & ( \Mux150~2_combout\ & ( 
-- (!\Mux152~0_combout\ & ((!\Mux152~1_combout\) # ((\Mux64~69_combout\)))) # (\Mux152~0_combout\ & (\Mux152~1_combout\ & ((\Mux64~72_combout\)))) ) ) ) # ( \Mux150~3_combout\ & ( !\Mux150~2_combout\ & ( (!\Mux152~0_combout\ & (\Mux152~1_combout\ & 
-- (\Mux64~69_combout\))) # (\Mux152~0_combout\ & ((!\Mux152~1_combout\) # ((\Mux64~72_combout\)))) ) ) ) # ( !\Mux150~3_combout\ & ( !\Mux150~2_combout\ & ( (\Mux152~1_combout\ & ((!\Mux152~0_combout\ & (\Mux64~69_combout\)) # (\Mux152~0_combout\ & 
-- ((\Mux64~72_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~0_combout\,
	datab => \ALT_INV_Mux152~1_combout\,
	datac => \ALT_INV_Mux64~69_combout\,
	datad => \ALT_INV_Mux64~72_combout\,
	datae => \ALT_INV_Mux150~3_combout\,
	dataf => \ALT_INV_Mux150~2_combout\,
	combout => \Mux150~4_combout\);

-- Location: LABCELL_X10_Y6_N6
\res~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~6_combout\ = ( !\inputB[22]~input_o\ & ( !\inputA[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[22]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \res~6_combout\);

-- Location: LABCELL_X10_Y5_N12
\Mux150~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~0_combout\ = ( \Add0~89_sumout\ & ( (!\aluControl[0]~input_o\ & (((\inputA[22]~input_o\ & \inputB[22]~input_o\)) # (\aluControl[1]~input_o\))) # (\aluControl[0]~input_o\ & (!\aluControl[1]~input_o\ & ((\inputB[22]~input_o\) # 
-- (\inputA[22]~input_o\)))) ) ) # ( !\Add0~89_sumout\ & ( (!\aluControl[1]~input_o\ & ((!\aluControl[0]~input_o\ & (\inputA[22]~input_o\ & \inputB[22]~input_o\)) # (\aluControl[0]~input_o\ & ((\inputB[22]~input_o\) # (\inputA[22]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000100110011011100010011001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_inputA[22]~input_o\,
	datad => \ALT_INV_inputB[22]~input_o\,
	dataf => \ALT_INV_Add0~89_sumout\,
	combout => \Mux150~0_combout\);

-- Location: LABCELL_X10_Y5_N42
\Mux150~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux150~5_combout\ = ( \Mux152~3_combout\ & ( \Mux150~0_combout\ & ( (!\Mux152~2_combout\ & ((\res~6_combout\))) # (\Mux152~2_combout\ & (\inputB[6]~input_o\)) ) ) ) # ( !\Mux152~3_combout\ & ( \Mux150~0_combout\ & ( (!\Mux152~2_combout\) # 
-- (\Mux150~4_combout\) ) ) ) # ( \Mux152~3_combout\ & ( !\Mux150~0_combout\ & ( (!\Mux152~2_combout\ & ((\res~6_combout\))) # (\Mux152~2_combout\ & (\inputB[6]~input_o\)) ) ) ) # ( !\Mux152~3_combout\ & ( !\Mux150~0_combout\ & ( (\Mux152~2_combout\ & 
-- \Mux150~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~2_combout\,
	datab => \ALT_INV_Mux150~4_combout\,
	datac => \ALT_INV_inputB[6]~input_o\,
	datad => \ALT_INV_res~6_combout\,
	datae => \ALT_INV_Mux152~3_combout\,
	dataf => \ALT_INV_Mux150~0_combout\,
	combout => \Mux150~5_combout\);

-- Location: LABCELL_X10_Y5_N15
\res[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(22) = ( res(22) & ( (\Mux160~0_combout\) # (\Mux150~5_combout\) ) ) # ( !res(22) & ( (\Mux150~5_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux150~5_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(22),
	combout => res(22));

-- Location: LABCELL_X14_Y6_N18
\Mux149~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~1_combout\ = ( \Mux65~14_combout\ & ( \inputA[1]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux65~15_combout\) ) ) ) # ( !\Mux65~14_combout\ & ( \inputA[1]~input_o\ & ( (\Mux65~15_combout\ & !\inputA[0]~input_o\) ) ) ) # ( \Mux65~14_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux65~17_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~16_combout\))) ) ) ) # ( !\Mux65~14_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux65~17_combout\)) # (\inputA[0]~input_o\ & 
-- ((\Mux65~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~17_combout\,
	datab => \ALT_INV_Mux65~16_combout\,
	datac => \ALT_INV_Mux65~15_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~14_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux149~1_combout\);

-- Location: MLABCELL_X9_Y7_N39
\Mux149~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~2_combout\ = ( \Mux149~1_combout\ & ( (!\aluControl[0]~input_o\) # ((!\inputA[0]~input_o\ & ((\Mux128~65_combout\))) # (\inputA[0]~input_o\ & (\Mux128~68_combout\))) ) ) # ( !\Mux149~1_combout\ & ( (\aluControl[0]~input_o\ & ((!\inputA[0]~input_o\ 
-- & ((\Mux128~65_combout\))) # (\inputA[0]~input_o\ & (\Mux128~68_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux128~68_combout\,
	datad => \ALT_INV_Mux128~65_combout\,
	dataf => \ALT_INV_Mux149~1_combout\,
	combout => \Mux149~2_combout\);

-- Location: LABCELL_X19_Y6_N30
\Mux149~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~3_combout\ = ( \Mux1~14_combout\ & ( \Mux1~17_combout\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\Mux1~16_combout\))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\) # (\Mux1~15_combout\)))) ) ) ) # ( !\Mux1~14_combout\ & ( 
-- \Mux1~17_combout\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\Mux1~16_combout\))) # (\shamt[1]~input_o\ & (((\Mux1~15_combout\ & !\shamt[0]~input_o\)))) ) ) ) # ( \Mux1~14_combout\ & ( !\Mux1~17_combout\ & ( (!\shamt[1]~input_o\ & 
-- (\Mux1~16_combout\ & ((\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\) # (\Mux1~15_combout\)))) ) ) ) # ( !\Mux1~14_combout\ & ( !\Mux1~17_combout\ & ( (!\shamt[1]~input_o\ & (\Mux1~16_combout\ & ((\shamt[0]~input_o\)))) # 
-- (\shamt[1]~input_o\ & (((\Mux1~15_combout\ & !\shamt[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~16_combout\,
	datab => \ALT_INV_Mux1~15_combout\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_Mux1~14_combout\,
	dataf => \ALT_INV_Mux1~17_combout\,
	combout => \Mux149~3_combout\);

-- Location: MLABCELL_X9_Y7_N18
\Mux149~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~4_combout\ = ( \Mux64~66_combout\ & ( \Mux152~1_combout\ & ( (!\Mux152~0_combout\) # (\Mux64~69_combout\) ) ) ) # ( !\Mux64~66_combout\ & ( \Mux152~1_combout\ & ( (\Mux152~0_combout\ & \Mux64~69_combout\) ) ) ) # ( \Mux64~66_combout\ & ( 
-- !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux149~2_combout\)) # (\Mux152~0_combout\ & ((\Mux149~3_combout\))) ) ) ) # ( !\Mux64~66_combout\ & ( !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux149~2_combout\)) # (\Mux152~0_combout\ & 
-- ((\Mux149~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~0_combout\,
	datab => \ALT_INV_Mux149~2_combout\,
	datac => \ALT_INV_Mux149~3_combout\,
	datad => \ALT_INV_Mux64~69_combout\,
	datae => \ALT_INV_Mux64~66_combout\,
	dataf => \ALT_INV_Mux152~1_combout\,
	combout => \Mux149~4_combout\);

-- Location: MLABCELL_X9_Y6_N12
\res~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~5_combout\ = ( !\inputB[21]~input_o\ & ( !\inputA[21]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[21]~input_o\,
	dataf => \ALT_INV_inputB[21]~input_o\,
	combout => \res~5_combout\);

-- Location: MLABCELL_X9_Y6_N0
\Mux149~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~0_combout\ = ( \Add0~85_sumout\ & ( (!\aluControl[1]~input_o\ & ((!\aluControl[0]~input_o\ & (\inputB[21]~input_o\ & \inputA[21]~input_o\)) # (\aluControl[0]~input_o\ & ((\inputA[21]~input_o\) # (\inputB[21]~input_o\))))) # 
-- (\aluControl[1]~input_o\ & (!\aluControl[0]~input_o\)) ) ) # ( !\Add0~85_sumout\ & ( (!\aluControl[1]~input_o\ & ((!\aluControl[0]~input_o\ & (\inputB[21]~input_o\ & \inputA[21]~input_o\)) # (\aluControl[0]~input_o\ & ((\inputA[21]~input_o\) # 
-- (\inputB[21]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101001000110011011100100011001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_inputB[21]~input_o\,
	datad => \ALT_INV_inputA[21]~input_o\,
	dataf => \ALT_INV_Add0~85_sumout\,
	combout => \Mux149~0_combout\);

-- Location: MLABCELL_X9_Y7_N42
\Mux149~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux149~5_combout\ = ( \Mux152~2_combout\ & ( \Mux149~0_combout\ & ( (!\Mux152~3_combout\ & ((\Mux149~4_combout\))) # (\Mux152~3_combout\ & (\inputB[5]~input_o\)) ) ) ) # ( !\Mux152~2_combout\ & ( \Mux149~0_combout\ & ( (!\Mux152~3_combout\) # 
-- (\res~5_combout\) ) ) ) # ( \Mux152~2_combout\ & ( !\Mux149~0_combout\ & ( (!\Mux152~3_combout\ & ((\Mux149~4_combout\))) # (\Mux152~3_combout\ & (\inputB[5]~input_o\)) ) ) ) # ( !\Mux152~2_combout\ & ( !\Mux149~0_combout\ & ( (\Mux152~3_combout\ & 
-- \res~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_Mux149~4_combout\,
	datac => \ALT_INV_Mux152~3_combout\,
	datad => \ALT_INV_res~5_combout\,
	datae => \ALT_INV_Mux152~2_combout\,
	dataf => \ALT_INV_Mux149~0_combout\,
	combout => \Mux149~5_combout\);

-- Location: MLABCELL_X9_Y7_N57
\res[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(21) = ( \Mux149~5_combout\ & ( (!\Mux160~0_combout\) # (res(21)) ) ) # ( !\Mux149~5_combout\ & ( (res(21) & \Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_res(21),
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => \ALT_INV_Mux149~5_combout\,
	combout => res(21));

-- Location: LABCELL_X14_Y6_N6
\Mux147~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~1_combout\ = ( \Mux65~14_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux65~13_combout\))) # (\inputA[0]~input_o\ & (\Mux65~12_combout\)) ) ) ) # ( !\Mux65~14_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- ((\Mux65~13_combout\))) # (\inputA[0]~input_o\ & (\Mux65~12_combout\)) ) ) ) # ( \Mux65~14_combout\ & ( !\inputA[1]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux65~15_combout\) ) ) ) # ( !\Mux65~14_combout\ & ( !\inputA[1]~input_o\ & ( (\Mux65~15_combout\ & 
-- !\inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~12_combout\,
	datab => \ALT_INV_Mux65~13_combout\,
	datac => \ALT_INV_Mux65~15_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~14_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux147~1_combout\);

-- Location: MLABCELL_X9_Y7_N54
\Mux147~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~2_combout\ = ( \Mux128~62_combout\ & ( (!\aluControl[0]~input_o\ & (\Mux147~1_combout\)) # (\aluControl[0]~input_o\ & (((\Mux128~59_combout\) # (\inputA[0]~input_o\)))) ) ) # ( !\Mux128~62_combout\ & ( (!\aluControl[0]~input_o\ & 
-- (\Mux147~1_combout\)) # (\aluControl[0]~input_o\ & (((!\inputA[0]~input_o\ & \Mux128~59_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000111011101110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux147~1_combout\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_Mux128~59_combout\,
	dataf => \ALT_INV_Mux128~62_combout\,
	combout => \Mux147~2_combout\);

-- Location: LABCELL_X19_Y6_N48
\Mux147~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~3_combout\ = ( \Mux1~14_combout\ & ( \Mux1~15_combout\ & ( (!\shamt[1]~input_o\) # ((!\shamt[0]~input_o\ & (\Mux1~13_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~12_combout\)))) ) ) ) # ( !\Mux1~14_combout\ & ( \Mux1~15_combout\ & ( 
-- (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)) # (\Mux1~13_combout\))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\ & \Mux1~12_combout\)))) ) ) ) # ( \Mux1~14_combout\ & ( !\Mux1~15_combout\ & ( (!\shamt[0]~input_o\ & (\Mux1~13_combout\ & 
-- (\shamt[1]~input_o\))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\) # (\Mux1~12_combout\)))) ) ) ) # ( !\Mux1~14_combout\ & ( !\Mux1~15_combout\ & ( (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\Mux1~13_combout\)) # (\shamt[0]~input_o\ & 
-- ((\Mux1~12_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~13_combout\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_Mux1~12_combout\,
	datae => \ALT_INV_Mux1~14_combout\,
	dataf => \ALT_INV_Mux1~15_combout\,
	combout => \Mux147~3_combout\);

-- Location: MLABCELL_X9_Y7_N48
\Mux147~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~4_combout\ = ( \Mux147~3_combout\ & ( \Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux64~60_combout\)) # (\Mux152~0_combout\ & ((\Mux64~63_combout\))) ) ) ) # ( !\Mux147~3_combout\ & ( \Mux152~1_combout\ & ( (!\Mux152~0_combout\ & 
-- (\Mux64~60_combout\)) # (\Mux152~0_combout\ & ((\Mux64~63_combout\))) ) ) ) # ( \Mux147~3_combout\ & ( !\Mux152~1_combout\ & ( (\Mux147~2_combout\) # (\Mux152~0_combout\) ) ) ) # ( !\Mux147~3_combout\ & ( !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & 
-- \Mux147~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~0_combout\,
	datab => \ALT_INV_Mux147~2_combout\,
	datac => \ALT_INV_Mux64~60_combout\,
	datad => \ALT_INV_Mux64~63_combout\,
	datae => \ALT_INV_Mux147~3_combout\,
	dataf => \ALT_INV_Mux152~1_combout\,
	combout => \Mux147~4_combout\);

-- Location: LABCELL_X10_Y3_N51
\res~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~3_combout\ = ( !\inputB[19]~input_o\ & ( !\inputA[19]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[19]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	combout => \res~3_combout\);

-- Location: LABCELL_X10_Y3_N45
\Mux147~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~0_combout\ = ( \inputB[19]~input_o\ & ( (!\aluControl[1]~input_o\ & (((\inputA[19]~input_o\)) # (\aluControl[0]~input_o\))) # (\aluControl[1]~input_o\ & (!\aluControl[0]~input_o\ & ((\Add0~77_sumout\)))) ) ) # ( !\inputB[19]~input_o\ & ( 
-- (!\aluControl[1]~input_o\ & (\aluControl[0]~input_o\ & (\inputA[19]~input_o\))) # (\aluControl[1]~input_o\ & (!\aluControl[0]~input_o\ & ((\Add0~77_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_inputA[19]~input_o\,
	datad => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	combout => \Mux147~0_combout\);

-- Location: LABCELL_X10_Y7_N24
\Mux147~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux147~5_combout\ = ( \Mux152~2_combout\ & ( \Mux147~0_combout\ & ( (!\Mux152~3_combout\ & (\Mux147~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[3]~input_o\))) ) ) ) # ( !\Mux152~2_combout\ & ( \Mux147~0_combout\ & ( (!\Mux152~3_combout\) # 
-- (\res~3_combout\) ) ) ) # ( \Mux152~2_combout\ & ( !\Mux147~0_combout\ & ( (!\Mux152~3_combout\ & (\Mux147~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[3]~input_o\))) ) ) ) # ( !\Mux152~2_combout\ & ( !\Mux147~0_combout\ & ( (\res~3_combout\ & 
-- \Mux152~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux147~4_combout\,
	datab => \ALT_INV_res~3_combout\,
	datac => \ALT_INV_Mux152~3_combout\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_Mux152~2_combout\,
	dataf => \ALT_INV_Mux147~0_combout\,
	combout => \Mux147~5_combout\);

-- Location: LABCELL_X10_Y7_N15
\res[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(19) = ( res(19) & ( (\Mux160~0_combout\) # (\Mux147~5_combout\) ) ) # ( !res(19) & ( (\Mux147~5_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux147~5_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(19),
	combout => res(19));

-- Location: LABCELL_X10_Y7_N18
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !res(21) & ( !res(19) & ( (!res(23) & (!res(20) & (!res(18) & !res(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(23),
	datab => ALT_INV_res(20),
	datac => ALT_INV_res(18),
	datad => ALT_INV_res(22),
	datae => ALT_INV_res(21),
	dataf => ALT_INV_res(19),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X18_Y4_N27
\Mux128~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~75_combout\ = ( \inputB[31]~input_o\ & ( (!\inputA[4]~input_o\ & !\inputA[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux128~75_combout\);

-- Location: MLABCELL_X18_Y6_N48
\Mux128~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~76_combout\ = ( \inputA[2]~input_o\ & ( \Mux128~58_combout\ & ( (!\inputA[1]~input_o\ & (\Mux128~70_combout\)) # (\inputA[1]~input_o\ & ((\Mux128~75_combout\))) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux128~58_combout\ & ( (!\inputA[1]~input_o\) # 
-- (\Mux128~64_combout\) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux128~58_combout\ & ( (!\inputA[1]~input_o\ & (\Mux128~70_combout\)) # (\inputA[1]~input_o\ & ((\Mux128~75_combout\))) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux128~58_combout\ & ( 
-- (\Mux128~64_combout\ & \inputA[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~70_combout\,
	datab => \ALT_INV_Mux128~75_combout\,
	datac => \ALT_INV_Mux128~64_combout\,
	datad => \ALT_INV_inputA[1]~input_o\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux128~58_combout\,
	combout => \Mux128~76_combout\);

-- Location: LABCELL_X20_Y6_N15
\Mux65~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~21_combout\ = ( \inputA[3]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux65~20_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~32_combout\))) ) ) # ( !\inputA[3]~input_o\ & ( (!\inputA[2]~input_o\ & (\Mux65~20_combout\)) # (\inputA[2]~input_o\ & 
-- ((\Mux128~63_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux65~20_combout\,
	datac => \ALT_INV_Mux128~32_combout\,
	datad => \ALT_INV_Mux128~63_combout\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~21_combout\);

-- Location: LABCELL_X14_Y6_N24
\Mux152~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~5_combout\ = ( \Mux65~19_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux65~18_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~17_combout\))) ) ) ) # ( !\Mux65~19_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- (\Mux65~18_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~17_combout\))) ) ) ) # ( \Mux65~19_combout\ & ( !\inputA[1]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux65~21_combout\) ) ) ) # ( !\Mux65~19_combout\ & ( !\inputA[1]~input_o\ & ( (\Mux65~21_combout\ & 
-- !\inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~21_combout\,
	datab => \ALT_INV_Mux65~18_combout\,
	datac => \ALT_INV_Mux65~17_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~19_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux152~5_combout\);

-- Location: LABCELL_X10_Y5_N27
\Mux152~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~6_combout\ = ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux128~74_combout\))) # (\inputA[0]~input_o\ & (\Mux128~76_combout\)) ) ) # ( !\aluControl[0]~input_o\ & ( \Mux152~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~76_combout\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux152~5_combout\,
	datad => \ALT_INV_Mux128~74_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux152~6_combout\);

-- Location: LABCELL_X19_Y4_N45
\Mux1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~21_combout\ = ( \Mux1~20_combout\ & ( (!\shamt[2]~input_o\) # ((!\shamt[3]~input_o\ & ((\Mux64~64_combout\))) # (\shamt[3]~input_o\ & (\Mux64~32_combout\))) ) ) # ( !\Mux1~20_combout\ & ( (\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & 
-- ((\Mux64~64_combout\))) # (\shamt[3]~input_o\ & (\Mux64~32_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_Mux64~32_combout\,
	datad => \ALT_INV_Mux64~64_combout\,
	dataf => \ALT_INV_Mux1~20_combout\,
	combout => \Mux1~21_combout\);

-- Location: LABCELL_X20_Y4_N24
\Mux152~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~7_combout\ = ( \Mux1~17_combout\ & ( \Mux1~18_combout\ & ( ((!\shamt[0]~input_o\ & (\Mux1~21_combout\)) # (\shamt[0]~input_o\ & ((\Mux1~19_combout\)))) # (\shamt[1]~input_o\) ) ) ) # ( !\Mux1~17_combout\ & ( \Mux1~18_combout\ & ( 
-- (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\Mux1~21_combout\))) # (\shamt[0]~input_o\ & (((\Mux1~19_combout\ & !\shamt[1]~input_o\)))) ) ) ) # ( \Mux1~17_combout\ & ( !\Mux1~18_combout\ & ( (!\shamt[0]~input_o\ & (\Mux1~21_combout\ & 
-- ((!\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\) # (\Mux1~19_combout\)))) ) ) ) # ( !\Mux1~17_combout\ & ( !\Mux1~18_combout\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\Mux1~21_combout\)) # (\shamt[0]~input_o\ & 
-- ((\Mux1~19_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~21_combout\,
	datab => \ALT_INV_Mux1~19_combout\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux1~17_combout\,
	dataf => \ALT_INV_Mux1~18_combout\,
	combout => \Mux152~7_combout\);

-- Location: LABCELL_X20_Y5_N54
\Mux64~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~76_combout\ = (!\shamt[4]~input_o\ & (!\shamt[3]~input_o\ & \inputB[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux64~76_combout\);

-- Location: MLABCELL_X9_Y5_N30
\Mux64~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~77_combout\ = ( \Mux64~76_combout\ & ( \shamt[2]~input_o\ & ( (\shamt[1]~input_o\) # (\Mux64~71_combout\) ) ) ) # ( !\Mux64~76_combout\ & ( \shamt[2]~input_o\ & ( (\Mux64~71_combout\ & !\shamt[1]~input_o\) ) ) ) # ( \Mux64~76_combout\ & ( 
-- !\shamt[2]~input_o\ & ( (!\shamt[1]~input_o\ & ((\Mux64~59_combout\))) # (\shamt[1]~input_o\ & (\Mux64~65_combout\)) ) ) ) # ( !\Mux64~76_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[1]~input_o\ & ((\Mux64~59_combout\))) # (\shamt[1]~input_o\ & 
-- (\Mux64~65_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~71_combout\,
	datab => \ALT_INV_Mux64~65_combout\,
	datac => \ALT_INV_Mux64~59_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux64~76_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux64~77_combout\);

-- Location: LABCELL_X10_Y5_N0
\Mux152~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~8_combout\ = ( \Mux64~75_combout\ & ( \Mux152~1_combout\ & ( (!\Mux152~0_combout\) # (\Mux64~77_combout\) ) ) ) # ( !\Mux64~75_combout\ & ( \Mux152~1_combout\ & ( (\Mux152~0_combout\ & \Mux64~77_combout\) ) ) ) # ( \Mux64~75_combout\ & ( 
-- !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux152~6_combout\)) # (\Mux152~0_combout\ & ((\Mux152~7_combout\))) ) ) ) # ( !\Mux64~75_combout\ & ( !\Mux152~1_combout\ & ( (!\Mux152~0_combout\ & (\Mux152~6_combout\)) # (\Mux152~0_combout\ & 
-- ((\Mux152~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~0_combout\,
	datab => \ALT_INV_Mux152~6_combout\,
	datac => \ALT_INV_Mux152~7_combout\,
	datad => \ALT_INV_Mux64~77_combout\,
	datae => \ALT_INV_Mux64~75_combout\,
	dataf => \ALT_INV_Mux152~1_combout\,
	combout => \Mux152~8_combout\);

-- Location: LABCELL_X10_Y2_N48
\res~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~8_combout\ = (!\inputA[24]~input_o\ & !\inputB[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[24]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	combout => \res~8_combout\);

-- Location: LABCELL_X10_Y3_N48
\Mux152~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~4_combout\ = ( \aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & ((\inputB[24]~input_o\) # (\inputA[24]~input_o\))) ) ) # ( !\aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & (\inputA[24]~input_o\ & (\inputB[24]~input_o\))) # 
-- (\aluControl[1]~input_o\ & (((\Add0~97_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011101001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[24]~input_o\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_Add0~97_sumout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux152~4_combout\);

-- Location: LABCELL_X10_Y5_N54
\Mux152~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux152~9_combout\ = ( \inputB[8]~input_o\ & ( \Mux152~4_combout\ & ( (!\Mux152~2_combout\ & (((!\Mux152~3_combout\) # (\res~8_combout\)))) # (\Mux152~2_combout\ & (((\Mux152~3_combout\)) # (\Mux152~8_combout\))) ) ) ) # ( !\inputB[8]~input_o\ & ( 
-- \Mux152~4_combout\ & ( (!\Mux152~2_combout\ & (((!\Mux152~3_combout\) # (\res~8_combout\)))) # (\Mux152~2_combout\ & (\Mux152~8_combout\ & (!\Mux152~3_combout\))) ) ) ) # ( \inputB[8]~input_o\ & ( !\Mux152~4_combout\ & ( (!\Mux152~2_combout\ & 
-- (((\Mux152~3_combout\ & \res~8_combout\)))) # (\Mux152~2_combout\ & (((\Mux152~3_combout\)) # (\Mux152~8_combout\))) ) ) ) # ( !\inputB[8]~input_o\ & ( !\Mux152~4_combout\ & ( (!\Mux152~2_combout\ & (((\Mux152~3_combout\ & \res~8_combout\)))) # 
-- (\Mux152~2_combout\ & (\Mux152~8_combout\ & (!\Mux152~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~2_combout\,
	datab => \ALT_INV_Mux152~8_combout\,
	datac => \ALT_INV_Mux152~3_combout\,
	datad => \ALT_INV_res~8_combout\,
	datae => \ALT_INV_inputB[8]~input_o\,
	dataf => \ALT_INV_Mux152~4_combout\,
	combout => \Mux152~9_combout\);

-- Location: LABCELL_X10_Y5_N24
\res[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(24) = ( res(24) & ( (\Mux160~0_combout\) # (\Mux152~9_combout\) ) ) # ( !res(24) & ( (\Mux152~9_combout\ & !\Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux152~9_combout\,
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => ALT_INV_res(24),
	combout => res(24));

-- Location: MLABCELL_X9_Y3_N9
\res~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~10_combout\ = ( !\inputB[26]~input_o\ & ( !\inputA[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[26]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \res~10_combout\);

-- Location: MLABCELL_X23_Y4_N33
\Mux1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~25_combout\ = ( \Mux64~42_combout\ & ( (!\shamt[2]~input_o\ & (((\Mux1~24_combout\)))) # (\shamt[2]~input_o\ & (((\Mux64~70_combout\)) # (\shamt[3]~input_o\))) ) ) # ( !\Mux64~42_combout\ & ( (!\shamt[2]~input_o\ & (((\Mux1~24_combout\)))) # 
-- (\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & (\Mux64~70_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~70_combout\,
	datad => \ALT_INV_Mux1~24_combout\,
	dataf => \ALT_INV_Mux64~42_combout\,
	combout => \Mux1~25_combout\);

-- Location: MLABCELL_X23_Y4_N30
\Mux1~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~23_combout\ = ( \Mux1~22_combout\ & ( (!\shamt[2]~input_o\) # ((!\shamt[3]~input_o\ & ((\Mux64~67_combout\))) # (\shamt[3]~input_o\ & (\Mux64~37_combout\))) ) ) # ( !\Mux1~22_combout\ & ( (\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & 
-- ((\Mux64~67_combout\))) # (\shamt[3]~input_o\ & (\Mux64~37_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~37_combout\,
	datad => \ALT_INV_Mux64~67_combout\,
	dataf => \ALT_INV_Mux1~22_combout\,
	combout => \Mux1~23_combout\);

-- Location: LABCELL_X20_Y4_N48
\Mux154~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~3_combout\ = ( \shamt[0]~input_o\ & ( \Mux1~23_combout\ & ( (!\shamt[1]~input_o\) # (\Mux1~19_combout\) ) ) ) # ( !\shamt[0]~input_o\ & ( \Mux1~23_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux1~25_combout\))) # (\shamt[1]~input_o\ & 
-- (\Mux1~21_combout\)) ) ) ) # ( \shamt[0]~input_o\ & ( !\Mux1~23_combout\ & ( (\Mux1~19_combout\ & \shamt[1]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( !\Mux1~23_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux1~25_combout\))) # (\shamt[1]~input_o\ & 
-- (\Mux1~21_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~21_combout\,
	datab => \ALT_INV_Mux1~19_combout\,
	datac => \ALT_INV_Mux1~25_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_Mux1~23_combout\,
	combout => \Mux154~3_combout\);

-- Location: MLABCELL_X9_Y4_N45
\Mux128~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~78_combout\ = ( \Mux128~70_combout\ & ( (!\inputA[1]~input_o\ & ((!\inputA[2]~input_o\ & ((\Mux128~64_combout\))) # (\inputA[2]~input_o\ & (\Mux128~75_combout\)))) # (\inputA[1]~input_o\ & (!\inputA[2]~input_o\)) ) ) # ( !\Mux128~70_combout\ & ( 
-- (!\inputA[1]~input_o\ & ((!\inputA[2]~input_o\ & ((\Mux128~64_combout\))) # (\inputA[2]~input_o\ & (\Mux128~75_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux128~75_combout\,
	datad => \ALT_INV_Mux128~64_combout\,
	dataf => \ALT_INV_Mux128~70_combout\,
	combout => \Mux128~78_combout\);

-- Location: LABCELL_X14_Y4_N27
\Mux65~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~23_combout\ = ( \Mux128~36_combout\ & ( (!\inputA[2]~input_o\ & (((\Mux65~22_combout\)))) # (\inputA[2]~input_o\ & (((\inputA[3]~input_o\)) # (\Mux128~66_combout\))) ) ) # ( !\Mux128~36_combout\ & ( (!\inputA[2]~input_o\ & (((\Mux65~22_combout\)))) 
-- # (\inputA[2]~input_o\ & (\Mux128~66_combout\ & ((!\inputA[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110000001101010011000000110101001111110011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~66_combout\,
	datab => \ALT_INV_Mux65~22_combout\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_Mux128~36_combout\,
	combout => \Mux65~23_combout\);

-- Location: LABCELL_X21_Y4_N24
\Mux65~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~25_combout\ = ( \Mux65~24_combout\ & ( (!\inputA[2]~input_o\) # ((!\inputA[3]~input_o\ & ((\Mux128~69_combout\))) # (\inputA[3]~input_o\ & (\Mux128~41_combout\))) ) ) # ( !\Mux65~24_combout\ & ( (\inputA[2]~input_o\ & ((!\inputA[3]~input_o\ & 
-- ((\Mux128~69_combout\))) # (\inputA[3]~input_o\ & (\Mux128~41_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~41_combout\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_Mux128~69_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux65~24_combout\,
	combout => \Mux65~25_combout\);

-- Location: MLABCELL_X9_Y4_N36
\Mux154~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~1_combout\ = ( \Mux65~19_combout\ & ( \Mux65~21_combout\ & ( ((!\inputA[0]~input_o\ & ((\Mux65~25_combout\))) # (\inputA[0]~input_o\ & (\Mux65~23_combout\))) # (\inputA[1]~input_o\) ) ) ) # ( !\Mux65~19_combout\ & ( \Mux65~21_combout\ & ( 
-- (!\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ & ((\Mux65~25_combout\))) # (\inputA[0]~input_o\ & (\Mux65~23_combout\)))) # (\inputA[1]~input_o\ & (((!\inputA[0]~input_o\)))) ) ) ) # ( \Mux65~19_combout\ & ( !\Mux65~21_combout\ & ( (!\inputA[1]~input_o\ & 
-- ((!\inputA[0]~input_o\ & ((\Mux65~25_combout\))) # (\inputA[0]~input_o\ & (\Mux65~23_combout\)))) # (\inputA[1]~input_o\ & (((\inputA[0]~input_o\)))) ) ) ) # ( !\Mux65~19_combout\ & ( !\Mux65~21_combout\ & ( (!\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ 
-- & ((\Mux65~25_combout\))) # (\inputA[0]~input_o\ & (\Mux65~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_Mux65~23_combout\,
	datac => \ALT_INV_Mux65~25_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~19_combout\,
	dataf => \ALT_INV_Mux65~21_combout\,
	combout => \Mux154~1_combout\);

-- Location: MLABCELL_X9_Y4_N42
\Mux128~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~77_combout\ = ( \Mux128~61_combout\ & ( (!\inputA[1]~input_o\ & ((!\inputA[2]~input_o\) # ((\Mux128~73_combout\)))) # (\inputA[1]~input_o\ & (!\inputA[2]~input_o\ & (\Mux128~67_combout\))) ) ) # ( !\Mux128~61_combout\ & ( (!\inputA[1]~input_o\ & 
-- (\inputA[2]~input_o\ & ((\Mux128~73_combout\)))) # (\inputA[1]~input_o\ & (!\inputA[2]~input_o\ & (\Mux128~67_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux128~67_combout\,
	datad => \ALT_INV_Mux128~73_combout\,
	dataf => \ALT_INV_Mux128~61_combout\,
	combout => \Mux128~77_combout\);

-- Location: MLABCELL_X9_Y5_N51
\Mux154~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~2_combout\ = ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux128~77_combout\))) # (\inputA[0]~input_o\ & (\Mux128~78_combout\)) ) ) # ( !\aluControl[0]~input_o\ & ( \Mux154~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_Mux128~78_combout\,
	datac => \ALT_INV_Mux154~1_combout\,
	datad => \ALT_INV_Mux128~77_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux154~2_combout\);

-- Location: LABCELL_X10_Y2_N36
\Mux64~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~78_combout\ = ( \Mux64~62_combout\ & ( (!\shamt[1]~input_o\ & (((!\shamt[2]~input_o\) # (\Mux64~74_combout\)))) # (\shamt[1]~input_o\ & (\Mux64~68_combout\ & ((!\shamt[2]~input_o\)))) ) ) # ( !\Mux64~62_combout\ & ( (!\shamt[1]~input_o\ & 
-- (((\Mux64~74_combout\ & \shamt[2]~input_o\)))) # (\shamt[1]~input_o\ & (\Mux64~68_combout\ & ((!\shamt[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011000011110101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~68_combout\,
	datab => \ALT_INV_Mux64~74_combout\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux64~62_combout\,
	combout => \Mux64~78_combout\);

-- Location: MLABCELL_X9_Y5_N15
\Mux64~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~79_combout\ = ( \Mux64~71_combout\ & ( (!\shamt[2]~input_o\ & (((\shamt[1]~input_o\)) # (\Mux64~65_combout\))) # (\shamt[2]~input_o\ & (((!\shamt[1]~input_o\ & \Mux64~76_combout\)))) ) ) # ( !\Mux64~71_combout\ & ( (!\shamt[1]~input_o\ & 
-- ((!\shamt[2]~input_o\ & (\Mux64~65_combout\)) # (\shamt[2]~input_o\ & ((\Mux64~76_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000101010011110100010101001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_Mux64~65_combout\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_Mux64~76_combout\,
	dataf => \ALT_INV_Mux64~71_combout\,
	combout => \Mux64~79_combout\);

-- Location: MLABCELL_X9_Y5_N36
\Mux154~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~4_combout\ = ( \Mux152~0_combout\ & ( \Mux152~1_combout\ & ( \Mux64~79_combout\ ) ) ) # ( !\Mux152~0_combout\ & ( \Mux152~1_combout\ & ( \Mux64~78_combout\ ) ) ) # ( \Mux152~0_combout\ & ( !\Mux152~1_combout\ & ( \Mux154~3_combout\ ) ) ) # ( 
-- !\Mux152~0_combout\ & ( !\Mux152~1_combout\ & ( \Mux154~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux154~3_combout\,
	datab => \ALT_INV_Mux154~2_combout\,
	datac => \ALT_INV_Mux64~78_combout\,
	datad => \ALT_INV_Mux64~79_combout\,
	datae => \ALT_INV_Mux152~0_combout\,
	dataf => \ALT_INV_Mux152~1_combout\,
	combout => \Mux154~4_combout\);

-- Location: MLABCELL_X9_Y3_N6
\Mux154~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~0_combout\ = ( \aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & ((\inputB[26]~input_o\) # (\inputA[26]~input_o\))) ) ) # ( !\aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & (\inputA[26]~input_o\ & (\inputB[26]~input_o\))) # 
-- (\aluControl[1]~input_o\ & (((\Add0~105_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111101110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[26]~input_o\,
	datab => \ALT_INV_inputB[26]~input_o\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Add0~105_sumout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux154~0_combout\);

-- Location: MLABCELL_X9_Y5_N18
\Mux154~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux154~5_combout\ = ( \Mux152~2_combout\ & ( \Mux154~0_combout\ & ( (!\Mux152~3_combout\ & (\Mux154~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[10]~input_o\))) ) ) ) # ( !\Mux152~2_combout\ & ( \Mux154~0_combout\ & ( (!\Mux152~3_combout\) # 
-- (\res~10_combout\) ) ) ) # ( \Mux152~2_combout\ & ( !\Mux154~0_combout\ & ( (!\Mux152~3_combout\ & (\Mux154~4_combout\)) # (\Mux152~3_combout\ & ((\inputB[10]~input_o\))) ) ) ) # ( !\Mux152~2_combout\ & ( !\Mux154~0_combout\ & ( (\res~10_combout\ & 
-- \Mux152~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~10_combout\,
	datab => \ALT_INV_Mux154~4_combout\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_Mux152~3_combout\,
	datae => \ALT_INV_Mux152~2_combout\,
	dataf => \ALT_INV_Mux154~0_combout\,
	combout => \Mux154~5_combout\);

-- Location: MLABCELL_X9_Y5_N48
\res[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(26) = ( \Mux154~5_combout\ & ( (!\Mux160~0_combout\) # (res(26)) ) ) # ( !\Mux154~5_combout\ & ( (\Mux160~0_combout\ & res(26)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux160~0_combout\,
	datad => ALT_INV_res(26),
	dataf => \ALT_INV_Mux154~5_combout\,
	combout => res(26));

-- Location: MLABCELL_X9_Y6_N9
\Mux157~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~3_combout\ = ( \inputB[29]~input_o\ & ( (\aluControl[3]~input_o\ & (\aluControl[0]~input_o\ & \inputB[13]~input_o\)) ) ) # ( !\inputB[29]~input_o\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[0]~input_o\ & (!\inputA[29]~input_o\)) # 
-- (\aluControl[0]~input_o\ & ((\inputB[13]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010001010000000101000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_inputA[29]~input_o\,
	datad => \ALT_INV_inputB[13]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux157~3_combout\);

-- Location: LABCELL_X14_Y4_N42
\Mux96~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~1_combout\ = ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux96~1_combout\);

-- Location: LABCELL_X14_Y4_N36
\Mux128~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~80_combout\ = ( \inputB[31]~input_o\ & ( (\inputB[29]~input_o\) # (\inputA[1]~input_o\) ) ) # ( !\inputB[31]~input_o\ & ( (!\inputA[1]~input_o\ & \inputB[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datad => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux128~80_combout\);

-- Location: LABCELL_X14_Y4_N39
\Mux157~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~0_combout\ = ( \inputA[0]~input_o\ & ( (!\inputA[1]~input_o\ & (\Mux96~1_combout\ & \inputB[30]~input_o\)) ) ) # ( !\inputA[0]~input_o\ & ( (\Mux96~1_combout\ & \Mux128~80_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_Mux96~1_combout\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_Mux128~80_combout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \Mux157~0_combout\);

-- Location: MLABCELL_X9_Y4_N9
\Mux65~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~28_combout\ = ( \Mux65~26_combout\ & ( (!\inputA[2]~input_o\) # (\Mux65~27_combout\) ) ) # ( !\Mux65~26_combout\ & ( (\Mux65~27_combout\ & \inputA[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux65~27_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux65~26_combout\,
	combout => \Mux65~28_combout\);

-- Location: LABCELL_X20_Y6_N12
\Mux65~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~30_combout\ = (!\inputA[2]~input_o\ & (\Mux65~29_combout\)) # (\inputA[2]~input_o\ & ((\Mux65~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux65~29_combout\,
	datad => \ALT_INV_Mux65~20_combout\,
	combout => \Mux65~30_combout\);

-- Location: LABCELL_X14_Y4_N24
\Mux65~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~32_combout\ = ( \inputA[2]~input_o\ & ( \Mux65~22_combout\ ) ) # ( !\inputA[2]~input_o\ & ( \Mux65~31_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux65~22_combout\,
	datac => \ALT_INV_Mux65~31_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux65~32_combout\);

-- Location: MLABCELL_X9_Y4_N0
\Mux67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = ( \Mux65~30_combout\ & ( \Mux65~32_combout\ & ( (!\inputA[1]~input_o\) # ((!\inputA[0]~input_o\ & (\Mux65~28_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~25_combout\)))) ) ) ) # ( !\Mux65~30_combout\ & ( \Mux65~32_combout\ & ( 
-- (!\inputA[1]~input_o\ & (((!\inputA[0]~input_o\)))) # (\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ & (\Mux65~28_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~25_combout\))))) ) ) ) # ( \Mux65~30_combout\ & ( !\Mux65~32_combout\ & ( (!\inputA[1]~input_o\ & 
-- (((\inputA[0]~input_o\)))) # (\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ & (\Mux65~28_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~25_combout\))))) ) ) ) # ( !\Mux65~30_combout\ & ( !\Mux65~32_combout\ & ( (\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ & 
-- (\Mux65~28_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~25_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_Mux65~28_combout\,
	datac => \ALT_INV_Mux65~25_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~30_combout\,
	dataf => \ALT_INV_Mux65~32_combout\,
	combout => \Mux67~0_combout\);

-- Location: MLABCELL_X9_Y6_N42
\Mux157~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~1_combout\ = ( \aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & (((\Mux67~0_combout\)))) # (\aluControl[0]~input_o\ & (\Mux157~0_combout\ & ((!\inputA[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011101000011000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux157~0_combout\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux67~0_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux157~1_combout\);

-- Location: LABCELL_X20_Y4_N0
\Mux1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~29_combout\ = ( \Mux1~28_combout\ & ( (!\shamt[2]~input_o\) # (\Mux1~20_combout\) ) ) # ( !\Mux1~28_combout\ & ( (\shamt[2]~input_o\ & \Mux1~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_Mux1~20_combout\,
	dataf => \ALT_INV_Mux1~28_combout\,
	combout => \Mux1~29_combout\);

-- Location: LABCELL_X20_Y4_N12
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Mux1~31_combout\ & ( \Mux1~25_combout\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\) # (\Mux1~27_combout\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\Mux1~29_combout\))) ) ) ) # ( !\Mux1~31_combout\ & ( 
-- \Mux1~25_combout\ & ( (!\shamt[0]~input_o\ & (((\Mux1~27_combout\ & \shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\Mux1~29_combout\))) ) ) ) # ( \Mux1~31_combout\ & ( !\Mux1~25_combout\ & ( (!\shamt[0]~input_o\ & 
-- (((!\shamt[1]~input_o\) # (\Mux1~27_combout\)))) # (\shamt[0]~input_o\ & (\Mux1~29_combout\ & ((!\shamt[1]~input_o\)))) ) ) ) # ( !\Mux1~31_combout\ & ( !\Mux1~25_combout\ & ( (!\shamt[0]~input_o\ & (((\Mux1~27_combout\ & \shamt[1]~input_o\)))) # 
-- (\shamt[0]~input_o\ & (\Mux1~29_combout\ & ((!\shamt[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~29_combout\,
	datab => \ALT_INV_Mux1~27_combout\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux1~31_combout\,
	dataf => \ALT_INV_Mux1~25_combout\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X10_Y2_N21
\Mux64~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~81_combout\ = ( \inputB[29]~input_o\ & ( \inputB[31]~input_o\ & ( (!\shamt[4]~input_o\ & (!\shamt[2]~input_o\ & !\shamt[3]~input_o\)) ) ) ) # ( !\inputB[29]~input_o\ & ( \inputB[31]~input_o\ & ( (!\shamt[4]~input_o\ & (!\shamt[2]~input_o\ & 
-- (\shamt[1]~input_o\ & !\shamt[3]~input_o\))) ) ) ) # ( \inputB[29]~input_o\ & ( !\inputB[31]~input_o\ & ( (!\shamt[4]~input_o\ & (!\shamt[2]~input_o\ & (!\shamt[1]~input_o\ & !\shamt[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux64~81_combout\);

-- Location: LABCELL_X10_Y2_N15
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \Mux64~81_combout\ & ( (!\shamt[0]~input_o\) # ((!\shamt[1]~input_o\ & (!\shamt[2]~input_o\ & \Mux64~74_combout\))) ) ) # ( !\Mux64~81_combout\ & ( (!\shamt[1]~input_o\ & (!\shamt[2]~input_o\ & (\Mux64~74_combout\ & 
-- \shamt[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100011111111000010001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~74_combout\,
	datad => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_Mux64~81_combout\,
	combout => \Mux35~0_combout\);

-- Location: MLABCELL_X9_Y6_N30
\Mux157~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~4_combout\ = ( \Mux35~0_combout\ & ( \aluControl[3]~input_o\ & ( (\Mux3~0_combout\) # (\aluControl[0]~input_o\) ) ) ) # ( !\Mux35~0_combout\ & ( \aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & \Mux3~0_combout\) ) ) ) # ( \Mux35~0_combout\ 
-- & ( !\aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & (\inputA[29]~input_o\ & \inputB[29]~input_o\)) # (\aluControl[0]~input_o\ & ((\inputB[29]~input_o\) # (\inputA[29]~input_o\))) ) ) ) # ( !\Mux35~0_combout\ & ( !\aluControl[3]~input_o\ & ( 
-- (!\aluControl[0]~input_o\ & (\inputA[29]~input_o\ & \inputB[29]~input_o\)) # (\aluControl[0]~input_o\ & ((\inputB[29]~input_o\) # (\inputA[29]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_inputA[29]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	datad => \ALT_INV_Mux3~0_combout\,
	datae => \ALT_INV_Mux35~0_combout\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux157~4_combout\);

-- Location: MLABCELL_X9_Y6_N6
\Mux157~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~2_combout\ = ( !\aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & \Add0~117_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aluControl[0]~input_o\,
	datad => \ALT_INV_Add0~117_sumout\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux157~2_combout\);

-- Location: MLABCELL_X9_Y6_N36
\Mux157~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux157~5_combout\ = ( \aluControl[2]~input_o\ & ( \Mux157~2_combout\ & ( (\aluControl[1]~input_o\) # (\Mux157~3_combout\) ) ) ) # ( !\aluControl[2]~input_o\ & ( \Mux157~2_combout\ & ( (\aluControl[1]~input_o\) # (\Mux157~4_combout\) ) ) ) # ( 
-- \aluControl[2]~input_o\ & ( !\Mux157~2_combout\ & ( (\Mux157~3_combout\ & !\aluControl[1]~input_o\) ) ) ) # ( !\aluControl[2]~input_o\ & ( !\Mux157~2_combout\ & ( (!\aluControl[1]~input_o\ & ((\Mux157~4_combout\))) # (\aluControl[1]~input_o\ & 
-- (\Mux157~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux157~3_combout\,
	datab => \ALT_INV_Mux157~1_combout\,
	datac => \ALT_INV_Mux157~4_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_Mux157~2_combout\,
	combout => \Mux157~5_combout\);

-- Location: MLABCELL_X9_Y6_N45
\res[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(29) = ( \Mux157~5_combout\ & ( (!\Mux160~0_combout\) # (res(29)) ) ) # ( !\Mux157~5_combout\ & ( (res(29) & \Mux160~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_res(29),
	datad => \ALT_INV_Mux160~0_combout\,
	dataf => \ALT_INV_Mux157~5_combout\,
	combout => res(29));

-- Location: LABCELL_X10_Y3_N42
\Mux153~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~0_combout\ = ( \Add0~101_sumout\ & ( (!\aluControl[1]~input_o\ & ((!\aluControl[0]~input_o\ & (\inputA[25]~input_o\ & \inputB[25]~input_o\)) # (\aluControl[0]~input_o\ & ((\inputB[25]~input_o\) # (\inputA[25]~input_o\))))) # 
-- (\aluControl[1]~input_o\ & (!\aluControl[0]~input_o\)) ) ) # ( !\Add0~101_sumout\ & ( (!\aluControl[1]~input_o\ & ((!\aluControl[0]~input_o\ & (\inputA[25]~input_o\ & \inputB[25]~input_o\)) # (\aluControl[0]~input_o\ & ((\inputB[25]~input_o\) # 
-- (\inputA[25]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101001000110011011100100011001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_inputA[25]~input_o\,
	datad => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_Add0~101_sumout\,
	combout => \Mux153~0_combout\);

-- Location: LABCELL_X20_Y4_N54
\Mux153~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~3_combout\ = ( \shamt[0]~input_o\ & ( \Mux1~18_combout\ & ( (\shamt[1]~input_o\) # (\Mux1~21_combout\) ) ) ) # ( !\shamt[0]~input_o\ & ( \Mux1~18_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux1~23_combout\))) # (\shamt[1]~input_o\ & 
-- (\Mux1~19_combout\)) ) ) ) # ( \shamt[0]~input_o\ & ( !\Mux1~18_combout\ & ( (\Mux1~21_combout\ & !\shamt[1]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( !\Mux1~18_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux1~23_combout\))) # (\shamt[1]~input_o\ & 
-- (\Mux1~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~21_combout\,
	datab => \ALT_INV_Mux1~19_combout\,
	datac => \ALT_INV_Mux1~23_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_Mux1~18_combout\,
	combout => \Mux153~3_combout\);

-- Location: MLABCELL_X9_Y4_N24
\Mux153~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~1_combout\ = ( \Mux65~19_combout\ & ( \Mux65~21_combout\ & ( (!\inputA[1]~input_o\ & (((\inputA[0]~input_o\)) # (\Mux65~23_combout\))) # (\inputA[1]~input_o\ & (((!\inputA[0]~input_o\) # (\Mux65~18_combout\)))) ) ) ) # ( !\Mux65~19_combout\ & ( 
-- \Mux65~21_combout\ & ( (!\inputA[1]~input_o\ & (((\inputA[0]~input_o\)) # (\Mux65~23_combout\))) # (\inputA[1]~input_o\ & (((\Mux65~18_combout\ & \inputA[0]~input_o\)))) ) ) ) # ( \Mux65~19_combout\ & ( !\Mux65~21_combout\ & ( (!\inputA[1]~input_o\ & 
-- (\Mux65~23_combout\ & ((!\inputA[0]~input_o\)))) # (\inputA[1]~input_o\ & (((!\inputA[0]~input_o\) # (\Mux65~18_combout\)))) ) ) ) # ( !\Mux65~19_combout\ & ( !\Mux65~21_combout\ & ( (!\inputA[1]~input_o\ & (\Mux65~23_combout\ & ((!\inputA[0]~input_o\)))) 
-- # (\inputA[1]~input_o\ & (((\Mux65~18_combout\ & \inputA[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_Mux65~23_combout\,
	datac => \ALT_INV_Mux65~18_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~19_combout\,
	dataf => \ALT_INV_Mux65~21_combout\,
	combout => \Mux153~1_combout\);

-- Location: MLABCELL_X9_Y4_N6
\Mux153~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~2_combout\ = ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & (\Mux128~76_combout\)) # (\inputA[0]~input_o\ & ((\Mux128~77_combout\))) ) ) # ( !\aluControl[0]~input_o\ & ( \Mux153~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~76_combout\,
	datab => \ALT_INV_Mux128~77_combout\,
	datac => \ALT_INV_Mux153~1_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux153~2_combout\);

-- Location: LABCELL_X10_Y6_N42
\Mux153~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~4_combout\ = ( \Mux64~77_combout\ & ( \Mux153~2_combout\ & ( (!\Mux152~0_combout\) # ((!\Mux152~1_combout\ & (\Mux153~3_combout\)) # (\Mux152~1_combout\ & ((\Mux64~78_combout\)))) ) ) ) # ( !\Mux64~77_combout\ & ( \Mux153~2_combout\ & ( 
-- (!\Mux152~1_combout\ & ((!\Mux152~0_combout\) # ((\Mux153~3_combout\)))) # (\Mux152~1_combout\ & (\Mux152~0_combout\ & ((\Mux64~78_combout\)))) ) ) ) # ( \Mux64~77_combout\ & ( !\Mux153~2_combout\ & ( (!\Mux152~1_combout\ & (\Mux152~0_combout\ & 
-- (\Mux153~3_combout\))) # (\Mux152~1_combout\ & ((!\Mux152~0_combout\) # ((\Mux64~78_combout\)))) ) ) ) # ( !\Mux64~77_combout\ & ( !\Mux153~2_combout\ & ( (\Mux152~0_combout\ & ((!\Mux152~1_combout\ & (\Mux153~3_combout\)) # (\Mux152~1_combout\ & 
-- ((\Mux64~78_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux152~1_combout\,
	datab => \ALT_INV_Mux152~0_combout\,
	datac => \ALT_INV_Mux153~3_combout\,
	datad => \ALT_INV_Mux64~78_combout\,
	datae => \ALT_INV_Mux64~77_combout\,
	dataf => \ALT_INV_Mux153~2_combout\,
	combout => \Mux153~4_combout\);

-- Location: LABCELL_X10_Y6_N39
\res~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~9_combout\ = ( !\inputB[25]~input_o\ & ( !\inputA[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[25]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \res~9_combout\);

-- Location: LABCELL_X10_Y6_N24
\Mux153~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux153~5_combout\ = ( \inputB[9]~input_o\ & ( \Mux152~2_combout\ & ( (\Mux152~3_combout\) # (\Mux153~4_combout\) ) ) ) # ( !\inputB[9]~input_o\ & ( \Mux152~2_combout\ & ( (\Mux153~4_combout\ & !\Mux152~3_combout\) ) ) ) # ( \inputB[9]~input_o\ & ( 
-- !\Mux152~2_combout\ & ( (!\Mux152~3_combout\ & (\Mux153~0_combout\)) # (\Mux152~3_combout\ & ((\res~9_combout\))) ) ) ) # ( !\inputB[9]~input_o\ & ( !\Mux152~2_combout\ & ( (!\Mux152~3_combout\ & (\Mux153~0_combout\)) # (\Mux152~3_combout\ & 
-- ((\res~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux153~0_combout\,
	datab => \ALT_INV_Mux153~4_combout\,
	datac => \ALT_INV_res~9_combout\,
	datad => \ALT_INV_Mux152~3_combout\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_Mux152~2_combout\,
	combout => \Mux153~5_combout\);

-- Location: LABCELL_X10_Y6_N9
\res[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(25) = ( \Mux160~0_combout\ & ( res(25) ) ) # ( !\Mux160~0_combout\ & ( \Mux153~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux153~5_combout\,
	datac => ALT_INV_res(25),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(25));

-- Location: LABCELL_X14_Y4_N45
\Mux128~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~79_combout\ = ( \inputB[28]~input_o\ & ( (!\inputA[1]~input_o\) # (\inputB[30]~input_o\) ) ) # ( !\inputB[28]~input_o\ & ( (\inputB[30]~input_o\ & \inputA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_inputB[28]~input_o\,
	combout => \Mux128~79_combout\);

-- Location: MLABCELL_X9_Y4_N30
\Mux155~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~1_combout\ = ( \Mux65~23_combout\ & ( \Mux65~21_combout\ & ( ((!\inputA[0]~input_o\ & ((\Mux65~28_combout\))) # (\inputA[0]~input_o\ & (\Mux65~25_combout\))) # (\inputA[1]~input_o\) ) ) ) # ( !\Mux65~23_combout\ & ( \Mux65~21_combout\ & ( 
-- (!\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ & ((\Mux65~28_combout\))) # (\inputA[0]~input_o\ & (\Mux65~25_combout\)))) # (\inputA[1]~input_o\ & (((\inputA[0]~input_o\)))) ) ) ) # ( \Mux65~23_combout\ & ( !\Mux65~21_combout\ & ( (!\inputA[1]~input_o\ & 
-- ((!\inputA[0]~input_o\ & ((\Mux65~28_combout\))) # (\inputA[0]~input_o\ & (\Mux65~25_combout\)))) # (\inputA[1]~input_o\ & (((!\inputA[0]~input_o\)))) ) ) ) # ( !\Mux65~23_combout\ & ( !\Mux65~21_combout\ & ( (!\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ 
-- & ((\Mux65~28_combout\))) # (\inputA[0]~input_o\ & (\Mux65~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~25_combout\,
	datab => \ALT_INV_Mux65~28_combout\,
	datac => \ALT_INV_inputA[1]~input_o\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~23_combout\,
	dataf => \ALT_INV_Mux65~21_combout\,
	combout => \Mux155~1_combout\);

-- Location: MLABCELL_X9_Y5_N0
\Mux155~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~5_combout\ = ( !\aluControl[0]~input_o\ & ( (((\Mux155~1_combout\))) ) ) # ( \aluControl[0]~input_o\ & ( (!\inputA[0]~input_o\ & ((((\Mux128~78_combout\))))) # (\inputA[0]~input_o\ & (\Mux96~1_combout\ & (!\inputA[2]~input_o\ & 
-- (\Mux128~79_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000000000010000001111000011111111000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux96~1_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_Mux128~79_combout\,
	datae => \ALT_INV_aluControl[0]~input_o\,
	dataf => \ALT_INV_Mux128~78_combout\,
	datag => \ALT_INV_Mux155~1_combout\,
	combout => \Mux155~5_combout\);

-- Location: LABCELL_X10_Y2_N18
\Mux64~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~80_combout\ = ( \inputB[28]~input_o\ & ( \inputB[30]~input_o\ & ( (!\shamt[4]~input_o\ & (!\shamt[2]~input_o\ & !\shamt[3]~input_o\)) ) ) ) # ( !\inputB[28]~input_o\ & ( \inputB[30]~input_o\ & ( (!\shamt[4]~input_o\ & (!\shamt[2]~input_o\ & 
-- (!\shamt[3]~input_o\ & \shamt[1]~input_o\))) ) ) ) # ( \inputB[28]~input_o\ & ( !\inputB[30]~input_o\ & ( (!\shamt[4]~input_o\ & (!\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & !\shamt[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputB[30]~input_o\,
	combout => \Mux64~80_combout\);

-- Location: LABCELL_X20_Y4_N18
\Mux155~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~2_combout\ = ( \shamt[0]~input_o\ & ( \Mux1~23_combout\ & ( (!\shamt[1]~input_o\ & (\Mux1~25_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~21_combout\))) ) ) ) # ( !\shamt[0]~input_o\ & ( \Mux1~23_combout\ & ( (\shamt[1]~input_o\) # 
-- (\Mux1~27_combout\) ) ) ) # ( \shamt[0]~input_o\ & ( !\Mux1~23_combout\ & ( (!\shamt[1]~input_o\ & (\Mux1~25_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~21_combout\))) ) ) ) # ( !\shamt[0]~input_o\ & ( !\Mux1~23_combout\ & ( (\Mux1~27_combout\ & 
-- !\shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~25_combout\,
	datab => \ALT_INV_Mux1~27_combout\,
	datac => \ALT_INV_Mux1~21_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_Mux1~23_combout\,
	combout => \Mux155~2_combout\);

-- Location: MLABCELL_X9_Y5_N42
\Mux155~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~3_combout\ = ( \Mux155~2_combout\ & ( \Mux152~0_combout\ & ( (!\Mux152~1_combout\) # (\Mux64~80_combout\) ) ) ) # ( !\Mux155~2_combout\ & ( \Mux152~0_combout\ & ( (\Mux152~1_combout\ & \Mux64~80_combout\) ) ) ) # ( \Mux155~2_combout\ & ( 
-- !\Mux152~0_combout\ & ( (!\Mux152~1_combout\ & (\Mux155~5_combout\)) # (\Mux152~1_combout\ & ((\Mux64~79_combout\))) ) ) ) # ( !\Mux155~2_combout\ & ( !\Mux152~0_combout\ & ( (!\Mux152~1_combout\ & (\Mux155~5_combout\)) # (\Mux152~1_combout\ & 
-- ((\Mux64~79_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux155~5_combout\,
	datab => \ALT_INV_Mux152~1_combout\,
	datac => \ALT_INV_Mux64~80_combout\,
	datad => \ALT_INV_Mux64~79_combout\,
	datae => \ALT_INV_Mux155~2_combout\,
	dataf => \ALT_INV_Mux152~0_combout\,
	combout => \Mux155~3_combout\);

-- Location: MLABCELL_X9_Y3_N3
\res~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~11_combout\ = ( !\inputA[27]~input_o\ & ( !\inputB[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputA[27]~input_o\,
	combout => \res~11_combout\);

-- Location: MLABCELL_X9_Y3_N36
\Mux155~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~0_combout\ = ( \aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & ((\inputB[27]~input_o\) # (\inputA[27]~input_o\))) ) ) # ( !\aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & (((\inputA[27]~input_o\ & \inputB[27]~input_o\)))) # 
-- (\aluControl[1]~input_o\ & (\Add0~109_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010100111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~109_sumout\,
	datab => \ALT_INV_inputA[27]~input_o\,
	datac => \ALT_INV_inputB[27]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux155~0_combout\);

-- Location: MLABCELL_X9_Y5_N54
\Mux155~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux155~4_combout\ = ( \Mux152~2_combout\ & ( \Mux155~0_combout\ & ( (!\Mux152~3_combout\ & ((\Mux155~3_combout\))) # (\Mux152~3_combout\ & (\inputB[11]~input_o\)) ) ) ) # ( !\Mux152~2_combout\ & ( \Mux155~0_combout\ & ( (!\Mux152~3_combout\) # 
-- (\res~11_combout\) ) ) ) # ( \Mux152~2_combout\ & ( !\Mux155~0_combout\ & ( (!\Mux152~3_combout\ & ((\Mux155~3_combout\))) # (\Mux152~3_combout\ & (\inputB[11]~input_o\)) ) ) ) # ( !\Mux152~2_combout\ & ( !\Mux155~0_combout\ & ( (\res~11_combout\ & 
-- \Mux152~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[11]~input_o\,
	datab => \ALT_INV_Mux155~3_combout\,
	datac => \ALT_INV_res~11_combout\,
	datad => \ALT_INV_Mux152~3_combout\,
	datae => \ALT_INV_Mux152~2_combout\,
	dataf => \ALT_INV_Mux155~0_combout\,
	combout => \Mux155~4_combout\);

-- Location: MLABCELL_X9_Y5_N12
\res[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(27) = ( \Mux155~4_combout\ & ( (!\Mux160~0_combout\) # (res(27)) ) ) # ( !\Mux155~4_combout\ & ( (\Mux160~0_combout\ & res(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux160~0_combout\,
	datad => ALT_INV_res(27),
	dataf => \ALT_INV_Mux155~4_combout\,
	combout => res(27));

-- Location: MLABCELL_X9_Y3_N54
\Mux156~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~0_combout\ = ( \aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & ((\inputB[28]~input_o\) # (\inputA[28]~input_o\))) ) ) # ( !\aluControl[0]~input_o\ & ( (!\aluControl[1]~input_o\ & (\inputA[28]~input_o\ & (\inputB[28]~input_o\))) # 
-- (\aluControl[1]~input_o\ & (((\Add0~113_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011100101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_inputA[28]~input_o\,
	datac => \ALT_INV_inputB[28]~input_o\,
	datad => \ALT_INV_Add0~113_sumout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux156~0_combout\);

-- Location: MLABCELL_X9_Y4_N48
\Mux156~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~1_combout\ = ( \Mux65~30_combout\ & ( \Mux65~28_combout\ & ( (!\inputA[1]~input_o\) # ((!\inputA[0]~input_o\ & ((\Mux65~25_combout\))) # (\inputA[0]~input_o\ & (\Mux65~23_combout\))) ) ) ) # ( !\Mux65~30_combout\ & ( \Mux65~28_combout\ & ( 
-- (!\inputA[1]~input_o\ & (((\inputA[0]~input_o\)))) # (\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ & ((\Mux65~25_combout\))) # (\inputA[0]~input_o\ & (\Mux65~23_combout\)))) ) ) ) # ( \Mux65~30_combout\ & ( !\Mux65~28_combout\ & ( (!\inputA[1]~input_o\ & 
-- (((!\inputA[0]~input_o\)))) # (\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ & ((\Mux65~25_combout\))) # (\inputA[0]~input_o\ & (\Mux65~23_combout\)))) ) ) ) # ( !\Mux65~30_combout\ & ( !\Mux65~28_combout\ & ( (\inputA[1]~input_o\ & ((!\inputA[0]~input_o\ 
-- & ((\Mux65~25_combout\))) # (\inputA[0]~input_o\ & (\Mux65~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_Mux65~23_combout\,
	datac => \ALT_INV_Mux65~25_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~30_combout\,
	dataf => \ALT_INV_Mux65~28_combout\,
	combout => \Mux156~1_combout\);

-- Location: MLABCELL_X9_Y6_N48
\Mux156~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~3_combout\ = ( \inputA[0]~input_o\ & ( \Mux156~2_combout\ & ( ((!\aluControl[0]~input_o\ & \Mux156~1_combout\)) # (\Mux128~80_combout\) ) ) ) # ( !\inputA[0]~input_o\ & ( \Mux156~2_combout\ & ( ((!\aluControl[0]~input_o\ & \Mux156~1_combout\)) # 
-- (\Mux128~79_combout\) ) ) ) # ( \inputA[0]~input_o\ & ( !\Mux156~2_combout\ & ( (!\aluControl[0]~input_o\ & \Mux156~1_combout\) ) ) ) # ( !\inputA[0]~input_o\ & ( !\Mux156~2_combout\ & ( (!\aluControl[0]~input_o\ & \Mux156~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001010101110111010000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~79_combout\,
	datab => \ALT_INV_aluControl[0]~input_o\,
	datac => \ALT_INV_Mux128~80_combout\,
	datad => \ALT_INV_Mux156~1_combout\,
	datae => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_Mux156~2_combout\,
	combout => \Mux156~3_combout\);

-- Location: LABCELL_X20_Y4_N30
\Mux156~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~4_combout\ = ( \shamt[0]~input_o\ & ( \Mux1~23_combout\ & ( (\shamt[1]~input_o\) # (\Mux1~27_combout\) ) ) ) # ( !\shamt[0]~input_o\ & ( \Mux1~23_combout\ & ( (!\shamt[1]~input_o\ & (\Mux1~29_combout\)) # (\shamt[1]~input_o\ & 
-- ((\Mux1~25_combout\))) ) ) ) # ( \shamt[0]~input_o\ & ( !\Mux1~23_combout\ & ( (\Mux1~27_combout\ & !\shamt[1]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( !\Mux1~23_combout\ & ( (!\shamt[1]~input_o\ & (\Mux1~29_combout\)) # (\shamt[1]~input_o\ & 
-- ((\Mux1~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~29_combout\,
	datab => \ALT_INV_Mux1~27_combout\,
	datac => \ALT_INV_Mux1~25_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_Mux1~23_combout\,
	combout => \Mux156~4_combout\);

-- Location: LABCELL_X10_Y6_N0
\Mux156~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~5_combout\ = ( \Mux64~80_combout\ & ( \Mux152~0_combout\ & ( (!\Mux152~1_combout\ & ((\Mux156~4_combout\))) # (\Mux152~1_combout\ & (\Mux64~81_combout\)) ) ) ) # ( !\Mux64~80_combout\ & ( \Mux152~0_combout\ & ( (!\Mux152~1_combout\ & 
-- ((\Mux156~4_combout\))) # (\Mux152~1_combout\ & (\Mux64~81_combout\)) ) ) ) # ( \Mux64~80_combout\ & ( !\Mux152~0_combout\ & ( (\Mux152~1_combout\) # (\Mux156~3_combout\) ) ) ) # ( !\Mux64~80_combout\ & ( !\Mux152~0_combout\ & ( (\Mux156~3_combout\ & 
-- !\Mux152~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux156~3_combout\,
	datab => \ALT_INV_Mux152~1_combout\,
	datac => \ALT_INV_Mux64~81_combout\,
	datad => \ALT_INV_Mux156~4_combout\,
	datae => \ALT_INV_Mux64~80_combout\,
	dataf => \ALT_INV_Mux152~0_combout\,
	combout => \Mux156~5_combout\);

-- Location: LABCELL_X12_Y4_N33
\res~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \res~12_combout\ = ( !\inputA[28]~input_o\ & ( !\inputB[28]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[28]~input_o\,
	dataf => \ALT_INV_inputA[28]~input_o\,
	combout => \res~12_combout\);

-- Location: LABCELL_X10_Y6_N12
\Mux156~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux156~6_combout\ = ( \res~12_combout\ & ( \Mux152~2_combout\ & ( (!\Mux152~3_combout\ & (\Mux156~5_combout\)) # (\Mux152~3_combout\ & ((\inputB[12]~input_o\))) ) ) ) # ( !\res~12_combout\ & ( \Mux152~2_combout\ & ( (!\Mux152~3_combout\ & 
-- (\Mux156~5_combout\)) # (\Mux152~3_combout\ & ((\inputB[12]~input_o\))) ) ) ) # ( \res~12_combout\ & ( !\Mux152~2_combout\ & ( (\Mux152~3_combout\) # (\Mux156~0_combout\) ) ) ) # ( !\res~12_combout\ & ( !\Mux152~2_combout\ & ( (\Mux156~0_combout\ & 
-- !\Mux152~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux156~0_combout\,
	datab => \ALT_INV_Mux156~5_combout\,
	datac => \ALT_INV_inputB[12]~input_o\,
	datad => \ALT_INV_Mux152~3_combout\,
	datae => \ALT_INV_res~12_combout\,
	dataf => \ALT_INV_Mux152~2_combout\,
	combout => \Mux156~6_combout\);

-- Location: LABCELL_X10_Y6_N33
\res[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(28) = ( \Mux160~0_combout\ & ( res(28) ) ) # ( !\Mux160~0_combout\ & ( \Mux156~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(28),
	datab => \ALT_INV_Mux156~6_combout\,
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(28));

-- Location: LABCELL_X10_Y6_N18
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !res(27) & ( !res(28) & ( (!res(24) & (!res(26) & (!res(29) & !res(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(24),
	datab => ALT_INV_res(26),
	datac => ALT_INV_res(29),
	datad => ALT_INV_res(25),
	datae => ALT_INV_res(27),
	dataf => ALT_INV_res(28),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X16_Y3_N18
\Mux65~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~8_combout\ = ( \inputB[8]~input_o\ & ( !\inputA[4]~input_o\ & ( (!\inputA[2]~input_o\ & (((!\inputA[3]~input_o\)) # (\inputB[0]~input_o\))) # (\inputA[2]~input_o\ & (((\inputB[4]~input_o\ & !\inputA[3]~input_o\)))) ) ) ) # ( !\inputB[8]~input_o\ & 
-- ( !\inputA[4]~input_o\ & ( (!\inputA[2]~input_o\ & (\inputB[0]~input_o\ & ((\inputA[3]~input_o\)))) # (\inputA[2]~input_o\ & (((\inputB[4]~input_o\ & !\inputA[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputB[4]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[8]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux65~8_combout\);

-- Location: LABCELL_X14_Y3_N54
\Mux139~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux139~2_combout\ = ( \Mux65~10_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux65~9_combout\))) # (\inputA[0]~input_o\ & (\Mux65~8_combout\)) ) ) ) # ( !\Mux65~10_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- ((\Mux65~9_combout\))) # (\inputA[0]~input_o\ & (\Mux65~8_combout\)) ) ) ) # ( \Mux65~10_combout\ & ( !\inputA[1]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux65~11_combout\) ) ) ) # ( !\Mux65~10_combout\ & ( !\inputA[1]~input_o\ & ( (\Mux65~11_combout\ & 
-- !\inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~11_combout\,
	datab => \ALT_INV_Mux65~8_combout\,
	datac => \ALT_INV_Mux65~9_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~10_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux139~2_combout\);

-- Location: MLABCELL_X18_Y3_N12
\Mux1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = ( \shamt[2]~input_o\ & ( \inputB[0]~input_o\ & ( (\inputB[4]~input_o\ & (!\shamt[3]~input_o\ & !\shamt[4]~input_o\)) ) ) ) # ( !\shamt[2]~input_o\ & ( \inputB[0]~input_o\ & ( (!\shamt[4]~input_o\ & ((\inputB[8]~input_o\) # 
-- (\shamt[3]~input_o\))) ) ) ) # ( \shamt[2]~input_o\ & ( !\inputB[0]~input_o\ & ( (\inputB[4]~input_o\ & (!\shamt[3]~input_o\ & !\shamt[4]~input_o\)) ) ) ) # ( !\shamt[2]~input_o\ & ( !\inputB[0]~input_o\ & ( (!\shamt[3]~input_o\ & (\inputB[8]~input_o\ & 
-- !\shamt[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000010001000000000000111111000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_inputB[0]~input_o\,
	combout => \Mux1~8_combout\);

-- Location: MLABCELL_X18_Y3_N54
\Mux139~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux139~3_combout\ = ( \shamt[0]~input_o\ & ( \Mux1~9_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux1~10_combout\))) # (\shamt[1]~input_o\ & (\Mux1~8_combout\)) ) ) ) # ( !\shamt[0]~input_o\ & ( \Mux1~9_combout\ & ( (\Mux1~11_combout\) # (\shamt[1]~input_o\) 
-- ) ) ) # ( \shamt[0]~input_o\ & ( !\Mux1~9_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux1~10_combout\))) # (\shamt[1]~input_o\ & (\Mux1~8_combout\)) ) ) ) # ( !\shamt[0]~input_o\ & ( !\Mux1~9_combout\ & ( (!\shamt[1]~input_o\ & \Mux1~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_Mux1~8_combout\,
	datac => \ALT_INV_Mux1~11_combout\,
	datad => \ALT_INV_Mux1~10_combout\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_Mux1~9_combout\,
	combout => \Mux139~3_combout\);

-- Location: LABCELL_X12_Y5_N36
\Mux139~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux139~1_combout\ = ( !\inputB[11]~input_o\ & ( !\inputA[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[11]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux139~1_combout\);

-- Location: MLABCELL_X13_Y5_N42
\Mux139~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux139~4_combout\ = ( \aluControl[2]~input_o\ & ( \Mux139~1_combout\ & ( \aluControl[3]~input_o\ ) ) ) # ( !\aluControl[2]~input_o\ & ( \Mux139~1_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[1]~input_o\ & ((\Mux139~3_combout\))) # 
-- (\aluControl[1]~input_o\ & (\Mux139~2_combout\)))) ) ) ) # ( !\aluControl[2]~input_o\ & ( !\Mux139~1_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[1]~input_o\ & ((\Mux139~3_combout\))) # (\aluControl[1]~input_o\ & (\Mux139~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000000000000000000001101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux139~2_combout\,
	datab => \ALT_INV_Mux139~3_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_Mux139~1_combout\,
	combout => \Mux139~4_combout\);

-- Location: LABCELL_X12_Y5_N9
\Mux139~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux139~5_combout\ = ( \Add0~45_sumout\ & ( (!\aluControl[3]~input_o\ & (((\inputA[11]~input_o\ & \inputB[11]~input_o\)) # (\aluControl[1]~input_o\))) ) ) # ( !\Add0~45_sumout\ & ( (!\aluControl[1]~input_o\ & (\inputA[11]~input_o\ & (\inputB[11]~input_o\ 
-- & !\aluControl[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000001010111000000000101011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_inputA[11]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \Mux139~5_combout\);

-- Location: LABCELL_X17_Y4_N3
\Mux128~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~16_combout\ = ( \inputB[11]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\) # ((\inputB[19]~input_o\)))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & ((\inputB[27]~input_o\)))) ) ) # ( !\inputB[11]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & (\inputA[3]~input_o\ & (\inputB[19]~input_o\))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & ((\inputB[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux128~16_combout\);

-- Location: LABCELL_X17_Y4_N36
\Mux128~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~29_combout\ = ( \Mux128~24_combout\ & ( \Mux128~20_combout\ & ( (!\inputA[2]~input_o\ & (((\inputA[1]~input_o\)) # (\Mux128~16_combout\))) # (\inputA[2]~input_o\ & (((!\inputA[1]~input_o\) # (\Mux128~28_combout\)))) ) ) ) # ( !\Mux128~24_combout\ 
-- & ( \Mux128~20_combout\ & ( (!\inputA[2]~input_o\ & (((\inputA[1]~input_o\)) # (\Mux128~16_combout\))) # (\inputA[2]~input_o\ & (((\Mux128~28_combout\ & \inputA[1]~input_o\)))) ) ) ) # ( \Mux128~24_combout\ & ( !\Mux128~20_combout\ & ( 
-- (!\inputA[2]~input_o\ & (\Mux128~16_combout\ & ((!\inputA[1]~input_o\)))) # (\inputA[2]~input_o\ & (((!\inputA[1]~input_o\) # (\Mux128~28_combout\)))) ) ) ) # ( !\Mux128~24_combout\ & ( !\Mux128~20_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~16_combout\ 
-- & ((!\inputA[1]~input_o\)))) # (\inputA[2]~input_o\ & (((\Mux128~28_combout\ & \inputA[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~16_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_Mux128~28_combout\,
	datad => \ALT_INV_inputA[1]~input_o\,
	datae => \ALT_INV_Mux128~24_combout\,
	dataf => \ALT_INV_Mux128~20_combout\,
	combout => \Mux128~29_combout\);

-- Location: LABCELL_X20_Y5_N24
\Mux64~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~16_combout\ = ( \shamt[3]~input_o\ & ( (!\shamt[4]~input_o\ & \inputB[19]~input_o\) ) ) # ( !\shamt[3]~input_o\ & ( (!\shamt[4]~input_o\ & (\inputB[11]~input_o\)) # (\shamt[4]~input_o\ & ((\inputB[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_inputB[11]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~16_combout\);

-- Location: LABCELL_X19_Y5_N6
\Mux64~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~29_combout\ = ( \Mux64~20_combout\ & ( \Mux64~16_combout\ & ( (!\shamt[2]~input_o\) # ((!\shamt[1]~input_o\ & (\Mux64~24_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~28_combout\)))) ) ) ) # ( !\Mux64~20_combout\ & ( \Mux64~16_combout\ & ( 
-- (!\shamt[2]~input_o\ & (((!\shamt[1]~input_o\)))) # (\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & (\Mux64~24_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~28_combout\))))) ) ) ) # ( \Mux64~20_combout\ & ( !\Mux64~16_combout\ & ( (!\shamt[2]~input_o\ & 
-- (((\shamt[1]~input_o\)))) # (\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & (\Mux64~24_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~28_combout\))))) ) ) ) # ( !\Mux64~20_combout\ & ( !\Mux64~16_combout\ & ( (\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & 
-- (\Mux64~24_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~28_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~24_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~28_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux64~20_combout\,
	dataf => \ALT_INV_Mux64~16_combout\,
	combout => \Mux64~29_combout\);

-- Location: LABCELL_X12_Y4_N24
\Mux139~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux139~0_combout\ = ( \Mux64~29_combout\ & ( \Mux128~31_combout\ & ( (!\Mux143~0_combout\ & (((!\aluControl[1]~input_o\)) # (\Mux128~29_combout\))) # (\Mux143~0_combout\ & (((\aluControl[1]~input_o\) # (\Mux64~31_combout\)))) ) ) ) # ( 
-- !\Mux64~29_combout\ & ( \Mux128~31_combout\ & ( (!\Mux143~0_combout\ & (\Mux128~29_combout\ & ((\aluControl[1]~input_o\)))) # (\Mux143~0_combout\ & (((\aluControl[1]~input_o\) # (\Mux64~31_combout\)))) ) ) ) # ( \Mux64~29_combout\ & ( !\Mux128~31_combout\ 
-- & ( (!\Mux143~0_combout\ & (((!\aluControl[1]~input_o\)) # (\Mux128~29_combout\))) # (\Mux143~0_combout\ & (((\Mux64~31_combout\ & !\aluControl[1]~input_o\)))) ) ) ) # ( !\Mux64~29_combout\ & ( !\Mux128~31_combout\ & ( (!\Mux143~0_combout\ & 
-- (\Mux128~29_combout\ & ((\aluControl[1]~input_o\)))) # (\Mux143~0_combout\ & (((\Mux64~31_combout\ & !\aluControl[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~29_combout\,
	datab => \ALT_INV_Mux143~0_combout\,
	datac => \ALT_INV_Mux64~31_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux64~29_combout\,
	dataf => \ALT_INV_Mux128~31_combout\,
	combout => \Mux139~0_combout\);

-- Location: LABCELL_X12_Y5_N12
\Mux139~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux139~6_combout\ = ( !\aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & (((\Mux139~5_combout\)) # (\Mux139~4_combout\))) # (\aluControl[0]~input_o\ & ((((!\Mux139~1_combout\ & !\aluControl[2]~input_o\))))) ) ) # ( \aluControl[3]~input_o\ & ( 
-- (!\aluControl[0]~input_o\ & (((\Mux139~5_combout\)) # (\Mux139~4_combout\))) # (\aluControl[0]~input_o\ & ((((\Mux139~0_combout\ & !\aluControl[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111011101110111011101110111011111110000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux139~4_combout\,
	datab => \ALT_INV_Mux139~5_combout\,
	datac => \ALT_INV_Mux139~0_combout\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	datag => \ALT_INV_Mux139~1_combout\,
	combout => \Mux139~6_combout\);

-- Location: LABCELL_X12_Y5_N45
\res[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(11) = ( \Mux139~6_combout\ & ( (!\Mux160~0_combout\) # (res(11)) ) ) # ( !\Mux139~6_combout\ & ( (\Mux160~0_combout\ & res(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux160~0_combout\,
	datad => ALT_INV_res(11),
	dataf => \ALT_INV_Mux139~6_combout\,
	combout => res(11));

-- Location: MLABCELL_X18_Y3_N30
\Mux1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = ( !\shamt[4]~input_o\ & ( (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & ((\inputB[7]~input_o\))) # (\shamt[2]~input_o\ & (\inputB[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	datad => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux1~7_combout\);

-- Location: LABCELL_X17_Y3_N18
\Mux138~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~3_combout\ = ( \Mux1~9_combout\ & ( \Mux1~7_combout\ & ( ((!\shamt[1]~input_o\ & (\Mux1~10_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~8_combout\)))) # (\shamt[0]~input_o\) ) ) ) # ( !\Mux1~9_combout\ & ( \Mux1~7_combout\ & ( (!\shamt[0]~input_o\ & 
-- ((!\shamt[1]~input_o\ & (\Mux1~10_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~8_combout\))))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) ) ) ) # ( \Mux1~9_combout\ & ( !\Mux1~7_combout\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & 
-- (\Mux1~10_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~8_combout\))))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)))) ) ) ) # ( !\Mux1~9_combout\ & ( !\Mux1~7_combout\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\Mux1~10_combout\)) # 
-- (\shamt[1]~input_o\ & ((\Mux1~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~10_combout\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_Mux1~8_combout\,
	datae => \ALT_INV_Mux1~9_combout\,
	dataf => \ALT_INV_Mux1~7_combout\,
	combout => \Mux138~3_combout\);

-- Location: LABCELL_X14_Y5_N9
\Mux138~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~1_combout\ = ( !\inputA[10]~input_o\ & ( !\inputB[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[10]~input_o\,
	dataf => \ALT_INV_inputA[10]~input_o\,
	combout => \Mux138~1_combout\);

-- Location: LABCELL_X16_Y3_N57
\Mux65~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~7_combout\ = ( \inputA[2]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[3]~input_o\)) ) ) # ( !\inputA[2]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & \inputB[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux65~7_combout\);

-- Location: LABCELL_X14_Y3_N30
\Mux138~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~2_combout\ = ( \Mux65~10_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux65~8_combout\))) # (\inputA[0]~input_o\ & (\Mux65~7_combout\)) ) ) ) # ( !\Mux65~10_combout\ & ( \inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & 
-- ((\Mux65~8_combout\))) # (\inputA[0]~input_o\ & (\Mux65~7_combout\)) ) ) ) # ( \Mux65~10_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\) # (\Mux65~9_combout\) ) ) ) # ( !\Mux65~10_combout\ & ( !\inputA[1]~input_o\ & ( (\Mux65~9_combout\ & 
-- \inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~7_combout\,
	datab => \ALT_INV_Mux65~8_combout\,
	datac => \ALT_INV_Mux65~9_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~10_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux138~2_combout\);

-- Location: LABCELL_X12_Y5_N54
\Mux138~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~4_combout\ = ( \aluControl[1]~input_o\ & ( \Mux138~2_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\) # (\Mux138~1_combout\))) ) ) ) # ( !\aluControl[1]~input_o\ & ( \Mux138~2_combout\ & ( (\aluControl[3]~input_o\ & 
-- ((!\aluControl[2]~input_o\ & (\Mux138~3_combout\)) # (\aluControl[2]~input_o\ & ((\Mux138~1_combout\))))) ) ) ) # ( \aluControl[1]~input_o\ & ( !\Mux138~2_combout\ & ( (\aluControl[3]~input_o\ & (\Mux138~1_combout\ & \aluControl[2]~input_o\)) ) ) ) # ( 
-- !\aluControl[1]~input_o\ & ( !\Mux138~2_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\ & (\Mux138~3_combout\)) # (\aluControl[2]~input_o\ & ((\Mux138~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000000000000010100010001000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_Mux138~3_combout\,
	datac => \ALT_INV_Mux138~1_combout\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux138~2_combout\,
	combout => \Mux138~4_combout\);

-- Location: LABCELL_X16_Y3_N54
\Mux128~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~14_combout\ = ( \inputB[26]~input_o\ & ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[10]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[18]~input_o\))))) # (\inputA[4]~input_o\ & (!\inputA[3]~input_o\)) ) ) # ( !\inputB[26]~input_o\ & 
-- ( (!\inputA[4]~input_o\ & ((!\inputA[3]~input_o\ & (\inputB[10]~input_o\)) # (\inputA[3]~input_o\ & ((\inputB[18]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \Mux128~14_combout\);

-- Location: LABCELL_X21_Y5_N42
\Mux128~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~27_combout\ = ( \inputA[1]~input_o\ & ( \Mux128~22_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~18_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~26_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux128~22_combout\ & ( (\Mux128~14_combout\) # 
-- (\inputA[2]~input_o\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux128~22_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~18_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~26_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux128~22_combout\ & ( 
-- (!\inputA[2]~input_o\ & \Mux128~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_Mux128~18_combout\,
	datac => \ALT_INV_Mux128~14_combout\,
	datad => \ALT_INV_Mux128~26_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux128~22_combout\,
	combout => \Mux128~27_combout\);

-- Location: LABCELL_X21_Y4_N0
\Mux64~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~14_combout\ = ( \shamt[4]~input_o\ & ( \inputB[18]~input_o\ & ( (!\shamt[3]~input_o\ & \inputB[26]~input_o\) ) ) ) # ( !\shamt[4]~input_o\ & ( \inputB[18]~input_o\ & ( (\inputB[10]~input_o\) # (\shamt[3]~input_o\) ) ) ) # ( \shamt[4]~input_o\ & ( 
-- !\inputB[18]~input_o\ & ( (!\shamt[3]~input_o\ & \inputB[26]~input_o\) ) ) ) # ( !\shamt[4]~input_o\ & ( !\inputB[18]~input_o\ & ( (!\shamt[3]~input_o\ & \inputB[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100010001001011111010111110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_inputB[26]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \Mux64~14_combout\);

-- Location: LABCELL_X17_Y6_N18
\Mux64~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~27_combout\ = ( \Mux64~14_combout\ & ( \shamt[1]~input_o\ & ( (!\shamt[2]~input_o\ & ((\Mux64~18_combout\))) # (\shamt[2]~input_o\ & (\Mux64~26_combout\)) ) ) ) # ( !\Mux64~14_combout\ & ( \shamt[1]~input_o\ & ( (!\shamt[2]~input_o\ & 
-- ((\Mux64~18_combout\))) # (\shamt[2]~input_o\ & (\Mux64~26_combout\)) ) ) ) # ( \Mux64~14_combout\ & ( !\shamt[1]~input_o\ & ( (!\shamt[2]~input_o\) # (\Mux64~22_combout\) ) ) ) # ( !\Mux64~14_combout\ & ( !\shamt[1]~input_o\ & ( (\Mux64~22_combout\ & 
-- \shamt[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~26_combout\,
	datab => \ALT_INV_Mux64~22_combout\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_Mux64~18_combout\,
	datae => \ALT_INV_Mux64~14_combout\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \Mux64~27_combout\);

-- Location: LABCELL_X12_Y4_N18
\Mux138~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~0_combout\ = ( \Mux64~29_combout\ & ( \Mux128~29_combout\ & ( ((!\aluControl[1]~input_o\ & ((\Mux64~27_combout\))) # (\aluControl[1]~input_o\ & (\Mux128~27_combout\))) # (\Mux143~0_combout\) ) ) ) # ( !\Mux64~29_combout\ & ( \Mux128~29_combout\ & 
-- ( (!\Mux143~0_combout\ & ((!\aluControl[1]~input_o\ & ((\Mux64~27_combout\))) # (\aluControl[1]~input_o\ & (\Mux128~27_combout\)))) # (\Mux143~0_combout\ & (((\aluControl[1]~input_o\)))) ) ) ) # ( \Mux64~29_combout\ & ( !\Mux128~29_combout\ & ( 
-- (!\Mux143~0_combout\ & ((!\aluControl[1]~input_o\ & ((\Mux64~27_combout\))) # (\aluControl[1]~input_o\ & (\Mux128~27_combout\)))) # (\Mux143~0_combout\ & (((!\aluControl[1]~input_o\)))) ) ) ) # ( !\Mux64~29_combout\ & ( !\Mux128~29_combout\ & ( 
-- (!\Mux143~0_combout\ & ((!\aluControl[1]~input_o\ & ((\Mux64~27_combout\))) # (\aluControl[1]~input_o\ & (\Mux128~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~27_combout\,
	datab => \ALT_INV_Mux64~27_combout\,
	datac => \ALT_INV_Mux143~0_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux64~29_combout\,
	dataf => \ALT_INV_Mux128~29_combout\,
	combout => \Mux138~0_combout\);

-- Location: LABCELL_X14_Y5_N45
\Mux138~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~5_combout\ = ( \inputB[10]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[1]~input_o\ & (\inputA[10]~input_o\)) # (\aluControl[1]~input_o\ & ((\Add0~41_sumout\))))) ) ) # ( !\inputB[10]~input_o\ & ( (\aluControl[1]~input_o\ & 
-- (!\aluControl[3]~input_o\ & \Add0~41_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_inputA[10]~input_o\,
	datad => \ALT_INV_Add0~41_sumout\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \Mux138~5_combout\);

-- Location: LABCELL_X12_Y5_N48
\Mux138~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux138~6_combout\ = ( !\aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & ((((\Mux138~5_combout\))) # (\Mux138~4_combout\))) # (\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\ & (!\Mux138~1_combout\))))) ) ) # ( \aluControl[3]~input_o\ & ( 
-- (!\aluControl[0]~input_o\ & ((((\Mux138~5_combout\))) # (\Mux138~4_combout\))) # (\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\ & (\Mux138~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010111111111010101011111111111000000110000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux138~4_combout\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_Mux138~0_combout\,
	datad => \ALT_INV_Mux138~5_combout\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	datag => \ALT_INV_Mux138~1_combout\,
	combout => \Mux138~6_combout\);

-- Location: LABCELL_X12_Y5_N42
\res[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(10) = ( \Mux138~6_combout\ & ( (!\Mux160~0_combout\) # (res(10)) ) ) # ( !\Mux138~6_combout\ & ( (\Mux160~0_combout\ & res(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux160~0_combout\,
	datad => ALT_INV_res(10),
	dataf => \ALT_INV_Mux138~6_combout\,
	combout => res(10));

-- Location: MLABCELL_X13_Y4_N12
\Mux135~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux135~1_combout\ = ( !\aluControl[3]~input_o\ & ( (!\aluControl[1]~input_o\ & (((\inputA[7]~input_o\ & \inputB[7]~input_o\)))) # (\aluControl[1]~input_o\ & (\Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_inputA[7]~input_o\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux135~1_combout\);

-- Location: MLABCELL_X13_Y4_N36
\Mux135~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux135~2_combout\ = ( !\inputA[7]~input_o\ & ( !\inputB[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	combout => \Mux135~2_combout\);

-- Location: MLABCELL_X18_Y5_N51
\Mux64~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~12_combout\ = ( \inputB[17]~input_o\ & ( (!\shamt[4]~input_o\ & (((\inputB[9]~input_o\)) # (\shamt[3]~input_o\))) # (\shamt[4]~input_o\ & (!\shamt[3]~input_o\ & (\inputB[25]~input_o\))) ) ) # ( !\inputB[17]~input_o\ & ( (!\shamt[3]~input_o\ & 
-- ((!\shamt[4]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[4]~input_o\ & (\inputB[25]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[25]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputB[17]~input_o\,
	combout => \Mux64~12_combout\);

-- Location: MLABCELL_X18_Y4_N57
\Mux64~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~3_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[31]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[15]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[23]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputB[15]~input_o\,
	datad => \ALT_INV_inputB[7]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~3_combout\);

-- Location: LABCELL_X19_Y5_N30
\Mux64~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~21_combout\ = ( \Mux64~20_combout\ & ( \Mux64~16_combout\ & ( ((!\shamt[1]~input_o\ & ((\Mux64~3_combout\))) # (\shamt[1]~input_o\ & (\Mux64~12_combout\))) # (\shamt[2]~input_o\) ) ) ) # ( !\Mux64~20_combout\ & ( \Mux64~16_combout\ & ( 
-- (!\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & ((\Mux64~3_combout\))) # (\shamt[1]~input_o\ & (\Mux64~12_combout\)))) # (\shamt[2]~input_o\ & (((!\shamt[1]~input_o\)))) ) ) ) # ( \Mux64~20_combout\ & ( !\Mux64~16_combout\ & ( (!\shamt[2]~input_o\ & 
-- ((!\shamt[1]~input_o\ & ((\Mux64~3_combout\))) # (\shamt[1]~input_o\ & (\Mux64~12_combout\)))) # (\shamt[2]~input_o\ & (((\shamt[1]~input_o\)))) ) ) ) # ( !\Mux64~20_combout\ & ( !\Mux64~16_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & 
-- ((\Mux64~3_combout\))) # (\shamt[1]~input_o\ & (\Mux64~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~12_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~3_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux64~20_combout\,
	dataf => \ALT_INV_Mux64~16_combout\,
	combout => \Mux64~21_combout\);

-- Location: LABCELL_X20_Y6_N24
\Mux128~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~10_combout\ = ( \inputB[8]~input_o\ & ( (!\inputA[3]~input_o\ & (((!\inputA[4]~input_o\)) # (\inputB[24]~input_o\))) # (\inputA[3]~input_o\ & (((\inputB[16]~input_o\ & !\inputA[4]~input_o\)))) ) ) # ( !\inputB[8]~input_o\ & ( (!\inputA[3]~input_o\ 
-- & (\inputB[24]~input_o\ & ((\inputA[4]~input_o\)))) # (\inputA[3]~input_o\ & (((\inputB[16]~input_o\ & !\inputA[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010010001010101111001000101010111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datab => \ALT_INV_inputB[24]~input_o\,
	datac => \ALT_INV_inputB[16]~input_o\,
	datad => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[8]~input_o\,
	combout => \Mux128~10_combout\);

-- Location: LABCELL_X21_Y5_N48
\Mux128~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~23_combout\ = ( \Mux128~14_combout\ & ( \Mux128~18_combout\ & ( (!\inputA[1]~input_o\ & (((\Mux128~10_combout\) # (\inputA[2]~input_o\)))) # (\inputA[1]~input_o\ & (((!\inputA[2]~input_o\)) # (\Mux128~22_combout\))) ) ) ) # ( !\Mux128~14_combout\ 
-- & ( \Mux128~18_combout\ & ( (!\inputA[1]~input_o\ & (((\Mux128~10_combout\) # (\inputA[2]~input_o\)))) # (\inputA[1]~input_o\ & (\Mux128~22_combout\ & (\inputA[2]~input_o\))) ) ) ) # ( \Mux128~14_combout\ & ( !\Mux128~18_combout\ & ( (!\inputA[1]~input_o\ 
-- & (((!\inputA[2]~input_o\ & \Mux128~10_combout\)))) # (\inputA[1]~input_o\ & (((!\inputA[2]~input_o\)) # (\Mux128~22_combout\))) ) ) ) # ( !\Mux128~14_combout\ & ( !\Mux128~18_combout\ & ( (!\inputA[1]~input_o\ & (((!\inputA[2]~input_o\ & 
-- \Mux128~10_combout\)))) # (\inputA[1]~input_o\ & (\Mux128~22_combout\ & (\inputA[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~22_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_Mux128~10_combout\,
	datae => \ALT_INV_Mux128~14_combout\,
	dataf => \ALT_INV_Mux128~18_combout\,
	combout => \Mux128~23_combout\);

-- Location: LABCELL_X20_Y6_N30
\Mux64~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~10_combout\ = ( \inputB[8]~input_o\ & ( (!\shamt[3]~input_o\ & (((!\shamt[4]~input_o\) # (\inputB[24]~input_o\)))) # (\shamt[3]~input_o\ & (\inputB[16]~input_o\ & ((!\shamt[4]~input_o\)))) ) ) # ( !\inputB[8]~input_o\ & ( (!\shamt[3]~input_o\ & 
-- (((\inputB[24]~input_o\ & \shamt[4]~input_o\)))) # (\shamt[3]~input_o\ & (\inputB[16]~input_o\ & ((!\shamt[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010000110011011101000011001101110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_inputB[8]~input_o\,
	combout => \Mux64~10_combout\);

-- Location: LABCELL_X17_Y6_N0
\Mux64~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~23_combout\ = ( \shamt[1]~input_o\ & ( \Mux64~10_combout\ & ( (!\shamt[2]~input_o\ & (\Mux64~14_combout\)) # (\shamt[2]~input_o\ & ((\Mux64~22_combout\))) ) ) ) # ( !\shamt[1]~input_o\ & ( \Mux64~10_combout\ & ( (!\shamt[2]~input_o\) # 
-- (\Mux64~18_combout\) ) ) ) # ( \shamt[1]~input_o\ & ( !\Mux64~10_combout\ & ( (!\shamt[2]~input_o\ & (\Mux64~14_combout\)) # (\shamt[2]~input_o\ & ((\Mux64~22_combout\))) ) ) ) # ( !\shamt[1]~input_o\ & ( !\Mux64~10_combout\ & ( (\shamt[2]~input_o\ & 
-- \Mux64~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~14_combout\,
	datab => \ALT_INV_Mux64~22_combout\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_Mux64~18_combout\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_Mux64~10_combout\,
	combout => \Mux64~23_combout\);

-- Location: MLABCELL_X18_Y5_N30
\Mux128~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~12_combout\ = ( \inputA[3]~input_o\ & ( (\inputB[17]~input_o\ & !\inputA[4]~input_o\) ) ) # ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & ((\inputB[9]~input_o\))) # (\inputA[4]~input_o\ & (\inputB[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[17]~input_o\,
	datab => \ALT_INV_inputB[25]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux128~12_combout\);

-- Location: MLABCELL_X18_Y4_N54
\Mux128~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~3_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[31]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[15]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[23]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux128~3_combout\);

-- Location: LABCELL_X17_Y4_N48
\Mux128~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~21_combout\ = ( \Mux128~3_combout\ & ( \inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ & (\Mux128~16_combout\)) # (\inputA[1]~input_o\ & ((\Mux128~20_combout\))) ) ) ) # ( !\Mux128~3_combout\ & ( \inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ & 
-- (\Mux128~16_combout\)) # (\inputA[1]~input_o\ & ((\Mux128~20_combout\))) ) ) ) # ( \Mux128~3_combout\ & ( !\inputA[2]~input_o\ & ( (!\inputA[1]~input_o\) # (\Mux128~12_combout\) ) ) ) # ( !\Mux128~3_combout\ & ( !\inputA[2]~input_o\ & ( 
-- (\inputA[1]~input_o\ & \Mux128~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~16_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~20_combout\,
	datad => \ALT_INV_Mux128~12_combout\,
	datae => \ALT_INV_Mux128~3_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux128~21_combout\);

-- Location: MLABCELL_X18_Y5_N18
\Mux135~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux135~0_combout\ = ( \aluControl[1]~input_o\ & ( \Mux128~21_combout\ & ( (!\Mux143~0_combout\) # (\Mux128~23_combout\) ) ) ) # ( !\aluControl[1]~input_o\ & ( \Mux128~21_combout\ & ( (!\Mux143~0_combout\ & (\Mux64~21_combout\)) # (\Mux143~0_combout\ & 
-- ((\Mux64~23_combout\))) ) ) ) # ( \aluControl[1]~input_o\ & ( !\Mux128~21_combout\ & ( (\Mux128~23_combout\ & \Mux143~0_combout\) ) ) ) # ( !\aluControl[1]~input_o\ & ( !\Mux128~21_combout\ & ( (!\Mux143~0_combout\ & (\Mux64~21_combout\)) # 
-- (\Mux143~0_combout\ & ((\Mux64~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~21_combout\,
	datab => \ALT_INV_Mux128~23_combout\,
	datac => \ALT_INV_Mux64~23_combout\,
	datad => \ALT_INV_Mux143~0_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux128~21_combout\,
	combout => \Mux135~0_combout\);

-- Location: LABCELL_X16_Y3_N0
\Mux65~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~6_combout\ = ( \inputB[6]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & ((!\inputA[2]~input_o\) # (\inputB[2]~input_o\)))) ) ) # ( !\inputB[6]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputA[2]~input_o\ & (\inputB[2]~input_o\ & 
-- !\inputA[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000010001010000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \Mux65~6_combout\);

-- Location: LABCELL_X16_Y3_N3
\Mux65~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~5_combout\ = ( \inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & ((!\inputA[2]~input_o\) # (\inputB[1]~input_o\)))) ) ) # ( !\inputB[5]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputA[2]~input_o\ & (!\inputA[3]~input_o\ & 
-- \inputB[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000010000000101000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[1]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux65~5_combout\);

-- Location: LABCELL_X17_Y5_N18
\Mux65~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~4_combout\ = ( \inputB[4]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[3]~input_o\ & ((!\inputA[2]~input_o\) # (\inputB[0]~input_o\)))) ) ) # ( !\inputB[4]~input_o\ & ( (!\inputA[4]~input_o\ & (\inputA[2]~input_o\ & (!\inputA[3]~input_o\ & 
-- \inputB[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000010000000101000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_inputB[4]~input_o\,
	combout => \Mux65~4_combout\);

-- Location: MLABCELL_X13_Y5_N6
\Mux135~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux135~3_combout\ = ( \inputA[1]~input_o\ & ( \Mux65~7_combout\ & ( (!\inputA[0]~input_o\ & (\Mux65~5_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~4_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux65~7_combout\ & ( (!\inputA[0]~input_o\) # 
-- (\Mux65~6_combout\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux65~7_combout\ & ( (!\inputA[0]~input_o\ & (\Mux65~5_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~4_combout\))) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux65~7_combout\ & ( (\Mux65~6_combout\ & 
-- \inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~6_combout\,
	datab => \ALT_INV_Mux65~5_combout\,
	datac => \ALT_INV_Mux65~4_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux65~7_combout\,
	combout => \Mux135~3_combout\);

-- Location: MLABCELL_X18_Y5_N48
\Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = ( \shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (!\shamt[3]~input_o\ & \inputB[1]~input_o\)) ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (!\shamt[3]~input_o\ & \inputB[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[5]~input_o\,
	datad => \ALT_INV_inputB[1]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: MLABCELL_X18_Y3_N33
\Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( !\shamt[4]~input_o\ & ( (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & ((\inputB[4]~input_o\))) # (\shamt[2]~input_o\ & (\inputB[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X12_Y3_N51
\Mux1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = ( \shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (!\shamt[3]~input_o\ & \inputB[2]~input_o\)) ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[4]~input_o\ & (\inputB[6]~input_o\ & !\shamt[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: LABCELL_X17_Y3_N24
\Mux135~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux135~4_combout\ = ( \shamt[0]~input_o\ & ( \Mux1~7_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux1~6_combout\))) # (\shamt[1]~input_o\ & (\Mux1~4_combout\)) ) ) ) # ( !\shamt[0]~input_o\ & ( \Mux1~7_combout\ & ( (!\shamt[1]~input_o\) # (\Mux1~5_combout\) ) 
-- ) ) # ( \shamt[0]~input_o\ & ( !\Mux1~7_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux1~6_combout\))) # (\shamt[1]~input_o\ & (\Mux1~4_combout\)) ) ) ) # ( !\shamt[0]~input_o\ & ( !\Mux1~7_combout\ & ( (\shamt[1]~input_o\ & \Mux1~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_Mux1~5_combout\,
	datac => \ALT_INV_Mux1~4_combout\,
	datad => \ALT_INV_Mux1~6_combout\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_Mux1~7_combout\,
	combout => \Mux135~4_combout\);

-- Location: MLABCELL_X13_Y4_N18
\Mux135~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux135~5_combout\ = ( \aluControl[1]~input_o\ & ( \aluControl[3]~input_o\ & ( (!\aluControl[2]~input_o\ & ((\Mux135~3_combout\))) # (\aluControl[2]~input_o\ & (\Mux135~2_combout\)) ) ) ) # ( !\aluControl[1]~input_o\ & ( \aluControl[3]~input_o\ & ( 
-- (!\aluControl[2]~input_o\ & ((\Mux135~4_combout\))) # (\aluControl[2]~input_o\ & (\Mux135~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux135~2_combout\,
	datab => \ALT_INV_Mux135~3_combout\,
	datac => \ALT_INV_aluControl[2]~input_o\,
	datad => \ALT_INV_Mux135~4_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux135~5_combout\);

-- Location: MLABCELL_X13_Y3_N57
\Mux135~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux135~6_combout\ = ( !\Mux143~1_combout\ & ( \Mux143~2_combout\ & ( !\Mux135~2_combout\ ) ) ) # ( \Mux143~1_combout\ & ( !\Mux143~2_combout\ & ( \Mux135~0_combout\ ) ) ) # ( !\Mux143~1_combout\ & ( !\Mux143~2_combout\ & ( (\Mux135~5_combout\) # 
-- (\Mux135~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000011110000111111001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux135~1_combout\,
	datab => \ALT_INV_Mux135~2_combout\,
	datac => \ALT_INV_Mux135~0_combout\,
	datad => \ALT_INV_Mux135~5_combout\,
	datae => \ALT_INV_Mux143~1_combout\,
	dataf => \ALT_INV_Mux143~2_combout\,
	combout => \Mux135~6_combout\);

-- Location: MLABCELL_X13_Y3_N48
\res[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(7) = ( \Mux160~0_combout\ & ( res(7) ) ) # ( !\Mux160~0_combout\ & ( \Mux135~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_res(7),
	datad => \ALT_INV_Mux135~6_combout\,
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(7));

-- Location: LABCELL_X12_Y3_N36
\Mux134~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux134~2_combout\ = ( !\inputA[6]~input_o\ & ( !\inputB[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	combout => \Mux134~2_combout\);

-- Location: LABCELL_X12_Y3_N12
\Mux134~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux134~1_combout\ = ( \inputA[6]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[1]~input_o\ & ((\inputB[6]~input_o\))) # (\aluControl[1]~input_o\ & (\Add0~25_sumout\)))) ) ) # ( !\inputA[6]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- (\aluControl[1]~input_o\ & \Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	combout => \Mux134~1_combout\);

-- Location: MLABCELL_X18_Y6_N30
\Mux64~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~8_combout\ = ( \inputB[6]~input_o\ & ( \inputB[14]~input_o\ & ( (!\shamt[4]~input_o\) # ((!\shamt[3]~input_o\ & (\inputB[22]~input_o\)) # (\shamt[3]~input_o\ & ((\inputB[30]~input_o\)))) ) ) ) # ( !\inputB[6]~input_o\ & ( \inputB[14]~input_o\ & ( 
-- (!\shamt[3]~input_o\ & (\shamt[4]~input_o\ & (\inputB[22]~input_o\))) # (\shamt[3]~input_o\ & ((!\shamt[4]~input_o\) # ((\inputB[30]~input_o\)))) ) ) ) # ( \inputB[6]~input_o\ & ( !\inputB[14]~input_o\ & ( (!\shamt[3]~input_o\ & ((!\shamt[4]~input_o\) # 
-- ((\inputB[22]~input_o\)))) # (\shamt[3]~input_o\ & (\shamt[4]~input_o\ & ((\inputB[30]~input_o\)))) ) ) ) # ( !\inputB[6]~input_o\ & ( !\inputB[14]~input_o\ & ( (\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & (\inputB[22]~input_o\)) # (\shamt[3]~input_o\ & 
-- ((\inputB[30]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[22]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	datae => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_inputB[14]~input_o\,
	combout => \Mux64~8_combout\);

-- Location: LABCELL_X17_Y6_N30
\Mux64~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~19_combout\ = ( \Mux64~14_combout\ & ( \Mux64~10_combout\ & ( (!\shamt[1]~input_o\ & (((\shamt[2]~input_o\)) # (\Mux64~8_combout\))) # (\shamt[1]~input_o\ & (((!\shamt[2]~input_o\) # (\Mux64~18_combout\)))) ) ) ) # ( !\Mux64~14_combout\ & ( 
-- \Mux64~10_combout\ & ( (!\shamt[1]~input_o\ & (\Mux64~8_combout\ & (!\shamt[2]~input_o\))) # (\shamt[1]~input_o\ & (((!\shamt[2]~input_o\) # (\Mux64~18_combout\)))) ) ) ) # ( \Mux64~14_combout\ & ( !\Mux64~10_combout\ & ( (!\shamt[1]~input_o\ & 
-- (((\shamt[2]~input_o\)) # (\Mux64~8_combout\))) # (\shamt[1]~input_o\ & (((\shamt[2]~input_o\ & \Mux64~18_combout\)))) ) ) ) # ( !\Mux64~14_combout\ & ( !\Mux64~10_combout\ & ( (!\shamt[1]~input_o\ & (\Mux64~8_combout\ & (!\shamt[2]~input_o\))) # 
-- (\shamt[1]~input_o\ & (((\shamt[2]~input_o\ & \Mux64~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~8_combout\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_Mux64~18_combout\,
	datae => \ALT_INV_Mux64~14_combout\,
	dataf => \ALT_INV_Mux64~10_combout\,
	combout => \Mux64~19_combout\);

-- Location: MLABCELL_X18_Y6_N27
\Mux128~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~8_combout\ = ( \inputB[6]~input_o\ & ( \inputB[30]~input_o\ & ( (!\inputA[4]~input_o\ & (((!\inputA[3]~input_o\) # (\inputB[14]~input_o\)))) # (\inputA[4]~input_o\ & (((\inputA[3]~input_o\)) # (\inputB[22]~input_o\))) ) ) ) # ( 
-- !\inputB[6]~input_o\ & ( \inputB[30]~input_o\ & ( (!\inputA[4]~input_o\ & (((\inputB[14]~input_o\ & \inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & (((\inputA[3]~input_o\)) # (\inputB[22]~input_o\))) ) ) ) # ( \inputB[6]~input_o\ & ( 
-- !\inputB[30]~input_o\ & ( (!\inputA[4]~input_o\ & (((!\inputA[3]~input_o\) # (\inputB[14]~input_o\)))) # (\inputA[4]~input_o\ & (\inputB[22]~input_o\ & ((!\inputA[3]~input_o\)))) ) ) ) # ( !\inputB[6]~input_o\ & ( !\inputB[30]~input_o\ & ( 
-- (!\inputA[4]~input_o\ & (((\inputB[14]~input_o\ & \inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & (\inputB[22]~input_o\ & ((!\inputA[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[22]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputB[14]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_inputB[30]~input_o\,
	combout => \Mux128~8_combout\);

-- Location: LABCELL_X21_Y5_N30
\Mux128~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~19_combout\ = ( \inputA[2]~input_o\ & ( \Mux128~18_combout\ & ( (\Mux128~14_combout\) # (\inputA[1]~input_o\) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux128~18_combout\ & ( (!\inputA[1]~input_o\ & (\Mux128~8_combout\)) # (\inputA[1]~input_o\ & 
-- ((\Mux128~10_combout\))) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux128~18_combout\ & ( (!\inputA[1]~input_o\ & \Mux128~14_combout\) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux128~18_combout\ & ( (!\inputA[1]~input_o\ & (\Mux128~8_combout\)) # 
-- (\inputA[1]~input_o\ & ((\Mux128~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~8_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~14_combout\,
	datad => \ALT_INV_Mux128~10_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux128~18_combout\,
	combout => \Mux128~19_combout\);

-- Location: MLABCELL_X18_Y5_N24
\Mux134~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux134~0_combout\ = ( \aluControl[1]~input_o\ & ( \Mux64~21_combout\ & ( (!\Mux143~0_combout\ & ((\Mux128~19_combout\))) # (\Mux143~0_combout\ & (\Mux128~21_combout\)) ) ) ) # ( !\aluControl[1]~input_o\ & ( \Mux64~21_combout\ & ( (\Mux143~0_combout\) # 
-- (\Mux64~19_combout\) ) ) ) # ( \aluControl[1]~input_o\ & ( !\Mux64~21_combout\ & ( (!\Mux143~0_combout\ & ((\Mux128~19_combout\))) # (\Mux143~0_combout\ & (\Mux128~21_combout\)) ) ) ) # ( !\aluControl[1]~input_o\ & ( !\Mux64~21_combout\ & ( 
-- (\Mux64~19_combout\ & !\Mux143~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110011001101010101111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~19_combout\,
	datab => \ALT_INV_Mux128~21_combout\,
	datac => \ALT_INV_Mux128~19_combout\,
	datad => \ALT_INV_Mux143~0_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux64~21_combout\,
	combout => \Mux134~0_combout\);

-- Location: MLABCELL_X18_Y4_N39
\Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & (!\shamt[4]~input_o\ & \inputB[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LABCELL_X17_Y3_N6
\Mux134~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux134~4_combout\ = ( \Mux1~5_combout\ & ( \Mux1~6_combout\ & ( (!\shamt[1]~input_o\) # ((!\shamt[0]~input_o\ & ((\Mux1~4_combout\))) # (\shamt[0]~input_o\ & (\Mux1~3_combout\))) ) ) ) # ( !\Mux1~5_combout\ & ( \Mux1~6_combout\ & ( (!\shamt[1]~input_o\ & 
-- (((!\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\Mux1~4_combout\))) # (\shamt[0]~input_o\ & (\Mux1~3_combout\)))) ) ) ) # ( \Mux1~5_combout\ & ( !\Mux1~6_combout\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\)))) # 
-- (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\Mux1~4_combout\))) # (\shamt[0]~input_o\ & (\Mux1~3_combout\)))) ) ) ) # ( !\Mux1~5_combout\ & ( !\Mux1~6_combout\ & ( (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\Mux1~4_combout\))) # 
-- (\shamt[0]~input_o\ & (\Mux1~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_Mux1~3_combout\,
	datac => \ALT_INV_Mux1~4_combout\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_Mux1~5_combout\,
	dataf => \ALT_INV_Mux1~6_combout\,
	combout => \Mux134~4_combout\);

-- Location: LABCELL_X17_Y5_N21
\Mux65~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~3_combout\ = ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & (!\inputA[2]~input_o\ & \inputB[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~3_combout\);

-- Location: MLABCELL_X13_Y5_N12
\Mux134~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux134~3_combout\ = ( \inputA[1]~input_o\ & ( \Mux65~6_combout\ & ( (!\inputA[0]~input_o\ & ((\Mux65~4_combout\))) # (\inputA[0]~input_o\ & (\Mux65~3_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux65~6_combout\ & ( (!\inputA[0]~input_o\) # 
-- (\Mux65~5_combout\) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux65~6_combout\ & ( (!\inputA[0]~input_o\ & ((\Mux65~4_combout\))) # (\inputA[0]~input_o\ & (\Mux65~3_combout\)) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux65~6_combout\ & ( (\Mux65~5_combout\ & 
-- \inputA[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~3_combout\,
	datab => \ALT_INV_Mux65~5_combout\,
	datac => \ALT_INV_Mux65~4_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux65~6_combout\,
	combout => \Mux134~3_combout\);

-- Location: LABCELL_X12_Y3_N24
\Mux134~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux134~5_combout\ = ( \Mux134~2_combout\ & ( \aluControl[1]~input_o\ & ( (\aluControl[3]~input_o\ & ((\Mux134~3_combout\) # (\aluControl[2]~input_o\))) ) ) ) # ( !\Mux134~2_combout\ & ( \aluControl[1]~input_o\ & ( (!\aluControl[2]~input_o\ & 
-- (\aluControl[3]~input_o\ & \Mux134~3_combout\)) ) ) ) # ( \Mux134~2_combout\ & ( !\aluControl[1]~input_o\ & ( (\aluControl[3]~input_o\ & ((\aluControl[2]~input_o\) # (\Mux134~4_combout\))) ) ) ) # ( !\Mux134~2_combout\ & ( !\aluControl[1]~input_o\ & ( 
-- (\Mux134~4_combout\ & (!\aluControl[2]~input_o\ & \aluControl[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001110000011100000000000011000000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux134~4_combout\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_Mux134~3_combout\,
	datae => \ALT_INV_Mux134~2_combout\,
	dataf => \ALT_INV_aluControl[1]~input_o\,
	combout => \Mux134~5_combout\);

-- Location: LABCELL_X12_Y3_N42
\Mux134~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux134~6_combout\ = ( !\Mux143~2_combout\ & ( \Mux143~1_combout\ & ( \Mux134~0_combout\ ) ) ) # ( \Mux143~2_combout\ & ( !\Mux143~1_combout\ & ( !\Mux134~2_combout\ ) ) ) # ( !\Mux143~2_combout\ & ( !\Mux143~1_combout\ & ( (\Mux134~5_combout\) # 
-- (\Mux134~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111101010101010101000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux134~2_combout\,
	datab => \ALT_INV_Mux134~1_combout\,
	datac => \ALT_INV_Mux134~0_combout\,
	datad => \ALT_INV_Mux134~5_combout\,
	datae => \ALT_INV_Mux143~2_combout\,
	dataf => \ALT_INV_Mux143~1_combout\,
	combout => \Mux134~6_combout\);

-- Location: LABCELL_X12_Y3_N48
\res[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(6) = ( \Mux134~6_combout\ & ( (!\Mux160~0_combout\) # (res(6)) ) ) # ( !\Mux134~6_combout\ & ( (\Mux160~0_combout\ & res(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux160~0_combout\,
	datad => ALT_INV_res(6),
	dataf => \ALT_INV_Mux134~6_combout\,
	combout => res(6));

-- Location: MLABCELL_X13_Y7_N12
\Mux136~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux136~1_combout\ = ( !\inputB[8]~input_o\ & ( !\inputA[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[8]~input_o\,
	datae => \ALT_INV_inputB[8]~input_o\,
	combout => \Mux136~1_combout\);

-- Location: MLABCELL_X13_Y5_N48
\Mux136~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux136~2_combout\ = ( \inputA[1]~input_o\ & ( \inputA[0]~input_o\ & ( \Mux65~5_combout\ ) ) ) # ( !\inputA[1]~input_o\ & ( \inputA[0]~input_o\ & ( \Mux65~7_combout\ ) ) ) # ( \inputA[1]~input_o\ & ( !\inputA[0]~input_o\ & ( \Mux65~6_combout\ ) ) ) # ( 
-- !\inputA[1]~input_o\ & ( !\inputA[0]~input_o\ & ( \Mux65~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~6_combout\,
	datab => \ALT_INV_Mux65~5_combout\,
	datac => \ALT_INV_Mux65~7_combout\,
	datad => \ALT_INV_Mux65~8_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \Mux136~2_combout\);

-- Location: LABCELL_X17_Y3_N54
\Mux136~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux136~3_combout\ = ( \Mux1~5_combout\ & ( \Mux1~7_combout\ & ( ((!\shamt[1]~input_o\ & (\Mux1~8_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~6_combout\)))) # (\shamt[0]~input_o\) ) ) ) # ( !\Mux1~5_combout\ & ( \Mux1~7_combout\ & ( (!\shamt[1]~input_o\ & 
-- (((\shamt[0]~input_o\)) # (\Mux1~8_combout\))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\ & \Mux1~6_combout\)))) ) ) ) # ( \Mux1~5_combout\ & ( !\Mux1~7_combout\ & ( (!\shamt[1]~input_o\ & (\Mux1~8_combout\ & (!\shamt[0]~input_o\))) # 
-- (\shamt[1]~input_o\ & (((\Mux1~6_combout\) # (\shamt[0]~input_o\)))) ) ) ) # ( !\Mux1~5_combout\ & ( !\Mux1~7_combout\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\Mux1~8_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001001010111010100101010011110100010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_Mux1~8_combout\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_Mux1~6_combout\,
	datae => \ALT_INV_Mux1~5_combout\,
	dataf => \ALT_INV_Mux1~7_combout\,
	combout => \Mux136~3_combout\);

-- Location: LABCELL_X14_Y5_N36
\Mux136~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux136~4_combout\ = ( \aluControl[1]~input_o\ & ( \Mux136~3_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\ & ((\Mux136~2_combout\))) # (\aluControl[2]~input_o\ & (\Mux136~1_combout\)))) ) ) ) # ( !\aluControl[1]~input_o\ & ( 
-- \Mux136~3_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\) # (\Mux136~1_combout\))) ) ) ) # ( \aluControl[1]~input_o\ & ( !\Mux136~3_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\ & ((\Mux136~2_combout\))) # 
-- (\aluControl[2]~input_o\ & (\Mux136~1_combout\)))) ) ) ) # ( !\aluControl[1]~input_o\ & ( !\Mux136~3_combout\ & ( (\aluControl[3]~input_o\ & (\aluControl[2]~input_o\ & \Mux136~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010100010101000101010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_Mux136~1_combout\,
	datad => \ALT_INV_Mux136~2_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux136~3_combout\,
	combout => \Mux136~4_combout\);

-- Location: LABCELL_X19_Y5_N12
\Mux64~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~25_combout\ = ( \shamt[2]~input_o\ & ( \Mux64~16_combout\ & ( (!\shamt[1]~input_o\ & (\Mux64~20_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~24_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux64~16_combout\ & ( (\shamt[1]~input_o\) # 
-- (\Mux64~12_combout\) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux64~16_combout\ & ( (!\shamt[1]~input_o\ & (\Mux64~20_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~24_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux64~16_combout\ & ( (\Mux64~12_combout\ & 
-- !\shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~12_combout\,
	datab => \ALT_INV_Mux64~20_combout\,
	datac => \ALT_INV_Mux64~24_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux64~16_combout\,
	combout => \Mux64~25_combout\);

-- Location: LABCELL_X17_Y4_N18
\Mux128~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~25_combout\ = ( \Mux128~12_combout\ & ( \Mux128~20_combout\ & ( (!\inputA[1]~input_o\) # ((!\inputA[2]~input_o\ & (\Mux128~16_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~24_combout\)))) ) ) ) # ( !\Mux128~12_combout\ & ( \Mux128~20_combout\ & ( 
-- (!\inputA[1]~input_o\ & (((\inputA[2]~input_o\)))) # (\inputA[1]~input_o\ & ((!\inputA[2]~input_o\ & (\Mux128~16_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~24_combout\))))) ) ) ) # ( \Mux128~12_combout\ & ( !\Mux128~20_combout\ & ( 
-- (!\inputA[1]~input_o\ & (((!\inputA[2]~input_o\)))) # (\inputA[1]~input_o\ & ((!\inputA[2]~input_o\ & (\Mux128~16_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~24_combout\))))) ) ) ) # ( !\Mux128~12_combout\ & ( !\Mux128~20_combout\ & ( 
-- (\inputA[1]~input_o\ & ((!\inputA[2]~input_o\ & (\Mux128~16_combout\)) # (\inputA[2]~input_o\ & ((\Mux128~24_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~16_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~24_combout\,
	datad => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_Mux128~12_combout\,
	dataf => \ALT_INV_Mux128~20_combout\,
	combout => \Mux128~25_combout\);

-- Location: LABCELL_X14_Y5_N18
\Mux136~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux136~0_combout\ = ( \Mux143~0_combout\ & ( \Mux128~25_combout\ & ( (\aluControl[1]~input_o\) # (\Mux64~25_combout\) ) ) ) # ( !\Mux143~0_combout\ & ( \Mux128~25_combout\ & ( (!\aluControl[1]~input_o\ & ((\Mux64~23_combout\))) # (\aluControl[1]~input_o\ 
-- & (\Mux128~23_combout\)) ) ) ) # ( \Mux143~0_combout\ & ( !\Mux128~25_combout\ & ( (\Mux64~25_combout\ & !\aluControl[1]~input_o\) ) ) ) # ( !\Mux143~0_combout\ & ( !\Mux128~25_combout\ & ( (!\aluControl[1]~input_o\ & ((\Mux64~23_combout\))) # 
-- (\aluControl[1]~input_o\ & (\Mux128~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~25_combout\,
	datab => \ALT_INV_Mux128~23_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Mux64~23_combout\,
	datae => \ALT_INV_Mux143~0_combout\,
	dataf => \ALT_INV_Mux128~25_combout\,
	combout => \Mux136~0_combout\);

-- Location: LABCELL_X14_Y5_N6
\Mux136~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux136~5_combout\ = ( \inputA[8]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[1]~input_o\ & ((\inputB[8]~input_o\))) # (\aluControl[1]~input_o\ & (\Add0~33_sumout\)))) ) ) # ( !\inputA[8]~input_o\ & ( (\aluControl[1]~input_o\ & 
-- (\Add0~33_sumout\ & !\aluControl[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000011011000000000001101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_inputA[8]~input_o\,
	combout => \Mux136~5_combout\);

-- Location: LABCELL_X14_Y5_N54
\Mux136~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux136~6_combout\ = ( !\aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & ((((\Mux136~5_combout\))) # (\Mux136~4_combout\))) # (\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\ & (!\Mux136~1_combout\))))) ) ) # ( \aluControl[3]~input_o\ & ( 
-- (!\aluControl[0]~input_o\ & ((((\Mux136~5_combout\))) # (\Mux136~4_combout\))) # (\aluControl[0]~input_o\ & (((!\aluControl[2]~input_o\ & (\Mux136~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010111111111010101011111111111000000110000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux136~4_combout\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_Mux136~0_combout\,
	datad => \ALT_INV_Mux136~5_combout\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	datag => \ALT_INV_Mux136~1_combout\,
	combout => \Mux136~6_combout\);

-- Location: MLABCELL_X13_Y5_N24
\res[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(8) = ( \Mux136~6_combout\ & ( (!\Mux160~0_combout\) # (res(8)) ) ) # ( !\Mux136~6_combout\ & ( (\Mux160~0_combout\ & res(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux160~0_combout\,
	datad => ALT_INV_res(8),
	dataf => \ALT_INV_Mux136~6_combout\,
	combout => res(8));

-- Location: LABCELL_X14_Y5_N24
\Mux137~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux137~0_combout\ = ( \Mux64~25_combout\ & ( \Mux128~27_combout\ & ( (!\aluControl[1]~input_o\ & ((!\Mux143~0_combout\) # ((\Mux64~27_combout\)))) # (\aluControl[1]~input_o\ & (((\Mux128~25_combout\)) # (\Mux143~0_combout\))) ) ) ) # ( 
-- !\Mux64~25_combout\ & ( \Mux128~27_combout\ & ( (!\aluControl[1]~input_o\ & (\Mux143~0_combout\ & ((\Mux64~27_combout\)))) # (\aluControl[1]~input_o\ & (((\Mux128~25_combout\)) # (\Mux143~0_combout\))) ) ) ) # ( \Mux64~25_combout\ & ( !\Mux128~27_combout\ 
-- & ( (!\aluControl[1]~input_o\ & ((!\Mux143~0_combout\) # ((\Mux64~27_combout\)))) # (\aluControl[1]~input_o\ & (!\Mux143~0_combout\ & (\Mux128~25_combout\))) ) ) ) # ( !\Mux64~25_combout\ & ( !\Mux128~27_combout\ & ( (!\aluControl[1]~input_o\ & 
-- (\Mux143~0_combout\ & ((\Mux64~27_combout\)))) # (\aluControl[1]~input_o\ & (!\Mux143~0_combout\ & (\Mux128~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_Mux143~0_combout\,
	datac => \ALT_INV_Mux128~25_combout\,
	datad => \ALT_INV_Mux64~27_combout\,
	datae => \ALT_INV_Mux64~25_combout\,
	dataf => \ALT_INV_Mux128~27_combout\,
	combout => \Mux137~0_combout\);

-- Location: LABCELL_X14_Y5_N30
\Mux137~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux137~5_combout\ = ( \Add0~37_sumout\ & ( (!\aluControl[3]~input_o\ & (((\inputB[9]~input_o\ & \inputA[9]~input_o\)) # (\aluControl[1]~input_o\))) ) ) # ( !\Add0~37_sumout\ & ( (\inputB[9]~input_o\ & (\inputA[9]~input_o\ & (!\aluControl[3]~input_o\ & 
-- !\aluControl[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000111100000001000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[9]~input_o\,
	datab => \ALT_INV_inputA[9]~input_o\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \Mux137~5_combout\);

-- Location: LABCELL_X17_Y3_N48
\Mux137~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux137~3_combout\ = ( \Mux1~9_combout\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\Mux1~8_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~6_combout\))) ) ) ) # ( !\Mux1~9_combout\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\Mux1~8_combout\)) # 
-- (\shamt[1]~input_o\ & ((\Mux1~6_combout\))) ) ) ) # ( \Mux1~9_combout\ & ( !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\) # (\Mux1~7_combout\) ) ) ) # ( !\Mux1~9_combout\ & ( !\shamt[0]~input_o\ & ( (\shamt[1]~input_o\ & \Mux1~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_Mux1~8_combout\,
	datac => \ALT_INV_Mux1~7_combout\,
	datad => \ALT_INV_Mux1~6_combout\,
	datae => \ALT_INV_Mux1~9_combout\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux137~3_combout\);

-- Location: LABCELL_X14_Y5_N33
\Mux137~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux137~1_combout\ = (!\inputB[9]~input_o\ & !\inputA[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[9]~input_o\,
	datab => \ALT_INV_inputA[9]~input_o\,
	combout => \Mux137~1_combout\);

-- Location: LABCELL_X14_Y3_N0
\Mux137~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux137~2_combout\ = ( \Mux65~6_combout\ & ( \inputA[1]~input_o\ & ( (\inputA[0]~input_o\) # (\Mux65~7_combout\) ) ) ) # ( !\Mux65~6_combout\ & ( \inputA[1]~input_o\ & ( (\Mux65~7_combout\ & !\inputA[0]~input_o\) ) ) ) # ( \Mux65~6_combout\ & ( 
-- !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux65~9_combout\))) # (\inputA[0]~input_o\ & (\Mux65~8_combout\)) ) ) ) # ( !\Mux65~6_combout\ & ( !\inputA[1]~input_o\ & ( (!\inputA[0]~input_o\ & ((\Mux65~9_combout\))) # (\inputA[0]~input_o\ & 
-- (\Mux65~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~7_combout\,
	datab => \ALT_INV_Mux65~8_combout\,
	datac => \ALT_INV_Mux65~9_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~6_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux137~2_combout\);

-- Location: LABCELL_X14_Y5_N12
\Mux137~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux137~4_combout\ = ( \Mux137~1_combout\ & ( \Mux137~2_combout\ & ( (\aluControl[3]~input_o\ & (((\aluControl[2]~input_o\) # (\aluControl[1]~input_o\)) # (\Mux137~3_combout\))) ) ) ) # ( !\Mux137~1_combout\ & ( \Mux137~2_combout\ & ( 
-- (\aluControl[3]~input_o\ & (!\aluControl[2]~input_o\ & ((\aluControl[1]~input_o\) # (\Mux137~3_combout\)))) ) ) ) # ( \Mux137~1_combout\ & ( !\Mux137~2_combout\ & ( (\aluControl[3]~input_o\ & (((\Mux137~3_combout\ & !\aluControl[1]~input_o\)) # 
-- (\aluControl[2]~input_o\))) ) ) ) # ( !\Mux137~1_combout\ & ( !\Mux137~2_combout\ & ( (\aluControl[3]~input_o\ & (\Mux137~3_combout\ & (!\aluControl[1]~input_o\ & !\aluControl[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000101010100010101000000000001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_Mux137~3_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_Mux137~1_combout\,
	dataf => \ALT_INV_Mux137~2_combout\,
	combout => \Mux137~4_combout\);

-- Location: LABCELL_X14_Y5_N48
\Mux137~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux137~6_combout\ = ( !\aluControl[3]~input_o\ & ( (!\aluControl[0]~input_o\ & ((((\Mux137~4_combout\) # (\Mux137~5_combout\))))) # (\aluControl[0]~input_o\ & (!\aluControl[2]~input_o\ & (!\Mux137~1_combout\))) ) ) # ( \aluControl[3]~input_o\ & ( 
-- (!\aluControl[0]~input_o\ & ((((\Mux137~4_combout\) # (\Mux137~5_combout\))))) # (\aluControl[0]~input_o\ & (!\aluControl[2]~input_o\ & (\Mux137~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100000011101010000001001010111011101010111010101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_Mux137~0_combout\,
	datad => \ALT_INV_Mux137~5_combout\,
	datae => \ALT_INV_aluControl[3]~input_o\,
	dataf => \ALT_INV_Mux137~4_combout\,
	datag => \ALT_INV_Mux137~1_combout\,
	combout => \Mux137~6_combout\);

-- Location: LABCELL_X14_Y5_N42
\res[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(9) = ( \Mux137~6_combout\ & ( (!\Mux160~0_combout\) # (res(9)) ) ) # ( !\Mux137~6_combout\ & ( (\Mux160~0_combout\ & res(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux160~0_combout\,
	datad => ALT_INV_res(9),
	dataf => \ALT_INV_Mux137~6_combout\,
	combout => res(9));

-- Location: LABCELL_X14_Y5_N0
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !res(8) & ( !res(9) & ( (!res(11) & (!res(10) & (!res(7) & !res(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(11),
	datab => ALT_INV_res(10),
	datac => ALT_INV_res(7),
	datad => ALT_INV_res(6),
	datae => ALT_INV_res(8),
	dataf => ALT_INV_res(9),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X20_Y5_N0
\Mux64~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~1_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[29]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[13]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[21]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[13]~input_o\,
	datac => \ALT_INV_inputB[21]~input_o\,
	datad => \ALT_INV_inputB[29]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~1_combout\);

-- Location: LABCELL_X20_Y5_N6
\Mux64~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~2_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[27]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[11]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[19]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datab => \ALT_INV_inputB[11]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	datad => \ALT_INV_inputB[27]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~2_combout\);

-- Location: LABCELL_X19_Y5_N18
\Mux64~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~13_combout\ = ( \Mux64~2_combout\ & ( \Mux64~3_combout\ & ( (!\shamt[1]~input_o\) # ((!\shamt[2]~input_o\ & ((\Mux64~1_combout\))) # (\shamt[2]~input_o\ & (\Mux64~12_combout\))) ) ) ) # ( !\Mux64~2_combout\ & ( \Mux64~3_combout\ & ( 
-- (!\shamt[2]~input_o\ & (((\Mux64~1_combout\ & \shamt[1]~input_o\)))) # (\shamt[2]~input_o\ & (((!\shamt[1]~input_o\)) # (\Mux64~12_combout\))) ) ) ) # ( \Mux64~2_combout\ & ( !\Mux64~3_combout\ & ( (!\shamt[2]~input_o\ & (((!\shamt[1]~input_o\) # 
-- (\Mux64~1_combout\)))) # (\shamt[2]~input_o\ & (\Mux64~12_combout\ & ((\shamt[1]~input_o\)))) ) ) ) # ( !\Mux64~2_combout\ & ( !\Mux64~3_combout\ & ( (\shamt[1]~input_o\ & ((!\shamt[2]~input_o\ & ((\Mux64~1_combout\))) # (\shamt[2]~input_o\ & 
-- (\Mux64~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~12_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~1_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux64~2_combout\,
	dataf => \ALT_INV_Mux64~3_combout\,
	combout => \Mux64~13_combout\);

-- Location: LABCELL_X16_Y4_N24
\Mux64~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~6_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[28]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[12]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[20]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[28]~input_o\,
	datac => \ALT_INV_inputB[20]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~6_combout\);

-- Location: LABCELL_X17_Y6_N12
\Mux64~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~15_combout\ = ( \Mux64~14_combout\ & ( \Mux64~10_combout\ & ( ((!\shamt[1]~input_o\ & ((\Mux64~6_combout\))) # (\shamt[1]~input_o\ & (\Mux64~8_combout\))) # (\shamt[2]~input_o\) ) ) ) # ( !\Mux64~14_combout\ & ( \Mux64~10_combout\ & ( 
-- (!\shamt[1]~input_o\ & (((\Mux64~6_combout\) # (\shamt[2]~input_o\)))) # (\shamt[1]~input_o\ & (\Mux64~8_combout\ & (!\shamt[2]~input_o\))) ) ) ) # ( \Mux64~14_combout\ & ( !\Mux64~10_combout\ & ( (!\shamt[1]~input_o\ & (((!\shamt[2]~input_o\ & 
-- \Mux64~6_combout\)))) # (\shamt[1]~input_o\ & (((\shamt[2]~input_o\)) # (\Mux64~8_combout\))) ) ) ) # ( !\Mux64~14_combout\ & ( !\Mux64~10_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & ((\Mux64~6_combout\))) # (\shamt[1]~input_o\ & 
-- (\Mux64~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~8_combout\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_Mux64~6_combout\,
	datae => \ALT_INV_Mux64~14_combout\,
	dataf => \ALT_INV_Mux64~10_combout\,
	combout => \Mux64~15_combout\);

-- Location: LABCELL_X20_Y5_N3
\Mux128~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~1_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[29]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[13]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[21]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[13]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	datad => \ALT_INV_inputB[21]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux128~1_combout\);

-- Location: LABCELL_X20_Y5_N9
\Mux128~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~2_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[27]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[11]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[19]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datab => \ALT_INV_inputB[11]~input_o\,
	datac => \ALT_INV_inputB[27]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux128~2_combout\);

-- Location: LABCELL_X17_Y4_N6
\Mux128~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~13_combout\ = ( \Mux128~2_combout\ & ( \inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ & ((\Mux128~3_combout\))) # (\inputA[1]~input_o\ & (\Mux128~12_combout\)) ) ) ) # ( !\Mux128~2_combout\ & ( \inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ & 
-- ((\Mux128~3_combout\))) # (\inputA[1]~input_o\ & (\Mux128~12_combout\)) ) ) ) # ( \Mux128~2_combout\ & ( !\inputA[2]~input_o\ & ( (!\inputA[1]~input_o\) # (\Mux128~1_combout\) ) ) ) # ( !\Mux128~2_combout\ & ( !\inputA[2]~input_o\ & ( (\inputA[1]~input_o\ 
-- & \Mux128~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[1]~input_o\,
	datab => \ALT_INV_Mux128~12_combout\,
	datac => \ALT_INV_Mux128~1_combout\,
	datad => \ALT_INV_Mux128~3_combout\,
	datae => \ALT_INV_Mux128~2_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux128~13_combout\);

-- Location: LABCELL_X16_Y4_N27
\Mux128~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~6_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[28]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[12]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[20]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[28]~input_o\,
	datac => \ALT_INV_inputB[12]~input_o\,
	datad => \ALT_INV_inputB[20]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux128~6_combout\);

-- Location: LABCELL_X21_Y5_N36
\Mux128~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~15_combout\ = ( \inputA[2]~input_o\ & ( \Mux128~6_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux128~10_combout\))) # (\inputA[1]~input_o\ & (\Mux128~14_combout\)) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux128~6_combout\ & ( (!\inputA[1]~input_o\) # 
-- (\Mux128~8_combout\) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux128~6_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux128~10_combout\))) # (\inputA[1]~input_o\ & (\Mux128~14_combout\)) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux128~6_combout\ & ( (\inputA[1]~input_o\ 
-- & \Mux128~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~14_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~8_combout\,
	datad => \ALT_INV_Mux128~10_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux128~6_combout\,
	combout => \Mux128~15_combout\);

-- Location: LABCELL_X16_Y5_N42
\Mux131~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux131~0_combout\ = ( \Mux128~13_combout\ & ( \Mux128~15_combout\ & ( ((!\Mux143~0_combout\ & (\Mux64~13_combout\)) # (\Mux143~0_combout\ & ((\Mux64~15_combout\)))) # (\aluControl[1]~input_o\) ) ) ) # ( !\Mux128~13_combout\ & ( \Mux128~15_combout\ & ( 
-- (!\aluControl[1]~input_o\ & ((!\Mux143~0_combout\ & (\Mux64~13_combout\)) # (\Mux143~0_combout\ & ((\Mux64~15_combout\))))) # (\aluControl[1]~input_o\ & (((\Mux143~0_combout\)))) ) ) ) # ( \Mux128~13_combout\ & ( !\Mux128~15_combout\ & ( 
-- (!\aluControl[1]~input_o\ & ((!\Mux143~0_combout\ & (\Mux64~13_combout\)) # (\Mux143~0_combout\ & ((\Mux64~15_combout\))))) # (\aluControl[1]~input_o\ & (((!\Mux143~0_combout\)))) ) ) ) # ( !\Mux128~13_combout\ & ( !\Mux128~15_combout\ & ( 
-- (!\aluControl[1]~input_o\ & ((!\Mux143~0_combout\ & (\Mux64~13_combout\)) # (\Mux143~0_combout\ & ((\Mux64~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_Mux64~13_combout\,
	datac => \ALT_INV_Mux64~15_combout\,
	datad => \ALT_INV_Mux143~0_combout\,
	datae => \ALT_INV_Mux128~13_combout\,
	dataf => \ALT_INV_Mux128~15_combout\,
	combout => \Mux131~0_combout\);

-- Location: MLABCELL_X13_Y4_N45
\Mux131~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux131~2_combout\ = (!\inputB[3]~input_o\ & !\inputA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[3]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux131~2_combout\);

-- Location: MLABCELL_X18_Y4_N36
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( !\shamt[3]~input_o\ & ( (!\shamt[2]~input_o\ & (!\shamt[4]~input_o\ & \inputB[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X17_Y3_N45
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\shamt[3]~input_o\ & (!\shamt[4]~input_o\ & (\inputB[1]~input_o\ & !\shamt[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X17_Y3_N42
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\shamt[3]~input_o\ & (!\shamt[4]~input_o\ & (\inputB[0]~input_o\ & !\shamt[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_shamt[2]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X17_Y3_N12
\Mux131~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux131~4_combout\ = ( \Mux1~3_combout\ & ( \Mux1~2_combout\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\) # (\Mux1~0_combout\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\Mux1~1_combout\))) ) ) ) # ( !\Mux1~3_combout\ & ( \Mux1~2_combout\ 
-- & ( (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\ & \Mux1~0_combout\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\Mux1~1_combout\))) ) ) ) # ( \Mux1~3_combout\ & ( !\Mux1~2_combout\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\) # 
-- (\Mux1~0_combout\)))) # (\shamt[0]~input_o\ & (\Mux1~1_combout\ & (!\shamt[1]~input_o\))) ) ) ) # ( !\Mux1~3_combout\ & ( !\Mux1~2_combout\ & ( (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\ & \Mux1~0_combout\)))) # (\shamt[0]~input_o\ & (\Mux1~1_combout\ & 
-- (!\shamt[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_Mux1~1_combout\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_Mux1~3_combout\,
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \Mux131~4_combout\);

-- Location: LABCELL_X16_Y3_N12
\Mux65~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~1_combout\ = ( \inputB[2]~input_o\ & ( !\inputA[3]~input_o\ & ( (!\inputA[2]~input_o\ & !\inputA[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	datae => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~1_combout\);

-- Location: LABCELL_X16_Y3_N9
\Mux65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = ( \inputB[1]~input_o\ & ( !\inputA[3]~input_o\ & ( (!\inputA[4]~input_o\ & !\inputA[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datae => \ALT_INV_inputB[1]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux65~0_combout\);

-- Location: LABCELL_X17_Y5_N15
\Mux65~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~2_combout\ = ( !\inputA[4]~input_o\ & ( (!\inputA[3]~input_o\ & (!\inputA[2]~input_o\ & \inputB[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux65~2_combout\);

-- Location: MLABCELL_X13_Y5_N18
\Mux131~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux131~3_combout\ = ( \inputA[1]~input_o\ & ( \Mux65~2_combout\ & ( (\inputA[0]~input_o\) # (\Mux65~0_combout\) ) ) ) # ( !\inputA[1]~input_o\ & ( \Mux65~2_combout\ & ( (!\inputA[0]~input_o\ & (\Mux65~3_combout\)) # (\inputA[0]~input_o\ & 
-- ((\Mux65~1_combout\))) ) ) ) # ( \inputA[1]~input_o\ & ( !\Mux65~2_combout\ & ( (\Mux65~0_combout\ & !\inputA[0]~input_o\) ) ) ) # ( !\inputA[1]~input_o\ & ( !\Mux65~2_combout\ & ( (!\inputA[0]~input_o\ & (\Mux65~3_combout\)) # (\inputA[0]~input_o\ & 
-- ((\Mux65~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~3_combout\,
	datab => \ALT_INV_Mux65~1_combout\,
	datac => \ALT_INV_Mux65~0_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_Mux65~2_combout\,
	combout => \Mux131~3_combout\);

-- Location: LABCELL_X12_Y3_N54
\Mux131~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux131~5_combout\ = ( \Mux131~4_combout\ & ( \Mux131~3_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\) # (\Mux131~2_combout\))) ) ) ) # ( !\Mux131~4_combout\ & ( \Mux131~3_combout\ & ( (\aluControl[3]~input_o\ & 
-- ((!\aluControl[2]~input_o\ & ((\aluControl[1]~input_o\))) # (\aluControl[2]~input_o\ & (\Mux131~2_combout\)))) ) ) ) # ( \Mux131~4_combout\ & ( !\Mux131~3_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\ & ((!\aluControl[1]~input_o\))) # 
-- (\aluControl[2]~input_o\ & (\Mux131~2_combout\)))) ) ) ) # ( !\Mux131~4_combout\ & ( !\Mux131~3_combout\ & ( (\Mux131~2_combout\ & (\aluControl[2]~input_o\ & \aluControl[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000011010000000100000001000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux131~2_combout\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	datae => \ALT_INV_Mux131~4_combout\,
	dataf => \ALT_INV_Mux131~3_combout\,
	combout => \Mux131~5_combout\);

-- Location: LABCELL_X12_Y3_N9
\Mux131~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux131~1_combout\ = ( \inputB[3]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[1]~input_o\ & (\inputA[3]~input_o\)) # (\aluControl[1]~input_o\ & ((\Add0~13_sumout\))))) ) ) # ( !\inputB[3]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- (\aluControl[1]~input_o\ & \Add0~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000100000001010100010000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_inputB[3]~input_o\,
	combout => \Mux131~1_combout\);

-- Location: LABCELL_X12_Y3_N30
\Mux131~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux131~6_combout\ = ( !\Mux143~2_combout\ & ( \Mux143~1_combout\ & ( \Mux131~0_combout\ ) ) ) # ( \Mux143~2_combout\ & ( !\Mux143~1_combout\ & ( !\Mux131~2_combout\ ) ) ) # ( !\Mux143~2_combout\ & ( !\Mux143~1_combout\ & ( (\Mux131~1_combout\) # 
-- (\Mux131~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111110011001100110001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux131~0_combout\,
	datab => \ALT_INV_Mux131~2_combout\,
	datac => \ALT_INV_Mux131~5_combout\,
	datad => \ALT_INV_Mux131~1_combout\,
	datae => \ALT_INV_Mux143~2_combout\,
	dataf => \ALT_INV_Mux143~1_combout\,
	combout => \Mux131~6_combout\);

-- Location: LABCELL_X12_Y3_N6
\res[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(3) = ( \Mux160~0_combout\ & ( res(3) ) ) # ( !\Mux160~0_combout\ & ( \Mux131~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux131~6_combout\,
	datad => ALT_INV_res(3),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(3));

-- Location: LABCELL_X17_Y5_N6
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \inputB[0]~input_o\ & ( (\Mux32~1_combout\ & ((\inputB[1]~input_o\) # (\shamt[0]~input_o\))) ) ) # ( !\inputB[0]~input_o\ & ( (!\shamt[0]~input_o\ & (\Mux32~1_combout\ & \inputB[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_Mux32~1_combout\,
	datad => \ALT_INV_inputB[1]~input_o\,
	dataf => \ALT_INV_inputB[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LABCELL_X17_Y5_N54
\Mux95~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = ( \inputA[0]~input_o\ & ( (\inputB[0]~input_o\ & \Mux96~0_combout\) ) ) # ( !\inputA[0]~input_o\ & ( (\Mux96~0_combout\ & \inputB[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datac => \ALT_INV_Mux96~0_combout\,
	datad => \ALT_INV_inputB[1]~input_o\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \Mux95~0_combout\);

-- Location: LABCELL_X16_Y5_N30
\Mux129~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux129~5_combout\ = ( !\aluControl[1]~input_o\ & ( ((!\aluControl[3]~input_o\ & (((\inputA[1]~input_o\ & \inputB[1]~input_o\)))) # (\aluControl[3]~input_o\ & (\Mux31~0_combout\))) ) ) # ( \aluControl[1]~input_o\ & ( ((!\aluControl[3]~input_o\ & 
-- (((\Add0~5_sumout\)))) # (\aluControl[3]~input_o\ & (\Mux95~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000011110011001100001111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux31~0_combout\,
	datab => \ALT_INV_Mux95~0_combout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	datag => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux129~5_combout\);

-- Location: LABCELL_X17_Y5_N48
\Mux129~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux129~0_combout\ = (!\inputB[1]~input_o\ & !\inputA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputA[1]~input_o\,
	combout => \Mux129~0_combout\);

-- Location: LABCELL_X16_Y5_N27
\Mux129~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux129~3_combout\ = ( \aluControl[3]~input_o\ & ( (\aluControl[2]~input_o\ & (\Mux129~0_combout\ & !\aluControl[1]~input_o\)) ) ) # ( !\aluControl[3]~input_o\ & ( (\Add0~5_sumout\ & (\aluControl[2]~input_o\ & \aluControl[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_Mux129~0_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux129~3_combout\);

-- Location: LABCELL_X21_Y4_N30
\Mux64~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~7_combout\ = ( \inputB[2]~input_o\ & ( \inputB[18]~input_o\ & ( (!\shamt[3]~input_o\) # ((!\shamt[4]~input_o\ & ((\inputB[10]~input_o\))) # (\shamt[4]~input_o\ & (\inputB[26]~input_o\))) ) ) ) # ( !\inputB[2]~input_o\ & ( \inputB[18]~input_o\ & ( 
-- (!\shamt[3]~input_o\ & (((\shamt[4]~input_o\)))) # (\shamt[3]~input_o\ & ((!\shamt[4]~input_o\ & ((\inputB[10]~input_o\))) # (\shamt[4]~input_o\ & (\inputB[26]~input_o\)))) ) ) ) # ( \inputB[2]~input_o\ & ( !\inputB[18]~input_o\ & ( (!\shamt[3]~input_o\ & 
-- (((!\shamt[4]~input_o\)))) # (\shamt[3]~input_o\ & ((!\shamt[4]~input_o\ & ((\inputB[10]~input_o\))) # (\shamt[4]~input_o\ & (\inputB[26]~input_o\)))) ) ) ) # ( !\inputB[2]~input_o\ & ( !\inputB[18]~input_o\ & ( (\shamt[3]~input_o\ & ((!\shamt[4]~input_o\ 
-- & ((\inputB[10]~input_o\))) # (\shamt[4]~input_o\ & (\inputB[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_inputB[26]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	datae => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \Mux64~7_combout\);

-- Location: LABCELL_X17_Y6_N6
\Mux64~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~11_combout\ = ( \shamt[2]~input_o\ & ( \Mux64~7_combout\ & ( (!\shamt[1]~input_o\ & (\Mux64~8_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~10_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux64~7_combout\ & ( (!\shamt[1]~input_o\) # 
-- (\Mux64~6_combout\) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux64~7_combout\ & ( (!\shamt[1]~input_o\ & (\Mux64~8_combout\)) # (\shamt[1]~input_o\ & ((\Mux64~10_combout\))) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux64~7_combout\ & ( (\Mux64~6_combout\ & 
-- \shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~8_combout\,
	datab => \ALT_INV_Mux64~6_combout\,
	datac => \ALT_INV_Mux64~10_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux64~7_combout\,
	combout => \Mux64~11_combout\);

-- Location: MLABCELL_X18_Y5_N6
\Mux64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[25]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[9]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[17]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[25]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~0_combout\);

-- Location: LABCELL_X19_Y5_N24
\Mux64~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~4_combout\ = ( \Mux64~1_combout\ & ( \Mux64~3_combout\ & ( ((!\shamt[1]~input_o\ & ((\Mux64~0_combout\))) # (\shamt[1]~input_o\ & (\Mux64~2_combout\))) # (\shamt[2]~input_o\) ) ) ) # ( !\Mux64~1_combout\ & ( \Mux64~3_combout\ & ( 
-- (!\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & ((\Mux64~0_combout\))) # (\shamt[1]~input_o\ & (\Mux64~2_combout\)))) # (\shamt[2]~input_o\ & (((\shamt[1]~input_o\)))) ) ) ) # ( \Mux64~1_combout\ & ( !\Mux64~3_combout\ & ( (!\shamt[2]~input_o\ & 
-- ((!\shamt[1]~input_o\ & ((\Mux64~0_combout\))) # (\shamt[1]~input_o\ & (\Mux64~2_combout\)))) # (\shamt[2]~input_o\ & (((!\shamt[1]~input_o\)))) ) ) ) # ( !\Mux64~1_combout\ & ( !\Mux64~3_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[1]~input_o\ & 
-- ((\Mux64~0_combout\))) # (\shamt[1]~input_o\ & (\Mux64~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~2_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~0_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux64~1_combout\,
	dataf => \ALT_INV_Mux64~3_combout\,
	combout => \Mux64~4_combout\);

-- Location: LABCELL_X16_Y5_N12
\Mux129~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux129~1_combout\ = ( !\aluControl[1]~input_o\ & ( \Mux64~4_combout\ & ( (!\aluControl[3]~input_o\ & (((!\Mux129~0_combout\)))) # (\aluControl[3]~input_o\ & (((!\shamt[0]~input_o\)) # (\Mux64~11_combout\))) ) ) ) # ( !\aluControl[1]~input_o\ & ( 
-- !\Mux64~4_combout\ & ( (!\aluControl[3]~input_o\ & (((!\Mux129~0_combout\)))) # (\aluControl[3]~input_o\ & (\Mux64~11_combout\ & ((\shamt[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000101000000000000000011001100111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~11_combout\,
	datab => \ALT_INV_Mux129~0_combout\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux64~4_combout\,
	combout => \Mux129~1_combout\);

-- Location: LABCELL_X21_Y4_N39
\Mux128~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~7_combout\ = ( \inputB[2]~input_o\ & ( \inputB[18]~input_o\ & ( (!\inputA[3]~input_o\) # ((!\inputA[4]~input_o\ & (\inputB[10]~input_o\)) # (\inputA[4]~input_o\ & ((\inputB[26]~input_o\)))) ) ) ) # ( !\inputB[2]~input_o\ & ( \inputB[18]~input_o\ & 
-- ( (!\inputA[4]~input_o\ & (\inputB[10]~input_o\ & ((\inputA[3]~input_o\)))) # (\inputA[4]~input_o\ & (((!\inputA[3]~input_o\) # (\inputB[26]~input_o\)))) ) ) ) # ( \inputB[2]~input_o\ & ( !\inputB[18]~input_o\ & ( (!\inputA[4]~input_o\ & 
-- (((!\inputA[3]~input_o\)) # (\inputB[10]~input_o\))) # (\inputA[4]~input_o\ & (((\inputB[26]~input_o\ & \inputA[3]~input_o\)))) ) ) ) # ( !\inputB[2]~input_o\ & ( !\inputB[18]~input_o\ & ( (\inputA[3]~input_o\ & ((!\inputA[4]~input_o\ & 
-- (\inputB[10]~input_o\)) # (\inputA[4]~input_o\ & ((\inputB[26]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[10]~input_o\,
	datab => \ALT_INV_inputB[26]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	datae => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \Mux128~7_combout\);

-- Location: LABCELL_X21_Y5_N54
\Mux128~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~11_combout\ = ( \inputA[2]~input_o\ & ( \Mux128~7_combout\ & ( (!\inputA[1]~input_o\ & (\Mux128~8_combout\)) # (\inputA[1]~input_o\ & ((\Mux128~10_combout\))) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux128~7_combout\ & ( (!\inputA[1]~input_o\) # 
-- (\Mux128~6_combout\) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux128~7_combout\ & ( (!\inputA[1]~input_o\ & (\Mux128~8_combout\)) # (\inputA[1]~input_o\ & ((\Mux128~10_combout\))) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux128~7_combout\ & ( (\inputA[1]~input_o\ 
-- & \Mux128~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~8_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~6_combout\,
	datad => \ALT_INV_Mux128~10_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux128~7_combout\,
	combout => \Mux128~11_combout\);

-- Location: MLABCELL_X18_Y5_N9
\Mux128~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~0_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[25]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[9]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[17]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[25]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_inputB[17]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux128~0_combout\);

-- Location: LABCELL_X17_Y4_N24
\Mux128~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~4_combout\ = ( \Mux128~2_combout\ & ( \Mux128~1_combout\ & ( (!\inputA[2]~input_o\ & (((\inputA[1]~input_o\)) # (\Mux128~0_combout\))) # (\inputA[2]~input_o\ & (((!\inputA[1]~input_o\) # (\Mux128~3_combout\)))) ) ) ) # ( !\Mux128~2_combout\ & ( 
-- \Mux128~1_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~0_combout\ & (!\inputA[1]~input_o\))) # (\inputA[2]~input_o\ & (((!\inputA[1]~input_o\) # (\Mux128~3_combout\)))) ) ) ) # ( \Mux128~2_combout\ & ( !\Mux128~1_combout\ & ( (!\inputA[2]~input_o\ & 
-- (((\inputA[1]~input_o\)) # (\Mux128~0_combout\))) # (\inputA[2]~input_o\ & (((\inputA[1]~input_o\ & \Mux128~3_combout\)))) ) ) ) # ( !\Mux128~2_combout\ & ( !\Mux128~1_combout\ & ( (!\inputA[2]~input_o\ & (\Mux128~0_combout\ & (!\inputA[1]~input_o\))) # 
-- (\inputA[2]~input_o\ & (((\inputA[1]~input_o\ & \Mux128~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~0_combout\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputA[1]~input_o\,
	datad => \ALT_INV_Mux128~3_combout\,
	datae => \ALT_INV_Mux128~2_combout\,
	dataf => \ALT_INV_Mux128~1_combout\,
	combout => \Mux128~4_combout\);

-- Location: LABCELL_X16_Y5_N6
\Mux129~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux129~2_combout\ = ( \aluControl[3]~input_o\ & ( (\aluControl[1]~input_o\ & ((!\inputA[0]~input_o\ & ((\Mux128~4_combout\))) # (\inputA[0]~input_o\ & (\Mux128~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000111010000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~11_combout\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux128~4_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux129~2_combout\);

-- Location: LABCELL_X16_Y5_N54
\Mux129~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux129~4_combout\ = ( \aluControl[2]~input_o\ & ( \Mux129~2_combout\ & ( (!\aluControl[0]~input_o\ & \Mux129~3_combout\) ) ) ) # ( !\aluControl[2]~input_o\ & ( \Mux129~2_combout\ & ( ((\Mux129~3_combout\) # (\Mux129~5_combout\)) # 
-- (\aluControl[0]~input_o\) ) ) ) # ( \aluControl[2]~input_o\ & ( !\Mux129~2_combout\ & ( (!\aluControl[0]~input_o\ & \Mux129~3_combout\) ) ) ) # ( !\aluControl[2]~input_o\ & ( !\Mux129~2_combout\ & ( (!\aluControl[0]~input_o\ & (((\Mux129~3_combout\)) # 
-- (\Mux129~5_combout\))) # (\aluControl[0]~input_o\ & (((\Mux129~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001111111000010100000101001111111011111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_Mux129~5_combout\,
	datac => \ALT_INV_Mux129~3_combout\,
	datad => \ALT_INV_Mux129~1_combout\,
	datae => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_Mux129~2_combout\,
	combout => \Mux129~4_combout\);

-- Location: LABCELL_X16_Y5_N24
\res[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(1) = ( \Mux160~0_combout\ & ( res(1) ) ) # ( !\Mux160~0_combout\ & ( \Mux129~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux129~4_combout\,
	datad => ALT_INV_res(1),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(1));

-- Location: LABCELL_X16_Y5_N9
\Mux130~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux130~2_combout\ = ( \aluControl[3]~input_o\ & ( (\aluControl[1]~input_o\ & ((!\inputA[0]~input_o\ & (\Mux128~11_combout\)) # (\inputA[0]~input_o\ & ((\Mux128~13_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001110000000001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~11_combout\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux128~13_combout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux130~2_combout\);

-- Location: LABCELL_X17_Y5_N57
\Mux130~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux130~0_combout\ = (!\inputA[2]~input_o\ & !\inputB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_inputB[2]~input_o\,
	combout => \Mux130~0_combout\);

-- Location: LABCELL_X16_Y5_N0
\Mux130~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux130~1_combout\ = ( \shamt[0]~input_o\ & ( \Mux64~13_combout\ & ( (!\aluControl[1]~input_o\ & ((!\Mux130~0_combout\) # (\aluControl[3]~input_o\))) ) ) ) # ( !\shamt[0]~input_o\ & ( \Mux64~13_combout\ & ( (!\aluControl[1]~input_o\ & 
-- ((!\aluControl[3]~input_o\ & ((!\Mux130~0_combout\))) # (\aluControl[3]~input_o\ & (\Mux64~11_combout\)))) ) ) ) # ( \shamt[0]~input_o\ & ( !\Mux64~13_combout\ & ( (!\Mux130~0_combout\ & (!\aluControl[1]~input_o\ & !\aluControl[3]~input_o\)) ) ) ) # ( 
-- !\shamt[0]~input_o\ & ( !\Mux64~13_combout\ & ( (!\aluControl[1]~input_o\ & ((!\aluControl[3]~input_o\ & ((!\Mux130~0_combout\))) # (\aluControl[3]~input_o\ & (\Mux64~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001010000110000000000000011000000010100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~11_combout\,
	datab => \ALT_INV_Mux130~0_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_Mux64~13_combout\,
	combout => \Mux130~1_combout\);

-- Location: LABCELL_X17_Y3_N36
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \Mux1~2_combout\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\Mux1~1_combout\))) # (\shamt[0]~input_o\ & (\Mux1~0_combout\)))) # (\shamt[1]~input_o\ & (!\shamt[0]~input_o\)) ) ) # ( !\Mux1~2_combout\ & ( (!\shamt[1]~input_o\ 
-- & ((!\shamt[0]~input_o\ & ((\Mux1~1_combout\))) # (\shamt[0]~input_o\ & (\Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_Mux1~1_combout\,
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \Mux30~0_combout\);

-- Location: MLABCELL_X13_Y5_N39
\Mux94~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux94~0_combout\ = ( \Mux65~2_combout\ & ( (!\inputA[0]~input_o\ & (((\Mux65~1_combout\)) # (\inputA[1]~input_o\))) # (\inputA[0]~input_o\ & (!\inputA[1]~input_o\ & ((\Mux65~0_combout\)))) ) ) # ( !\Mux65~2_combout\ & ( (!\inputA[1]~input_o\ & 
-- ((!\inputA[0]~input_o\ & (\Mux65~1_combout\)) # (\inputA[0]~input_o\ & ((\Mux65~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux65~1_combout\,
	datad => \ALT_INV_Mux65~0_combout\,
	dataf => \ALT_INV_Mux65~2_combout\,
	combout => \Mux94~0_combout\);

-- Location: LABCELL_X16_Y5_N36
\Mux130~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux130~5_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & (((\inputA[2]~input_o\ & ((\inputB[2]~input_o\)))))) # (\aluControl[3]~input_o\ & (\Mux30~0_combout\)) ) ) # ( \aluControl[1]~input_o\ & ( ((!\aluControl[3]~input_o\ & 
-- (\Add0~9_sumout\)) # (\aluControl[3]~input_o\ & (((\Mux94~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000011000011111100011101000111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~0_combout\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Mux94~0_combout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_inputB[2]~input_o\,
	datag => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux130~5_combout\);

-- Location: LABCELL_X16_Y5_N18
\Mux130~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux130~3_combout\ = ( \aluControl[3]~input_o\ & ( (\Mux130~0_combout\ & (!\aluControl[1]~input_o\ & \aluControl[2]~input_o\)) ) ) # ( !\aluControl[3]~input_o\ & ( (\Add0~9_sumout\ & (\aluControl[1]~input_o\ & \aluControl[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	datab => \ALT_INV_Mux130~0_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux130~3_combout\);

-- Location: LABCELL_X16_Y5_N48
\Mux130~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux130~4_combout\ = ( \Mux130~5_combout\ & ( \Mux130~3_combout\ & ( (!\aluControl[0]~input_o\) # ((!\aluControl[2]~input_o\ & ((\Mux130~1_combout\) # (\Mux130~2_combout\)))) ) ) ) # ( !\Mux130~5_combout\ & ( \Mux130~3_combout\ & ( 
-- (!\aluControl[0]~input_o\) # ((!\aluControl[2]~input_o\ & ((\Mux130~1_combout\) # (\Mux130~2_combout\)))) ) ) ) # ( \Mux130~5_combout\ & ( !\Mux130~3_combout\ & ( (!\aluControl[2]~input_o\ & ((!\aluControl[0]~input_o\) # ((\Mux130~1_combout\) # 
-- (\Mux130~2_combout\)))) ) ) ) # ( !\Mux130~5_combout\ & ( !\Mux130~3_combout\ & ( (\aluControl[0]~input_o\ & (!\aluControl[2]~input_o\ & ((\Mux130~1_combout\) # (\Mux130~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000101111110000000010111111101010101011111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[0]~input_o\,
	datab => \ALT_INV_Mux130~2_combout\,
	datac => \ALT_INV_Mux130~1_combout\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_Mux130~5_combout\,
	dataf => \ALT_INV_Mux130~3_combout\,
	combout => \Mux130~4_combout\);

-- Location: LABCELL_X16_Y5_N21
\res[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(2) = ( \Mux160~0_combout\ & ( res(2) ) ) # ( !\Mux160~0_combout\ & ( \Mux130~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux130~4_combout\,
	datad => ALT_INV_res(2),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(2));

-- Location: MLABCELL_X13_Y5_N30
\Mux133~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux133~3_combout\ = ( \Mux65~1_combout\ & ( \Mux65~5_combout\ & ( (!\inputA[1]~input_o\ & (((!\inputA[0]~input_o\) # (\Mux65~4_combout\)))) # (\inputA[1]~input_o\ & (((\inputA[0]~input_o\)) # (\Mux65~3_combout\))) ) ) ) # ( !\Mux65~1_combout\ & ( 
-- \Mux65~5_combout\ & ( (!\inputA[1]~input_o\ & (((!\inputA[0]~input_o\) # (\Mux65~4_combout\)))) # (\inputA[1]~input_o\ & (\Mux65~3_combout\ & ((!\inputA[0]~input_o\)))) ) ) ) # ( \Mux65~1_combout\ & ( !\Mux65~5_combout\ & ( (!\inputA[1]~input_o\ & 
-- (((\Mux65~4_combout\ & \inputA[0]~input_o\)))) # (\inputA[1]~input_o\ & (((\inputA[0]~input_o\)) # (\Mux65~3_combout\))) ) ) ) # ( !\Mux65~1_combout\ & ( !\Mux65~5_combout\ & ( (!\inputA[1]~input_o\ & (((\Mux65~4_combout\ & \inputA[0]~input_o\)))) # 
-- (\inputA[1]~input_o\ & (\Mux65~3_combout\ & ((!\inputA[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~3_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux65~4_combout\,
	datad => \ALT_INV_inputA[0]~input_o\,
	datae => \ALT_INV_Mux65~1_combout\,
	dataf => \ALT_INV_Mux65~5_combout\,
	combout => \Mux133~3_combout\);

-- Location: LABCELL_X17_Y5_N12
\Mux133~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux133~2_combout\ = ( !\inputB[5]~input_o\ & ( !\inputA[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[5]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \Mux133~2_combout\);

-- Location: LABCELL_X17_Y3_N0
\Mux133~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux133~4_combout\ = ( \Mux1~1_combout\ & ( \shamt[0]~input_o\ & ( (\shamt[1]~input_o\) # (\Mux1~4_combout\) ) ) ) # ( !\Mux1~1_combout\ & ( \shamt[0]~input_o\ & ( (\Mux1~4_combout\ & !\shamt[1]~input_o\) ) ) ) # ( \Mux1~1_combout\ & ( !\shamt[0]~input_o\ 
-- & ( (!\shamt[1]~input_o\ & (\Mux1~5_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~3_combout\))) ) ) ) # ( !\Mux1~1_combout\ & ( !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\Mux1~5_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~4_combout\,
	datab => \ALT_INV_Mux1~5_combout\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_Mux1~3_combout\,
	datae => \ALT_INV_Mux1~1_combout\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux133~4_combout\);

-- Location: LABCELL_X12_Y3_N0
\Mux133~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux133~5_combout\ = ( \Mux133~4_combout\ & ( \aluControl[1]~input_o\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\ & (\Mux133~3_combout\)) # (\aluControl[2]~input_o\ & ((\Mux133~2_combout\))))) ) ) ) # ( !\Mux133~4_combout\ & ( 
-- \aluControl[1]~input_o\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\ & (\Mux133~3_combout\)) # (\aluControl[2]~input_o\ & ((\Mux133~2_combout\))))) ) ) ) # ( \Mux133~4_combout\ & ( !\aluControl[1]~input_o\ & ( (\aluControl[3]~input_o\ & 
-- ((!\aluControl[2]~input_o\) # (\Mux133~2_combout\))) ) ) ) # ( !\Mux133~4_combout\ & ( !\aluControl[1]~input_o\ & ( (\aluControl[2]~input_o\ & (\aluControl[3]~input_o\ & \Mux133~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000010100000111100000010000001110000001000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[2]~input_o\,
	datab => \ALT_INV_Mux133~3_combout\,
	datac => \ALT_INV_aluControl[3]~input_o\,
	datad => \ALT_INV_Mux133~2_combout\,
	datae => \ALT_INV_Mux133~4_combout\,
	dataf => \ALT_INV_aluControl[1]~input_o\,
	combout => \Mux133~5_combout\);

-- Location: LABCELL_X17_Y4_N42
\Mux128~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~17_combout\ = ( \Mux128~3_combout\ & ( \inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ & ((\Mux128~12_combout\))) # (\inputA[1]~input_o\ & (\Mux128~16_combout\)) ) ) ) # ( !\Mux128~3_combout\ & ( \inputA[2]~input_o\ & ( (!\inputA[1]~input_o\ & 
-- ((\Mux128~12_combout\))) # (\inputA[1]~input_o\ & (\Mux128~16_combout\)) ) ) ) # ( \Mux128~3_combout\ & ( !\inputA[2]~input_o\ & ( (\Mux128~1_combout\) # (\inputA[1]~input_o\) ) ) ) # ( !\Mux128~3_combout\ & ( !\inputA[2]~input_o\ & ( 
-- (!\inputA[1]~input_o\ & \Mux128~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~16_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~1_combout\,
	datad => \ALT_INV_Mux128~12_combout\,
	datae => \ALT_INV_Mux128~3_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux128~17_combout\);

-- Location: LABCELL_X19_Y5_N48
\Mux64~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~17_combout\ = ( \Mux64~1_combout\ & ( \Mux64~16_combout\ & ( (!\shamt[2]~input_o\ & (((!\shamt[1]~input_o\) # (\Mux64~3_combout\)))) # (\shamt[2]~input_o\ & (((\shamt[1]~input_o\)) # (\Mux64~12_combout\))) ) ) ) # ( !\Mux64~1_combout\ & ( 
-- \Mux64~16_combout\ & ( (!\shamt[2]~input_o\ & (((\Mux64~3_combout\ & \shamt[1]~input_o\)))) # (\shamt[2]~input_o\ & (((\shamt[1]~input_o\)) # (\Mux64~12_combout\))) ) ) ) # ( \Mux64~1_combout\ & ( !\Mux64~16_combout\ & ( (!\shamt[2]~input_o\ & 
-- (((!\shamt[1]~input_o\) # (\Mux64~3_combout\)))) # (\shamt[2]~input_o\ & (\Mux64~12_combout\ & ((!\shamt[1]~input_o\)))) ) ) ) # ( !\Mux64~1_combout\ & ( !\Mux64~16_combout\ & ( (!\shamt[2]~input_o\ & (((\Mux64~3_combout\ & \shamt[1]~input_o\)))) # 
-- (\shamt[2]~input_o\ & (\Mux64~12_combout\ & ((!\shamt[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~12_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_Mux64~3_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_Mux64~1_combout\,
	dataf => \ALT_INV_Mux64~16_combout\,
	combout => \Mux64~17_combout\);

-- Location: MLABCELL_X18_Y5_N54
\Mux133~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux133~0_combout\ = ( \Mux64~17_combout\ & ( \Mux128~19_combout\ & ( (!\aluControl[1]~input_o\ & (((!\Mux143~0_combout\)) # (\Mux64~19_combout\))) # (\aluControl[1]~input_o\ & (((\Mux143~0_combout\) # (\Mux128~17_combout\)))) ) ) ) # ( 
-- !\Mux64~17_combout\ & ( \Mux128~19_combout\ & ( (!\aluControl[1]~input_o\ & (\Mux64~19_combout\ & ((\Mux143~0_combout\)))) # (\aluControl[1]~input_o\ & (((\Mux143~0_combout\) # (\Mux128~17_combout\)))) ) ) ) # ( \Mux64~17_combout\ & ( !\Mux128~19_combout\ 
-- & ( (!\aluControl[1]~input_o\ & (((!\Mux143~0_combout\)) # (\Mux64~19_combout\))) # (\aluControl[1]~input_o\ & (((\Mux128~17_combout\ & !\Mux143~0_combout\)))) ) ) ) # ( !\Mux64~17_combout\ & ( !\Mux128~19_combout\ & ( (!\aluControl[1]~input_o\ & 
-- (\Mux64~19_combout\ & ((\Mux143~0_combout\)))) # (\aluControl[1]~input_o\ & (((\Mux128~17_combout\ & !\Mux143~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~19_combout\,
	datab => \ALT_INV_Mux128~17_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Mux143~0_combout\,
	datae => \ALT_INV_Mux64~17_combout\,
	dataf => \ALT_INV_Mux128~19_combout\,
	combout => \Mux133~0_combout\);

-- Location: LABCELL_X12_Y4_N45
\Mux133~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux133~1_combout\ = ( \inputA[5]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[1]~input_o\ & (\inputB[5]~input_o\)) # (\aluControl[1]~input_o\ & ((\Add0~21_sumout\))))) ) ) # ( !\inputA[5]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- (\aluControl[1]~input_o\ & \Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_aluControl[1]~input_o\,
	datac => \ALT_INV_inputB[5]~input_o\,
	datad => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	combout => \Mux133~1_combout\);

-- Location: LABCELL_X12_Y3_N18
\Mux133~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux133~6_combout\ = ( !\Mux143~2_combout\ & ( \Mux143~1_combout\ & ( \Mux133~0_combout\ ) ) ) # ( \Mux143~2_combout\ & ( !\Mux143~1_combout\ & ( !\Mux133~2_combout\ ) ) ) # ( !\Mux143~2_combout\ & ( !\Mux143~1_combout\ & ( (\Mux133~1_combout\) # 
-- (\Mux133~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111110011001100110000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux133~5_combout\,
	datab => \ALT_INV_Mux133~2_combout\,
	datac => \ALT_INV_Mux133~0_combout\,
	datad => \ALT_INV_Mux133~1_combout\,
	datae => \ALT_INV_Mux143~2_combout\,
	dataf => \ALT_INV_Mux143~1_combout\,
	combout => \Mux133~6_combout\);

-- Location: LABCELL_X12_Y3_N39
\res[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(5) = ( \Mux160~0_combout\ & ( res(5) ) ) # ( !\Mux160~0_combout\ & ( \Mux133~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux133~6_combout\,
	datac => ALT_INV_res(5),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(5));

-- Location: LABCELL_X20_Y6_N51
\Mux128~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~5_combout\ = ( \inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[24]~input_o\ ) ) ) # ( !\inputA[4]~input_o\ & ( \inputA[3]~input_o\ & ( \inputB[8]~input_o\ ) ) ) # ( \inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[16]~input_o\ ) ) 
-- ) # ( !\inputA[4]~input_o\ & ( !\inputA[3]~input_o\ & ( \inputB[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_inputB[24]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \Mux128~5_combout\);

-- Location: LABCELL_X21_Y5_N12
\Mux128~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux128~9_combout\ = ( \inputA[2]~input_o\ & ( \Mux128~7_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux128~6_combout\))) # (\inputA[1]~input_o\ & (\Mux128~8_combout\)) ) ) ) # ( !\inputA[2]~input_o\ & ( \Mux128~7_combout\ & ( (\Mux128~5_combout\) # 
-- (\inputA[1]~input_o\) ) ) ) # ( \inputA[2]~input_o\ & ( !\Mux128~7_combout\ & ( (!\inputA[1]~input_o\ & ((\Mux128~6_combout\))) # (\inputA[1]~input_o\ & (\Mux128~8_combout\)) ) ) ) # ( !\inputA[2]~input_o\ & ( !\Mux128~7_combout\ & ( (!\inputA[1]~input_o\ 
-- & \Mux128~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~8_combout\,
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_Mux128~5_combout\,
	datad => \ALT_INV_Mux128~6_combout\,
	datae => \ALT_INV_inputA[2]~input_o\,
	dataf => \ALT_INV_Mux128~7_combout\,
	combout => \Mux128~9_combout\);

-- Location: LABCELL_X20_Y6_N48
\Mux64~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~5_combout\ = ( \shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[24]~input_o\ ) ) ) # ( !\shamt[4]~input_o\ & ( \shamt[3]~input_o\ & ( \inputB[8]~input_o\ ) ) ) # ( \shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[16]~input_o\ ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\shamt[3]~input_o\ & ( \inputB[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_inputB[24]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_inputB[8]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	combout => \Mux64~5_combout\);

-- Location: LABCELL_X17_Y6_N36
\Mux64~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~9_combout\ = ( \shamt[2]~input_o\ & ( \Mux64~7_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux64~6_combout\))) # (\shamt[1]~input_o\ & (\Mux64~8_combout\)) ) ) ) # ( !\shamt[2]~input_o\ & ( \Mux64~7_combout\ & ( (\shamt[1]~input_o\) # 
-- (\Mux64~5_combout\) ) ) ) # ( \shamt[2]~input_o\ & ( !\Mux64~7_combout\ & ( (!\shamt[1]~input_o\ & ((\Mux64~6_combout\))) # (\shamt[1]~input_o\ & (\Mux64~8_combout\)) ) ) ) # ( !\shamt[2]~input_o\ & ( !\Mux64~7_combout\ & ( (\Mux64~5_combout\ & 
-- !\shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux64~8_combout\,
	datab => \ALT_INV_Mux64~6_combout\,
	datac => \ALT_INV_Mux64~5_combout\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_Mux64~7_combout\,
	combout => \Mux64~9_combout\);

-- Location: LABCELL_X12_Y5_N21
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Mux64~9_combout\ & ( (!\shamt[0]~input_o\) # (\Mux64~4_combout\) ) ) # ( !\Mux64~9_combout\ & ( (\shamt[0]~input_o\ & \Mux64~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_Mux64~4_combout\,
	dataf => \ALT_INV_Mux64~9_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X12_Y5_N0
\Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = ( !\aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & ((((\inputB[0]~input_o\))) # (\inputA[0]~input_o\))) # (\aluControl[3]~input_o\ & (((\Mux0~0_combout\)))) ) ) # ( \aluControl[1]~input_o\ & ( (\aluControl[3]~input_o\ & 
-- ((!\inputA[0]~input_o\ & (((\Mux128~9_combout\)))) # (\inputA[0]~input_o\ & (\Mux128~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011110101111000000010000000100100111101011110100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_Mux128~4_combout\,
	datad => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_Mux128~9_combout\,
	datag => \ALT_INV_Mux0~0_combout\,
	combout => \Mux0~8_combout\);

-- Location: MLABCELL_X13_Y6_N27
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \inputB[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (\Add0~1_sumout\ & \aluControl[1]~input_o\)) ) ) # ( !\inputB[0]~input_o\ & ( (!\aluControl[3]~input_o\ & (\Add0~1_sumout\ & (\aluControl[1]~input_o\))) # (\aluControl[3]~input_o\ & 
-- (((!\aluControl[1]~input_o\ & !\inputA[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001000000010010100100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[3]~input_o\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_inputB[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: MLABCELL_X13_Y6_N6
\Mux0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = ( !\aluControl[1]~input_o\ & ( (\inputB[0]~input_o\ & (((!\aluControl[3]~input_o\ & (\inputA[0]~input_o\)) # (\aluControl[3]~input_o\ & ((\Mux32~0_combout\)))))) ) ) # ( \aluControl[1]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- ((((\Add0~1_sumout\))))) # (\aluControl[3]~input_o\ & (!\inputA[0]~input_o\ & (\inputB[0]~input_o\ & (\Mux96~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000000001111111100000011000000110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datab => \ALT_INV_inputB[0]~input_o\,
	datac => \ALT_INV_Mux96~0_combout\,
	datad => \ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	datag => \ALT_INV_Mux32~0_combout\,
	combout => \Mux0~12_combout\);

-- Location: MLABCELL_X13_Y6_N54
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( !\aluControl[3]~input_o\ & ( (\aluControl[1]~input_o\ & (!\inputB[31]~input_o\ $ (\inputA[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_inputA[31]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: MLABCELL_X13_Y6_N45
\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( !\aluControl[3]~input_o\ & ( (\inputA[31]~input_o\ & (!\inputB[31]~input_o\ & \aluControl[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[31]~input_o\,
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_aluControl[3]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: MLABCELL_X13_Y6_N48
\Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = ( \inputA[29]~input_o\ & ( \inputB[29]~input_o\ & ( (!\Mux0~4_combout\ & ((!\Mux0~2_combout\) # ((!\inputB[30]~input_o\) # (\inputA[30]~input_o\)))) ) ) ) # ( !\inputA[29]~input_o\ & ( \inputB[29]~input_o\ & ( (!\Mux0~4_combout\ & 
-- ((!\Mux0~2_combout\) # ((!\inputB[30]~input_o\ & \inputA[30]~input_o\)))) ) ) ) # ( \inputA[29]~input_o\ & ( !\inputB[29]~input_o\ & ( (!\Mux0~4_combout\ & ((!\Mux0~2_combout\) # ((!\inputB[30]~input_o\) # (\inputA[30]~input_o\)))) ) ) ) # ( 
-- !\inputA[29]~input_o\ & ( !\inputB[29]~input_o\ & ( (!\Mux0~4_combout\ & ((!\Mux0~2_combout\) # ((!\inputB[30]~input_o\) # (\inputA[30]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000000111011110000000010101110000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_inputB[30]~input_o\,
	datac => \ALT_INV_inputA[30]~input_o\,
	datad => \ALT_INV_Mux0~4_combout\,
	datae => \ALT_INV_inputA[29]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: MLABCELL_X9_Y3_N30
\LessThan0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~32_combout\ = ( \inputA[22]~input_o\ & ( !\inputB[22]~input_o\ ) ) # ( !\inputA[22]~input_o\ & ( \inputB[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[22]~input_o\,
	dataf => \ALT_INV_inputA[22]~input_o\,
	combout => \LessThan0~32_combout\);

-- Location: MLABCELL_X9_Y3_N0
\LessThan0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~31_combout\ = ( \inputA[23]~input_o\ & ( !\inputB[23]~input_o\ ) ) # ( !\inputA[23]~input_o\ & ( \inputB[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[23]~input_o\,
	dataf => \ALT_INV_inputA[23]~input_o\,
	combout => \LessThan0~31_combout\);

-- Location: MLABCELL_X9_Y3_N57
\LessThan0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = ( \inputA[24]~input_o\ & ( !\inputB[24]~input_o\ ) ) # ( !\inputA[24]~input_o\ & ( \inputB[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[24]~input_o\,
	dataf => \ALT_INV_inputA[24]~input_o\,
	combout => \LessThan0~30_combout\);

-- Location: MLABCELL_X9_Y3_N48
\LessThan0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~29_combout\ = ( \inputA[26]~input_o\ & ( \inputB[28]~input_o\ & ( (\inputB[26]~input_o\ & (\inputA[28]~input_o\ & (!\inputA[27]~input_o\ $ (\inputB[27]~input_o\)))) ) ) ) # ( !\inputA[26]~input_o\ & ( \inputB[28]~input_o\ & ( 
-- (!\inputB[26]~input_o\ & (\inputA[28]~input_o\ & (!\inputA[27]~input_o\ $ (\inputB[27]~input_o\)))) ) ) ) # ( \inputA[26]~input_o\ & ( !\inputB[28]~input_o\ & ( (\inputB[26]~input_o\ & (!\inputA[28]~input_o\ & (!\inputA[27]~input_o\ $ 
-- (\inputB[27]~input_o\)))) ) ) ) # ( !\inputA[26]~input_o\ & ( !\inputB[28]~input_o\ & ( (!\inputB[26]~input_o\ & (!\inputA[28]~input_o\ & (!\inputA[27]~input_o\ $ (\inputB[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[26]~input_o\,
	datab => \ALT_INV_inputA[27]~input_o\,
	datac => \ALT_INV_inputB[27]~input_o\,
	datad => \ALT_INV_inputA[28]~input_o\,
	datae => \ALT_INV_inputA[26]~input_o\,
	dataf => \ALT_INV_inputB[28]~input_o\,
	combout => \LessThan0~29_combout\);

-- Location: MLABCELL_X9_Y3_N12
\LessThan0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~33_combout\ = ( \inputB[25]~input_o\ & ( \LessThan0~29_combout\ & ( (\inputA[25]~input_o\ & (!\LessThan0~32_combout\ & (!\LessThan0~31_combout\ & !\LessThan0~30_combout\))) ) ) ) # ( !\inputB[25]~input_o\ & ( \LessThan0~29_combout\ & ( 
-- (!\inputA[25]~input_o\ & (!\LessThan0~32_combout\ & (!\LessThan0~31_combout\ & !\LessThan0~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[25]~input_o\,
	datab => \ALT_INV_LessThan0~32_combout\,
	datac => \ALT_INV_LessThan0~31_combout\,
	datad => \ALT_INV_LessThan0~30_combout\,
	datae => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_LessThan0~29_combout\,
	combout => \LessThan0~33_combout\);

-- Location: LABCELL_X10_Y8_N21
\LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( \inputA[17]~input_o\ & ( !\inputB[17]~input_o\ ) ) # ( !\inputA[17]~input_o\ & ( \inputB[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputA[17]~input_o\,
	combout => \LessThan0~20_combout\);

-- Location: LABCELL_X10_Y8_N36
\LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( \inputB[20]~input_o\ & ( \inputB[19]~input_o\ & ( (\inputA[20]~input_o\ & (\inputA[19]~input_o\ & (!\inputB[21]~input_o\ $ (\inputA[21]~input_o\)))) ) ) ) # ( !\inputB[20]~input_o\ & ( \inputB[19]~input_o\ & ( 
-- (!\inputA[20]~input_o\ & (\inputA[19]~input_o\ & (!\inputB[21]~input_o\ $ (\inputA[21]~input_o\)))) ) ) ) # ( \inputB[20]~input_o\ & ( !\inputB[19]~input_o\ & ( (\inputA[20]~input_o\ & (!\inputA[19]~input_o\ & (!\inputB[21]~input_o\ $ 
-- (\inputA[21]~input_o\)))) ) ) ) # ( !\inputB[20]~input_o\ & ( !\inputB[19]~input_o\ & ( (!\inputA[20]~input_o\ & (!\inputA[19]~input_o\ & (!\inputB[21]~input_o\ $ (\inputA[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_inputA[21]~input_o\,
	datac => \ALT_INV_inputA[20]~input_o\,
	datad => \ALT_INV_inputA[19]~input_o\,
	datae => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	combout => \LessThan0~19_combout\);

-- Location: LABCELL_X10_Y8_N18
\LessThan0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~25_combout\ = ( \inputB[18]~input_o\ & ( (!\LessThan0~20_combout\ & (\inputA[18]~input_o\ & \LessThan0~19_combout\)) ) ) # ( !\inputB[18]~input_o\ & ( (!\LessThan0~20_combout\ & (!\inputA[18]~input_o\ & \LessThan0~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datac => \ALT_INV_inputA[18]~input_o\,
	datad => \ALT_INV_LessThan0~19_combout\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \LessThan0~25_combout\);

-- Location: LABCELL_X10_Y8_N12
\LessThan0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = ( \inputB[20]~input_o\ & ( \inputB[19]~input_o\ & ( (!\inputB[21]~input_o\ & (!\inputA[21]~input_o\ & ((!\inputA[20]~input_o\) # (!\inputA[19]~input_o\)))) # (\inputB[21]~input_o\ & ((!\inputA[21]~input_o\) # 
-- ((!\inputA[20]~input_o\) # (!\inputA[19]~input_o\)))) ) ) ) # ( !\inputB[20]~input_o\ & ( \inputB[19]~input_o\ & ( (!\inputB[21]~input_o\ & (!\inputA[21]~input_o\ & (!\inputA[20]~input_o\ & !\inputA[19]~input_o\))) # (\inputB[21]~input_o\ & 
-- ((!\inputA[21]~input_o\) # ((!\inputA[20]~input_o\ & !\inputA[19]~input_o\)))) ) ) ) # ( \inputB[20]~input_o\ & ( !\inputB[19]~input_o\ & ( (!\inputB[21]~input_o\ & (!\inputA[21]~input_o\ & !\inputA[20]~input_o\)) # (\inputB[21]~input_o\ & 
-- ((!\inputA[21]~input_o\) # (!\inputA[20]~input_o\))) ) ) ) # ( !\inputB[20]~input_o\ & ( !\inputB[19]~input_o\ & ( (\inputB[21]~input_o\ & !\inputA[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100110101001101010011010100010001001101110111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_inputA[21]~input_o\,
	datac => \ALT_INV_inputA[20]~input_o\,
	datad => \ALT_INV_inputA[19]~input_o\,
	datae => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	combout => \LessThan0~26_combout\);

-- Location: LABCELL_X10_Y8_N54
\LessThan0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~27_combout\ = ( \LessThan0~19_combout\ & ( \inputB[18]~input_o\ & ( (\inputA[18]~input_o\ & (!\LessThan0~26_combout\ & ((!\inputB[17]~input_o\) # (\inputA[17]~input_o\)))) ) ) ) # ( !\LessThan0~19_combout\ & ( \inputB[18]~input_o\ & ( 
-- !\LessThan0~26_combout\ ) ) ) # ( \LessThan0~19_combout\ & ( !\inputB[18]~input_o\ & ( (!\LessThan0~26_combout\ & ((!\inputB[17]~input_o\) # ((\inputA[18]~input_o\) # (\inputA[17]~input_o\)))) ) ) ) # ( !\LessThan0~19_combout\ & ( !\inputB[18]~input_o\ & 
-- ( !\LessThan0~26_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101111110000000011111111000000000000101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[17]~input_o\,
	datab => \ALT_INV_inputA[17]~input_o\,
	datac => \ALT_INV_inputA[18]~input_o\,
	datad => \ALT_INV_LessThan0~26_combout\,
	datae => \ALT_INV_LessThan0~19_combout\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \LessThan0~27_combout\);

-- Location: LABCELL_X10_Y8_N0
\LessThan0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~28_combout\ = ( \LessThan0~27_combout\ & ( \inputA[15]~input_o\ & ( ((!\inputB[16]~input_o\) # (!\LessThan0~25_combout\)) # (\inputA[16]~input_o\) ) ) ) # ( \LessThan0~27_combout\ & ( !\inputA[15]~input_o\ & ( (!\LessThan0~25_combout\) # 
-- ((!\inputA[16]~input_o\ & (!\inputB[16]~input_o\ & !\inputB[15]~input_o\)) # (\inputA[16]~input_o\ & ((!\inputB[16]~input_o\) # (!\inputB[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111010000000000000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[16]~input_o\,
	datab => \ALT_INV_inputB[16]~input_o\,
	datac => \ALT_INV_LessThan0~25_combout\,
	datad => \ALT_INV_inputB[15]~input_o\,
	datae => \ALT_INV_LessThan0~27_combout\,
	dataf => \ALT_INV_inputA[15]~input_o\,
	combout => \LessThan0~28_combout\);

-- Location: MLABCELL_X13_Y3_N12
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( \inputA[14]~input_o\ & ( \inputA[13]~input_o\ & ( (\inputB[13]~input_o\ & (\inputB[14]~input_o\ & (!\inputB[12]~input_o\ $ (\inputA[12]~input_o\)))) ) ) ) # ( !\inputA[14]~input_o\ & ( \inputA[13]~input_o\ & ( 
-- (\inputB[13]~input_o\ & (!\inputB[14]~input_o\ & (!\inputB[12]~input_o\ $ (\inputA[12]~input_o\)))) ) ) ) # ( \inputA[14]~input_o\ & ( !\inputA[13]~input_o\ & ( (!\inputB[13]~input_o\ & (\inputB[14]~input_o\ & (!\inputB[12]~input_o\ $ 
-- (\inputA[12]~input_o\)))) ) ) ) # ( !\inputA[14]~input_o\ & ( !\inputA[13]~input_o\ & ( (!\inputB[13]~input_o\ & (!\inputB[14]~input_o\ & (!\inputB[12]~input_o\ $ (\inputA[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[12]~input_o\,
	datab => \ALT_INV_inputA[12]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	datae => \ALT_INV_inputA[14]~input_o\,
	dataf => \ALT_INV_inputA[13]~input_o\,
	combout => \LessThan0~10_combout\);

-- Location: MLABCELL_X13_Y7_N6
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( \inputB[8]~input_o\ & ( !\inputA[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[8]~input_o\,
	datae => \ALT_INV_inputB[8]~input_o\,
	combout => \LessThan0~17_combout\);

-- Location: MLABCELL_X13_Y3_N21
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = !\inputA[11]~input_o\ $ (!\inputB[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[11]~input_o\,
	datad => \ALT_INV_inputB[11]~input_o\,
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X19_Y3_N0
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( \inputA[10]~input_o\ & ( !\inputB[10]~input_o\ ) ) # ( !\inputA[10]~input_o\ & ( \inputB[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[10]~input_o\,
	dataf => \ALT_INV_inputA[10]~input_o\,
	combout => \LessThan0~12_combout\);

-- Location: MLABCELL_X13_Y3_N30
\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( \inputB[9]~input_o\ & ( \inputA[9]~input_o\ & ( (\LessThan0~10_combout\ & (\LessThan0~17_combout\ & (!\LessThan0~11_combout\ & !\LessThan0~12_combout\))) ) ) ) # ( \inputB[9]~input_o\ & ( !\inputA[9]~input_o\ & ( 
-- (\LessThan0~10_combout\ & (!\LessThan0~11_combout\ & !\LessThan0~12_combout\)) ) ) ) # ( !\inputB[9]~input_o\ & ( !\inputA[9]~input_o\ & ( (\LessThan0~10_combout\ & (\LessThan0~17_combout\ & (!\LessThan0~11_combout\ & !\LessThan0~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000010100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~10_combout\,
	datab => \ALT_INV_LessThan0~17_combout\,
	datac => \ALT_INV_LessThan0~11_combout\,
	datad => \ALT_INV_LessThan0~12_combout\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputA[9]~input_o\,
	combout => \LessThan0~18_combout\);

-- Location: LABCELL_X17_Y5_N24
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \inputA[3]~input_o\ & ( (\inputB[3]~input_o\ & (!\inputA[2]~input_o\ & \inputB[2]~input_o\)) ) ) # ( !\inputA[3]~input_o\ & ( ((!\inputA[2]~input_o\ & \inputB[2]~input_o\)) # (\inputB[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X17_Y5_N9
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \inputA[3]~input_o\ & ( (\inputB[3]~input_o\ & (!\inputA[2]~input_o\ $ (\inputB[2]~input_o\))) ) ) # ( !\inputA[3]~input_o\ & ( (!\inputB[3]~input_o\ & (!\inputA[2]~input_o\ $ (\inputB[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	datad => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X17_Y5_N51
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \inputA[0]~input_o\ & ( (\inputB[1]~input_o\ & !\inputA[1]~input_o\) ) ) # ( !\inputA[0]~input_o\ & ( (!\inputB[1]~input_o\ & (!\inputA[1]~input_o\ & \inputB[0]~input_o\)) # (\inputB[1]~input_o\ & ((!\inputA[1]~input_o\) # 
-- (\inputB[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_inputA[1]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X17_Y5_N42
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \inputB[6]~input_o\ & ( (\inputA[6]~input_o\ & (!\inputB[7]~input_o\ $ (\inputA[7]~input_o\))) ) ) # ( !\inputB[6]~input_o\ & ( (!\inputA[6]~input_o\ & (!\inputB[7]~input_o\ $ (\inputA[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001000100100010000100010000100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[7]~input_o\,
	datab => \ALT_INV_inputA[6]~input_o\,
	datad => \ALT_INV_inputA[7]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X17_Y5_N27
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \inputB[5]~input_o\ & ( !\inputA[5]~input_o\ ) ) # ( !\inputB[5]~input_o\ & ( \inputA[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[5]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X17_Y5_N30
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

-- Location: LABCELL_X17_Y5_N0
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( !\LessThan0~1_combout\ & ( !\LessThan0~2_combout\ & ( (\LessThan0~0_combout\ & (((\LessThan0~4_combout\ & \LessThan0~3_combout\)) # (\LessThan0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~6_combout\);

-- Location: MLABCELL_X13_Y7_N27
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( \inputB[8]~input_o\ & ( !\inputA[8]~input_o\ ) ) # ( !\inputB[8]~input_o\ & ( \inputA[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[8]~input_o\,
	datae => \ALT_INV_inputB[8]~input_o\,
	combout => \LessThan0~13_combout\);

-- Location: MLABCELL_X13_Y3_N36
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( \inputB[9]~input_o\ & ( !\LessThan0~12_combout\ & ( (!\LessThan0~11_combout\ & (!\LessThan0~13_combout\ & (\inputA[9]~input_o\ & \LessThan0~10_combout\))) ) ) ) # ( !\inputB[9]~input_o\ & ( !\LessThan0~12_combout\ & ( 
-- (!\LessThan0~11_combout\ & (!\LessThan0~13_combout\ & (!\inputA[9]~input_o\ & \LessThan0~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~11_combout\,
	datab => \ALT_INV_LessThan0~13_combout\,
	datac => \ALT_INV_inputA[9]~input_o\,
	datad => \ALT_INV_LessThan0~10_combout\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_LessThan0~12_combout\,
	combout => \LessThan0~14_combout\);

-- Location: LABCELL_X17_Y5_N45
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( \inputB[6]~input_o\ & ( (!\inputB[7]~input_o\ & (!\inputA[6]~input_o\ & !\inputA[7]~input_o\)) # (\inputB[7]~input_o\ & ((!\inputA[6]~input_o\) # (!\inputA[7]~input_o\))) ) ) # ( !\inputB[6]~input_o\ & ( (\inputB[7]~input_o\ & 
-- !\inputA[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011010100110101001101010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[7]~input_o\,
	datab => \ALT_INV_inputA[6]~input_o\,
	datac => \ALT_INV_inputA[7]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X17_Y5_N33
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \inputB[5]~input_o\ & ( (!\LessThan0~8_combout\ & ((!\LessThan0~0_combout\) # ((\inputA[5]~input_o\ & !\LessThan0~7_combout\)))) ) ) # ( !\inputB[5]~input_o\ & ( (!\LessThan0~8_combout\ & (((!\LessThan0~7_combout\) # 
-- (!\LessThan0~0_combout\)) # (\inputA[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110100000000111111010000000011110100000000001111010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[5]~input_o\,
	datab => \ALT_INV_LessThan0~7_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~8_combout\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X10_Y8_N24
\LessThan0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~22_combout\ = ( \inputA[15]~input_o\ & ( !\inputB[15]~input_o\ ) ) # ( !\inputA[15]~input_o\ & ( \inputB[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputA[15]~input_o\,
	combout => \LessThan0~22_combout\);

-- Location: LABCELL_X10_Y8_N27
\LessThan0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~21_combout\ = ( \inputA[16]~input_o\ & ( !\inputB[16]~input_o\ ) ) # ( !\inputA[16]~input_o\ & ( \inputB[16]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[16]~input_o\,
	dataf => \ALT_INV_inputA[16]~input_o\,
	combout => \LessThan0~21_combout\);

-- Location: LABCELL_X10_Y8_N6
\LessThan0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~23_combout\ = ( \LessThan0~19_combout\ & ( \inputB[18]~input_o\ & ( (!\LessThan0~20_combout\ & (!\LessThan0~22_combout\ & (\inputA[18]~input_o\ & !\LessThan0~21_combout\))) ) ) ) # ( \LessThan0~19_combout\ & ( !\inputB[18]~input_o\ & ( 
-- (!\LessThan0~20_combout\ & (!\LessThan0~22_combout\ & (!\inputA[18]~input_o\ & !\LessThan0~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_LessThan0~22_combout\,
	datac => \ALT_INV_inputA[18]~input_o\,
	datad => \ALT_INV_LessThan0~21_combout\,
	datae => \ALT_INV_LessThan0~19_combout\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \LessThan0~23_combout\);

-- Location: MLABCELL_X13_Y4_N6
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( \inputA[13]~input_o\ & ( \inputA[12]~input_o\ & ( (\inputB[14]~input_o\ & !\inputA[14]~input_o\) ) ) ) # ( !\inputA[13]~input_o\ & ( \inputA[12]~input_o\ & ( (!\inputB[14]~input_o\ & (\inputB[13]~input_o\ & 
-- !\inputA[14]~input_o\)) # (\inputB[14]~input_o\ & ((!\inputA[14]~input_o\) # (\inputB[13]~input_o\))) ) ) ) # ( \inputA[13]~input_o\ & ( !\inputA[12]~input_o\ & ( (!\inputB[14]~input_o\ & (\inputB[12]~input_o\ & (\inputB[13]~input_o\ & 
-- !\inputA[14]~input_o\))) # (\inputB[14]~input_o\ & ((!\inputA[14]~input_o\) # ((\inputB[12]~input_o\ & \inputB[13]~input_o\)))) ) ) ) # ( !\inputA[13]~input_o\ & ( !\inputA[12]~input_o\ & ( (!\inputB[14]~input_o\ & (!\inputA[14]~input_o\ & 
-- ((\inputB[13]~input_o\) # (\inputB[12]~input_o\)))) # (\inputB[14]~input_o\ & (((!\inputA[14]~input_o\) # (\inputB[13]~input_o\)) # (\inputB[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010011001101110000000100111111000000110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[12]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputA[14]~input_o\,
	datae => \ALT_INV_inputA[13]~input_o\,
	dataf => \ALT_INV_inputA[12]~input_o\,
	combout => \LessThan0~15_combout\);

-- Location: MLABCELL_X13_Y4_N48
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( \LessThan0~10_combout\ & ( \inputB[11]~input_o\ & ( (\inputA[11]~input_o\ & (!\LessThan0~15_combout\ & ((!\inputB[10]~input_o\) # (\inputA[10]~input_o\)))) ) ) ) # ( !\LessThan0~10_combout\ & ( \inputB[11]~input_o\ & ( 
-- !\LessThan0~15_combout\ ) ) ) # ( \LessThan0~10_combout\ & ( !\inputB[11]~input_o\ & ( (!\LessThan0~15_combout\ & (((!\inputB[10]~input_o\) # (\inputA[11]~input_o\)) # (\inputA[10]~input_o\))) ) ) ) # ( !\LessThan0~10_combout\ & ( !\inputB[11]~input_o\ & 
-- ( !\LessThan0~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111101110000000011111111000000000011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[10]~input_o\,
	datab => \ALT_INV_inputA[11]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_LessThan0~15_combout\,
	datae => \ALT_INV_LessThan0~10_combout\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \LessThan0~16_combout\);

-- Location: MLABCELL_X13_Y4_N54
\LessThan0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~24_combout\ = ( \LessThan0~23_combout\ & ( \LessThan0~16_combout\ & ( ((\LessThan0~14_combout\ & ((!\LessThan0~9_combout\) # (\LessThan0~6_combout\)))) # (\LessThan0~18_combout\) ) ) ) # ( \LessThan0~23_combout\ & ( !\LessThan0~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~18_combout\,
	datab => \ALT_INV_LessThan0~6_combout\,
	datac => \ALT_INV_LessThan0~14_combout\,
	datad => \ALT_INV_LessThan0~9_combout\,
	datae => \ALT_INV_LessThan0~23_combout\,
	dataf => \ALT_INV_LessThan0~16_combout\,
	combout => \LessThan0~24_combout\);

-- Location: MLABCELL_X13_Y6_N36
\Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = ( \inputB[29]~input_o\ & ( (\Mux0~2_combout\ & (\inputA[29]~input_o\ & (!\inputA[30]~input_o\ $ (\inputB[30]~input_o\)))) ) ) # ( !\inputB[29]~input_o\ & ( (\Mux0~2_combout\ & (!\inputA[29]~input_o\ & (!\inputA[30]~input_o\ $ 
-- (\inputB[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[30]~input_o\,
	datab => \ALT_INV_inputB[30]~input_o\,
	datac => \ALT_INV_Mux0~2_combout\,
	datad => \ALT_INV_inputA[29]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: MLABCELL_X9_Y3_N33
\LessThan0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~34_combout\ = ( \LessThan0~29_combout\ & ( (!\LessThan0~30_combout\ & (!\inputB[25]~input_o\ $ (\inputA[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[25]~input_o\,
	datac => \ALT_INV_inputA[25]~input_o\,
	datad => \ALT_INV_LessThan0~30_combout\,
	dataf => \ALT_INV_LessThan0~29_combout\,
	combout => \LessThan0~34_combout\);

-- Location: MLABCELL_X9_Y3_N18
\LessThan0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~35_combout\ = ( \inputA[26]~input_o\ & ( \inputB[28]~input_o\ & ( (!\inputA[28]~input_o\) # ((!\inputA[27]~input_o\ & \inputB[27]~input_o\)) ) ) ) # ( !\inputA[26]~input_o\ & ( \inputB[28]~input_o\ & ( (!\inputA[28]~input_o\) # 
-- ((!\inputB[26]~input_o\ & (!\inputA[27]~input_o\ & \inputB[27]~input_o\)) # (\inputB[26]~input_o\ & ((!\inputA[27]~input_o\) # (\inputB[27]~input_o\)))) ) ) ) # ( \inputA[26]~input_o\ & ( !\inputB[28]~input_o\ & ( (!\inputA[27]~input_o\ & 
-- (\inputB[27]~input_o\ & !\inputA[28]~input_o\)) ) ) ) # ( !\inputA[26]~input_o\ & ( !\inputB[28]~input_o\ & ( (!\inputA[28]~input_o\ & ((!\inputB[26]~input_o\ & (!\inputA[27]~input_o\ & \inputB[27]~input_o\)) # (\inputB[26]~input_o\ & 
-- ((!\inputA[27]~input_o\) # (\inputB[27]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100000000000011000000000011111111010011011111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[26]~input_o\,
	datab => \ALT_INV_inputA[27]~input_o\,
	datac => \ALT_INV_inputB[27]~input_o\,
	datad => \ALT_INV_inputA[28]~input_o\,
	datae => \ALT_INV_inputA[26]~input_o\,
	dataf => \ALT_INV_inputB[28]~input_o\,
	combout => \LessThan0~35_combout\);

-- Location: MLABCELL_X9_Y3_N24
\LessThan0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~36_combout\ = ( \inputB[25]~input_o\ & ( \inputA[24]~input_o\ & ( (!\LessThan0~35_combout\ & ((!\LessThan0~29_combout\) # (\inputA[25]~input_o\))) ) ) ) # ( !\inputB[25]~input_o\ & ( \inputA[24]~input_o\ & ( !\LessThan0~35_combout\ ) ) ) # ( 
-- \inputB[25]~input_o\ & ( !\inputA[24]~input_o\ & ( (!\LessThan0~35_combout\ & ((!\LessThan0~29_combout\) # ((\inputA[25]~input_o\ & !\inputB[24]~input_o\)))) ) ) ) # ( !\inputB[25]~input_o\ & ( !\inputA[24]~input_o\ & ( (!\LessThan0~35_combout\ & 
-- (((!\LessThan0~29_combout\) # (!\inputB[24]~input_o\)) # (\inputA[25]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100010101000101010000010101010101010101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~35_combout\,
	datab => \ALT_INV_inputA[25]~input_o\,
	datac => \ALT_INV_LessThan0~29_combout\,
	datad => \ALT_INV_inputB[24]~input_o\,
	datae => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputA[24]~input_o\,
	combout => \LessThan0~36_combout\);

-- Location: MLABCELL_X9_Y3_N42
\LessThan0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~37_combout\ = ( \inputB[22]~input_o\ & ( \LessThan0~36_combout\ & ( (!\LessThan0~34_combout\) # ((!\inputA[23]~input_o\ & (!\inputB[23]~input_o\ & \inputA[22]~input_o\)) # (\inputA[23]~input_o\ & ((!\inputB[23]~input_o\) # 
-- (\inputA[22]~input_o\)))) ) ) ) # ( !\inputB[22]~input_o\ & ( \LessThan0~36_combout\ & ( (!\LessThan0~34_combout\) # ((!\inputB[23]~input_o\) # (\inputA[23]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111011111110111011101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~34_combout\,
	datab => \ALT_INV_inputA[23]~input_o\,
	datac => \ALT_INV_inputB[23]~input_o\,
	datad => \ALT_INV_inputA[22]~input_o\,
	datae => \ALT_INV_inputB[22]~input_o\,
	dataf => \ALT_INV_LessThan0~36_combout\,
	combout => \LessThan0~37_combout\);

-- Location: MLABCELL_X13_Y6_N12
\Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = ( \Mux0~3_combout\ & ( \LessThan0~37_combout\ & ( (\Mux0~5_combout\ & ((!\LessThan0~33_combout\) # ((\LessThan0~28_combout\ & !\LessThan0~24_combout\)))) ) ) ) # ( !\Mux0~3_combout\ & ( \LessThan0~37_combout\ & ( \Mux0~5_combout\ ) ) ) 
-- # ( !\Mux0~3_combout\ & ( !\LessThan0~37_combout\ & ( \Mux0~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010100010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~5_combout\,
	datab => \ALT_INV_LessThan0~33_combout\,
	datac => \ALT_INV_LessThan0~28_combout\,
	datad => \ALT_INV_LessThan0~24_combout\,
	datae => \ALT_INV_Mux0~3_combout\,
	dataf => \ALT_INV_LessThan0~37_combout\,
	combout => \Mux0~6_combout\);

-- Location: LABCELL_X12_Y5_N30
\Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = ( \Mux0~6_combout\ & ( \aluControl[0]~input_o\ & ( (\Mux0~8_combout\ & !\aluControl[2]~input_o\) ) ) ) # ( !\Mux0~6_combout\ & ( \aluControl[0]~input_o\ & ( (\aluControl[2]~input_o\) # (\Mux0~8_combout\) ) ) ) # ( \Mux0~6_combout\ & ( 
-- !\aluControl[0]~input_o\ & ( (!\aluControl[2]~input_o\ & ((\Mux0~12_combout\))) # (\aluControl[2]~input_o\ & (\Mux0~1_combout\)) ) ) ) # ( !\Mux0~6_combout\ & ( !\aluControl[0]~input_o\ & ( (!\aluControl[2]~input_o\ & ((\Mux0~12_combout\))) # 
-- (\aluControl[2]~input_o\ & (\Mux0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101111111110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~8_combout\,
	datab => \ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_Mux0~12_combout\,
	datad => \ALT_INV_aluControl[2]~input_o\,
	datae => \ALT_INV_Mux0~6_combout\,
	dataf => \ALT_INV_aluControl[0]~input_o\,
	combout => \Mux0~7_combout\);

-- Location: LABCELL_X12_Y5_N6
\res[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(0) = ( \Mux160~0_combout\ & ( res(0) ) ) # ( !\Mux160~0_combout\ & ( \Mux0~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux0~7_combout\,
	datad => ALT_INV_res(0),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(0));

-- Location: MLABCELL_X13_Y5_N36
\Mux132~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux132~2_combout\ = ( !\inputA[4]~input_o\ & ( !\inputB[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux132~2_combout\);

-- Location: MLABCELL_X13_Y5_N54
\Mux132~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux132~3_combout\ = ( \inputA[1]~input_o\ & ( \inputA[0]~input_o\ & ( \Mux65~0_combout\ ) ) ) # ( !\inputA[1]~input_o\ & ( \inputA[0]~input_o\ & ( \Mux65~3_combout\ ) ) ) # ( \inputA[1]~input_o\ & ( !\inputA[0]~input_o\ & ( \Mux65~1_combout\ ) ) ) # ( 
-- !\inputA[1]~input_o\ & ( !\inputA[0]~input_o\ & ( \Mux65~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux65~0_combout\,
	datab => \ALT_INV_Mux65~1_combout\,
	datac => \ALT_INV_Mux65~4_combout\,
	datad => \ALT_INV_Mux65~3_combout\,
	datae => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \Mux132~3_combout\);

-- Location: LABCELL_X17_Y3_N30
\Mux132~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux132~4_combout\ = ( \Mux1~1_combout\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\Mux1~3_combout\)) # (\shamt[1]~input_o\ & ((\Mux1~0_combout\))) ) ) ) # ( !\Mux1~1_combout\ & ( \shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & (\Mux1~3_combout\)) # 
-- (\shamt[1]~input_o\ & ((\Mux1~0_combout\))) ) ) ) # ( \Mux1~1_combout\ & ( !\shamt[0]~input_o\ & ( (\shamt[1]~input_o\) # (\Mux1~4_combout\) ) ) ) # ( !\Mux1~1_combout\ & ( !\shamt[0]~input_o\ & ( (\Mux1~4_combout\ & !\shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~4_combout\,
	datab => \ALT_INV_Mux1~3_combout\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_Mux1~1_combout\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \Mux132~4_combout\);

-- Location: MLABCELL_X13_Y5_N0
\Mux132~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux132~5_combout\ = ( \Mux132~3_combout\ & ( \Mux132~4_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\) # (\Mux132~2_combout\))) ) ) ) # ( !\Mux132~3_combout\ & ( \Mux132~4_combout\ & ( (\aluControl[3]~input_o\ & 
-- ((!\aluControl[2]~input_o\ & (!\aluControl[1]~input_o\)) # (\aluControl[2]~input_o\ & ((\Mux132~2_combout\))))) ) ) ) # ( \Mux132~3_combout\ & ( !\Mux132~4_combout\ & ( (\aluControl[3]~input_o\ & ((!\aluControl[2]~input_o\ & (\aluControl[1]~input_o\)) # 
-- (\aluControl[2]~input_o\ & ((\Mux132~2_combout\))))) ) ) ) # ( !\Mux132~3_combout\ & ( !\Mux132~4_combout\ & ( (\aluControl[2]~input_o\ & (\Mux132~2_combout\ & \aluControl[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000100011100000000100010110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aluControl[1]~input_o\,
	datab => \ALT_INV_aluControl[2]~input_o\,
	datac => \ALT_INV_Mux132~2_combout\,
	datad => \ALT_INV_aluControl[3]~input_o\,
	datae => \ALT_INV_Mux132~3_combout\,
	dataf => \ALT_INV_Mux132~4_combout\,
	combout => \Mux132~5_combout\);

-- Location: MLABCELL_X18_Y5_N12
\Mux132~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux132~0_combout\ = ( \Mux64~17_combout\ & ( \Mux143~0_combout\ & ( (!\aluControl[1]~input_o\) # (\Mux128~17_combout\) ) ) ) # ( !\Mux64~17_combout\ & ( \Mux143~0_combout\ & ( (\Mux128~17_combout\ & \aluControl[1]~input_o\) ) ) ) # ( \Mux64~17_combout\ & 
-- ( !\Mux143~0_combout\ & ( (!\aluControl[1]~input_o\ & ((\Mux64~15_combout\))) # (\aluControl[1]~input_o\ & (\Mux128~15_combout\)) ) ) ) # ( !\Mux64~17_combout\ & ( !\Mux143~0_combout\ & ( (!\aluControl[1]~input_o\ & ((\Mux64~15_combout\))) # 
-- (\aluControl[1]~input_o\ & (\Mux128~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux128~15_combout\,
	datab => \ALT_INV_Mux128~17_combout\,
	datac => \ALT_INV_aluControl[1]~input_o\,
	datad => \ALT_INV_Mux64~15_combout\,
	datae => \ALT_INV_Mux64~17_combout\,
	dataf => \ALT_INV_Mux143~0_combout\,
	combout => \Mux132~0_combout\);

-- Location: MLABCELL_X13_Y5_N27
\Mux132~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux132~1_combout\ = ( \inputA[4]~input_o\ & ( (!\aluControl[3]~input_o\ & ((!\aluControl[1]~input_o\ & (\inputB[4]~input_o\)) # (\aluControl[1]~input_o\ & ((\Add0~17_sumout\))))) ) ) # ( !\inputA[4]~input_o\ & ( (!\aluControl[3]~input_o\ & 
-- (\Add0~17_sumout\ & \aluControl[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110001000100000011000100010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_aluControl[3]~input_o\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_aluControl[1]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \Mux132~1_combout\);

-- Location: LABCELL_X12_Y5_N24
\Mux132~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux132~6_combout\ = ( !\Mux143~2_combout\ & ( \Mux143~1_combout\ & ( \Mux132~0_combout\ ) ) ) # ( \Mux143~2_combout\ & ( !\Mux143~1_combout\ & ( !\Mux132~2_combout\ ) ) ) # ( !\Mux143~2_combout\ & ( !\Mux143~1_combout\ & ( (\Mux132~1_combout\) # 
-- (\Mux132~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111110011001100110000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux132~5_combout\,
	datab => \ALT_INV_Mux132~2_combout\,
	datac => \ALT_INV_Mux132~0_combout\,
	datad => \ALT_INV_Mux132~1_combout\,
	datae => \ALT_INV_Mux143~2_combout\,
	dataf => \ALT_INV_Mux143~1_combout\,
	combout => \Mux132~6_combout\);

-- Location: LABCELL_X12_Y5_N18
\res[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- res(4) = ( \Mux160~0_combout\ & ( res(4) ) ) # ( !\Mux160~0_combout\ & ( \Mux132~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux132~6_combout\,
	datac => ALT_INV_res(4),
	dataf => \ALT_INV_Mux160~0_combout\,
	combout => res(4));

-- Location: LABCELL_X16_Y6_N24
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !res(0) & ( !res(4) & ( (!res(3) & (!res(1) & (!res(2) & !res(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_res(3),
	datab => ALT_INV_res(1),
	datac => ALT_INV_res(2),
	datad => ALT_INV_res(5),
	datae => ALT_INV_res(0),
	dataf => ALT_INV_res(4),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X16_Y6_N30
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~1_combout\ & ( \Equal0~0_combout\ & ( (\Equal0~2_combout\ & (\Equal0~5_combout\ & (\Equal0~3_combout\ & \Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X19_Y21_N3
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


