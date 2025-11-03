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
-- CREATED		"Sun Nov 02 14:15:44 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY CompDIR IS 
	PORT
	(
		Hab_dir :  IN  STD_LOGIC;
		SCL :  IN  STD_LOGIC;
		SDA :  IN  STD_LOGIC;
		Fin_dir :  OUT  STD_LOGIC;
		SOY :  OUT  STD_LOGIC
	);
END CompDIR;

ARCHITECTURE bdf_type OF CompDIR IS 

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

COMPONENT registro_shift
GENERIC (N : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 s_in : IN STD_LOGIC;
		 q_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT comparador
GENERIC (N : INTEGER
			);
	PORT(A : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 eq : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT direccion_esclavo
	PORT(		 dir_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(6 DOWNTO 0);


BEGIN 
SYNTHESIZED_WIRE_1 <= '0';
SYNTHESIZED_WIRE_2 <= '1';
SYNTHESIZED_WIRE_4 <= '0';
SYNTHESIZED_WIRE_5 <= '1';



b2v_inst : contador_modn
GENERIC MAP(N => 7
			)
PORT MAP(clk => SYNTHESIZED_WIRE_8,
		 reset => SYNTHESIZED_WIRE_1,
		 enable => SYNTHESIZED_WIRE_2,
		 fin => Fin_dir);


SYNTHESIZED_WIRE_8 <= Hab_dir AND SCL;


b2v_inst2 : registro_shift
GENERIC MAP(N => 7
			)
PORT MAP(clk => SYNTHESIZED_WIRE_8,
		 reset => SYNTHESIZED_WIRE_4,
		 enable => SYNTHESIZED_WIRE_5,
		 s_in => SDA,
		 q_out => SYNTHESIZED_WIRE_6);






b2v_inst7 : comparador
GENERIC MAP(N => 7
			)
PORT MAP(A => SYNTHESIZED_WIRE_6,
		 B => SYNTHESIZED_WIRE_7,
		 eq => SOY);


b2v_inst8 : direccion_esclavo
PORT MAP(		 dir_out => SYNTHESIZED_WIRE_7);


END bdf_type;