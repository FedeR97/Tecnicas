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

-- DATE "10/31/2025 11:43:06"

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

ENTITY 	CompDIR IS
    PORT (
	Fin_dir : OUT std_logic;
	Hab_dir : IN std_logic;
	SCL : IN std_logic;
	SOY : OUT std_logic;
	SDA : IN std_logic
	);
END CompDIR;

-- Design Ports Information
-- Fin_dir	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOY	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hab_dir	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CompDIR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Fin_dir : std_logic;
SIGNAL ww_Hab_dir : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_SOY : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL \inst1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Fin_dir~output_o\ : std_logic;
SIGNAL \SOY~output_o\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \Hab_dir~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst1~clkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt[0]~2_combout\ : std_logic;
SIGNAL \inst|cnt[1]~1_combout\ : std_logic;
SIGNAL \inst|cnt[2]~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \inst2|reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|reg\ : std_logic_vector(6 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Fin_dir <= ww_Fin_dir;
ww_Hab_dir <= Hab_dir;
ww_SCL <= SCL;
SOY <= ww_SOY;
ww_SDA <= SDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1~combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y12_N9
\Fin_dir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Fin_dir~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\SOY~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \SOY~output_o\);

-- Location: IOIBUF_X29_Y0_N1
\SCL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCL,
	o => \SCL~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\Hab_dir~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hab_dir,
	o => \Hab_dir~input_o\);

-- Location: LCCOMB_X26_Y1_N26
inst1 : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~combout\ = LCELL((\SCL~input_o\ & \Hab_dir~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCL~input_o\,
	datad => \Hab_dir~input_o\,
	combout => \inst1~combout\);

-- Location: CLKCTRL_G16
\inst1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y12_N18
\inst|cnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~2_combout\ = !\inst|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(0),
	combout => \inst|cnt[0]~2_combout\);

-- Location: FF_X1_Y12_N19
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	d => \inst|cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LCCOMB_X1_Y12_N12
\inst|cnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~1_combout\ = \inst|cnt\(1) $ (\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(0),
	combout => \inst|cnt[1]~1_combout\);

-- Location: FF_X1_Y12_N13
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	d => \inst|cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: LCCOMB_X1_Y12_N28
\inst|cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~0_combout\ = \inst|cnt\(2) $ (((\inst|cnt\(1) & \inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datac => \inst|cnt\(2),
	datad => \inst|cnt\(0),
	combout => \inst|cnt[2]~0_combout\);

-- Location: FF_X1_Y12_N29
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	d => \inst|cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: LCCOMB_X1_Y12_N14
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|cnt\(1) & (\inst|cnt\(0) & \inst|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: IOIBUF_X5_Y0_N8
\SDA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

-- Location: LCCOMB_X8_Y1_N16
\inst2|reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|reg[0]~feeder_combout\ = \SDA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDA~input_o\,
	combout => \inst2|reg[0]~feeder_combout\);

-- Location: FF_X8_Y1_N17
\inst2|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	d => \inst2|reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(0));

-- Location: LCCOMB_X8_Y1_N18
\inst2|reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|reg[1]~feeder_combout\ = \inst2|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|reg\(0),
	combout => \inst2|reg[1]~feeder_combout\);

-- Location: FF_X8_Y1_N19
\inst2|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	d => \inst2|reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(1));

-- Location: LCCOMB_X8_Y1_N8
\inst2|reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|reg[2]~feeder_combout\ = \inst2|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|reg\(1),
	combout => \inst2|reg[2]~feeder_combout\);

-- Location: FF_X8_Y1_N9
\inst2|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	d => \inst2|reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(2));

-- Location: FF_X8_Y1_N31
\inst2|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	asdata => \inst2|reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(3));

-- Location: LCCOMB_X8_Y1_N30
\inst7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (!\inst2|reg\(2) & (\inst2|reg\(0) & (!\inst2|reg\(3) & !\inst2|reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|reg\(2),
	datab => \inst2|reg\(0),
	datac => \inst2|reg\(3),
	datad => \inst2|reg\(1),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y1_N20
\inst2|reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|reg[4]~feeder_combout\ = \inst2|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|reg\(3),
	combout => \inst2|reg[4]~feeder_combout\);

-- Location: FF_X8_Y1_N21
\inst2|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	d => \inst2|reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(4));

-- Location: LCCOMB_X8_Y1_N4
\inst2|reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|reg[5]~feeder_combout\ = \inst2|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|reg\(4),
	combout => \inst2|reg[5]~feeder_combout\);

-- Location: FF_X8_Y1_N5
\inst2|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	d => \inst2|reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(5));

-- Location: FF_X8_Y1_N27
\inst2|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	asdata => \inst2|reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(6));

-- Location: LCCOMB_X8_Y1_N26
\inst7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (\inst7|Equal0~0_combout\ & (!\inst2|reg\(5) & (\inst2|reg\(6) & \inst2|reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst2|reg\(5),
	datac => \inst2|reg\(6),
	datad => \inst2|reg\(4),
	combout => \inst7|Equal0~1_combout\);

ww_Fin_dir <= \Fin_dir~output_o\;

ww_SOY <= \SOY~output_o\;
END structure;


