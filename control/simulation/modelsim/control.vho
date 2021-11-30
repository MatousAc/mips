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

-- DATE "11/30/2021 17:14:05"

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

ENTITY 	control IS
    PORT (
	opcode : IN std_logic_vector(5 DOWNTO 0);
	funct : IN std_logic_vector(5 DOWNTO 0);
	RegDst : OUT std_logic;
	ALUsrc : OUT std_logic;
	Jump : OUT std_logic;
	Jal : OUT std_logic;
	Jr : OUT std_logic;
	Beq : OUT std_logic;
	Bne : OUT std_logic;
	MemRead : OUT std_logic;
	MemWrite : OUT std_logic;
	RegWrite : OUT std_logic;
	MemtoReg : OUT std_logic;
	ALUControl : OUT std_logic_vector(3 DOWNTO 0)
	);
END control;

-- Design Ports Information
-- RegDst	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUsrc	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jump	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jal	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jr	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Beq	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bne	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemRead	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_funct : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_ALUsrc : std_logic;
SIGNAL ww_Jump : std_logic;
SIGNAL ww_Jal : std_logic;
SIGNAL ww_Jr : std_logic;
SIGNAL ww_Beq : std_logic;
SIGNAL ww_Bne : std_logic;
SIGNAL ww_MemRead : std_logic;
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_MemtoReg : std_logic;
SIGNAL ww_ALUControl : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[5]~input_o\ : std_logic;
SIGNAL \opcode[4]~input_o\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ALUsrc~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \funct[4]~input_o\ : std_logic;
SIGNAL \funct[5]~input_o\ : std_logic;
SIGNAL \funct[2]~input_o\ : std_logic;
SIGNAL \funct[1]~input_o\ : std_logic;
SIGNAL \funct[0]~input_o\ : std_logic;
SIGNAL \funct[3]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Jr~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \ALUsrc~1_combout\ : std_logic;
SIGNAL \RegWrite~0_combout\ : std_logic;
SIGNAL \RegWrite~1_combout\ : std_logic;
SIGNAL \ALUsrc~2_combout\ : std_logic;
SIGNAL \ALUControl~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ALUControl~1_combout\ : std_logic;
SIGNAL \ALUControl~2_combout\ : std_logic;
SIGNAL \ALUControl~3_combout\ : std_logic;
SIGNAL \ALUControl~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \ALUControl~5_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALUControl~6_combout\ : std_logic;
SIGNAL \ALUControl~7_combout\ : std_logic;
SIGNAL \ALT_INV_funct[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUControl~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl~3_combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl~2_combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALUsrc~2_combout\ : std_logic;
SIGNAL \ALT_INV_RegWrite~0_combout\ : std_logic;
SIGNAL \ALT_INV_Jr~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_opcode <= opcode;
ww_funct <= funct;
RegDst <= ww_RegDst;
ALUsrc <= ww_ALUsrc;
Jump <= ww_Jump;
Jal <= ww_Jal;
Jr <= ww_Jr;
Beq <= ww_Beq;
Bne <= ww_Bne;
MemRead <= ww_MemRead;
MemWrite <= ww_MemWrite;
RegWrite <= ww_RegWrite;
MemtoReg <= ww_MemtoReg;
ALUControl <= ww_ALUControl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_funct[5]~input_o\ <= NOT \funct[5]~input_o\;
\ALT_INV_funct[0]~input_o\ <= NOT \funct[0]~input_o\;
\ALT_INV_funct[4]~input_o\ <= NOT \funct[4]~input_o\;
\ALT_INV_funct[3]~input_o\ <= NOT \funct[3]~input_o\;
\ALT_INV_funct[2]~input_o\ <= NOT \funct[2]~input_o\;
\ALT_INV_funct[1]~input_o\ <= NOT \funct[1]~input_o\;
\ALT_INV_opcode[5]~input_o\ <= NOT \opcode[5]~input_o\;
\ALT_INV_opcode[4]~input_o\ <= NOT \opcode[4]~input_o\;
\ALT_INV_opcode[3]~input_o\ <= NOT \opcode[3]~input_o\;
\ALT_INV_opcode[2]~input_o\ <= NOT \opcode[2]~input_o\;
\ALT_INV_opcode[0]~input_o\ <= NOT \opcode[0]~input_o\;
\ALT_INV_opcode[1]~input_o\ <= NOT \opcode[1]~input_o\;
\ALT_INV_ALUControl~6_combout\ <= NOT \ALUControl~6_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_ALUControl~3_combout\ <= NOT \ALUControl~3_combout\;
\ALT_INV_ALUControl~2_combout\ <= NOT \ALUControl~2_combout\;
\ALT_INV_ALUControl~0_combout\ <= NOT \ALUControl~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_ALUsrc~2_combout\ <= NOT \ALUsrc~2_combout\;
\ALT_INV_RegWrite~0_combout\ <= NOT \RegWrite~0_combout\;
\ALT_INV_Jr~0_combout\ <= NOT \Jr~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X11_Y0_N19
\RegDst~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_RegDst);

