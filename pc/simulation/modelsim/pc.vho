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

-- DATE "11/09/2021 18:45:37"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pc IS
    PORT (
	d : IN std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	resetn : IN std_logic;
	q : OUT std_logic_vector(31 DOWNTO 0)
	);
END pc;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[16]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[17]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[18]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[19]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[20]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[21]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[22]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[23]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[24]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[25]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[26]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[27]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[28]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[29]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[30]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[31]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[11]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[12]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[14]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[16]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[17]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[18]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[19]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[20]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[21]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[22]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[23]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[24]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[25]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[26]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[27]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[28]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[29]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[30]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[31]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_q : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \q[2]~reg0feeder_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \q[4]~reg0_q\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \q[5]~reg0_q\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \q[6]~reg0feeder_combout\ : std_logic;
SIGNAL \q[6]~reg0_q\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \q[7]~reg0feeder_combout\ : std_logic;
SIGNAL \q[7]~reg0_q\ : std_logic;
SIGNAL \d[8]~input_o\ : std_logic;
SIGNAL \q[8]~reg0_q\ : std_logic;
SIGNAL \d[9]~input_o\ : std_logic;
SIGNAL \q[9]~reg0_q\ : std_logic;
SIGNAL \d[10]~input_o\ : std_logic;
SIGNAL \q[10]~reg0feeder_combout\ : std_logic;
SIGNAL \q[10]~reg0_q\ : std_logic;
SIGNAL \d[11]~input_o\ : std_logic;
SIGNAL \q[11]~reg0_q\ : std_logic;
SIGNAL \d[12]~input_o\ : std_logic;
SIGNAL \q[12]~reg0_q\ : std_logic;
SIGNAL \d[13]~input_o\ : std_logic;
SIGNAL \q[13]~reg0feeder_combout\ : std_logic;
SIGNAL \q[13]~reg0_q\ : std_logic;
SIGNAL \d[14]~input_o\ : std_logic;
SIGNAL \q[14]~reg0feeder_combout\ : std_logic;
SIGNAL \q[14]~reg0_q\ : std_logic;
SIGNAL \d[15]~input_o\ : std_logic;
SIGNAL \q[15]~reg0_q\ : std_logic;
SIGNAL \d[16]~input_o\ : std_logic;
SIGNAL \q[16]~reg0_q\ : std_logic;
SIGNAL \d[17]~input_o\ : std_logic;
SIGNAL \q[17]~reg0feeder_combout\ : std_logic;
SIGNAL \q[17]~reg0_q\ : std_logic;
SIGNAL \d[18]~input_o\ : std_logic;
SIGNAL \q[18]~reg0feeder_combout\ : std_logic;
SIGNAL \q[18]~reg0_q\ : std_logic;
SIGNAL \d[19]~input_o\ : std_logic;
SIGNAL \q[19]~reg0feeder_combout\ : std_logic;
SIGNAL \q[19]~reg0_q\ : std_logic;
SIGNAL \d[20]~input_o\ : std_logic;
SIGNAL \q[20]~reg0_q\ : std_logic;
SIGNAL \d[21]~input_o\ : std_logic;
SIGNAL \q[21]~reg0feeder_combout\ : std_logic;
SIGNAL \q[21]~reg0_q\ : std_logic;
SIGNAL \d[22]~input_o\ : std_logic;
SIGNAL \q[22]~0_combout\ : std_logic;
SIGNAL \q[22]~reg0_q\ : std_logic;
SIGNAL \d[23]~input_o\ : std_logic;
SIGNAL \q[23]~reg0feeder_combout\ : std_logic;
SIGNAL \q[23]~reg0_q\ : std_logic;
SIGNAL \d[24]~input_o\ : std_logic;
SIGNAL \q[24]~reg0_q\ : std_logic;
SIGNAL \d[25]~input_o\ : std_logic;
SIGNAL \q[25]~reg0feeder_combout\ : std_logic;
SIGNAL \q[25]~reg0_q\ : std_logic;
SIGNAL \d[26]~input_o\ : std_logic;
SIGNAL \q[26]~reg0feeder_combout\ : std_logic;
SIGNAL \q[26]~reg0_q\ : std_logic;
SIGNAL \d[27]~input_o\ : std_logic;
SIGNAL \q[27]~reg0feeder_combout\ : std_logic;
SIGNAL \q[27]~reg0_q\ : std_logic;
SIGNAL \d[28]~input_o\ : std_logic;
SIGNAL \q[28]~reg0_q\ : std_logic;
SIGNAL \d[29]~input_o\ : std_logic;
SIGNAL \q[29]~reg0feeder_combout\ : std_logic;
SIGNAL \q[29]~reg0_q\ : std_logic;
SIGNAL \d[30]~input_o\ : std_logic;
SIGNAL \q[30]~reg0feeder_combout\ : std_logic;
SIGNAL \q[30]~reg0_q\ : std_logic;
SIGNAL \d[31]~input_o\ : std_logic;
SIGNAL \q[31]~reg0feeder_combout\ : std_logic;
SIGNAL \q[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_d[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_q[22]~reg0_q\ : std_logic;

BEGIN

ww_d <= d;
ww_clk <= clk;
ww_resetn <= resetn;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d[31]~input_o\ <= NOT \d[31]~input_o\;
\ALT_INV_d[30]~input_o\ <= NOT \d[30]~input_o\;
\ALT_INV_d[29]~input_o\ <= NOT \d[29]~input_o\;
\ALT_INV_d[27]~input_o\ <= NOT \d[27]~input_o\;
\ALT_INV_d[26]~input_o\ <= NOT \d[26]~input_o\;
\ALT_INV_d[25]~input_o\ <= NOT \d[25]~input_o\;
\ALT_INV_d[23]~input_o\ <= NOT \d[23]~input_o\;
\ALT_INV_d[22]~input_o\ <= NOT \d[22]~input_o\;
\ALT_INV_d[21]~input_o\ <= NOT \d[21]~input_o\;
\ALT_INV_d[19]~input_o\ <= NOT \d[19]~input_o\;
\ALT_INV_d[18]~input_o\ <= NOT \d[18]~input_o\;
\ALT_INV_d[17]~input_o\ <= NOT \d[17]~input_o\;
\ALT_INV_d[14]~input_o\ <= NOT \d[14]~input_o\;
\ALT_INV_d[13]~input_o\ <= NOT \d[13]~input_o\;
\ALT_INV_d[10]~input_o\ <= NOT \d[10]~input_o\;
\ALT_INV_d[7]~input_o\ <= NOT \d[7]~input_o\;
\ALT_INV_d[6]~input_o\ <= NOT \d[6]~input_o\;
\ALT_INV_d[2]~input_o\ <= NOT \d[2]~input_o\;
\ALT_INV_q[22]~reg0_q\ <= NOT \q[22]~reg0_q\;

-- Location: IOOBUF_X18_Y0_N53
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X10_Y0_N42
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X22_Y0_N2
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X36_Y0_N2
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOOBUF_X36_Y0_N36
\q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(4));

-- Location: IOOBUF_X16_Y0_N76
\q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(5));

