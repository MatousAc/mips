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

-- DATE "11/16/2021 17:49:47"

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
	ALUControl : IN std_logic_vector(3 DOWNTO 0);
	inputA : IN std_logic_vector(31 DOWNTO 0);
	inputB : IN std_logic_vector(31 DOWNTO 0);
	shamt : IN std_logic_vector(3 DOWNTO 0);
	Zero : OUT std_logic;
	ALU_Result : OUT std_logic_vector(31 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- ALUControl[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[4]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[8]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[9]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[10]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[11]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[12]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[13]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[14]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[15]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[17]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[18]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[19]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[20]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[21]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[22]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[23]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[24]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[25]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[26]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[27]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[28]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[29]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[30]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[31]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[7]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[8]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[9]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[12]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[14]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[16]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[17]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[18]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[19]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[20]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[21]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[22]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[23]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[24]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[25]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[26]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[27]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[28]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[29]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[30]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[31]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[9]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[10]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[12]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[13]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[14]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[15]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[17]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[18]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[19]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[20]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[21]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[22]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[23]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[24]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[25]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[26]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[27]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[28]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[29]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[30]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[31]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ALUControl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inputA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inputB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_shamt : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL ww_ALU_Result : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALUControl[0]~input_o\ : std_logic;
SIGNAL \ALUControl[1]~input_o\ : std_logic;
SIGNAL \ALUControl[2]~input_o\ : std_logic;
SIGNAL \ALUControl[3]~input_o\ : std_logic;
SIGNAL \inputA[0]~input_o\ : std_logic;
SIGNAL \inputA[1]~input_o\ : std_logic;
SIGNAL \inputA[2]~input_o\ : std_logic;
SIGNAL \inputA[3]~input_o\ : std_logic;
SIGNAL \inputA[4]~input_o\ : std_logic;
SIGNAL \inputA[5]~input_o\ : std_logic;
SIGNAL \inputA[6]~input_o\ : std_logic;
SIGNAL \inputA[7]~input_o\ : std_logic;
SIGNAL \inputA[8]~input_o\ : std_logic;
SIGNAL \inputA[9]~input_o\ : std_logic;
SIGNAL \inputA[10]~input_o\ : std_logic;
SIGNAL \inputA[11]~input_o\ : std_logic;
SIGNAL \inputA[12]~input_o\ : std_logic;
SIGNAL \inputA[13]~input_o\ : std_logic;
SIGNAL \inputA[14]~input_o\ : std_logic;
SIGNAL \inputA[15]~input_o\ : std_logic;
SIGNAL \inputA[16]~input_o\ : std_logic;
SIGNAL \inputA[17]~input_o\ : std_logic;
SIGNAL \inputA[18]~input_o\ : std_logic;
SIGNAL \inputA[19]~input_o\ : std_logic;
SIGNAL \inputA[20]~input_o\ : std_logic;
SIGNAL \inputA[21]~input_o\ : std_logic;
SIGNAL \inputA[22]~input_o\ : std_logic;
SIGNAL \inputA[23]~input_o\ : std_logic;
SIGNAL \inputA[24]~input_o\ : std_logic;
SIGNAL \inputA[25]~input_o\ : std_logic;
SIGNAL \inputA[26]~input_o\ : std_logic;
SIGNAL \inputA[27]~input_o\ : std_logic;
SIGNAL \inputA[28]~input_o\ : std_logic;
SIGNAL \inputA[29]~input_o\ : std_logic;
SIGNAL \inputA[30]~input_o\ : std_logic;
SIGNAL \inputA[31]~input_o\ : std_logic;
SIGNAL \inputB[0]~input_o\ : std_logic;
SIGNAL \inputB[1]~input_o\ : std_logic;
SIGNAL \inputB[2]~input_o\ : std_logic;
SIGNAL \inputB[3]~input_o\ : std_logic;
SIGNAL \inputB[4]~input_o\ : std_logic;
SIGNAL \inputB[5]~input_o\ : std_logic;
SIGNAL \inputB[6]~input_o\ : std_logic;
SIGNAL \inputB[7]~input_o\ : std_logic;
SIGNAL \inputB[8]~input_o\ : std_logic;
SIGNAL \inputB[9]~input_o\ : std_logic;
SIGNAL \inputB[10]~input_o\ : std_logic;
SIGNAL \inputB[11]~input_o\ : std_logic;
SIGNAL \inputB[12]~input_o\ : std_logic;
SIGNAL \inputB[13]~input_o\ : std_logic;
SIGNAL \inputB[14]~input_o\ : std_logic;
SIGNAL \inputB[15]~input_o\ : std_logic;
SIGNAL \inputB[16]~input_o\ : std_logic;
SIGNAL \inputB[17]~input_o\ : std_logic;
SIGNAL \inputB[18]~input_o\ : std_logic;
SIGNAL \inputB[19]~input_o\ : std_logic;
SIGNAL \inputB[20]~input_o\ : std_logic;
SIGNAL \inputB[21]~input_o\ : std_logic;
SIGNAL \inputB[22]~input_o\ : std_logic;
SIGNAL \inputB[23]~input_o\ : std_logic;
SIGNAL \inputB[24]~input_o\ : std_logic;
SIGNAL \inputB[25]~input_o\ : std_logic;
SIGNAL \inputB[26]~input_o\ : std_logic;
SIGNAL \inputB[27]~input_o\ : std_logic;
SIGNAL \inputB[28]~input_o\ : std_logic;
SIGNAL \inputB[29]~input_o\ : std_logic;
SIGNAL \inputB[30]~input_o\ : std_logic;
SIGNAL \inputB[31]~input_o\ : std_logic;
SIGNAL \shamt[0]~input_o\ : std_logic;
SIGNAL \shamt[1]~input_o\ : std_logic;
SIGNAL \shamt[2]~input_o\ : std_logic;
SIGNAL \shamt[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_ALUControl <= ALUControl;
ww_inputA <= inputA;
ww_inputB <= inputB;
ww_shamt <= shamt;
Zero <= ww_Zero;
ALU_Result <= ww_ALU_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X54_Y17_N22
\Zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Zero);

-- Location: IOOBUF_X48_Y0_N76
\ALU_Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(0));

-- Location: IOOBUF_X40_Y45_N76
\ALU_Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(1));

