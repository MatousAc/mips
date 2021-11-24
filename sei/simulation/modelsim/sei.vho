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

-- DATE "11/23/2021 19:53:47"

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

ENTITY 	sei IS
    PORT (
	sixteen : IN std_logic_vector(15 DOWNTO 0);
	thirtytwo : OUT std_logic_vector(31 DOWNTO 0)
	);
END sei;

-- Design Ports Information
-- thirtytwo[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[1]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[7]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[12]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[13]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[14]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[15]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[16]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[17]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[18]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[19]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[20]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[21]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[22]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[23]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[24]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[25]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[26]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[27]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[28]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[29]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[30]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- thirtytwo[31]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[9]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[11]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[12]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[13]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[14]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sixteen[15]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sei IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sixteen : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_thirtytwo : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sixteen[0]~input_o\ : std_logic;
SIGNAL \sixteen[1]~input_o\ : std_logic;
SIGNAL \sixteen[2]~input_o\ : std_logic;
SIGNAL \sixteen[3]~input_o\ : std_logic;
SIGNAL \sixteen[4]~input_o\ : std_logic;
SIGNAL \sixteen[5]~input_o\ : std_logic;
SIGNAL \sixteen[6]~input_o\ : std_logic;
SIGNAL \sixteen[7]~input_o\ : std_logic;
SIGNAL \sixteen[8]~input_o\ : std_logic;
SIGNAL \sixteen[9]~input_o\ : std_logic;
SIGNAL \sixteen[10]~input_o\ : std_logic;
SIGNAL \sixteen[11]~input_o\ : std_logic;
SIGNAL \sixteen[12]~input_o\ : std_logic;
SIGNAL \sixteen[13]~input_o\ : std_logic;
SIGNAL \sixteen[14]~input_o\ : std_logic;
SIGNAL \sixteen[15]~input_o\ : std_logic;

BEGIN

ww_sixteen <= sixteen;
thirtytwo <= ww_thirtytwo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X16_Y45_N93
\thirtytwo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[0]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(0));

-- Location: IOOBUF_X52_Y45_N19
\thirtytwo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[1]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(1));

-- Location: IOOBUF_X12_Y45_N36
\thirtytwo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[2]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(2));

-- Location: IOOBUF_X40_Y45_N76
\thirtytwo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[3]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(3));

-- Location: IOOBUF_X10_Y45_N19
\thirtytwo[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[4]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(4));

-- Location: IOOBUF_X44_Y45_N53
\thirtytwo[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[5]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(5));

-- Location: IOOBUF_X43_Y45_N19
\thirtytwo[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[6]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(6));

-- Location: IOOBUF_X22_Y45_N2
\thirtytwo[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[7]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(7));

-- Location: IOOBUF_X50_Y45_N53
\thirtytwo[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[8]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(8));

-- Location: IOOBUF_X38_Y45_N2
\thirtytwo[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[9]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(9));

-- Location: IOOBUF_X36_Y45_N19
\thirtytwo[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[10]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(10));

-- Location: IOOBUF_X14_Y45_N2
\thirtytwo[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[11]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(11));

-- Location: IOOBUF_X20_Y45_N53
\thirtytwo[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[12]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(12));

-- Location: IOOBUF_X18_Y45_N53
\thirtytwo[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[13]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(13));

-- Location: IOOBUF_X16_Y45_N42
\thirtytwo[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[14]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(14));

-- Location: IOOBUF_X22_Y45_N36
\thirtytwo[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(15));

-- Location: IOOBUF_X32_Y45_N42
\thirtytwo[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(16));

-- Location: IOOBUF_X18_Y45_N36
\thirtytwo[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(17));

-- Location: IOOBUF_X14_Y45_N53
\thirtytwo[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(18));

-- Location: IOOBUF_X8_Y45_N93
\thirtytwo[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(19));

-- Location: IOOBUF_X14_Y45_N36
\thirtytwo[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(20));

-- Location: IOOBUF_X18_Y45_N2
\thirtytwo[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(21));

-- Location: IOOBUF_X10_Y45_N36
\thirtytwo[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(22));

-- Location: IOOBUF_X8_Y45_N76
\thirtytwo[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(23));

-- Location: IOOBUF_X20_Y45_N19
\thirtytwo[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(24));

-- Location: IOOBUF_X32_Y45_N59
\thirtytwo[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(25));

-- Location: IOOBUF_X10_Y45_N2
\thirtytwo[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(26));

-- Location: IOOBUF_X22_Y45_N19
\thirtytwo[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(27));

-- Location: IOOBUF_X18_Y45_N19
\thirtytwo[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(28));

-- Location: IOOBUF_X10_Y45_N53
\thirtytwo[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(29));

-- Location: IOOBUF_X8_Y45_N42
\thirtytwo[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(30));

-- Location: IOOBUF_X20_Y45_N36
\thirtytwo[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sixteen[15]~input_o\,
	devoe => ww_devoe,
	o => ww_thirtytwo(31));

-- Location: IOIBUF_X16_Y45_N58
\sixteen[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(0),
	o => \sixteen[0]~input_o\);

-- Location: IOIBUF_X52_Y45_N1
\sixteen[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(1),
	o => \sixteen[1]~input_o\);

-- Location: IOIBUF_X12_Y45_N1
\sixteen[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(2),
	o => \sixteen[2]~input_o\);

-- Location: IOIBUF_X40_Y45_N92
\sixteen[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(3),
	o => \sixteen[3]~input_o\);

-- Location: IOIBUF_X8_Y45_N58
\sixteen[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(4),
	o => \sixteen[4]~input_o\);

-- Location: IOIBUF_X44_Y45_N35
\sixteen[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(5),
	o => \sixteen[5]~input_o\);

-- Location: IOIBUF_X42_Y45_N52
\sixteen[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(6),
	o => \sixteen[6]~input_o\);

-- Location: IOIBUF_X22_Y45_N52
\sixteen[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(7),
	o => \sixteen[7]~input_o\);

-- Location: IOIBUF_X50_Y45_N35
\sixteen[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(8),
	o => \sixteen[8]~input_o\);

-- Location: IOIBUF_X38_Y45_N35
\sixteen[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(9),
	o => \sixteen[9]~input_o\);

-- Location: IOIBUF_X36_Y45_N1
\sixteen[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(10),
	o => \sixteen[10]~input_o\);

-- Location: IOIBUF_X14_Y45_N18
\sixteen[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(11),
	o => \sixteen[11]~input_o\);

-- Location: IOIBUF_X20_Y45_N1
\sixteen[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(12),
	o => \sixteen[12]~input_o\);

-- Location: IOIBUF_X12_Y45_N52
\sixteen[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(13),
	o => \sixteen[13]~input_o\);

-- Location: IOIBUF_X16_Y45_N75
\sixteen[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(14),
	o => \sixteen[14]~input_o\);

-- Location: IOIBUF_X12_Y45_N18
\sixteen[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sixteen(15),
	o => \sixteen[15]~input_o\);

-- Location: LABCELL_X25_Y28_N0
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


