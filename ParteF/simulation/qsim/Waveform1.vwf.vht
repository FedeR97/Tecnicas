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
-- Generated on "11/02/2025 14:25:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          GuardaDato
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY GuardaDato_vhd_vec_tst IS
END GuardaDato_vhd_vec_tst;
ARCHITECTURE GuardaDato_arch OF GuardaDato_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Fin_dato : STD_LOGIC;
SIGNAL Hab_dato : STD_LOGIC;
SIGNAL SCL : STD_LOGIC;
SIGNAL SDA : STD_LOGIC;
COMPONENT GuardaDato
	PORT (
	Fin_dato : OUT STD_LOGIC;
	Hab_dato : IN STD_LOGIC;
	SCL : IN STD_LOGIC;
	SDA : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : GuardaDato
	PORT MAP (
-- list connections between master ports and signals
	Fin_dato => Fin_dato,
	Hab_dato => Hab_dato,
	SCL => SCL,
	SDA => SDA
	);

-- Hab_dato
t_prcs_Hab_dato: PROCESS
BEGIN
	Hab_dato <= '0';
	WAIT FOR 10000 ps;
	Hab_dato <= '1';
	WAIT FOR 450000 ps;
	Hab_dato <= '0';
WAIT;
END PROCESS t_prcs_Hab_dato;

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
	SDA <= '0';
	WAIT FOR 70000 ps;
	SDA <= '1';
	WAIT FOR 10000 ps;
	SDA <= '0';
	WAIT FOR 290000 ps;
	SDA <= '1';
	WAIT FOR 20000 ps;
	SDA <= '0';
WAIT;
END PROCESS t_prcs_SDA;
END GuardaDato_arch;