-- Location: IOOBUF_X20_Y45_N2
\ALU_Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(2));

-- Location: IOOBUF_X54_Y21_N22
\ALU_Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(3));

-- Location: IOOBUF_X14_Y45_N19
\ALU_Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(4));

-- Location: IOOBUF_X44_Y45_N53
\ALU_Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(5));

-- Location: IOOBUF_X16_Y45_N59
\ALU_Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(6));

-- Location: IOOBUF_X16_Y0_N42
\ALU_Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(7));

-- Location: IOOBUF_X54_Y16_N56
\ALU_Result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(8));

-- Location: IOOBUF_X0_Y21_N39
\ALU_Result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(9));

-- Location: IOOBUF_X0_Y21_N56
\ALU_Result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(10));

-- Location: IOOBUF_X54_Y18_N96
\ALU_Result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(11));

-- Location: IOOBUF_X54_Y21_N39
\ALU_Result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(12));

-- Location: IOOBUF_X43_Y0_N19
\ALU_Result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(13));

-- Location: IOOBUF_X48_Y0_N42
\ALU_Result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(14));

-- Location: IOOBUF_X54_Y17_N56
\ALU_Result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(15));

-- Location: IOOBUF_X36_Y45_N2
\ALU_Result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(16));

-- Location: IOOBUF_X54_Y21_N56
\ALU_Result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(17));

-- Location: IOOBUF_X36_Y0_N19
\ALU_Result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(18));

-- Location: IOOBUF_X10_Y0_N76
\ALU_Result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(19));

-- Location: IOOBUF_X46_Y45_N93
\ALU_Result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(20));

-- Location: IOOBUF_X51_Y0_N19
\ALU_Result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(21));

-- Location: IOOBUF_X12_Y0_N2
\ALU_Result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(22));

-- Location: IOOBUF_X44_Y45_N19
\ALU_Result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(23));

-- Location: IOOBUF_X48_Y0_N59
\ALU_Result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(24));

-- Location: IOOBUF_X34_Y45_N2
\ALU_Result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(25));

-- Location: IOOBUF_X54_Y19_N39
\ALU_Result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(26));

