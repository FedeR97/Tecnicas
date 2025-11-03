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

-- DATE "11/02/2025 22:46:18"

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

ENTITY 	ParteF IS
    PORT (
	Fin_Dir : OUT std_logic;
	Clk : IN std_logic;
	SDA : IN std_logic;
	Soy : OUT std_logic;
	SCL : IN std_logic;
	ack : OUT std_logic;
	hab_dato : OUT std_logic;
	hab_dir : OUT std_logic;
	Fin_Dato : OUT std_logic;
	Salida : OUT std_logic_vector(3 DOWNTO 0)
	);
END ParteF;

-- Design Ports Information
-- Fin_Dir	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Soy	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ack	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_dato	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_dir	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fin_Dato	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ParteF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Fin_Dir : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL ww_Soy : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_ack : std_logic;
SIGNAL ww_hab_dato : std_logic;
SIGNAL ww_hab_dir : std_logic;
SIGNAL ww_Fin_Dato : std_logic;
SIGNAL ww_Salida : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Fin_Dir~output_o\ : std_logic;
SIGNAL \Soy~output_o\ : std_logic;
SIGNAL \ack~output_o\ : std_logic;
SIGNAL \hab_dato~output_o\ : std_logic;
SIGNAL \hab_dir~output_o\ : std_logic;
SIGNAL \Fin_Dato~output_o\ : std_logic;
SIGNAL \Salida[3]~output_o\ : std_logic;
SIGNAL \Salida[2]~output_o\ : std_logic;
SIGNAL \Salida[1]~output_o\ : std_logic;
SIGNAL \Salida[0]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|Equal0~1_combout\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \inst16~combout\ : std_logic;
SIGNAL \inst16~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|cnt[1]~3_combout\ : std_logic;
SIGNAL \inst3|cnt[2]~2_combout\ : std_logic;
SIGNAL \inst3|cnt~0_combout\ : std_logic;
SIGNAL \inst3|cnt~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|Equal0~2_combout\ : std_logic;
SIGNAL \inst27|cnt[0]~2_combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst27|cnt[2]~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate~2_combout\ : std_logic;
SIGNAL \inst|reg_fstate~3_combout\ : std_logic;
SIGNAL \inst|fstate.R_W~q\ : std_logic;
SIGNAL \inst|fstate.ACK~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|fstate.Guardar_dato~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|fstate.Oscioso~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|fstate.Guardar_Dir~feeder_combout\ : std_logic;
SIGNAL \inst|fstate.Guardar_Dir~q\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst5~clkctrl_outclk\ : std_logic;
SIGNAL \inst27|cnt[1]~1_combout\ : std_logic;
SIGNAL \inst27|Equal0~0_combout\ : std_logic;
SIGNAL \inst27|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst|ALT_INV_fstate.Guardar_Dir~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Fin_Dir <= ww_Fin_Dir;
ww_Clk <= Clk;
ww_SDA <= SDA;
Soy <= ww_Soy;
ww_SCL <= SCL;
ack <= ww_ack;
hab_dato <= ww_hab_dato;
hab_dir <= ww_hab_dir;
Fin_Dato <= ww_Fin_Dato;
Salida <= ww_Salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst16~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst16~combout\);

\inst5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5~combout\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_inst6~combout\ <= NOT \inst6~combout\;
\inst|ALT_INV_fstate.Guardar_Dir~q\ <= NOT \inst|fstate.Guardar_Dir~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y24_N16
\Fin_Dir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Fin_Dir~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\Soy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \Soy~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\ack~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fstate.ACK~q\,
	devoe => ww_devoe,
	o => \ack~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\hab_dato~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fstate.Guardar_dato~q\,
	devoe => ww_devoe,
	o => \hab_dato~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\hab_dir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fstate.Guardar_Dir~q\,
	devoe => ww_devoe,
	o => \hab_dir~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\Fin_Dato~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Fin_Dato~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\Salida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Salida[3]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\Salida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|cnt\(2),
	devoe => ww_devoe,
	o => \Salida[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\Salida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|cnt\(1),
	devoe => ww_devoe,
	o => \Salida[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Salida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|cnt\(0),
	devoe => ww_devoe,
	o => \Salida[0]~output_o\);

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

-- Location: IOIBUF_X0_Y28_N8
\SDA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

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

-- Location: LCCOMB_X2_Y23_N12
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

-- Location: FF_X2_Y23_N13
\inst2|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(0));

