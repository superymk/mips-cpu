-- Copyright (C) 1991-2009 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "11/04/2009 18:44:07"

-- 
-- Device: Altera EP3SL340F1760I4 Package FBGA1760
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, stratixiii;
USE IEEE.std_logic_1164.all;
USE stratixiii.stratixiii_components.all;

ENTITY 	InstMem IS
    PORT (
	MEMINST : OUT std_logic_vector(31 DOWNTO 0);
	CLK : IN std_logic;
	PC : IN std_logic_vector(31 DOWNTO 0)
	);
END InstMem;

ARCHITECTURE structure OF InstMem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MEMINST : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \PC[31]~input_o\ : std_logic;
SIGNAL \PC[30]~input_o\ : std_logic;
SIGNAL \PC[29]~input_o\ : std_logic;
SIGNAL \PC[28]~input_o\ : std_logic;
SIGNAL \PC[27]~input_o\ : std_logic;
SIGNAL \PC[26]~input_o\ : std_logic;
SIGNAL \PC[25]~input_o\ : std_logic;
SIGNAL \PC[24]~input_o\ : std_logic;
SIGNAL \PC[23]~input_o\ : std_logic;
SIGNAL \PC[22]~input_o\ : std_logic;
SIGNAL \PC[21]~input_o\ : std_logic;
SIGNAL \PC[20]~input_o\ : std_logic;
SIGNAL \PC[19]~input_o\ : std_logic;
SIGNAL \PC[18]~input_o\ : std_logic;
SIGNAL \PC[17]~input_o\ : std_logic;
SIGNAL \PC[16]~input_o\ : std_logic;
SIGNAL \PC[15]~input_o\ : std_logic;
SIGNAL \PC[14]~input_o\ : std_logic;
SIGNAL \PC[13]~input_o\ : std_logic;
SIGNAL \PC[12]~input_o\ : std_logic;
SIGNAL \PC[11]~input_o\ : std_logic;
SIGNAL \PC[10]~input_o\ : std_logic;
SIGNAL \PC[9]~input_o\ : std_logic;
SIGNAL \PC[8]~input_o\ : std_logic;
SIGNAL \PC[7]~input_o\ : std_logic;
SIGNAL \PC[6]~input_o\ : std_logic;
SIGNAL \PC[5]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \PC[0]~input_o\ : std_logic;
SIGNAL \PC[1]~input_o\ : std_logic;
SIGNAL \PC[2]~input_o\ : std_logic;
SIGNAL \PC[3]~input_o\ : std_logic;
SIGNAL \PC[4]~input_o\ : std_logic;
SIGNAL \inst|altsyncram_component|auto_generated|q_b\ : std_logic_vector(31 DOWNTO 0);

BEGIN

MEMINST <= ww_MEMINST;
ww_CLK <= CLK;
ww_PC <= PC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\PC[4]~input_o\ & \PC[3]~input_o\ & \PC[2]~input_o\ & \PC[1]~input_o\ & \PC[0]~input_o\);

\inst|altsyncram_component|auto_generated|q_b\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_b\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_b\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_b\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst|altsyncram_component|auto_generated|q_b\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst|altsyncram_component|auto_generated|q_b\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst|altsyncram_component|auto_generated|q_b\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst|altsyncram_component|auto_generated|q_b\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\inst|altsyncram_component|auto_generated|q_b\(8) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\inst|altsyncram_component|auto_generated|q_b\(9) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\inst|altsyncram_component|auto_generated|q_b\(10) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\inst|altsyncram_component|auto_generated|q_b\(11) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\inst|altsyncram_component|auto_generated|q_b\(12) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\inst|altsyncram_component|auto_generated|q_b\(13) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\inst|altsyncram_component|auto_generated|q_b\(14) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\inst|altsyncram_component|auto_generated|q_b\(15) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\inst|altsyncram_component|auto_generated|q_b\(16) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\inst|altsyncram_component|auto_generated|q_b\(17) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\inst|altsyncram_component|auto_generated|q_b\(18) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\inst|altsyncram_component|auto_generated|q_b\(19) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\inst|altsyncram_component|auto_generated|q_b\(20) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\inst|altsyncram_component|auto_generated|q_b\(21) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\inst|altsyncram_component|auto_generated|q_b\(22) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\inst|altsyncram_component|auto_generated|q_b\(23) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\inst|altsyncram_component|auto_generated|q_b\(24) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\inst|altsyncram_component|auto_generated|q_b\(25) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\inst|altsyncram_component|auto_generated|q_b\(26) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\inst|altsyncram_component|auto_generated|q_b\(27) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\inst|altsyncram_component|auto_generated|q_b\(28) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\inst|altsyncram_component|auto_generated|q_b\(29) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\inst|altsyncram_component|auto_generated|q_b\(30) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\inst|altsyncram_component|auto_generated|q_b\(31) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\CLK~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\MEMINST[31]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(31),
	devoe => ww_devoe,
	o => ww_MEMINST(31));

\MEMINST[30]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(30),
	devoe => ww_devoe,
	o => ww_MEMINST(30));

\MEMINST[29]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(29),
	devoe => ww_devoe,
	o => ww_MEMINST(29));

\MEMINST[28]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(28),
	devoe => ww_devoe,
	o => ww_MEMINST(28));

\MEMINST[27]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(27),
	devoe => ww_devoe,
	o => ww_MEMINST(27));

\MEMINST[26]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(26),
	devoe => ww_devoe,
	o => ww_MEMINST(26));

\MEMINST[25]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(25),
	devoe => ww_devoe,
	o => ww_MEMINST(25));

\MEMINST[24]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(24),
	devoe => ww_devoe,
	o => ww_MEMINST(24));