-- Location: IOOBUF_X14_Y0_N36
\ALUsrc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUsrc~0_combout\,
	devoe => ww_devoe,
	o => ww_ALUsrc);

-- Location: IOOBUF_X18_Y0_N19
\Jump~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_Jump);

-- Location: IOOBUF_X14_Y0_N53
\Jal~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_Jal);

-- Location: IOOBUF_X11_Y0_N2
\Jr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Jr~0_combout\,
	devoe => ww_devoe,
	o => ww_Jr);

-- Location: IOOBUF_X43_Y0_N53
\Beq~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Beq);

-- Location: IOOBUF_X0_Y21_N5
\Bne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Bne);

-- Location: IOOBUF_X18_Y0_N2
\MemRead~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~0_combout\,
	devoe => ww_devoe,
	o => ww_MemRead);

-- Location: IOOBUF_X19_Y0_N36
\MemWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUsrc~1_combout\,
	devoe => ww_devoe,
	o => ww_MemWrite);

-- Location: IOOBUF_X10_Y0_N76
\RegWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegWrite~1_combout\,
	devoe => ww_devoe,
	o => ww_RegWrite);

-- Location: IOOBUF_X16_Y0_N59
\MemtoReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~0_combout\,
	devoe => ww_devoe,
	o => ww_MemtoReg);

-- Location: IOOBUF_X10_Y0_N59
\ALUControl[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl~1_combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(0));

-- Location: IOOBUF_X10_Y0_N42
\ALUControl[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl~4_combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(1));

-- Location: IOOBUF_X12_Y0_N2
\ALUControl[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl~5_combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(2));

-- Location: IOOBUF_X11_Y0_N36
\ALUControl[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl~7_combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(3));

