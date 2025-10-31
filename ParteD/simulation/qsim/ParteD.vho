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

-- DATE "10/27/2025 09:10:26"

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

ENTITY 	ParteD IS
    PORT (
	a : IN std_logic_vector(1 DOWNTO 0);
	b : IN std_logic_vector(1 DOWNTO 0);
	producto_unsigned : OUT std_logic_vector(3 DOWNTO 0);
	producto_signed : OUT std_logic_vector(3 DOWNTO 0)
	);
END ParteD;

-- Design Ports Information
-- producto_unsigned[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto_unsigned[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto_unsigned[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto_unsigned[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto_signed[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto_signed[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto_signed[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- producto_signed[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ParteD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_producto_unsigned : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_producto_signed : std_logic_vector(3 DOWNTO 0);
SIGNAL \producto_unsigned[0]~output_o\ : std_logic;
SIGNAL \producto_unsigned[1]~output_o\ : std_logic;
SIGNAL \producto_unsigned[2]~output_o\ : std_logic;
SIGNAL \producto_unsigned[3]~output_o\ : std_logic;
SIGNAL \producto_signed[0]~output_o\ : std_logic;
SIGNAL \producto_signed[1]~output_o\ : std_logic;
SIGNAL \producto_signed[2]~output_o\ : std_logic;
SIGNAL \producto_signed[3]~output_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \Mult1|mult_core|result[2]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|result[3]~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
producto_unsigned <= ww_producto_unsigned;
producto_signed <= ww_producto_signed;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y0_N23
\producto_unsigned[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[0]~0_combout\,
	devoe => ww_devoe,
	o => \producto_unsigned[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\producto_unsigned[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[1]~1_combout\,
	devoe => ww_devoe,
	o => \producto_unsigned[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\producto_unsigned[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[2]~2_combout\,
	devoe => ww_devoe,
	o => \producto_unsigned[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\producto_unsigned[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[3]~3_combout\,
	devoe => ww_devoe,
	o => \producto_unsigned[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\producto_signed[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[0]~0_combout\,
	devoe => ww_devoe,
	o => \producto_signed[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\producto_signed[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[1]~1_combout\,
	devoe => ww_devoe,
	o => \producto_signed[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\producto_signed[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1|mult_core|result[2]~0_combout\,
	devoe => ww_devoe,
	o => \producto_signed[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\producto_signed[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1|mult_core|result[3]~1_combout\,
	devoe => ww_devoe,
	o => \producto_signed[3]~output_o\);

-- Location: IOIBUF_X53_Y17_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X4_Y15_N24
\Mult0|mult_core|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[0]~0_combout\ = (\b[0]~input_o\ & \a[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mult0|mult_core|result[0]~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X4_Y15_N18
\Mult0|mult_core|result[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[1]~1_combout\ = (\b[0]~input_o\ & (\a[1]~input_o\ $ (((\b[1]~input_o\ & \a[0]~input_o\))))) # (!\b[0]~input_o\ & (((\b[1]~input_o\ & \a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mult0|mult_core|result[1]~1_combout\);

-- Location: LCCOMB_X4_Y15_N4
\Mult0|mult_core|result[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[2]~2_combout\ = (\a[1]~input_o\ & (\b[1]~input_o\ & ((!\a[0]~input_o\) # (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mult0|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X4_Y15_N30
\Mult0|mult_core|result[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[3]~3_combout\ = (\b[0]~input_o\ & (\a[1]~input_o\ & (\b[1]~input_o\ & \a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mult0|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X4_Y15_N16
\Mult1|mult_core|result[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[2]~0_combout\ = (\a[1]~input_o\ & ((\b[0]~input_o\ & (!\b[1]~input_o\)) # (!\b[0]~input_o\ & (\b[1]~input_o\ & !\a[0]~input_o\)))) # (!\a[1]~input_o\ & (((\b[1]~input_o\ & \a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mult1|mult_core|result[2]~0_combout\);

-- Location: LCCOMB_X4_Y15_N2
\Mult1|mult_core|result[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[3]~1_combout\ = (\a[1]~input_o\ & (\b[0]~input_o\ & (!\b[1]~input_o\))) # (!\a[1]~input_o\ & (((\b[1]~input_o\ & \a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mult1|mult_core|result[3]~1_combout\);

ww_producto_unsigned(0) <= \producto_unsigned[0]~output_o\;

ww_producto_unsigned(1) <= \producto_unsigned[1]~output_o\;

ww_producto_unsigned(2) <= \producto_unsigned[2]~output_o\;

ww_producto_unsigned(3) <= \producto_unsigned[3]~output_o\;

ww_producto_signed(0) <= \producto_signed[0]~output_o\;

ww_producto_signed(1) <= \producto_signed[1]~output_o\;

ww_producto_signed(2) <= \producto_signed[2]~output_o\;

ww_producto_signed(3) <= \producto_signed[3]~output_o\;
END structure;


