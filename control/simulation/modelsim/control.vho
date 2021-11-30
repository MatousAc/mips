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

-- DATE "11/23/2021 21:07:16"

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
	RegDst : BUFFER std_logic;
	ALUsrc : BUFFER std_logic;
	Jump : BUFFER std_logic;
	Jal : BUFFER std_logic;
	Jr : BUFFER std_logic;
	Beq : BUFFER std_logic;
	Bne : BUFFER std_logic;
	MemRead : BUFFER std_logic;
	MemWrite : BUFFER std_logic;
	RegWrite : BUFFER std_logic;
	MemtoReg : BUFFER std_logic;
	ALUControl : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END control;

-- Design Ports Information
-- RegDst	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUsrc	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jump	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jal	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jr	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Beq	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bne	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemRead	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \opcode[4]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[5]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ALUsrc~0_combout\ : std_logic;
SIGNAL \RegDst$latch~combout\ : std_logic;
SIGNAL \ALUsrc~1_combout\ : std_logic;
SIGNAL \ALUsrc$latch~combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Jal~0_combout\ : std_logic;
SIGNAL \funct[2]~input_o\ : std_logic;
SIGNAL \funct[3]~input_o\ : std_logic;
SIGNAL \funct[0]~input_o\ : std_logic;
SIGNAL \funct[1]~input_o\ : std_logic;
SIGNAL \funct[5]~input_o\ : std_logic;
SIGNAL \ALUControl~0_combout\ : std_logic;
SIGNAL \funct[4]~input_o\ : std_logic;
SIGNAL \Jr~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \MemRead$latch~combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \MemWrite$latch~combout\ : std_logic;
SIGNAL \MemWrite~0_combout\ : std_logic;
SIGNAL \RegWrite~0_combout\ : std_logic;
SIGNAL \Beq~0_combout\ : std_logic;
SIGNAL \RegWrite$latch~combout\ : std_logic;
SIGNAL \MemtoReg~0_combout\ : std_logic;
SIGNAL \MemtoReg$latch~combout\ : std_logic;
SIGNAL \ALUControl~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ALUControl~2_combout\ : std_logic;
SIGNAL \ALUControl~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \ALUControl~4_combout\ : std_logic;
SIGNAL \ALUControl~5_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \ALUControl~6_combout\ : std_logic;
SIGNAL \ALUControl~7_combout\ : std_logic;
SIGNAL \ALUControl~8_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \ALUControl~9_combout\ : std_logic;
SIGNAL \ALT_INV_funct[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_MemtoReg$latch~combout\ : std_logic;
SIGNAL \ALT_INV_RegWrite$latch~combout\ : std_logic;
SIGNAL \ALT_INV_MemWrite$latch~combout\ : std_logic;
SIGNAL \ALT_INV_MemRead$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALUsrc$latch~combout\ : std_logic;
SIGNAL \ALT_INV_RegDst$latch~combout\ : std_logic;
SIGNAL \ALT_INV_MemtoReg~0_combout\ : std_logic;
SIGNAL \ALT_INV_Beq~0_combout\ : std_logic;
SIGNAL \ALT_INV_RegWrite~0_combout\ : std_logic;
SIGNAL \ALT_INV_MemWrite~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALUsrc~1_combout\ : std_logic;
SIGNAL \ALT_INV_ALUsrc~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl~1_combout\ : std_logic;
SIGNAL \ALT_INV_Jr~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl~0_combout\ : std_logic;
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
\ALT_INV_funct[1]~input_o\ <= NOT \funct[1]~input_o\;
\ALT_INV_funct[0]~input_o\ <= NOT \funct[0]~input_o\;
\ALT_INV_funct[3]~input_o\ <= NOT \funct[3]~input_o\;
\ALT_INV_funct[2]~input_o\ <= NOT \funct[2]~input_o\;
\ALT_INV_funct[4]~input_o\ <= NOT \funct[4]~input_o\;
\ALT_INV_opcode[5]~input_o\ <= NOT \opcode[5]~input_o\;
\ALT_INV_opcode[4]~input_o\ <= NOT \opcode[4]~input_o\;
\ALT_INV_opcode[3]~input_o\ <= NOT \opcode[3]~input_o\;
\ALT_INV_opcode[2]~input_o\ <= NOT \opcode[2]~input_o\;
\ALT_INV_opcode[0]~input_o\ <= NOT \opcode[0]~input_o\;
\ALT_INV_opcode[1]~input_o\ <= NOT \opcode[1]~input_o\;
\ALT_INV_MemtoReg$latch~combout\ <= NOT \MemtoReg$latch~combout\;
\ALT_INV_RegWrite$latch~combout\ <= NOT \RegWrite$latch~combout\;
\ALT_INV_MemWrite$latch~combout\ <= NOT \MemWrite$latch~combout\;
\ALT_INV_MemRead$latch~combout\ <= NOT \MemRead$latch~combout\;
\ALT_INV_ALUsrc$latch~combout\ <= NOT \ALUsrc$latch~combout\;
\ALT_INV_RegDst$latch~combout\ <= NOT \RegDst$latch~combout\;
\ALT_INV_MemtoReg~0_combout\ <= NOT \MemtoReg~0_combout\;
\ALT_INV_Beq~0_combout\ <= NOT \Beq~0_combout\;
\ALT_INV_RegWrite~0_combout\ <= NOT \RegWrite~0_combout\;
\ALT_INV_MemWrite~0_combout\ <= NOT \MemWrite~0_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_ALUsrc~1_combout\ <= NOT \ALUsrc~1_combout\;
\ALT_INV_ALUsrc~0_combout\ <= NOT \ALUsrc~0_combout\;
\ALT_INV_ALUControl~8_combout\ <= NOT \ALUControl~8_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_ALUControl~6_combout\ <= NOT \ALUControl~6_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_ALUControl~4_combout\ <= NOT \ALUControl~4_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_ALUControl~2_combout\ <= NOT \ALUControl~2_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_ALUControl~1_combout\ <= NOT \ALUControl~1_combout\;
\ALT_INV_Jr~0_combout\ <= NOT \Jr~0_combout\;
\ALT_INV_ALUControl~0_combout\ <= NOT \ALUControl~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X12_Y0_N19
\RegDst~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDst$latch~combout\,
	devoe => ww_devoe,
	o => ww_RegDst);

