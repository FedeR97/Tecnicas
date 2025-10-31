-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/30/2025 16:03:53"

-- 
-- Device: Altera EP4CE22F17C7 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MultiBC IS
    PORT (
	P0 : OUT std_logic;
	Clk : IN std_logic;
	IB0 : IN std_logic;
	IA0 : IN std_logic;
	P1 : OUT std_logic;
	S1 : OUT std_logic;
	IA1 : IN std_logic;
	S4 : OUT std_logic;
	IB1 : IN std_logic;
	P2 : OUT std_logic;
	S2 : OUT std_logic;
	S5 : OUT std_logic;
	P3 : OUT std_logic;
	S3 : OUT std_logic;
	S6 : OUT std_logic;
	P4 : OUT std_logic
	);
END MultiBC;

-- Design Ports Information
-- P0	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P1	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P3	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P4	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB0	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA1	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA0	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB1	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MultiBC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_P0 : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_IB0 : std_logic;
SIGNAL ww_IA0 : std_logic;
SIGNAL ww_P1 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_IA1 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_IB1 : std_logic;
SIGNAL ww_P2 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S5 : std_logic;
SIGNAL ww_P3 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S6 : std_logic;
SIGNAL ww_P4 : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P0~output_o\ : std_logic;
SIGNAL \P1~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \P2~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S5~output_o\ : std_logic;
SIGNAL \P3~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S6~output_o\ : std_logic;
SIGNAL \P4~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \IA0~input_o\ : std_logic;
SIGNAL \inst17~feeder_combout\ : std_logic;
SIGNAL \inst17~q\ : std_logic;
SIGNAL \IB0~input_o\ : std_logic;
SIGNAL \inst16~feeder_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \IA1~input_o\ : std_logic;
SIGNAL \inst19~feeder_combout\ : std_logic;
SIGNAL \inst19~q\ : std_logic;
SIGNAL \IB1~input_o\ : std_logic;
SIGNAL \inst18~feeder_combout\ : std_logic;
SIGNAL \inst18~q\ : std_logic;
SIGNAL \inst3|S~combout\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;
SIGNAL \inst33~0_combout\ : std_logic;
SIGNAL \inst4|S~0_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \inst34~combout\ : std_logic;
SIGNAL \inst5|S~0_combout\ : std_logic;
SIGNAL \inst13~q\ : std_logic;
SIGNAL \inst35~0_combout\ : std_logic;
SIGNAL \inst5|CO~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

P0 <= ww_P0;
ww_Clk <= Clk;
ww_IB0 <= IB0;
ww_IA0 <= IA0;
P1 <= ww_P1;
S1 <= ww_S1;
ww_IA1 <= IA1;
S4 <= ww_S4;
ww_IB1 <= IB1;
P2 <= ww_P2;
S2 <= ww_S2;
S5 <= ww_S5;
P3 <= ww_P3;
S3 <= ww_S3;
S6 <= ww_S6;
P4 <= ww_P4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X45_Y34_N9
\P0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~q\,
	devoe => ww_devoe,
	o => \P0~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\P1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~q\,
	devoe => ww_devoe,
	o => \P1~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\S1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\S4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33~0_combout\,
	devoe => ww_devoe,
	o => \S4~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\P2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~q\,
	devoe => ww_devoe,
	o => \P2~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\S2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\S5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34~combout\,
	devoe => ww_devoe,
	o => \S5~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\P3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~q\,
	devoe => ww_devoe,
	o => \P3~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\S3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\S6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35~0_combout\,
	devoe => ww_devoe,
	o => \S6~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\P4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|CO~0_combout\,
	devoe => ww_devoe,
	o => \P4~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y34_N1
\IA0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IA0,
	o => \IA0~input_o\);

-- Location: LCCOMB_X51_Y30_N8
\inst17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17~feeder_combout\ = \IA0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IA0~input_o\,
	combout => \inst17~feeder_combout\);

-- Location: FF_X51_Y30_N9
inst17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17~q\);

-- Location: IOIBUF_X47_Y34_N22
\IB0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IB0,
	o => \IB0~input_o\);

-- Location: LCCOMB_X51_Y30_N20
\inst16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16~feeder_combout\ = \IB0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IB0~input_o\,
	combout => \inst16~feeder_combout\);