-- Location: IOOBUF_X54_Y19_N22
\ALU_Result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(27));

-- Location: IOOBUF_X22_Y45_N36
\ALU_Result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(28));

-- Location: IOOBUF_X22_Y45_N53
\ALU_Result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(29));

-- Location: IOOBUF_X54_Y19_N56
\ALU_Result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(30));

-- Location: IOOBUF_X54_Y14_N45
\ALU_Result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Result(31));

-- Location: IOIBUF_X12_Y0_N35
\ALUControl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(0),
	o => \ALUControl[0]~input_o\);

-- Location: IOIBUF_X34_Y45_N18
\ALUControl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(1),
	o => \ALUControl[1]~input_o\);

-- Location: IOIBUF_X12_Y45_N52
\ALUControl[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(2),
	o => \ALUControl[2]~input_o\);

-- Location: IOIBUF_X16_Y45_N41
\ALUControl[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(3),
	o => \ALUControl[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\inputA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(0),
	o => \inputA[0]~input_o\);

-- Location: IOIBUF_X20_Y45_N52
\inputA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(1),
	o => \inputA[1]~input_o\);

-- Location: IOIBUF_X32_Y45_N58
\inputA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(2),
	o => \inputA[2]~input_o\);

-- Location: IOIBUF_X16_Y45_N92
\inputA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(3),
	o => \inputA[3]~input_o\);

-- Location: IOIBUF_X48_Y45_N35
\inputA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(4),
	o => \inputA[4]~input_o\);

-- Location: IOIBUF_X38_Y45_N52
\inputA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(5),
	o => \inputA[5]~input_o\);

-- Location: IOIBUF_X52_Y45_N1
\inputA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(6),
	o => \inputA[6]~input_o\);

-- Location: IOIBUF_X44_Y45_N35
\inputA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(7),
	o => \inputA[7]~input_o\);

-- Location: IOIBUF_X51_Y0_N52
\inputA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(8),
	o => \inputA[8]~input_o\);

-- Location: IOIBUF_X42_Y45_N1
\inputA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(9),
	o => \inputA[9]~input_o\);

-- Location: IOIBUF_X43_Y45_N52
\inputA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(10),
	o => \inputA[10]~input_o\);

-- Location: IOIBUF_X16_Y45_N75
\inputA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(11),
	o => \inputA[11]~input_o\);

-- Location: IOIBUF_X54_Y15_N38
\inputA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(12),
	o => \inputA[12]~input_o\);

-- Location: IOIBUF_X10_Y45_N35
\inputA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(13),
	o => \inputA[13]~input_o\);

-- Location: IOIBUF_X8_Y45_N92
\inputA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(14),
	o => \inputA[14]~input_o\);

-- Location: IOIBUF_X0_Y21_N21
\inputA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(15),
	o => \inputA[15]~input_o\);

-- Location: IOIBUF_X46_Y45_N75
\inputA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(16),
	o => \inputA[16]~input_o\);

-- Location: IOIBUF_X18_Y45_N52
\inputA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(17),
	o => \inputA[17]~input_o\);

-- Location: IOIBUF_X0_Y21_N4
\inputA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(18),
	o => \inputA[18]~input_o\);

-- Location: IOIBUF_X14_Y45_N35
\inputA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(19),
	o => \inputA[19]~input_o\);

-- Location: IOIBUF_X12_Y45_N35
\inputA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(20),
	o => \inputA[20]~input_o\);

-- Location: IOIBUF_X52_Y45_N18
\inputA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(21),
	o => \inputA[21]~input_o\);

-- Location: IOIBUF_X52_Y45_N52
\inputA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(22),
	o => \inputA[22]~input_o\);

-- Location: IOIBUF_X43_Y0_N52
\inputA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(23),
	o => \inputA[23]~input_o\);

-- Location: IOIBUF_X54_Y16_N38
\inputA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(24),
	o => \inputA[24]~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\inputA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(25),
	o => \inputA[25]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\inputA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(26),
	o => \inputA[26]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\inputA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(27),
	o => \inputA[27]~input_o\);

-- Location: IOIBUF_X51_Y0_N35
\inputA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(28),
	o => \inputA[28]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\inputA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(29),
	o => \inputA[29]~input_o\);

