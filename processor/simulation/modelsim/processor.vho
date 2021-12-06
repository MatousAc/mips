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

-- DATE "12/05/2021 21:48:31"

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

ENTITY 	processor IS
    PORT (
	reset : IN std_logic;
	slow_clk : IN std_logic;
	fast_clk : IN std_logic;
	PC_out : OUT std_logic_vector(31 DOWNTO 0);
	inst_out : OUT std_logic_vector(31 DOWNTO 0);
	read_reg1_out : OUT std_logic_vector(4 DOWNTO 0);
	read_reg2_out : OUT std_logic_vector(4 DOWNTO 0);
	write_reg_out : OUT std_logic_vector(4 DOWNTO 0);
	read_data1_out : OUT std_logic_vector(31 DOWNTO 0);
	read_data2_out : OUT std_logic_vector(31 DOWNTO 0);
	write_data_out : OUT std_logic_vector(31 DOWNTO 0)
	);
END processor;

-- Design Ports Information
-- reset	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slow_clk	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fast_clk	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[8]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[11]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[12]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[13]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[14]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[15]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[16]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[17]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[18]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[19]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[20]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[21]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[22]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[23]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[24]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[25]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[26]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[27]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[28]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[29]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[30]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[31]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[8]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[10]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[11]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[13]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[14]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[16]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[17]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[18]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[19]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[20]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[21]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[22]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[23]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[24]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[25]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[26]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[27]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[28]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[29]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[30]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[31]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_reg1_out[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_reg1_out[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_reg1_out[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_reg1_out[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_reg1_out[4]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_reg2_out[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_reg2_out[1]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_reg2_out[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_reg2_out[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_reg2_out[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_reg_out[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_reg_out[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_reg_out[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_reg_out[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_reg_out[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[7]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[10]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[11]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[13]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[14]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[15]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[16]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[17]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[18]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[19]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[20]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[21]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[22]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[23]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[24]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[25]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[26]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[27]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[28]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[29]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[30]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data1_out[31]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[3]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[5]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[10]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[12]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[14]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[16]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[17]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[18]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[19]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[20]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[21]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[22]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[23]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[24]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[25]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[26]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[27]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[28]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[29]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[30]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data2_out[31]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[8]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[9]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[12]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[15]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[16]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[17]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[18]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[19]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[20]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[21]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[22]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[23]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[24]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[25]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[26]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[27]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[28]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[29]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[30]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data_out[31]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_slow_clk : std_logic;
SIGNAL ww_fast_clk : std_logic;
SIGNAL ww_PC_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inst_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_read_reg1_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_read_reg2_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_write_reg_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_read_data1_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_read_data2_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_write_data_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \slow_clk~input_o\ : std_logic;
SIGNAL \fast_clk~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_slow_clk <= slow_clk;
ww_fast_clk <= fast_clk;
PC_out <= ww_PC_out;
inst_out <= ww_inst_out;
read_reg1_out <= ww_read_reg1_out;
read_reg2_out <= ww_read_reg2_out;
write_reg_out <= ww_write_reg_out;
read_data1_out <= ww_read_data1_out;
read_data2_out <= ww_read_data2_out;
write_data_out <= ww_write_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X38_Y45_N53
\PC_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(0));

-- Location: IOOBUF_X52_Y45_N36
\PC_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(1));

-- Location: IOOBUF_X32_Y45_N93
\PC_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(2));

-- Location: IOOBUF_X34_Y45_N53
\PC_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(3));

-- Location: IOOBUF_X18_Y45_N36
\PC_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(4));

-- Location: IOOBUF_X12_Y45_N53
\PC_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(5));

-- Location: IOOBUF_X19_Y0_N53
\PC_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(6));

-- Location: IOOBUF_X16_Y0_N76
\PC_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(7));

-- Location: IOOBUF_X20_Y45_N53
\PC_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(8));

-- Location: IOOBUF_X18_Y45_N53
\PC_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(9));

-- Location: IOOBUF_X22_Y45_N36
\PC_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(10));

-- Location: IOOBUF_X8_Y45_N59
\PC_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(11));

-- Location: IOOBUF_X22_Y45_N53
\PC_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(12));

-- Location: IOOBUF_X25_Y0_N2
\PC_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(13));

-- Location: IOOBUF_X22_Y45_N2
\PC_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(14));

-- Location: IOOBUF_X43_Y0_N2
\PC_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(15));

-- Location: IOOBUF_X16_Y45_N42
\PC_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(16));