-- Location: IOOBUF_X14_Y0_N19
\ALUsrc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUsrc$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALUsrc);

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X19_Y0_N2
\Jal~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Jal~0_combout\,
	devoe => ww_devoe,
	o => ww_Jal);

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X50_Y45_N53
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

-- Location: IOOBUF_X54_Y16_N5
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

-- Location: IOOBUF_X12_Y0_N53
\MemRead~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemRead$latch~combout\,
	devoe => ww_devoe,
	o => ww_MemRead);

-- Location: IOOBUF_X19_Y0_N19
\MemWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemWrite$latch~combout\,
	devoe => ww_devoe,
	o => ww_MemWrite);

-- Location: IOOBUF_X10_Y0_N93
\RegWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegWrite$latch~combout\,
	devoe => ww_devoe,
	o => ww_RegWrite);

-- Location: IOOBUF_X10_Y0_N59
\MemtoReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemtoReg$latch~combout\,
	devoe => ww_devoe,
	o => ww_MemtoReg);

-- Location: IOOBUF_X16_Y0_N59
\ALUControl[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl~3_combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(0));

-- Location: IOOBUF_X14_Y0_N36
\ALUControl[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl~5_combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(1));

-- Location: IOOBUF_X12_Y0_N36
\ALUControl[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl~7_combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(2));

-- Location: IOOBUF_X18_Y0_N19
\ALUControl[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl~9_combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(3));

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

