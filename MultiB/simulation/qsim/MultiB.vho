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

-- DATE "10/24/2025 21:27:57"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MultiB IS
    PORT (
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	P0 : OUT std_logic;
	P1 : OUT std_logic;
	P2 : OUT std_logic;
	P3 : OUT std_logic;
	P4 : OUT std_logic;
	P5 : OUT std_logic;
	P6 : OUT std_logic;
	P7 : OUT std_logic
	);
END MultiB;

-- Design Ports Information
-- P0	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P1	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P3	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P4	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P5	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P6	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P7	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MultiB IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_P0 : std_logic;
SIGNAL ww_P1 : std_logic;
SIGNAL ww_P2 : std_logic;
SIGNAL ww_P3 : std_logic;
SIGNAL ww_P4 : std_logic;
SIGNAL ww_P5 : std_logic;
SIGNAL ww_P6 : std_logic;
SIGNAL ww_P7 : std_logic;
SIGNAL \P0~output_o\ : std_logic;
SIGNAL \P1~output_o\ : std_logic;
SIGNAL \P2~output_o\ : std_logic;
SIGNAL \P3~output_o\ : std_logic;
SIGNAL \P4~output_o\ : std_logic;
SIGNAL \P5~output_o\ : std_logic;
SIGNAL \P6~output_o\ : std_logic;
SIGNAL \P7~output_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \P0~0_combout\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \b2v_inst2|S~combout\ : std_logic;
SIGNAL \b2v_inst2|CO~0_combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_16~combout\ : std_logic;
SIGNAL \b2v_inst3|S~combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \b2v_inst6|S~combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \b2v_inst6|CO~0_combout\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_19~combout\ : std_logic;
SIGNAL \b2v_inst3|CO~0_combout\ : std_logic;
SIGNAL \b2v_inst4|S~combout\ : std_logic;
SIGNAL \b2v_inst7|S~combout\ : std_logic;
SIGNAL \b2v_inst10|S~combout\ : std_logic;
SIGNAL \b2v_inst7|CO~0_combout\ : std_logic;
SIGNAL \b2v_inst4|CO~0_combout\ : std_logic;
SIGNAL \b2v_inst5|S~combout\ : std_logic;
SIGNAL \b2v_inst8|S~combout\ : std_logic;
SIGNAL \b2v_inst10|CO~0_combout\ : std_logic;
SIGNAL \b2v_inst11|S~combout\ : std_logic;
SIGNAL \b2v_inst11|CO~0_combout\ : std_logic;
SIGNAL \b2v_inst8|CO~0_combout\ : std_logic;
SIGNAL \b2v_inst5|CO~0_combout\ : std_logic;
SIGNAL \b2v_inst9|S~combout\ : std_logic;
SIGNAL \b2v_inst12|S~combout\ : std_logic;
SIGNAL \b2v_inst9|CO~0_combout\ : std_logic;
SIGNAL \b2v_inst12|CO~0_combout\ : std_logic;
SIGNAL \b2v_inst13|S~0_combout\ : std_logic;
SIGNAL \b2v_inst13|CO~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A0 <= A0;
ww_B0 <= B0;
ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
ww_B1 <= B1;
ww_B2 <= B2;
ww_B3 <= B3;
P0 <= ww_P0;
P1 <= ww_P1;
P2 <= ww_P2;
P3 <= ww_P3;
P4 <= ww_P4;
P5 <= ww_P5;
P6 <= ww_P6;
P7 <= ww_P7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y16_N9
\P0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P0~0_combout\,
	devoe => ww_devoe,
	o => \P0~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\P1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|S~combout\,
	devoe => ww_devoe,
	o => \P1~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\P2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|S~combout\,
	devoe => ww_devoe,
	o => \P2~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\P3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst10|S~combout\,
	devoe => ww_devoe,
	o => \P3~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\P4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst11|S~combout\,
	devoe => ww_devoe,
	o => \P4~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\P5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst12|S~combout\,
	devoe => ww_devoe,
	o => \P5~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\P6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst13|S~0_combout\,
	devoe => ww_devoe,
	o => \P6~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\P7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst13|CO~0_combout\,
	devoe => ww_devoe,
	o => \P7~output_o\);