-- Location: LCCOMB_X2_Y23_N10
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

-- Location: FF_X2_Y23_N11
\inst2|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(1));

-- Location: LCCOMB_X2_Y23_N14
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

-- Location: FF_X2_Y23_N15
\inst2|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(2));

-- Location: LCCOMB_X2_Y23_N30
\inst2|reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|reg[3]~feeder_combout\ = \inst2|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|reg\(2),
	combout => \inst2|reg[3]~feeder_combout\);

-- Location: FF_X2_Y23_N31
\inst2|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(3));

-- Location: LCCOMB_X2_Y23_N22
\inst2|reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|reg[4]~feeder_combout\ = \inst2|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|reg\(3),
	combout => \inst2|reg[4]~feeder_combout\);

-- Location: FF_X2_Y23_N23
\inst2|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(4));

-- Location: LCCOMB_X2_Y23_N8
\inst2|reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|reg[5]~feeder_combout\ = \inst2|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|reg\(4),
	combout => \inst2|reg[5]~feeder_combout\);

-- Location: FF_X2_Y23_N9
\inst2|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(5));

-- Location: FF_X2_Y23_N25
\inst2|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	asdata => \inst2|reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reg\(6));

-- Location: LCCOMB_X2_Y23_N2
\inst13|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~0_combout\ = (\inst2|reg\(1) & (!\inst2|reg\(2) & (!\inst2|reg\(3) & \inst2|reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|reg\(1),
	datab => \inst2|reg\(2),
	datac => \inst2|reg\(3),
	datad => \inst2|reg\(0),
	combout => \inst13|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y23_N16
\inst13|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~1_combout\ = (!\inst2|reg\(4) & (\inst2|reg\(5) & (!\inst2|reg\(6) & \inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|reg\(4),
	datab => \inst2|reg\(5),
	datac => \inst2|reg\(6),
	datad => \inst13|Equal0~0_combout\,
	combout => \inst13|Equal0~1_combout\);

-- Location: IOIBUF_X0_Y23_N15
\SCL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCL,
	o => \SCL~input_o\);

-- Location: LCCOMB_X1_Y23_N12
inst16 : cycloneive_lcell_comb
-- Equation(s):
-- \inst16~combout\ = LCELL((!\SCL~input_o\) # (!\inst|fstate.Guardar_dato~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.Guardar_dato~q\,
	datad => \SCL~input_o\,
	combout => \inst16~combout\);

-- Location: CLKCTRL_G1
\inst16~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst16~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst16~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y23_N22
\inst3|cnt[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1]~3_combout\ = \inst3|cnt\(1) $ (\inst3|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(0),
	combout => \inst3|cnt[1]~3_combout\);

-- Location: FF_X1_Y23_N23
\inst3|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16~clkctrl_outclk\,
	d => \inst3|cnt[1]~3_combout\,
	clrn => \inst|ALT_INV_fstate.Guardar_Dir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(1));

-- Location: LCCOMB_X1_Y23_N18
\inst3|cnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2]~2_combout\ = \inst3|cnt\(2) $ (((\inst3|cnt\(1) & \inst3|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datac => \inst3|cnt\(2),
	datad => \inst3|cnt\(0),
	combout => \inst3|cnt[2]~2_combout\);

-- Location: FF_X1_Y23_N19
\inst3|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16~clkctrl_outclk\,
	d => \inst3|cnt[2]~2_combout\,
	clrn => \inst|ALT_INV_fstate.Guardar_Dir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(2));

-- Location: LCCOMB_X1_Y23_N24
\inst3|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt~0_combout\ = (\inst3|cnt\(1) & (\inst3|cnt\(3) $ (((\inst3|cnt\(0) & \inst3|cnt\(2)))))) # (!\inst3|cnt\(1) & (\inst3|cnt\(3) & ((\inst3|cnt\(0)) # (\inst3|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datab => \inst3|cnt\(0),
	datac => \inst3|cnt\(3),
	datad => \inst3|cnt\(2),
	combout => \inst3|cnt~0_combout\);

-- Location: FF_X1_Y23_N25
\inst3|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16~clkctrl_outclk\,
	d => \inst3|cnt~0_combout\,
	clrn => \inst|ALT_INV_fstate.Guardar_Dir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(3));

-- Location: LCCOMB_X1_Y23_N28
\inst3|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt~1_combout\ = (!\inst3|cnt\(0) & ((\inst3|cnt\(1)) # ((\inst3|cnt\(2)) # (!\inst3|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datab => \inst3|cnt\(3),
	datac => \inst3|cnt\(0),
	datad => \inst3|cnt\(2),
	combout => \inst3|cnt~1_combout\);

-- Location: FF_X1_Y23_N29
\inst3|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16~clkctrl_outclk\,
	d => \inst3|cnt~1_combout\,
	clrn => \inst|ALT_INV_fstate.Guardar_Dir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(0));

-- Location: LCCOMB_X1_Y23_N14
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|cnt\(0) & (\inst3|cnt\(3) & (!\inst3|cnt\(2) & !\inst3|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(0),
	datab => \inst3|cnt\(3),
	datac => \inst3|cnt\(2),
	datad => \inst3|cnt\(1),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y23_N4
\inst13|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~2_combout\ = (!\inst2|reg\(4) & (\inst2|reg\(5) & !\inst2|reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|reg\(4),
	datac => \inst2|reg\(5),
	datad => \inst2|reg\(6),
	combout => \inst13|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y23_N20
\inst27|cnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|cnt[0]~2_combout\ = !\inst27|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst27|cnt\(0),
	combout => \inst27|cnt[0]~2_combout\);

-- Location: LCCOMB_X2_Y23_N24
inst6 : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\SCL~input_o\ & (\inst13|Equal0~2_combout\ & \inst13|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCL~input_o\,
	datab => \inst13|Equal0~2_combout\,
	datad => \inst13|Equal0~0_combout\,
	combout => \inst6~combout\);

-- Location: FF_X2_Y23_N21
\inst27|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst27|cnt[0]~2_combout\,
	clrn => \ALT_INV_inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|cnt\(0));

-- Location: LCCOMB_X2_Y23_N28
\inst27|cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|cnt[2]~0_combout\ = \inst27|cnt\(2) $ (((\inst27|cnt\(0) & \inst27|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst27|cnt\(0),
	datac => \inst27|cnt\(2),
	datad => \inst27|cnt\(1),
	combout => \inst27|cnt[2]~0_combout\);

-- Location: FF_X2_Y23_N29
\inst27|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst27|cnt[2]~0_combout\,
	clrn => \ALT_INV_inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|cnt\(2));

-- Location: LCCOMB_X3_Y23_N26
\inst|reg_fstate~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate~2_combout\ = (\inst27|cnt\(2) & (\inst27|cnt\(1) & (\inst27|cnt\(0) & \inst|fstate.Guardar_Dir~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|cnt\(2),
	datab => \inst27|cnt\(1),
	datac => \inst27|cnt\(0),
	datad => \inst|fstate.Guardar_Dir~q\,
	combout => \inst|reg_fstate~2_combout\);

-- Location: LCCOMB_X3_Y23_N0
\inst|reg_fstate~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate~3_combout\ = (\inst13|Equal0~2_combout\ & (\inst|reg_fstate~2_combout\ & \inst13|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Equal0~2_combout\,
	datac => \inst|reg_fstate~2_combout\,
	datad => \inst13|Equal0~0_combout\,
	combout => \inst|reg_fstate~3_combout\);

-- Location: FF_X3_Y23_N1
\inst|fstate.R_W\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|reg_fstate~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.R_W~q\);

-- Location: FF_X2_Y23_N1
\inst|fstate.ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst|fstate.R_W~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.ACK~q\);

-- Location: LCCOMB_X1_Y23_N30
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|fstate.ACK~q\) # ((!\inst3|Equal0~0_combout\ & \inst|fstate.Guardar_dato~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~0_combout\,
	datac => \inst|fstate.Guardar_dato~q\,
	datad => \inst|fstate.ACK~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: FF_X1_Y23_N31
\inst|fstate.Guardar_dato\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Guardar_dato~q\);

-- Location: LCCOMB_X2_Y23_N26
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\SDA~input_o\ & (((\inst|fstate.Guardar_dato~q\ & \inst3|Equal0~0_combout\)) # (!\inst|fstate.Oscioso~q\))) # (!\SDA~input_o\ & (\inst|fstate.Guardar_dato~q\ & ((\inst3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDA~input_o\,
	datab => \inst|fstate.Guardar_dato~q\,
	datac => \inst|fstate.Oscioso~q\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X2_Y23_N18
\inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (!\inst|Selector0~0_combout\ & ((\inst13|Equal0~1_combout\) # (!\inst|reg_fstate~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Equal0~1_combout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst|reg_fstate~2_combout\,
	combout => \inst|Selector0~1_combout\);

-- Location: FF_X2_Y23_N19
\inst|fstate.Oscioso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Oscioso~q\);

-- Location: LCCOMB_X1_Y23_N20
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\SDA~input_o\ & (\inst|fstate.Guardar_Dir~q\ & (!\inst27|Equal0~0_combout\))) # (!\SDA~input_o\ & (((\inst|fstate.Guardar_Dir~q\ & !\inst27|Equal0~0_combout\)) # (!\inst|fstate.Oscioso~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDA~input_o\,
	datab => \inst|fstate.Guardar_Dir~q\,
	datac => \inst27|Equal0~0_combout\,
	datad => \inst|fstate.Oscioso~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X1_Y23_N16
\inst|fstate.Guardar_Dir~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fstate.Guardar_Dir~feeder_combout\ = \inst|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~0_combout\,
	combout => \inst|fstate.Guardar_Dir~feeder_combout\);

-- Location: FF_X1_Y23_N17
\inst|fstate.Guardar_Dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst|fstate.Guardar_Dir~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Guardar_Dir~q\);

-- Location: LCCOMB_X1_Y23_N26
inst5 : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~combout\ = LCELL((!\SCL~input_o\) # (!\inst|fstate.Guardar_Dir~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.Guardar_Dir~q\,
	datad => \SCL~input_o\,
	combout => \inst5~combout\);

-- Location: CLKCTRL_G3
\inst5~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y23_N6
\inst27|cnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|cnt[1]~1_combout\ = \inst27|cnt\(1) $ (\inst27|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst27|cnt\(1),
	datad => \inst27|cnt\(0),
	combout => \inst27|cnt[1]~1_combout\);

-- Location: FF_X2_Y23_N7
\inst27|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst27|cnt[1]~1_combout\,
	clrn => \ALT_INV_inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|cnt\(1));

-- Location: LCCOMB_X2_Y23_N0
\inst27|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Equal0~0_combout\ = (\inst27|cnt\(1) & (\inst27|cnt\(2) & \inst27|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|cnt\(1),
	datab => \inst27|cnt\(2),
	datad => \inst27|cnt\(0),
	combout => \inst27|Equal0~0_combout\);

ww_Fin_Dir <= \Fin_Dir~output_o\;

ww_Soy <= \Soy~output_o\;

ww_ack <= \ack~output_o\;

ww_hab_dato <= \hab_dato~output_o\;

ww_hab_dir <= \hab_dir~output_o\;

ww_Fin_Dato <= \Fin_Dato~output_o\;

ww_Salida(3) <= \Salida[3]~output_o\;

ww_Salida(2) <= \Salida[2]~output_o\;

ww_Salida(1) <= \Salida[1]~output_o\;

ww_Salida(0) <= \Salida[0]~output_o\;
END structure;


