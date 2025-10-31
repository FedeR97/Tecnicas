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
-- Generated on "10/31/2025 11:43:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CompDIR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CompDIR_vhd_vec_tst IS
END CompDIR_vhd_vec_tst;
ARCHITECTURE CompDIR_arch OF CompDIR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Fin_dir : STD_LOGIC;
SIGNAL Hab_dir : STD_LOGIC;
SIGNAL SCL : STD_LOGIC;
SIGNAL SDA : STD_LOGIC;
SIGNAL SOY : STD_LOGIC;
COMPONENT CompDIR
	PORT (
	Fin_dir : OUT STD_LOGIC;
	Hab_dir : IN STD_LOGIC;
	SCL : IN STD_LOGIC;
	SDA : IN STD_LOGIC;
	SOY : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CompDIR
	PORT MAP (
-- list connections between master ports and signals
	Fin_dir => Fin_dir,
	Hab_dir => Hab_dir,
	SCL => SCL,
	SDA => SDA,
	SOY => SOY
	);

-- Hab_dir
t_prcs_Hab_dir: PROCESS
BEGIN
	Hab_dir <= '0';
	WAIT FOR 50000 ps;
	Hab_dir <= '1';
	WAIT FOR 460000 ps;
	Hab_dir <= '0';
WAIT;
END PROCESS t_prcs_Hab_dir;

-- SCL
t_prcs_SCL: PROCESS
BEGIN
LOOP
	SCL <= '0';
	WAIT FOR 25000 ps;
	SCL <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SCL;

-- SDA
t_prcs_SDA: PROCESS
BEGIN
	SDA <= '1';
	WAIT FOR 20000 ps;
	SDA <= '0';
	WAIT FOR 20000 ps;
	SDA <= '1';
	WAIT FOR 60000 ps;
	SDA <= '0';
	WAIT FOR 60000 ps;
	SDA <= '1';
	WAIT FOR 40000 ps;
	SDA <= '0';
	WAIT FOR 160000 ps;
	SDA <= '1';
	WAIT FOR 40000 ps;
	SDA <= '0';
WAIT;
END PROCESS t_prcs_SDA;
END CompDIR_arch;