-- Location: FF_X51_Y30_N21
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: LCCOMB_X51_Y30_N28
inst14 : cycloneive_lcell_comb
-- Equation(s):
-- \inst14~combout\ = (\inst17~q\ & \inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17~q\,
	datad => \inst16~q\,
	combout => \inst14~combout\);

-- Location: FF_X51_Y30_N29
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: IOIBUF_X51_Y34_N22
\IA1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IA1,
	o => \IA1~input_o\);

-- Location: LCCOMB_X51_Y30_N30
\inst19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~feeder_combout\ = \IA1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IA1~input_o\,
	combout => \inst19~feeder_combout\);

-- Location: FF_X51_Y30_N31
inst19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst19~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19~q\);

-- Location: IOIBUF_X51_Y34_N8
\IB1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IB1,
	o => \IB1~input_o\);

-- Location: LCCOMB_X51_Y30_N18
\inst18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18~feeder_combout\ = \IB1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IB1~input_o\,
	combout => \inst18~feeder_combout\);

-- Location: FF_X51_Y30_N19
inst18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18~q\);

-- Location: LCCOMB_X51_Y30_N10
\inst3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|S~combout\ = (\inst19~q\ & (\inst16~q\ $ (((\inst18~q\ & \inst17~q\))))) # (!\inst19~q\ & (\inst18~q\ & (\inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~q\,
	datab => \inst18~q\,
	datac => \inst17~q\,
	datad => \inst16~q\,
	combout => \inst3|S~combout\);

-- Location: FF_X51_Y30_N11
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst3|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: LCCOMB_X52_Y30_N8
inst15 : cycloneive_lcell_comb
-- Equation(s):
-- \inst15~combout\ = (\inst16~q\ & \inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16~q\,
	datad => \inst19~q\,
	combout => \inst15~combout\);

-- Location: LCCOMB_X51_Y30_N24
\inst33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33~0_combout\ = (\inst18~q\ & \inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18~q\,
	datad => \inst17~q\,
	combout => \inst33~0_combout\);

-- Location: LCCOMB_X51_Y30_N14
\inst4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|S~0_combout\ = (\inst19~q\ & ((\inst18~q\ & (!\inst17~q\ & !\inst16~q\)) # (!\inst18~q\ & ((\inst16~q\))))) # (!\inst19~q\ & (\inst18~q\ & (\inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~q\,
	datab => \inst18~q\,
	datac => \inst17~q\,
	datad => \inst16~q\,
	combout => \inst4|S~0_combout\);

-- Location: FF_X51_Y30_N15
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: LCCOMB_X52_Y30_N6
inst34 : cycloneive_lcell_comb
-- Equation(s):
-- \inst34~combout\ = (\inst18~q\ & (\inst19~q\ $ (\inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19~q\,
	datac => \inst18~q\,
	datad => \inst17~q\,
	combout => \inst34~combout\);

-- Location: LCCOMB_X51_Y30_N16
\inst5|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|S~0_combout\ = (\inst19~q\ & (!\inst18~q\ & ((\inst16~q\)))) # (!\inst19~q\ & (\inst18~q\ & (\inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~q\,
	datab => \inst18~q\,
	datac => \inst17~q\,
	datad => \inst16~q\,
	combout => \inst5|S~0_combout\);

-- Location: FF_X51_Y30_N17
inst13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst5|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~q\);

-- Location: LCCOMB_X52_Y30_N4
\inst35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35~0_combout\ = (!\inst19~q\ & (\inst18~q\ & \inst17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19~q\,
	datac => \inst18~q\,
	datad => \inst17~q\,
	combout => \inst35~0_combout\);

-- Location: LCCOMB_X52_Y30_N10
\inst5|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|CO~0_combout\ = (\inst19~q\ & (\inst18~q\ & \inst16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19~q\,
	datac => \inst18~q\,
	datad => \inst16~q\,
	combout => \inst5|CO~0_combout\);

ww_P0 <= \P0~output_o\;

ww_P1 <= \P1~output_o\;

ww_S1 <= \S1~output_o\;

ww_S4 <= \S4~output_o\;

ww_P2 <= \P2~output_o\;

ww_S2 <= \S2~output_o\;

ww_S5 <= \S5~output_o\;

ww_P3 <= \P3~output_o\;

ww_S3 <= \S3~output_o\;

ww_S6 <= \S6~output_o\;

ww_P4 <= \P4~output_o\;
END structure;