-- Location: IOOBUF_X29_Y0_N2
\q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(6));

-- Location: IOOBUF_X18_Y0_N36
\q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(7));

-- Location: IOOBUF_X19_Y0_N19
\q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(8));

-- Location: IOOBUF_X24_Y0_N2
\q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(9));

-- Location: IOOBUF_X34_Y0_N19
\q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(10));

-- Location: IOOBUF_X22_Y0_N36
\q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(11));

-- Location: IOOBUF_X23_Y0_N76
\q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(12));

-- Location: IOOBUF_X14_Y0_N36
\q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(13));

-- Location: IOOBUF_X34_Y0_N36
\q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(14));

-- Location: IOOBUF_X36_Y0_N53
\q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(15));

-- Location: IOOBUF_X24_Y0_N19
\q[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(16));

-- Location: IOOBUF_X11_Y0_N36
\q[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(17));

-- Location: IOOBUF_X38_Y0_N53
\q[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(18));

-- Location: IOOBUF_X22_Y0_N19
\q[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(19));

-- Location: IOOBUF_X10_Y0_N59
\q[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(20));

-- Location: IOOBUF_X16_Y0_N42
\q[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(21));

-- Location: IOOBUF_X10_Y0_N76
\q[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_q[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(22));

-- Location: IOOBUF_X11_Y0_N2
\q[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(23));

-- Location: IOOBUF_X33_Y0_N42
\q[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(24));

-- Location: IOOBUF_X24_Y0_N36
\q[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[25]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(25));

-- Location: IOOBUF_X33_Y0_N59
\q[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[26]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(26));

-- Location: IOOBUF_X18_Y0_N19
\q[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[27]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(27));

-- Location: IOOBUF_X11_Y0_N53
\q[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[28]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(28));

-- Location: IOOBUF_X23_Y0_N59
\q[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[29]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(29));

-- Location: IOOBUF_X25_Y0_N36
\q[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[30]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(30));

-- Location: IOOBUF_X25_Y0_N2
\q[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[31]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(31));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N35
\d[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: FF_X13_Y1_N1
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[0]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N52
\d[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: FF_X13_Y1_N11
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[1]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N35
\d[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: LABCELL_X29_Y1_N33
\q[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[2]~reg0feeder_combout\ = ( \d[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[2]~input_o\,
	combout => \q[2]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N34
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[2]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N18
\d[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: FF_X29_Y1_N38
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[3]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N18
\d[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: FF_X29_Y1_N40
\q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[4]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[4]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N18
\d[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: FF_X13_Y1_N13
\q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[5]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[5]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N41
\d[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: LABCELL_X26_Y1_N3
\q[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[6]~reg0feeder_combout\ = ( \d[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[6]~input_o\,
	combout => \q[6]~reg0feeder_combout\);

-- Location: FF_X26_Y1_N4
\q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[6]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[6]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N1
\d[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: MLABCELL_X13_Y1_N48
\q[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[7]~reg0feeder_combout\ = ( \d[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[7]~input_o\,
	combout => \q[7]~reg0feeder_combout\);

-- Location: FF_X13_Y1_N49
\q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[7]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[7]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N1
\d[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(8),
	o => \d[8]~input_o\);

-- Location: FF_X18_Y1_N34
\q[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[8]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[8]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N35
\d[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(9),
	o => \d[9]~input_o\);

-- Location: FF_X29_Y1_N46
\q[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[9]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[9]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N52
\d[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(10),
	o => \d[10]~input_o\);

-- Location: LABCELL_X29_Y1_N18
\q[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[10]~reg0feeder_combout\ = ( \d[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[10]~input_o\,
	combout => \q[10]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N19
\q[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[10]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[10]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N52
\d[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(11),
	o => \d[11]~input_o\);

-- Location: FF_X29_Y1_N55
\q[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[11]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[11]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N18
\d[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(12),
	o => \d[12]~input_o\);

-- Location: FF_X29_Y1_N22
\q[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[12]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[12]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N92
\d[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(13),
	o => \d[13]~input_o\);

-- Location: MLABCELL_X13_Y1_N24
\q[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[13]~reg0feeder_combout\ = ( \d[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[13]~input_o\,
	combout => \q[13]~reg0feeder_combout\);

-- Location: FF_X13_Y1_N25
\q[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[13]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[13]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N1
\d[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(14),
	o => \d[14]~input_o\);

-- Location: LABCELL_X29_Y1_N0
\q[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[14]~reg0feeder_combout\ = ( \d[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[14]~input_o\,
	combout => \q[14]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N1
\q[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[14]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[14]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N35
\d[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(15),
	o => \d[15]~input_o\);

-- Location: FF_X29_Y1_N43
\q[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[15]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[15]~reg0_q\);

-- Location: IOIBUF_X33_Y0_N92
\d[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(16),
	o => \d[16]~input_o\);

-- Location: FF_X29_Y1_N8
\q[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[16]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[16]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N58
\d[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(17),
	o => \d[17]~input_o\);

-- Location: MLABCELL_X13_Y1_N33
\q[17]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[17]~reg0feeder_combout\ = ( \d[17]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[17]~input_o\,
	combout => \q[17]~reg0feeder_combout\);

-- Location: FF_X13_Y1_N35
\q[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[17]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[17]~reg0_q\);

-- Location: IOIBUF_X33_Y0_N75
\d[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(18),
	o => \d[18]~input_o\);

-- Location: LABCELL_X29_Y1_N12
\q[18]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[18]~reg0feeder_combout\ = ( \d[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[18]~input_o\,
	combout => \q[18]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N13
\q[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[18]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[18]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N52
\d[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(19),
	o => \d[19]~input_o\);

-- Location: LABCELL_X29_Y1_N48
\q[19]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[19]~reg0feeder_combout\ = ( \d[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[19]~input_o\,
	combout => \q[19]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N49
\q[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[19]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[19]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N52
\d[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(20),
	o => \d[20]~input_o\);

-- Location: FF_X13_Y1_N37
\q[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[20]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[20]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N18
\d[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(21),
	o => \d[21]~input_o\);

-- Location: MLABCELL_X13_Y1_N27
\q[21]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[21]~reg0feeder_combout\ = ( \d[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[21]~input_o\,
	combout => \q[21]~reg0feeder_combout\);

-- Location: FF_X13_Y1_N28
\q[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[21]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[21]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N1
\d[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(22),
	o => \d[22]~input_o\);

-- Location: MLABCELL_X13_Y1_N42
\q[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[22]~0_combout\ = ( !\d[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[22]~input_o\,
	combout => \q[22]~0_combout\);

-- Location: FF_X13_Y1_N43
\q[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[22]~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[22]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N52
\d[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(23),
	o => \d[23]~input_o\);

-- Location: MLABCELL_X13_Y1_N21
\q[23]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[23]~reg0feeder_combout\ = ( \d[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[23]~input_o\,
	combout => \q[23]~reg0feeder_combout\);

-- Location: FF_X13_Y1_N22
\q[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[23]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[23]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N92
\d[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(24),
	o => \d[24]~input_o\);

-- Location: FF_X29_Y1_N58
\q[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[24]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[24]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N92
\d[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(25),
	o => \d[25]~input_o\);

-- Location: LABCELL_X29_Y1_N9
\q[25]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[25]~reg0feeder_combout\ = ( \d[25]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[25]~input_o\,
	combout => \q[25]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N10
\q[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[25]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[25]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N1
\d[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(26),
	o => \d[26]~input_o\);

-- Location: LABCELL_X29_Y1_N24
\q[26]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[26]~reg0feeder_combout\ = ( \d[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[26]~input_o\,
	combout => \q[26]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N25
\q[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[26]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[26]~reg0_q\);

-- Location: IOIBUF_X10_Y0_N92
\d[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(27),
	o => \d[27]~input_o\);

-- Location: MLABCELL_X13_Y1_N39
\q[27]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[27]~reg0feeder_combout\ = ( \d[27]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[27]~input_o\,
	combout => \q[27]~reg0feeder_combout\);

-- Location: FF_X13_Y1_N40
\q[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[27]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[27]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N18
\d[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(28),
	o => \d[28]~input_o\);

-- Location: FF_X13_Y1_N56
\q[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \d[28]~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[28]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N52
\d[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(29),
	o => \d[29]~input_o\);

-- Location: LABCELL_X24_Y1_N3
\q[29]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[29]~reg0feeder_combout\ = ( \d[29]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[29]~input_o\,
	combout => \q[29]~reg0feeder_combout\);

-- Location: FF_X24_Y1_N5
\q[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[29]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[29]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N18
\d[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(30),
	o => \d[30]~input_o\);

-- Location: LABCELL_X29_Y1_N30
\q[30]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[30]~reg0feeder_combout\ = ( \d[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[30]~input_o\,
	combout => \q[30]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N32
\q[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[30]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[30]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N52
\d[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(31),
	o => \d[31]~input_o\);

-- Location: LABCELL_X26_Y1_N6
\q[31]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \q[31]~reg0feeder_combout\ = ( \d[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d[31]~input_o\,
	combout => \q[31]~reg0feeder_combout\);

-- Location: FF_X26_Y1_N8
\q[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q[31]~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[31]~reg0_q\);

-- Location: LABCELL_X47_Y26_N0
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