\MEMINST[23]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(23),
	devoe => ww_devoe,
	o => ww_MEMINST(23));

\MEMINST[22]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(22),
	devoe => ww_devoe,
	o => ww_MEMINST(22));

\MEMINST[21]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(21),
	devoe => ww_devoe,
	o => ww_MEMINST(21));

\MEMINST[20]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(20),
	devoe => ww_devoe,
	o => ww_MEMINST(20));

\MEMINST[19]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(19),
	devoe => ww_devoe,
	o => ww_MEMINST(19));

\MEMINST[18]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(18),
	devoe => ww_devoe,
	o => ww_MEMINST(18));

\MEMINST[17]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(17),
	devoe => ww_devoe,
	o => ww_MEMINST(17));

\MEMINST[16]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(16),
	devoe => ww_devoe,
	o => ww_MEMINST(16));

\MEMINST[15]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(15),
	devoe => ww_devoe,
	o => ww_MEMINST(15));

\MEMINST[14]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(14),
	devoe => ww_devoe,
	o => ww_MEMINST(14));

\MEMINST[13]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(13),
	devoe => ww_devoe,
	o => ww_MEMINST(13));

\MEMINST[12]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(12),
	devoe => ww_devoe,
	o => ww_MEMINST(12));

\MEMINST[11]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(11),
	devoe => ww_devoe,
	o => ww_MEMINST(11));

\MEMINST[10]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(10),
	devoe => ww_devoe,
	o => ww_MEMINST(10));

\MEMINST[9]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(9),
	devoe => ww_devoe,
	o => ww_MEMINST(9));

\MEMINST[8]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(8),
	devoe => ww_devoe,
	o => ww_MEMINST(8));

\MEMINST[7]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(7),
	devoe => ww_devoe,
	o => ww_MEMINST(7));

\MEMINST[6]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(6),
	devoe => ww_devoe,
	o => ww_MEMINST(6));

\MEMINST[5]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(5),
	devoe => ww_devoe,
	o => ww_MEMINST(5));

\MEMINST[4]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(4),
	devoe => ww_devoe,
	o => ww_MEMINST(4));

\MEMINST[3]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(3),
	devoe => ww_devoe,
	o => ww_MEMINST(3));

\MEMINST[2]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(2),
	devoe => ww_devoe,
	o => ww_MEMINST(2));

\MEMINST[1]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(1),
	devoe => ww_devoe,
	o => ww_MEMINST(1));

\MEMINST[0]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_b\(0),
	devoe => ww_devoe,
	o => ww_MEMINST(0));

\CLK~inputclkctrl\ : stratixiii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

\~GND\ : stratixiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\PC[0]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(0),
	o => \PC[0]~input_o\);

\PC[1]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(1),
	o => \PC[1]~input_o\);

\PC[2]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(2),
	o => \PC[2]~input_o\);

\PC[3]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(3),
	o => \PC[3]~input_o\);

\PC[4]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(4),
	o => \PC[4]~input_o\);

\inst|altsyncram_component|auto_generated|ram_block1a0\ : stratixiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000800001A000031BC2000031C03000031C00000021BC002002FFFF00000000000800000C000A63824010400003000A4302503085FFFF02004FFFF03443FFFF02042FFFF02002000300081182208C2400500AC23005002021000401440FFFC02042FFFF00064182008C240050000001820020020004000000820",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena2",
	clk1_core_clock_enable => "ena3",
	clk1_input_clock_enable => "ena3",
	clock_duty_cycle_dependence => "on",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./MemContentInstance/IMemPipe.mif",
	init_file_layout => "port_a",
	logical_ram_name => "InstMemCore:inst|altsyncram:altsyncram_component|altsyncram_aor1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	clk1 => \CLK~inputclkctrl_outclk\,
	ena0 => GND,
	ena2 => VCC,
	ena3 => VCC,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\PC[31]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(31),
	o => \PC[31]~input_o\);

\PC[30]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(30),
	o => \PC[30]~input_o\);

\PC[29]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(29),
	o => \PC[29]~input_o\);

\PC[28]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(28),
	o => \PC[28]~input_o\);

\PC[27]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(27),
	o => \PC[27]~input_o\);

\PC[26]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(26),
	o => \PC[26]~input_o\);

\PC[25]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(25),
	o => \PC[25]~input_o\);

\PC[24]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(24),
	o => \PC[24]~input_o\);

\PC[23]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(23),
	o => \PC[23]~input_o\);

\PC[22]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(22),
	o => \PC[22]~input_o\);

\PC[21]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(21),
	o => \PC[21]~input_o\);

\PC[20]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(20),
	o => \PC[20]~input_o\);

\PC[19]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(19),
	o => \PC[19]~input_o\);

\PC[18]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(18),
	o => \PC[18]~input_o\);

\PC[17]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(17),
	o => \PC[17]~input_o\);

\PC[16]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(16),
	o => \PC[16]~input_o\);

\PC[15]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(15),
	o => \PC[15]~input_o\);

\PC[14]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(14),
	o => \PC[14]~input_o\);

\PC[13]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(13),
	o => \PC[13]~input_o\);

\PC[12]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(12),
	o => \PC[12]~input_o\);

\PC[11]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(11),
	o => \PC[11]~input_o\);

\PC[10]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(10),
	o => \PC[10]~input_o\);

\PC[9]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(9),
	o => \PC[9]~input_o\);

\PC[8]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(8),
	o => \PC[8]~input_o\);

\PC[7]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(7),
	o => \PC[7]~input_o\);

\PC[6]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(6),
	o => \PC[6]~input_o\);

\PC[5]~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(5),
	o => \PC[5]~input_o\);
END structure;


