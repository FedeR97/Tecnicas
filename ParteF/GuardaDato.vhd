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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Sun Nov 02 14:26:53 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY GuardaDato IS 
	PORT
	(
		Hab_dato :  IN  STD_LOGIC;
		SCL :  IN  STD_LOGIC;
		SDA :  IN  STD_LOGIC;
		Fin_dato :  OUT  STD_LOGIC
	);
END GuardaDato;

ARCHITECTURE bdf_type OF GuardaDato IS 

COMPONENT registro_shift
GENERIC (N : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 s_in : IN STD_LOGIC;
		 q_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT contador_modn
GENERIC (N : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 fin : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_1 <= '0';
SYNTHESIZED_WIRE_2 <= '1';
SYNTHESIZED_WIRE_4 <= '0';
SYNTHESIZED_WIRE_5 <= '1';



b2v_inst : registro_shift
GENERIC MAP(N => 8
			)
PORT MAP(clk => SYNTHESIZED_WIRE_6,
		 reset => SYNTHESIZED_WIRE_1,
		 enable => SYNTHESIZED_WIRE_2,
		 s_in => SDA);


b2v_inst2 : contador_modn
GENERIC MAP(N => 8
			)
PORT MAP(clk => SYNTHESIZED_WIRE_6,
		 reset => SYNTHESIZED_WIRE_4,
		 enable => SYNTHESIZED_WIRE_5,
		 fin => Fin_dato);


SYNTHESIZED_WIRE_6 <= Hab_dato AND SCL;






END bdf_type;