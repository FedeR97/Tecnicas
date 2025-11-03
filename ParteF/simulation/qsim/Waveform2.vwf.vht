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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/03/2025 00:07:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ParteF
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ParteF_vhd_vec_tst IS
END ParteF_vhd_vec_tst;
ARCHITECTURE ParteF_arch OF ParteF_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ack : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL Fin_Dato : STD_LOGIC;
SIGNAL Fin_Dir : STD_LOGIC;
SIGNAL hab_dato : STD_LOGIC;
SIGNAL hab_dir : STD_LOGIC;
SIGNAL Salida : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SCL : STD_LOGIC;
SIGNAL SDA : STD_LOGIC;
SIGNAL Soy : STD_LOGIC;
COMPONENT ParteF
	PORT (
	ack : OUT STD_LOGIC;
	Clk : IN STD_LOGIC;
	Fin_Dato : OUT STD_LOGIC;
	Fin_Dir : OUT STD_LOGIC;
	hab_dato : OUT STD_LOGIC;
	hab_dir : OUT STD_LOGIC;
	Salida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SCL : IN STD_LOGIC;
	SDA : IN STD_LOGIC;
	Soy : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ParteF
	PORT MAP (
-- list connections between master ports and signals
	ack => ack,
	Clk => Clk,
	Fin_Dato => Fin_Dato,
	Fin_Dir => Fin_Dir,
	hab_dato => hab_dato,
	hab_dir => hab_dir,
	Salida => Salida,
	SCL => SCL,
	SDA => SDA,
	Soy => Soy
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 2500 ps;
	Clk <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- SDA
t_prcs_SDA: PROCESS
BEGIN
	SDA <= '1';
	WAIT FOR 10000 ps;
	SDA <= '0';
	WAIT FOR 20000 ps;
	SDA <= '1';
	WAIT FOR 20000 ps;
	SDA <= '0';
	WAIT FOR 70000 ps;
	SDA <= '1';
	WAIT FOR 40000 ps;
	SDA <= '0';
	WAIT FOR 130000 ps;
	SDA <= '1';
	WAIT FOR 190000 ps;
	SDA <= '0';
	WAIT FOR 30000 ps;
	SDA <= '1';
	WAIT FOR 20000 ps;
	SDA <= '0';
	WAIT FOR 60000 ps;
	SDA <= '1';
	WAIT FOR 40000 ps;
	SDA <= '0';
WAIT;
END PROCESS t_prcs_SDA;

-- SCL
t_prcs_SCL: PROCESS
BEGIN
LOOP
	SCL <= '0';
	WAIT FOR 10000 ps;
	SCL <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SCL;
END ParteF_arch;
