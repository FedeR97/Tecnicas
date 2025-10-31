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

-- DATE "10/31/2025 03:33:59"

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

ENTITY 	ParteE IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	x : IN std_logic;
	z1 : OUT std_logic;
	z2 : OUT std_logic;
	z3 : OUT std_logic;
	z4 : OUT std_logic
	);
END ParteE;

-- Design Ports Information
-- z1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z2	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z3	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z4	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ParteE IS
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
SIGNAL ww_clock : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_z1 : std_logic;
SIGNAL ww_z2 : std_logic;
SIGNAL ww_z3 : std_logic;
SIGNAL ww_z4 : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \z1~output_o\ : std_logic;
SIGNAL \z2~output_o\ : std_logic;
SIGNAL \z3~output_o\ : std_logic;
SIGNAL \z4~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \reg_fstate.state5~0_combout\ : std_logic;
SIGNAL \fstate.state5~q\ : std_logic;
SIGNAL \reg_fstate.state6~0_combout\ : std_logic;
SIGNAL \fstate.state6~q\ : std_logic;
SIGNAL \reg_fstate.state3~0_combout\ : std_logic;
SIGNAL \fstate.state3~q\ : std_logic;
SIGNAL \reg_fstate.state7~0_combout\ : std_logic;
SIGNAL \fstate.state7~q\ : std_logic;
SIGNAL \reg_fstate.state4~0_combout\ : std_logic;
SIGNAL \fstate.state4~q\ : std_logic;
SIGNAL \reg_fstate.state1~0_combout\ : std_logic;
SIGNAL \fstate.state1~q\ : std_logic;
SIGNAL \reg_fstate.state2~0_combout\ : std_logic;
SIGNAL \fstate.state2~q\ : std_logic;
SIGNAL \z1~0_combout\ : std_logic;
SIGNAL \z2~0_combout\ : std_logic;
SIGNAL \z3~0_combout\ : std_logic;
SIGNAL \z4~0_combout\ : std_logic;
SIGNAL \ALT_INV_z1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_x <= x;
z1 <= ww_z1;
z2 <= ww_z2;
z3 <= ww_z3;
z4 <= ww_z4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_z1~0_combout\ <= NOT \z1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y15_N9
\z1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z1~0_combout\,
	devoe => ww_devoe,
	o => \z1~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\z2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z2~0_combout\,
	devoe => ww_devoe,
	o => \z2~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\z3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z3~0_combout\,
	devoe => ww_devoe,
	o => \z3~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\z4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z4~0_combout\,
	devoe => ww_devoe,
	o => \z4~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\x~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X1_Y12_N18
\reg_fstate.state5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.state5~0_combout\ = (!\reset~input_o\ & (\x~input_o\ & !\fstate.state1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.state1~q\,
	combout => \reg_fstate.state5~0_combout\);

-- Location: FF_X1_Y12_N19
\fstate.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.state5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state5~q\);

-- Location: LCCOMB_X1_Y12_N8
\reg_fstate.state6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.state6~0_combout\ = (!\reset~input_o\ & \fstate.state5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \fstate.state5~q\,
	combout => \reg_fstate.state6~0_combout\);

-- Location: FF_X1_Y12_N9
\fstate.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.state6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state6~q\);

-- Location: LCCOMB_X1_Y12_N16
\reg_fstate.state3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.state3~0_combout\ = (!\reset~input_o\ & ((\fstate.state6~q\) # (\fstate.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \fstate.state6~q\,
	datad => \fstate.state2~q\,
	combout => \reg_fstate.state3~0_combout\);

-- Location: FF_X1_Y12_N17
\fstate.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.state3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state3~q\);

-- Location: LCCOMB_X1_Y12_N22
\reg_fstate.state7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.state7~0_combout\ = (!\reset~input_o\ & (\x~input_o\ & \fstate.state3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.state3~q\,
	combout => \reg_fstate.state7~0_combout\);

-- Location: FF_X1_Y12_N23
\fstate.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.state7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state7~q\);

-- Location: LCCOMB_X1_Y12_N12
\reg_fstate.state4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.state4~0_combout\ = (!\reset~input_o\ & (!\x~input_o\ & \fstate.state3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.state3~q\,
	combout => \reg_fstate.state4~0_combout\);

-- Location: FF_X1_Y12_N13
\fstate.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.state4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state4~q\);

-- Location: LCCOMB_X1_Y12_N6
\reg_fstate.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.state1~0_combout\ = (!\reset~input_o\ & (!\fstate.state7~q\ & !\fstate.state4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \fstate.state7~q\,
	datad => \fstate.state4~q\,
	combout => \reg_fstate.state1~0_combout\);

-- Location: FF_X1_Y12_N7
\fstate.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.state1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state1~q\);

-- Location: LCCOMB_X1_Y12_N24
\reg_fstate.state2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.state2~0_combout\ = (!\reset~input_o\ & (!\x~input_o\ & !\fstate.state1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.state1~q\,
	combout => \reg_fstate.state2~0_combout\);

-- Location: FF_X1_Y12_N25
\fstate.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.state2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state2~q\);

-- Location: LCCOMB_X1_Y12_N20
\z1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \z1~0_combout\ = (\fstate.state2~q\) # ((\reset~input_o\) # (!\fstate.state1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state2~q\,
	datab => \fstate.state1~q\,
	datac => \reset~input_o\,
	combout => \z1~0_combout\);

-- Location: LCCOMB_X1_Y12_N14
\z2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \z2~0_combout\ = (!\reset~input_o\ & (!\fstate.state4~q\ & (\fstate.state1~q\ & !\fstate.state5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \fstate.state4~q\,
	datac => \fstate.state1~q\,
	datad => \fstate.state5~q\,
	combout => \z2~0_combout\);

-- Location: LCCOMB_X1_Y12_N28
\z3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \z3~0_combout\ = (!\reset~input_o\ & ((\fstate.state2~q\) # ((\fstate.state3~q\) # (\fstate.state7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state2~q\,
	datab => \reset~input_o\,
	datac => \fstate.state3~q\,
	datad => \fstate.state7~q\,
	combout => \z3~0_combout\);

-- Location: LCCOMB_X1_Y12_N10
\z4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \z4~0_combout\ = (!\reset~input_o\ & ((\fstate.state3~q\) # (\fstate.state4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state3~q\,
	datab => \fstate.state4~q\,
	datac => \reset~input_o\,
	combout => \z4~0_combout\);

ww_z1 <= \z1~output_o\;

ww_z2 <= \z2~output_o\;

ww_z3 <= \z3~output_o\;

ww_z4 <= \z4~output_o\;
END structure;


