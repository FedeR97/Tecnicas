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
-- Generated on "10/20/2025 16:48:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sumador_completo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sumador_completo_vhd_vec_tst IS
END sumador_completo_vhd_vec_tst;
ARCHITECTURE sumador_completo_arch OF sumador_completo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL CI : STD_LOGIC;
SIGNAL CO : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT sumador_completo
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	CI : IN STD_LOGIC;
	CO : OUT STD_LOGIC;
	S : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sumador_completo
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CI => CI,
	CO => CO,
	S => S
	);

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A <= '0';
		WAIT FOR 40000 ps;
		A <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		B <= '0';
		WAIT FOR 80000 ps;
		B <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- CI
t_prcs_CI: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		CI <= '0';
		WAIT FOR 160000 ps;
		CI <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	CI <= '0';
WAIT;
END PROCESS t_prcs_CI;
END sumador_completo_arch;