-- Location: IOIBUF_X53_Y17_N1
\B0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\A0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X52_Y16_N24
\P0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \P0~0_combout\ = (\B0~input_o\ & \A0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B0~input_o\,
	datad => \A0~input_o\,
	combout => \P0~0_combout\);

-- Location: IOIBUF_X53_Y15_N8
\B1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X52_Y23_N8
\b2v_inst2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|S~combout\ = (\A0~input_o\ & (\B1~input_o\ $ (((\B0~input_o\ & \A1~input_o\))))) # (!\A0~input_o\ & (\B0~input_o\ & ((\A1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	datac => \B1~input_o\,
	datad => \A1~input_o\,
	combout => \b2v_inst2|S~combout\);

-- Location: LCCOMB_X52_Y23_N20
\b2v_inst2|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|CO~0_combout\ = (\A0~input_o\ & (\B0~input_o\ & (\B1~input_o\ & \A1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	datac => \B1~input_o\,
	datad => \A1~input_o\,
	combout => \b2v_inst2|CO~0_combout\);

-- Location: IOIBUF_X53_Y24_N22
\A2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X52_Y23_N18
SYNTHESIZED_WIRE_16 : cycloneive_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_16~combout\ = (\B0~input_o\ & \A2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B0~input_o\,
	datad => \A2~input_o\,
	combout => \SYNTHESIZED_WIRE_16~combout\);

-- Location: LCCOMB_X52_Y23_N6
\b2v_inst3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|S~combout\ = \b2v_inst2|CO~0_combout\ $ (\SYNTHESIZED_WIRE_16~combout\ $ (((\B1~input_o\ & \A1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|CO~0_combout\,
	datab => \B1~input_o\,
	datac => \A1~input_o\,
	datad => \SYNTHESIZED_WIRE_16~combout\,
	combout => \b2v_inst3|S~combout\);

-- Location: IOIBUF_X53_Y21_N22
\B2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X52_Y23_N0
\b2v_inst6|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|S~combout\ = \b2v_inst3|S~combout\ $ (((\B2~input_o\ & \A0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|S~combout\,
	datac => \B2~input_o\,
	datad => \A0~input_o\,
	combout => \b2v_inst6|S~combout\);

-- Location: IOIBUF_X51_Y34_N15
\B3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X52_Y23_N24
\b2v_inst6|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|CO~0_combout\ = (\b2v_inst3|S~combout\ & (\B2~input_o\ & \A0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|S~combout\,
	datac => \B2~input_o\,
	datad => \A0~input_o\,
	combout => \b2v_inst6|CO~0_combout\);

-- Location: IOIBUF_X53_Y22_N1
\A3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: LCCOMB_X52_Y23_N12
SYNTHESIZED_WIRE_19 : cycloneive_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_19~combout\ = (\A3~input_o\ & \B0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datac => \B0~input_o\,
	combout => \SYNTHESIZED_WIRE_19~combout\);

-- Location: LCCOMB_X52_Y23_N26
\b2v_inst3|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|CO~0_combout\ = (\b2v_inst2|CO~0_combout\ & ((\SYNTHESIZED_WIRE_16~combout\) # ((\B1~input_o\ & \A1~input_o\)))) # (!\b2v_inst2|CO~0_combout\ & (\B1~input_o\ & (\A1~input_o\ & \SYNTHESIZED_WIRE_16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|CO~0_combout\,
	datab => \B1~input_o\,
	datac => \A1~input_o\,
	datad => \SYNTHESIZED_WIRE_16~combout\,
	combout => \b2v_inst3|CO~0_combout\);

-- Location: LCCOMB_X52_Y23_N22
\b2v_inst4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|S~combout\ = \SYNTHESIZED_WIRE_19~combout\ $ (\b2v_inst3|CO~0_combout\ $ (((\B1~input_o\ & \A2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_19~combout\,
	datab => \B1~input_o\,
	datac => \b2v_inst3|CO~0_combout\,
	datad => \A2~input_o\,
	combout => \b2v_inst4|S~combout\);

-- Location: LCCOMB_X52_Y23_N2
\b2v_inst7|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|S~combout\ = \b2v_inst6|CO~0_combout\ $ (\b2v_inst4|S~combout\ $ (((\B2~input_o\ & \A1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \b2v_inst6|CO~0_combout\,
	datac => \A1~input_o\,
	datad => \b2v_inst4|S~combout\,
	combout => \b2v_inst7|S~combout\);

-- Location: LCCOMB_X52_Y26_N8
\b2v_inst10|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|S~combout\ = \b2v_inst7|S~combout\ $ (((\B3~input_o\ & \A0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \A0~input_o\,
	datac => \b2v_inst7|S~combout\,
	combout => \b2v_inst10|S~combout\);

-- Location: LCCOMB_X52_Y23_N16
\b2v_inst7|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|CO~0_combout\ = (\b2v_inst6|CO~0_combout\ & ((\b2v_inst4|S~combout\) # ((\B2~input_o\ & \A1~input_o\)))) # (!\b2v_inst6|CO~0_combout\ & (\B2~input_o\ & (\A1~input_o\ & \b2v_inst4|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \b2v_inst6|CO~0_combout\,
	datac => \A1~input_o\,
	datad => \b2v_inst4|S~combout\,
	combout => \b2v_inst7|CO~0_combout\);

-- Location: LCCOMB_X52_Y23_N28
\b2v_inst4|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|CO~0_combout\ = (\SYNTHESIZED_WIRE_19~combout\ & ((\b2v_inst3|CO~0_combout\) # ((\B1~input_o\ & \A2~input_o\)))) # (!\SYNTHESIZED_WIRE_19~combout\ & (\B1~input_o\ & (\b2v_inst3|CO~0_combout\ & \A2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_19~combout\,
	datab => \B1~input_o\,
	datac => \b2v_inst3|CO~0_combout\,
	datad => \A2~input_o\,
	combout => \b2v_inst4|CO~0_combout\);

-- Location: LCCOMB_X52_Y23_N14
\b2v_inst5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|S~combout\ = \b2v_inst4|CO~0_combout\ $ (((\A3~input_o\ & \B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \b2v_inst4|CO~0_combout\,
	datac => \B1~input_o\,
	combout => \b2v_inst5|S~combout\);

-- Location: LCCOMB_X52_Y26_N20
\b2v_inst8|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|S~combout\ = \b2v_inst7|CO~0_combout\ $ (\b2v_inst5|S~combout\ $ (((\A2~input_o\ & \B2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \b2v_inst7|CO~0_combout\,
	datac => \b2v_inst5|S~combout\,
	datad => \B2~input_o\,
	combout => \b2v_inst8|S~combout\);

-- Location: LCCOMB_X52_Y26_N26
\b2v_inst10|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|CO~0_combout\ = (\B3~input_o\ & (\A0~input_o\ & \b2v_inst7|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \A0~input_o\,
	datac => \b2v_inst7|S~combout\,
	combout => \b2v_inst10|CO~0_combout\);

-- Location: LCCOMB_X52_Y26_N22
\b2v_inst11|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|S~combout\ = \b2v_inst8|S~combout\ $ (\b2v_inst10|CO~0_combout\ $ (((\B3~input_o\ & \A1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \b2v_inst8|S~combout\,
	datac => \b2v_inst10|CO~0_combout\,
	datad => \A1~input_o\,
	combout => \b2v_inst11|S~combout\);

-- Location: LCCOMB_X52_Y26_N12
\b2v_inst11|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|CO~0_combout\ = (\b2v_inst8|S~combout\ & ((\b2v_inst10|CO~0_combout\) # ((\B3~input_o\ & \A1~input_o\)))) # (!\b2v_inst8|S~combout\ & (\B3~input_o\ & (\b2v_inst10|CO~0_combout\ & \A1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \b2v_inst8|S~combout\,
	datac => \b2v_inst10|CO~0_combout\,
	datad => \A1~input_o\,
	combout => \b2v_inst11|CO~0_combout\);

-- Location: LCCOMB_X52_Y26_N24
\b2v_inst8|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|CO~0_combout\ = (\b2v_inst7|CO~0_combout\ & ((\b2v_inst5|S~combout\) # ((\A2~input_o\ & \B2~input_o\)))) # (!\b2v_inst7|CO~0_combout\ & (\A2~input_o\ & (\b2v_inst5|S~combout\ & \B2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \b2v_inst7|CO~0_combout\,
	datac => \b2v_inst5|S~combout\,
	datad => \B2~input_o\,
	combout => \b2v_inst8|CO~0_combout\);

-- Location: LCCOMB_X52_Y23_N10
\b2v_inst5|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|CO~0_combout\ = (\A3~input_o\ & (\b2v_inst4|CO~0_combout\ & \B1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \b2v_inst4|CO~0_combout\,
	datac => \B1~input_o\,
	combout => \b2v_inst5|CO~0_combout\);

-- Location: LCCOMB_X52_Y26_N18
\b2v_inst9|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|S~combout\ = \b2v_inst8|CO~0_combout\ $ (\b2v_inst5|CO~0_combout\ $ (((\B2~input_o\ & \A3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|CO~0_combout\,
	datab => \B2~input_o\,
	datac => \b2v_inst5|CO~0_combout\,
	datad => \A3~input_o\,
	combout => \b2v_inst9|S~combout\);

-- Location: LCCOMB_X52_Y26_N30
\b2v_inst12|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|S~combout\ = \b2v_inst11|CO~0_combout\ $ (\b2v_inst9|S~combout\ $ (((\B3~input_o\ & \A2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|CO~0_combout\,
	datab => \b2v_inst9|S~combout\,
	datac => \B3~input_o\,
	datad => \A2~input_o\,
	combout => \b2v_inst12|S~combout\);

-- Location: LCCOMB_X52_Y26_N0
\b2v_inst9|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|CO~0_combout\ = (\b2v_inst8|CO~0_combout\ & ((\b2v_inst5|CO~0_combout\) # ((\B2~input_o\ & \A3~input_o\)))) # (!\b2v_inst8|CO~0_combout\ & (\B2~input_o\ & (\b2v_inst5|CO~0_combout\ & \A3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|CO~0_combout\,
	datab => \B2~input_o\,
	datac => \b2v_inst5|CO~0_combout\,
	datad => \A3~input_o\,
	combout => \b2v_inst9|CO~0_combout\);

-- Location: LCCOMB_X52_Y26_N10
\b2v_inst12|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|CO~0_combout\ = (\b2v_inst11|CO~0_combout\ & ((\b2v_inst9|S~combout\) # ((\B3~input_o\ & \A2~input_o\)))) # (!\b2v_inst11|CO~0_combout\ & (\b2v_inst9|S~combout\ & (\B3~input_o\ & \A2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|CO~0_combout\,
	datab => \b2v_inst9|S~combout\,
	datac => \B3~input_o\,
	datad => \A2~input_o\,
	combout => \b2v_inst12|CO~0_combout\);

-- Location: LCCOMB_X52_Y26_N4
\b2v_inst13|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|S~0_combout\ = \b2v_inst9|CO~0_combout\ $ (\b2v_inst12|CO~0_combout\ $ (((\B3~input_o\ & \A3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \A3~input_o\,
	datac => \b2v_inst9|CO~0_combout\,
	datad => \b2v_inst12|CO~0_combout\,
	combout => \b2v_inst13|S~0_combout\);

-- Location: LCCOMB_X52_Y26_N6
\b2v_inst13|CO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|CO~0_combout\ = (\b2v_inst9|CO~0_combout\ & ((\b2v_inst12|CO~0_combout\) # ((\B3~input_o\ & \A3~input_o\)))) # (!\b2v_inst9|CO~0_combout\ & (\B3~input_o\ & (\A3~input_o\ & \b2v_inst12|CO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \A3~input_o\,
	datac => \b2v_inst9|CO~0_combout\,
	datad => \b2v_inst12|CO~0_combout\,
	combout => \b2v_inst13|CO~0_combout\);

ww_P0 <= \P0~output_o\;

ww_P1 <= \P1~output_o\;

ww_P2 <= \P2~output_o\;

ww_P3 <= \P3~output_o\;

ww_P4 <= \P4~output_o\;

ww_P5 <= \P5~output_o\;

ww_P6 <= \P6~output_o\;

ww_P7 <= \P7~output_o\;
END structure;


