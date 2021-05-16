-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/13/2021 19:19:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          processador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY processador_vhd_vec_tst IS
END processador_vhd_vec_tst;
ARCHITECTURE processador_arch OF processador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL JumpAddress : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outAndPort : STD_LOGIC;
SIGNAL outPC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL outRAM : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL outROM : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL outSomaPC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL outULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL overflow : STD_LOGIC;
SIGNAL Reg1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Reg1Address : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Reg2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Reg2Address : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Zero : STD_LOGIC;
COMPONENT processador
	PORT (
	clock : IN STD_LOGIC;
	JumpAddress : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Opcode : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	outAndPort : BUFFER STD_LOGIC;
	outPC : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	outRAM : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	outROM : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	outSomaPC : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	outULA : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	overflow : BUFFER STD_LOGIC;
	Reg1 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	Reg1Address : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	Reg2 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	Reg2Address : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	Zero : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : processador
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	JumpAddress => JumpAddress,
	Opcode => Opcode,
	outAndPort => outAndPort,
	outPC => outPC,
	outRAM => outRAM,
	outROM => outROM,
	outSomaPC => outSomaPC,
	outULA => outULA,
	overflow => overflow,
	Reg1 => Reg1,
	Reg1Address => Reg1Address,
	Reg2 => Reg2,
	Reg2Address => Reg2Address,
	Zero => Zero
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END processador_arch;