-- Location: IOOBUF_X0_Y21_N5
\PC_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(17));

-- Location: IOOBUF_X16_Y45_N93
\PC_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(18));

-- Location: IOOBUF_X12_Y45_N2
\PC_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(19));

-- Location: IOOBUF_X0_Y18_N62
\PC_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(20));

-- Location: IOOBUF_X10_Y0_N42
\PC_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(21));

-- Location: IOOBUF_X40_Y45_N59
\PC_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_PC_out(22));

-- Location: IOOBUF_X42_Y45_N53
\PC_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(23));

-- Location: IOOBUF_X48_Y45_N53
\PC_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(24));

-- Location: IOOBUF_X46_Y45_N59
\PC_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(25));

-- Location: IOOBUF_X50_Y0_N53
\PC_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(26));

-- Location: IOOBUF_X12_Y0_N2
\PC_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(27));

-- Location: IOOBUF_X10_Y45_N19
\PC_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(28));

-- Location: IOOBUF_X52_Y45_N19
\PC_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(29));

-- Location: IOOBUF_X38_Y45_N19
\PC_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(30));

-- Location: IOOBUF_X54_Y17_N39
\PC_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out(31));

-- Location: IOOBUF_X25_Y0_N53
\inst_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(0));

-- Location: IOOBUF_X43_Y0_N53
\inst_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(1));

-- Location: IOOBUF_X0_Y19_N5
\inst_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(2));

-- Location: IOOBUF_X38_Y45_N2
\inst_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(3));

-- Location: IOOBUF_X16_Y45_N76
\inst_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(4));

-- Location: IOOBUF_X33_Y0_N42
\inst_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(5));

-- Location: IOOBUF_X54_Y18_N62
\inst_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(6));

-- Location: IOOBUF_X14_Y45_N19
\inst_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(7));

-- Location: IOOBUF_X44_Y45_N53
\inst_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(8));

-- Location: IOOBUF_X44_Y45_N2
\inst_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(9));

-- Location: IOOBUF_X18_Y45_N2
\inst_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(10));

-- Location: IOOBUF_X8_Y45_N42
\inst_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(11));

-- Location: IOOBUF_X36_Y45_N2
\inst_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(12));

-- Location: IOOBUF_X54_Y17_N22
\inst_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(13));

-- Location: IOOBUF_X32_Y45_N76
\inst_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(14));

-- Location: IOOBUF_X12_Y45_N36
\inst_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(15));

-- Location: IOOBUF_X14_Y45_N53
\inst_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(16));

-- Location: IOOBUF_X11_Y0_N2
\inst_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(17));

-- Location: IOOBUF_X51_Y0_N53
\inst_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(18));

-- Location: IOOBUF_X16_Y0_N42
\inst_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(19));

-- Location: IOOBUF_X20_Y45_N2
\inst_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(20));

-- Location: IOOBUF_X19_Y0_N2
\inst_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(21));

-- Location: IOOBUF_X50_Y45_N36
\inst_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(22));

-- Location: IOOBUF_X32_Y45_N59
\inst_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(23));

-- Location: IOOBUF_X50_Y45_N2
\inst_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(24));

-- Location: IOOBUF_X42_Y45_N2
\inst_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(25));

-- Location: IOOBUF_X42_Y45_N36
\inst_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(26));

-- Location: IOOBUF_X43_Y45_N19
\inst_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(27));

-- Location: IOOBUF_X40_Y45_N42
\inst_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(28));

-- Location: IOOBUF_X48_Y45_N2
\inst_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(29));

-- Location: IOOBUF_X29_Y0_N36
\inst_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(30));

-- Location: IOOBUF_X54_Y20_N39
\inst_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst_out(31));

-- Location: IOOBUF_X38_Y45_N36
\read_reg1_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_reg1_out(0));

-- Location: IOOBUF_X54_Y15_N5
\read_reg1_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_reg1_out(1));

-- Location: IOOBUF_X34_Y0_N53
\read_reg1_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_reg1_out(2));

-- Location: IOOBUF_X43_Y0_N19
\read_reg1_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_reg1_out(3));

-- Location: IOOBUF_X48_Y45_N36
\read_reg1_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_reg1_out(4));

-- Location: IOOBUF_X43_Y45_N2
\read_reg2_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_reg2_out(0));

-- Location: IOOBUF_X48_Y45_N19
\read_reg2_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_reg2_out(1));