-- Location: IOIBUF_X16_Y0_N92
\opcode[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(4),
	o => \opcode[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N35
\opcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N41
\opcode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\opcode[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(5),
	o => \opcode[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N52
\opcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: LABCELL_X10_Y1_N54
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\opcode[5]~input_o\ & ( !\opcode[0]~input_o\ & ( (!\opcode[3]~input_o\ & (!\opcode[4]~input_o\ & (!\opcode[1]~input_o\ & !\opcode[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[3]~input_o\,
	datab => \ALT_INV_opcode[4]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X13_Y1_N33
\ALUsrc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUsrc~0_combout\ = ( \opcode[5]~input_o\ & ( \opcode[1]~input_o\ ) ) # ( !\opcode[5]~input_o\ & ( \opcode[1]~input_o\ & ( ((\opcode[2]~input_o\) # (\opcode[4]~input_o\)) # (\opcode[3]~input_o\) ) ) ) # ( \opcode[5]~input_o\ & ( !\opcode[1]~input_o\ ) ) 
-- # ( !\opcode[5]~input_o\ & ( !\opcode[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[3]~input_o\,
	datab => \ALT_INV_opcode[4]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \ALUsrc~0_combout\);

-- Location: MLABCELL_X13_Y1_N6
\RegDst$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegDst$latch~combout\ = ( \RegDst$latch~combout\ & ( (!\ALUsrc~0_combout\) # (\Equal0~0_combout\) ) ) # ( !\RegDst$latch~combout\ & ( \Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_ALUsrc~0_combout\,
	dataf => \ALT_INV_RegDst$latch~combout\,
	combout => \RegDst$latch~combout\);

-- Location: LABCELL_X14_Y1_N12
\ALUsrc~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUsrc~1_combout\ = ( !\opcode[4]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[5]~input_o\ & (\opcode[3]~input_o\ & (!\opcode[0]~input_o\ $ (\opcode[2]~input_o\)))) # (\opcode[5]~input_o\ & (\opcode[0]~input_o\ & ((!\opcode[2]~input_o\)))) ) ) ) # ( 
-- !\opcode[4]~input_o\ & ( !\opcode[1]~input_o\ & ( (\opcode[3]~input_o\ & (!\opcode[5]~input_o\ & ((!\opcode[2]~input_o\) # (\opcode[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000010000000000000000000000100101000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[5]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_opcode[4]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \ALUsrc~1_combout\);

-- Location: LABCELL_X14_Y1_N6
\ALUsrc$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUsrc$latch~combout\ = ( \ALUsrc$latch~combout\ & ( !\Equal0~0_combout\ ) ) # ( !\ALUsrc$latch~combout\ & ( (\ALUsrc~1_combout\ & !\Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALUsrc~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_ALUsrc$latch~combout\,
	combout => \ALUsrc$latch~combout\);

-- Location: LABCELL_X10_Y1_N42
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\opcode[5]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[4]~input_o\ & (!\opcode[3]~input_o\ & !\opcode[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[4]~input_o\,
	datac => \ALT_INV_opcode[3]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X16_Y1_N36
\Jal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Jal~0_combout\ = ( !\opcode[3]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[4]~input_o\ & (!\opcode[2]~input_o\ & (!\opcode[5]~input_o\ & \opcode[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[4]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_opcode[5]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Jal~0_combout\);

-- Location: IOIBUF_X11_Y0_N18
\funct[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(2),
	o => \funct[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\funct[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(3),
	o => \funct[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\funct[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(0),
	o => \funct[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\funct[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(1),
	o => \funct[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\funct[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(5),
	o => \funct[5]~input_o\);

-- Location: MLABCELL_X13_Y1_N3
\ALUControl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~0_combout\ = ( !\funct[5]~input_o\ & ( (!\funct[0]~input_o\ & !\funct[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[0]~input_o\,
	datab => \ALT_INV_funct[1]~input_o\,
	dataf => \ALT_INV_funct[5]~input_o\,
	combout => \ALUControl~0_combout\);

-- Location: IOIBUF_X10_Y0_N41
\funct[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(4),
	o => \funct[4]~input_o\);

-- Location: MLABCELL_X13_Y1_N9
\Jr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Jr~0_combout\ = ( \funct[4]~input_o\ ) # ( !\funct[4]~input_o\ & ( ((!\Equal0~0_combout\) # ((!\funct[3]~input_o\) # (!\ALUControl~0_combout\))) # (\funct[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101111111111111110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_funct[3]~input_o\,
	datad => \ALT_INV_ALUControl~0_combout\,
	dataf => \ALT_INV_funct[4]~input_o\,
	combout => \Jr~0_combout\);

-- Location: LABCELL_X10_Y1_N24
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \opcode[5]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[3]~input_o\ & (!\opcode[4]~input_o\ & (\opcode[1]~input_o\ & !\opcode[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[3]~input_o\,
	datab => \ALT_INV_opcode[4]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X10_Y1_N18
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \opcode[5]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[4]~input_o\ & (\opcode[3]~input_o\ & \opcode[0]~input_o\))) ) ) ) # ( !\opcode[5]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[4]~input_o\ & 
-- (!\opcode[2]~input_o\ $ (((\opcode[3]~input_o\ & \opcode[0]~input_o\))))) ) ) ) # ( !\opcode[5]~input_o\ & ( !\opcode[1]~input_o\ & ( (!\opcode[4]~input_o\ & ((!\opcode[0]~input_o\ & (!\opcode[2]~input_o\)) # (\opcode[0]~input_o\ & 
-- ((\opcode[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000001100000000000000000010001000100001000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[4]~input_o\,
	datac => \ALT_INV_opcode[3]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X12_Y1_N39
\MemRead$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemRead$latch~combout\ = ( !\comb~0_combout\ & ( \MemRead$latch~combout\ ) ) # ( !\comb~0_combout\ & ( !\MemRead$latch~combout\ & ( \comb~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_comb~1_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_MemRead$latch~combout\,
	combout => \MemRead$latch~combout\);

-- Location: LABCELL_X16_Y1_N12
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \opcode[3]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[4]~input_o\ & (!\opcode[2]~input_o\ & (\opcode[5]~input_o\ & \opcode[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[4]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_opcode[5]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X16_Y1_N30
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \opcode[3]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[4]~input_o\ & (!\opcode[5]~input_o\ & (!\opcode[2]~input_o\ $ (\opcode[0]~input_o\)))) ) ) ) # ( !\opcode[3]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[4]~input_o\ & 
-- (!\opcode[2]~input_o\ & ((!\opcode[5]~input_o\) # (\opcode[0]~input_o\)))) ) ) ) # ( \opcode[3]~input_o\ & ( !\opcode[1]~input_o\ & ( (!\opcode[4]~input_o\ & (!\opcode[5]~input_o\ & ((!\opcode[2]~input_o\) # (\opcode[0]~input_o\)))) ) ) ) # ( 
-- !\opcode[3]~input_o\ & ( !\opcode[1]~input_o\ & ( (!\opcode[4]~input_o\ & (!\opcode[2]~input_o\ & (!\opcode[5]~input_o\ & !\opcode[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000001010000010000000100010001000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[4]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_opcode[5]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X16_Y1_N6
\MemWrite$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemWrite$latch~combout\ = ( \MemWrite$latch~combout\ & ( !\comb~2_combout\ ) ) # ( !\MemWrite$latch~combout\ & ( (\comb~3_combout\ & !\comb~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~3_combout\,
	datad => \ALT_INV_comb~2_combout\,
	dataf => \ALT_INV_MemWrite$latch~combout\,
	combout => \MemWrite$latch~combout\);

-- Location: LABCELL_X10_Y1_N30
\MemWrite~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemWrite~0_combout\ = ( \opcode[5]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[3]~input_o\ & (!\opcode[4]~input_o\ & (\opcode[1]~input_o\ & !\opcode[2]~input_o\))) ) ) ) # ( !\opcode[5]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[4]~input_o\ & 
-- (!\opcode[3]~input_o\ $ (((!\opcode[1]~input_o\) # (\opcode[2]~input_o\))))) ) ) ) # ( !\opcode[5]~input_o\ & ( !\opcode[0]~input_o\ & ( (\opcode[3]~input_o\ & (!\opcode[4]~input_o\ & !\opcode[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000000000000000000001001000010001000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[3]~input_o\,
	datab => \ALT_INV_opcode[4]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \MemWrite~0_combout\);

-- Location: LABCELL_X10_Y1_N48
\RegWrite~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegWrite~0_combout\ = ( \ALUControl~0_combout\ & ( \funct[2]~input_o\ & ( (\Equal0~0_combout\) # (\MemWrite~0_combout\) ) ) ) # ( !\ALUControl~0_combout\ & ( \funct[2]~input_o\ & ( (\Equal0~0_combout\) # (\MemWrite~0_combout\) ) ) ) # ( 
-- \ALUControl~0_combout\ & ( !\funct[2]~input_o\ & ( (!\Equal0~0_combout\ & (\MemWrite~0_combout\)) # (\Equal0~0_combout\ & (((!\funct[3]~input_o\) # (\funct[4]~input_o\)))) ) ) ) # ( !\ALUControl~0_combout\ & ( !\funct[2]~input_o\ & ( (\Equal0~0_combout\) 
-- # (\MemWrite~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101000111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MemWrite~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_funct[3]~input_o\,
	datad => \ALT_INV_funct[4]~input_o\,
	datae => \ALT_INV_ALUControl~0_combout\,
	dataf => \ALT_INV_funct[2]~input_o\,
	combout => \RegWrite~0_combout\);

-- Location: LABCELL_X10_Y1_N6
\Beq~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Beq~0_combout\ = ( \opcode[5]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[4]~input_o\ & (\opcode[1]~input_o\ & !\opcode[2]~input_o\)) ) ) ) # ( !\opcode[5]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[4]~input_o\ & (!\opcode[3]~input_o\ $ 
-- (((!\opcode[1]~input_o\) # (\opcode[2]~input_o\))))) ) ) ) # ( !\opcode[5]~input_o\ & ( !\opcode[0]~input_o\ & ( (!\opcode[4]~input_o\ & !\opcode[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000001001000010001000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[3]~input_o\,
	datab => \ALT_INV_opcode[4]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Beq~0_combout\);

-- Location: LABCELL_X10_Y1_N3
\RegWrite$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegWrite$latch~combout\ = ( \RegWrite$latch~combout\ & ( \Beq~0_combout\ & ( \RegWrite~0_combout\ ) ) ) # ( !\RegWrite$latch~combout\ & ( \Beq~0_combout\ & ( \RegWrite~0_combout\ ) ) ) # ( \RegWrite$latch~combout\ & ( !\Beq~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RegWrite~0_combout\,
	datae => \ALT_INV_RegWrite$latch~combout\,
	dataf => \ALT_INV_Beq~0_combout\,
	combout => \RegWrite$latch~combout\);

-- Location: LABCELL_X10_Y1_N36
\MemtoReg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemtoReg~0_combout\ = ( \opcode[5]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[4]~input_o\ & (\opcode[1]~input_o\ & !\opcode[2]~input_o\)) ) ) ) # ( !\opcode[5]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[4]~input_o\ & (!\opcode[3]~input_o\ $ 
-- (((!\opcode[1]~input_o\) # (\opcode[2]~input_o\))))) ) ) ) # ( !\opcode[5]~input_o\ & ( !\opcode[0]~input_o\ & ( (\opcode[3]~input_o\ & (!\opcode[4]~input_o\ & !\opcode[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000000000000000000001001000010001000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[3]~input_o\,
	datab => \ALT_INV_opcode[4]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \MemtoReg~0_combout\);

-- Location: LABCELL_X10_Y1_N12
\MemtoReg$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemtoReg$latch~combout\ = ( \MemtoReg~0_combout\ & ( !\Equal0~0_combout\ & ( \comb~1_combout\ ) ) ) # ( !\MemtoReg~0_combout\ & ( !\Equal0~0_combout\ & ( \MemtoReg$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~1_combout\,
	datad => \ALT_INV_MemtoReg$latch~combout\,
	datae => \ALT_INV_MemtoReg~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \MemtoReg$latch~combout\);

-- Location: MLABCELL_X13_Y1_N36
\ALUControl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~1_combout\ = (!\opcode[5]~input_o\ & !\opcode[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_opcode[5]~input_o\,
	datad => \ALT_INV_opcode[4]~input_o\,
	combout => \ALUControl~1_combout\);

-- Location: MLABCELL_X13_Y1_N21
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \opcode[1]~input_o\ & ( (\opcode[3]~input_o\ & (!\opcode[0]~input_o\ $ (\opcode[2]~input_o\))) ) ) # ( !\opcode[1]~input_o\ & ( (\opcode[0]~input_o\ & (\opcode[2]~input_o\ & \opcode[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X13_Y1_N48
\ALUControl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~2_combout\ = ( \funct[0]~input_o\ & ( (\funct[5]~input_o\ & (!\funct[3]~input_o\ & ((!\funct[2]~input_o\) # (\funct[1]~input_o\)))) ) ) # ( !\funct[0]~input_o\ & ( (\funct[1]~input_o\ & ((!\funct[5]~input_o\ & ((!\funct[3]~input_o\))) # 
-- (\funct[5]~input_o\ & (!\funct[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000001010001000000000101000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[1]~input_o\,
	datac => \ALT_INV_funct[2]~input_o\,
	datad => \ALT_INV_funct[3]~input_o\,
	dataf => \ALT_INV_funct[0]~input_o\,
	combout => \ALUControl~2_combout\);

-- Location: MLABCELL_X13_Y1_N42
\ALUControl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~3_combout\ = ( \ALUControl~2_combout\ & ( (!\Equal0~0_combout\ & (\ALUControl~1_combout\ & (\Mux7~0_combout\))) # (\Equal0~0_combout\ & (((!\funct[4]~input_o\)))) ) ) # ( !\ALUControl~2_combout\ & ( (\ALUControl~1_combout\ & 
-- (!\Equal0~0_combout\ & \Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000110111000001000011011100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_funct[4]~input_o\,
	dataf => \ALT_INV_ALUControl~2_combout\,
	combout => \ALUControl~3_combout\);

-- Location: MLABCELL_X13_Y1_N0
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \funct[5]~input_o\ & ( (\funct[2]~input_o\ & (!\funct[0]~input_o\ $ (\funct[1]~input_o\))) ) ) # ( !\funct[5]~input_o\ & ( (!\funct[0]~input_o\ & !\funct[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[0]~input_o\,
	datab => \ALT_INV_funct[1]~input_o\,
	datac => \ALT_INV_funct[2]~input_o\,
	dataf => \ALT_INV_funct[5]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X13_Y1_N18
\ALUControl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~4_combout\ = ( \opcode[1]~input_o\ & ( (!\opcode[2]~input_o\ & (!\opcode[0]~input_o\ $ (((!\opcode[3]~input_o\) # (\opcode[5]~input_o\))))) ) ) # ( !\opcode[1]~input_o\ & ( (!\opcode[5]~input_o\ & (!\opcode[2]~input_o\ $ 
-- (!\opcode[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000001001000010001000100100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_opcode[3]~input_o\,
	datad => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \ALUControl~4_combout\);

-- Location: MLABCELL_X13_Y1_N24
\ALUControl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~5_combout\ = ( \opcode[4]~input_o\ & ( \ALUControl~4_combout\ & ( (\Mux2~0_combout\ & (!\funct[3]~input_o\ & (!\funct[4]~input_o\ & \Equal0~0_combout\))) ) ) ) # ( !\opcode[4]~input_o\ & ( \ALUControl~4_combout\ & ( (!\Equal0~0_combout\) # 
-- ((\Mux2~0_combout\ & (!\funct[3]~input_o\ & !\funct[4]~input_o\))) ) ) ) # ( \opcode[4]~input_o\ & ( !\ALUControl~4_combout\ & ( (\Mux2~0_combout\ & (!\funct[3]~input_o\ & (!\funct[4]~input_o\ & \Equal0~0_combout\))) ) ) ) # ( !\opcode[4]~input_o\ & ( 
-- !\ALUControl~4_combout\ & ( (\Mux2~0_combout\ & (!\funct[3]~input_o\ & (!\funct[4]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000011111111010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_funct[3]~input_o\,
	datac => \ALT_INV_funct[4]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_opcode[4]~input_o\,
	dataf => \ALT_INV_ALUControl~4_combout\,
	combout => \ALUControl~5_combout\);

-- Location: MLABCELL_X13_Y1_N54
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \opcode[0]~input_o\ & ( (\opcode[2]~input_o\ & (!\opcode[1]~input_o\ $ (\opcode[3]~input_o\))) ) ) # ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & (\opcode[2]~input_o\ & !\opcode[3]~input_o\)) # (\opcode[1]~input_o\ & 
-- (!\opcode[2]~input_o\ & \opcode[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X13_Y1_N51
\ALUControl~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~6_combout\ = ( \funct[0]~input_o\ & ( (\funct[5]~input_o\ & (\funct[1]~input_o\ & !\funct[3]~input_o\)) ) ) # ( !\funct[0]~input_o\ & ( (!\funct[1]~input_o\ & (!\funct[5]~input_o\ & (!\funct[3]~input_o\ $ (!\funct[2]~input_o\)))) # 
-- (\funct[1]~input_o\ & (!\funct[3]~input_o\ & (!\funct[5]~input_o\ $ (!\funct[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010100000000110001010000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[1]~input_o\,
	datac => \ALT_INV_funct[3]~input_o\,
	datad => \ALT_INV_funct[2]~input_o\,
	dataf => \ALT_INV_funct[0]~input_o\,
	combout => \ALUControl~6_combout\);

-- Location: MLABCELL_X13_Y1_N45
\ALUControl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~7_combout\ = ( \ALUControl~6_combout\ & ( (!\Equal0~0_combout\ & (\ALUControl~1_combout\ & ((\Mux5~0_combout\)))) # (\Equal0~0_combout\ & (((!\funct[4]~input_o\)))) ) ) # ( !\ALUControl~6_combout\ & ( (\ALUControl~1_combout\ & 
-- (!\Equal0~0_combout\ & \Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000110000011101000011000001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_funct[4]~input_o\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_ALUControl~6_combout\,
	combout => \ALUControl~7_combout\);

-- Location: MLABCELL_X13_Y1_N39
\ALUControl~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~8_combout\ = ( \funct[0]~input_o\ & ( (\funct[5]~input_o\ & (!\funct[3]~input_o\ & (!\funct[1]~input_o\ $ (!\funct[2]~input_o\)))) ) ) # ( !\funct[0]~input_o\ & ( (!\funct[5]~input_o\ & (((!\funct[3]~input_o\)))) # (\funct[5]~input_o\ & 
-- (\funct[1]~input_o\ & ((!\funct[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110100000101100011010000000010000010000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[1]~input_o\,
	datac => \ALT_INV_funct[3]~input_o\,
	datad => \ALT_INV_funct[2]~input_o\,
	dataf => \ALT_INV_funct[0]~input_o\,
	combout => \ALUControl~8_combout\);

-- Location: MLABCELL_X13_Y1_N57
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \opcode[0]~input_o\ & ( (\opcode[1]~input_o\ & \opcode[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X13_Y1_N12
\ALUControl~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl~9_combout\ = ( \Mux4~0_combout\ & ( \opcode[3]~input_o\ & ( (!\Equal0~0_combout\ & (((\ALUControl~1_combout\)))) # (\Equal0~0_combout\ & (!\funct[4]~input_o\ & (\ALUControl~8_combout\))) ) ) ) # ( !\Mux4~0_combout\ & ( \opcode[3]~input_o\ & ( 
-- (!\funct[4]~input_o\ & (\ALUControl~8_combout\ & \Equal0~0_combout\)) ) ) ) # ( \Mux4~0_combout\ & ( !\opcode[3]~input_o\ & ( (!\funct[4]~input_o\ & (\ALUControl~8_combout\ & \Equal0~0_combout\)) ) ) ) # ( !\Mux4~0_combout\ & ( !\opcode[3]~input_o\ & ( 
-- (!\funct[4]~input_o\ & (\ALUControl~8_combout\ & \Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[4]~input_o\,
	datab => \ALT_INV_ALUControl~8_combout\,
	datac => \ALT_INV_ALUControl~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_opcode[3]~input_o\,
	combout => \ALUControl~9_combout\);

-- Location: MLABCELL_X13_Y16_N0
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


