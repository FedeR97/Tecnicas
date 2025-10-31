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
-- Generated on "10/30/2025 16:03:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MultiBC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MultiBC_vhd_vec_tst IS
END MultiBC_vhd_vec_tst;
ARCHITECTURE MultiBC_arch OF MultiBC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL IA0 : STD_LOGIC;
SIGNAL IA1 : STD_LOGIC;
SIGNAL IB0 : STD_LOGIC;
SIGNAL IB1 : STD_LOGIC;
SIGNAL P0 : STD_LOGIC;
SIGNAL P1 : STD_LOGIC;
SIGNAL P2 : STD_LOGIC;
SIGNAL P3 : STD_LOGIC;
SIGNAL P4 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL S3 : STD_LOGIC;
SIGNAL S4 : STD_LOGIC;
SIGNAL S5 : STD_LOGIC;
SIGNAL S6 : STD_LOGIC;
COMPONENT MultiBC
	PORT (
	Clk : IN STD_LOGIC;
	IA0 : IN STD_LOGIC;
	IA1 : IN STD_LOGIC;
	IB0 : IN STD_LOGIC;
	IB1 : IN STD_LOGIC;
	P0 : OUT STD_LOGIC;
	P1 : OUT STD_LOGIC;
	P2 : OUT STD_LOGIC;
	P3 : OUT STD_LOGIC;
	P4 : OUT STD_LOGIC;
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC;
	S3 : OUT STD_LOGIC;
	S4 : OUT STD_LOGIC;
	S5 : OUT STD_LOGIC;
	S6 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MultiBC
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	IA0 => IA0,
	IA1 => IA1,
	IB0 => IB0,
	IB1 => IB1,
	P0 => P0,
	P1 => P1,
	P2 => P2,
	P3 => P3,
	P4 => P4,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	S4 => S4,
	S5 => S5,
	S6 => S6
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 5000 ps;
	Clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- IA1
t_prcs_IA1: PROCESS
BEGIN
	IA1 <= '0';
	WAIT FOR 300000 ps;
	IA1 <= '1';
	WAIT FOR 210000 ps;
	IA1 <= '0';
	WAIT FOR 130000 ps;
	IA1 <= '1';
	WAIT FOR 210000 ps;
	IA1 <= '0';
WAIT;
END PROCESS t_prcs_IA1;

-- IA0
t_prcs_IA0: PROCESS
BEGIN
	IA0 <= '0';
	WAIT FOR 170000 ps;
	IA0 <= '1';
	WAIT FOR 130000 ps;
	IA0 <= '0';
	WAIT FOR 110000 ps;
	IA0 <= '1';
	WAIT FOR 100000 ps;
	IA0 <= '0';
	WAIT FOR 50000 ps;
	IA0 <= '1';
	WAIT FOR 40000 ps;
	IA0 <= '0';
	WAIT FOR 40000 ps;
	IA0 <= '1';
	WAIT FOR 110000 ps;
	IA0 <= '0';
	WAIT FOR 100000 ps;
	IA0 <= '1';
	WAIT FOR 140000 ps;
	IA0 <= '0';
WAIT;
END PROCESS t_prcs_IA0;

-- IB1
t_prcs_IB1: PROCESS
BEGIN
	IB1 <= '0';
	WAIT FOR 260000 ps;
	IB1 <= '1';
	WAIT FOR 80000 ps;
	IB1 <= '0';
	WAIT FOR 80000 ps;
	IB1 <= '1';
	WAIT FOR 220000 ps;
	IB1 <= '0';
	WAIT FOR 130000 ps;
	IB1 <= '1';
	WAIT FOR 70000 ps;
	IB1 <= '0';
	WAIT FOR 60000 ps;
	IB1 <= '1';
	WAIT FOR 60000 ps;
	IB1 <= '0';
WAIT;
END PROCESS t_prcs_IB1;

-- IB0
t_prcs_IB0: PROCESS
BEGIN
	IB0 <= '0';
	WAIT FOR 80000 ps;
	IB0 <= '1';
	WAIT FOR 90000 ps;
	IB0 <= '0';
	WAIT FOR 90000 ps;
	IB0 <= '1';
	WAIT FOR 80000 ps;
	IB0 <= '0';
	WAIT FOR 80000 ps;
	IB0 <= '1';
	WAIT FOR 80000 ps;
	IB0 <= '0';
	WAIT FOR 370000 ps;
	IB0 <= '1';
	WAIT FOR 50000 ps;
	IB0 <= '0';
WAIT;
END PROCESS t_prcs_IB0;
END MultiBC_arch;