-- Location: IOOBUF_X18_Y0_N53
\read_reg2_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_reg2_out(2));

-- Location: IOOBUF_X33_Y0_N93
\read_reg2_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_reg2_out(3));

-- Location: IOOBUF_X36_Y45_N36
\read_reg2_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_reg2_out(4));

-- Location: IOOBUF_X44_Y45_N19
\write_reg_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_reg_out(0));

-- Location: IOOBUF_X50_Y45_N19
\write_reg_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_reg_out(1));

-- Location: IOOBUF_X25_Y0_N19
\write_reg_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_reg_out(2));

-- Location: IOOBUF_X50_Y45_N53
\write_reg_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_reg_out(3));

-- Location: IOOBUF_X23_Y0_N93
\write_reg_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_reg_out(4));

-- Location: IOOBUF_X43_Y45_N53
\read_data1_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(0));

-- Location: IOOBUF_X32_Y45_N42
\read_data1_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(1));

-- Location: IOOBUF_X22_Y45_N19
\read_data1_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(2));

-- Location: IOOBUF_X51_Y0_N19
\read_data1_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(3));

-- Location: IOOBUF_X50_Y0_N19
\read_data1_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(4));

-- Location: IOOBUF_X0_Y20_N39
\read_data1_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(5));

-- Location: IOOBUF_X0_Y19_N39
\read_data1_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(6));

-- Location: IOOBUF_X40_Y0_N59
\read_data1_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(7));

-- Location: IOOBUF_X42_Y45_N19
\read_data1_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(8));

-- Location: IOOBUF_X46_Y45_N42
\read_data1_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(9));

-- Location: IOOBUF_X12_Y0_N53
\read_data1_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(10));

-- Location: IOOBUF_X0_Y20_N22
\read_data1_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(11));

-- Location: IOOBUF_X12_Y45_N19
\read_data1_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(12));

-- Location: IOOBUF_X0_Y18_N79
\read_data1_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(13));

-- Location: IOOBUF_X20_Y45_N19
\read_data1_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(14));

-- Location: IOOBUF_X54_Y19_N39
\read_data1_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(15));

-- Location: IOOBUF_X43_Y0_N36
\read_data1_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(16));

-- Location: IOOBUF_X25_Y0_N36
\read_data1_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(17));

-- Location: IOOBUF_X16_Y0_N59
\read_data1_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(18));

-- Location: IOOBUF_X54_Y17_N5
\read_data1_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(19));

-- Location: IOOBUF_X14_Y0_N2
\read_data1_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(20));

-- Location: IOOBUF_X54_Y16_N56
\read_data1_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(21));

-- Location: IOOBUF_X0_Y21_N56
\read_data1_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(22));

-- Location: IOOBUF_X54_Y16_N39
\read_data1_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(23));

-- Location: IOOBUF_X44_Y45_N36
\read_data1_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(24));

-- Location: IOOBUF_X54_Y19_N5
\read_data1_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(25));

-- Location: IOOBUF_X34_Y0_N36
\read_data1_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(26));

-- Location: IOOBUF_X24_Y0_N53
\read_data1_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(27));

-- Location: IOOBUF_X40_Y0_N93
\read_data1_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(28));

-- Location: IOOBUF_X0_Y21_N22
\read_data1_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(29));

-- Location: IOOBUF_X54_Y21_N22
\read_data1_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(30));

-- Location: IOOBUF_X0_Y20_N5
\read_data1_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data1_out(31));

-- Location: IOOBUF_X18_Y0_N19
\read_data2_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(0));

-- Location: IOOBUF_X12_Y0_N19
\read_data2_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(1));

-- Location: IOOBUF_X10_Y0_N93
\read_data2_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(2));

-- Location: IOOBUF_X10_Y0_N76
\read_data2_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(3));

-- Location: IOOBUF_X23_Y0_N42
\read_data2_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(4));

-- Location: IOOBUF_X20_Y45_N36
\read_data2_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(5));

-- Location: IOOBUF_X36_Y45_N19
\read_data2_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(6));

-- Location: IOOBUF_X16_Y0_N93
\read_data2_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(7));

-- Location: IOOBUF_X18_Y0_N2
\read_data2_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(8));

-- Location: IOOBUF_X19_Y0_N36
\read_data2_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(9));

-- Location: IOOBUF_X0_Y18_N96
\read_data2_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(10));

-- Location: IOOBUF_X8_Y45_N76
\read_data2_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(11));

-- Location: IOOBUF_X54_Y16_N22
\read_data2_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(12));

