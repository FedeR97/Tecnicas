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
-- Generated on "10/31/2025 04:07:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ParteE2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ParteE2_vhd_vec_tst IS
END ParteE2_vhd_vec_tst;
ARCHITECTURE ParteE2_arch OF ParteE2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL X_in : STD_LOGIC;
COMPONENT ParteE2
	PORT (
	clk : IN STD_LOGIC;
	d_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	X_in : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ParteE2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d_out => d_out,
	reset => reset,
	X_in => X_in
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 14
	LOOP
		clk <= '0';
		WAIT FOR 35000 ps;
		clk <= '1';
		WAIT FOR 35000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- X_in
t_prcs_X_in: PROCESS
BEGIN
	X_in <= '0';
	WAIT FOR 10000 ps;
	X_in <= '1';
	WAIT FOR 530000 ps;
	X_in <= '0';
WAIT;
END PROCESS t_prcs_X_in;
END ParteE2_arch;