-- Location: IOIBUF_X38_Y45_N1
\inputA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(30),
	o => \inputA[30]~input_o\);

-- Location: IOIBUF_X54_Y18_N78
\inputA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(31),
	o => \inputA[31]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\inputB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(0),
	o => \inputB[0]~input_o\);

-- Location: IOIBUF_X32_Y45_N41
\inputB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(1),
	o => \inputB[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N35
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
\inputB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(3),
	o => \inputB[3]~input_o\);

-- Location: IOIBUF_X22_Y45_N1
\inputB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(4),
	o => \inputB[4]~input_o\);

-- Location: IOIBUF_X44_Y0_N52
\inputB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(5),
	o => \inputB[5]~input_o\);

-- Location: IOIBUF_X54_Y14_N95
\inputB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(6),
	o => \inputB[6]~input_o\);

-- Location: IOIBUF_X18_Y45_N1
\inputB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(7),
	o => \inputB[7]~input_o\);

-- Location: IOIBUF_X20_Y45_N35
\inputB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(8),
	o => \inputB[8]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\inputB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(9),
	o => \inputB[9]~input_o\);

-- Location: IOIBUF_X25_Y0_N52
\inputB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(10),
	o => \inputB[10]~input_o\);

-- Location: IOIBUF_X18_Y45_N35
\inputB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(11),
	o => \inputB[11]~input_o\);

-- Location: IOIBUF_X32_Y45_N92
\inputB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(12),
	o => \inputB[12]~input_o\);

-- Location: IOIBUF_X12_Y45_N18
\inputB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(13),
	o => \inputB[13]~input_o\);

-- Location: IOIBUF_X54_Y21_N4
\inputB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(14),
	o => \inputB[14]~input_o\);

-- Location: IOIBUF_X25_Y0_N35
\inputB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(15),
	o => \inputB[15]~input_o\);

-- Location: IOIBUF_X46_Y45_N58
\inputB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(16),
	o => \inputB[16]~input_o\);

-- Location: IOIBUF_X8_Y45_N41
\inputB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(17),
	o => \inputB[17]~input_o\);

-- Location: IOIBUF_X54_Y19_N4
\inputB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(18),
	o => \inputB[18]~input_o\);

-- Location: IOIBUF_X50_Y45_N1
\inputB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(19),
	o => \inputB[19]~input_o\);

-- Location: IOIBUF_X48_Y45_N18
\inputB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(20),
	o => \inputB[20]~input_o\);

-- Location: IOIBUF_X16_Y0_N75
\inputB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(21),
	o => \inputB[21]~input_o\);

-- Location: IOIBUF_X42_Y45_N52
\inputB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(22),
	o => \inputB[22]~input_o\);

-- Location: IOIBUF_X54_Y15_N21
\inputB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(23),
	o => \inputB[23]~input_o\);

-- Location: IOIBUF_X43_Y45_N35
\inputB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(24),
	o => \inputB[24]~input_o\);

-- Location: IOIBUF_X54_Y17_N4
\inputB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(25),
	o => \inputB[25]~input_o\);

-- Location: IOIBUF_X54_Y16_N21
\inputB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(26),
	o => \inputB[26]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\inputB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(27),
	o => \inputB[27]~input_o\);

-- Location: IOIBUF_X48_Y45_N52
\inputB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(28),
	o => \inputB[28]~input_o\);

-- Location: IOIBUF_X10_Y45_N18
\inputB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(29),
	o => \inputB[29]~input_o\);

-- Location: IOIBUF_X0_Y20_N4
\inputB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(30),
	o => \inputB[30]~input_o\);

-- Location: IOIBUF_X38_Y45_N35
\inputB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(31),
	o => \inputB[31]~input_o\);

-- Location: IOIBUF_X50_Y0_N18
\shamt[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(0),
	o => \shamt[0]~input_o\);

-- Location: IOIBUF_X14_Y45_N52
\shamt[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(1),
	o => \shamt[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N75
\shamt[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(2),
	o => \shamt[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\shamt[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(3),
	o => \shamt[3]~input_o\);

-- Location: LABCELL_X26_Y42_N3
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