-- Location: IOOBUF_X10_Y0_N59
\read_data2_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(13));

-- Location: IOOBUF_X54_Y21_N56
\read_data2_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(14));

-- Location: IOOBUF_X29_Y0_N2
\read_data2_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(15));

-- Location: IOOBUF_X46_Y45_N93
\read_data2_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(16));

-- Location: IOOBUF_X23_Y0_N76
\read_data2_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(17));

-- Location: IOOBUF_X11_Y0_N53
\read_data2_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(18));

-- Location: IOOBUF_X24_Y0_N2
\read_data2_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(19));

-- Location: IOOBUF_X10_Y45_N36
\read_data2_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(20));

-- Location: IOOBUF_X44_Y0_N19
\read_data2_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(21));

-- Location: IOOBUF_X46_Y0_N2
\read_data2_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(22));

-- Location: IOOBUF_X51_Y0_N2
\read_data2_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(23));

-- Location: IOOBUF_X40_Y0_N42
\read_data2_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(24));

-- Location: IOOBUF_X29_Y0_N19
\read_data2_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(25));

-- Location: IOOBUF_X14_Y0_N36
\read_data2_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(26));

-- Location: IOOBUF_X51_Y0_N36
\read_data2_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(27));

-- Location: IOOBUF_X54_Y15_N22
\read_data2_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(28));

-- Location: IOOBUF_X29_Y0_N53
\read_data2_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(29));

-- Location: IOOBUF_X18_Y45_N19
\read_data2_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(30));

-- Location: IOOBUF_X36_Y0_N53
\read_data2_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data2_out(31));

-- Location: IOOBUF_X24_Y0_N36
\write_data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(0));

-- Location: IOOBUF_X43_Y45_N36
\write_data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(1));

-- Location: IOOBUF_X54_Y20_N22
\write_data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(2));

-- Location: IOOBUF_X14_Y45_N36
\write_data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(3));

-- Location: IOOBUF_X46_Y0_N19
\write_data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(4));

-- Location: IOOBUF_X18_Y0_N36
\write_data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(5));

-- Location: IOOBUF_X52_Y45_N2
\write_data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(6));

-- Location: IOOBUF_X33_Y0_N59
\write_data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(7));

-- Location: IOOBUF_X0_Y21_N39
\write_data_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(8));

-- Location: IOOBUF_X54_Y20_N56
\write_data_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(9));

-- Location: IOOBUF_X54_Y16_N5
\write_data_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(10));

-- Location: IOOBUF_X16_Y45_N59
\write_data_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(11));

-- Location: IOOBUF_X0_Y20_N56
\write_data_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(12));

-- Location: IOOBUF_X10_Y45_N53
\write_data_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(13));

-- Location: IOOBUF_X33_Y0_N76
\write_data_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(14));

-- Location: IOOBUF_X46_Y0_N53
\write_data_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(15));

-- Location: IOOBUF_X52_Y0_N19
\write_data_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(16));

-- Location: IOOBUF_X52_Y45_N53
\write_data_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(17));

-- Location: IOOBUF_X23_Y0_N59
\write_data_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(18));

-- Location: IOOBUF_X34_Y45_N36
\write_data_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(19));

-- Location: IOOBUF_X46_Y0_N36
\write_data_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(20));

-- Location: IOOBUF_X50_Y0_N2
\write_data_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(21));

-- Location: IOOBUF_X54_Y18_N79
\write_data_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(22));

-- Location: IOOBUF_X8_Y45_N93
\write_data_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(23));

-- Location: IOOBUF_X46_Y45_N76
\write_data_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(24));

-- Location: IOOBUF_X22_Y0_N36
\write_data_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(25));

-- Location: IOOBUF_X12_Y0_N36
\write_data_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(26));

-- Location: IOOBUF_X19_Y0_N19
\write_data_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(27));

-- Location: IOOBUF_X0_Y19_N56
\write_data_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(28));

-- Location: IOOBUF_X54_Y17_N56
\write_data_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(29));

-- Location: IOOBUF_X54_Y20_N5
\write_data_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(30));

-- Location: IOOBUF_X54_Y18_N96
\write_data_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_data_out(31));

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\slow_clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slow_clk,
	o => \slow_clk~input_o\);

-- Location: IOIBUF_X40_Y45_N92
\fast_clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fast_clk,
	o => \fast_clk~input_o\);

-- Location: MLABCELL_X13_Y33_N3
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