-- Location: IOIBUF_X16_Y0_N41
\opcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\opcode[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(5),
	o => \opcode[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\opcode[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(4),
	o => \opcode[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N75
\opcode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N52
\opcode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N52
\opcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: LABCELL_X14_Y2_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\opcode[2]~input_o\ & ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & (!\opcode[5]~input_o\ & (!\opcode[4]~input_o\ & !\opcode[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[5]~input_o\,
	datac => \ALT_INV_opcode[4]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X14_Y2_N36
\ALUsrc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUsrc~0_combout\ = ( \opcode[2]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[5]~input_o\ & (!\opcode[4]~input_o\ & \opcode[3]~input_o\)) ) ) ) # ( !\opcode[2]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[4]~input_o\ & ((!\opcode[1]~input_o\ & 
-- (!\opcode[5]~input_o\ & \opcode[3]~input_o\)) # (\opcode[1]~input_o\ & (\opcode[5]~input_o\)))) ) ) ) # ( !\opcode[2]~input_o\ & ( !\opcode[0]~input_o\ & ( (!\opcode[5]~input_o\ & (!\opcode[4]~input_o\ & \opcode[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000010000100100000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[5]~input_o\,
	datac => \ALT_INV_opcode[4]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \ALUsrc~0_combout\);

-- Location: LABCELL_X14_Y2_N42
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\opcode[2]~input_o\ & ( !\opcode[0]~input_o\ & ( (\opcode[1]~input_o\ & (!\opcode[5]~input_o\ & (!\opcode[4]~input_o\ & !\opcode[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[5]~input_o\,
	datac => \ALT_INV_opcode[4]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X14_Y2_N48
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !\opcode[2]~input_o\ & ( \opcode[0]~input_o\ & ( (\opcode[1]~input_o\ & (!\opcode[5]~input_o\ & (!\opcode[4]~input_o\ & !\opcode[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[5]~input_o\,
	datac => \ALT_INV_opcode[4]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: IOIBUF_X12_Y0_N35
\funct[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(4),
	o => \funct[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N92
\funct[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(5),
	o => \funct[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\funct[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(2),
	o => \funct[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\funct[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(1),
	o => \funct[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\funct[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(0),
	o => \funct[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\funct[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(3),
	o => \funct[3]~input_o\);

-- Location: MLABCELL_X13_Y2_N0
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\funct[0]~input_o\ & ( \funct[3]~input_o\ & ( (!\funct[4]~input_o\ & (!\funct[5]~input_o\ & (!\funct[2]~input_o\ & !\funct[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[4]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \ALT_INV_funct[2]~input_o\,
	datad => \ALT_INV_funct[1]~input_o\,
	datae => \ALT_INV_funct[0]~input_o\,
	dataf => \ALT_INV_funct[3]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X13_Y2_N9
\Jr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Jr~0_combout\ = (!\Equal1~0_combout\) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	combout => \Jr~0_combout\);

-- Location: LABCELL_X14_Y2_N54
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( !\opcode[2]~input_o\ & ( \opcode[0]~input_o\ & ( (\opcode[1]~input_o\ & (\opcode[5]~input_o\ & (!\opcode[4]~input_o\ & !\opcode[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[5]~input_o\,
	datac => \ALT_INV_opcode[4]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LABCELL_X14_Y2_N3
\ALUsrc~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUsrc~1_combout\ = ( !\opcode[2]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[4]~input_o\ & (\opcode[3]~input_o\ & (\opcode[5]~input_o\ & \opcode[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[4]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[5]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \ALUsrc~1_combout\);

-- Location: LABCELL_X14_Y2_N6
\RegWrite~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegWrite~0_combout\ = ( \opcode[2]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[5]~input_o\ & (!\opcode[4]~input_o\ & \opcode[3]~input_o\)) ) ) ) # ( !\opcode[2]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[4]~input_o\ & ((!\opcode[1]~input_o\ & 
-- (!\opcode[5]~input_o\ & \opcode[3]~input_o\)) # (\opcode[1]~input_o\ & ((!\opcode[3]~input_o\))))) ) ) ) # ( !\opcode[2]~input_o\ & ( !\opcode[0]~input_o\ & ( (!\opcode[5]~input_o\ & (!\opcode[4]~input_o\ & \opcode[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000001010000100000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[5]~input_o\,
	datac => \ALT_INV_opcode[4]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \RegWrite~0_combout\);

-- Location: MLABCELL_X13_Y2_N6
\RegWrite~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegWrite~1_combout\ = ((!\Equal1~0_combout\ & \Equal0~0_combout\)) # (\RegWrite~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_RegWrite~0_combout\,
	combout => \RegWrite~1_combout\);

-- Location: LABCELL_X14_Y2_N15
\ALUsrc~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUsrc~2_combout\ = ( !\opcode[4]~input_o\ & ( !\opcode[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_opcode[4]~input_o\,
	combout => \ALUsrc~2_combout\);

-- Location: MLABCELL_X13_Y2_N15
\ALUControl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~0_combout\ = ( !\funct[0]~input_o\ & ( \funct[3]~input_o\ & ( (\funct[1]~input_o\ & (\funct[5]~input_o\ & !\funct[2]~input_o\)) ) ) ) # ( \funct[0]~input_o\ & ( !\funct[3]~input_o\ & ( (!\funct[1]~input_o\ & (\funct[5]~input_o\ & 
-- \funct[2]~input_o\)) ) ) ) # ( !\funct[0]~input_o\ & ( !\funct[3]~input_o\ & ( (\funct[1]~input_o\ & !\funct[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000101000000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[1]~input_o\,
	datac => \ALT_INV_funct[5]~input_o\,
	datad => \ALT_INV_funct[2]~input_o\,
	datae => \ALT_INV_funct[0]~input_o\,
	dataf => \ALT_INV_funct[3]~input_o\,
	combout => \ALUControl~0_combout\);

-- Location: LABCELL_X14_Y2_N21
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \opcode[0]~input_o\ & ( (\opcode[3]~input_o\ & \opcode[2]~input_o\) ) ) # ( !\opcode[0]~input_o\ & ( (\opcode[1]~input_o\ & (\opcode[3]~input_o\ & !\opcode[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X13_Y2_N18
\ALUControl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~1_combout\ = ( \Mux7~0_combout\ & ( (!\Equal0~0_combout\ & (\ALUsrc~2_combout\)) # (\Equal0~0_combout\ & (((\ALUControl~0_combout\ & !\funct[4]~input_o\)))) ) ) # ( !\Mux7~0_combout\ & ( (\ALUControl~0_combout\ & (!\funct[4]~input_o\ & 
-- \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000010101010011000000000000001100000101010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUsrc~2_combout\,
	datab => \ALT_INV_ALUControl~0_combout\,
	datac => \ALT_INV_funct[4]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Mux7~0_combout\,
	combout => \ALUControl~1_combout\);

-- Location: MLABCELL_X13_Y2_N24
\ALUControl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~2_combout\ = ( !\funct[0]~input_o\ & ( \funct[3]~input_o\ & ( (!\funct[2]~input_o\ & (\funct[5]~input_o\ & \funct[1]~input_o\)) ) ) ) # ( \funct[0]~input_o\ & ( !\funct[3]~input_o\ & ( (!\funct[2]~input_o\ & \funct[5]~input_o\) ) ) ) # ( 
-- !\funct[0]~input_o\ & ( !\funct[3]~input_o\ & ( !\funct[2]~input_o\ $ (!\funct[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110001000100010001000000010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \ALT_INV_funct[1]~input_o\,
	datae => \ALT_INV_funct[0]~input_o\,
	dataf => \ALT_INV_funct[3]~input_o\,
	combout => \ALUControl~2_combout\);

-- Location: LABCELL_X14_Y2_N18
\ALUControl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~3_combout\ = ( \opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & (!\opcode[5]~input_o\ & (!\opcode[3]~input_o\ $ (!\opcode[2]~input_o\)))) # (\opcode[1]~input_o\ & (!\opcode[2]~input_o\ & ((!\opcode[3]~input_o\) # (\opcode[5]~input_o\)))) ) ) # 
-- ( !\opcode[0]~input_o\ & ( (!\opcode[5]~input_o\ & ((!\opcode[3]~input_o\ & (!\opcode[1]~input_o\ & \opcode[2]~input_o\)) # (\opcode[3]~input_o\ & ((!\opcode[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010000000001100001000000001100101100000000110010110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[5]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \ALUControl~3_combout\);

-- Location: MLABCELL_X13_Y2_N30
\ALUControl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~4_combout\ = ( \opcode[4]~input_o\ & ( \ALUControl~3_combout\ & ( (\ALUControl~2_combout\ & (\Equal0~0_combout\ & !\funct[4]~input_o\)) ) ) ) # ( !\opcode[4]~input_o\ & ( \ALUControl~3_combout\ & ( (!\Equal0~0_combout\) # 
-- ((\ALUControl~2_combout\ & !\funct[4]~input_o\)) ) ) ) # ( \opcode[4]~input_o\ & ( !\ALUControl~3_combout\ & ( (\ALUControl~2_combout\ & (\Equal0~0_combout\ & !\funct[4]~input_o\)) ) ) ) # ( !\opcode[4]~input_o\ & ( !\ALUControl~3_combout\ & ( 
-- (\ALUControl~2_combout\ & (\Equal0~0_combout\ & !\funct[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000011011100110111000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl~2_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_funct[4]~input_o\,
	datae => \ALT_INV_opcode[4]~input_o\,
	dataf => \ALT_INV_ALUControl~3_combout\,
	combout => \ALUControl~4_combout\);

-- Location: MLABCELL_X13_Y2_N36
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !\funct[0]~input_o\ & ( \funct[3]~input_o\ & ( (!\funct[2]~input_o\ & \funct[1]~input_o\) ) ) ) # ( \funct[0]~input_o\ & ( !\funct[3]~input_o\ & ( \funct[1]~input_o\ ) ) ) # ( !\funct[0]~input_o\ & ( !\funct[3]~input_o\ & ( 
-- (!\funct[2]~input_o\ & \funct[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000011110000111100001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datac => \ALT_INV_funct[1]~input_o\,
	datae => \ALT_INV_funct[0]~input_o\,
	dataf => \ALT_INV_funct[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X14_Y2_N12
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \opcode[0]~input_o\ & ( (\opcode[2]~input_o\ & (!\opcode[1]~input_o\ $ (\opcode[3]~input_o\))) ) ) # ( !\opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (\opcode[1]~input_o\ & \opcode[3]~input_o\)) # (\opcode[2]~input_o\ & 
-- (!\opcode[1]~input_o\ & !\opcode[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X13_Y2_N42
\ALUControl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~5_combout\ = ( \funct[5]~input_o\ & ( \funct[4]~input_o\ & ( (\ALUsrc~2_combout\ & (!\Equal0~0_combout\ & \Mux5~0_combout\)) ) ) ) # ( !\funct[5]~input_o\ & ( \funct[4]~input_o\ & ( (\ALUsrc~2_combout\ & (!\Equal0~0_combout\ & 
-- \Mux5~0_combout\)) ) ) ) # ( \funct[5]~input_o\ & ( !\funct[4]~input_o\ & ( (!\Equal0~0_combout\ & (\ALUsrc~2_combout\ & ((\Mux5~0_combout\)))) # (\Equal0~0_combout\ & (((\Mux1~0_combout\)))) ) ) ) # ( !\funct[5]~input_o\ & ( !\funct[4]~input_o\ & ( 
-- (\ALUsrc~2_combout\ & (!\Equal0~0_combout\ & \Mux5~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000110100011100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUsrc~2_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_funct[5]~input_o\,
	dataf => \ALT_INV_funct[4]~input_o\,
	combout => \ALUControl~5_combout\);

-- Location: MLABCELL_X13_Y2_N51
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \funct[0]~input_o\ & ( (\funct[1]~input_o\ & (\funct[5]~input_o\ & \funct[2]~input_o\)) ) ) # ( !\funct[0]~input_o\ & ( !\funct[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000010111110000111100000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[1]~input_o\,
	datac => \ALT_INV_funct[5]~input_o\,
	datad => \ALT_INV_funct[2]~input_o\,
	datae => \ALT_INV_funct[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X14_Y2_N24
\ALUControl~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~6_combout\ = ( \opcode[2]~input_o\ & ( \opcode[0]~input_o\ & ( (\opcode[1]~input_o\ & (!\opcode[5]~input_o\ & (!\opcode[4]~input_o\ & \opcode[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[5]~input_o\,
	datac => \ALT_INV_opcode[4]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \ALUControl~6_combout\);

-- Location: MLABCELL_X13_Y2_N54
\ALUControl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~7_combout\ = ( \Equal0~0_combout\ & ( \funct[3]~input_o\ & ( \ALUControl~6_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \funct[3]~input_o\ & ( \ALUControl~6_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\funct[3]~input_o\ & ( ((\Mux0~0_combout\ & 
-- !\funct[4]~input_o\)) # (\ALUControl~6_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( !\funct[3]~input_o\ & ( \ALUControl~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011100110111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_ALUControl~6_combout\,
	datac => \ALT_INV_funct[4]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_funct[3]~input_o\,
	combout => \ALUControl~7_combout\);

-- Location: LABCELL_X17_Y18_N3
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


